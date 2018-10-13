/** \file VCOCAL\main.c
*
* \brief Code for VCOCAL module, for calibration of the VCOI.
*
*/

// Copyright (c) 2007,2008,2009,2010,2011,2012,2013, 2014 AXSEM AG
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//
//     1.Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     2.Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     3.Neither the name of AXSEM AG, Duebendorf nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//     4.All advertising materials mentioning features or use of this software
//       must display the following acknowledgement:
//       This product includes software developed by AXSEM AG and its contributors.
//     5.The usage of this source code is only granted for operation with AX5043
//       and AX8052F143. Porting to other radio or communication devices is
//       strictly prohibited.
//
// THIS SOFTWARE IS PROVIDED BY AXSEM AG AND CONTRIBUTORS ``AS IS'' AND ANY
// EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL AXSEM AG AND CONTRIBUTORS BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

#include "../AX_Radio_Lab_output/configslave.h"

#include <ax8052f143.h>
#include <libmftypes.h>
#include <libmfradio.h>
#include <libmfflash.h>
#include <libmfwtimer.h>
#include <libmfdbglink.h>

#ifdef MINI_KIT
#include "../COMMON/libminidvkled.h"
#else
#include <libdvk2leds.h>
#endif // MINI_KIT

#include <stdlib.h>

#include "../COMMON/misc.h"
#include "../COMMON/configcommon.h"
#include "../COMMON/easyax5043.h"

#if defined(SDCC)
extern uint8_t _start__stack[];
#endif

uint8_t __data coldstart = 1; // caution: initialization with 1 is necessary! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case
volatile axradio_trxstate_t __data axradio_trxstate = trxstate_off;
uint16_t __xdata vtune[64];
uint8_t __data range[2];

extern const uint32_t __code freqinc;
extern const uint32_t __code freqincmhz;
extern const uint32_t __code freqstart;
extern const uint32_t __code freqend;
uint32_t __data freq;

#define MEMIO

#if defined(SDCC)
static __xdata uint8_t __at(0x605) number_lines;
static __xdata uint8_t __at(0x606) lines[50][133];
#elif defined __CX51__ || defined __C51__
static uint8_t xdata number_lines _at_ 0x605;
static uint8_t xdata lines[50][133] _at_ 0x606;
#elif defined __ICC8051__
static __xdata __no_init uint8_t number_lines @ 0x605;
static __xdata __no_init uint8_t lines[50][133] @ 0x606;
#endif

static void pwrmgmt_irq(void) __interrupt(INT_POWERMGMT)
{
    uint8_t pc = PCON;
    if (!(pc & 0x80))
        return;
    GPIOENABLE = 0;
    IE = EIE = E2IE = 0;
    for (;;)
        PCON |= 0x01;
}

#if defined SDCC
void axradio_isr(void) __interrupt INT_RADIO
#elif defined __CX51__ || defined __C51__
__reentrantb void axradio_isr(void) interrupt INT_RADIO
#elif defined __ICC8051__
#pragma vector=0x23
__interrupt void axradio_isr(void)
#else
#error "Compiler unsupported"
#endif
{
    switch (axradio_trxstate) {
    default:
        AX5043_IRQMASK1 = 0x00;
        AX5043_IRQMASK0 = 0x00;
        break;

    case trxstate_wait_xtal:
        AX5043_IRQMASK1 = 0x00; // otherwise crystal ready will fire all over again
        axradio_trxstate = trxstate_xtal_ready;
        break;

    case trxstate_pll_ranging:
        AX5043_IRQMASK1 = 0x00; // otherwise autoranging done will fire all over again
        axradio_trxstate = trxstate_pll_ranging_done;
        break;

    case trxstate_pll_settling:
        AX5043_RADIOEVENTMASK0 = 0x00;
        axradio_trxstate = trxstate_pll_settled;
        break;
    } // end switch(axradio_trxstate)
} //end radio_isr

static void axradio_wait_for_xtal(void)
{
    uint8_t __autodata iesave = IE & 0x80;
    EA = 0;
    axradio_trxstate = trxstate_wait_xtal;
    AX5043_IRQMASK1 |= 0x01; // enable xtal ready interrupt
    for(;;) {
        EA = 0;
        if (axradio_trxstate == trxstate_xtal_ready)
            break;
        wtimer_idle(WTFLAG_CANSTANDBY);
        EA = 1;
        wtimer_runcallbacks();
    }
    IE |= iesave;
}

static int16_t axradio_tunevoltage(void)
{
    int16_t __autodata r = 0;
    uint8_t __autodata cnt = 64;
    do {
        AX5043_GPADCCTRL = 0x84;
        do {} while (AX5043_GPADCCTRL & 0x80);
    } while (--cnt);
    cnt = 32;
    do {
        AX5043_GPADCCTRL = 0x84;
        do {} while (AX5043_GPADCCTRL & 0x80);
        {
            int16_t x = AX5043_GPADC13VALUE1 & 0x03;
            x <<= 8;
            x |= AX5043_GPADC13VALUE0;
            r += x;
        }
    } while (--cnt);
    return r;
}

#if defined(__ICC8051__)
//
// If the code model is banked, low_level_init must be declared
// __near_func elsa a ?BRET is performed
//
#if (__CODE_MODEL__ == 2)
__near_func __root char
#else
__root char
#endif
__low_level_init(void) @ "CSTART"
#else
uint8_t _sdcc_external_startup(void)
#endif
{
    LPXOSCGM = 0x8A;
    wtimer0_setclksrc(WTIMER0_CLKSRC, WTIMER0_PRESCALER);
    wtimer1_setclksrc(CLKSRC_FRCOSC, 7);

     // caution: coldstart has to be initialized with 1 in it's definition! Variables are initialized upon _sdcc_external_startup returning 0 -> the coldstart value returned from _sdcc_external startup does not survive in the coldstart case
    coldstart = !(PCON & 0x40);

    ANALOGA = 0x18; // PA[3,4] LPXOSC, other PA are used as digital pins
//    PORTA = 0xC0; // pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC) and PA[0,1,2,5] (DIP switches to gnd, default on)
#ifndef MINI_KIT
    PORTA = 0xC0 | (PINA & 0x25); // pull-up for PA[6,7] which are not bonded, no pull up for PA[3,4] (LPXOSC). Output 0 in PA[0,1,2,5] to prevent current consumption in all DIP switch states
    PORTB = 0xFE; //PB[0,1]  (LCD RS, LCD RST) are overwritten by lcd2_portinit(), enable pull-ups for PB[2..7]  (PB[2,3] for buttons, PB[4..7] unused)
    PORTC = 0xF3 | (PINC & 0x08); // set PC0 = 1 (LCD SEL), PC1 = 1 (LCD SCK), PC2 = 0 (LCD MOSI), PC3 =0 (LED), enable pull-ups for PC[4..7] which are not bonded Mind: PORTC[0:1] is set to 0x3 by lcd2_portinit()
    PORTR = 0xCB; // overwritten by ax5043_reset, ax5043_comminit()
    DIRA = 0x27; // output 0 on PA[0,1,2,5] to prevent current consumption in all DIP switch states. Other PA are inputs, PA[3,4] (LPXOSC) must have disabled digital output drivers
    DIRB = 0x03; // PB[0,1] are outputs (LCD RS, LCD RST), PB[2..7] are inputs (PB[2,3] for buttons,  PB[4..7]  unused)
    DIRC = 0x0F; // PC[0..3] are outputs (LCD SEL, LCD,SCK, LCD MOSI, LED), PC[4..7] are inputs (not bonded).
    DIRR = 0x15; // overwritten by ax5043_reset, ax5043_comminit()
#else
    PORTA = 0xFF; //
    PORTB = 0xFD | (PINB & 0x02); //
    PORTC = 0xFF; //
    PORTR = 0x0B; //

    DIRA = 0x00; //
    DIRB = 0x0e; //  PB1 = LED; PB2 / PB3 are outputs (in case PWRAMP / ANSTSEL are used)
    DIRC = 0x00; //  PC4 = Switch
    DIRR = 0x15; //

#endif // else MINI_KIT

    axradio_setup_pincfg1();
    DPS = 0;
    IE = 0x40;
    EIE = 0x00;
    E2IE = 0x00;
    GPIOENABLE = 1; // unfreeze GPIO
#if defined(__ICC8051__)
    return coldstart;
#else
    return !coldstart; // coldstart -> return 0 -> var initialization; start from sleep -> return 1 -> no var initialization
#endif
}


void main(void)
{
#if !defined(SDCC) && !defined(__ICC8051__)
    _sdcc_external_startup();
#endif

#if defined(SDCC)
    __asm
    G$_start__stack$0$0 = __start__stack
    .globl G$_start__stack$0$0
    __endasm;
#endif

#ifdef USE_DBGLINK
    dbglink_init();
#endif

    EA = 1;
    flash_apply_calibration();
    CLKCON = 0x00;
    wtimer_init();
    number_lines = 0;

    if (coldstart) {
        led0_off();
        led1_off();
        led2_off();
        led3_off();
        dbglink_init();
        dbglink_tx('\n');
        IE_4 = 0;
        axradio_trxstate = trxstate_off;
        if (ax5043_reset()) {
            dbglink_writestr("ERR: AX5043 not found\n");
            goto terminate_error;
        }
        ax5043_set_registers();
        AX5043_PINFUNCIRQ = 0x03; // use as IRQ pin
        ax5043_set_registers_tx();
        AX5043_PLLVCODIV &= 0xFB; // disable RFDIV
        AX5043_MODULATION = 0x08;
        AX5043_FSKDEV2 = 0x00;
        AX5043_FSKDEV1 = 0x00;
        AX5043_FSKDEV0 = 0x00;
        {
            uint8_t x = AX5043_0xF35;
            x |= 0x80;
            if (2 & (uint8_t)~x)
                ++x;
            AX5043_0xF35 = x;
        }
        IE_4 = 1;
        // range all channels
        AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
        axradio_wait_for_xtal();
        for (freq = freqstart; ; freq += freqinc) {
            uint8_t __autodata iesave;
            uint8_t __autodata rng;
            AX5043_FREQA0 = freq;
            AX5043_FREQA1 = freq >> 8;
            AX5043_FREQA2 = freq >> 16;
            AX5043_FREQA3 = freq >> 24;
            AX5043_PLLVCOI = 0x9B;
            AX5043_PLLLOOP = 0x09; // default 100kHz loop BW for ranging
            AX5043_PLLCPI = 0x08;
            iesave = IE & 0x80;
            EA = 0;
            axradio_trxstate = trxstate_pll_ranging;
            AX5043_IRQMASK1 = 0x10; // enable pll autoranging done interrupt
            AX5043_PLLRANGINGA = 0x18; // init ranging process
            for (;;) {
                EA = 0;
                if (axradio_trxstate == trxstate_pll_ranging_done)
                    break;
                wtimer_idle(WTFLAG_CANSTANDBY);
                IE |= iesave;
                wtimer_runcallbacks();
            }
            axradio_trxstate = trxstate_off;
            AX5043_IRQMASK1 = 0x00;
            IE |= iesave;
            if (AX5043_PLLRANGINGA & 0x20)
                goto nextfreq;
            range[0] = range[1] = AX5043_PLLRANGINGA & 0x0F;
            {
                uint8_t __autodata i;
                for (i = 0; i < 2; ++i) {
                    uint8_t r = range[i];
                    if (i) {
                        if (r >= 0x0D)
                            r = 0x0F;
                        else
                            r += 2;
                    } else {
                        if (r <= 0x02)
                            r = 0;
                        else
                            r -= 2;
                    }
                    iesave = IE & 0x80;
                    EA = 0;
                    axradio_trxstate = trxstate_pll_ranging;
                    AX5043_IRQMASK1 = 0x10; // enable pll autoranging done interrupt
                    AX5043_PLLRANGINGA = 0x10 | r; // init ranging process
                    for (;;) {
                        EA = 0;
                        if (axradio_trxstate == trxstate_pll_ranging_done)
                            break;
                        wtimer_idle(WTFLAG_CANSTANDBY);
                        IE |= iesave;
                        wtimer_runcallbacks();
                    }
                    axradio_trxstate = trxstate_off;
                    AX5043_IRQMASK1 = 0x00;
                    IE |= iesave;
                    if (AX5043_PLLRANGINGA & 0x20)
                        continue;
                    range[i] = AX5043_PLLRANGINGA & 0x0F;
                }
            }
            AX5043_PLLLOOP |= 0x04;
            for (rng = range[0]; rng <= range[1]; ++rng) {
                AX5043_PLLRANGINGA = rng;
                AX5043_PWRMODE = AX5043_PWRSTATE_SYNTH_TX;
                {
                    uint8_t __autodata i;
                    for (i = 0x40; i != 0;) {
                        --i;
                        AX5043_PLLVCOI = 0x80 | i;
                        AX5043_PLLRANGINGA; // clear PLL lock loss
                        vtune[i] = axradio_tunevoltage();
                    }
                }
                AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
#ifdef MEMIO
                if (number_lines >= 50) {
                    dbglink_writestr("#\n");
                    do {
                        // wait for the host to fetch the results
                    } while (number_lines);
                }
                {
                    uint8_t __autodata i;
                    uint8_t __xdata *__autodata p = lines[number_lines];
                    ++number_lines;
                    *p++ = freq;
                    *p++ = freq >> 8;
                    *p++ = freq >> 16;
                    *p++ = freq >> 24;
                    *p++ = AX5043_PLLRANGINGA;
                    for (i = 0; i != 0x40; ++i) {
                        *p++ = vtune[i];
                        *p++ = vtune[i] >> 8;
                    }
                }
#else
                dbglink_writestr("R: ");
                dbglink_writehex32(freq, 8, WRNUM_PADZERO);
                dbglink_tx(' ');
                dbglink_writehex16(AX5043_PLLRANGINGA, 2, WRNUM_PADZERO);
                {
                    uint8_t __autodata i;
                    for (i = 0; i != 0x40; ++i) {
                        dbglink_tx(' ');
                        dbglink_writehex16(vtune[i], 4, WRNUM_PADZERO);
                    }
                }
                dbglink_tx('\n');
#endif
            }
nextfreq:
            if (freq == freqend)
                break;
        }
#ifdef MEMIO
        if (number_lines)
            dbglink_writestr("#\n");
#endif
        dbglink_writestr("END ");
        dbglink_writehex32(freqincmhz, 8, WRNUM_PADZERO);
        dbglink_tx(' ');
        dbglink_writehex32(freqstart, 8, WRNUM_PADZERO);
        dbglink_tx(' ');
        dbglink_writehex32(freqend, 8, WRNUM_PADZERO);
        dbglink_tx(' ');
        dbglink_writehex32(freqinc, 8, WRNUM_PADZERO);
        dbglink_writestr("\n\n");
#if 0
        // VCOI Calibration
        ax5043_set_registers_tx();
        AX5043_PLLLOOP |= 0x04;
        AX5043_PWRMODE = AX5043_PWRSTATE_SYNTH_TX;
        {
            uint8_t __autodata vcoisave = AX5043_PLLVCOI;
            for (i = 39; i < axradio_phy_nrchannels; ++i) {
                if (axradio_phy_chanpllrng_tx[i] & 0x20)
                    continue;
                AX5043_PLLRANGINGA = axradio_phy_chanpllrng_tx[i] & 0x0F;
                {
                    uint32_t __autodata f = axradio_phy_chanfreq[i];
                    AX5043_FREQA0 = f;
                    AX5043_FREQA1 = f >> 8;
                    AX5043_FREQA2 = f >> 16;
                    AX5043_FREQA3 = f >> 24;
                }
                if (axradio_phy_chanvcoiinit[0]) {
                    uint8_t x = axradio_phy_chanvcoiinit[i];
                    if (!(axradio_phy_chanpllrnginit[0] & 0xF0))
                        x += (axradio_phy_chanpllrng_tx[i] & 0x0F) - (axradio_phy_chanpllrnginit[i] & 0x0F);
                    axradio_phy_chanvcoi_tx[i] = axradio_adjustvcoi(x);
                } else {
                    axradio_phy_chanvcoi_tx[i] = axradio_calvcoi();
                }
    #if 0
                dbglink_writestr("\nVCOI Calibration Channel ");
                dbglink_writenum16(i, 0, 0);
                dbglink_writestr(" result ");
                dbglink_writehex16(axradio_phy_chanvcoi_tx[i], 2, WRNUM_PADZERO);
                dbglink_tx('\n');
                {
                    uint8_t i;
                    for (i = 0; i != 64; ++i) {
                        dbglink_writenum16(i, 2, 0);
                        dbglink_tx(' ');
                        dbglink_writenum16(axradio_rxbuffer[2*i] | (((uint16_t)axradio_rxbuffer[2*i+1])<<8), 6, WRNUM_SIGNED);
                        dbglink_tx(' ');
                        dbglink_writehex16(axradio_rxbuffer[2*i] | (((uint16_t)axradio_rxbuffer[2*i+1])<<8), 6, WRNUM_PADZERO);
                        dbglink_tx('\n');
                    }
                }
#endif
            }
            AX5043_PLLVCOI = vcoisave;
        }
        AX5043_PWRMODE = AX5043_PWRSTATE_POWERDOWN;
#if 1
        for (i = 0; i < axradio_phy_nrchannels; ++i) {
            uint8_t chg = (!(axradio_phy_chanpllrnginit[0] & 0xF0) && axradio_phy_chanpllrnginit[i] == axradio_phy_chanpllrng_tx[i])
                || (axradio_phy_chanvcoiinit[0] && !((axradio_phy_chanvcoiinit[i] ^ axradio_phy_chanvcoi_tx[i]) & 0x7F));
            if (1 && chg)
                continue;
            dbglink_writestr("CH ");
            dbglink_writenum16(i, 0, 0);
            dbglink_writestr(" RNG ");
            if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
                dbglink_writenum16(axradio_phy_chanpllrnginit[i], 0, 0);
                dbglink_tx('/');
            }
            dbglink_writenum16(axradio_phy_chanpllrng_tx[i], 0, 0);
            dbglink_writestr(" VCOI ");
            if (axradio_phy_chanvcoiinit[0]) {
                dbglink_writenum16(axradio_phy_chanvcoiinit[i] & 0x7F, 0, 0);
                dbglink_tx('/');
            }
            dbglink_writenum16(axradio_phy_chanvcoi_tx[i] & 0x7F, 0, 0);
            if (chg)
                dbglink_writestr(" *");
            dbglink_tx('\n');
        }
#endif
        AX5043_PLLRANGINGA = axradio_phy_chanpllrng_rx[0] & 0x0F;
        {
            uint32_t __autodata f = axradio_phy_chanfreq[0];
            AX5043_FREQA0 = f;
            AX5043_FREQA1 = f >> 8;
            AX5043_FREQA2 = f >> 16;
            AX5043_FREQA3 = f >> 24;
        }
        AX5043_PLLLOOP = pllloop_save; // restore loop settings (works if they came from the common section, unimportant if the came from the rx / tx section)
        AX5043_PLLCPI = pllcpi_save;

        axradio_mode = AXRADIO_MODE_OFF;
        for (i = 0; i < axradio_phy_nrchannels; ++i)
            if ((axradio_phy_chanpllrng_rx[i] | axradio_phy_chanpllrng_tx[i]) & 0x20)
                return AXRADIO_ERR_RANGING;
        return AXRADIO_ERR_NOERROR;
#endif
    }
    axradio_setup_pincfg2();


terminate_error:
    for(;;) {
        wtimer_runcallbacks();
        EA = 0;
        {
            uint8_t flg = WTFLAG_CANSTANDBY;
#ifdef MCU_SLEEP
            if (dbglink_txidle())
                flg |= WTFLAG_CANSLEEP;
#endif // MCU_SLEEP
            wtimer_idle(flg);
        }
        EA = 1;
    }
}



