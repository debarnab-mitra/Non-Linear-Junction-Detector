;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (MINGW64)
;--------------------------------------------------------
	.module easyax5043
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ax5043_init_registers_rx
	.globl _ax5043_init_registers_tx
	.globl _dbglink_writenum16
	.globl _dbglink_writestr
	.globl _dbglink_tx
	.globl _memset
	.globl _memcpy
	.globl _wtimer_remove_callback
	.globl _wtimer_add_callback
	.globl _wtimer_remove
	.globl _wtimer1_addrelative
	.globl _wtimer0_addrelative
	.globl _wtimer0_addabsolute
	.globl _wtimer0_curtime
	.globl _wtimer_runcallbacks
	.globl _wtimer_idle
	.globl _ax5043_writefifo
	.globl _ax5043_readfifo
	.globl _ax5043_wakeup_deepsleep
	.globl _ax5043_enter_deepsleep
	.globl _ax5043_reset
	.globl _radio_read24
	.globl _radio_read16
	.globl _pn9_buffer
	.globl _pn9_advance_byte
	.globl _pn9_advance_bits
	.globl _axradio_framing_append_crc
	.globl _axradio_framing_check_crc
	.globl _ax5043_set_registers_rxcont_singleparamset
	.globl _ax5043_set_registers_rxcont
	.globl _ax5043_set_registers_rxwor
	.globl _ax5043_set_registers_rx
	.globl _ax5043_set_registers_tx
	.globl _ax5043_set_registers
	.globl _axradio_conv_freq_fromreg
	.globl _axradio_statuschange
	.globl _axradio_conv_timeinterval_totimer0
	.globl _checksignedlimit32
	.globl _checksignedlimit16
	.globl _signedlimit16
	.globl _signextend24
	.globl _signextend20
	.globl _signextend16
	.globl _PORTC_7
	.globl _PORTC_6
	.globl _PORTC_5
	.globl _PORTC_4
	.globl _PORTC_3
	.globl _PORTC_2
	.globl _PORTC_1
	.globl _PORTC_0
	.globl _PORTB_7
	.globl _PORTB_6
	.globl _PORTB_5
	.globl _PORTB_4
	.globl _PORTB_3
	.globl _PORTB_2
	.globl _PORTB_1
	.globl _PORTB_0
	.globl _PORTA_7
	.globl _PORTA_6
	.globl _PORTA_5
	.globl _PORTA_4
	.globl _PORTA_3
	.globl _PORTA_2
	.globl _PORTA_1
	.globl _PORTA_0
	.globl _PINC_7
	.globl _PINC_6
	.globl _PINC_5
	.globl _PINC_4
	.globl _PINC_3
	.globl _PINC_2
	.globl _PINC_1
	.globl _PINC_0
	.globl _PINB_7
	.globl _PINB_6
	.globl _PINB_5
	.globl _PINB_4
	.globl _PINB_3
	.globl _PINB_2
	.globl _PINB_1
	.globl _PINB_0
	.globl _PINA_7
	.globl _PINA_6
	.globl _PINA_5
	.globl _PINA_4
	.globl _PINA_3
	.globl _PINA_2
	.globl _PINA_1
	.globl _PINA_0
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _IP_7
	.globl _IP_6
	.globl _IP_5
	.globl _IP_4
	.globl _IP_3
	.globl _IP_2
	.globl _IP_1
	.globl _IP_0
	.globl _EA
	.globl _IE_7
	.globl _IE_6
	.globl _IE_5
	.globl _IE_4
	.globl _IE_3
	.globl _IE_2
	.globl _IE_1
	.globl _IE_0
	.globl _EIP_7
	.globl _EIP_6
	.globl _EIP_5
	.globl _EIP_4
	.globl _EIP_3
	.globl _EIP_2
	.globl _EIP_1
	.globl _EIP_0
	.globl _EIE_7
	.globl _EIE_6
	.globl _EIE_5
	.globl _EIE_4
	.globl _EIE_3
	.globl _EIE_2
	.globl _EIE_1
	.globl _EIE_0
	.globl _E2IP_7
	.globl _E2IP_6
	.globl _E2IP_5
	.globl _E2IP_4
	.globl _E2IP_3
	.globl _E2IP_2
	.globl _E2IP_1
	.globl _E2IP_0
	.globl _E2IE_7
	.globl _E2IE_6
	.globl _E2IE_5
	.globl _E2IE_4
	.globl _E2IE_3
	.globl _E2IE_2
	.globl _E2IE_1
	.globl _E2IE_0
	.globl _B_7
	.globl _B_6
	.globl _B_5
	.globl _B_4
	.globl _B_3
	.globl _B_2
	.globl _B_1
	.globl _B_0
	.globl _ACC_7
	.globl _ACC_6
	.globl _ACC_5
	.globl _ACC_4
	.globl _ACC_3
	.globl _ACC_2
	.globl _ACC_1
	.globl _ACC_0
	.globl _WTSTAT
	.globl _WTIRQEN
	.globl _WTEVTD
	.globl _WTEVTD1
	.globl _WTEVTD0
	.globl _WTEVTC
	.globl _WTEVTC1
	.globl _WTEVTC0
	.globl _WTEVTB
	.globl _WTEVTB1
	.globl _WTEVTB0
	.globl _WTEVTA
	.globl _WTEVTA1
	.globl _WTEVTA0
	.globl _WTCNTR1
	.globl _WTCNTB
	.globl _WTCNTB1
	.globl _WTCNTB0
	.globl _WTCNTA
	.globl _WTCNTA1
	.globl _WTCNTA0
	.globl _WTCFGB
	.globl _WTCFGA
	.globl _WDTRESET
	.globl _WDTCFG
	.globl _U1STATUS
	.globl _U1SHREG
	.globl _U1MODE
	.globl _U1CTRL
	.globl _U0STATUS
	.globl _U0SHREG
	.globl _U0MODE
	.globl _U0CTRL
	.globl _T2STATUS
	.globl _T2PERIOD
	.globl _T2PERIOD1
	.globl _T2PERIOD0
	.globl _T2MODE
	.globl _T2CNT
	.globl _T2CNT1
	.globl _T2CNT0
	.globl _T2CLKSRC
	.globl _T1STATUS
	.globl _T1PERIOD
	.globl _T1PERIOD1
	.globl _T1PERIOD0
	.globl _T1MODE
	.globl _T1CNT
	.globl _T1CNT1
	.globl _T1CNT0
	.globl _T1CLKSRC
	.globl _T0STATUS
	.globl _T0PERIOD
	.globl _T0PERIOD1
	.globl _T0PERIOD0
	.globl _T0MODE
	.globl _T0CNT
	.globl _T0CNT1
	.globl _T0CNT0
	.globl _T0CLKSRC
	.globl _SPSTATUS
	.globl _SPSHREG
	.globl _SPMODE
	.globl _SPCLKSRC
	.globl _RADIOSTAT
	.globl _RADIOSTAT1
	.globl _RADIOSTAT0
	.globl _RADIODATA
	.globl _RADIODATA3
	.globl _RADIODATA2
	.globl _RADIODATA1
	.globl _RADIODATA0
	.globl _RADIOADDR
	.globl _RADIOADDR1
	.globl _RADIOADDR0
	.globl _RADIOACC
	.globl _OC1STATUS
	.globl _OC1PIN
	.globl _OC1MODE
	.globl _OC1COMP
	.globl _OC1COMP1
	.globl _OC1COMP0
	.globl _OC0STATUS
	.globl _OC0PIN
	.globl _OC0MODE
	.globl _OC0COMP
	.globl _OC0COMP1
	.globl _OC0COMP0
	.globl _NVSTATUS
	.globl _NVKEY
	.globl _NVDATA
	.globl _NVDATA1
	.globl _NVDATA0
	.globl _NVADDR
	.globl _NVADDR1
	.globl _NVADDR0
	.globl _IC1STATUS
	.globl _IC1MODE
	.globl _IC1CAPT
	.globl _IC1CAPT1
	.globl _IC1CAPT0
	.globl _IC0STATUS
	.globl _IC0MODE
	.globl _IC0CAPT
	.globl _IC0CAPT1
	.globl _IC0CAPT0
	.globl _PORTR
	.globl _PORTC
	.globl _PORTB
	.globl _PORTA
	.globl _PINR
	.globl _PINC
	.globl _PINB
	.globl _PINA
	.globl _DIRR
	.globl _DIRC
	.globl _DIRB
	.globl _DIRA
	.globl _DBGLNKSTAT
	.globl _DBGLNKBUF
	.globl _CODECONFIG
	.globl _CLKSTAT
	.globl _CLKCON
	.globl _ANALOGCOMP
	.globl _ADCCONV
	.globl _ADCCLKSRC
	.globl _ADCCH3CONFIG
	.globl _ADCCH2CONFIG
	.globl _ADCCH1CONFIG
	.globl _ADCCH0CONFIG
	.globl __XPAGE
	.globl _XPAGE
	.globl _SP
	.globl _PSW
	.globl _PCON
	.globl _IP
	.globl _IE
	.globl _EIP
	.globl _EIE
	.globl _E2IP
	.globl _E2IE
	.globl _DPS
	.globl _DPTR1
	.globl _DPTR0
	.globl _DPL1
	.globl _DPL
	.globl _DPH1
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _f33_saved
	.globl _f32_saved
	.globl _f31_saved
	.globl _f30_saved
	.globl _axradio_timer
	.globl _axradio_cb_transmitdata
	.globl _axradio_cb_transmitend
	.globl _axradio_cb_transmitstart
	.globl _axradio_cb_channelstate
	.globl _axradio_cb_receivesfd
	.globl _axradio_cb_receive
	.globl _axradio_rxbuffer
	.globl _axradio_txbuffer
	.globl _axradio_default_remoteaddr
	.globl _axradio_localaddr
	.globl _axradio_timeanchor
	.globl _axradio_sync_periodcorr
	.globl _axradio_sync_time
	.globl _axradio_ack_seqnr
	.globl _axradio_ack_count
	.globl _axradio_curfreqoffset
	.globl _axradio_curchannel
	.globl _axradio_txbuffer_cnt
	.globl _axradio_txbuffer_len
	.globl _axradio_syncstate
	.globl _AX5043_XTALAMPL
	.globl _AX5043_XTALOSC
	.globl _AX5043_MODCFGP
	.globl _AX5043_POWCTRL1
	.globl _AX5043_REF
	.globl _AX5043_0xF44
	.globl _AX5043_0xF35
	.globl _AX5043_0xF34
	.globl _AX5043_0xF33
	.globl _AX5043_0xF32
	.globl _AX5043_0xF31
	.globl _AX5043_0xF30
	.globl _AX5043_0xF26
	.globl _AX5043_0xF23
	.globl _AX5043_0xF22
	.globl _AX5043_0xF21
	.globl _AX5043_0xF1C
	.globl _AX5043_0xF18
	.globl _AX5043_0xF11
	.globl _AX5043_0xF10
	.globl _AX5043_0xF0C
	.globl _AX5043_0xF00
	.globl _AX5043_TIMEGAIN3NB
	.globl _AX5043_TIMEGAIN2NB
	.globl _AX5043_TIMEGAIN1NB
	.globl _AX5043_TIMEGAIN0NB
	.globl _AX5043_RXPARAMSETSNB
	.globl _AX5043_RXPARAMCURSETNB
	.globl _AX5043_PKTMAXLENNB
	.globl _AX5043_PKTLENOFFSETNB
	.globl _AX5043_PKTLENCFGNB
	.globl _AX5043_PKTADDRMASK3NB
	.globl _AX5043_PKTADDRMASK2NB
	.globl _AX5043_PKTADDRMASK1NB
	.globl _AX5043_PKTADDRMASK0NB
	.globl _AX5043_PKTADDRCFGNB
	.globl _AX5043_PKTADDR3NB
	.globl _AX5043_PKTADDR2NB
	.globl _AX5043_PKTADDR1NB
	.globl _AX5043_PKTADDR0NB
	.globl _AX5043_PHASEGAIN3NB
	.globl _AX5043_PHASEGAIN2NB
	.globl _AX5043_PHASEGAIN1NB
	.globl _AX5043_PHASEGAIN0NB
	.globl _AX5043_FREQUENCYLEAKNB
	.globl _AX5043_FREQUENCYGAIND3NB
	.globl _AX5043_FREQUENCYGAIND2NB
	.globl _AX5043_FREQUENCYGAIND1NB
	.globl _AX5043_FREQUENCYGAIND0NB
	.globl _AX5043_FREQUENCYGAINC3NB
	.globl _AX5043_FREQUENCYGAINC2NB
	.globl _AX5043_FREQUENCYGAINC1NB
	.globl _AX5043_FREQUENCYGAINC0NB
	.globl _AX5043_FREQUENCYGAINB3NB
	.globl _AX5043_FREQUENCYGAINB2NB
	.globl _AX5043_FREQUENCYGAINB1NB
	.globl _AX5043_FREQUENCYGAINB0NB
	.globl _AX5043_FREQUENCYGAINA3NB
	.globl _AX5043_FREQUENCYGAINA2NB
	.globl _AX5043_FREQUENCYGAINA1NB
	.globl _AX5043_FREQUENCYGAINA0NB
	.globl _AX5043_FREQDEV13NB
	.globl _AX5043_FREQDEV12NB
	.globl _AX5043_FREQDEV11NB
	.globl _AX5043_FREQDEV10NB
	.globl _AX5043_FREQDEV03NB
	.globl _AX5043_FREQDEV02NB
	.globl _AX5043_FREQDEV01NB
	.globl _AX5043_FREQDEV00NB
	.globl _AX5043_FOURFSK3NB
	.globl _AX5043_FOURFSK2NB
	.globl _AX5043_FOURFSK1NB
	.globl _AX5043_FOURFSK0NB
	.globl _AX5043_DRGAIN3NB
	.globl _AX5043_DRGAIN2NB
	.globl _AX5043_DRGAIN1NB
	.globl _AX5043_DRGAIN0NB
	.globl _AX5043_BBOFFSRES3NB
	.globl _AX5043_BBOFFSRES2NB
	.globl _AX5043_BBOFFSRES1NB
	.globl _AX5043_BBOFFSRES0NB
	.globl _AX5043_AMPLITUDEGAIN3NB
	.globl _AX5043_AMPLITUDEGAIN2NB
	.globl _AX5043_AMPLITUDEGAIN1NB
	.globl _AX5043_AMPLITUDEGAIN0NB
	.globl _AX5043_AGCTARGET3NB
	.globl _AX5043_AGCTARGET2NB
	.globl _AX5043_AGCTARGET1NB
	.globl _AX5043_AGCTARGET0NB
	.globl _AX5043_AGCMINMAX3NB
	.globl _AX5043_AGCMINMAX2NB
	.globl _AX5043_AGCMINMAX1NB
	.globl _AX5043_AGCMINMAX0NB
	.globl _AX5043_AGCGAIN3NB
	.globl _AX5043_AGCGAIN2NB
	.globl _AX5043_AGCGAIN1NB
	.globl _AX5043_AGCGAIN0NB
	.globl _AX5043_AGCAHYST3NB
	.globl _AX5043_AGCAHYST2NB
	.globl _AX5043_AGCAHYST1NB
	.globl _AX5043_AGCAHYST0NB
	.globl _AX5043_0xF44NB
	.globl _AX5043_0xF35NB
	.globl _AX5043_0xF34NB
	.globl _AX5043_0xF33NB
	.globl _AX5043_0xF32NB
	.globl _AX5043_0xF31NB
	.globl _AX5043_0xF30NB
	.globl _AX5043_0xF26NB
	.globl _AX5043_0xF23NB
	.globl _AX5043_0xF22NB
	.globl _AX5043_0xF21NB
	.globl _AX5043_0xF1CNB
	.globl _AX5043_0xF18NB
	.globl _AX5043_0xF0CNB
	.globl _AX5043_0xF00NB
	.globl _AX5043_XTALSTATUSNB
	.globl _AX5043_XTALOSCNB
	.globl _AX5043_XTALCAPNB
	.globl _AX5043_XTALAMPLNB
	.globl _AX5043_WAKEUPXOEARLYNB
	.globl _AX5043_WAKEUPTIMER1NB
	.globl _AX5043_WAKEUPTIMER0NB
	.globl _AX5043_WAKEUPFREQ1NB
	.globl _AX5043_WAKEUPFREQ0NB
	.globl _AX5043_WAKEUP1NB
	.globl _AX5043_WAKEUP0NB
	.globl _AX5043_TXRATE2NB
	.globl _AX5043_TXRATE1NB
	.globl _AX5043_TXRATE0NB
	.globl _AX5043_TXPWRCOEFFE1NB
	.globl _AX5043_TXPWRCOEFFE0NB
	.globl _AX5043_TXPWRCOEFFD1NB
	.globl _AX5043_TXPWRCOEFFD0NB
	.globl _AX5043_TXPWRCOEFFC1NB
	.globl _AX5043_TXPWRCOEFFC0NB
	.globl _AX5043_TXPWRCOEFFB1NB
	.globl _AX5043_TXPWRCOEFFB0NB
	.globl _AX5043_TXPWRCOEFFA1NB
	.globl _AX5043_TXPWRCOEFFA0NB
	.globl _AX5043_TRKRFFREQ2NB
	.globl _AX5043_TRKRFFREQ1NB
	.globl _AX5043_TRKRFFREQ0NB
	.globl _AX5043_TRKPHASE1NB
	.globl _AX5043_TRKPHASE0NB
	.globl _AX5043_TRKFSKDEMOD1NB
	.globl _AX5043_TRKFSKDEMOD0NB
	.globl _AX5043_TRKFREQ1NB
	.globl _AX5043_TRKFREQ0NB
	.globl _AX5043_TRKDATARATE2NB
	.globl _AX5043_TRKDATARATE1NB
	.globl _AX5043_TRKDATARATE0NB
	.globl _AX5043_TRKAMPLITUDE1NB
	.globl _AX5043_TRKAMPLITUDE0NB
	.globl _AX5043_TRKAFSKDEMOD1NB
	.globl _AX5043_TRKAFSKDEMOD0NB
	.globl _AX5043_TMGTXSETTLENB
	.globl _AX5043_TMGTXBOOSTNB
	.globl _AX5043_TMGRXSETTLENB
	.globl _AX5043_TMGRXRSSINB
	.globl _AX5043_TMGRXPREAMBLE3NB
	.globl _AX5043_TMGRXPREAMBLE2NB
	.globl _AX5043_TMGRXPREAMBLE1NB
	.globl _AX5043_TMGRXOFFSACQNB
	.globl _AX5043_TMGRXCOARSEAGCNB
	.globl _AX5043_TMGRXBOOSTNB
	.globl _AX5043_TMGRXAGCNB
	.globl _AX5043_TIMER2NB
	.globl _AX5043_TIMER1NB
	.globl _AX5043_TIMER0NB
	.globl _AX5043_SILICONREVISIONNB
	.globl _AX5043_SCRATCHNB
	.globl _AX5043_RXDATARATE2NB
	.globl _AX5043_RXDATARATE1NB
	.globl _AX5043_RXDATARATE0NB
	.globl _AX5043_RSSIREFERENCENB
	.globl _AX5043_RSSIABSTHRNB
	.globl _AX5043_RSSINB
	.globl _AX5043_REFNB
	.globl _AX5043_RADIOSTATENB
	.globl _AX5043_RADIOEVENTREQ1NB
	.globl _AX5043_RADIOEVENTREQ0NB
	.globl _AX5043_RADIOEVENTMASK1NB
	.globl _AX5043_RADIOEVENTMASK0NB
	.globl _AX5043_PWRMODENB
	.globl _AX5043_PWRAMPNB
	.globl _AX5043_POWSTICKYSTATNB
	.globl _AX5043_POWSTATNB
	.globl _AX5043_POWIRQMASKNB
	.globl _AX5043_POWCTRL1NB
	.globl _AX5043_PLLVCOIRNB
	.globl _AX5043_PLLVCOINB
	.globl _AX5043_PLLVCODIVNB
	.globl _AX5043_PLLRNGCLKNB
	.globl _AX5043_PLLRANGINGBNB
	.globl _AX5043_PLLRANGINGANB
	.globl _AX5043_PLLLOOPBOOSTNB
	.globl _AX5043_PLLLOOPNB
	.globl _AX5043_PLLLOCKDETNB
	.globl _AX5043_PLLCPIBOOSTNB
	.globl _AX5043_PLLCPINB
	.globl _AX5043_PKTSTOREFLAGSNB
	.globl _AX5043_PKTMISCFLAGSNB
	.globl _AX5043_PKTCHUNKSIZENB
	.globl _AX5043_PKTACCEPTFLAGSNB
	.globl _AX5043_PINSTATENB
	.globl _AX5043_PINFUNCSYSCLKNB
	.globl _AX5043_PINFUNCPWRAMPNB
	.globl _AX5043_PINFUNCIRQNB
	.globl _AX5043_PINFUNCDCLKNB
	.globl _AX5043_PINFUNCDATANB
	.globl _AX5043_PINFUNCANTSELNB
	.globl _AX5043_MODULATIONNB
	.globl _AX5043_MODCFGPNB
	.globl _AX5043_MODCFGFNB
	.globl _AX5043_MODCFGANB
	.globl _AX5043_MAXRFOFFSET2NB
	.globl _AX5043_MAXRFOFFSET1NB
	.globl _AX5043_MAXRFOFFSET0NB
	.globl _AX5043_MAXDROFFSET2NB
	.globl _AX5043_MAXDROFFSET1NB
	.globl _AX5043_MAXDROFFSET0NB
	.globl _AX5043_MATCH1PAT1NB
	.globl _AX5043_MATCH1PAT0NB
	.globl _AX5043_MATCH1MINNB
	.globl _AX5043_MATCH1MAXNB
	.globl _AX5043_MATCH1LENNB
	.globl _AX5043_MATCH0PAT3NB
	.globl _AX5043_MATCH0PAT2NB
	.globl _AX5043_MATCH0PAT1NB
	.globl _AX5043_MATCH0PAT0NB
	.globl _AX5043_MATCH0MINNB
	.globl _AX5043_MATCH0MAXNB
	.globl _AX5043_MATCH0LENNB
	.globl _AX5043_LPOSCSTATUSNB
	.globl _AX5043_LPOSCREF1NB
	.globl _AX5043_LPOSCREF0NB
	.globl _AX5043_LPOSCPER1NB
	.globl _AX5043_LPOSCPER0NB
	.globl _AX5043_LPOSCKFILT1NB
	.globl _AX5043_LPOSCKFILT0NB
	.globl _AX5043_LPOSCFREQ1NB
	.globl _AX5043_LPOSCFREQ0NB
	.globl _AX5043_LPOSCCONFIGNB
	.globl _AX5043_IRQREQUEST1NB
	.globl _AX5043_IRQREQUEST0NB
	.globl _AX5043_IRQMASK1NB
	.globl _AX5043_IRQMASK0NB
	.globl _AX5043_IRQINVERSION1NB
	.globl _AX5043_IRQINVERSION0NB
	.globl _AX5043_IFFREQ1NB
	.globl _AX5043_IFFREQ0NB
	.globl _AX5043_GPADCPERIODNB
	.globl _AX5043_GPADCCTRLNB
	.globl _AX5043_GPADC13VALUE1NB
	.globl _AX5043_GPADC13VALUE0NB
	.globl _AX5043_FSKDMIN1NB
	.globl _AX5043_FSKDMIN0NB
	.globl _AX5043_FSKDMAX1NB
	.globl _AX5043_FSKDMAX0NB
	.globl _AX5043_FSKDEV2NB
	.globl _AX5043_FSKDEV1NB
	.globl _AX5043_FSKDEV0NB
	.globl _AX5043_FREQB3NB
	.globl _AX5043_FREQB2NB
	.globl _AX5043_FREQB1NB
	.globl _AX5043_FREQB0NB
	.globl _AX5043_FREQA3NB
	.globl _AX5043_FREQA2NB
	.globl _AX5043_FREQA1NB
	.globl _AX5043_FREQA0NB
	.globl _AX5043_FRAMINGNB
	.globl _AX5043_FIFOTHRESH1NB
	.globl _AX5043_FIFOTHRESH0NB
	.globl _AX5043_FIFOSTATNB
	.globl _AX5043_FIFOFREE1NB
	.globl _AX5043_FIFOFREE0NB
	.globl _AX5043_FIFODATANB
	.globl _AX5043_FIFOCOUNT1NB
	.globl _AX5043_FIFOCOUNT0NB
	.globl _AX5043_FECSYNCNB
	.globl _AX5043_FECSTATUSNB
	.globl _AX5043_FECNB
	.globl _AX5043_ENCODINGNB
	.globl _AX5043_DIVERSITYNB
	.globl _AX5043_DECIMATIONNB
	.globl _AX5043_DACVALUE1NB
	.globl _AX5043_DACVALUE0NB
	.globl _AX5043_DACCONFIGNB
	.globl _AX5043_CRCINIT3NB
	.globl _AX5043_CRCINIT2NB
	.globl _AX5043_CRCINIT1NB
	.globl _AX5043_CRCINIT0NB
	.globl _AX5043_BGNDRSSITHRNB
	.globl _AX5043_BGNDRSSIGAINNB
	.globl _AX5043_BGNDRSSINB
	.globl _AX5043_BBTUNENB
	.globl _AX5043_BBOFFSCAPNB
	.globl _AX5043_AMPLFILTERNB
	.globl _AX5043_AGCCOUNTERNB
	.globl _AX5043_AFSKSPACE1NB
	.globl _AX5043_AFSKSPACE0NB
	.globl _AX5043_AFSKMARK1NB
	.globl _AX5043_AFSKMARK0NB
	.globl _AX5043_AFSKCTRLNB
	.globl _AX5043_TIMEGAIN3
	.globl _AX5043_TIMEGAIN2
	.globl _AX5043_TIMEGAIN1
	.globl _AX5043_TIMEGAIN0
	.globl _AX5043_RXPARAMSETS
	.globl _AX5043_RXPARAMCURSET
	.globl _AX5043_PKTMAXLEN
	.globl _AX5043_PKTLENOFFSET
	.globl _AX5043_PKTLENCFG
	.globl _AX5043_PKTADDRMASK3
	.globl _AX5043_PKTADDRMASK2
	.globl _AX5043_PKTADDRMASK1
	.globl _AX5043_PKTADDRMASK0
	.globl _AX5043_PKTADDRCFG
	.globl _AX5043_PKTADDR3
	.globl _AX5043_PKTADDR2
	.globl _AX5043_PKTADDR1
	.globl _AX5043_PKTADDR0
	.globl _AX5043_PHASEGAIN3
	.globl _AX5043_PHASEGAIN2
	.globl _AX5043_PHASEGAIN1
	.globl _AX5043_PHASEGAIN0
	.globl _AX5043_FREQUENCYLEAK
	.globl _AX5043_FREQUENCYGAIND3
	.globl _AX5043_FREQUENCYGAIND2
	.globl _AX5043_FREQUENCYGAIND1
	.globl _AX5043_FREQUENCYGAIND0
	.globl _AX5043_FREQUENCYGAINC3
	.globl _AX5043_FREQUENCYGAINC2
	.globl _AX5043_FREQUENCYGAINC1
	.globl _AX5043_FREQUENCYGAINC0
	.globl _AX5043_FREQUENCYGAINB3
	.globl _AX5043_FREQUENCYGAINB2
	.globl _AX5043_FREQUENCYGAINB1
	.globl _AX5043_FREQUENCYGAINB0
	.globl _AX5043_FREQUENCYGAINA3
	.globl _AX5043_FREQUENCYGAINA2
	.globl _AX5043_FREQUENCYGAINA1
	.globl _AX5043_FREQUENCYGAINA0
	.globl _AX5043_FREQDEV13
	.globl _AX5043_FREQDEV12
	.globl _AX5043_FREQDEV11
	.globl _AX5043_FREQDEV10
	.globl _AX5043_FREQDEV03
	.globl _AX5043_FREQDEV02
	.globl _AX5043_FREQDEV01
	.globl _AX5043_FREQDEV00
	.globl _AX5043_FOURFSK3
	.globl _AX5043_FOURFSK2
	.globl _AX5043_FOURFSK1
	.globl _AX5043_FOURFSK0
	.globl _AX5043_DRGAIN3
	.globl _AX5043_DRGAIN2
	.globl _AX5043_DRGAIN1
	.globl _AX5043_DRGAIN0
	.globl _AX5043_BBOFFSRES3
	.globl _AX5043_BBOFFSRES2
	.globl _AX5043_BBOFFSRES1
	.globl _AX5043_BBOFFSRES0
	.globl _AX5043_AMPLITUDEGAIN3
	.globl _AX5043_AMPLITUDEGAIN2
	.globl _AX5043_AMPLITUDEGAIN1
	.globl _AX5043_AMPLITUDEGAIN0
	.globl _AX5043_AGCTARGET3
	.globl _AX5043_AGCTARGET2
	.globl _AX5043_AGCTARGET1
	.globl _AX5043_AGCTARGET0
	.globl _AX5043_AGCMINMAX3
	.globl _AX5043_AGCMINMAX2
	.globl _AX5043_AGCMINMAX1
	.globl _AX5043_AGCMINMAX0
	.globl _AX5043_AGCGAIN3
	.globl _AX5043_AGCGAIN2
	.globl _AX5043_AGCGAIN1
	.globl _AX5043_AGCGAIN0
	.globl _AX5043_AGCAHYST3
	.globl _AX5043_AGCAHYST2
	.globl _AX5043_AGCAHYST1
	.globl _AX5043_AGCAHYST0
	.globl _AX5043_XTALSTATUS
	.globl _AX5043_XTALCAP
	.globl _AX5043_WAKEUPXOEARLY
	.globl _AX5043_WAKEUPTIMER1
	.globl _AX5043_WAKEUPTIMER0
	.globl _AX5043_WAKEUPFREQ1
	.globl _AX5043_WAKEUPFREQ0
	.globl _AX5043_WAKEUP1
	.globl _AX5043_WAKEUP0
	.globl _AX5043_TXRATE2
	.globl _AX5043_TXRATE1
	.globl _AX5043_TXRATE0
	.globl _AX5043_TXPWRCOEFFE1
	.globl _AX5043_TXPWRCOEFFE0
	.globl _AX5043_TXPWRCOEFFD1
	.globl _AX5043_TXPWRCOEFFD0
	.globl _AX5043_TXPWRCOEFFC1
	.globl _AX5043_TXPWRCOEFFC0
	.globl _AX5043_TXPWRCOEFFB1
	.globl _AX5043_TXPWRCOEFFB0
	.globl _AX5043_TXPWRCOEFFA1
	.globl _AX5043_TXPWRCOEFFA0
	.globl _AX5043_TRKRFFREQ2
	.globl _AX5043_TRKRFFREQ1
	.globl _AX5043_TRKRFFREQ0
	.globl _AX5043_TRKPHASE1
	.globl _AX5043_TRKPHASE0
	.globl _AX5043_TRKFSKDEMOD1
	.globl _AX5043_TRKFSKDEMOD0
	.globl _AX5043_TRKFREQ1
	.globl _AX5043_TRKFREQ0
	.globl _AX5043_TRKDATARATE2
	.globl _AX5043_TRKDATARATE1
	.globl _AX5043_TRKDATARATE0
	.globl _AX5043_TRKAMPLITUDE1
	.globl _AX5043_TRKAMPLITUDE0
	.globl _AX5043_TRKAFSKDEMOD1
	.globl _AX5043_TRKAFSKDEMOD0
	.globl _AX5043_TMGTXSETTLE
	.globl _AX5043_TMGTXBOOST
	.globl _AX5043_TMGRXSETTLE
	.globl _AX5043_TMGRXRSSI
	.globl _AX5043_TMGRXPREAMBLE3
	.globl _AX5043_TMGRXPREAMBLE2
	.globl _AX5043_TMGRXPREAMBLE1
	.globl _AX5043_TMGRXOFFSACQ
	.globl _AX5043_TMGRXCOARSEAGC
	.globl _AX5043_TMGRXBOOST
	.globl _AX5043_TMGRXAGC
	.globl _AX5043_TIMER2
	.globl _AX5043_TIMER1
	.globl _AX5043_TIMER0
	.globl _AX5043_SILICONREVISION
	.globl _AX5043_SCRATCH
	.globl _AX5043_RXDATARATE2
	.globl _AX5043_RXDATARATE1
	.globl _AX5043_RXDATARATE0
	.globl _AX5043_RSSIREFERENCE
	.globl _AX5043_RSSIABSTHR
	.globl _AX5043_RSSI
	.globl _AX5043_RADIOSTATE
	.globl _AX5043_RADIOEVENTREQ1
	.globl _AX5043_RADIOEVENTREQ0
	.globl _AX5043_RADIOEVENTMASK1
	.globl _AX5043_RADIOEVENTMASK0
	.globl _AX5043_PWRMODE
	.globl _AX5043_PWRAMP
	.globl _AX5043_POWSTICKYSTAT
	.globl _AX5043_POWSTAT
	.globl _AX5043_POWIRQMASK
	.globl _AX5043_PLLVCOIR
	.globl _AX5043_PLLVCOI
	.globl _AX5043_PLLVCODIV
	.globl _AX5043_PLLRNGCLK
	.globl _AX5043_PLLRANGINGB
	.globl _AX5043_PLLRANGINGA
	.globl _AX5043_PLLLOOPBOOST
	.globl _AX5043_PLLLOOP
	.globl _AX5043_PLLLOCKDET
	.globl _AX5043_PLLCPIBOOST
	.globl _AX5043_PLLCPI
	.globl _AX5043_PKTSTOREFLAGS
	.globl _AX5043_PKTMISCFLAGS
	.globl _AX5043_PKTCHUNKSIZE
	.globl _AX5043_PKTACCEPTFLAGS
	.globl _AX5043_PINSTATE
	.globl _AX5043_PINFUNCSYSCLK
	.globl _AX5043_PINFUNCPWRAMP
	.globl _AX5043_PINFUNCIRQ
	.globl _AX5043_PINFUNCDCLK
	.globl _AX5043_PINFUNCDATA
	.globl _AX5043_PINFUNCANTSEL
	.globl _AX5043_MODULATION
	.globl _AX5043_MODCFGF
	.globl _AX5043_MODCFGA
	.globl _AX5043_MAXRFOFFSET2
	.globl _AX5043_MAXRFOFFSET1
	.globl _AX5043_MAXRFOFFSET0
	.globl _AX5043_MAXDROFFSET2
	.globl _AX5043_MAXDROFFSET1
	.globl _AX5043_MAXDROFFSET0
	.globl _AX5043_MATCH1PAT1
	.globl _AX5043_MATCH1PAT0
	.globl _AX5043_MATCH1MIN
	.globl _AX5043_MATCH1MAX
	.globl _AX5043_MATCH1LEN
	.globl _AX5043_MATCH0PAT3
	.globl _AX5043_MATCH0PAT2
	.globl _AX5043_MATCH0PAT1
	.globl _AX5043_MATCH0PAT0
	.globl _AX5043_MATCH0MIN
	.globl _AX5043_MATCH0MAX
	.globl _AX5043_MATCH0LEN
	.globl _AX5043_LPOSCSTATUS
	.globl _AX5043_LPOSCREF1
	.globl _AX5043_LPOSCREF0
	.globl _AX5043_LPOSCPER1
	.globl _AX5043_LPOSCPER0
	.globl _AX5043_LPOSCKFILT1
	.globl _AX5043_LPOSCKFILT0
	.globl _AX5043_LPOSCFREQ1
	.globl _AX5043_LPOSCFREQ0
	.globl _AX5043_LPOSCCONFIG
	.globl _AX5043_IRQREQUEST1
	.globl _AX5043_IRQREQUEST0
	.globl _AX5043_IRQMASK1
	.globl _AX5043_IRQMASK0
	.globl _AX5043_IRQINVERSION1
	.globl _AX5043_IRQINVERSION0
	.globl _AX5043_IFFREQ1
	.globl _AX5043_IFFREQ0
	.globl _AX5043_GPADCPERIOD
	.globl _AX5043_GPADCCTRL
	.globl _AX5043_GPADC13VALUE1
	.globl _AX5043_GPADC13VALUE0
	.globl _AX5043_FSKDMIN1
	.globl _AX5043_FSKDMIN0
	.globl _AX5043_FSKDMAX1
	.globl _AX5043_FSKDMAX0
	.globl _AX5043_FSKDEV2
	.globl _AX5043_FSKDEV1
	.globl _AX5043_FSKDEV0
	.globl _AX5043_FREQB3
	.globl _AX5043_FREQB2
	.globl _AX5043_FREQB1
	.globl _AX5043_FREQB0
	.globl _AX5043_FREQA3
	.globl _AX5043_FREQA2
	.globl _AX5043_FREQA1
	.globl _AX5043_FREQA0
	.globl _AX5043_FRAMING
	.globl _AX5043_FIFOTHRESH1
	.globl _AX5043_FIFOTHRESH0
	.globl _AX5043_FIFOSTAT
	.globl _AX5043_FIFOFREE1
	.globl _AX5043_FIFOFREE0
	.globl _AX5043_FIFODATA
	.globl _AX5043_FIFOCOUNT1
	.globl _AX5043_FIFOCOUNT0
	.globl _AX5043_FECSYNC
	.globl _AX5043_FECSTATUS
	.globl _AX5043_FEC
	.globl _AX5043_ENCODING
	.globl _AX5043_DIVERSITY
	.globl _AX5043_DECIMATION
	.globl _AX5043_DACVALUE1
	.globl _AX5043_DACVALUE0
	.globl _AX5043_DACCONFIG
	.globl _AX5043_CRCINIT3
	.globl _AX5043_CRCINIT2
	.globl _AX5043_CRCINIT1
	.globl _AX5043_CRCINIT0
	.globl _AX5043_BGNDRSSITHR
	.globl _AX5043_BGNDRSSIGAIN
	.globl _AX5043_BGNDRSSI
	.globl _AX5043_BBTUNE
	.globl _AX5043_BBOFFSCAP
	.globl _AX5043_AMPLFILTER
	.globl _AX5043_AGCCOUNTER
	.globl _AX5043_AFSKSPACE1
	.globl _AX5043_AFSKSPACE0
	.globl _AX5043_AFSKMARK1
	.globl _AX5043_AFSKMARK0
	.globl _AX5043_AFSKCTRL
	.globl _XWTSTAT
	.globl _XWTIRQEN
	.globl _XWTEVTD
	.globl _XWTEVTD1
	.globl _XWTEVTD0
	.globl _XWTEVTC
	.globl _XWTEVTC1
	.globl _XWTEVTC0
	.globl _XWTEVTB
	.globl _XWTEVTB1
	.globl _XWTEVTB0
	.globl _XWTEVTA
	.globl _XWTEVTA1
	.globl _XWTEVTA0
	.globl _XWTCNTR1
	.globl _XWTCNTB
	.globl _XWTCNTB1
	.globl _XWTCNTB0
	.globl _XWTCNTA
	.globl _XWTCNTA1
	.globl _XWTCNTA0
	.globl _XWTCFGB
	.globl _XWTCFGA
	.globl _XWDTRESET
	.globl _XWDTCFG
	.globl _XU1STATUS
	.globl _XU1SHREG
	.globl _XU1MODE
	.globl _XU1CTRL
	.globl _XU0STATUS
	.globl _XU0SHREG
	.globl _XU0MODE
	.globl _XU0CTRL
	.globl _XT2STATUS
	.globl _XT2PERIOD
	.globl _XT2PERIOD1
	.globl _XT2PERIOD0
	.globl _XT2MODE
	.globl _XT2CNT
	.globl _XT2CNT1
	.globl _XT2CNT0
	.globl _XT2CLKSRC
	.globl _XT1STATUS
	.globl _XT1PERIOD
	.globl _XT1PERIOD1
	.globl _XT1PERIOD0
	.globl _XT1MODE
	.globl _XT1CNT
	.globl _XT1CNT1
	.globl _XT1CNT0
	.globl _XT1CLKSRC
	.globl _XT0STATUS
	.globl _XT0PERIOD
	.globl _XT0PERIOD1
	.globl _XT0PERIOD0
	.globl _XT0MODE
	.globl _XT0CNT
	.globl _XT0CNT1
	.globl _XT0CNT0
	.globl _XT0CLKSRC
	.globl _XSPSTATUS
	.globl _XSPSHREG
	.globl _XSPMODE
	.globl _XSPCLKSRC
	.globl _XRADIOSTAT
	.globl _XRADIOSTAT1
	.globl _XRADIOSTAT0
	.globl _XRADIODATA3
	.globl _XRADIODATA2
	.globl _XRADIODATA1
	.globl _XRADIODATA0
	.globl _XRADIOADDR1
	.globl _XRADIOADDR0
	.globl _XRADIOACC
	.globl _XOC1STATUS
	.globl _XOC1PIN
	.globl _XOC1MODE
	.globl _XOC1COMP
	.globl _XOC1COMP1
	.globl _XOC1COMP0
	.globl _XOC0STATUS
	.globl _XOC0PIN
	.globl _XOC0MODE
	.globl _XOC0COMP
	.globl _XOC0COMP1
	.globl _XOC0COMP0
	.globl _XNVSTATUS
	.globl _XNVKEY
	.globl _XNVDATA
	.globl _XNVDATA1
	.globl _XNVDATA0
	.globl _XNVADDR
	.globl _XNVADDR1
	.globl _XNVADDR0
	.globl _XIC1STATUS
	.globl _XIC1MODE
	.globl _XIC1CAPT
	.globl _XIC1CAPT1
	.globl _XIC1CAPT0
	.globl _XIC0STATUS
	.globl _XIC0MODE
	.globl _XIC0CAPT
	.globl _XIC0CAPT1
	.globl _XIC0CAPT0
	.globl _XPORTR
	.globl _XPORTC
	.globl _XPORTB
	.globl _XPORTA
	.globl _XPINR
	.globl _XPINC
	.globl _XPINB
	.globl _XPINA
	.globl _XDIRR
	.globl _XDIRC
	.globl _XDIRB
	.globl _XDIRA
	.globl _XDBGLNKSTAT
	.globl _XDBGLNKBUF
	.globl _XCODECONFIG
	.globl _XCLKSTAT
	.globl _XCLKCON
	.globl _XANALOGCOMP
	.globl _XADCCONV
	.globl _XADCCLKSRC
	.globl _XADCCH3CONFIG
	.globl _XADCCH2CONFIG
	.globl _XADCCH1CONFIG
	.globl _XADCCH0CONFIG
	.globl _XPCON
	.globl _XIP
	.globl _XIE
	.globl _XDPTR1
	.globl _XDPTR0
	.globl _XTALREADY
	.globl _XTALOSC
	.globl _XTALAMPL
	.globl _SILICONREV
	.globl _SCRATCH3
	.globl _SCRATCH2
	.globl _SCRATCH1
	.globl _SCRATCH0
	.globl _RADIOMUX
	.globl _RADIOFSTATADDR
	.globl _RADIOFSTATADDR1
	.globl _RADIOFSTATADDR0
	.globl _RADIOFDATAADDR
	.globl _RADIOFDATAADDR1
	.globl _RADIOFDATAADDR0
	.globl _OSCRUN
	.globl _OSCREADY
	.globl _OSCFORCERUN
	.globl _OSCCALIB
	.globl _MISCCTRL
	.globl _LPXOSCGM
	.globl _LPOSCREF
	.globl _LPOSCREF1
	.globl _LPOSCREF0
	.globl _LPOSCPER
	.globl _LPOSCPER1
	.globl _LPOSCPER0
	.globl _LPOSCKFILT
	.globl _LPOSCKFILT1
	.globl _LPOSCKFILT0
	.globl _LPOSCFREQ
	.globl _LPOSCFREQ1
	.globl _LPOSCFREQ0
	.globl _LPOSCCONFIG
	.globl _PINSEL
	.globl _PINCHGC
	.globl _PINCHGB
	.globl _PINCHGA
	.globl _PALTRADIO
	.globl _PALTC
	.globl _PALTB
	.globl _PALTA
	.globl _INTCHGC
	.globl _INTCHGB
	.globl _INTCHGA
	.globl _EXTIRQ
	.globl _GPIOENABLE
	.globl _ANALOGA
	.globl _FRCOSCREF
	.globl _FRCOSCREF1
	.globl _FRCOSCREF0
	.globl _FRCOSCPER
	.globl _FRCOSCPER1
	.globl _FRCOSCPER0
	.globl _FRCOSCKFILT
	.globl _FRCOSCKFILT1
	.globl _FRCOSCKFILT0
	.globl _FRCOSCFREQ
	.globl _FRCOSCFREQ1
	.globl _FRCOSCFREQ0
	.globl _FRCOSCCTRL
	.globl _FRCOSCCONFIG
	.globl _DMA1CONFIG
	.globl _DMA1ADDR
	.globl _DMA1ADDR1
	.globl _DMA1ADDR0
	.globl _DMA0CONFIG
	.globl _DMA0ADDR
	.globl _DMA0ADDR1
	.globl _DMA0ADDR0
	.globl _ADCTUNE2
	.globl _ADCTUNE1
	.globl _ADCTUNE0
	.globl _ADCCH3VAL
	.globl _ADCCH3VAL1
	.globl _ADCCH3VAL0
	.globl _ADCCH2VAL
	.globl _ADCCH2VAL1
	.globl _ADCCH2VAL0
	.globl _ADCCH1VAL
	.globl _ADCCH1VAL1
	.globl _ADCCH1VAL0
	.globl _ADCCH0VAL
	.globl _ADCCH0VAL1
	.globl _ADCCH0VAL0
	.globl _axradio_transmit_PARM_3
	.globl _axradio_transmit_PARM_2
	.globl _aligned_alloc_PARM_2
	.globl _axradio_trxstate
	.globl _axradio_mode
	.globl _axradio_conv_time_totimer0
	.globl _axradio_isr
	.globl _ax5043_receiver_on_continuous
	.globl _ax5043_receiver_on_wor
	.globl _ax5043_prepare_tx
	.globl _ax5043_off
	.globl _ax5043_off_xtal
	.globl _axradio_wait_for_xtal
	.globl _axradio_init
	.globl _axradio_cansleep
	.globl _axradio_set_mode
	.globl _axradio_get_mode
	.globl _axradio_set_channel
	.globl _axradio_get_channel
	.globl _axradio_get_pllrange
	.globl _axradio_get_pllvcoi
	.globl _axradio_set_freqoffset
	.globl _axradio_get_freqoffset
	.globl _axradio_set_local_address
	.globl _axradio_get_local_address
	.globl _axradio_set_default_remote_address
	.globl _axradio_get_default_remote_address
	.globl _axradio_transmit
	.globl _axradio_agc_freeze
	.globl _axradio_agc_thaw
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC$0$0 == 0x00e0
_ACC	=	0x00e0
G$B$0$0 == 0x00f0
_B	=	0x00f0
G$DPH$0$0 == 0x0083
_DPH	=	0x0083
G$DPH1$0$0 == 0x0085
_DPH1	=	0x0085
G$DPL$0$0 == 0x0082
_DPL	=	0x0082
G$DPL1$0$0 == 0x0084
_DPL1	=	0x0084
G$DPTR0$0$0 == 0x8382
_DPTR0	=	0x8382
G$DPTR1$0$0 == 0x8584
_DPTR1	=	0x8584
G$DPS$0$0 == 0x0086
_DPS	=	0x0086
G$E2IE$0$0 == 0x00a0
_E2IE	=	0x00a0
G$E2IP$0$0 == 0x00c0
_E2IP	=	0x00c0
G$EIE$0$0 == 0x0098
_EIE	=	0x0098
G$EIP$0$0 == 0x00b0
_EIP	=	0x00b0
G$IE$0$0 == 0x00a8
_IE	=	0x00a8
G$IP$0$0 == 0x00b8
_IP	=	0x00b8
G$PCON$0$0 == 0x0087
_PCON	=	0x0087
G$PSW$0$0 == 0x00d0
_PSW	=	0x00d0
G$SP$0$0 == 0x0081
_SP	=	0x0081
G$XPAGE$0$0 == 0x00d9
_XPAGE	=	0x00d9
G$_XPAGE$0$0 == 0x00d9
__XPAGE	=	0x00d9
G$ADCCH0CONFIG$0$0 == 0x00ca
_ADCCH0CONFIG	=	0x00ca
G$ADCCH1CONFIG$0$0 == 0x00cb
_ADCCH1CONFIG	=	0x00cb
G$ADCCH2CONFIG$0$0 == 0x00d2
_ADCCH2CONFIG	=	0x00d2
G$ADCCH3CONFIG$0$0 == 0x00d3
_ADCCH3CONFIG	=	0x00d3
G$ADCCLKSRC$0$0 == 0x00d1
_ADCCLKSRC	=	0x00d1
G$ADCCONV$0$0 == 0x00c9
_ADCCONV	=	0x00c9
G$ANALOGCOMP$0$0 == 0x00e1
_ANALOGCOMP	=	0x00e1
G$CLKCON$0$0 == 0x00c6
_CLKCON	=	0x00c6
G$CLKSTAT$0$0 == 0x00c7
_CLKSTAT	=	0x00c7
G$CODECONFIG$0$0 == 0x0097
_CODECONFIG	=	0x0097
G$DBGLNKBUF$0$0 == 0x00e3
_DBGLNKBUF	=	0x00e3
G$DBGLNKSTAT$0$0 == 0x00e2
_DBGLNKSTAT	=	0x00e2
G$DIRA$0$0 == 0x0089
_DIRA	=	0x0089
G$DIRB$0$0 == 0x008a
_DIRB	=	0x008a
G$DIRC$0$0 == 0x008b
_DIRC	=	0x008b
G$DIRR$0$0 == 0x008e
_DIRR	=	0x008e
G$PINA$0$0 == 0x00c8
_PINA	=	0x00c8
G$PINB$0$0 == 0x00e8
_PINB	=	0x00e8
G$PINC$0$0 == 0x00f8
_PINC	=	0x00f8
G$PINR$0$0 == 0x008d
_PINR	=	0x008d
G$PORTA$0$0 == 0x0080
_PORTA	=	0x0080
G$PORTB$0$0 == 0x0088
_PORTB	=	0x0088
G$PORTC$0$0 == 0x0090
_PORTC	=	0x0090
G$PORTR$0$0 == 0x008c
_PORTR	=	0x008c
G$IC0CAPT0$0$0 == 0x00ce
_IC0CAPT0	=	0x00ce
G$IC0CAPT1$0$0 == 0x00cf
_IC0CAPT1	=	0x00cf
G$IC0CAPT$0$0 == 0xcfce
_IC0CAPT	=	0xcfce
G$IC0MODE$0$0 == 0x00cc
_IC0MODE	=	0x00cc
G$IC0STATUS$0$0 == 0x00cd
_IC0STATUS	=	0x00cd
G$IC1CAPT0$0$0 == 0x00d6
_IC1CAPT0	=	0x00d6
G$IC1CAPT1$0$0 == 0x00d7
_IC1CAPT1	=	0x00d7
G$IC1CAPT$0$0 == 0xd7d6
_IC1CAPT	=	0xd7d6
G$IC1MODE$0$0 == 0x00d4
_IC1MODE	=	0x00d4
G$IC1STATUS$0$0 == 0x00d5
_IC1STATUS	=	0x00d5
G$NVADDR0$0$0 == 0x0092
_NVADDR0	=	0x0092
G$NVADDR1$0$0 == 0x0093
_NVADDR1	=	0x0093
G$NVADDR$0$0 == 0x9392
_NVADDR	=	0x9392
G$NVDATA0$0$0 == 0x0094
_NVDATA0	=	0x0094
G$NVDATA1$0$0 == 0x0095
_NVDATA1	=	0x0095
G$NVDATA$0$0 == 0x9594
_NVDATA	=	0x9594
G$NVKEY$0$0 == 0x0096
_NVKEY	=	0x0096
G$NVSTATUS$0$0 == 0x0091
_NVSTATUS	=	0x0091
G$OC0COMP0$0$0 == 0x00bc
_OC0COMP0	=	0x00bc
G$OC0COMP1$0$0 == 0x00bd
_OC0COMP1	=	0x00bd
G$OC0COMP$0$0 == 0xbdbc
_OC0COMP	=	0xbdbc
G$OC0MODE$0$0 == 0x00b9
_OC0MODE	=	0x00b9
G$OC0PIN$0$0 == 0x00ba
_OC0PIN	=	0x00ba
G$OC0STATUS$0$0 == 0x00bb
_OC0STATUS	=	0x00bb
G$OC1COMP0$0$0 == 0x00c4
_OC1COMP0	=	0x00c4
G$OC1COMP1$0$0 == 0x00c5
_OC1COMP1	=	0x00c5
G$OC1COMP$0$0 == 0xc5c4
_OC1COMP	=	0xc5c4
G$OC1MODE$0$0 == 0x00c1
_OC1MODE	=	0x00c1
G$OC1PIN$0$0 == 0x00c2
_OC1PIN	=	0x00c2
G$OC1STATUS$0$0 == 0x00c3
_OC1STATUS	=	0x00c3
G$RADIOACC$0$0 == 0x00b1
_RADIOACC	=	0x00b1
G$RADIOADDR0$0$0 == 0x00b3
_RADIOADDR0	=	0x00b3
G$RADIOADDR1$0$0 == 0x00b2
_RADIOADDR1	=	0x00b2
G$RADIOADDR$0$0 == 0xb2b3
_RADIOADDR	=	0xb2b3
G$RADIODATA0$0$0 == 0x00b7
_RADIODATA0	=	0x00b7
G$RADIODATA1$0$0 == 0x00b6
_RADIODATA1	=	0x00b6
G$RADIODATA2$0$0 == 0x00b5
_RADIODATA2	=	0x00b5
G$RADIODATA3$0$0 == 0x00b4
_RADIODATA3	=	0x00b4
G$RADIODATA$0$0 == 0xb4b5b6b7
_RADIODATA	=	0xb4b5b6b7
G$RADIOSTAT0$0$0 == 0x00be
_RADIOSTAT0	=	0x00be
G$RADIOSTAT1$0$0 == 0x00bf
_RADIOSTAT1	=	0x00bf
G$RADIOSTAT$0$0 == 0xbfbe
_RADIOSTAT	=	0xbfbe
G$SPCLKSRC$0$0 == 0x00df
_SPCLKSRC	=	0x00df
G$SPMODE$0$0 == 0x00dc
_SPMODE	=	0x00dc
G$SPSHREG$0$0 == 0x00de
_SPSHREG	=	0x00de
G$SPSTATUS$0$0 == 0x00dd
_SPSTATUS	=	0x00dd
G$T0CLKSRC$0$0 == 0x009a
_T0CLKSRC	=	0x009a
G$T0CNT0$0$0 == 0x009c
_T0CNT0	=	0x009c
G$T0CNT1$0$0 == 0x009d
_T0CNT1	=	0x009d
G$T0CNT$0$0 == 0x9d9c
_T0CNT	=	0x9d9c
G$T0MODE$0$0 == 0x0099
_T0MODE	=	0x0099
G$T0PERIOD0$0$0 == 0x009e
_T0PERIOD0	=	0x009e
G$T0PERIOD1$0$0 == 0x009f
_T0PERIOD1	=	0x009f
G$T0PERIOD$0$0 == 0x9f9e
_T0PERIOD	=	0x9f9e
G$T0STATUS$0$0 == 0x009b
_T0STATUS	=	0x009b
G$T1CLKSRC$0$0 == 0x00a2
_T1CLKSRC	=	0x00a2
G$T1CNT0$0$0 == 0x00a4
_T1CNT0	=	0x00a4
G$T1CNT1$0$0 == 0x00a5
_T1CNT1	=	0x00a5
G$T1CNT$0$0 == 0xa5a4
_T1CNT	=	0xa5a4
G$T1MODE$0$0 == 0x00a1
_T1MODE	=	0x00a1
G$T1PERIOD0$0$0 == 0x00a6
_T1PERIOD0	=	0x00a6
G$T1PERIOD1$0$0 == 0x00a7
_T1PERIOD1	=	0x00a7
G$T1PERIOD$0$0 == 0xa7a6
_T1PERIOD	=	0xa7a6
G$T1STATUS$0$0 == 0x00a3
_T1STATUS	=	0x00a3
G$T2CLKSRC$0$0 == 0x00aa
_T2CLKSRC	=	0x00aa
G$T2CNT0$0$0 == 0x00ac
_T2CNT0	=	0x00ac
G$T2CNT1$0$0 == 0x00ad
_T2CNT1	=	0x00ad
G$T2CNT$0$0 == 0xadac
_T2CNT	=	0xadac
G$T2MODE$0$0 == 0x00a9
_T2MODE	=	0x00a9
G$T2PERIOD0$0$0 == 0x00ae
_T2PERIOD0	=	0x00ae
G$T2PERIOD1$0$0 == 0x00af
_T2PERIOD1	=	0x00af
G$T2PERIOD$0$0 == 0xafae
_T2PERIOD	=	0xafae
G$T2STATUS$0$0 == 0x00ab
_T2STATUS	=	0x00ab
G$U0CTRL$0$0 == 0x00e4
_U0CTRL	=	0x00e4
G$U0MODE$0$0 == 0x00e7
_U0MODE	=	0x00e7
G$U0SHREG$0$0 == 0x00e6
_U0SHREG	=	0x00e6
G$U0STATUS$0$0 == 0x00e5
_U0STATUS	=	0x00e5
G$U1CTRL$0$0 == 0x00ec
_U1CTRL	=	0x00ec
G$U1MODE$0$0 == 0x00ef
_U1MODE	=	0x00ef
G$U1SHREG$0$0 == 0x00ee
_U1SHREG	=	0x00ee
G$U1STATUS$0$0 == 0x00ed
_U1STATUS	=	0x00ed
G$WDTCFG$0$0 == 0x00da
_WDTCFG	=	0x00da
G$WDTRESET$0$0 == 0x00db
_WDTRESET	=	0x00db
G$WTCFGA$0$0 == 0x00f1
_WTCFGA	=	0x00f1
G$WTCFGB$0$0 == 0x00f9
_WTCFGB	=	0x00f9
G$WTCNTA0$0$0 == 0x00f2
_WTCNTA0	=	0x00f2
G$WTCNTA1$0$0 == 0x00f3
_WTCNTA1	=	0x00f3
G$WTCNTA$0$0 == 0xf3f2
_WTCNTA	=	0xf3f2
G$WTCNTB0$0$0 == 0x00fa
_WTCNTB0	=	0x00fa
G$WTCNTB1$0$0 == 0x00fb
_WTCNTB1	=	0x00fb
G$WTCNTB$0$0 == 0xfbfa
_WTCNTB	=	0xfbfa
G$WTCNTR1$0$0 == 0x00eb
_WTCNTR1	=	0x00eb
G$WTEVTA0$0$0 == 0x00f4
_WTEVTA0	=	0x00f4
G$WTEVTA1$0$0 == 0x00f5
_WTEVTA1	=	0x00f5
G$WTEVTA$0$0 == 0xf5f4
_WTEVTA	=	0xf5f4
G$WTEVTB0$0$0 == 0x00f6
_WTEVTB0	=	0x00f6
G$WTEVTB1$0$0 == 0x00f7
_WTEVTB1	=	0x00f7
G$WTEVTB$0$0 == 0xf7f6
_WTEVTB	=	0xf7f6
G$WTEVTC0$0$0 == 0x00fc
_WTEVTC0	=	0x00fc
G$WTEVTC1$0$0 == 0x00fd
_WTEVTC1	=	0x00fd
G$WTEVTC$0$0 == 0xfdfc
_WTEVTC	=	0xfdfc
G$WTEVTD0$0$0 == 0x00fe
_WTEVTD0	=	0x00fe
G$WTEVTD1$0$0 == 0x00ff
_WTEVTD1	=	0x00ff
G$WTEVTD$0$0 == 0xfffe
_WTEVTD	=	0xfffe
G$WTIRQEN$0$0 == 0x00e9
_WTIRQEN	=	0x00e9
G$WTSTAT$0$0 == 0x00ea
_WTSTAT	=	0x00ea
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
G$ACC_0$0$0 == 0x00e0
_ACC_0	=	0x00e0
G$ACC_1$0$0 == 0x00e1
_ACC_1	=	0x00e1
G$ACC_2$0$0 == 0x00e2
_ACC_2	=	0x00e2
G$ACC_3$0$0 == 0x00e3
_ACC_3	=	0x00e3
G$ACC_4$0$0 == 0x00e4
_ACC_4	=	0x00e4
G$ACC_5$0$0 == 0x00e5
_ACC_5	=	0x00e5
G$ACC_6$0$0 == 0x00e6
_ACC_6	=	0x00e6
G$ACC_7$0$0 == 0x00e7
_ACC_7	=	0x00e7
G$B_0$0$0 == 0x00f0
_B_0	=	0x00f0
G$B_1$0$0 == 0x00f1
_B_1	=	0x00f1
G$B_2$0$0 == 0x00f2
_B_2	=	0x00f2
G$B_3$0$0 == 0x00f3
_B_3	=	0x00f3
G$B_4$0$0 == 0x00f4
_B_4	=	0x00f4
G$B_5$0$0 == 0x00f5
_B_5	=	0x00f5
G$B_6$0$0 == 0x00f6
_B_6	=	0x00f6
G$B_7$0$0 == 0x00f7
_B_7	=	0x00f7
G$E2IE_0$0$0 == 0x00a0
_E2IE_0	=	0x00a0
G$E2IE_1$0$0 == 0x00a1
_E2IE_1	=	0x00a1
G$E2IE_2$0$0 == 0x00a2
_E2IE_2	=	0x00a2
G$E2IE_3$0$0 == 0x00a3
_E2IE_3	=	0x00a3
G$E2IE_4$0$0 == 0x00a4
_E2IE_4	=	0x00a4
G$E2IE_5$0$0 == 0x00a5
_E2IE_5	=	0x00a5
G$E2IE_6$0$0 == 0x00a6
_E2IE_6	=	0x00a6
G$E2IE_7$0$0 == 0x00a7
_E2IE_7	=	0x00a7
G$E2IP_0$0$0 == 0x00c0
_E2IP_0	=	0x00c0
G$E2IP_1$0$0 == 0x00c1
_E2IP_1	=	0x00c1
G$E2IP_2$0$0 == 0x00c2
_E2IP_2	=	0x00c2
G$E2IP_3$0$0 == 0x00c3
_E2IP_3	=	0x00c3
G$E2IP_4$0$0 == 0x00c4
_E2IP_4	=	0x00c4
G$E2IP_5$0$0 == 0x00c5
_E2IP_5	=	0x00c5
G$E2IP_6$0$0 == 0x00c6
_E2IP_6	=	0x00c6
G$E2IP_7$0$0 == 0x00c7
_E2IP_7	=	0x00c7
G$EIE_0$0$0 == 0x0098
_EIE_0	=	0x0098
G$EIE_1$0$0 == 0x0099
_EIE_1	=	0x0099
G$EIE_2$0$0 == 0x009a
_EIE_2	=	0x009a
G$EIE_3$0$0 == 0x009b
_EIE_3	=	0x009b
G$EIE_4$0$0 == 0x009c
_EIE_4	=	0x009c
G$EIE_5$0$0 == 0x009d
_EIE_5	=	0x009d
G$EIE_6$0$0 == 0x009e
_EIE_6	=	0x009e
G$EIE_7$0$0 == 0x009f
_EIE_7	=	0x009f
G$EIP_0$0$0 == 0x00b0
_EIP_0	=	0x00b0
G$EIP_1$0$0 == 0x00b1
_EIP_1	=	0x00b1
G$EIP_2$0$0 == 0x00b2
_EIP_2	=	0x00b2
G$EIP_3$0$0 == 0x00b3
_EIP_3	=	0x00b3
G$EIP_4$0$0 == 0x00b4
_EIP_4	=	0x00b4
G$EIP_5$0$0 == 0x00b5
_EIP_5	=	0x00b5
G$EIP_6$0$0 == 0x00b6
_EIP_6	=	0x00b6
G$EIP_7$0$0 == 0x00b7
_EIP_7	=	0x00b7
G$IE_0$0$0 == 0x00a8
_IE_0	=	0x00a8
G$IE_1$0$0 == 0x00a9
_IE_1	=	0x00a9
G$IE_2$0$0 == 0x00aa
_IE_2	=	0x00aa
G$IE_3$0$0 == 0x00ab
_IE_3	=	0x00ab
G$IE_4$0$0 == 0x00ac
_IE_4	=	0x00ac
G$IE_5$0$0 == 0x00ad
_IE_5	=	0x00ad
G$IE_6$0$0 == 0x00ae
_IE_6	=	0x00ae
G$IE_7$0$0 == 0x00af
_IE_7	=	0x00af
G$EA$0$0 == 0x00af
_EA	=	0x00af
G$IP_0$0$0 == 0x00b8
_IP_0	=	0x00b8
G$IP_1$0$0 == 0x00b9
_IP_1	=	0x00b9
G$IP_2$0$0 == 0x00ba
_IP_2	=	0x00ba
G$IP_3$0$0 == 0x00bb
_IP_3	=	0x00bb
G$IP_4$0$0 == 0x00bc
_IP_4	=	0x00bc
G$IP_5$0$0 == 0x00bd
_IP_5	=	0x00bd
G$IP_6$0$0 == 0x00be
_IP_6	=	0x00be
G$IP_7$0$0 == 0x00bf
_IP_7	=	0x00bf
G$P$0$0 == 0x00d0
_P	=	0x00d0
G$F1$0$0 == 0x00d1
_F1	=	0x00d1
G$OV$0$0 == 0x00d2
_OV	=	0x00d2
G$RS0$0$0 == 0x00d3
_RS0	=	0x00d3
G$RS1$0$0 == 0x00d4
_RS1	=	0x00d4
G$F0$0$0 == 0x00d5
_F0	=	0x00d5
G$AC$0$0 == 0x00d6
_AC	=	0x00d6
G$CY$0$0 == 0x00d7
_CY	=	0x00d7
G$PINA_0$0$0 == 0x00c8
_PINA_0	=	0x00c8
G$PINA_1$0$0 == 0x00c9
_PINA_1	=	0x00c9
G$PINA_2$0$0 == 0x00ca
_PINA_2	=	0x00ca
G$PINA_3$0$0 == 0x00cb
_PINA_3	=	0x00cb
G$PINA_4$0$0 == 0x00cc
_PINA_4	=	0x00cc
G$PINA_5$0$0 == 0x00cd
_PINA_5	=	0x00cd
G$PINA_6$0$0 == 0x00ce
_PINA_6	=	0x00ce
G$PINA_7$0$0 == 0x00cf
_PINA_7	=	0x00cf
G$PINB_0$0$0 == 0x00e8
_PINB_0	=	0x00e8
G$PINB_1$0$0 == 0x00e9
_PINB_1	=	0x00e9
G$PINB_2$0$0 == 0x00ea
_PINB_2	=	0x00ea
G$PINB_3$0$0 == 0x00eb
_PINB_3	=	0x00eb
G$PINB_4$0$0 == 0x00ec
_PINB_4	=	0x00ec
G$PINB_5$0$0 == 0x00ed
_PINB_5	=	0x00ed
G$PINB_6$0$0 == 0x00ee
_PINB_6	=	0x00ee
G$PINB_7$0$0 == 0x00ef
_PINB_7	=	0x00ef
G$PINC_0$0$0 == 0x00f8
_PINC_0	=	0x00f8
G$PINC_1$0$0 == 0x00f9
_PINC_1	=	0x00f9
G$PINC_2$0$0 == 0x00fa
_PINC_2	=	0x00fa
G$PINC_3$0$0 == 0x00fb
_PINC_3	=	0x00fb
G$PINC_4$0$0 == 0x00fc
_PINC_4	=	0x00fc
G$PINC_5$0$0 == 0x00fd
_PINC_5	=	0x00fd
G$PINC_6$0$0 == 0x00fe
_PINC_6	=	0x00fe
G$PINC_7$0$0 == 0x00ff
_PINC_7	=	0x00ff
G$PORTA_0$0$0 == 0x0080
_PORTA_0	=	0x0080
G$PORTA_1$0$0 == 0x0081
_PORTA_1	=	0x0081
G$PORTA_2$0$0 == 0x0082
_PORTA_2	=	0x0082
G$PORTA_3$0$0 == 0x0083
_PORTA_3	=	0x0083
G$PORTA_4$0$0 == 0x0084
_PORTA_4	=	0x0084
G$PORTA_5$0$0 == 0x0085
_PORTA_5	=	0x0085
G$PORTA_6$0$0 == 0x0086
_PORTA_6	=	0x0086
G$PORTA_7$0$0 == 0x0087
_PORTA_7	=	0x0087
G$PORTB_0$0$0 == 0x0088
_PORTB_0	=	0x0088
G$PORTB_1$0$0 == 0x0089
_PORTB_1	=	0x0089
G$PORTB_2$0$0 == 0x008a
_PORTB_2	=	0x008a
G$PORTB_3$0$0 == 0x008b
_PORTB_3	=	0x008b
G$PORTB_4$0$0 == 0x008c
_PORTB_4	=	0x008c
G$PORTB_5$0$0 == 0x008d
_PORTB_5	=	0x008d
G$PORTB_6$0$0 == 0x008e
_PORTB_6	=	0x008e
G$PORTB_7$0$0 == 0x008f
_PORTB_7	=	0x008f
G$PORTC_0$0$0 == 0x0090
_PORTC_0	=	0x0090
G$PORTC_1$0$0 == 0x0091
_PORTC_1	=	0x0091
G$PORTC_2$0$0 == 0x0092
_PORTC_2	=	0x0092
G$PORTC_3$0$0 == 0x0093
_PORTC_3	=	0x0093
G$PORTC_4$0$0 == 0x0094
_PORTC_4	=	0x0094
G$PORTC_5$0$0 == 0x0095
_PORTC_5	=	0x0095
G$PORTC_6$0$0 == 0x0096
_PORTC_6	=	0x0096
G$PORTC_7$0$0 == 0x0097
_PORTC_7	=	0x0097
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
G$axradio_mode$0$0==.
_axradio_mode::
	.ds 1
G$axradio_trxstate$0$0==.
_axradio_trxstate::
	.ds 1
Leasyax5043.aligned_alloc$size$1$171==.
_aligned_alloc_PARM_2:
	.ds 2
Leasyax5043.axradio_init$vcoisave$3$395==.
_axradio_init_vcoisave_3_395:
	.ds 1
Leasyax5043.axradio_transmit$pkt$1$453==.
_axradio_transmit_PARM_2:
	.ds 3
Leasyax5043.axradio_transmit$pktlen$1$453==.
_axradio_transmit_PARM_3:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
Leasyax5043.axradio_set_channel$rng$1$424==.
_axradio_set_channel_rng_1_424:
	.ds 1
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
Leasyax5043.axradio_timer_callback$sloc0$1$0==.
_axradio_timer_callback_sloc0_1_0:
	.ds 1
Leasyax5043.axradio_init$sloc0$1$0==.
_axradio_init_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
G$ADCCH0VAL0$0$0 == 0x7020
_ADCCH0VAL0	=	0x7020
G$ADCCH0VAL1$0$0 == 0x7021
_ADCCH0VAL1	=	0x7021
G$ADCCH0VAL$0$0 == 0x7020
_ADCCH0VAL	=	0x7020
G$ADCCH1VAL0$0$0 == 0x7022
_ADCCH1VAL0	=	0x7022
G$ADCCH1VAL1$0$0 == 0x7023
_ADCCH1VAL1	=	0x7023
G$ADCCH1VAL$0$0 == 0x7022
_ADCCH1VAL	=	0x7022
G$ADCCH2VAL0$0$0 == 0x7024
_ADCCH2VAL0	=	0x7024
G$ADCCH2VAL1$0$0 == 0x7025
_ADCCH2VAL1	=	0x7025
G$ADCCH2VAL$0$0 == 0x7024
_ADCCH2VAL	=	0x7024
G$ADCCH3VAL0$0$0 == 0x7026
_ADCCH3VAL0	=	0x7026
G$ADCCH3VAL1$0$0 == 0x7027
_ADCCH3VAL1	=	0x7027
G$ADCCH3VAL$0$0 == 0x7026
_ADCCH3VAL	=	0x7026
G$ADCTUNE0$0$0 == 0x7028
_ADCTUNE0	=	0x7028
G$ADCTUNE1$0$0 == 0x7029
_ADCTUNE1	=	0x7029
G$ADCTUNE2$0$0 == 0x702a
_ADCTUNE2	=	0x702a
G$DMA0ADDR0$0$0 == 0x7010
_DMA0ADDR0	=	0x7010
G$DMA0ADDR1$0$0 == 0x7011
_DMA0ADDR1	=	0x7011
G$DMA0ADDR$0$0 == 0x7010
_DMA0ADDR	=	0x7010
G$DMA0CONFIG$0$0 == 0x7014
_DMA0CONFIG	=	0x7014
G$DMA1ADDR0$0$0 == 0x7012
_DMA1ADDR0	=	0x7012
G$DMA1ADDR1$0$0 == 0x7013
_DMA1ADDR1	=	0x7013
G$DMA1ADDR$0$0 == 0x7012
_DMA1ADDR	=	0x7012
G$DMA1CONFIG$0$0 == 0x7015
_DMA1CONFIG	=	0x7015
G$FRCOSCCONFIG$0$0 == 0x7070
_FRCOSCCONFIG	=	0x7070
G$FRCOSCCTRL$0$0 == 0x7071
_FRCOSCCTRL	=	0x7071
G$FRCOSCFREQ0$0$0 == 0x7076
_FRCOSCFREQ0	=	0x7076
G$FRCOSCFREQ1$0$0 == 0x7077
_FRCOSCFREQ1	=	0x7077
G$FRCOSCFREQ$0$0 == 0x7076
_FRCOSCFREQ	=	0x7076
G$FRCOSCKFILT0$0$0 == 0x7072
_FRCOSCKFILT0	=	0x7072
G$FRCOSCKFILT1$0$0 == 0x7073
_FRCOSCKFILT1	=	0x7073
G$FRCOSCKFILT$0$0 == 0x7072
_FRCOSCKFILT	=	0x7072
G$FRCOSCPER0$0$0 == 0x7078
_FRCOSCPER0	=	0x7078
G$FRCOSCPER1$0$0 == 0x7079
_FRCOSCPER1	=	0x7079
G$FRCOSCPER$0$0 == 0x7078
_FRCOSCPER	=	0x7078
G$FRCOSCREF0$0$0 == 0x7074
_FRCOSCREF0	=	0x7074
G$FRCOSCREF1$0$0 == 0x7075
_FRCOSCREF1	=	0x7075
G$FRCOSCREF$0$0 == 0x7074
_FRCOSCREF	=	0x7074
G$ANALOGA$0$0 == 0x7007
_ANALOGA	=	0x7007
G$GPIOENABLE$0$0 == 0x700c
_GPIOENABLE	=	0x700c
G$EXTIRQ$0$0 == 0x7003
_EXTIRQ	=	0x7003
G$INTCHGA$0$0 == 0x7000
_INTCHGA	=	0x7000
G$INTCHGB$0$0 == 0x7001
_INTCHGB	=	0x7001
G$INTCHGC$0$0 == 0x7002
_INTCHGC	=	0x7002
G$PALTA$0$0 == 0x7008
_PALTA	=	0x7008
G$PALTB$0$0 == 0x7009
_PALTB	=	0x7009
G$PALTC$0$0 == 0x700a
_PALTC	=	0x700a
G$PALTRADIO$0$0 == 0x7046
_PALTRADIO	=	0x7046
G$PINCHGA$0$0 == 0x7004
_PINCHGA	=	0x7004
G$PINCHGB$0$0 == 0x7005
_PINCHGB	=	0x7005
G$PINCHGC$0$0 == 0x7006
_PINCHGC	=	0x7006
G$PINSEL$0$0 == 0x700b
_PINSEL	=	0x700b
G$LPOSCCONFIG$0$0 == 0x7060
_LPOSCCONFIG	=	0x7060
G$LPOSCFREQ0$0$0 == 0x7066
_LPOSCFREQ0	=	0x7066
G$LPOSCFREQ1$0$0 == 0x7067
_LPOSCFREQ1	=	0x7067
G$LPOSCFREQ$0$0 == 0x7066
_LPOSCFREQ	=	0x7066
G$LPOSCKFILT0$0$0 == 0x7062
_LPOSCKFILT0	=	0x7062
G$LPOSCKFILT1$0$0 == 0x7063
_LPOSCKFILT1	=	0x7063
G$LPOSCKFILT$0$0 == 0x7062
_LPOSCKFILT	=	0x7062
G$LPOSCPER0$0$0 == 0x7068
_LPOSCPER0	=	0x7068
G$LPOSCPER1$0$0 == 0x7069
_LPOSCPER1	=	0x7069
G$LPOSCPER$0$0 == 0x7068
_LPOSCPER	=	0x7068
G$LPOSCREF0$0$0 == 0x7064
_LPOSCREF0	=	0x7064
G$LPOSCREF1$0$0 == 0x7065
_LPOSCREF1	=	0x7065
G$LPOSCREF$0$0 == 0x7064
_LPOSCREF	=	0x7064
G$LPXOSCGM$0$0 == 0x7054
_LPXOSCGM	=	0x7054
G$MISCCTRL$0$0 == 0x7f01
_MISCCTRL	=	0x7f01
G$OSCCALIB$0$0 == 0x7053
_OSCCALIB	=	0x7053
G$OSCFORCERUN$0$0 == 0x7050
_OSCFORCERUN	=	0x7050
G$OSCREADY$0$0 == 0x7052
_OSCREADY	=	0x7052
G$OSCRUN$0$0 == 0x7051
_OSCRUN	=	0x7051
G$RADIOFDATAADDR0$0$0 == 0x7040
_RADIOFDATAADDR0	=	0x7040
G$RADIOFDATAADDR1$0$0 == 0x7041
_RADIOFDATAADDR1	=	0x7041
G$RADIOFDATAADDR$0$0 == 0x7040
_RADIOFDATAADDR	=	0x7040
G$RADIOFSTATADDR0$0$0 == 0x7042
_RADIOFSTATADDR0	=	0x7042
G$RADIOFSTATADDR1$0$0 == 0x7043
_RADIOFSTATADDR1	=	0x7043
G$RADIOFSTATADDR$0$0 == 0x7042
_RADIOFSTATADDR	=	0x7042
G$RADIOMUX$0$0 == 0x7044
_RADIOMUX	=	0x7044
G$SCRATCH0$0$0 == 0x7084
_SCRATCH0	=	0x7084
G$SCRATCH1$0$0 == 0x7085
_SCRATCH1	=	0x7085
G$SCRATCH2$0$0 == 0x7086
_SCRATCH2	=	0x7086
G$SCRATCH3$0$0 == 0x7087
_SCRATCH3	=	0x7087
G$SILICONREV$0$0 == 0x7f00
_SILICONREV	=	0x7f00
G$XTALAMPL$0$0 == 0x7f19
_XTALAMPL	=	0x7f19
G$XTALOSC$0$0 == 0x7f18
_XTALOSC	=	0x7f18
G$XTALREADY$0$0 == 0x7f1a
_XTALREADY	=	0x7f1a
G$XDPTR0$0$0 == 0x3f82
_XDPTR0	=	0x3f82
G$XDPTR1$0$0 == 0x3f84
_XDPTR1	=	0x3f84
G$XIE$0$0 == 0x3fa8
_XIE	=	0x3fa8
G$XIP$0$0 == 0x3fb8
_XIP	=	0x3fb8
G$XPCON$0$0 == 0x3f87
_XPCON	=	0x3f87
G$XADCCH0CONFIG$0$0 == 0x3fca
_XADCCH0CONFIG	=	0x3fca
G$XADCCH1CONFIG$0$0 == 0x3fcb
_XADCCH1CONFIG	=	0x3fcb
G$XADCCH2CONFIG$0$0 == 0x3fd2
_XADCCH2CONFIG	=	0x3fd2
G$XADCCH3CONFIG$0$0 == 0x3fd3
_XADCCH3CONFIG	=	0x3fd3
G$XADCCLKSRC$0$0 == 0x3fd1
_XADCCLKSRC	=	0x3fd1
G$XADCCONV$0$0 == 0x3fc9
_XADCCONV	=	0x3fc9
G$XANALOGCOMP$0$0 == 0x3fe1
_XANALOGCOMP	=	0x3fe1
G$XCLKCON$0$0 == 0x3fc6
_XCLKCON	=	0x3fc6
G$XCLKSTAT$0$0 == 0x3fc7
_XCLKSTAT	=	0x3fc7
G$XCODECONFIG$0$0 == 0x3f97
_XCODECONFIG	=	0x3f97
G$XDBGLNKBUF$0$0 == 0x3fe3
_XDBGLNKBUF	=	0x3fe3
G$XDBGLNKSTAT$0$0 == 0x3fe2
_XDBGLNKSTAT	=	0x3fe2
G$XDIRA$0$0 == 0x3f89
_XDIRA	=	0x3f89
G$XDIRB$0$0 == 0x3f8a
_XDIRB	=	0x3f8a
G$XDIRC$0$0 == 0x3f8b
_XDIRC	=	0x3f8b
G$XDIRR$0$0 == 0x3f8e
_XDIRR	=	0x3f8e
G$XPINA$0$0 == 0x3fc8
_XPINA	=	0x3fc8
G$XPINB$0$0 == 0x3fe8
_XPINB	=	0x3fe8
G$XPINC$0$0 == 0x3ff8
_XPINC	=	0x3ff8
G$XPINR$0$0 == 0x3f8d
_XPINR	=	0x3f8d
G$XPORTA$0$0 == 0x3f80
_XPORTA	=	0x3f80
G$XPORTB$0$0 == 0x3f88
_XPORTB	=	0x3f88
G$XPORTC$0$0 == 0x3f90
_XPORTC	=	0x3f90
G$XPORTR$0$0 == 0x3f8c
_XPORTR	=	0x3f8c
G$XIC0CAPT0$0$0 == 0x3fce
_XIC0CAPT0	=	0x3fce
G$XIC0CAPT1$0$0 == 0x3fcf
_XIC0CAPT1	=	0x3fcf
G$XIC0CAPT$0$0 == 0x3fce
_XIC0CAPT	=	0x3fce
G$XIC0MODE$0$0 == 0x3fcc
_XIC0MODE	=	0x3fcc
G$XIC0STATUS$0$0 == 0x3fcd
_XIC0STATUS	=	0x3fcd
G$XIC1CAPT0$0$0 == 0x3fd6
_XIC1CAPT0	=	0x3fd6
G$XIC1CAPT1$0$0 == 0x3fd7
_XIC1CAPT1	=	0x3fd7
G$XIC1CAPT$0$0 == 0x3fd6
_XIC1CAPT	=	0x3fd6
G$XIC1MODE$0$0 == 0x3fd4
_XIC1MODE	=	0x3fd4
G$XIC1STATUS$0$0 == 0x3fd5
_XIC1STATUS	=	0x3fd5
G$XNVADDR0$0$0 == 0x3f92
_XNVADDR0	=	0x3f92
G$XNVADDR1$0$0 == 0x3f93
_XNVADDR1	=	0x3f93
G$XNVADDR$0$0 == 0x3f92
_XNVADDR	=	0x3f92
G$XNVDATA0$0$0 == 0x3f94
_XNVDATA0	=	0x3f94
G$XNVDATA1$0$0 == 0x3f95
_XNVDATA1	=	0x3f95
G$XNVDATA$0$0 == 0x3f94
_XNVDATA	=	0x3f94
G$XNVKEY$0$0 == 0x3f96
_XNVKEY	=	0x3f96
G$XNVSTATUS$0$0 == 0x3f91
_XNVSTATUS	=	0x3f91
G$XOC0COMP0$0$0 == 0x3fbc
_XOC0COMP0	=	0x3fbc
G$XOC0COMP1$0$0 == 0x3fbd
_XOC0COMP1	=	0x3fbd
G$XOC0COMP$0$0 == 0x3fbc
_XOC0COMP	=	0x3fbc
G$XOC0MODE$0$0 == 0x3fb9
_XOC0MODE	=	0x3fb9
G$XOC0PIN$0$0 == 0x3fba
_XOC0PIN	=	0x3fba
G$XOC0STATUS$0$0 == 0x3fbb
_XOC0STATUS	=	0x3fbb
G$XOC1COMP0$0$0 == 0x3fc4
_XOC1COMP0	=	0x3fc4
G$XOC1COMP1$0$0 == 0x3fc5
_XOC1COMP1	=	0x3fc5
G$XOC1COMP$0$0 == 0x3fc4
_XOC1COMP	=	0x3fc4
G$XOC1MODE$0$0 == 0x3fc1
_XOC1MODE	=	0x3fc1
G$XOC1PIN$0$0 == 0x3fc2
_XOC1PIN	=	0x3fc2
G$XOC1STATUS$0$0 == 0x3fc3
_XOC1STATUS	=	0x3fc3
G$XRADIOACC$0$0 == 0x3fb1
_XRADIOACC	=	0x3fb1
G$XRADIOADDR0$0$0 == 0x3fb3
_XRADIOADDR0	=	0x3fb3
G$XRADIOADDR1$0$0 == 0x3fb2
_XRADIOADDR1	=	0x3fb2
G$XRADIODATA0$0$0 == 0x3fb7
_XRADIODATA0	=	0x3fb7
G$XRADIODATA1$0$0 == 0x3fb6
_XRADIODATA1	=	0x3fb6
G$XRADIODATA2$0$0 == 0x3fb5
_XRADIODATA2	=	0x3fb5
G$XRADIODATA3$0$0 == 0x3fb4
_XRADIODATA3	=	0x3fb4
G$XRADIOSTAT0$0$0 == 0x3fbe
_XRADIOSTAT0	=	0x3fbe
G$XRADIOSTAT1$0$0 == 0x3fbf
_XRADIOSTAT1	=	0x3fbf
G$XRADIOSTAT$0$0 == 0x3fbe
_XRADIOSTAT	=	0x3fbe
G$XSPCLKSRC$0$0 == 0x3fdf
_XSPCLKSRC	=	0x3fdf
G$XSPMODE$0$0 == 0x3fdc
_XSPMODE	=	0x3fdc
G$XSPSHREG$0$0 == 0x3fde
_XSPSHREG	=	0x3fde
G$XSPSTATUS$0$0 == 0x3fdd
_XSPSTATUS	=	0x3fdd
G$XT0CLKSRC$0$0 == 0x3f9a
_XT0CLKSRC	=	0x3f9a
G$XT0CNT0$0$0 == 0x3f9c
_XT0CNT0	=	0x3f9c
G$XT0CNT1$0$0 == 0x3f9d
_XT0CNT1	=	0x3f9d
G$XT0CNT$0$0 == 0x3f9c
_XT0CNT	=	0x3f9c
G$XT0MODE$0$0 == 0x3f99
_XT0MODE	=	0x3f99
G$XT0PERIOD0$0$0 == 0x3f9e
_XT0PERIOD0	=	0x3f9e
G$XT0PERIOD1$0$0 == 0x3f9f
_XT0PERIOD1	=	0x3f9f
G$XT0PERIOD$0$0 == 0x3f9e
_XT0PERIOD	=	0x3f9e
G$XT0STATUS$0$0 == 0x3f9b
_XT0STATUS	=	0x3f9b
G$XT1CLKSRC$0$0 == 0x3fa2
_XT1CLKSRC	=	0x3fa2
G$XT1CNT0$0$0 == 0x3fa4
_XT1CNT0	=	0x3fa4
G$XT1CNT1$0$0 == 0x3fa5
_XT1CNT1	=	0x3fa5
G$XT1CNT$0$0 == 0x3fa4
_XT1CNT	=	0x3fa4
G$XT1MODE$0$0 == 0x3fa1
_XT1MODE	=	0x3fa1
G$XT1PERIOD0$0$0 == 0x3fa6
_XT1PERIOD0	=	0x3fa6
G$XT1PERIOD1$0$0 == 0x3fa7
_XT1PERIOD1	=	0x3fa7
G$XT1PERIOD$0$0 == 0x3fa6
_XT1PERIOD	=	0x3fa6
G$XT1STATUS$0$0 == 0x3fa3
_XT1STATUS	=	0x3fa3
G$XT2CLKSRC$0$0 == 0x3faa
_XT2CLKSRC	=	0x3faa
G$XT2CNT0$0$0 == 0x3fac
_XT2CNT0	=	0x3fac
G$XT2CNT1$0$0 == 0x3fad
_XT2CNT1	=	0x3fad
G$XT2CNT$0$0 == 0x3fac
_XT2CNT	=	0x3fac
G$XT2MODE$0$0 == 0x3fa9
_XT2MODE	=	0x3fa9
G$XT2PERIOD0$0$0 == 0x3fae
_XT2PERIOD0	=	0x3fae
G$XT2PERIOD1$0$0 == 0x3faf
_XT2PERIOD1	=	0x3faf
G$XT2PERIOD$0$0 == 0x3fae
_XT2PERIOD	=	0x3fae
G$XT2STATUS$0$0 == 0x3fab
_XT2STATUS	=	0x3fab
G$XU0CTRL$0$0 == 0x3fe4
_XU0CTRL	=	0x3fe4
G$XU0MODE$0$0 == 0x3fe7
_XU0MODE	=	0x3fe7
G$XU0SHREG$0$0 == 0x3fe6
_XU0SHREG	=	0x3fe6
G$XU0STATUS$0$0 == 0x3fe5
_XU0STATUS	=	0x3fe5
G$XU1CTRL$0$0 == 0x3fec
_XU1CTRL	=	0x3fec
G$XU1MODE$0$0 == 0x3fef
_XU1MODE	=	0x3fef
G$XU1SHREG$0$0 == 0x3fee
_XU1SHREG	=	0x3fee
G$XU1STATUS$0$0 == 0x3fed
_XU1STATUS	=	0x3fed
G$XWDTCFG$0$0 == 0x3fda
_XWDTCFG	=	0x3fda
G$XWDTRESET$0$0 == 0x3fdb
_XWDTRESET	=	0x3fdb
G$XWTCFGA$0$0 == 0x3ff1
_XWTCFGA	=	0x3ff1
G$XWTCFGB$0$0 == 0x3ff9
_XWTCFGB	=	0x3ff9
G$XWTCNTA0$0$0 == 0x3ff2
_XWTCNTA0	=	0x3ff2
G$XWTCNTA1$0$0 == 0x3ff3
_XWTCNTA1	=	0x3ff3
G$XWTCNTA$0$0 == 0x3ff2
_XWTCNTA	=	0x3ff2
G$XWTCNTB0$0$0 == 0x3ffa
_XWTCNTB0	=	0x3ffa
G$XWTCNTB1$0$0 == 0x3ffb
_XWTCNTB1	=	0x3ffb
G$XWTCNTB$0$0 == 0x3ffa
_XWTCNTB	=	0x3ffa
G$XWTCNTR1$0$0 == 0x3feb
_XWTCNTR1	=	0x3feb
G$XWTEVTA0$0$0 == 0x3ff4
_XWTEVTA0	=	0x3ff4
G$XWTEVTA1$0$0 == 0x3ff5
_XWTEVTA1	=	0x3ff5
G$XWTEVTA$0$0 == 0x3ff4
_XWTEVTA	=	0x3ff4
G$XWTEVTB0$0$0 == 0x3ff6
_XWTEVTB0	=	0x3ff6
G$XWTEVTB1$0$0 == 0x3ff7
_XWTEVTB1	=	0x3ff7
G$XWTEVTB$0$0 == 0x3ff6
_XWTEVTB	=	0x3ff6
G$XWTEVTC0$0$0 == 0x3ffc
_XWTEVTC0	=	0x3ffc
G$XWTEVTC1$0$0 == 0x3ffd
_XWTEVTC1	=	0x3ffd
G$XWTEVTC$0$0 == 0x3ffc
_XWTEVTC	=	0x3ffc
G$XWTEVTD0$0$0 == 0x3ffe
_XWTEVTD0	=	0x3ffe
G$XWTEVTD1$0$0 == 0x3fff
_XWTEVTD1	=	0x3fff
G$XWTEVTD$0$0 == 0x3ffe
_XWTEVTD	=	0x3ffe
G$XWTIRQEN$0$0 == 0x3fe9
_XWTIRQEN	=	0x3fe9
G$XWTSTAT$0$0 == 0x3fea
_XWTSTAT	=	0x3fea
G$AX5043_AFSKCTRL$0$0 == 0x4114
_AX5043_AFSKCTRL	=	0x4114
G$AX5043_AFSKMARK0$0$0 == 0x4113
_AX5043_AFSKMARK0	=	0x4113
G$AX5043_AFSKMARK1$0$0 == 0x4112
_AX5043_AFSKMARK1	=	0x4112
G$AX5043_AFSKSPACE0$0$0 == 0x4111
_AX5043_AFSKSPACE0	=	0x4111
G$AX5043_AFSKSPACE1$0$0 == 0x4110
_AX5043_AFSKSPACE1	=	0x4110
G$AX5043_AGCCOUNTER$0$0 == 0x4043
_AX5043_AGCCOUNTER	=	0x4043
G$AX5043_AMPLFILTER$0$0 == 0x4115
_AX5043_AMPLFILTER	=	0x4115
G$AX5043_BBOFFSCAP$0$0 == 0x4189
_AX5043_BBOFFSCAP	=	0x4189
G$AX5043_BBTUNE$0$0 == 0x4188
_AX5043_BBTUNE	=	0x4188
G$AX5043_BGNDRSSI$0$0 == 0x4041
_AX5043_BGNDRSSI	=	0x4041
G$AX5043_BGNDRSSIGAIN$0$0 == 0x422e
_AX5043_BGNDRSSIGAIN	=	0x422e
G$AX5043_BGNDRSSITHR$0$0 == 0x422f
_AX5043_BGNDRSSITHR	=	0x422f
G$AX5043_CRCINIT0$0$0 == 0x4017
_AX5043_CRCINIT0	=	0x4017
G$AX5043_CRCINIT1$0$0 == 0x4016
_AX5043_CRCINIT1	=	0x4016
G$AX5043_CRCINIT2$0$0 == 0x4015
_AX5043_CRCINIT2	=	0x4015
G$AX5043_CRCINIT3$0$0 == 0x4014
_AX5043_CRCINIT3	=	0x4014
G$AX5043_DACCONFIG$0$0 == 0x4332
_AX5043_DACCONFIG	=	0x4332
G$AX5043_DACVALUE0$0$0 == 0x4331
_AX5043_DACVALUE0	=	0x4331
G$AX5043_DACVALUE1$0$0 == 0x4330
_AX5043_DACVALUE1	=	0x4330
G$AX5043_DECIMATION$0$0 == 0x4102
_AX5043_DECIMATION	=	0x4102
G$AX5043_DIVERSITY$0$0 == 0x4042
_AX5043_DIVERSITY	=	0x4042
G$AX5043_ENCODING$0$0 == 0x4011
_AX5043_ENCODING	=	0x4011
G$AX5043_FEC$0$0 == 0x4018
_AX5043_FEC	=	0x4018
G$AX5043_FECSTATUS$0$0 == 0x401a
_AX5043_FECSTATUS	=	0x401a
G$AX5043_FECSYNC$0$0 == 0x4019
_AX5043_FECSYNC	=	0x4019
G$AX5043_FIFOCOUNT0$0$0 == 0x402b
_AX5043_FIFOCOUNT0	=	0x402b
G$AX5043_FIFOCOUNT1$0$0 == 0x402a
_AX5043_FIFOCOUNT1	=	0x402a
G$AX5043_FIFODATA$0$0 == 0x4029
_AX5043_FIFODATA	=	0x4029
G$AX5043_FIFOFREE0$0$0 == 0x402d
_AX5043_FIFOFREE0	=	0x402d
G$AX5043_FIFOFREE1$0$0 == 0x402c
_AX5043_FIFOFREE1	=	0x402c
G$AX5043_FIFOSTAT$0$0 == 0x4028
_AX5043_FIFOSTAT	=	0x4028
G$AX5043_FIFOTHRESH0$0$0 == 0x402f
_AX5043_FIFOTHRESH0	=	0x402f
G$AX5043_FIFOTHRESH1$0$0 == 0x402e
_AX5043_FIFOTHRESH1	=	0x402e
G$AX5043_FRAMING$0$0 == 0x4012
_AX5043_FRAMING	=	0x4012
G$AX5043_FREQA0$0$0 == 0x4037
_AX5043_FREQA0	=	0x4037
G$AX5043_FREQA1$0$0 == 0x4036
_AX5043_FREQA1	=	0x4036
G$AX5043_FREQA2$0$0 == 0x4035
_AX5043_FREQA2	=	0x4035
G$AX5043_FREQA3$0$0 == 0x4034
_AX5043_FREQA3	=	0x4034
G$AX5043_FREQB0$0$0 == 0x403f
_AX5043_FREQB0	=	0x403f
G$AX5043_FREQB1$0$0 == 0x403e
_AX5043_FREQB1	=	0x403e
G$AX5043_FREQB2$0$0 == 0x403d
_AX5043_FREQB2	=	0x403d
G$AX5043_FREQB3$0$0 == 0x403c
_AX5043_FREQB3	=	0x403c
G$AX5043_FSKDEV0$0$0 == 0x4163
_AX5043_FSKDEV0	=	0x4163
G$AX5043_FSKDEV1$0$0 == 0x4162
_AX5043_FSKDEV1	=	0x4162
G$AX5043_FSKDEV2$0$0 == 0x4161
_AX5043_FSKDEV2	=	0x4161
G$AX5043_FSKDMAX0$0$0 == 0x410d
_AX5043_FSKDMAX0	=	0x410d
G$AX5043_FSKDMAX1$0$0 == 0x410c
_AX5043_FSKDMAX1	=	0x410c
G$AX5043_FSKDMIN0$0$0 == 0x410f
_AX5043_FSKDMIN0	=	0x410f
G$AX5043_FSKDMIN1$0$0 == 0x410e
_AX5043_FSKDMIN1	=	0x410e
G$AX5043_GPADC13VALUE0$0$0 == 0x4309
_AX5043_GPADC13VALUE0	=	0x4309
G$AX5043_GPADC13VALUE1$0$0 == 0x4308
_AX5043_GPADC13VALUE1	=	0x4308
G$AX5043_GPADCCTRL$0$0 == 0x4300
_AX5043_GPADCCTRL	=	0x4300
G$AX5043_GPADCPERIOD$0$0 == 0x4301
_AX5043_GPADCPERIOD	=	0x4301
G$AX5043_IFFREQ0$0$0 == 0x4101
_AX5043_IFFREQ0	=	0x4101
G$AX5043_IFFREQ1$0$0 == 0x4100
_AX5043_IFFREQ1	=	0x4100
G$AX5043_IRQINVERSION0$0$0 == 0x400b
_AX5043_IRQINVERSION0	=	0x400b
G$AX5043_IRQINVERSION1$0$0 == 0x400a
_AX5043_IRQINVERSION1	=	0x400a
G$AX5043_IRQMASK0$0$0 == 0x4007
_AX5043_IRQMASK0	=	0x4007
G$AX5043_IRQMASK1$0$0 == 0x4006
_AX5043_IRQMASK1	=	0x4006
G$AX5043_IRQREQUEST0$0$0 == 0x400d
_AX5043_IRQREQUEST0	=	0x400d
G$AX5043_IRQREQUEST1$0$0 == 0x400c
_AX5043_IRQREQUEST1	=	0x400c
G$AX5043_LPOSCCONFIG$0$0 == 0x4310
_AX5043_LPOSCCONFIG	=	0x4310
G$AX5043_LPOSCFREQ0$0$0 == 0x4317
_AX5043_LPOSCFREQ0	=	0x4317
G$AX5043_LPOSCFREQ1$0$0 == 0x4316
_AX5043_LPOSCFREQ1	=	0x4316
G$AX5043_LPOSCKFILT0$0$0 == 0x4313
_AX5043_LPOSCKFILT0	=	0x4313
G$AX5043_LPOSCKFILT1$0$0 == 0x4312
_AX5043_LPOSCKFILT1	=	0x4312
G$AX5043_LPOSCPER0$0$0 == 0x4319
_AX5043_LPOSCPER0	=	0x4319
G$AX5043_LPOSCPER1$0$0 == 0x4318
_AX5043_LPOSCPER1	=	0x4318
G$AX5043_LPOSCREF0$0$0 == 0x4315
_AX5043_LPOSCREF0	=	0x4315
G$AX5043_LPOSCREF1$0$0 == 0x4314
_AX5043_LPOSCREF1	=	0x4314
G$AX5043_LPOSCSTATUS$0$0 == 0x4311
_AX5043_LPOSCSTATUS	=	0x4311
G$AX5043_MATCH0LEN$0$0 == 0x4214
_AX5043_MATCH0LEN	=	0x4214
G$AX5043_MATCH0MAX$0$0 == 0x4216
_AX5043_MATCH0MAX	=	0x4216
G$AX5043_MATCH0MIN$0$0 == 0x4215
_AX5043_MATCH0MIN	=	0x4215
G$AX5043_MATCH0PAT0$0$0 == 0x4213
_AX5043_MATCH0PAT0	=	0x4213
G$AX5043_MATCH0PAT1$0$0 == 0x4212
_AX5043_MATCH0PAT1	=	0x4212
G$AX5043_MATCH0PAT2$0$0 == 0x4211
_AX5043_MATCH0PAT2	=	0x4211
G$AX5043_MATCH0PAT3$0$0 == 0x4210
_AX5043_MATCH0PAT3	=	0x4210
G$AX5043_MATCH1LEN$0$0 == 0x421c
_AX5043_MATCH1LEN	=	0x421c
G$AX5043_MATCH1MAX$0$0 == 0x421e
_AX5043_MATCH1MAX	=	0x421e
G$AX5043_MATCH1MIN$0$0 == 0x421d
_AX5043_MATCH1MIN	=	0x421d
G$AX5043_MATCH1PAT0$0$0 == 0x4219
_AX5043_MATCH1PAT0	=	0x4219
G$AX5043_MATCH1PAT1$0$0 == 0x4218
_AX5043_MATCH1PAT1	=	0x4218
G$AX5043_MAXDROFFSET0$0$0 == 0x4108
_AX5043_MAXDROFFSET0	=	0x4108
G$AX5043_MAXDROFFSET1$0$0 == 0x4107
_AX5043_MAXDROFFSET1	=	0x4107
G$AX5043_MAXDROFFSET2$0$0 == 0x4106
_AX5043_MAXDROFFSET2	=	0x4106
G$AX5043_MAXRFOFFSET0$0$0 == 0x410b
_AX5043_MAXRFOFFSET0	=	0x410b
G$AX5043_MAXRFOFFSET1$0$0 == 0x410a
_AX5043_MAXRFOFFSET1	=	0x410a
G$AX5043_MAXRFOFFSET2$0$0 == 0x4109
_AX5043_MAXRFOFFSET2	=	0x4109
G$AX5043_MODCFGA$0$0 == 0x4164
_AX5043_MODCFGA	=	0x4164
G$AX5043_MODCFGF$0$0 == 0x4160
_AX5043_MODCFGF	=	0x4160
G$AX5043_MODULATION$0$0 == 0x4010
_AX5043_MODULATION	=	0x4010
G$AX5043_PINFUNCANTSEL$0$0 == 0x4025
_AX5043_PINFUNCANTSEL	=	0x4025
G$AX5043_PINFUNCDATA$0$0 == 0x4023
_AX5043_PINFUNCDATA	=	0x4023
G$AX5043_PINFUNCDCLK$0$0 == 0x4022
_AX5043_PINFUNCDCLK	=	0x4022
G$AX5043_PINFUNCIRQ$0$0 == 0x4024
_AX5043_PINFUNCIRQ	=	0x4024
G$AX5043_PINFUNCPWRAMP$0$0 == 0x4026
_AX5043_PINFUNCPWRAMP	=	0x4026
G$AX5043_PINFUNCSYSCLK$0$0 == 0x4021
_AX5043_PINFUNCSYSCLK	=	0x4021
G$AX5043_PINSTATE$0$0 == 0x4020
_AX5043_PINSTATE	=	0x4020
G$AX5043_PKTACCEPTFLAGS$0$0 == 0x4233
_AX5043_PKTACCEPTFLAGS	=	0x4233
G$AX5043_PKTCHUNKSIZE$0$0 == 0x4230
_AX5043_PKTCHUNKSIZE	=	0x4230
G$AX5043_PKTMISCFLAGS$0$0 == 0x4231
_AX5043_PKTMISCFLAGS	=	0x4231
G$AX5043_PKTSTOREFLAGS$0$0 == 0x4232
_AX5043_PKTSTOREFLAGS	=	0x4232
G$AX5043_PLLCPI$0$0 == 0x4031
_AX5043_PLLCPI	=	0x4031
G$AX5043_PLLCPIBOOST$0$0 == 0x4039
_AX5043_PLLCPIBOOST	=	0x4039
G$AX5043_PLLLOCKDET$0$0 == 0x4182
_AX5043_PLLLOCKDET	=	0x4182
G$AX5043_PLLLOOP$0$0 == 0x4030
_AX5043_PLLLOOP	=	0x4030
G$AX5043_PLLLOOPBOOST$0$0 == 0x4038
_AX5043_PLLLOOPBOOST	=	0x4038
G$AX5043_PLLRANGINGA$0$0 == 0x4033
_AX5043_PLLRANGINGA	=	0x4033
G$AX5043_PLLRANGINGB$0$0 == 0x403b
_AX5043_PLLRANGINGB	=	0x403b
G$AX5043_PLLRNGCLK$0$0 == 0x4183
_AX5043_PLLRNGCLK	=	0x4183
G$AX5043_PLLVCODIV$0$0 == 0x4032
_AX5043_PLLVCODIV	=	0x4032
G$AX5043_PLLVCOI$0$0 == 0x4180
_AX5043_PLLVCOI	=	0x4180
G$AX5043_PLLVCOIR$0$0 == 0x4181
_AX5043_PLLVCOIR	=	0x4181
G$AX5043_POWIRQMASK$0$0 == 0x4005
_AX5043_POWIRQMASK	=	0x4005
G$AX5043_POWSTAT$0$0 == 0x4003
_AX5043_POWSTAT	=	0x4003
G$AX5043_POWSTICKYSTAT$0$0 == 0x4004
_AX5043_POWSTICKYSTAT	=	0x4004
G$AX5043_PWRAMP$0$0 == 0x4027
_AX5043_PWRAMP	=	0x4027
G$AX5043_PWRMODE$0$0 == 0x4002
_AX5043_PWRMODE	=	0x4002
G$AX5043_RADIOEVENTMASK0$0$0 == 0x4009
_AX5043_RADIOEVENTMASK0	=	0x4009
G$AX5043_RADIOEVENTMASK1$0$0 == 0x4008
_AX5043_RADIOEVENTMASK1	=	0x4008
G$AX5043_RADIOEVENTREQ0$0$0 == 0x400f
_AX5043_RADIOEVENTREQ0	=	0x400f
G$AX5043_RADIOEVENTREQ1$0$0 == 0x400e
_AX5043_RADIOEVENTREQ1	=	0x400e
G$AX5043_RADIOSTATE$0$0 == 0x401c
_AX5043_RADIOSTATE	=	0x401c
G$AX5043_RSSI$0$0 == 0x4040
_AX5043_RSSI	=	0x4040
G$AX5043_RSSIABSTHR$0$0 == 0x422d
_AX5043_RSSIABSTHR	=	0x422d
G$AX5043_RSSIREFERENCE$0$0 == 0x422c
_AX5043_RSSIREFERENCE	=	0x422c
G$AX5043_RXDATARATE0$0$0 == 0x4105
_AX5043_RXDATARATE0	=	0x4105
G$AX5043_RXDATARATE1$0$0 == 0x4104
_AX5043_RXDATARATE1	=	0x4104
G$AX5043_RXDATARATE2$0$0 == 0x4103
_AX5043_RXDATARATE2	=	0x4103
G$AX5043_SCRATCH$0$0 == 0x4001
_AX5043_SCRATCH	=	0x4001
G$AX5043_SILICONREVISION$0$0 == 0x4000
_AX5043_SILICONREVISION	=	0x4000
G$AX5043_TIMER0$0$0 == 0x405b
_AX5043_TIMER0	=	0x405b
G$AX5043_TIMER1$0$0 == 0x405a
_AX5043_TIMER1	=	0x405a
G$AX5043_TIMER2$0$0 == 0x4059
_AX5043_TIMER2	=	0x4059
G$AX5043_TMGRXAGC$0$0 == 0x4227
_AX5043_TMGRXAGC	=	0x4227
G$AX5043_TMGRXBOOST$0$0 == 0x4223
_AX5043_TMGRXBOOST	=	0x4223
G$AX5043_TMGRXCOARSEAGC$0$0 == 0x4226
_AX5043_TMGRXCOARSEAGC	=	0x4226
G$AX5043_TMGRXOFFSACQ$0$0 == 0x4225
_AX5043_TMGRXOFFSACQ	=	0x4225
G$AX5043_TMGRXPREAMBLE1$0$0 == 0x4229
_AX5043_TMGRXPREAMBLE1	=	0x4229
G$AX5043_TMGRXPREAMBLE2$0$0 == 0x422a
_AX5043_TMGRXPREAMBLE2	=	0x422a
G$AX5043_TMGRXPREAMBLE3$0$0 == 0x422b
_AX5043_TMGRXPREAMBLE3	=	0x422b
G$AX5043_TMGRXRSSI$0$0 == 0x4228
_AX5043_TMGRXRSSI	=	0x4228
G$AX5043_TMGRXSETTLE$0$0 == 0x4224
_AX5043_TMGRXSETTLE	=	0x4224
G$AX5043_TMGTXBOOST$0$0 == 0x4220
_AX5043_TMGTXBOOST	=	0x4220
G$AX5043_TMGTXSETTLE$0$0 == 0x4221
_AX5043_TMGTXSETTLE	=	0x4221
G$AX5043_TRKAFSKDEMOD0$0$0 == 0x4055
_AX5043_TRKAFSKDEMOD0	=	0x4055
G$AX5043_TRKAFSKDEMOD1$0$0 == 0x4054
_AX5043_TRKAFSKDEMOD1	=	0x4054
G$AX5043_TRKAMPLITUDE0$0$0 == 0x4049
_AX5043_TRKAMPLITUDE0	=	0x4049
G$AX5043_TRKAMPLITUDE1$0$0 == 0x4048
_AX5043_TRKAMPLITUDE1	=	0x4048
G$AX5043_TRKDATARATE0$0$0 == 0x4047
_AX5043_TRKDATARATE0	=	0x4047
G$AX5043_TRKDATARATE1$0$0 == 0x4046
_AX5043_TRKDATARATE1	=	0x4046
G$AX5043_TRKDATARATE2$0$0 == 0x4045
_AX5043_TRKDATARATE2	=	0x4045
G$AX5043_TRKFREQ0$0$0 == 0x4051
_AX5043_TRKFREQ0	=	0x4051
G$AX5043_TRKFREQ1$0$0 == 0x4050
_AX5043_TRKFREQ1	=	0x4050
G$AX5043_TRKFSKDEMOD0$0$0 == 0x4053
_AX5043_TRKFSKDEMOD0	=	0x4053
G$AX5043_TRKFSKDEMOD1$0$0 == 0x4052
_AX5043_TRKFSKDEMOD1	=	0x4052
G$AX5043_TRKPHASE0$0$0 == 0x404b
_AX5043_TRKPHASE0	=	0x404b
G$AX5043_TRKPHASE1$0$0 == 0x404a
_AX5043_TRKPHASE1	=	0x404a
G$AX5043_TRKRFFREQ0$0$0 == 0x404f
_AX5043_TRKRFFREQ0	=	0x404f
G$AX5043_TRKRFFREQ1$0$0 == 0x404e
_AX5043_TRKRFFREQ1	=	0x404e
G$AX5043_TRKRFFREQ2$0$0 == 0x404d
_AX5043_TRKRFFREQ2	=	0x404d
G$AX5043_TXPWRCOEFFA0$0$0 == 0x4169
_AX5043_TXPWRCOEFFA0	=	0x4169
G$AX5043_TXPWRCOEFFA1$0$0 == 0x4168
_AX5043_TXPWRCOEFFA1	=	0x4168
G$AX5043_TXPWRCOEFFB0$0$0 == 0x416b
_AX5043_TXPWRCOEFFB0	=	0x416b
G$AX5043_TXPWRCOEFFB1$0$0 == 0x416a
_AX5043_TXPWRCOEFFB1	=	0x416a
G$AX5043_TXPWRCOEFFC0$0$0 == 0x416d
_AX5043_TXPWRCOEFFC0	=	0x416d
G$AX5043_TXPWRCOEFFC1$0$0 == 0x416c
_AX5043_TXPWRCOEFFC1	=	0x416c
G$AX5043_TXPWRCOEFFD0$0$0 == 0x416f
_AX5043_TXPWRCOEFFD0	=	0x416f
G$AX5043_TXPWRCOEFFD1$0$0 == 0x416e
_AX5043_TXPWRCOEFFD1	=	0x416e
G$AX5043_TXPWRCOEFFE0$0$0 == 0x4171
_AX5043_TXPWRCOEFFE0	=	0x4171
G$AX5043_TXPWRCOEFFE1$0$0 == 0x4170
_AX5043_TXPWRCOEFFE1	=	0x4170
G$AX5043_TXRATE0$0$0 == 0x4167
_AX5043_TXRATE0	=	0x4167
G$AX5043_TXRATE1$0$0 == 0x4166
_AX5043_TXRATE1	=	0x4166
G$AX5043_TXRATE2$0$0 == 0x4165
_AX5043_TXRATE2	=	0x4165
G$AX5043_WAKEUP0$0$0 == 0x406b
_AX5043_WAKEUP0	=	0x406b
G$AX5043_WAKEUP1$0$0 == 0x406a
_AX5043_WAKEUP1	=	0x406a
G$AX5043_WAKEUPFREQ0$0$0 == 0x406d
_AX5043_WAKEUPFREQ0	=	0x406d
G$AX5043_WAKEUPFREQ1$0$0 == 0x406c
_AX5043_WAKEUPFREQ1	=	0x406c
G$AX5043_WAKEUPTIMER0$0$0 == 0x4069
_AX5043_WAKEUPTIMER0	=	0x4069
G$AX5043_WAKEUPTIMER1$0$0 == 0x4068
_AX5043_WAKEUPTIMER1	=	0x4068
G$AX5043_WAKEUPXOEARLY$0$0 == 0x406e
_AX5043_WAKEUPXOEARLY	=	0x406e
G$AX5043_XTALCAP$0$0 == 0x4184
_AX5043_XTALCAP	=	0x4184
G$AX5043_XTALSTATUS$0$0 == 0x401d
_AX5043_XTALSTATUS	=	0x401d
G$AX5043_AGCAHYST0$0$0 == 0x4122
_AX5043_AGCAHYST0	=	0x4122
G$AX5043_AGCAHYST1$0$0 == 0x4132
_AX5043_AGCAHYST1	=	0x4132
G$AX5043_AGCAHYST2$0$0 == 0x4142
_AX5043_AGCAHYST2	=	0x4142
G$AX5043_AGCAHYST3$0$0 == 0x4152
_AX5043_AGCAHYST3	=	0x4152
G$AX5043_AGCGAIN0$0$0 == 0x4120
_AX5043_AGCGAIN0	=	0x4120
G$AX5043_AGCGAIN1$0$0 == 0x4130
_AX5043_AGCGAIN1	=	0x4130
G$AX5043_AGCGAIN2$0$0 == 0x4140
_AX5043_AGCGAIN2	=	0x4140
G$AX5043_AGCGAIN3$0$0 == 0x4150
_AX5043_AGCGAIN3	=	0x4150
G$AX5043_AGCMINMAX0$0$0 == 0x4123
_AX5043_AGCMINMAX0	=	0x4123
G$AX5043_AGCMINMAX1$0$0 == 0x4133
_AX5043_AGCMINMAX1	=	0x4133
G$AX5043_AGCMINMAX2$0$0 == 0x4143
_AX5043_AGCMINMAX2	=	0x4143
G$AX5043_AGCMINMAX3$0$0 == 0x4153
_AX5043_AGCMINMAX3	=	0x4153
G$AX5043_AGCTARGET0$0$0 == 0x4121
_AX5043_AGCTARGET0	=	0x4121
G$AX5043_AGCTARGET1$0$0 == 0x4131
_AX5043_AGCTARGET1	=	0x4131
G$AX5043_AGCTARGET2$0$0 == 0x4141
_AX5043_AGCTARGET2	=	0x4141
G$AX5043_AGCTARGET3$0$0 == 0x4151
_AX5043_AGCTARGET3	=	0x4151
G$AX5043_AMPLITUDEGAIN0$0$0 == 0x412b
_AX5043_AMPLITUDEGAIN0	=	0x412b
G$AX5043_AMPLITUDEGAIN1$0$0 == 0x413b
_AX5043_AMPLITUDEGAIN1	=	0x413b
G$AX5043_AMPLITUDEGAIN2$0$0 == 0x414b
_AX5043_AMPLITUDEGAIN2	=	0x414b
G$AX5043_AMPLITUDEGAIN3$0$0 == 0x415b
_AX5043_AMPLITUDEGAIN3	=	0x415b
G$AX5043_BBOFFSRES0$0$0 == 0x412f
_AX5043_BBOFFSRES0	=	0x412f
G$AX5043_BBOFFSRES1$0$0 == 0x413f
_AX5043_BBOFFSRES1	=	0x413f
G$AX5043_BBOFFSRES2$0$0 == 0x414f
_AX5043_BBOFFSRES2	=	0x414f
G$AX5043_BBOFFSRES3$0$0 == 0x415f
_AX5043_BBOFFSRES3	=	0x415f
G$AX5043_DRGAIN0$0$0 == 0x4125
_AX5043_DRGAIN0	=	0x4125
G$AX5043_DRGAIN1$0$0 == 0x4135
_AX5043_DRGAIN1	=	0x4135
G$AX5043_DRGAIN2$0$0 == 0x4145
_AX5043_DRGAIN2	=	0x4145
G$AX5043_DRGAIN3$0$0 == 0x4155
_AX5043_DRGAIN3	=	0x4155
G$AX5043_FOURFSK0$0$0 == 0x412e
_AX5043_FOURFSK0	=	0x412e
G$AX5043_FOURFSK1$0$0 == 0x413e
_AX5043_FOURFSK1	=	0x413e
G$AX5043_FOURFSK2$0$0 == 0x414e
_AX5043_FOURFSK2	=	0x414e
G$AX5043_FOURFSK3$0$0 == 0x415e
_AX5043_FOURFSK3	=	0x415e
G$AX5043_FREQDEV00$0$0 == 0x412d
_AX5043_FREQDEV00	=	0x412d
G$AX5043_FREQDEV01$0$0 == 0x413d
_AX5043_FREQDEV01	=	0x413d
G$AX5043_FREQDEV02$0$0 == 0x414d
_AX5043_FREQDEV02	=	0x414d
G$AX5043_FREQDEV03$0$0 == 0x415d
_AX5043_FREQDEV03	=	0x415d
G$AX5043_FREQDEV10$0$0 == 0x412c
_AX5043_FREQDEV10	=	0x412c
G$AX5043_FREQDEV11$0$0 == 0x413c
_AX5043_FREQDEV11	=	0x413c
G$AX5043_FREQDEV12$0$0 == 0x414c
_AX5043_FREQDEV12	=	0x414c
G$AX5043_FREQDEV13$0$0 == 0x415c
_AX5043_FREQDEV13	=	0x415c
G$AX5043_FREQUENCYGAINA0$0$0 == 0x4127
_AX5043_FREQUENCYGAINA0	=	0x4127
G$AX5043_FREQUENCYGAINA1$0$0 == 0x4137
_AX5043_FREQUENCYGAINA1	=	0x4137
G$AX5043_FREQUENCYGAINA2$0$0 == 0x4147
_AX5043_FREQUENCYGAINA2	=	0x4147
G$AX5043_FREQUENCYGAINA3$0$0 == 0x4157
_AX5043_FREQUENCYGAINA3	=	0x4157
G$AX5043_FREQUENCYGAINB0$0$0 == 0x4128
_AX5043_FREQUENCYGAINB0	=	0x4128
G$AX5043_FREQUENCYGAINB1$0$0 == 0x4138
_AX5043_FREQUENCYGAINB1	=	0x4138
G$AX5043_FREQUENCYGAINB2$0$0 == 0x4148
_AX5043_FREQUENCYGAINB2	=	0x4148
G$AX5043_FREQUENCYGAINB3$0$0 == 0x4158
_AX5043_FREQUENCYGAINB3	=	0x4158
G$AX5043_FREQUENCYGAINC0$0$0 == 0x4129
_AX5043_FREQUENCYGAINC0	=	0x4129
G$AX5043_FREQUENCYGAINC1$0$0 == 0x4139
_AX5043_FREQUENCYGAINC1	=	0x4139
G$AX5043_FREQUENCYGAINC2$0$0 == 0x4149
_AX5043_FREQUENCYGAINC2	=	0x4149
G$AX5043_FREQUENCYGAINC3$0$0 == 0x4159
_AX5043_FREQUENCYGAINC3	=	0x4159
G$AX5043_FREQUENCYGAIND0$0$0 == 0x412a
_AX5043_FREQUENCYGAIND0	=	0x412a
G$AX5043_FREQUENCYGAIND1$0$0 == 0x413a
_AX5043_FREQUENCYGAIND1	=	0x413a
G$AX5043_FREQUENCYGAIND2$0$0 == 0x414a
_AX5043_FREQUENCYGAIND2	=	0x414a
G$AX5043_FREQUENCYGAIND3$0$0 == 0x415a
_AX5043_FREQUENCYGAIND3	=	0x415a
G$AX5043_FREQUENCYLEAK$0$0 == 0x4116
_AX5043_FREQUENCYLEAK	=	0x4116
G$AX5043_PHASEGAIN0$0$0 == 0x4126
_AX5043_PHASEGAIN0	=	0x4126
G$AX5043_PHASEGAIN1$0$0 == 0x4136
_AX5043_PHASEGAIN1	=	0x4136
G$AX5043_PHASEGAIN2$0$0 == 0x4146
_AX5043_PHASEGAIN2	=	0x4146
G$AX5043_PHASEGAIN3$0$0 == 0x4156
_AX5043_PHASEGAIN3	=	0x4156
G$AX5043_PKTADDR0$0$0 == 0x4207
_AX5043_PKTADDR0	=	0x4207
G$AX5043_PKTADDR1$0$0 == 0x4206
_AX5043_PKTADDR1	=	0x4206
G$AX5043_PKTADDR2$0$0 == 0x4205
_AX5043_PKTADDR2	=	0x4205
G$AX5043_PKTADDR3$0$0 == 0x4204
_AX5043_PKTADDR3	=	0x4204
G$AX5043_PKTADDRCFG$0$0 == 0x4200
_AX5043_PKTADDRCFG	=	0x4200
G$AX5043_PKTADDRMASK0$0$0 == 0x420b
_AX5043_PKTADDRMASK0	=	0x420b
G$AX5043_PKTADDRMASK1$0$0 == 0x420a
_AX5043_PKTADDRMASK1	=	0x420a
G$AX5043_PKTADDRMASK2$0$0 == 0x4209
_AX5043_PKTADDRMASK2	=	0x4209
G$AX5043_PKTADDRMASK3$0$0 == 0x4208
_AX5043_PKTADDRMASK3	=	0x4208
G$AX5043_PKTLENCFG$0$0 == 0x4201
_AX5043_PKTLENCFG	=	0x4201
G$AX5043_PKTLENOFFSET$0$0 == 0x4202
_AX5043_PKTLENOFFSET	=	0x4202
G$AX5043_PKTMAXLEN$0$0 == 0x4203
_AX5043_PKTMAXLEN	=	0x4203
G$AX5043_RXPARAMCURSET$0$0 == 0x4118
_AX5043_RXPARAMCURSET	=	0x4118
G$AX5043_RXPARAMSETS$0$0 == 0x4117
_AX5043_RXPARAMSETS	=	0x4117
G$AX5043_TIMEGAIN0$0$0 == 0x4124
_AX5043_TIMEGAIN0	=	0x4124
G$AX5043_TIMEGAIN1$0$0 == 0x4134
_AX5043_TIMEGAIN1	=	0x4134
G$AX5043_TIMEGAIN2$0$0 == 0x4144
_AX5043_TIMEGAIN2	=	0x4144
G$AX5043_TIMEGAIN3$0$0 == 0x4154
_AX5043_TIMEGAIN3	=	0x4154
G$AX5043_AFSKCTRLNB$0$0 == 0x5114
_AX5043_AFSKCTRLNB	=	0x5114
G$AX5043_AFSKMARK0NB$0$0 == 0x5113
_AX5043_AFSKMARK0NB	=	0x5113
G$AX5043_AFSKMARK1NB$0$0 == 0x5112
_AX5043_AFSKMARK1NB	=	0x5112
G$AX5043_AFSKSPACE0NB$0$0 == 0x5111
_AX5043_AFSKSPACE0NB	=	0x5111
G$AX5043_AFSKSPACE1NB$0$0 == 0x5110
_AX5043_AFSKSPACE1NB	=	0x5110
G$AX5043_AGCCOUNTERNB$0$0 == 0x5043
_AX5043_AGCCOUNTERNB	=	0x5043
G$AX5043_AMPLFILTERNB$0$0 == 0x5115
_AX5043_AMPLFILTERNB	=	0x5115
G$AX5043_BBOFFSCAPNB$0$0 == 0x5189
_AX5043_BBOFFSCAPNB	=	0x5189
G$AX5043_BBTUNENB$0$0 == 0x5188
_AX5043_BBTUNENB	=	0x5188
G$AX5043_BGNDRSSINB$0$0 == 0x5041
_AX5043_BGNDRSSINB	=	0x5041
G$AX5043_BGNDRSSIGAINNB$0$0 == 0x522e
_AX5043_BGNDRSSIGAINNB	=	0x522e
G$AX5043_BGNDRSSITHRNB$0$0 == 0x522f
_AX5043_BGNDRSSITHRNB	=	0x522f
G$AX5043_CRCINIT0NB$0$0 == 0x5017
_AX5043_CRCINIT0NB	=	0x5017
G$AX5043_CRCINIT1NB$0$0 == 0x5016
_AX5043_CRCINIT1NB	=	0x5016
G$AX5043_CRCINIT2NB$0$0 == 0x5015
_AX5043_CRCINIT2NB	=	0x5015
G$AX5043_CRCINIT3NB$0$0 == 0x5014
_AX5043_CRCINIT3NB	=	0x5014
G$AX5043_DACCONFIGNB$0$0 == 0x5332
_AX5043_DACCONFIGNB	=	0x5332
G$AX5043_DACVALUE0NB$0$0 == 0x5331
_AX5043_DACVALUE0NB	=	0x5331
G$AX5043_DACVALUE1NB$0$0 == 0x5330
_AX5043_DACVALUE1NB	=	0x5330
G$AX5043_DECIMATIONNB$0$0 == 0x5102
_AX5043_DECIMATIONNB	=	0x5102
G$AX5043_DIVERSITYNB$0$0 == 0x5042
_AX5043_DIVERSITYNB	=	0x5042
G$AX5043_ENCODINGNB$0$0 == 0x5011
_AX5043_ENCODINGNB	=	0x5011
G$AX5043_FECNB$0$0 == 0x5018
_AX5043_FECNB	=	0x5018
G$AX5043_FECSTATUSNB$0$0 == 0x501a
_AX5043_FECSTATUSNB	=	0x501a
G$AX5043_FECSYNCNB$0$0 == 0x5019
_AX5043_FECSYNCNB	=	0x5019
G$AX5043_FIFOCOUNT0NB$0$0 == 0x502b
_AX5043_FIFOCOUNT0NB	=	0x502b
G$AX5043_FIFOCOUNT1NB$0$0 == 0x502a
_AX5043_FIFOCOUNT1NB	=	0x502a
G$AX5043_FIFODATANB$0$0 == 0x5029
_AX5043_FIFODATANB	=	0x5029
G$AX5043_FIFOFREE0NB$0$0 == 0x502d
_AX5043_FIFOFREE0NB	=	0x502d
G$AX5043_FIFOFREE1NB$0$0 == 0x502c
_AX5043_FIFOFREE1NB	=	0x502c
G$AX5043_FIFOSTATNB$0$0 == 0x5028
_AX5043_FIFOSTATNB	=	0x5028
G$AX5043_FIFOTHRESH0NB$0$0 == 0x502f
_AX5043_FIFOTHRESH0NB	=	0x502f
G$AX5043_FIFOTHRESH1NB$0$0 == 0x502e
_AX5043_FIFOTHRESH1NB	=	0x502e
G$AX5043_FRAMINGNB$0$0 == 0x5012
_AX5043_FRAMINGNB	=	0x5012
G$AX5043_FREQA0NB$0$0 == 0x5037
_AX5043_FREQA0NB	=	0x5037
G$AX5043_FREQA1NB$0$0 == 0x5036
_AX5043_FREQA1NB	=	0x5036
G$AX5043_FREQA2NB$0$0 == 0x5035
_AX5043_FREQA2NB	=	0x5035
G$AX5043_FREQA3NB$0$0 == 0x5034
_AX5043_FREQA3NB	=	0x5034
G$AX5043_FREQB0NB$0$0 == 0x503f
_AX5043_FREQB0NB	=	0x503f
G$AX5043_FREQB1NB$0$0 == 0x503e
_AX5043_FREQB1NB	=	0x503e
G$AX5043_FREQB2NB$0$0 == 0x503d
_AX5043_FREQB2NB	=	0x503d
G$AX5043_FREQB3NB$0$0 == 0x503c
_AX5043_FREQB3NB	=	0x503c
G$AX5043_FSKDEV0NB$0$0 == 0x5163
_AX5043_FSKDEV0NB	=	0x5163
G$AX5043_FSKDEV1NB$0$0 == 0x5162
_AX5043_FSKDEV1NB	=	0x5162
G$AX5043_FSKDEV2NB$0$0 == 0x5161
_AX5043_FSKDEV2NB	=	0x5161
G$AX5043_FSKDMAX0NB$0$0 == 0x510d
_AX5043_FSKDMAX0NB	=	0x510d
G$AX5043_FSKDMAX1NB$0$0 == 0x510c
_AX5043_FSKDMAX1NB	=	0x510c
G$AX5043_FSKDMIN0NB$0$0 == 0x510f
_AX5043_FSKDMIN0NB	=	0x510f
G$AX5043_FSKDMIN1NB$0$0 == 0x510e
_AX5043_FSKDMIN1NB	=	0x510e
G$AX5043_GPADC13VALUE0NB$0$0 == 0x5309
_AX5043_GPADC13VALUE0NB	=	0x5309
G$AX5043_GPADC13VALUE1NB$0$0 == 0x5308
_AX5043_GPADC13VALUE1NB	=	0x5308
G$AX5043_GPADCCTRLNB$0$0 == 0x5300
_AX5043_GPADCCTRLNB	=	0x5300
G$AX5043_GPADCPERIODNB$0$0 == 0x5301
_AX5043_GPADCPERIODNB	=	0x5301
G$AX5043_IFFREQ0NB$0$0 == 0x5101
_AX5043_IFFREQ0NB	=	0x5101
G$AX5043_IFFREQ1NB$0$0 == 0x5100
_AX5043_IFFREQ1NB	=	0x5100
G$AX5043_IRQINVERSION0NB$0$0 == 0x500b
_AX5043_IRQINVERSION0NB	=	0x500b
G$AX5043_IRQINVERSION1NB$0$0 == 0x500a
_AX5043_IRQINVERSION1NB	=	0x500a
G$AX5043_IRQMASK0NB$0$0 == 0x5007
_AX5043_IRQMASK0NB	=	0x5007
G$AX5043_IRQMASK1NB$0$0 == 0x5006
_AX5043_IRQMASK1NB	=	0x5006
G$AX5043_IRQREQUEST0NB$0$0 == 0x500d
_AX5043_IRQREQUEST0NB	=	0x500d
G$AX5043_IRQREQUEST1NB$0$0 == 0x500c
_AX5043_IRQREQUEST1NB	=	0x500c
G$AX5043_LPOSCCONFIGNB$0$0 == 0x5310
_AX5043_LPOSCCONFIGNB	=	0x5310
G$AX5043_LPOSCFREQ0NB$0$0 == 0x5317
_AX5043_LPOSCFREQ0NB	=	0x5317
G$AX5043_LPOSCFREQ1NB$0$0 == 0x5316
_AX5043_LPOSCFREQ1NB	=	0x5316
G$AX5043_LPOSCKFILT0NB$0$0 == 0x5313
_AX5043_LPOSCKFILT0NB	=	0x5313
G$AX5043_LPOSCKFILT1NB$0$0 == 0x5312
_AX5043_LPOSCKFILT1NB	=	0x5312
G$AX5043_LPOSCPER0NB$0$0 == 0x5319
_AX5043_LPOSCPER0NB	=	0x5319
G$AX5043_LPOSCPER1NB$0$0 == 0x5318
_AX5043_LPOSCPER1NB	=	0x5318
G$AX5043_LPOSCREF0NB$0$0 == 0x5315
_AX5043_LPOSCREF0NB	=	0x5315
G$AX5043_LPOSCREF1NB$0$0 == 0x5314
_AX5043_LPOSCREF1NB	=	0x5314
G$AX5043_LPOSCSTATUSNB$0$0 == 0x5311
_AX5043_LPOSCSTATUSNB	=	0x5311
G$AX5043_MATCH0LENNB$0$0 == 0x5214
_AX5043_MATCH0LENNB	=	0x5214
G$AX5043_MATCH0MAXNB$0$0 == 0x5216
_AX5043_MATCH0MAXNB	=	0x5216
G$AX5043_MATCH0MINNB$0$0 == 0x5215
_AX5043_MATCH0MINNB	=	0x5215
G$AX5043_MATCH0PAT0NB$0$0 == 0x5213
_AX5043_MATCH0PAT0NB	=	0x5213
G$AX5043_MATCH0PAT1NB$0$0 == 0x5212
_AX5043_MATCH0PAT1NB	=	0x5212
G$AX5043_MATCH0PAT2NB$0$0 == 0x5211
_AX5043_MATCH0PAT2NB	=	0x5211
G$AX5043_MATCH0PAT3NB$0$0 == 0x5210
_AX5043_MATCH0PAT3NB	=	0x5210
G$AX5043_MATCH1LENNB$0$0 == 0x521c
_AX5043_MATCH1LENNB	=	0x521c
G$AX5043_MATCH1MAXNB$0$0 == 0x521e
_AX5043_MATCH1MAXNB	=	0x521e
G$AX5043_MATCH1MINNB$0$0 == 0x521d
_AX5043_MATCH1MINNB	=	0x521d
G$AX5043_MATCH1PAT0NB$0$0 == 0x5219
_AX5043_MATCH1PAT0NB	=	0x5219
G$AX5043_MATCH1PAT1NB$0$0 == 0x5218
_AX5043_MATCH1PAT1NB	=	0x5218
G$AX5043_MAXDROFFSET0NB$0$0 == 0x5108
_AX5043_MAXDROFFSET0NB	=	0x5108
G$AX5043_MAXDROFFSET1NB$0$0 == 0x5107
_AX5043_MAXDROFFSET1NB	=	0x5107
G$AX5043_MAXDROFFSET2NB$0$0 == 0x5106
_AX5043_MAXDROFFSET2NB	=	0x5106
G$AX5043_MAXRFOFFSET0NB$0$0 == 0x510b
_AX5043_MAXRFOFFSET0NB	=	0x510b
G$AX5043_MAXRFOFFSET1NB$0$0 == 0x510a
_AX5043_MAXRFOFFSET1NB	=	0x510a
G$AX5043_MAXRFOFFSET2NB$0$0 == 0x5109
_AX5043_MAXRFOFFSET2NB	=	0x5109
G$AX5043_MODCFGANB$0$0 == 0x5164
_AX5043_MODCFGANB	=	0x5164
G$AX5043_MODCFGFNB$0$0 == 0x5160
_AX5043_MODCFGFNB	=	0x5160
G$AX5043_MODCFGPNB$0$0 == 0x5f5f
_AX5043_MODCFGPNB	=	0x5f5f
G$AX5043_MODULATIONNB$0$0 == 0x5010
_AX5043_MODULATIONNB	=	0x5010
G$AX5043_PINFUNCANTSELNB$0$0 == 0x5025
_AX5043_PINFUNCANTSELNB	=	0x5025
G$AX5043_PINFUNCDATANB$0$0 == 0x5023
_AX5043_PINFUNCDATANB	=	0x5023
G$AX5043_PINFUNCDCLKNB$0$0 == 0x5022
_AX5043_PINFUNCDCLKNB	=	0x5022
G$AX5043_PINFUNCIRQNB$0$0 == 0x5024
_AX5043_PINFUNCIRQNB	=	0x5024
G$AX5043_PINFUNCPWRAMPNB$0$0 == 0x5026
_AX5043_PINFUNCPWRAMPNB	=	0x5026
G$AX5043_PINFUNCSYSCLKNB$0$0 == 0x5021
_AX5043_PINFUNCSYSCLKNB	=	0x5021
G$AX5043_PINSTATENB$0$0 == 0x5020
_AX5043_PINSTATENB	=	0x5020
G$AX5043_PKTACCEPTFLAGSNB$0$0 == 0x5233
_AX5043_PKTACCEPTFLAGSNB	=	0x5233
G$AX5043_PKTCHUNKSIZENB$0$0 == 0x5230
_AX5043_PKTCHUNKSIZENB	=	0x5230
G$AX5043_PKTMISCFLAGSNB$0$0 == 0x5231
_AX5043_PKTMISCFLAGSNB	=	0x5231
G$AX5043_PKTSTOREFLAGSNB$0$0 == 0x5232
_AX5043_PKTSTOREFLAGSNB	=	0x5232
G$AX5043_PLLCPINB$0$0 == 0x5031
_AX5043_PLLCPINB	=	0x5031
G$AX5043_PLLCPIBOOSTNB$0$0 == 0x5039
_AX5043_PLLCPIBOOSTNB	=	0x5039
G$AX5043_PLLLOCKDETNB$0$0 == 0x5182
_AX5043_PLLLOCKDETNB	=	0x5182
G$AX5043_PLLLOOPNB$0$0 == 0x5030
_AX5043_PLLLOOPNB	=	0x5030
G$AX5043_PLLLOOPBOOSTNB$0$0 == 0x5038
_AX5043_PLLLOOPBOOSTNB	=	0x5038
G$AX5043_PLLRANGINGANB$0$0 == 0x5033
_AX5043_PLLRANGINGANB	=	0x5033
G$AX5043_PLLRANGINGBNB$0$0 == 0x503b
_AX5043_PLLRANGINGBNB	=	0x503b
G$AX5043_PLLRNGCLKNB$0$0 == 0x5183
_AX5043_PLLRNGCLKNB	=	0x5183
G$AX5043_PLLVCODIVNB$0$0 == 0x5032
_AX5043_PLLVCODIVNB	=	0x5032
G$AX5043_PLLVCOINB$0$0 == 0x5180
_AX5043_PLLVCOINB	=	0x5180
G$AX5043_PLLVCOIRNB$0$0 == 0x5181
_AX5043_PLLVCOIRNB	=	0x5181
G$AX5043_POWCTRL1NB$0$0 == 0x5f08
_AX5043_POWCTRL1NB	=	0x5f08
G$AX5043_POWIRQMASKNB$0$0 == 0x5005
_AX5043_POWIRQMASKNB	=	0x5005
G$AX5043_POWSTATNB$0$0 == 0x5003
_AX5043_POWSTATNB	=	0x5003
G$AX5043_POWSTICKYSTATNB$0$0 == 0x5004
_AX5043_POWSTICKYSTATNB	=	0x5004
G$AX5043_PWRAMPNB$0$0 == 0x5027
_AX5043_PWRAMPNB	=	0x5027
G$AX5043_PWRMODENB$0$0 == 0x5002
_AX5043_PWRMODENB	=	0x5002
G$AX5043_RADIOEVENTMASK0NB$0$0 == 0x5009
_AX5043_RADIOEVENTMASK0NB	=	0x5009
G$AX5043_RADIOEVENTMASK1NB$0$0 == 0x5008
_AX5043_RADIOEVENTMASK1NB	=	0x5008
G$AX5043_RADIOEVENTREQ0NB$0$0 == 0x500f
_AX5043_RADIOEVENTREQ0NB	=	0x500f
G$AX5043_RADIOEVENTREQ1NB$0$0 == 0x500e
_AX5043_RADIOEVENTREQ1NB	=	0x500e
G$AX5043_RADIOSTATENB$0$0 == 0x501c
_AX5043_RADIOSTATENB	=	0x501c
G$AX5043_REFNB$0$0 == 0x5f0d
_AX5043_REFNB	=	0x5f0d
G$AX5043_RSSINB$0$0 == 0x5040
_AX5043_RSSINB	=	0x5040
G$AX5043_RSSIABSTHRNB$0$0 == 0x522d
_AX5043_RSSIABSTHRNB	=	0x522d
G$AX5043_RSSIREFERENCENB$0$0 == 0x522c
_AX5043_RSSIREFERENCENB	=	0x522c
G$AX5043_RXDATARATE0NB$0$0 == 0x5105
_AX5043_RXDATARATE0NB	=	0x5105
G$AX5043_RXDATARATE1NB$0$0 == 0x5104
_AX5043_RXDATARATE1NB	=	0x5104
G$AX5043_RXDATARATE2NB$0$0 == 0x5103
_AX5043_RXDATARATE2NB	=	0x5103
G$AX5043_SCRATCHNB$0$0 == 0x5001
_AX5043_SCRATCHNB	=	0x5001
G$AX5043_SILICONREVISIONNB$0$0 == 0x5000
_AX5043_SILICONREVISIONNB	=	0x5000
G$AX5043_TIMER0NB$0$0 == 0x505b
_AX5043_TIMER0NB	=	0x505b
G$AX5043_TIMER1NB$0$0 == 0x505a
_AX5043_TIMER1NB	=	0x505a
G$AX5043_TIMER2NB$0$0 == 0x5059
_AX5043_TIMER2NB	=	0x5059
G$AX5043_TMGRXAGCNB$0$0 == 0x5227
_AX5043_TMGRXAGCNB	=	0x5227
G$AX5043_TMGRXBOOSTNB$0$0 == 0x5223
_AX5043_TMGRXBOOSTNB	=	0x5223
G$AX5043_TMGRXCOARSEAGCNB$0$0 == 0x5226
_AX5043_TMGRXCOARSEAGCNB	=	0x5226
G$AX5043_TMGRXOFFSACQNB$0$0 == 0x5225
_AX5043_TMGRXOFFSACQNB	=	0x5225
G$AX5043_TMGRXPREAMBLE1NB$0$0 == 0x5229
_AX5043_TMGRXPREAMBLE1NB	=	0x5229
G$AX5043_TMGRXPREAMBLE2NB$0$0 == 0x522a
_AX5043_TMGRXPREAMBLE2NB	=	0x522a
G$AX5043_TMGRXPREAMBLE3NB$0$0 == 0x522b
_AX5043_TMGRXPREAMBLE3NB	=	0x522b
G$AX5043_TMGRXRSSINB$0$0 == 0x5228
_AX5043_TMGRXRSSINB	=	0x5228
G$AX5043_TMGRXSETTLENB$0$0 == 0x5224
_AX5043_TMGRXSETTLENB	=	0x5224
G$AX5043_TMGTXBOOSTNB$0$0 == 0x5220
_AX5043_TMGTXBOOSTNB	=	0x5220
G$AX5043_TMGTXSETTLENB$0$0 == 0x5221
_AX5043_TMGTXSETTLENB	=	0x5221
G$AX5043_TRKAFSKDEMOD0NB$0$0 == 0x5055
_AX5043_TRKAFSKDEMOD0NB	=	0x5055
G$AX5043_TRKAFSKDEMOD1NB$0$0 == 0x5054
_AX5043_TRKAFSKDEMOD1NB	=	0x5054
G$AX5043_TRKAMPLITUDE0NB$0$0 == 0x5049
_AX5043_TRKAMPLITUDE0NB	=	0x5049
G$AX5043_TRKAMPLITUDE1NB$0$0 == 0x5048
_AX5043_TRKAMPLITUDE1NB	=	0x5048
G$AX5043_TRKDATARATE0NB$0$0 == 0x5047
_AX5043_TRKDATARATE0NB	=	0x5047
G$AX5043_TRKDATARATE1NB$0$0 == 0x5046
_AX5043_TRKDATARATE1NB	=	0x5046
G$AX5043_TRKDATARATE2NB$0$0 == 0x5045
_AX5043_TRKDATARATE2NB	=	0x5045
G$AX5043_TRKFREQ0NB$0$0 == 0x5051
_AX5043_TRKFREQ0NB	=	0x5051
G$AX5043_TRKFREQ1NB$0$0 == 0x5050
_AX5043_TRKFREQ1NB	=	0x5050
G$AX5043_TRKFSKDEMOD0NB$0$0 == 0x5053
_AX5043_TRKFSKDEMOD0NB	=	0x5053
G$AX5043_TRKFSKDEMOD1NB$0$0 == 0x5052
_AX5043_TRKFSKDEMOD1NB	=	0x5052
G$AX5043_TRKPHASE0NB$0$0 == 0x504b
_AX5043_TRKPHASE0NB	=	0x504b
G$AX5043_TRKPHASE1NB$0$0 == 0x504a
_AX5043_TRKPHASE1NB	=	0x504a
G$AX5043_TRKRFFREQ0NB$0$0 == 0x504f
_AX5043_TRKRFFREQ0NB	=	0x504f
G$AX5043_TRKRFFREQ1NB$0$0 == 0x504e
_AX5043_TRKRFFREQ1NB	=	0x504e
G$AX5043_TRKRFFREQ2NB$0$0 == 0x504d
_AX5043_TRKRFFREQ2NB	=	0x504d
G$AX5043_TXPWRCOEFFA0NB$0$0 == 0x5169
_AX5043_TXPWRCOEFFA0NB	=	0x5169
G$AX5043_TXPWRCOEFFA1NB$0$0 == 0x5168
_AX5043_TXPWRCOEFFA1NB	=	0x5168
G$AX5043_TXPWRCOEFFB0NB$0$0 == 0x516b
_AX5043_TXPWRCOEFFB0NB	=	0x516b
G$AX5043_TXPWRCOEFFB1NB$0$0 == 0x516a
_AX5043_TXPWRCOEFFB1NB	=	0x516a
G$AX5043_TXPWRCOEFFC0NB$0$0 == 0x516d
_AX5043_TXPWRCOEFFC0NB	=	0x516d
G$AX5043_TXPWRCOEFFC1NB$0$0 == 0x516c
_AX5043_TXPWRCOEFFC1NB	=	0x516c
G$AX5043_TXPWRCOEFFD0NB$0$0 == 0x516f
_AX5043_TXPWRCOEFFD0NB	=	0x516f
G$AX5043_TXPWRCOEFFD1NB$0$0 == 0x516e
_AX5043_TXPWRCOEFFD1NB	=	0x516e
G$AX5043_TXPWRCOEFFE0NB$0$0 == 0x5171
_AX5043_TXPWRCOEFFE0NB	=	0x5171
G$AX5043_TXPWRCOEFFE1NB$0$0 == 0x5170
_AX5043_TXPWRCOEFFE1NB	=	0x5170
G$AX5043_TXRATE0NB$0$0 == 0x5167
_AX5043_TXRATE0NB	=	0x5167
G$AX5043_TXRATE1NB$0$0 == 0x5166
_AX5043_TXRATE1NB	=	0x5166
G$AX5043_TXRATE2NB$0$0 == 0x5165
_AX5043_TXRATE2NB	=	0x5165
G$AX5043_WAKEUP0NB$0$0 == 0x506b
_AX5043_WAKEUP0NB	=	0x506b
G$AX5043_WAKEUP1NB$0$0 == 0x506a
_AX5043_WAKEUP1NB	=	0x506a
G$AX5043_WAKEUPFREQ0NB$0$0 == 0x506d
_AX5043_WAKEUPFREQ0NB	=	0x506d
G$AX5043_WAKEUPFREQ1NB$0$0 == 0x506c
_AX5043_WAKEUPFREQ1NB	=	0x506c
G$AX5043_WAKEUPTIMER0NB$0$0 == 0x5069
_AX5043_WAKEUPTIMER0NB	=	0x5069
G$AX5043_WAKEUPTIMER1NB$0$0 == 0x5068
_AX5043_WAKEUPTIMER1NB	=	0x5068
G$AX5043_WAKEUPXOEARLYNB$0$0 == 0x506e
_AX5043_WAKEUPXOEARLYNB	=	0x506e
G$AX5043_XTALAMPLNB$0$0 == 0x5f11
_AX5043_XTALAMPLNB	=	0x5f11
G$AX5043_XTALCAPNB$0$0 == 0x5184
_AX5043_XTALCAPNB	=	0x5184
G$AX5043_XTALOSCNB$0$0 == 0x5f10
_AX5043_XTALOSCNB	=	0x5f10
G$AX5043_XTALSTATUSNB$0$0 == 0x501d
_AX5043_XTALSTATUSNB	=	0x501d
G$AX5043_0xF00NB$0$0 == 0x5f00
_AX5043_0xF00NB	=	0x5f00
G$AX5043_0xF0CNB$0$0 == 0x5f0c
_AX5043_0xF0CNB	=	0x5f0c
G$AX5043_0xF18NB$0$0 == 0x5f18
_AX5043_0xF18NB	=	0x5f18
G$AX5043_0xF1CNB$0$0 == 0x5f1c
_AX5043_0xF1CNB	=	0x5f1c
G$AX5043_0xF21NB$0$0 == 0x5f21
_AX5043_0xF21NB	=	0x5f21
G$AX5043_0xF22NB$0$0 == 0x5f22
_AX5043_0xF22NB	=	0x5f22
G$AX5043_0xF23NB$0$0 == 0x5f23
_AX5043_0xF23NB	=	0x5f23
G$AX5043_0xF26NB$0$0 == 0x5f26
_AX5043_0xF26NB	=	0x5f26
G$AX5043_0xF30NB$0$0 == 0x5f30
_AX5043_0xF30NB	=	0x5f30
G$AX5043_0xF31NB$0$0 == 0x5f31
_AX5043_0xF31NB	=	0x5f31
G$AX5043_0xF32NB$0$0 == 0x5f32
_AX5043_0xF32NB	=	0x5f32
G$AX5043_0xF33NB$0$0 == 0x5f33
_AX5043_0xF33NB	=	0x5f33
G$AX5043_0xF34NB$0$0 == 0x5f34
_AX5043_0xF34NB	=	0x5f34
G$AX5043_0xF35NB$0$0 == 0x5f35
_AX5043_0xF35NB	=	0x5f35
G$AX5043_0xF44NB$0$0 == 0x5f44
_AX5043_0xF44NB	=	0x5f44
G$AX5043_AGCAHYST0NB$0$0 == 0x5122
_AX5043_AGCAHYST0NB	=	0x5122
G$AX5043_AGCAHYST1NB$0$0 == 0x5132
_AX5043_AGCAHYST1NB	=	0x5132
G$AX5043_AGCAHYST2NB$0$0 == 0x5142
_AX5043_AGCAHYST2NB	=	0x5142
G$AX5043_AGCAHYST3NB$0$0 == 0x5152
_AX5043_AGCAHYST3NB	=	0x5152
G$AX5043_AGCGAIN0NB$0$0 == 0x5120
_AX5043_AGCGAIN0NB	=	0x5120
G$AX5043_AGCGAIN1NB$0$0 == 0x5130
_AX5043_AGCGAIN1NB	=	0x5130
G$AX5043_AGCGAIN2NB$0$0 == 0x5140
_AX5043_AGCGAIN2NB	=	0x5140
G$AX5043_AGCGAIN3NB$0$0 == 0x5150
_AX5043_AGCGAIN3NB	=	0x5150
G$AX5043_AGCMINMAX0NB$0$0 == 0x5123
_AX5043_AGCMINMAX0NB	=	0x5123
G$AX5043_AGCMINMAX1NB$0$0 == 0x5133
_AX5043_AGCMINMAX1NB	=	0x5133
G$AX5043_AGCMINMAX2NB$0$0 == 0x5143
_AX5043_AGCMINMAX2NB	=	0x5143
G$AX5043_AGCMINMAX3NB$0$0 == 0x5153
_AX5043_AGCMINMAX3NB	=	0x5153
G$AX5043_AGCTARGET0NB$0$0 == 0x5121
_AX5043_AGCTARGET0NB	=	0x5121
G$AX5043_AGCTARGET1NB$0$0 == 0x5131
_AX5043_AGCTARGET1NB	=	0x5131
G$AX5043_AGCTARGET2NB$0$0 == 0x5141
_AX5043_AGCTARGET2NB	=	0x5141
G$AX5043_AGCTARGET3NB$0$0 == 0x5151
_AX5043_AGCTARGET3NB	=	0x5151
G$AX5043_AMPLITUDEGAIN0NB$0$0 == 0x512b
_AX5043_AMPLITUDEGAIN0NB	=	0x512b
G$AX5043_AMPLITUDEGAIN1NB$0$0 == 0x513b
_AX5043_AMPLITUDEGAIN1NB	=	0x513b
G$AX5043_AMPLITUDEGAIN2NB$0$0 == 0x514b
_AX5043_AMPLITUDEGAIN2NB	=	0x514b
G$AX5043_AMPLITUDEGAIN3NB$0$0 == 0x515b
_AX5043_AMPLITUDEGAIN3NB	=	0x515b
G$AX5043_BBOFFSRES0NB$0$0 == 0x512f
_AX5043_BBOFFSRES0NB	=	0x512f
G$AX5043_BBOFFSRES1NB$0$0 == 0x513f
_AX5043_BBOFFSRES1NB	=	0x513f
G$AX5043_BBOFFSRES2NB$0$0 == 0x514f
_AX5043_BBOFFSRES2NB	=	0x514f
G$AX5043_BBOFFSRES3NB$0$0 == 0x515f
_AX5043_BBOFFSRES3NB	=	0x515f
G$AX5043_DRGAIN0NB$0$0 == 0x5125
_AX5043_DRGAIN0NB	=	0x5125
G$AX5043_DRGAIN1NB$0$0 == 0x5135
_AX5043_DRGAIN1NB	=	0x5135
G$AX5043_DRGAIN2NB$0$0 == 0x5145
_AX5043_DRGAIN2NB	=	0x5145
G$AX5043_DRGAIN3NB$0$0 == 0x5155
_AX5043_DRGAIN3NB	=	0x5155
G$AX5043_FOURFSK0NB$0$0 == 0x512e
_AX5043_FOURFSK0NB	=	0x512e
G$AX5043_FOURFSK1NB$0$0 == 0x513e
_AX5043_FOURFSK1NB	=	0x513e
G$AX5043_FOURFSK2NB$0$0 == 0x514e
_AX5043_FOURFSK2NB	=	0x514e
G$AX5043_FOURFSK3NB$0$0 == 0x515e
_AX5043_FOURFSK3NB	=	0x515e
G$AX5043_FREQDEV00NB$0$0 == 0x512d
_AX5043_FREQDEV00NB	=	0x512d
G$AX5043_FREQDEV01NB$0$0 == 0x513d
_AX5043_FREQDEV01NB	=	0x513d
G$AX5043_FREQDEV02NB$0$0 == 0x514d
_AX5043_FREQDEV02NB	=	0x514d
G$AX5043_FREQDEV03NB$0$0 == 0x515d
_AX5043_FREQDEV03NB	=	0x515d
G$AX5043_FREQDEV10NB$0$0 == 0x512c
_AX5043_FREQDEV10NB	=	0x512c
G$AX5043_FREQDEV11NB$0$0 == 0x513c
_AX5043_FREQDEV11NB	=	0x513c
G$AX5043_FREQDEV12NB$0$0 == 0x514c
_AX5043_FREQDEV12NB	=	0x514c
G$AX5043_FREQDEV13NB$0$0 == 0x515c
_AX5043_FREQDEV13NB	=	0x515c
G$AX5043_FREQUENCYGAINA0NB$0$0 == 0x5127
_AX5043_FREQUENCYGAINA0NB	=	0x5127
G$AX5043_FREQUENCYGAINA1NB$0$0 == 0x5137
_AX5043_FREQUENCYGAINA1NB	=	0x5137
G$AX5043_FREQUENCYGAINA2NB$0$0 == 0x5147
_AX5043_FREQUENCYGAINA2NB	=	0x5147
G$AX5043_FREQUENCYGAINA3NB$0$0 == 0x5157
_AX5043_FREQUENCYGAINA3NB	=	0x5157
G$AX5043_FREQUENCYGAINB0NB$0$0 == 0x5128
_AX5043_FREQUENCYGAINB0NB	=	0x5128
G$AX5043_FREQUENCYGAINB1NB$0$0 == 0x5138
_AX5043_FREQUENCYGAINB1NB	=	0x5138
G$AX5043_FREQUENCYGAINB2NB$0$0 == 0x5148
_AX5043_FREQUENCYGAINB2NB	=	0x5148
G$AX5043_FREQUENCYGAINB3NB$0$0 == 0x5158
_AX5043_FREQUENCYGAINB3NB	=	0x5158
G$AX5043_FREQUENCYGAINC0NB$0$0 == 0x5129
_AX5043_FREQUENCYGAINC0NB	=	0x5129
G$AX5043_FREQUENCYGAINC1NB$0$0 == 0x5139
_AX5043_FREQUENCYGAINC1NB	=	0x5139
G$AX5043_FREQUENCYGAINC2NB$0$0 == 0x5149
_AX5043_FREQUENCYGAINC2NB	=	0x5149
G$AX5043_FREQUENCYGAINC3NB$0$0 == 0x5159
_AX5043_FREQUENCYGAINC3NB	=	0x5159
G$AX5043_FREQUENCYGAIND0NB$0$0 == 0x512a
_AX5043_FREQUENCYGAIND0NB	=	0x512a
G$AX5043_FREQUENCYGAIND1NB$0$0 == 0x513a
_AX5043_FREQUENCYGAIND1NB	=	0x513a
G$AX5043_FREQUENCYGAIND2NB$0$0 == 0x514a
_AX5043_FREQUENCYGAIND2NB	=	0x514a
G$AX5043_FREQUENCYGAIND3NB$0$0 == 0x515a
_AX5043_FREQUENCYGAIND3NB	=	0x515a
G$AX5043_FREQUENCYLEAKNB$0$0 == 0x5116
_AX5043_FREQUENCYLEAKNB	=	0x5116
G$AX5043_PHASEGAIN0NB$0$0 == 0x5126
_AX5043_PHASEGAIN0NB	=	0x5126
G$AX5043_PHASEGAIN1NB$0$0 == 0x5136
_AX5043_PHASEGAIN1NB	=	0x5136
G$AX5043_PHASEGAIN2NB$0$0 == 0x5146
_AX5043_PHASEGAIN2NB	=	0x5146
G$AX5043_PHASEGAIN3NB$0$0 == 0x5156
_AX5043_PHASEGAIN3NB	=	0x5156
G$AX5043_PKTADDR0NB$0$0 == 0x5207
_AX5043_PKTADDR0NB	=	0x5207
G$AX5043_PKTADDR1NB$0$0 == 0x5206
_AX5043_PKTADDR1NB	=	0x5206
G$AX5043_PKTADDR2NB$0$0 == 0x5205
_AX5043_PKTADDR2NB	=	0x5205
G$AX5043_PKTADDR3NB$0$0 == 0x5204
_AX5043_PKTADDR3NB	=	0x5204
G$AX5043_PKTADDRCFGNB$0$0 == 0x5200
_AX5043_PKTADDRCFGNB	=	0x5200
G$AX5043_PKTADDRMASK0NB$0$0 == 0x520b
_AX5043_PKTADDRMASK0NB	=	0x520b
G$AX5043_PKTADDRMASK1NB$0$0 == 0x520a
_AX5043_PKTADDRMASK1NB	=	0x520a
G$AX5043_PKTADDRMASK2NB$0$0 == 0x5209
_AX5043_PKTADDRMASK2NB	=	0x5209
G$AX5043_PKTADDRMASK3NB$0$0 == 0x5208
_AX5043_PKTADDRMASK3NB	=	0x5208
G$AX5043_PKTLENCFGNB$0$0 == 0x5201
_AX5043_PKTLENCFGNB	=	0x5201
G$AX5043_PKTLENOFFSETNB$0$0 == 0x5202
_AX5043_PKTLENOFFSETNB	=	0x5202
G$AX5043_PKTMAXLENNB$0$0 == 0x5203
_AX5043_PKTMAXLENNB	=	0x5203
G$AX5043_RXPARAMCURSETNB$0$0 == 0x5118
_AX5043_RXPARAMCURSETNB	=	0x5118
G$AX5043_RXPARAMSETSNB$0$0 == 0x5117
_AX5043_RXPARAMSETSNB	=	0x5117
G$AX5043_TIMEGAIN0NB$0$0 == 0x5124
_AX5043_TIMEGAIN0NB	=	0x5124
G$AX5043_TIMEGAIN1NB$0$0 == 0x5134
_AX5043_TIMEGAIN1NB	=	0x5134
G$AX5043_TIMEGAIN2NB$0$0 == 0x5144
_AX5043_TIMEGAIN2NB	=	0x5144
G$AX5043_TIMEGAIN3NB$0$0 == 0x5154
_AX5043_TIMEGAIN3NB	=	0x5154
G$AX5043_0xF00$0$0 == 0x4f00
_AX5043_0xF00	=	0x4f00
G$AX5043_0xF0C$0$0 == 0x4f0c
_AX5043_0xF0C	=	0x4f0c
G$AX5043_0xF10$0$0 == 0x4f10
_AX5043_0xF10	=	0x4f10
G$AX5043_0xF11$0$0 == 0x4f11
_AX5043_0xF11	=	0x4f11
G$AX5043_0xF18$0$0 == 0x4f18
_AX5043_0xF18	=	0x4f18
G$AX5043_0xF1C$0$0 == 0x4f1c
_AX5043_0xF1C	=	0x4f1c
G$AX5043_0xF21$0$0 == 0x4f21
_AX5043_0xF21	=	0x4f21
G$AX5043_0xF22$0$0 == 0x4f22
_AX5043_0xF22	=	0x4f22
G$AX5043_0xF23$0$0 == 0x4f23
_AX5043_0xF23	=	0x4f23
G$AX5043_0xF26$0$0 == 0x4f26
_AX5043_0xF26	=	0x4f26
G$AX5043_0xF30$0$0 == 0x4f30
_AX5043_0xF30	=	0x4f30
G$AX5043_0xF31$0$0 == 0x4f31
_AX5043_0xF31	=	0x4f31
G$AX5043_0xF32$0$0 == 0x4f32
_AX5043_0xF32	=	0x4f32
G$AX5043_0xF33$0$0 == 0x4f33
_AX5043_0xF33	=	0x4f33
G$AX5043_0xF34$0$0 == 0x4f34
_AX5043_0xF34	=	0x4f34
G$AX5043_0xF35$0$0 == 0x4f35
_AX5043_0xF35	=	0x4f35
G$AX5043_0xF44$0$0 == 0x4f44
_AX5043_0xF44	=	0x4f44
G$AX5043_REF$0$0 == 0x4f0d
_AX5043_REF	=	0x4f0d
G$AX5043_POWCTRL1$0$0 == 0x4f08
_AX5043_POWCTRL1	=	0x4f08
G$AX5043_MODCFGP$0$0 == 0x4f5f
_AX5043_MODCFGP	=	0x4f5f
G$AX5043_XTALOSC$0$0 == 0x4f10
_AX5043_XTALOSC	=	0x4f10
G$AX5043_XTALAMPL$0$0 == 0x4f11
_AX5043_XTALAMPL	=	0x4f11
G$axradio_syncstate$0$0==.
_axradio_syncstate::
	.ds 1
G$axradio_txbuffer_len$0$0==.
_axradio_txbuffer_len::
	.ds 2
G$axradio_txbuffer_cnt$0$0==.
_axradio_txbuffer_cnt::
	.ds 2
G$axradio_curchannel$0$0==.
_axradio_curchannel::
	.ds 1
G$axradio_curfreqoffset$0$0==.
_axradio_curfreqoffset::
	.ds 4
G$axradio_ack_count$0$0==.
_axradio_ack_count::
	.ds 1
G$axradio_ack_seqnr$0$0==.
_axradio_ack_seqnr::
	.ds 1
G$axradio_sync_time$0$0==.
_axradio_sync_time::
	.ds 4
G$axradio_sync_periodcorr$0$0==.
_axradio_sync_periodcorr::
	.ds 2
G$axradio_timeanchor$0$0==.
_axradio_timeanchor::
	.ds 8
G$axradio_localaddr$0$0==.
_axradio_localaddr::
	.ds 8
G$axradio_default_remoteaddr$0$0==.
_axradio_default_remoteaddr::
	.ds 4
G$axradio_txbuffer$0$0==.
_axradio_txbuffer::
	.ds 260
G$axradio_rxbuffer$0$0==.
_axradio_rxbuffer::
	.ds 260
G$axradio_cb_receive$0$0==.
_axradio_cb_receive::
	.ds 34
G$axradio_cb_receivesfd$0$0==.
_axradio_cb_receivesfd::
	.ds 10
G$axradio_cb_channelstate$0$0==.
_axradio_cb_channelstate::
	.ds 13
G$axradio_cb_transmitstart$0$0==.
_axradio_cb_transmitstart::
	.ds 10
G$axradio_cb_transmitend$0$0==.
_axradio_cb_transmitend::
	.ds 10
G$axradio_cb_transmitdata$0$0==.
_axradio_cb_transmitdata::
	.ds 10
G$axradio_timer$0$0==.
_axradio_timer::
	.ds 8
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
G$f30_saved$0$0==.
_f30_saved::
	.ds 1
G$f31_saved$0$0==.
_f31_saved::
	.ds 1
G$f32_saved$0$0==.
_f32_saved::
	.ds 1
G$f33_saved$0$0==.
_f33_saved::
	.ds 1
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	C$easyax5043.c$59$1$468 ==.
;	..\COMMON\easyax5043.c:59: volatile uint8_t __data axradio_mode = AXRADIO_MODE_UNINIT;
	mov	_axradio_mode,#0x00
	C$easyax5043.c$60$1$468 ==.
;	..\COMMON\easyax5043.c:60: volatile axradio_trxstate_t __data axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'update_timeanchor'
;------------------------------------------------------------
;iesave                    Allocated to registers r7 
;------------------------------------------------------------
	Feasyax5043$update_timeanchor$0$0 ==.
	C$easyax5043.c$238$0$0 ==.
;	..\COMMON\easyax5043.c:238: static __reentrantb void update_timeanchor(void) __reentrant
;	-----------------------------------------
;	 function update_timeanchor
;	-----------------------------------------
_update_timeanchor:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	C$easyax5043.c$240$1$231 ==.
;	..\COMMON\easyax5043.c:240: uint8_t iesave = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r7,a
	C$easyax5043.c$241$1$231 ==.
;	..\COMMON\easyax5043.c:241: EA = 0;
	clr	_EA
	C$easyax5043.c$242$1$231 ==.
;	..\COMMON\easyax5043.c:242: axradio_timeanchor.timer0 = wtimer0_curtime();
	push	ar7
	lcall	_wtimer0_curtime
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	pop	ar7
	mov	dptr,#_axradio_timeanchor
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$243$1$231 ==.
;	..\COMMON\easyax5043.c:243: axradio_timeanchor.radiotimer = radio_read24((uint16_t)&AX5043_TIMER2);
	mov	dptr,#_AX5043_TIMER2
	lcall	_radio_read24
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$244$1$231 ==.
;	..\COMMON\easyax5043.c:244: IE |= iesave;
	mov	a,r7
	orl	_IE,a
	C$easyax5043.c$245$1$231 ==.
	XFeasyax5043$update_timeanchor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_conv_time_totimer0'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	G$axradio_conv_time_totimer0$0$0 ==.
	C$easyax5043.c$247$1$231 ==.
;	..\COMMON\easyax5043.c:247: __reentrantb uint32_t axradio_conv_time_totimer0(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_conv_time_totimer0
;	-----------------------------------------
_axradio_conv_time_totimer0:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$249$1$233 ==.
;	..\COMMON\easyax5043.c:249: dt -= axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	C$easyax5043.c$250$1$233 ==.
;	..\COMMON\easyax5043.c:250: dt = axradio_conv_timeinterval_totimer0(signextend24(dt));
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_signextend24
	lcall	_axradio_conv_timeinterval_totimer0
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$251$1$233 ==.
;	..\COMMON\easyax5043.c:251: dt += axradio_timeanchor.timer0;
	mov	dptr,#_axradio_timeanchor
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	C$easyax5043.c$252$1$233 ==.
;	..\COMMON\easyax5043.c:252: return dt;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	C$easyax5043.c$253$1$233 ==.
	XG$axradio_conv_time_totimer0$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers_common'
;------------------------------------------------------------
;rng                       Allocated to registers r7 
;------------------------------------------------------------
	Feasyax5043$ax5043_init_registers_common$0$0 ==.
	C$easyax5043.c$255$1$233 ==.
;	..\COMMON\easyax5043.c:255: static __reentrantb uint8_t ax5043_init_registers_common(void) __reentrant
;	-----------------------------------------
;	 function ax5043_init_registers_common
;	-----------------------------------------
_ax5043_init_registers_common:
	C$easyax5043.c$257$1$235 ==.
;	..\COMMON\easyax5043.c:257: uint8_t rng = axradio_phy_chanpllrng[axradio_curchannel];
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	C$easyax5043.c$258$1$235 ==.
;	..\COMMON\easyax5043.c:258: if (rng & 0x20)
	mov	r7,a
	jnb	acc.5,00102$
	C$easyax5043.c$259$1$235 ==.
;	..\COMMON\easyax5043.c:259: return AXRADIO_ERR_RANGING;
	mov	dpl,#0x06
	sjmp	00108$
00102$:
	C$easyax5043.c$260$1$235 ==.
;	..\COMMON\easyax5043.c:260: if (AX5043_PLLLOOP & 0x80) {
	mov	dptr,#_AX5043_PLLLOOP
	movx	a,@dptr
	mov	r6,a
	jnb	acc.7,00104$
	C$easyax5043.c$261$2$236 ==.
;	..\COMMON\easyax5043.c:261: AX5043_PLLRANGINGB = rng & 0x0F;
	mov	dptr,#_AX5043_PLLRANGINGB
	mov	a,#0x0f
	anl	a,r7
	movx	@dptr,a
	sjmp	00105$
00104$:
	C$easyax5043.c$263$2$237 ==.
;	..\COMMON\easyax5043.c:263: AX5043_PLLRANGINGA = rng & 0x0F;
	mov	dptr,#_AX5043_PLLRANGINGA
	mov	a,#0x0f
	anl	a,r7
	movx	@dptr,a
00105$:
	C$easyax5043.c$265$1$235 ==.
;	..\COMMON\easyax5043.c:265: rng = axradio_get_pllvcoi();
	lcall	_axradio_get_pllvcoi
	mov	r6,dpl
	mov	ar7,r6
	C$easyax5043.c$266$1$235 ==.
;	..\COMMON\easyax5043.c:266: if (rng & 0x80)
	mov	a,r7
	jnb	acc.7,00107$
	C$easyax5043.c$267$1$235 ==.
;	..\COMMON\easyax5043.c:267: AX5043_PLLVCOI = rng;
	mov	dptr,#_AX5043_PLLVCOI
	mov	a,r7
	movx	@dptr,a
00107$:
	C$easyax5043.c$268$1$235 ==.
;	..\COMMON\easyax5043.c:268: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00108$:
	C$easyax5043.c$269$1$235 ==.
	XFeasyax5043$ax5043_init_registers_common$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers_tx'
;------------------------------------------------------------
	G$ax5043_init_registers_tx$0$0 ==.
	C$easyax5043.c$271$1$235 ==.
;	..\COMMON\easyax5043.c:271: __reentrantb uint8_t ax5043_init_registers_tx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_init_registers_tx
;	-----------------------------------------
_ax5043_init_registers_tx:
	C$easyax5043.c$273$1$239 ==.
;	..\COMMON\easyax5043.c:273: ax5043_set_registers_tx();
	lcall	_ax5043_set_registers_tx
	C$easyax5043.c$274$1$239 ==.
;	..\COMMON\easyax5043.c:274: return ax5043_init_registers_common();
	lcall	_ax5043_init_registers_common
	C$easyax5043.c$275$1$239 ==.
	XG$ax5043_init_registers_tx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers_rx'
;------------------------------------------------------------
	G$ax5043_init_registers_rx$0$0 ==.
	C$easyax5043.c$277$1$239 ==.
;	..\COMMON\easyax5043.c:277: __reentrantb uint8_t ax5043_init_registers_rx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_init_registers_rx
;	-----------------------------------------
_ax5043_init_registers_rx:
	C$easyax5043.c$279$1$241 ==.
;	..\COMMON\easyax5043.c:279: ax5043_set_registers_rx();
	lcall	_ax5043_set_registers_rx
	C$easyax5043.c$280$1$241 ==.
;	..\COMMON\easyax5043.c:280: return ax5043_init_registers_common();
	lcall	_ax5043_init_registers_common
	C$easyax5043.c$281$1$241 ==.
	XG$ax5043_init_registers_rx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'receive_isr'
;------------------------------------------------------------
;fifo_cmd                  Allocated to registers r6 
;flags                     Allocated to registers 
;i                         Allocated to registers r6 
;len                       Allocated to registers r7 
;r                         Allocated to registers r6 
;r                         Allocated to registers r6 
;r                         Allocated to registers r6 
;------------------------------------------------------------
	Feasyax5043$receive_isr$0$0 ==.
	C$easyax5043.c$283$1$241 ==.
;	..\COMMON\easyax5043.c:283: static __reentrantb void receive_isr(void) __reentrant
;	-----------------------------------------
;	 function receive_isr
;	-----------------------------------------
_receive_isr:
	C$easyax5043.c$287$1$241 ==.
;	..\COMMON\easyax5043.c:287: uint8_t len = AX5043_RADIOEVENTREQ0; // clear request so interrupt does not fire again. sync_rx enables interrupt on radio state changed in order to wake up on SDF detected
	mov	dptr,#_AX5043_RADIOEVENTREQ0
	movx	a,@dptr
	C$easyax5043.c$289$1$243 ==.
;	..\COMMON\easyax5043.c:289: if ((len & 0x04) && AX5043_RADIOSTATE == 0x0F) {
	mov	r7,a
	jnb	acc.2,00169$
	mov	dptr,#_AX5043_RADIOSTATE
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x0f,00169$
	C$easyax5043.c$291$2$244 ==.
;	..\COMMON\easyax5043.c:291: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$292$2$244 ==.
;	..\COMMON\easyax5043.c:292: if(axradio_framing_enable_sfdcallback)
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	jz	00169$
	C$easyax5043.c$294$3$245 ==.
;	..\COMMON\easyax5043.c:294: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
	mov	dptr,#_axradio_cb_receivesfd
	lcall	_wtimer_remove_callback
	C$easyax5043.c$295$3$245 ==.
;	..\COMMON\easyax5043.c:295: axradio_cb_receivesfd.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_receivesfd + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$296$3$245 ==.
;	..\COMMON\easyax5043.c:296: axradio_cb_receivesfd.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_receivesfd + 0x0006)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$297$3$245 ==.
;	..\COMMON\easyax5043.c:297: wtimer_add_callback(&axradio_cb_receivesfd.cb);
	mov	dptr,#_axradio_cb_receivesfd
	lcall	_wtimer_add_callback
	C$easyax5043.c$309$1$243 ==.
;	..\COMMON\easyax5043.c:309: while (AX5043_IRQREQUEST0 & 0x01) {    // while fifo not empty
00169$:
00153$:
	mov	dptr,#_AX5043_IRQREQUEST0
	movx	a,@dptr
	mov	r6,a
	jb	acc.0,00250$
	ljmp	00156$
00250$:
	C$easyax5043.c$310$2$246 ==.
;	..\COMMON\easyax5043.c:310: fifo_cmd = AX5043_FIFODATA; // read command
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$311$2$246 ==.
;	..\COMMON\easyax5043.c:311: len = (fifo_cmd & 0xE0) >> 5; // top 3 bits encode payload len
	mov	a,#0xe0
	anl	a,r6
	mov	r5,a
	swap	a
	rr	a
	anl	a,#0x07
	mov	r7,a
	C$easyax5043.c$312$2$246 ==.
;	..\COMMON\easyax5043.c:312: if (len == 7)
	cjne	r7,#0x07,00107$
	C$easyax5043.c$313$2$246 ==.
;	..\COMMON\easyax5043.c:313: len = AX5043_FIFODATA; // 7 means variable length, -> get length byte
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	r5,a
	mov	r7,a
00107$:
	C$easyax5043.c$314$2$246 ==.
;	..\COMMON\easyax5043.c:314: fifo_cmd &= 0x1F;
	anl	ar6,#0x1f
	C$easyax5043.c$315$2$246 ==.
;	..\COMMON\easyax5043.c:315: switch (fifo_cmd) {
	cjne	r6,#0x01,00253$
	sjmp	00108$
00253$:
	cjne	r6,#0x10,00254$
	ljmp	00139$
00254$:
	cjne	r6,#0x11,00255$
	ljmp	00136$
00255$:
	cjne	r6,#0x12,00256$
	ljmp	00132$
00256$:
	cjne	r6,#0x13,00257$
	ljmp	00128$
00257$:
	cjne	r6,#0x15,00258$
	ljmp	00142$
00258$:
	ljmp	00146$
	C$easyax5043.c$316$3$247 ==.
;	..\COMMON\easyax5043.c:316: case AX5043_FIFOCMD_DATA:
00108$:
	C$easyax5043.c$317$3$247 ==.
;	..\COMMON\easyax5043.c:317: if (!len)
	mov	a,r7
	jz	00153$
	C$easyax5043.c$320$3$247 ==.
;	..\COMMON\easyax5043.c:320: flags = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	C$easyax5043.c$321$3$247 ==.
;	..\COMMON\easyax5043.c:321: --len;
	dec	r7
	C$easyax5043.c$322$3$247 ==.
;	..\COMMON\easyax5043.c:322: ax5043_readfifo(axradio_rxbuffer, len);
	push	ar7
	push	ar7
	mov	dptr,#_axradio_rxbuffer
	mov	b,#0x00
	lcall	_ax5043_readfifo
	dec	sp
	pop	ar7
	C$easyax5043.c$323$3$247 ==.
;	..\COMMON\easyax5043.c:323: if(axradio_mode == AXRADIO_MODE_WOR_RECEIVE || axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
	mov	a,#0x21
	cjne	a,_axradio_mode,00260$
	sjmp	00111$
00260$:
	mov	a,#0x23
	cjne	a,_axradio_mode,00112$
00111$:
	C$easyax5043.c$325$4$248 ==.
;	..\COMMON\easyax5043.c:325: f30_saved = AX5043_0xF30;
	mov	dptr,#_AX5043_0xF30
	movx	a,@dptr
	mov	dptr,#_f30_saved
	movx	@dptr,a
	C$easyax5043.c$326$4$248 ==.
;	..\COMMON\easyax5043.c:326: f31_saved = AX5043_0xF31;
	mov	dptr,#_AX5043_0xF31
	movx	a,@dptr
	mov	dptr,#_f31_saved
	movx	@dptr,a
	C$easyax5043.c$327$4$248 ==.
;	..\COMMON\easyax5043.c:327: f32_saved = AX5043_0xF32;
	mov	dptr,#_AX5043_0xF32
	movx	a,@dptr
	mov	dptr,#_f32_saved
	movx	@dptr,a
	C$easyax5043.c$328$4$248 ==.
;	..\COMMON\easyax5043.c:328: f33_saved = AX5043_0xF33;
	mov	dptr,#_AX5043_0xF33
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_f33_saved
	movx	@dptr,a
00112$:
	C$easyax5043.c$330$3$247 ==.
;	..\COMMON\easyax5043.c:330: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE ||
	mov	a,#0x21
	cjne	a,_axradio_mode,00263$
	sjmp	00114$
00263$:
	C$easyax5043.c$331$3$247 ==.
;	..\COMMON\easyax5043.c:331: axradio_mode == AXRADIO_MODE_SYNC_SLAVE)
	mov	a,#0x32
	cjne	a,_axradio_mode,00115$
00114$:
	C$easyax5043.c$332$3$247 ==.
;	..\COMMON\easyax5043.c:332: AX5043_PWRMODE = AX5043_PWRSTATE_POWERDOWN;
	mov	dptr,#_AX5043_PWRMODE
	clr	a
	movx	@dptr,a
00115$:
	C$easyax5043.c$333$3$247 ==.
;	..\COMMON\easyax5043.c:333: AX5043_IRQMASK0 &= (uint8_t)~0x01; // disable FIFO not empty irq
	mov	dptr,#_AX5043_IRQMASK0
	movx	a,@dptr
	mov	r6,a
	mov	a,#0xfe
	anl	a,r6
	movx	@dptr,a
	C$easyax5043.c$334$3$247 ==.
;	..\COMMON\easyax5043.c:334: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	push	ar7
	lcall	_wtimer_remove_callback
	pop	ar7
	C$easyax5043.c$335$3$247 ==.
;	..\COMMON\easyax5043.c:335: axradio_cb_receive.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$336$3$247 ==.
;	..\COMMON\easyax5043.c:336: axradio_cb_receive.st.rx.mac.raw = axradio_rxbuffer;
	mov	dptr,#(_axradio_cb_receive + 0x001c)
	mov	a,#_axradio_rxbuffer
	movx	@dptr,a
	mov	a,#(_axradio_rxbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$337$3$247 ==.
;	..\COMMON\easyax5043.c:337: if (AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r6,a
	cjne	r6,#0x28,00266$
	sjmp	00267$
00266$:
	ljmp	00121$
00267$:
	C$easyax5043.c$338$4$249 ==.
;	..\COMMON\easyax5043.c:338: axradio_cb_receive.st.rx.pktdata = axradio_rxbuffer;
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	mov	a,#_axradio_rxbuffer
	movx	@dptr,a
	mov	a,#(_axradio_rxbuffer >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$339$4$249 ==.
;	..\COMMON\easyax5043.c:339: axradio_cb_receive.st.rx.pktlen = len;
	mov	ar5,r7
	mov	r6,#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$341$5$249 ==.
;	..\COMMON\easyax5043.c:341: int8_t r = AX5043_RSSI;
	mov	dptr,#_AX5043_RSSI
	movx	a,@dptr
	C$easyax5043.c$342$5$250 ==.
;	..\COMMON\easyax5043.c:342: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r5
	subb	a,r3
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x000a)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$344$4$249 ==.
;	..\COMMON\easyax5043.c:344: if (axradio_phy_innerfreqloop)
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	jz	00118$
	C$easyax5043.c$345$4$249 ==.
;	..\COMMON\easyax5043.c:345: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(radio_read16((uint16_t)&AX5043_TRKFREQ1)));
	mov	dptr,#_AX5043_TRKFREQ1
	lcall	_radio_read16
	lcall	_signextend16
	lcall	_axradio_conv_freq_fromreg
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00119$
00118$:
	C$easyax5043.c$347$4$249 ==.
;	..\COMMON\easyax5043.c:347: axradio_cb_receive.st.rx.phy.offset.o = signextend20(radio_read24((uint16_t)&AX5043_TRKRFFREQ2));
	mov	dptr,#_AX5043_TRKRFFREQ2
	lcall	_radio_read24
	lcall	_signextend20
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
00119$:
	C$easyax5043.c$348$4$249 ==.
;	..\COMMON\easyax5043.c:348: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$349$4$249 ==.
;	..\COMMON\easyax5043.c:349: break;
	ljmp	00153$
00121$:
	C$easyax5043.c$351$3$247 ==.
;	..\COMMON\easyax5043.c:351: axradio_cb_receive.st.rx.pktdata = &axradio_rxbuffer[axradio_framing_maclen];
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	add	a,#_axradio_rxbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_rxbuffer >> 8)
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x001e)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$352$3$247 ==.
;	..\COMMON\easyax5043.c:352: if (len < axradio_framing_maclen) {
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00126$
	C$easyax5043.c$354$4$251 ==.
;	..\COMMON\easyax5043.c:354: axradio_cb_receive.st.rx.pktlen = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00153$
00126$:
	C$easyax5043.c$356$4$252 ==.
;	..\COMMON\easyax5043.c:356: len -= axradio_framing_maclen;
	mov	a,r7
	clr	c
	subb	a,r6
	C$easyax5043.c$357$4$252 ==.
;	..\COMMON\easyax5043.c:357: axradio_cb_receive.st.rx.pktlen = len;
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$358$4$252 ==.
;	..\COMMON\easyax5043.c:358: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$359$4$252 ==.
;	..\COMMON\easyax5043.c:359: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
	mov	a,#0x32
	cjne	a,_axradio_mode,00270$
	sjmp	00122$
00270$:
	C$easyax5043.c$360$4$252 ==.
;	..\COMMON\easyax5043.c:360: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE)
	mov	a,#0x33
	cjne	a,_axradio_mode,00271$
	sjmp	00272$
00271$:
	ljmp	00153$
00272$:
00122$:
	C$easyax5043.c$361$4$252 ==.
;	..\COMMON\easyax5043.c:361: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$363$3$247 ==.
;	..\COMMON\easyax5043.c:363: break;
	ljmp	00153$
	C$easyax5043.c$365$3$247 ==.
;	..\COMMON\easyax5043.c:365: case AX5043_FIFOCMD_RFFREQOFFS:
00128$:
	C$easyax5043.c$366$3$247 ==.
;	..\COMMON\easyax5043.c:366: if (axradio_phy_innerfreqloop || len != 3)
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	jz	00273$
	ljmp	00146$
00273$:
	cjne	r7,#0x03,00274$
	sjmp	00275$
00274$:
	ljmp	00146$
00275$:
	C$easyax5043.c$368$3$247 ==.
;	..\COMMON\easyax5043.c:368: i = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$369$3$247 ==.
;	..\COMMON\easyax5043.c:369: i &= 0x0F;
	anl	ar6,#0x0f
	C$easyax5043.c$370$3$247 ==.
;	..\COMMON\easyax5043.c:370: i |= 1 + (uint8_t)~(i & 0x08);
	mov	a,#0x08
	anl	a,r6
	cpl	a
	mov	r5,a
	inc	r5
	mov	a,r5
	orl	ar6,a
	C$easyax5043.c$371$3$247 ==.
;	..\COMMON\easyax5043.c:371: axradio_cb_receive.st.rx.phy.offset.b.b3 = ((int8_t)i) >> 8;
	mov	ar5,r6
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x000f)
	movx	@dptr,a
	C$easyax5043.c$372$3$247 ==.
;	..\COMMON\easyax5043.c:372: axradio_cb_receive.st.rx.phy.offset.b.b2 = i;
	mov	dptr,#(_axradio_cb_receive + 0x000e)
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$373$3$247 ==.
;	..\COMMON\easyax5043.c:373: axradio_cb_receive.st.rx.phy.offset.b.b1 = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x000d)
	movx	@dptr,a
	C$easyax5043.c$374$3$247 ==.
;	..\COMMON\easyax5043.c:374: axradio_cb_receive.st.rx.phy.offset.b.b0 = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$375$3$247 ==.
;	..\COMMON\easyax5043.c:375: break;
	ljmp	00153$
	C$easyax5043.c$377$3$247 ==.
;	..\COMMON\easyax5043.c:377: case AX5043_FIFOCMD_FREQOFFS:
00132$:
	C$easyax5043.c$378$3$247 ==.
;	..\COMMON\easyax5043.c:378: if (!axradio_phy_innerfreqloop || len != 2)
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	jnz	00276$
	ljmp	00146$
00276$:
	cjne	r7,#0x02,00277$
	sjmp	00278$
00277$:
	ljmp	00146$
00278$:
	C$easyax5043.c$380$3$247 ==.
;	..\COMMON\easyax5043.c:380: axradio_cb_receive.st.rx.phy.offset.b.b1 = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x000d)
	movx	@dptr,a
	C$easyax5043.c$381$3$247 ==.
;	..\COMMON\easyax5043.c:381: axradio_cb_receive.st.rx.phy.offset.b.b0 = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$382$3$247 ==.
;	..\COMMON\easyax5043.c:382: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(axradio_cb_receive.st.rx.phy.offset.o));
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dpl,r3
	mov	dph,r4
	lcall	_signextend16
	lcall	_axradio_conv_freq_fromreg
	mov	r3,dpl
	mov	r4,dph
	mov	r5,b
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x000c)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$383$3$247 ==.
;	..\COMMON\easyax5043.c:383: break;
	ljmp	00153$
	C$easyax5043.c$385$3$247 ==.
;	..\COMMON\easyax5043.c:385: case AX5043_FIFOCMD_RSSI:
00136$:
	C$easyax5043.c$386$3$247 ==.
;	..\COMMON\easyax5043.c:386: if (len != 1)
	cjne	r7,#0x01,00279$
	sjmp	00280$
00279$:
	ljmp	00146$
00280$:
	C$easyax5043.c$389$4$247 ==.
;	..\COMMON\easyax5043.c:389: int8_t r = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	C$easyax5043.c$390$4$253 ==.
;	..\COMMON\easyax5043.c:390: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r6,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r6
	clr	c
	subb	a,r4
	mov	r6,a
	mov	a,r5
	subb	a,r3
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x000a)
	mov	a,r6
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$392$3$247 ==.
;	..\COMMON\easyax5043.c:392: break;
	ljmp	00153$
	C$easyax5043.c$394$3$247 ==.
;	..\COMMON\easyax5043.c:394: case AX5043_FIFOCMD_TIMER:
00139$:
	C$easyax5043.c$395$3$247 ==.
;	..\COMMON\easyax5043.c:395: if (len != 3)
	cjne	r7,#0x03,00281$
	sjmp	00282$
00281$:
	ljmp	00146$
00282$:
	C$easyax5043.c$399$3$247 ==.
;	..\COMMON\easyax5043.c:399: axradio_cb_receive.st.time.b.b3 = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0009)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$400$3$247 ==.
;	..\COMMON\easyax5043.c:400: axradio_cb_receive.st.time.b.b2 = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x0008)
	movx	@dptr,a
	C$easyax5043.c$401$3$247 ==.
;	..\COMMON\easyax5043.c:401: axradio_cb_receive.st.time.b.b1 = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	dptr,#(_axradio_cb_receive + 0x0007)
	movx	@dptr,a
	C$easyax5043.c$402$3$247 ==.
;	..\COMMON\easyax5043.c:402: axradio_cb_receive.st.time.b.b0 = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	movx	@dptr,a
	C$easyax5043.c$403$3$247 ==.
;	..\COMMON\easyax5043.c:403: break;
	ljmp	00153$
	C$easyax5043.c$405$3$247 ==.
;	..\COMMON\easyax5043.c:405: case AX5043_FIFOCMD_ANTRSSI:
00142$:
	C$easyax5043.c$406$3$247 ==.
;	..\COMMON\easyax5043.c:406: if (!len)
	mov	a,r7
	jnz	00283$
	ljmp	00153$
00283$:
	C$easyax5043.c$408$3$247 ==.
;	..\COMMON\easyax5043.c:408: update_timeanchor();
	push	ar7
	lcall	_update_timeanchor
	C$easyax5043.c$409$3$247 ==.
;	..\COMMON\easyax5043.c:409: wtimer_remove_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_remove_callback
	C$easyax5043.c$410$3$247 ==.
;	..\COMMON\easyax5043.c:410: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$412$4$247 ==.
;	..\COMMON\easyax5043.c:412: int8_t r = AX5043_FIFODATA;
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	C$easyax5043.c$413$4$254 ==.
;	..\COMMON\easyax5043.c:413: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r6,a
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r4
	clr	c
	subb	a,r3
	mov	r4,a
	mov	a,r5
	subb	a,r2
	mov	r5,a
	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$414$4$254 ==.
;	..\COMMON\easyax5043.c:414: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
	mov	dptr,#_axradio_phy_channelbusy
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	clr	c
	mov	a,r6
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	cpl	c
	mov	b0,c
	clr	a
	rlc	a
	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$416$3$247 ==.
;	..\COMMON\easyax5043.c:416: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$417$3$247 ==.
;	..\COMMON\easyax5043.c:417: wtimer_add_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_add_callback
	pop	ar7
	C$easyax5043.c$418$3$247 ==.
;	..\COMMON\easyax5043.c:418: --len;
	dec	r7
	C$easyax5043.c$423$3$247 ==.
;	..\COMMON\easyax5043.c:423: dropchunk:
00146$:
	C$easyax5043.c$424$3$247 ==.
;	..\COMMON\easyax5043.c:424: if (!len)
	mov	a,r7
	jnz	00284$
	ljmp	00153$
00284$:
	C$easyax5043.c$427$1$243 ==.
;	..\COMMON\easyax5043.c:427: do {
00149$:
	C$easyax5043.c$428$4$255 ==.
;	..\COMMON\easyax5043.c:428: AX5043_FIFODATA;        // purge FIFO
	mov	dptr,#_AX5043_FIFODATA
	movx	a,@dptr
	C$easyax5043.c$430$3$247 ==.
;	..\COMMON\easyax5043.c:430: while (--i);
	djnz	r7,00149$
	C$easyax5043.c$432$1$243 ==.
;	..\COMMON\easyax5043.c:432: } // end switch(fifo_cmd)
	ljmp	00153$
00156$:
	C$easyax5043.c$434$1$243 ==.
	XFeasyax5043$receive_isr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'transmit_isr'
;------------------------------------------------------------
;cnt                       Allocated to registers r7 
;byte                      Allocated to registers r7 
;len_byte                  Allocated to registers r4 
;i                         Allocated to registers r3 
;byte                      Allocated to registers r6 
;flags                     Allocated to registers r6 
;len                       Allocated to registers r4 r5 
;------------------------------------------------------------
	Feasyax5043$transmit_isr$0$0 ==.
	C$easyax5043.c$436$1$243 ==.
;	..\COMMON\easyax5043.c:436: static __reentrantb void transmit_isr(void) __reentrant
;	-----------------------------------------
;	 function transmit_isr
;	-----------------------------------------
_transmit_isr:
	C$easyax5043.c$575$6$266 ==.
;	..\COMMON\easyax5043.c:575: axradio_trxstate = trxstate_tx_waitdone;
00157$:
	C$easyax5043.c$439$2$257 ==.
;	..\COMMON\easyax5043.c:439: uint8_t cnt = AX5043_FIFOFREE0;
	mov	dptr,#_AX5043_FIFOFREE0
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$440$2$258 ==.
;	..\COMMON\easyax5043.c:440: if (AX5043_FIFOFREE1)
	mov	dptr,#_AX5043_FIFOFREE1
	movx	a,@dptr
	movx	a,@dptr
	jz	00102$
	C$easyax5043.c$441$2$258 ==.
;	..\COMMON\easyax5043.c:441: cnt = 0xff;
	mov	r7,#0xff
00102$:
	C$easyax5043.c$442$2$258 ==.
;	..\COMMON\easyax5043.c:442: switch (axradio_trxstate) {
	mov	r6,_axradio_trxstate
	cjne	r6,#0x0a,00246$
	sjmp	00103$
00246$:
	cjne	r6,#0x0b,00247$
	ljmp	00115$
00247$:
	cjne	r6,#0x0c,00248$
	ljmp	00138$
00248$:
	ljmp	00159$
	C$easyax5043.c$443$3$259 ==.
;	..\COMMON\easyax5043.c:443: case trxstate_tx_longpreamble:
00103$:
	C$easyax5043.c$444$3$259 ==.
;	..\COMMON\easyax5043.c:444: if (!axradio_txbuffer_cnt) {
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jnz	00109$
	C$easyax5043.c$445$4$260 ==.
;	..\COMMON\easyax5043.c:445: axradio_trxstate = trxstate_tx_shortpreamble;
	mov	_axradio_trxstate,#0x0b
	C$easyax5043.c$446$4$260 ==.
;	..\COMMON\easyax5043.c:446: if( axradio_mode == AXRADIO_MODE_WOR_TRANSMIT || axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT )
	mov	a,#0x11
	cjne	a,_axradio_mode,00250$
	sjmp	00104$
00250$:
	mov	a,#0x13
	cjne	a,_axradio_mode,00105$
00104$:
	C$easyax5043.c$447$4$260 ==.
;	..\COMMON\easyax5043.c:447: axradio_txbuffer_cnt = axradio_phy_preamble_wor_len;
	mov	dptr,#_axradio_phy_preamble_wor_len
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00115$
00105$:
	C$easyax5043.c$449$4$260 ==.
;	..\COMMON\easyax5043.c:449: axradio_txbuffer_cnt = axradio_phy_preamble_len;
	mov	dptr,#_axradio_phy_preamble_len
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$450$4$260 ==.
;	..\COMMON\easyax5043.c:450: goto shortpreamble;
	sjmp	00115$
00109$:
	C$easyax5043.c$452$3$259 ==.
;	..\COMMON\easyax5043.c:452: if (cnt < 4)
	cjne	r7,#0x04,00253$
00253$:
	jnc	00254$
	ljmp	00153$
00254$:
	C$easyax5043.c$454$3$259 ==.
;	..\COMMON\easyax5043.c:454: cnt = 7;
	mov	r7,#0x07
	C$easyax5043.c$455$3$259 ==.
;	..\COMMON\easyax5043.c:455: if (axradio_txbuffer_cnt < 7)
	clr	c
	mov	a,r5
	subb	a,#0x07
	mov	a,r6
	subb	a,#0x00
	jnc	00113$
	C$easyax5043.c$456$3$259 ==.
;	..\COMMON\easyax5043.c:456: cnt = axradio_txbuffer_cnt;
	mov	ar7,r5
00113$:
	C$easyax5043.c$457$3$259 ==.
;	..\COMMON\easyax5043.c:457: axradio_txbuffer_cnt -= cnt;
	mov	ar5,r7
	mov	r6,#0x00
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	clr	c
	subb	a,r5
	movx	@dptr,a
	mov	a,r4
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$458$3$259 ==.
;	..\COMMON\easyax5043.c:458: cnt <<= 5;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r7,a
	C$easyax5043.c$459$3$259 ==.
;	..\COMMON\easyax5043.c:459: AX5043_FIFODATA = AX5043_FIFOCMD_REPEATDATA | (3 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0x62
	movx	@dptr,a
	C$easyax5043.c$460$3$259 ==.
;	..\COMMON\easyax5043.c:460: AX5043_FIFODATA = axradio_phy_preamble_flags;
	mov	dptr,#_axradio_phy_preamble_flags
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_AX5043_FIFODATA
	movx	@dptr,a
	C$easyax5043.c$461$3$259 ==.
;	..\COMMON\easyax5043.c:461: AX5043_FIFODATA = cnt;
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$462$3$259 ==.
;	..\COMMON\easyax5043.c:462: AX5043_FIFODATA = axradio_phy_preamble_byte;
	mov	dptr,#_axradio_phy_preamble_byte
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#_AX5043_FIFODATA
	movx	@dptr,a
	C$easyax5043.c$463$3$259 ==.
;	..\COMMON\easyax5043.c:463: break;
	ljmp	00157$
	C$easyax5043.c$466$3$259 ==.
;	..\COMMON\easyax5043.c:466: shortpreamble:
00115$:
	C$easyax5043.c$467$3$259 ==.
;	..\COMMON\easyax5043.c:467: if (!axradio_txbuffer_cnt) {
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	orl	a,r5
	jz	00256$
	ljmp	00128$
00256$:
	C$easyax5043.c$468$4$261 ==.
;	..\COMMON\easyax5043.c:468: if (cnt < 15)
	cjne	r7,#0x0f,00257$
00257$:
	jnc	00258$
	ljmp	00153$
00258$:
	C$easyax5043.c$470$4$261 ==.
;	..\COMMON\easyax5043.c:470: if (axradio_phy_preamble_appendbits) {
	mov	dptr,#_axradio_phy_preamble_appendbits
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	jz	00122$
	C$easyax5043.c$472$5$262 ==.
;	..\COMMON\easyax5043.c:472: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (2 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0x41
	movx	@dptr,a
	C$easyax5043.c$473$5$262 ==.
;	..\COMMON\easyax5043.c:473: AX5043_FIFODATA = 0x1C;
	mov	a,#0x1c
	movx	@dptr,a
	C$easyax5043.c$474$5$262 ==.
;	..\COMMON\easyax5043.c:474: byte = axradio_phy_preamble_appendpattern;
	mov	dptr,#_axradio_phy_preamble_appendpattern
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	r7,a
	C$easyax5043.c$475$5$262 ==.
;	..\COMMON\easyax5043.c:475: if (AX5043_PKTADDRCFG & 0x80) {
	mov	dptr,#_AX5043_PKTADDRCFG
	movx	a,@dptr
	mov	r2,a
	jnb	acc.7,00119$
	C$easyax5043.c$477$6$263 ==.
;	..\COMMON\easyax5043.c:477: byte &= 0xFF << (8-axradio_phy_preamble_appendbits);
	mov	a,#0x08
	clr	c
	subb	a,r4
	mov	b,a
	inc	b
	mov	a,#0xff
	sjmp	00263$
00261$:
	add	a,acc
00263$:
	djnz	b,00261$
	mov	r2,a
	anl	ar7,a
	C$easyax5043.c$478$6$263 ==.
;	..\COMMON\easyax5043.c:478: byte |= 0x80 >> axradio_phy_preamble_appendbits;
	mov	b,r4
	inc	b
	mov	a,#0x80
	sjmp	00265$
00264$:
	clr	c
	rrc	a
00265$:
	djnz	b,00264$
	mov	r2,a
	orl	ar7,a
	sjmp	00120$
00119$:
	C$easyax5043.c$481$6$264 ==.
;	..\COMMON\easyax5043.c:481: byte &= 0xFF >> (8-axradio_phy_preamble_appendbits);
	mov	ar2,r4
	mov	r3,#0x00
	mov	a,#0x08
	clr	c
	subb	a,r2
	mov	r2,a
	clr	a
	subb	a,r3
	mov	r3,a
	mov	b,r2
	inc	b
	mov	a,#0xff
	sjmp	00267$
00266$:
	clr	c
	rrc	a
00267$:
	djnz	b,00266$
	mov	r2,a
	anl	ar7,a
	C$easyax5043.c$482$6$264 ==.
;	..\COMMON\easyax5043.c:482: byte |= 0x01 << axradio_phy_preamble_appendbits;
	mov	b,r4
	inc	b
	mov	a,#0x01
	sjmp	00270$
00268$:
	add	a,acc
00270$:
	djnz	b,00268$
	mov	r4,a
	orl	ar7,a
00120$:
	C$easyax5043.c$484$5$262 ==.
;	..\COMMON\easyax5043.c:484: AX5043_FIFODATA = byte;
	mov	dptr,#_AX5043_FIFODATA
	mov	a,r7
	movx	@dptr,a
00122$:
	C$easyax5043.c$490$4$261 ==.
;	..\COMMON\easyax5043.c:490: if ((AX5043_FRAMING & 0x0E) == 0x06 && axradio_framing_synclen) {
	mov	dptr,#_AX5043_FRAMING
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x0e
	cjne	r4,#0x06,00125$
	mov	dptr,#_axradio_framing_synclen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	a
	movc	a,@a+dptr
	jz	00125$
	C$easyax5043.c$492$5$261 ==.
;	..\COMMON\easyax5043.c:492: uint8_t len_byte = axradio_framing_synclen;
	C$easyax5043.c$493$5$265 ==.
;	..\COMMON\easyax5043.c:493: uint8_t i = (len_byte & 0x07) ? 0x04 : 0;
	mov	a,r4
	anl	a,#0x07
	jz	00161$
	mov	a,#0x04
00161$:
	mov	r3,a
	C$easyax5043.c$495$5$265 ==.
;	..\COMMON\easyax5043.c:495: len_byte += 7;
	mov	a,#0x07
	add	a,r4
	C$easyax5043.c$496$5$265 ==.
;	..\COMMON\easyax5043.c:496: len_byte >>= 3;
	swap	a
	rl	a
	anl	a,#0x1f
	C$easyax5043.c$497$5$265 ==.
;	..\COMMON\easyax5043.c:497: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | ((len_byte + 1) << 5);
	mov	r4,a
	inc	a
	swap	a
	rl	a
	anl	a,#0xe0
	mov	r2,a
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0x01
	orl	a,r2
	movx	@dptr,a
	C$easyax5043.c$498$5$265 ==.
;	..\COMMON\easyax5043.c:498: AX5043_FIFODATA = axradio_framing_syncflags | i;
	mov	dptr,#_axradio_framing_syncflags
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	mov	dptr,#_AX5043_FIFODATA
	mov	a,r3
	orl	a,r2
	movx	@dptr,a
	C$easyax5043.c$499$1$257 ==.
;	..\COMMON\easyax5043.c:499: for (i = 0; i < len_byte; ++i) {
	mov	r3,#0x00
00155$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc	00125$
	C$easyax5043.c$501$6$266 ==.
;	..\COMMON\easyax5043.c:501: AX5043_FIFODATA = axradio_framing_syncword[i];
	mov	a,r3
	mov	dptr,#_axradio_framing_syncword
	movc	a,@a+dptr
	mov	r2,a
	mov	dptr,#_AX5043_FIFODATA
	movx	@dptr,a
	C$easyax5043.c$499$5$265 ==.
;	..\COMMON\easyax5043.c:499: for (i = 0; i < len_byte; ++i) {
	inc	r3
	sjmp	00155$
00125$:
	C$easyax5043.c$508$4$261 ==.
;	..\COMMON\easyax5043.c:508: axradio_trxstate = trxstate_tx_packet;
	mov	_axradio_trxstate,#0x0c
	C$easyax5043.c$509$4$261 ==.
;	..\COMMON\easyax5043.c:509: break;
	ljmp	00157$
00128$:
	C$easyax5043.c$511$3$259 ==.
;	..\COMMON\easyax5043.c:511: if (cnt < 4)
	cjne	r7,#0x04,00276$
00276$:
	jnc	00277$
	ljmp	00153$
00277$:
	C$easyax5043.c$513$3$259 ==.
;	..\COMMON\easyax5043.c:513: cnt = 255;
	mov	r7,#0xff
	C$easyax5043.c$514$3$259 ==.
;	..\COMMON\easyax5043.c:514: if (axradio_txbuffer_cnt < 255*8)
	clr	c
	mov	a,r5
	subb	a,#0xf8
	mov	a,r6
	subb	a,#0x07
	jnc	00132$
	C$easyax5043.c$515$3$259 ==.
;	..\COMMON\easyax5043.c:515: cnt = axradio_txbuffer_cnt >> 3;
	mov	a,r6
	swap	a
	rl	a
	xch	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	xrl	a,r5
	xch	a,r5
	anl	a,#0x1f
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	mov	r6,a
	mov	ar7,r5
00132$:
	C$easyax5043.c$516$3$259 ==.
;	..\COMMON\easyax5043.c:516: if (cnt) {
	mov	a,r7
	jz	00134$
	C$easyax5043.c$517$4$267 ==.
;	..\COMMON\easyax5043.c:517: axradio_txbuffer_cnt -= ((uint16_t)cnt) << 3;
	mov	ar5,r7
	clr	a
	rr	a
	anl	a,#0xf8
	xch	a,r5
	swap	a
	rr	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf8
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r3
	clr	c
	subb	a,r5
	movx	@dptr,a
	mov	a,r4
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$518$4$267 ==.
;	..\COMMON\easyax5043.c:518: AX5043_FIFODATA = AX5043_FIFOCMD_REPEATDATA | (3 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0x62
	movx	@dptr,a
	C$easyax5043.c$519$4$267 ==.
;	..\COMMON\easyax5043.c:519: AX5043_FIFODATA = axradio_phy_preamble_flags;
	mov	dptr,#_axradio_phy_preamble_flags
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_AX5043_FIFODATA
	movx	@dptr,a
	C$easyax5043.c$520$4$267 ==.
;	..\COMMON\easyax5043.c:520: AX5043_FIFODATA = cnt;
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$521$4$267 ==.
;	..\COMMON\easyax5043.c:521: AX5043_FIFODATA = axradio_phy_preamble_byte;
	mov	dptr,#_axradio_phy_preamble_byte
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#_AX5043_FIFODATA
	movx	@dptr,a
	C$easyax5043.c$522$4$267 ==.
;	..\COMMON\easyax5043.c:522: break;
	ljmp	00157$
00134$:
	C$easyax5043.c$525$4$259 ==.
;	..\COMMON\easyax5043.c:525: uint8_t byte = axradio_phy_preamble_byte;
	mov	dptr,#_axradio_phy_preamble_byte
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	C$easyax5043.c$526$4$268 ==.
;	..\COMMON\easyax5043.c:526: cnt = axradio_txbuffer_cnt;
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	ar7,r4
	C$easyax5043.c$527$4$268 ==.
;	..\COMMON\easyax5043.c:527: axradio_txbuffer_cnt = 0;
	mov	dptr,#_axradio_txbuffer_cnt
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$528$4$268 ==.
;	..\COMMON\easyax5043.c:528: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (2 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0x41
	movx	@dptr,a
	C$easyax5043.c$529$4$268 ==.
;	..\COMMON\easyax5043.c:529: AX5043_FIFODATA = 0x1C;
	mov	a,#0x1c
	movx	@dptr,a
	C$easyax5043.c$530$4$268 ==.
;	..\COMMON\easyax5043.c:530: if (AX5043_PKTADDRCFG & 0x80) {
	mov	dptr,#_AX5043_PKTADDRCFG
	movx	a,@dptr
	mov	r5,a
	jnb	acc.7,00136$
	C$easyax5043.c$532$5$269 ==.
;	..\COMMON\easyax5043.c:532: byte &= 0xFF << (8-cnt);
	mov	a,#0x08
	clr	c
	subb	a,r7
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,#0xff
	sjmp	00283$
00281$:
	add	a,acc
00283$:
	djnz	b,00281$
	mov	r5,a
	anl	ar6,a
	C$easyax5043.c$533$5$269 ==.
;	..\COMMON\easyax5043.c:533: byte |= 0x80 >> cnt;
	mov	b,r7
	inc	b
	mov	a,#0x80
	sjmp	00285$
00284$:
	clr	c
	rrc	a
00285$:
	djnz	b,00284$
	mov	r5,a
	orl	ar6,a
	sjmp	00137$
00136$:
	C$easyax5043.c$536$5$270 ==.
;	..\COMMON\easyax5043.c:536: byte &= 0xFF >> (8-cnt);
	mov	ar4,r7
	mov	r5,#0x00
	mov	a,#0x08
	clr	c
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	mov	b,r4
	inc	b
	mov	a,#0xff
	sjmp	00287$
00286$:
	clr	c
	rrc	a
00287$:
	djnz	b,00286$
	mov	r4,a
	anl	ar6,a
	C$easyax5043.c$537$5$270 ==.
;	..\COMMON\easyax5043.c:537: byte |= 0x01 << cnt;
	mov	b,r7
	inc	b
	mov	a,#0x01
	sjmp	00290$
00288$:
	add	a,acc
00290$:
	djnz	b,00288$
	mov	r5,a
	orl	ar6,a
00137$:
	C$easyax5043.c$539$4$268 ==.
;	..\COMMON\easyax5043.c:539: AX5043_FIFODATA = byte;
	mov	dptr,#_AX5043_FIFODATA
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$541$3$259 ==.
;	..\COMMON\easyax5043.c:541: break;
	ljmp	00157$
	C$easyax5043.c$543$3$259 ==.
;	..\COMMON\easyax5043.c:543: case trxstate_tx_packet:
00138$:
	C$easyax5043.c$544$3$259 ==.
;	..\COMMON\easyax5043.c:544: if (cnt < 11)
	cjne	r7,#0x0b,00291$
00291$:
	jnc	00292$
	ljmp	00153$
00292$:
	C$easyax5043.c$547$4$259 ==.
;	..\COMMON\easyax5043.c:547: uint8_t flags = 0;
	mov	r6,#0x00
	C$easyax5043.c$548$4$271 ==.
;	..\COMMON\easyax5043.c:548: if (!axradio_txbuffer_cnt)
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00142$
	C$easyax5043.c$549$4$271 ==.
;	..\COMMON\easyax5043.c:549: flags |= 0x01; // flag byte: pkt_start
	mov	r6,#0x01
00142$:
	C$easyax5043.c$551$5$272 ==.
;	..\COMMON\easyax5043.c:551: uint16_t len = axradio_txbuffer_len - axradio_txbuffer_cnt;
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r2
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r3
	subb	a,r5
	mov	r5,a
	C$easyax5043.c$552$5$272 ==.
;	..\COMMON\easyax5043.c:552: cnt -= 3;
	dec	r7
	dec	r7
	dec	r7
	C$easyax5043.c$553$5$272 ==.
;	..\COMMON\easyax5043.c:553: if (cnt >= len) {
	mov	ar2,r7
	mov	r3,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
	jc	00144$
	C$easyax5043.c$554$6$273 ==.
;	..\COMMON\easyax5043.c:554: cnt = len;
	mov	ar7,r4
	C$easyax5043.c$555$6$273 ==.
;	..\COMMON\easyax5043.c:555: flags |= 0x02; // flag byte: pkt_end
	orl	ar6,#0x02
00144$:
	C$easyax5043.c$558$4$271 ==.
;	..\COMMON\easyax5043.c:558: if (!cnt)
	mov	a,r7
	jz	00152$
	C$easyax5043.c$560$4$271 ==.
;	..\COMMON\easyax5043.c:560: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0xe1
	movx	@dptr,a
	C$easyax5043.c$561$4$271 ==.
;	..\COMMON\easyax5043.c:561: AX5043_FIFODATA = cnt + 1; // write FIFO chunk length byte (length includes the flag byte, thus the +1)
	mov	a,r7
	inc	a
	movx	@dptr,a
	C$easyax5043.c$562$4$271 ==.
;	..\COMMON\easyax5043.c:562: AX5043_FIFODATA = flags;
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$563$4$271 ==.
;	..\COMMON\easyax5043.c:563: ax5043_writefifo(&axradio_txbuffer[axradio_txbuffer_cnt], cnt);
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,r4
	add	a,#_axradio_txbuffer
	mov	r4,a
	mov	a,r5
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r5,a
	mov	r3,#0x00
	push	ar7
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r3
	lcall	_ax5043_writefifo
	dec	sp
	pop	ar6
	pop	ar7
	C$easyax5043.c$564$4$271 ==.
;	..\COMMON\easyax5043.c:564: axradio_txbuffer_cnt += cnt;
	mov	r5,#0x00
	mov	dptr,#_axradio_txbuffer_cnt
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r7
	add	a,r3
	movx	@dptr,a
	mov	a,r5
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$565$4$271 ==.
;	..\COMMON\easyax5043.c:565: if (flags & 0x02)
	mov	a,r6
	jb	acc.1,00152$
	C$easyax5043.c$566$4$271 ==.
;	..\COMMON\easyax5043.c:566: goto pktend;
	C$easyax5043.c$570$3$259 ==.
;	..\COMMON\easyax5043.c:570: default:
	C$easyax5043.c$571$3$259 ==.
;	..\COMMON\easyax5043.c:571: return;
	C$easyax5043.c$574$1$257 ==.
;	..\COMMON\easyax5043.c:574: pktend:
	ljmp	00157$
00152$:
	C$easyax5043.c$575$1$257 ==.
;	..\COMMON\easyax5043.c:575: axradio_trxstate = trxstate_tx_waitdone;
	mov	_axradio_trxstate,#0x0d
	C$easyax5043.c$576$1$257 ==.
;	..\COMMON\easyax5043.c:576: AX5043_RADIOEVENTMASK0 = 0x01; // enable REVRDONE event
	mov	dptr,#_AX5043_RADIOEVENTMASK0
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$577$1$257 ==.
;	..\COMMON\easyax5043.c:577: AX5043_IRQMASK0 = 0x40; // enable radio controller irq
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x40
	movx	@dptr,a
	C$easyax5043.c$578$1$257 ==.
;	..\COMMON\easyax5043.c:578: fifocommit:
00153$:
	C$easyax5043.c$579$1$257 ==.
;	..\COMMON\easyax5043.c:579: AX5043_FIFOSTAT = 4; // commit
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x04
	movx	@dptr,a
00159$:
	C$easyax5043.c$580$1$257 ==.
	XFeasyax5043$transmit_isr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_isr'
;------------------------------------------------------------
;evt                       Allocated to registers r7 
;------------------------------------------------------------
	G$axradio_isr$0$0 ==.
	C$easyax5043.c$583$1$257 ==.
;	..\COMMON\easyax5043.c:583: void axradio_isr(void) __interrupt INT_RADIO
;	-----------------------------------------
;	 function axradio_isr
;	-----------------------------------------
_axradio_isr:
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
	C$easyax5043.c$593$1$275 ==.
;	..\COMMON\easyax5043.c:593: switch (axradio_trxstate) {
	mov	a,_axradio_trxstate
	mov	r7,a
	add	a,#0xff - 0x10
	jnc	00256$
	ljmp	00101$
00256$:
	mov	a,r7
	mov	b,a
	add	a,#(00257$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00258$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00257$:
	.db	00101$
	.db	00165$
	.db	00158$
	.db	00102$
	.db	00101$
	.db	00103$
	.db	00101$
	.db	00104$
	.db	00101$
	.db	00105$
	.db	00114$
	.db	00115$
	.db	00116$
	.db	00117$
	.db	00144$
	.db	00145$
	.db	00148$
00258$:
	.db	00101$>>8
	.db	00165$>>8
	.db	00158$>>8
	.db	00102$>>8
	.db	00101$>>8
	.db	00103$>>8
	.db	00101$>>8
	.db	00104$>>8
	.db	00101$>>8
	.db	00105$>>8
	.db	00114$>>8
	.db	00115$>>8
	.db	00116$>>8
	.db	00117$>>8
	.db	00144$>>8
	.db	00145$>>8
	.db	00148$>>8
	C$easyax5043.c$594$2$276 ==.
;	..\COMMON\easyax5043.c:594: default:
00101$:
	C$easyax5043.c$595$2$276 ==.
;	..\COMMON\easyax5043.c:595: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$596$2$276 ==.
;	..\COMMON\easyax5043.c:596: AX5043_IRQMASK0 = 0x00;
	mov	dptr,#_AX5043_IRQMASK0
	movx	@dptr,a
	C$easyax5043.c$597$2$276 ==.
;	..\COMMON\easyax5043.c:597: break;
	ljmp	00167$
	C$easyax5043.c$599$2$276 ==.
;	..\COMMON\easyax5043.c:599: case trxstate_wait_xtal:
00102$:
	C$easyax5043.c$600$2$276 ==.
;	..\COMMON\easyax5043.c:600: AX5043_IRQMASK1 = 0x00; // otherwise crystal ready will fire all over again
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$601$2$276 ==.
;	..\COMMON\easyax5043.c:601: axradio_trxstate = trxstate_xtal_ready;
	mov	_axradio_trxstate,#0x04
	C$easyax5043.c$602$2$276 ==.
;	..\COMMON\easyax5043.c:602: break;
	ljmp	00167$
	C$easyax5043.c$604$2$276 ==.
;	..\COMMON\easyax5043.c:604: case trxstate_pll_ranging:
00103$:
	C$easyax5043.c$605$2$276 ==.
;	..\COMMON\easyax5043.c:605: AX5043_IRQMASK1 = 0x00; // otherwise autoranging done will fire all over again
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$606$2$276 ==.
;	..\COMMON\easyax5043.c:606: axradio_trxstate = trxstate_pll_ranging_done;
	mov	_axradio_trxstate,#0x06
	C$easyax5043.c$607$2$276 ==.
;	..\COMMON\easyax5043.c:607: break;
	ljmp	00167$
	C$easyax5043.c$609$2$276 ==.
;	..\COMMON\easyax5043.c:609: case trxstate_pll_settling:
00104$:
	C$easyax5043.c$610$2$276 ==.
;	..\COMMON\easyax5043.c:610: AX5043_RADIOEVENTMASK0 = 0x00;
	mov	dptr,#_AX5043_RADIOEVENTMASK0
	clr	a
	movx	@dptr,a
	C$easyax5043.c$611$2$276 ==.
;	..\COMMON\easyax5043.c:611: axradio_trxstate = trxstate_pll_settled;
	mov	_axradio_trxstate,#0x08
	C$easyax5043.c$612$2$276 ==.
;	..\COMMON\easyax5043.c:612: break;
	ljmp	00167$
	C$easyax5043.c$614$2$276 ==.
;	..\COMMON\easyax5043.c:614: case trxstate_tx_xtalwait:
00105$:
	C$easyax5043.c$615$2$276 ==.
;	..\COMMON\easyax5043.c:615: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#_AX5043_RADIOEVENTREQ0
	movx	a,@dptr
	C$easyax5043.c$616$2$276 ==.
;	..\COMMON\easyax5043.c:616: AX5043_FIFOSTAT = 3; // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$617$2$276 ==.
;	..\COMMON\easyax5043.c:617: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$618$2$276 ==.
;	..\COMMON\easyax5043.c:618: AX5043_IRQMASK0 = 0x08; // enable fifo free threshold
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$619$2$276 ==.
;	..\COMMON\easyax5043.c:619: axradio_trxstate = trxstate_tx_longpreamble;
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$621$2$276 ==.
;	..\COMMON\easyax5043.c:621: if ((AX5043_MODULATION & 0x0F) == 9) { // 4-FSK
	mov	dptr,#_AX5043_MODULATION
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x09,00107$
	C$easyax5043.c$622$3$277 ==.
;	..\COMMON\easyax5043.c:622: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0xe1
	movx	@dptr,a
	C$easyax5043.c$623$3$277 ==.
;	..\COMMON\easyax5043.c:623: AX5043_FIFODATA = 2;  // length (including flags)
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$624$3$277 ==.
;	..\COMMON\easyax5043.c:624: AX5043_FIFODATA = 0x01;  // flag PKTSTART -> dibit sync
	dec	a
	movx	@dptr,a
	C$easyax5043.c$625$3$277 ==.
;	..\COMMON\easyax5043.c:625: AX5043_FIFODATA = 0x11; // dummy byte for forcing dibit sync
	mov	a,#0x11
	movx	@dptr,a
00107$:
	C$easyax5043.c$632$2$276 ==.
;	..\COMMON\easyax5043.c:632: transmit_isr();
	lcall	_transmit_isr
	C$easyax5043.c$633$2$276 ==.
;	..\COMMON\easyax5043.c:633: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$634$2$276 ==.
;	..\COMMON\easyax5043.c:634: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$635$2$276 ==.
;	..\COMMON\easyax5043.c:635: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$636$2$276 ==.
;	..\COMMON\easyax5043.c:636: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x12,00261$
	sjmp	00109$
00261$:
	cjne	r7,#0x13,00112$
	C$easyax5043.c$638$3$278 ==.
;	..\COMMON\easyax5043.c:638: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00109$:
	C$easyax5043.c$639$3$278 ==.
;	..\COMMON\easyax5043.c:639: if (axradio_ack_count != axradio_framing_ack_retransmissions) {
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_framing_ack_retransmissions
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r7
	cjne	a,ar6,00264$
	sjmp	00112$
00264$:
	C$easyax5043.c$640$4$279 ==.
;	..\COMMON\easyax5043.c:640: axradio_cb_transmitstart.st.error = AXRADIO_ERR_RETRANSMISSION;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$641$4$279 ==.
;	..\COMMON\easyax5043.c:641: break;
	C$easyax5043.c$644$3$278 ==.
;	..\COMMON\easyax5043.c:644: default:
	sjmp	00113$
00112$:
	C$easyax5043.c$645$3$278 ==.
;	..\COMMON\easyax5043.c:645: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$647$2$276 ==.
;	..\COMMON\easyax5043.c:647: }
00113$:
	C$easyax5043.c$648$2$276 ==.
;	..\COMMON\easyax5043.c:648: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$649$2$276 ==.
;	..\COMMON\easyax5043.c:649: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$650$2$276 ==.
;	..\COMMON\easyax5043.c:650: break;
	ljmp	00167$
	C$easyax5043.c$652$2$276 ==.
;	..\COMMON\easyax5043.c:652: case trxstate_tx_longpreamble:
00114$:
	C$easyax5043.c$653$2$276 ==.
;	..\COMMON\easyax5043.c:653: case trxstate_tx_shortpreamble:
00115$:
	C$easyax5043.c$654$2$276 ==.
;	..\COMMON\easyax5043.c:654: case trxstate_tx_packet:
00116$:
	C$easyax5043.c$655$2$276 ==.
;	..\COMMON\easyax5043.c:655: transmit_isr();
	lcall	_transmit_isr
	C$easyax5043.c$656$2$276 ==.
;	..\COMMON\easyax5043.c:656: break;
	ljmp	00167$
	C$easyax5043.c$658$2$276 ==.
;	..\COMMON\easyax5043.c:658: case trxstate_tx_waitdone:
00117$:
	C$easyax5043.c$659$2$276 ==.
;	..\COMMON\easyax5043.c:659: AX5043_RADIOEVENTREQ0;
	mov	dptr,#_AX5043_RADIOEVENTREQ0
	movx	a,@dptr
	C$easyax5043.c$660$2$276 ==.
;	..\COMMON\easyax5043.c:660: if (AX5043_RADIOSTATE != 0)
	mov	dptr,#_AX5043_RADIOSTATE
	movx	a,@dptr
	movx	a,@dptr
	jz	00265$
	ljmp	00167$
00265$:
	C$easyax5043.c$662$2$276 ==.
;	..\COMMON\easyax5043.c:662: AX5043_RADIOEVENTMASK0 = 0x00;
	mov	dptr,#_AX5043_RADIOEVENTMASK0
	clr	a
	movx	@dptr,a
	C$easyax5043.c$663$2$276 ==.
;	..\COMMON\easyax5043.c:663: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x12,00266$
	sjmp	00131$
00266$:
	cjne	r7,#0x13,00267$
	sjmp	00131$
00267$:
	cjne	r7,#0x20,00268$
	sjmp	00120$
00268$:
	cjne	r7,#0x21,00269$
	sjmp	00125$
00269$:
	cjne	r7,#0x22,00270$
	sjmp	00121$
00270$:
	cjne	r7,#0x23,00271$
	sjmp	00128$
00271$:
	cjne	r7,#0x30,00272$
	ljmp	00132$
00272$:
	cjne	r7,#0x31,00273$
	sjmp	00129$
00273$:
	ljmp	00133$
	C$easyax5043.c$664$3$280 ==.
;	..\COMMON\easyax5043.c:664: case AXRADIO_MODE_ASYNC_RECEIVE:
00120$:
	C$easyax5043.c$665$3$280 ==.
;	..\COMMON\easyax5043.c:665: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$666$3$280 ==.
;	..\COMMON\easyax5043.c:666: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$667$3$280 ==.
;	..\COMMON\easyax5043.c:667: break;
	ljmp	00134$
	C$easyax5043.c$669$3$280 ==.
;	..\COMMON\easyax5043.c:669: case AXRADIO_MODE_ACK_RECEIVE:
00121$:
	C$easyax5043.c$670$3$280 ==.
;	..\COMMON\easyax5043.c:670: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xf0,00124$
	C$easyax5043.c$671$4$281 ==.
;	..\COMMON\easyax5043.c:671: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$672$4$281 ==.
;	..\COMMON\easyax5043.c:672: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$673$4$281 ==.
;	..\COMMON\easyax5043.c:673: break;
	C$easyax5043.c$675$3$280 ==.
;	..\COMMON\easyax5043.c:675: offxtal:
	sjmp	00134$
00124$:
	C$easyax5043.c$676$3$280 ==.
;	..\COMMON\easyax5043.c:676: ax5043_off_xtal();
	lcall	_ax5043_off_xtal
	C$easyax5043.c$677$3$280 ==.
;	..\COMMON\easyax5043.c:677: break;
	C$easyax5043.c$679$3$280 ==.
;	..\COMMON\easyax5043.c:679: case AXRADIO_MODE_WOR_RECEIVE:
	sjmp	00134$
00125$:
	C$easyax5043.c$680$3$280 ==.
;	..\COMMON\easyax5043.c:680: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xf0,00124$
	C$easyax5043.c$681$4$282 ==.
;	..\COMMON\easyax5043.c:681: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$682$4$282 ==.
;	..\COMMON\easyax5043.c:682: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	C$easyax5043.c$683$4$282 ==.
;	..\COMMON\easyax5043.c:683: break;
	C$easyax5043.c$687$3$280 ==.
;	..\COMMON\easyax5043.c:687: case AXRADIO_MODE_WOR_ACK_RECEIVE:
	sjmp	00134$
00128$:
	C$easyax5043.c$688$3$280 ==.
;	..\COMMON\easyax5043.c:688: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$689$3$280 ==.
;	..\COMMON\easyax5043.c:689: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	C$easyax5043.c$690$3$280 ==.
;	..\COMMON\easyax5043.c:690: break;
	C$easyax5043.c$692$3$280 ==.
;	..\COMMON\easyax5043.c:692: case AXRADIO_MODE_SYNC_ACK_MASTER:
	sjmp	00134$
00129$:
	C$easyax5043.c$693$3$280 ==.
;	..\COMMON\easyax5043.c:693: axradio_txbuffer_len = axradio_framing_minpayloadlen;
	mov	dptr,#_axradio_framing_minpayloadlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_len
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$697$3$280 ==.
;	..\COMMON\easyax5043.c:697: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00131$:
	C$easyax5043.c$698$3$280 ==.
;	..\COMMON\easyax5043.c:698: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$699$3$280 ==.
;	..\COMMON\easyax5043.c:699: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$700$3$280 ==.
;	..\COMMON\easyax5043.c:700: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$701$3$280 ==.
;	..\COMMON\easyax5043.c:701: axradio_timer.time = axradio_framing_ack_timeout;
	mov	dptr,#_axradio_framing_ack_timeout
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$702$3$280 ==.
;	..\COMMON\easyax5043.c:702: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$703$3$280 ==.
;	..\COMMON\easyax5043.c:703: break;
	C$easyax5043.c$705$3$280 ==.
;	..\COMMON\easyax5043.c:705: case AXRADIO_MODE_SYNC_MASTER:
	sjmp	00134$
00132$:
	C$easyax5043.c$706$3$280 ==.
;	..\COMMON\easyax5043.c:706: axradio_txbuffer_len = axradio_framing_minpayloadlen;
	mov	dptr,#_axradio_framing_minpayloadlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_len
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$709$3$280 ==.
;	..\COMMON\easyax5043.c:709: default:
00133$:
	C$easyax5043.c$710$3$280 ==.
;	..\COMMON\easyax5043.c:710: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$712$2$276 ==.
;	..\COMMON\easyax5043.c:712: }
00134$:
	C$easyax5043.c$713$2$276 ==.
;	..\COMMON\easyax5043.c:713: if (axradio_mode != AXRADIO_MODE_SYNC_MASTER &&
	mov	a,#0x30
	cjne	a,_axradio_mode,00278$
	sjmp	00136$
00278$:
	C$easyax5043.c$714$2$276 ==.
;	..\COMMON\easyax5043.c:714: axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER &&
	mov	a,#0x31
	cjne	a,_axradio_mode,00279$
	sjmp	00136$
00279$:
	C$easyax5043.c$715$2$276 ==.
;	..\COMMON\easyax5043.c:715: axradio_mode != AXRADIO_MODE_SYNC_SLAVE &&
	mov	a,#0x32
	cjne	a,_axradio_mode,00280$
	sjmp	00136$
00280$:
	C$easyax5043.c$716$2$276 ==.
;	..\COMMON\easyax5043.c:716: axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
	mov	a,#0x33
	cjne	a,_axradio_mode,00281$
	sjmp	00136$
00281$:
	C$easyax5043.c$717$2$276 ==.
;	..\COMMON\easyax5043.c:717: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
00136$:
	C$easyax5043.c$718$2$276 ==.
;	..\COMMON\easyax5043.c:718: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$719$2$276 ==.
;	..\COMMON\easyax5043.c:719: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$720$2$276 ==.
;	..\COMMON\easyax5043.c:720: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$721$2$276 ==.
;	..\COMMON\easyax5043.c:721: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
	mov	a,#0x12
	cjne	a,_axradio_mode,00282$
	sjmp	00140$
00282$:
	C$easyax5043.c$722$2$276 ==.
;	..\COMMON\easyax5043.c:722: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
	mov	a,#0x13
	cjne	a,_axradio_mode,00283$
	sjmp	00140$
00283$:
	C$easyax5043.c$723$2$276 ==.
;	..\COMMON\easyax5043.c:723: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
	mov	a,#0x31
	cjne	a,_axradio_mode,00141$
00140$:
	C$easyax5043.c$724$2$276 ==.
;	..\COMMON\easyax5043.c:724: axradio_cb_transmitend.st.error = AXRADIO_ERR_BUSY;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	mov	a,#0x02
	movx	@dptr,a
00141$:
	C$easyax5043.c$725$2$276 ==.
;	..\COMMON\easyax5043.c:725: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$726$2$276 ==.
;	..\COMMON\easyax5043.c:726: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	C$easyax5043.c$727$2$276 ==.
;	..\COMMON\easyax5043.c:727: break;
	ljmp	00167$
	C$easyax5043.c$730$2$276 ==.
;	..\COMMON\easyax5043.c:730: case trxstate_txcw_xtalwait:
00144$:
	C$easyax5043.c$731$2$276 ==.
;	..\COMMON\easyax5043.c:731: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$732$2$276 ==.
;	..\COMMON\easyax5043.c:732: AX5043_IRQMASK0 = 0x00;
	mov	dptr,#_AX5043_IRQMASK0
	movx	@dptr,a
	C$easyax5043.c$733$2$276 ==.
;	..\COMMON\easyax5043.c:733: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$734$2$276 ==.
;	..\COMMON\easyax5043.c:734: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$735$2$276 ==.
;	..\COMMON\easyax5043.c:735: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$736$2$276 ==.
;	..\COMMON\easyax5043.c:736: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$737$2$276 ==.
;	..\COMMON\easyax5043.c:737: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$738$2$276 ==.
;	..\COMMON\easyax5043.c:738: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$739$2$276 ==.
;	..\COMMON\easyax5043.c:739: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$740$2$276 ==.
;	..\COMMON\easyax5043.c:740: break;
	ljmp	00167$
	C$easyax5043.c$742$2$276 ==.
;	..\COMMON\easyax5043.c:742: case trxstate_txstream_xtalwait:
00145$:
	C$easyax5043.c$743$2$276 ==.
;	..\COMMON\easyax5043.c:743: if (AX5043_IRQREQUEST1 & 0x01) {
	mov	dptr,#_AX5043_IRQREQUEST1
	movx	a,@dptr
	mov	r7,a
	jb	acc.0,00286$
	ljmp	00155$
00286$:
	C$easyax5043.c$744$3$283 ==.
;	..\COMMON\easyax5043.c:744: AX5043_RADIOEVENTMASK0 = 0x03; // enable PLL settled and done event
	mov	dptr,#_AX5043_RADIOEVENTMASK0
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$745$3$283 ==.
;	..\COMMON\easyax5043.c:745: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$746$3$283 ==.
;	..\COMMON\easyax5043.c:746: AX5043_IRQMASK0 = 0x40; // enable radio controller irq
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x40
	movx	@dptr,a
	C$easyax5043.c$747$3$283 ==.
;	..\COMMON\easyax5043.c:747: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$748$3$283 ==.
;	..\COMMON\easyax5043.c:748: axradio_trxstate = trxstate_txstream;
	mov	_axradio_trxstate,#0x10
	C$easyax5043.c$750$2$276 ==.
;	..\COMMON\easyax5043.c:750: goto txstreamdatacb;
	C$easyax5043.c$752$2$276 ==.
;	..\COMMON\easyax5043.c:752: case trxstate_txstream:
	sjmp	00155$
00148$:
	C$easyax5043.c$754$3$276 ==.
;	..\COMMON\easyax5043.c:754: uint8_t __autodata evt = AX5043_RADIOEVENTREQ0;
	mov	dptr,#_AX5043_RADIOEVENTREQ0
	movx	a,@dptr
	C$easyax5043.c$755$3$284 ==.
;	..\COMMON\easyax5043.c:755: if (evt & 0x03)
	mov	r7,a
	anl	a,#0x03
	jz	00150$
	C$easyax5043.c$756$3$284 ==.
;	..\COMMON\easyax5043.c:756: update_timeanchor();
	push	ar7
	lcall	_update_timeanchor
	pop	ar7
00150$:
	C$easyax5043.c$757$3$284 ==.
;	..\COMMON\easyax5043.c:757: if (evt & 0x01) {
	mov	a,r7
	jnb	acc.0,00152$
	C$easyax5043.c$758$4$285 ==.
;	..\COMMON\easyax5043.c:758: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	push	ar7
	lcall	_wtimer_remove_callback
	C$easyax5043.c$759$4$285 ==.
;	..\COMMON\easyax5043.c:759: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$760$4$285 ==.
;	..\COMMON\easyax5043.c:760: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$761$4$285 ==.
;	..\COMMON\easyax5043.c:761: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	pop	ar7
00152$:
	C$easyax5043.c$763$3$284 ==.
;	..\COMMON\easyax5043.c:763: if (evt & 0x02) {
	mov	a,r7
	jnb	acc.1,00155$
	C$easyax5043.c$764$4$286 ==.
;	..\COMMON\easyax5043.c:764: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$765$4$286 ==.
;	..\COMMON\easyax5043.c:765: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$766$4$286 ==.
;	..\COMMON\easyax5043.c:766: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$767$4$286 ==.
;	..\COMMON\easyax5043.c:767: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$770$2$276 ==.
;	..\COMMON\easyax5043.c:770: txstreamdatacb:
00155$:
	C$easyax5043.c$771$2$276 ==.
;	..\COMMON\easyax5043.c:771: if (AX5043_IRQREQUEST0 & AX5043_IRQMASK0 & 0x08) {
	mov	dptr,#_AX5043_IRQREQUEST0
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_AX5043_IRQMASK0
	movx	a,@dptr
	mov	r6,a
	anl	a,r7
	jb	acc.3,00290$
	ljmp	00167$
00290$:
	C$easyax5043.c$772$3$287 ==.
;	..\COMMON\easyax5043.c:772: AX5043_IRQMASK0 &= (uint8_t)~0x08;
	mov	dptr,#_AX5043_IRQMASK0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xf7
	anl	a,r7
	movx	@dptr,a
	C$easyax5043.c$773$3$287 ==.
;	..\COMMON\easyax5043.c:773: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$774$3$287 ==.
;	..\COMMON\easyax5043.c:774: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$775$3$287 ==.
;	..\COMMON\easyax5043.c:775: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$776$3$287 ==.
;	..\COMMON\easyax5043.c:776: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$777$3$287 ==.
;	..\COMMON\easyax5043.c:777: wtimer_add_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_add_callback
	C$easyax5043.c$779$2$276 ==.
;	..\COMMON\easyax5043.c:779: break;
	C$easyax5043.c$781$2$276 ==.
;	..\COMMON\easyax5043.c:781: case trxstate_rxwor:
	sjmp	00167$
00158$:
	C$easyax5043.c$784$2$276 ==.
;	..\COMMON\easyax5043.c:784: if( AX5043_IRQREQUEST0 & 0x80 ) // vdda ready (note irqinversion does not act upon AX5043_IRQREQUEST0)
	mov	dptr,#_AX5043_IRQREQUEST0
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00160$
	C$easyax5043.c$786$3$288 ==.
;	..\COMMON\easyax5043.c:786: AX5043_IRQINVERSION0 |= 0x80; // invert pwr irq, so it does not fire continuously
	mov	dptr,#_AX5043_IRQINVERSION0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x80
	orl	a,r7
	movx	@dptr,a
	sjmp	00161$
00160$:
	C$easyax5043.c$790$3$289 ==.
;	..\COMMON\easyax5043.c:790: AX5043_IRQINVERSION0 &= (uint8_t)~0x80; // drop pwr irq inversion --> armed again
	mov	dptr,#_AX5043_IRQINVERSION0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x7f
	anl	a,r7
	movx	@dptr,a
00161$:
	C$easyax5043.c$794$2$276 ==.
;	..\COMMON\easyax5043.c:794: if( AX5043_IRQREQUEST1 & 0x01 ) // XTAL ready
	mov	dptr,#_AX5043_IRQREQUEST1
	movx	a,@dptr
	mov	r7,a
	jnb	acc.0,00163$
	C$easyax5043.c$796$3$290 ==.
;	..\COMMON\easyax5043.c:796: AX5043_IRQINVERSION1 |= 0x01; // invert the xtal ready irq so it does not fire continuously
	mov	dptr,#_AX5043_IRQINVERSION1
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
	sjmp	00165$
00163$:
	C$easyax5043.c$800$3$291 ==.
;	..\COMMON\easyax5043.c:800: AX5043_IRQINVERSION1 &= (uint8_t)~0x01; // drop xtal ready irq inversion --> armed again for next wake-up
	mov	dptr,#_AX5043_IRQINVERSION1
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xfe
	anl	a,r7
	movx	@dptr,a
	C$easyax5043.c$801$3$291 ==.
;	..\COMMON\easyax5043.c:801: AX5043_0xF30 = f30_saved;
	mov	dptr,#_f30_saved
	movx	a,@dptr
	mov	dptr,#_AX5043_0xF30
	movx	@dptr,a
	C$easyax5043.c$802$3$291 ==.
;	..\COMMON\easyax5043.c:802: AX5043_0xF31 = f31_saved;
	mov	dptr,#_f31_saved
	movx	a,@dptr
	mov	dptr,#_AX5043_0xF31
	movx	@dptr,a
	C$easyax5043.c$803$3$291 ==.
;	..\COMMON\easyax5043.c:803: AX5043_0xF32 = f32_saved;
	mov	dptr,#_f32_saved
	movx	a,@dptr
	mov	dptr,#_AX5043_0xF32
	movx	@dptr,a
	C$easyax5043.c$804$3$291 ==.
;	..\COMMON\easyax5043.c:804: AX5043_0xF33 = f33_saved;
	mov	dptr,#_f33_saved
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_AX5043_0xF33
	movx	@dptr,a
	C$easyax5043.c$808$2$276 ==.
;	..\COMMON\easyax5043.c:808: case trxstate_rx:
00165$:
	C$easyax5043.c$809$2$276 ==.
;	..\COMMON\easyax5043.c:809: receive_isr();
	lcall	_receive_isr
	C$easyax5043.c$812$1$275 ==.
;	..\COMMON\easyax5043.c:812: } // end switch(axradio_trxstate)
00167$:
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	C$easyax5043.c$813$1$275 ==.
	XG$axradio_isr$0$0 ==.
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_receiver_on_continuous'
;------------------------------------------------------------
;rschanged_int             Allocated to registers r6 
;------------------------------------------------------------
	G$ax5043_receiver_on_continuous$0$0 ==.
	C$easyax5043.c$816$1$275 ==.
;	..\COMMON\easyax5043.c:816: __reentrantb void ax5043_receiver_on_continuous(void) __reentrant
;	-----------------------------------------
;	 function ax5043_receiver_on_continuous
;	-----------------------------------------
_ax5043_receiver_on_continuous:
	C$easyax5043.c$818$1$293 ==.
;	..\COMMON\easyax5043.c:818: uint8_t rschanged_int = (axradio_framing_enable_sfdcallback | (axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) | (axradio_mode == AXRADIO_MODE_SYNC_SLAVE) );
	mov	a,#0x33
	cjne	a,_axradio_mode,00114$
	mov	a,#0x01
	sjmp	00115$
00114$:
	clr	a
00115$:
	mov	r7,a
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	orl	ar7,a
	mov	a,#0x32
	cjne	a,_axradio_mode,00116$
	mov	a,#0x01
	sjmp	00117$
00116$:
	clr	a
00117$:
	orl	ar7,a
	C$easyax5043.c$819$1$293 ==.
;	..\COMMON\easyax5043.c:819: if(rschanged_int)
	mov	a,r7
	mov	r6,a
	jz	00102$
	C$easyax5043.c$820$1$293 ==.
;	..\COMMON\easyax5043.c:820: AX5043_RADIOEVENTMASK0 = 0x04;
	mov	dptr,#_AX5043_RADIOEVENTMASK0
	mov	a,#0x04
	movx	@dptr,a
00102$:
	C$easyax5043.c$821$1$293 ==.
;	..\COMMON\easyax5043.c:821: AX5043_RSSIREFERENCE = axradio_phy_rssireference;
	mov	dptr,#_axradio_phy_rssireference
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_AX5043_RSSIREFERENCE
	movx	@dptr,a
	C$easyax5043.c$822$1$293 ==.
;	..\COMMON\easyax5043.c:822: ax5043_set_registers_rxcont();
	push	ar6
	lcall	_ax5043_set_registers_rxcont
	pop	ar6
	C$easyax5043.c$835$1$293 ==.
;	..\COMMON\easyax5043.c:835: AX5043_PKTSTOREFLAGS &= (uint8_t)~0x40;
	mov	dptr,#_AX5043_PKTSTOREFLAGS
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xbf
	anl	a,r7
	movx	@dptr,a
	C$easyax5043.c$838$1$293 ==.
;	..\COMMON\easyax5043.c:838: AX5043_FIFOSTAT = 3; // clear FIFO data & flags
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$839$1$293 ==.
;	..\COMMON\easyax5043.c:839: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_RX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$840$1$293 ==.
;	..\COMMON\easyax5043.c:840: axradio_trxstate = trxstate_rx;
	mov	_axradio_trxstate,#0x01
	C$easyax5043.c$841$1$293 ==.
;	..\COMMON\easyax5043.c:841: if(rschanged_int)
	mov	a,r6
	jz	00104$
	C$easyax5043.c$842$1$293 ==.
;	..\COMMON\easyax5043.c:842: AX5043_IRQMASK0 = 0x41; //  enable FIFO not empty / radio controller irq
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x41
	movx	@dptr,a
	sjmp	00105$
00104$:
	C$easyax5043.c$844$1$293 ==.
;	..\COMMON\easyax5043.c:844: AX5043_IRQMASK0 = 0x01; //  enable FIFO not empty
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x01
	movx	@dptr,a
00105$:
	C$easyax5043.c$845$1$293 ==.
;	..\COMMON\easyax5043.c:845: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$846$1$293 ==.
	XG$ax5043_receiver_on_continuous$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_receiver_on_wor'
;------------------------------------------------------------
;wp                        Allocated to registers r6 r7 
;------------------------------------------------------------
	G$ax5043_receiver_on_wor$0$0 ==.
	C$easyax5043.c$848$1$293 ==.
;	..\COMMON\easyax5043.c:848: __reentrantb void ax5043_receiver_on_wor(void) __reentrant
;	-----------------------------------------
;	 function ax5043_receiver_on_wor
;	-----------------------------------------
_ax5043_receiver_on_wor:
	C$easyax5043.c$850$1$295 ==.
;	..\COMMON\easyax5043.c:850: AX5043_BGNDRSSIGAIN = 0x02;
	mov	dptr,#_AX5043_BGNDRSSIGAIN
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$851$1$295 ==.
;	..\COMMON\easyax5043.c:851: if(axradio_framing_enable_sfdcallback)
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	jz	00102$
	C$easyax5043.c$852$1$295 ==.
;	..\COMMON\easyax5043.c:852: AX5043_RADIOEVENTMASK0 = 0x04;
	mov	dptr,#_AX5043_RADIOEVENTMASK0
	mov	a,#0x04
	movx	@dptr,a
00102$:
	C$easyax5043.c$853$1$295 ==.
;	..\COMMON\easyax5043.c:853: AX5043_FIFOSTAT = 3; // clear FIFO data & flags
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$854$1$295 ==.
;	..\COMMON\easyax5043.c:854: AX5043_LPOSCCONFIG = 0x01; // start LPOSC, slow mode
	mov	dptr,#_AX5043_LPOSCCONFIG
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$855$1$295 ==.
;	..\COMMON\easyax5043.c:855: AX5043_RSSIREFERENCE = axradio_phy_rssireference;
	mov	dptr,#_axradio_phy_rssireference
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_AX5043_RSSIREFERENCE
	movx	@dptr,a
	C$easyax5043.c$856$1$295 ==.
;	..\COMMON\easyax5043.c:856: ax5043_set_registers_rxwor();
	lcall	_ax5043_set_registers_rxwor
	C$easyax5043.c$857$1$295 ==.
;	..\COMMON\easyax5043.c:857: AX5043_PKTSTOREFLAGS &= (uint8_t)~0x40;
	mov	dptr,#_AX5043_PKTSTOREFLAGS
	movx	a,@dptr
	mov	r7,a
	mov	a,#0xbf
	anl	a,r7
	movx	@dptr,a
	C$easyax5043.c$859$1$295 ==.
;	..\COMMON\easyax5043.c:859: AX5043_PWRMODE = AX5043_PWRSTATE_WOR_RX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x0b
	movx	@dptr,a
	C$easyax5043.c$860$1$295 ==.
;	..\COMMON\easyax5043.c:860: axradio_trxstate = trxstate_rxwor;
	mov	_axradio_trxstate,#0x02
	C$easyax5043.c$861$1$295 ==.
;	..\COMMON\easyax5043.c:861: if(axradio_framing_enable_sfdcallback)
	mov	dptr,#_axradio_framing_enable_sfdcallback
	clr	a
	movc	a,@a+dptr
	jz	00104$
	C$easyax5043.c$862$1$295 ==.
;	..\COMMON\easyax5043.c:862: AX5043_IRQMASK0 = 0x41; //  enable FIFO not empty / radio controller irq
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x41
	movx	@dptr,a
	sjmp	00105$
00104$:
	C$easyax5043.c$864$1$295 ==.
;	..\COMMON\easyax5043.c:864: AX5043_IRQMASK0 = 0x01; //  enable FIFO not empty
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x01
	movx	@dptr,a
00105$:
	C$easyax5043.c$866$1$295 ==.
;	..\COMMON\easyax5043.c:866: if( ( (PALTRADIO & 0x40) && ((AX5043_PINFUNCPWRAMP & 0x0F) == 0x07) ) || ( (PALTRADIO & 0x80) && ( (AX5043_PINFUNCANTSEL & 0x07 ) == 0x04 ) ) ) // pass through of TCXO_EN
	mov	dptr,#_PALTRADIO
	movx	a,@dptr
	mov	r7,a
	jnb	acc.6,00110$
	mov	dptr,#_AX5043_PINFUNCPWRAMP
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x07,00128$
	sjmp	00106$
00128$:
00110$:
	mov	dptr,#_PALTRADIO
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00107$
	mov	dptr,#_AX5043_PINFUNCANTSEL
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x07
	cjne	r7,#0x04,00107$
00106$:
	C$easyax5043.c$869$2$296 ==.
;	..\COMMON\easyax5043.c:869: AX5043_IRQMASK0 |= 0x80; // power irq (AX8052F143 WOR with TCXO)
	mov	dptr,#_AX5043_IRQMASK0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x80
	orl	a,r7
	movx	@dptr,a
	C$easyax5043.c$870$2$296 ==.
;	..\COMMON\easyax5043.c:870: AX5043_POWIRQMASK = 0x90; // interrupt when vddana ready (AX8052F143 WOR with TCXO)
	mov	dptr,#_AX5043_POWIRQMASK
	mov	a,#0x90
	movx	@dptr,a
00107$:
	C$easyax5043.c$873$1$295 ==.
;	..\COMMON\easyax5043.c:873: AX5043_IRQMASK1 = 0x01; // xtal ready
	mov	dptr,#_AX5043_IRQMASK1
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$875$2$295 ==.
;	..\COMMON\easyax5043.c:875: uint16_t wp = axradio_wor_period;
	mov	dptr,#_axradio_wor_period
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	C$easyax5043.c$876$2$297 ==.
;	..\COMMON\easyax5043.c:876: AX5043_WAKEUPFREQ1 = (wp >> 8) & 0xFF;
	mov	r7,a
	mov	r5,a
	mov	dptr,#_AX5043_WAKEUPFREQ1
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$877$2$297 ==.
;	..\COMMON\easyax5043.c:877: AX5043_WAKEUPFREQ0 = (wp >> 0) & 0xFF;  // actually wakeup period measured in LP OSC cycles
	mov	ar5,r6
	mov	dptr,#_AX5043_WAKEUPFREQ0
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$878$2$297 ==.
;	..\COMMON\easyax5043.c:878: wp += radio_read16((uint16_t)&AX5043_WAKEUPTIMER1);
	mov	dptr,#_AX5043_WAKEUPTIMER1
	lcall	_radio_read16
	mov	r4,dpl
	mov	r5,dph
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r5
	addc	a,r7
	C$easyax5043.c$879$2$297 ==.
;	..\COMMON\easyax5043.c:879: AX5043_WAKEUP1 = (wp >> 8) & 0xFF;
	mov	r5,a
	mov	dptr,#_AX5043_WAKEUP1
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$880$2$297 ==.
;	..\COMMON\easyax5043.c:880: AX5043_WAKEUP0 = (wp >> 0) & 0xFF;
	mov	dptr,#_AX5043_WAKEUP0
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$882$2$297 ==.
	XG$ax5043_receiver_on_wor$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_prepare_tx'
;------------------------------------------------------------
	G$ax5043_prepare_tx$0$0 ==.
	C$easyax5043.c$883$2$297 ==.
;	..\COMMON\easyax5043.c:883: __reentrantb void ax5043_prepare_tx(void) __reentrant
;	-----------------------------------------
;	 function ax5043_prepare_tx
;	-----------------------------------------
_ax5043_prepare_tx:
	C$easyax5043.c$885$1$299 ==.
;	..\COMMON\easyax5043.c:885: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$886$1$299 ==.
;	..\COMMON\easyax5043.c:886: AX5043_PWRMODE = AX5043_PWRSTATE_FIFO_ON;
	mov	a,#0x07
	movx	@dptr,a
	C$easyax5043.c$887$1$299 ==.
;	..\COMMON\easyax5043.c:887: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$888$1$299 ==.
;	..\COMMON\easyax5043.c:888: AX5043_FIFOTHRESH1 = 0;
	mov	dptr,#_AX5043_FIFOTHRESH1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$889$1$299 ==.
;	..\COMMON\easyax5043.c:889: AX5043_FIFOTHRESH0 = 0x80;
	mov	dptr,#_AX5043_FIFOTHRESH0
	mov	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$890$1$299 ==.
;	..\COMMON\easyax5043.c:890: axradio_trxstate = trxstate_tx_xtalwait;
	mov	_axradio_trxstate,#0x09
	C$easyax5043.c$891$1$299 ==.
;	..\COMMON\easyax5043.c:891: AX5043_IRQMASK0 = 0x00;
	mov	dptr,#_AX5043_IRQMASK0
	clr	a
	movx	@dptr,a
	C$easyax5043.c$892$1$299 ==.
;	..\COMMON\easyax5043.c:892: AX5043_IRQMASK1 = 0x01; // enable xtal ready interrupt
	mov	dptr,#_AX5043_IRQMASK1
	inc	a
	movx	@dptr,a
	C$easyax5043.c$893$1$299 ==.
;	..\COMMON\easyax5043.c:893: AX5043_POWSTICKYSTAT; // clear pwr management sticky status --> brownout gate works
	mov	dptr,#_AX5043_POWSTICKYSTAT
	movx	a,@dptr
	C$easyax5043.c$894$1$299 ==.
	XG$ax5043_prepare_tx$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_off'
;------------------------------------------------------------
	G$ax5043_off$0$0 ==.
	C$easyax5043.c$896$1$299 ==.
;	..\COMMON\easyax5043.c:896: __reentrantb void ax5043_off(void) __reentrant
;	-----------------------------------------
;	 function ax5043_off
;	-----------------------------------------
_ax5043_off:
	C$easyax5043.c$898$1$301 ==.
;	..\COMMON\easyax5043.c:898: ax5043_off_xtal();
	lcall	_ax5043_off_xtal
	C$easyax5043.c$899$1$301 ==.
;	..\COMMON\easyax5043.c:899: AX5043_PWRMODE = AX5043_PWRSTATE_POWERDOWN;
	mov	dptr,#_AX5043_PWRMODE
	clr	a
	movx	@dptr,a
	C$easyax5043.c$900$1$301 ==.
	XG$ax5043_off$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_off_xtal'
;------------------------------------------------------------
	G$ax5043_off_xtal$0$0 ==.
	C$easyax5043.c$902$1$301 ==.
;	..\COMMON\easyax5043.c:902: __reentrantb void ax5043_off_xtal(void) __reentrant
;	-----------------------------------------
;	 function ax5043_off_xtal
;	-----------------------------------------
_ax5043_off_xtal:
	C$easyax5043.c$904$1$303 ==.
;	..\COMMON\easyax5043.c:904: AX5043_IRQMASK0 = 0x00; // IRQ off
	mov	dptr,#_AX5043_IRQMASK0
	clr	a
	movx	@dptr,a
	C$easyax5043.c$905$1$303 ==.
;	..\COMMON\easyax5043.c:905: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	movx	@dptr,a
	C$easyax5043.c$906$1$303 ==.
;	..\COMMON\easyax5043.c:906: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$907$1$303 ==.
;	..\COMMON\easyax5043.c:907: AX5043_LPOSCCONFIG = 0x00; // LPOSC off
	mov	dptr,#_AX5043_LPOSCCONFIG
	clr	a
	movx	@dptr,a
	C$easyax5043.c$908$1$303 ==.
;	..\COMMON\easyax5043.c:908: axradio_trxstate = trxstate_off;
;	1-genFromRTrack replaced	mov	_axradio_trxstate,#0x00
	mov	_axradio_trxstate,a
	C$easyax5043.c$909$1$303 ==.
	XG$ax5043_off_xtal$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_wait_for_xtal'
;------------------------------------------------------------
;iesave                    Allocated to registers r7 
;------------------------------------------------------------
	G$axradio_wait_for_xtal$0$0 ==.
	C$easyax5043.c$911$1$303 ==.
;	..\COMMON\easyax5043.c:911: void axradio_wait_for_xtal(void)
;	-----------------------------------------
;	 function axradio_wait_for_xtal
;	-----------------------------------------
_axradio_wait_for_xtal:
	C$easyax5043.c$913$1$305 ==.
;	..\COMMON\easyax5043.c:913: uint8_t __autodata iesave = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r7,a
	C$easyax5043.c$914$1$305 ==.
;	..\COMMON\easyax5043.c:914: EA = 0;
	clr	_EA
	C$easyax5043.c$915$1$305 ==.
;	..\COMMON\easyax5043.c:915: axradio_trxstate = trxstate_wait_xtal;
	mov	_axradio_trxstate,#0x03
	C$easyax5043.c$916$1$305 ==.
;	..\COMMON\easyax5043.c:916: AX5043_IRQMASK1 |= 0x01; // enable xtal ready interrupt
	mov	dptr,#_AX5043_IRQMASK1
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x01
	orl	a,r6
	movx	@dptr,a
00104$:
	C$easyax5043.c$918$2$306 ==.
;	..\COMMON\easyax5043.c:918: EA = 0;
	clr	_EA
	C$easyax5043.c$919$2$306 ==.
;	..\COMMON\easyax5043.c:919: if (axradio_trxstate == trxstate_xtal_ready)
	mov	a,#0x04
	cjne	a,_axradio_trxstate,00114$
	sjmp	00103$
00114$:
	C$easyax5043.c$921$2$306 ==.
;	..\COMMON\easyax5043.c:921: wtimer_idle(WTFLAG_CANSTANDBY);
	mov	dpl,#0x02
	push	ar7
	lcall	_wtimer_idle
	C$easyax5043.c$922$2$306 ==.
;	..\COMMON\easyax5043.c:922: EA = 1;
	setb	_EA
	C$easyax5043.c$923$2$306 ==.
;	..\COMMON\easyax5043.c:923: wtimer_runcallbacks();
	lcall	_wtimer_runcallbacks
	pop	ar7
	sjmp	00104$
00103$:
	C$easyax5043.c$925$1$305 ==.
;	..\COMMON\easyax5043.c:925: IE |= iesave;
	mov	a,r7
	orl	_IE,a
	C$easyax5043.c$926$1$305 ==.
	XG$axradio_wait_for_xtal$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_setaddrregs'
;------------------------------------------------------------
;pn                        Allocated to registers r6 r7 
;inv                       Allocated to registers r5 
;------------------------------------------------------------
	Feasyax5043$axradio_setaddrregs$0$0 ==.
	C$easyax5043.c$928$1$305 ==.
;	..\COMMON\easyax5043.c:928: static void axradio_setaddrregs(void)
;	-----------------------------------------
;	 function axradio_setaddrregs
;	-----------------------------------------
_axradio_setaddrregs:
	C$easyax5043.c$930$1$308 ==.
;	..\COMMON\easyax5043.c:930: AX5043_PKTADDR0 = axradio_localaddr.addr[0];
	mov	dptr,#_axradio_localaddr
	movx	a,@dptr
	mov	dptr,#_AX5043_PKTADDR0
	movx	@dptr,a
	C$easyax5043.c$931$1$308 ==.
;	..\COMMON\easyax5043.c:931: AX5043_PKTADDR1 = axradio_localaddr.addr[1];
	mov	dptr,#(_axradio_localaddr + 0x0001)
	movx	a,@dptr
	mov	dptr,#_AX5043_PKTADDR1
	movx	@dptr,a
	C$easyax5043.c$932$1$308 ==.
;	..\COMMON\easyax5043.c:932: AX5043_PKTADDR2 = axradio_localaddr.addr[2];
	mov	dptr,#(_axradio_localaddr + 0x0002)
	movx	a,@dptr
	mov	dptr,#_AX5043_PKTADDR2
	movx	@dptr,a
	C$easyax5043.c$933$1$308 ==.
;	..\COMMON\easyax5043.c:933: AX5043_PKTADDR3 = axradio_localaddr.addr[3];
	mov	dptr,#(_axradio_localaddr + 0x0003)
	movx	a,@dptr
	mov	dptr,#_AX5043_PKTADDR3
	movx	@dptr,a
	C$easyax5043.c$935$1$308 ==.
;	..\COMMON\easyax5043.c:935: AX5043_PKTADDRMASK0 = axradio_localaddr.mask[0];
	mov	dptr,#(_axradio_localaddr + 0x0004)
	movx	a,@dptr
	mov	dptr,#_AX5043_PKTADDRMASK0
	movx	@dptr,a
	C$easyax5043.c$936$1$308 ==.
;	..\COMMON\easyax5043.c:936: AX5043_PKTADDRMASK1 = axradio_localaddr.mask[1];
	mov	dptr,#(_axradio_localaddr + 0x0005)
	movx	a,@dptr
	mov	dptr,#_AX5043_PKTADDRMASK1
	movx	@dptr,a
	C$easyax5043.c$937$1$308 ==.
;	..\COMMON\easyax5043.c:937: AX5043_PKTADDRMASK2 = axradio_localaddr.mask[2];
	mov	dptr,#(_axradio_localaddr + 0x0006)
	movx	a,@dptr
	mov	dptr,#_AX5043_PKTADDRMASK2
	movx	@dptr,a
	C$easyax5043.c$938$1$308 ==.
;	..\COMMON\easyax5043.c:938: AX5043_PKTADDRMASK3 = axradio_localaddr.mask[3];
	mov	dptr,#(_axradio_localaddr + 0x0007)
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_AX5043_PKTADDRMASK3
	movx	@dptr,a
	C$easyax5043.c$940$1$308 ==.
;	..\COMMON\easyax5043.c:940: if (axradio_phy_pn9 && axradio_framing_addrlen) {
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jnz	00117$
	ljmp	00106$
00117$:
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	jnz	00118$
	ljmp	00106$
00118$:
	C$easyax5043.c$941$2$308 ==.
;	..\COMMON\easyax5043.c:941: uint16_t __autodata pn = 0x1ff;
	mov	r6,#0xff
	mov	r7,#0x01
	C$easyax5043.c$942$2$309 ==.
;	..\COMMON\easyax5043.c:942: uint8_t __autodata inv = -(AX5043_ENCODING & 0x01);
	mov	dptr,#_AX5043_ENCODING
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x01
	clr	c
	clr	a
	subb	a,r5
	mov	r5,a
	C$easyax5043.c$943$2$309 ==.
;	..\COMMON\easyax5043.c:943: if (axradio_framing_destaddrpos != 0xff)
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xff,00119$
	sjmp	00102$
00119$:
	C$easyax5043.c$944$2$309 ==.
;	..\COMMON\easyax5043.c:944: pn = pn9_advance_bits(pn, axradio_framing_destaddrpos << 3);
	clr	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r3,a
	push	ar5
	push	ar4
	push	ar3
	mov	dptr,#0x01ff
	lcall	_pn9_advance_bits
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	pop	ar5
00102$:
	C$easyax5043.c$945$2$309 ==.
;	..\COMMON\easyax5043.c:945: AX5043_PKTADDR0 ^= pn ^ inv;
	mov	r4,#0x00
	mov	a,r5
	xrl	a,r6
	mov	r2,a
	mov	a,r4
	xrl	a,r7
	mov	r3,a
	mov	dptr,#_AX5043_PKTADDR0
	movx	a,@dptr
	mov	r1,#0x00
	xrl	ar2,a
	mov	a,r1
	xrl	ar3,a
	mov	dptr,#_AX5043_PKTADDR0
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$946$2$309 ==.
;	..\COMMON\easyax5043.c:946: pn = pn9_advance_byte(pn);
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	_pn9_advance_byte
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	C$easyax5043.c$947$2$309 ==.
;	..\COMMON\easyax5043.c:947: AX5043_PKTADDR1 ^= pn ^ inv;
	mov	a,r5
	xrl	a,r6
	mov	r2,a
	mov	a,r4
	xrl	a,r7
	mov	r3,a
	mov	dptr,#_AX5043_PKTADDR1
	movx	a,@dptr
	mov	r1,#0x00
	xrl	ar2,a
	mov	a,r1
	xrl	ar3,a
	mov	dptr,#_AX5043_PKTADDR1
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$948$2$309 ==.
;	..\COMMON\easyax5043.c:948: pn = pn9_advance_byte(pn);
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	_pn9_advance_byte
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	C$easyax5043.c$949$2$309 ==.
;	..\COMMON\easyax5043.c:949: AX5043_PKTADDR2 ^= pn ^ inv;
	mov	a,r5
	xrl	a,r6
	mov	r2,a
	mov	a,r4
	xrl	a,r7
	mov	r3,a
	mov	dptr,#_AX5043_PKTADDR2
	movx	a,@dptr
	mov	r1,#0x00
	xrl	ar2,a
	mov	a,r1
	xrl	ar3,a
	mov	dptr,#_AX5043_PKTADDR2
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$950$2$309 ==.
;	..\COMMON\easyax5043.c:950: pn = pn9_advance_byte(pn);
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	push	ar4
	lcall	_pn9_advance_byte
	mov	r6,dpl
	mov	r7,dph
	pop	ar4
	pop	ar5
	C$easyax5043.c$951$2$309 ==.
;	..\COMMON\easyax5043.c:951: AX5043_PKTADDR3 ^= pn ^ inv;
	mov	a,r5
	xrl	ar6,a
	mov	a,r4
	xrl	ar7,a
	mov	dptr,#_AX5043_PKTADDR3
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	xrl	ar6,a
	mov	a,r4
	xrl	ar7,a
	mov	dptr,#_AX5043_PKTADDR3
	mov	a,r6
	movx	@dptr,a
00106$:
	C$easyax5043.c$953$1$308 ==.
	XFeasyax5043$axradio_setaddrregs$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'ax5043_init_registers'
;------------------------------------------------------------
	Feasyax5043$ax5043_init_registers$0$0 ==.
	C$easyax5043.c$955$1$308 ==.
;	..\COMMON\easyax5043.c:955: static void ax5043_init_registers(void)
;	-----------------------------------------
;	 function ax5043_init_registers
;	-----------------------------------------
_ax5043_init_registers:
	C$easyax5043.c$957$1$311 ==.
;	..\COMMON\easyax5043.c:957: ax5043_set_registers();
	lcall	_ax5043_set_registers
	C$easyax5043.c$962$1$311 ==.
;	..\COMMON\easyax5043.c:962: AX5043_PKTLENOFFSET += axradio_framing_swcrclen; // add len offs for software CRC16 (used for both, fixed and variable length packets
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_AX5043_PKTLENOFFSET
	movx	a,@dptr
	mov	r6,a
	add	a,r7
	movx	@dptr,a
	C$easyax5043.c$963$1$311 ==.
;	..\COMMON\easyax5043.c:963: AX5043_PINFUNCIRQ = 0x03; // use as IRQ pin
	mov	dptr,#_AX5043_PINFUNCIRQ
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$964$1$311 ==.
;	..\COMMON\easyax5043.c:964: AX5043_PKTSTOREFLAGS = axradio_phy_innerfreqloop ? 0x13 : 0x15; // store RF offset, RSSI and delimiter timing
	mov	dptr,#_axradio_phy_innerfreqloop
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00103$
	mov	r7,#0x13
	sjmp	00104$
00103$:
	mov	r7,#0x15
00104$:
	mov	dptr,#_AX5043_PKTSTOREFLAGS
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$965$1$311 ==.
;	..\COMMON\easyax5043.c:965: axradio_setaddrregs();
	lcall	_axradio_setaddrregs
	C$easyax5043.c$966$1$311 ==.
	XFeasyax5043$ax5043_init_registers$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_addtime'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_addtime$0$0 ==.
	C$easyax5043.c$972$1$311 ==.
;	..\COMMON\easyax5043.c:972: static __reentrantb void axradio_sync_addtime(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_sync_addtime
;	-----------------------------------------
_axradio_sync_addtime:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$974$1$313 ==.
;	..\COMMON\easyax5043.c:974: axradio_sync_time += dt;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_axradio_sync_time
	mov	a,r4
	add	a,r0
	movx	@dptr,a
	mov	a,r5
	addc	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	addc	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$975$1$313 ==.
	XFeasyax5043$axradio_sync_addtime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_subtime'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_subtime$0$0 ==.
	C$easyax5043.c$977$1$313 ==.
;	..\COMMON\easyax5043.c:977: static __reentrantb void axradio_sync_subtime(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_sync_subtime
;	-----------------------------------------
_axradio_sync_subtime:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$979$1$315 ==.
;	..\COMMON\easyax5043.c:979: axradio_sync_time -= dt;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_axradio_sync_time
	mov	a,r0
	clr	c
	subb	a,r4
	movx	@dptr,a
	mov	a,r1
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$980$1$315 ==.
	XFeasyax5043$axradio_sync_subtime$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_settimeradv'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_settimeradv$0$0 ==.
	C$easyax5043.c$982$1$315 ==.
;	..\COMMON\easyax5043.c:982: static __reentrantb void axradio_sync_settimeradv(uint32_t dt) __reentrant
;	-----------------------------------------
;	 function axradio_sync_settimeradv
;	-----------------------------------------
_axradio_sync_settimeradv:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$984$1$317 ==.
;	..\COMMON\easyax5043.c:984: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$985$1$317 ==.
;	..\COMMON\easyax5043.c:985: axradio_timer.time -= dt;
	mov	a,r0
	clr	c
	subb	a,r4
	mov	r4,a
	mov	a,r1
	subb	a,r5
	mov	r5,a
	mov	a,r2
	subb	a,r6
	mov	r6,a
	mov	a,r3
	subb	a,r7
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$986$1$317 ==.
	XFeasyax5043$axradio_sync_settimeradv$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_adjustperiodcorr'
;------------------------------------------------------------
;dt                        Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
	C$easyax5043.c$988$1$317 ==.
;	..\COMMON\easyax5043.c:988: static void axradio_sync_adjustperiodcorr(void)
;	-----------------------------------------
;	 function axradio_sync_adjustperiodcorr
;	-----------------------------------------
_axradio_sync_adjustperiodcorr:
	C$easyax5043.c$990$1$319 ==.
;	..\COMMON\easyax5043.c:990: int32_t __autodata dt = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t) - axradio_sync_time;
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_conv_time_totimer0
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r4
	clr	c
	subb	a,r0
	mov	r4,a
	mov	a,r5
	subb	a,r1
	mov	r5,a
	mov	a,r6
	subb	a,r2
	mov	r6,a
	mov	a,r7
	subb	a,r3
	mov	r7,a
	C$easyax5043.c$991$1$319 ==.
;	..\COMMON\easyax5043.c:991: axradio_cb_receive.st.rx.phy.timeoffset = dt;
	mov	ar2,r4
	mov	ar3,r5
	mov	dptr,#(_axradio_cb_receive + 0x0010)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$992$1$319 ==.
;	..\COMMON\easyax5043.c:992: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod)) {
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_axradio_sync_slave_maxperiod
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	dpl,r2
	mov	dph,r3
	lcall	_checksignedlimit16
	mov	r3,dpl
	dec	sp
	dec	sp
	mov	a,r3
	jnz	00102$
	C$easyax5043.c$993$2$320 ==.
;	..\COMMON\easyax5043.c:993: axradio_sync_addtime(dt);
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_axradio_sync_addtime
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	C$easyax5043.c$994$2$320 ==.
;	..\COMMON\easyax5043.c:994: dt <<= SYNC_K1;
	mov	a,r7
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r6
	swap	a
	rl	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xe0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0x1f
	orl	a,r6
	mov	r6,a
	mov	a,r5
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r4
	swap	a
	rl	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xe0
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	C$easyax5043.c$995$2$320 ==.
;	..\COMMON\easyax5043.c:995: axradio_sync_periodcorr = dt;
	mov	dptr,#_axradio_sync_periodcorr
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	sjmp	00103$
00102$:
	C$easyax5043.c$997$2$321 ==.
;	..\COMMON\easyax5043.c:997: axradio_sync_periodcorr += dt;
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	ar0,r2
	mov	a,r3
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	r3,a
	mov	a,r4
	add	a,r0
	mov	r0,a
	mov	a,r5
	addc	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r2
	mov	a,r7
	addc	a,r3
	mov	dptr,#_axradio_sync_periodcorr
	mov	a,r0
	movx	@dptr,a
	mov	a,r1
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$998$2$321 ==.
;	..\COMMON\easyax5043.c:998: dt >>= SYNC_K0;
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r7
	mov	c,acc.7
	rrc	a
	mov	r7,a
	mov	a,r6
	rrc	a
	mov	r6,a
	mov	a,r5
	rrc	a
	mov	r5,a
	mov	a,r4
	rrc	a
	C$easyax5043.c$999$2$321 ==.
;	..\COMMON\easyax5043.c:999: axradio_sync_addtime(dt);
	mov	dpl,a
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_axradio_sync_addtime
00103$:
	C$easyax5043.c$1001$1$319 ==.
;	..\COMMON\easyax5043.c:1001: axradio_sync_periodcorr = signedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod);
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_slave_maxperiod
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_signedlimit16
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_axradio_sync_periodcorr
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1002$1$319 ==.
	XFeasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_sync_slave_nextperiod'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
	C$easyax5043.c$1004$1$319 ==.
;	..\COMMON\easyax5043.c:1004: static void axradio_sync_slave_nextperiod()
;	-----------------------------------------
;	 function axradio_sync_slave_nextperiod
;	-----------------------------------------
_axradio_sync_slave_nextperiod:
	C$easyax5043.c$1006$1$322 ==.
;	..\COMMON\easyax5043.c:1006: axradio_sync_addtime(axradio_sync_period);
	mov	dptr,#_axradio_sync_period
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1007$1$322 ==.
;	..\COMMON\easyax5043.c:1007: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod))
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_slave_maxperiod
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	dpl,r6
	mov	dph,r7
	lcall	_checksignedlimit16
	mov	r7,dpl
	dec	sp
	dec	sp
	mov	a,r7
	jnz	00102$
	C$easyax5043.c$1008$1$322 ==.
;	..\COMMON\easyax5043.c:1008: return;
	sjmp	00103$
00102$:
	C$easyax5043.c$1010$2$322 ==.
;	..\COMMON\easyax5043.c:1010: int16_t __autodata c = axradio_sync_periodcorr;
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	C$easyax5043.c$1011$2$323 ==.
;	..\COMMON\easyax5043.c:1011: axradio_sync_addtime(c >> SYNC_K1);
	mov	r7,a
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.2,00109$
	orl	a,#0xf8
00109$:
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_axradio_sync_addtime
00103$:
	C$easyax5043.c$1013$2$323 ==.
	XFeasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_timer_callback'
;------------------------------------------------------------
;desc                      Allocated to registers 
;r                         Allocated to registers r7 
;idx                       Allocated to registers r7 
;rs                        Allocated to registers r6 
;idx                       Allocated to registers r7 
;------------------------------------------------------------
	Feasyax5043$axradio_timer_callback$0$0 ==.
	C$easyax5043.c$1017$2$323 ==.
;	..\COMMON\easyax5043.c:1017: static void axradio_timer_callback(struct wtimer_desc __xdata *desc)
;	-----------------------------------------
;	 function axradio_timer_callback
;	-----------------------------------------
_axradio_timer_callback:
	C$easyax5043.c$1020$1$325 ==.
;	..\COMMON\easyax5043.c:1020: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x10,00266$
00266$:
	jnc	00267$
	ljmp	00177$
00267$:
	mov	a,r7
	add	a,#0xff - 0x33
	jnc	00268$
	ljmp	00177$
00268$:
	mov	a,r7
	add	a,#0xf0
	mov	r7,a
	add	a,#(00269$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00270$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00269$:
	.db	00112$
	.db	00113$
	.db	00123$
	.db	00124$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00106$
	.db	00107$
	.db	00129$
	.db	00130$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00101$
	.db	00175$
	.db	00175$
	.db	00175$
	.db	00139$
	.db	00140$
	.db	00152$
	.db	00153$
00270$:
	.db	00112$>>8
	.db	00113$>>8
	.db	00123$>>8
	.db	00124$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00101$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00175$>>8
	.db	00139$>>8
	.db	00140$>>8
	.db	00152$>>8
	.db	00153$>>8
	C$easyax5043.c$1021$2$326 ==.
;	..\COMMON\easyax5043.c:1021: case AXRADIO_MODE_STREAM_RECEIVE:
00101$:
	C$easyax5043.c$1022$2$326 ==.
;	..\COMMON\easyax5043.c:1022: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
00102$:
	C$easyax5043.c$1023$2$326 ==.
;	..\COMMON\easyax5043.c:1023: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
00103$:
	C$easyax5043.c$1024$2$326 ==.
;	..\COMMON\easyax5043.c:1024: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
00104$:
	C$easyax5043.c$1025$2$326 ==.
;	..\COMMON\easyax5043.c:1025: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
00105$:
	C$easyax5043.c$1026$2$326 ==.
;	..\COMMON\easyax5043.c:1026: case AXRADIO_MODE_ASYNC_RECEIVE:
00106$:
	C$easyax5043.c$1027$2$326 ==.
;	..\COMMON\easyax5043.c:1027: case AXRADIO_MODE_WOR_RECEIVE:
00107$:
	C$easyax5043.c$1028$2$326 ==.
;	..\COMMON\easyax5043.c:1028: if (axradio_syncstate == syncstate_asynctx)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x02,00271$
	ljmp	00114$
00271$:
	C$easyax5043.c$1030$2$326 ==.
;	..\COMMON\easyax5043.c:1030: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1031$2$326 ==.
;	..\COMMON\easyax5043.c:1031: rearmcstimer:
00110$:
	C$easyax5043.c$1032$2$326 ==.
;	..\COMMON\easyax5043.c:1032: axradio_timer.time = axradio_phy_cs_period;
	mov	dptr,#_axradio_phy_cs_period
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1033$2$326 ==.
;	..\COMMON\easyax5043.c:1033: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$1034$2$326 ==.
;	..\COMMON\easyax5043.c:1034: chanstatecb:
00111$:
	C$easyax5043.c$1035$2$326 ==.
;	..\COMMON\easyax5043.c:1035: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1036$2$326 ==.
;	..\COMMON\easyax5043.c:1036: wtimer_remove_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1037$2$326 ==.
;	..\COMMON\easyax5043.c:1037: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1039$3$326 ==.
;	..\COMMON\easyax5043.c:1039: int8_t __autodata r = AX5043_RSSI;
	mov	dptr,#_AX5043_RSSI
	movx	a,@dptr
	C$easyax5043.c$1040$3$327 ==.
;	..\COMMON\easyax5043.c:1040: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
	mov	r7,a
	mov	r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	dptr,#_axradio_phy_rssioffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	a,r5
	clr	c
	subb	a,r4
	mov	r5,a
	mov	a,r6
	subb	a,r3
	mov	r6,a
	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1041$3$327 ==.
;	..\COMMON\easyax5043.c:1041: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
	mov	dptr,#_axradio_phy_channelbusy
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	cpl	c
	mov	_axradio_timer_callback_sloc0_1_0,c
	clr	a
	rlc	a
	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
	movx	@dptr,a
	C$easyax5043.c$1043$2$326 ==.
;	..\COMMON\easyax5043.c:1043: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1044$2$326 ==.
;	..\COMMON\easyax5043.c:1044: wtimer_add_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_add_callback
	C$easyax5043.c$1045$2$326 ==.
;	..\COMMON\easyax5043.c:1045: break;
	ljmp	00177$
	C$easyax5043.c$1047$2$326 ==.
;	..\COMMON\easyax5043.c:1047: case AXRADIO_MODE_ASYNC_TRANSMIT:
00112$:
	C$easyax5043.c$1048$2$326 ==.
;	..\COMMON\easyax5043.c:1048: case AXRADIO_MODE_WOR_TRANSMIT:
00113$:
	C$easyax5043.c$1049$2$326 ==.
;	..\COMMON\easyax5043.c:1049: transmitcs:
00114$:
	C$easyax5043.c$1050$2$326 ==.
;	..\COMMON\easyax5043.c:1050: if (axradio_ack_count)
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jz	00116$
	C$easyax5043.c$1051$2$326 ==.
;	..\COMMON\easyax5043.c:1051: --axradio_ack_count;
	mov	a,r7
	dec	a
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
00116$:
	C$easyax5043.c$1052$2$326 ==.
;	..\COMMON\easyax5043.c:1052: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1053$2$326 ==.
;	..\COMMON\easyax5043.c:1053: if ((int8_t)AX5043_RSSI < axradio_phy_channelbusy ||
	mov	dptr,#_AX5043_RSSI
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_phy_channelbusy
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jc	00117$
	C$easyax5043.c$1054$2$326 ==.
;	..\COMMON\easyax5043.c:1054: (!axradio_ack_count && axradio_phy_lbt_forcetx)) {
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00118$
	mov	dptr,#_axradio_phy_lbt_forcetx
	clr	a
	movc	a,@a+dptr
	jz	00118$
00117$:
	C$easyax5043.c$1055$3$328 ==.
;	..\COMMON\easyax5043.c:1055: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1056$3$328 ==.
;	..\COMMON\easyax5043.c:1056: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1057$3$328 ==.
;	..\COMMON\easyax5043.c:1057: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$1058$3$328 ==.
;	..\COMMON\easyax5043.c:1058: goto chanstatecb;
	ljmp	00111$
00118$:
	C$easyax5043.c$1060$2$326 ==.
;	..\COMMON\easyax5043.c:1060: if (axradio_ack_count)
	mov	a,r7
	jz	00276$
	ljmp	00110$
00276$:
	C$easyax5043.c$1062$2$326 ==.
;	..\COMMON\easyax5043.c:1062: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1063$2$326 ==.
;	..\COMMON\easyax5043.c:1063: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1064$2$326 ==.
;	..\COMMON\easyax5043.c:1064: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1065$2$326 ==.
;	..\COMMON\easyax5043.c:1065: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1066$2$326 ==.
;	..\COMMON\easyax5043.c:1066: axradio_cb_transmitstart.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1067$2$326 ==.
;	..\COMMON\easyax5043.c:1067: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1068$2$326 ==.
;	..\COMMON\easyax5043.c:1068: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$1069$2$326 ==.
;	..\COMMON\easyax5043.c:1069: break;
	ljmp	00177$
	C$easyax5043.c$1071$2$326 ==.
;	..\COMMON\easyax5043.c:1071: case AXRADIO_MODE_ACK_TRANSMIT:
00123$:
	C$easyax5043.c$1072$2$326 ==.
;	..\COMMON\easyax5043.c:1072: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00124$:
	C$easyax5043.c$1073$2$326 ==.
;	..\COMMON\easyax5043.c:1073: if (axradio_syncstate == syncstate_lbt)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00277$
	ljmp	00114$
00277$:
	C$easyax5043.c$1075$2$326 ==.
;	..\COMMON\easyax5043.c:1075: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1076$2$326 ==.
;	..\COMMON\easyax5043.c:1076: if (!axradio_ack_count) {
	mov	dptr,#_axradio_ack_count
	movx	a,@dptr
	mov	r7,a
	movx	a,@dptr
	jnz	00128$
	C$easyax5043.c$1077$3$329 ==.
;	..\COMMON\easyax5043.c:1077: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1078$3$329 ==.
;	..\COMMON\easyax5043.c:1078: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1079$3$329 ==.
;	..\COMMON\easyax5043.c:1079: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1080$3$329 ==.
;	..\COMMON\easyax5043.c:1080: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1081$3$329 ==.
;	..\COMMON\easyax5043.c:1081: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	C$easyax5043.c$1082$3$329 ==.
;	..\COMMON\easyax5043.c:1082: break;
	ljmp	00177$
00128$:
	C$easyax5043.c$1084$2$326 ==.
;	..\COMMON\easyax5043.c:1084: --axradio_ack_count;
	mov	a,r7
	dec	a
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
	C$easyax5043.c$1085$2$326 ==.
;	..\COMMON\easyax5043.c:1085: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1086$2$326 ==.
;	..\COMMON\easyax5043.c:1086: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$1087$2$326 ==.
;	..\COMMON\easyax5043.c:1087: break;
	ljmp	00177$
	C$easyax5043.c$1089$2$326 ==.
;	..\COMMON\easyax5043.c:1089: case AXRADIO_MODE_ACK_RECEIVE:
00129$:
	C$easyax5043.c$1090$2$326 ==.
;	..\COMMON\easyax5043.c:1090: case AXRADIO_MODE_WOR_ACK_RECEIVE:
00130$:
	C$easyax5043.c$1091$2$326 ==.
;	..\COMMON\easyax5043.c:1091: if (axradio_syncstate == syncstate_lbt)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x01,00279$
	ljmp	00114$
00279$:
	C$easyax5043.c$1093$2$326 ==.
;	..\COMMON\easyax5043.c:1093: transmitack:
00133$:
	C$easyax5043.c$1094$2$326 ==.
;	..\COMMON\easyax5043.c:1094: AX5043_FIFOSTAT = 3;
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1095$2$326 ==.
;	..\COMMON\easyax5043.c:1095: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$1096$2$326 ==.
;	..\COMMON\easyax5043.c:1096: while (!(AX5043_POWSTAT & 0x08)); // wait for modem vdd so writing the FIFO is safe
00134$:
	mov	dptr,#_AX5043_POWSTAT
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00134$
	C$easyax5043.c$1097$2$326 ==.
;	..\COMMON\easyax5043.c:1097: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1098$2$326 ==.
;	..\COMMON\easyax5043.c:1098: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#_AX5043_RADIOEVENTREQ0
	movx	a,@dptr
	C$easyax5043.c$1099$2$326 ==.
;	..\COMMON\easyax5043.c:1099: AX5043_FIFOTHRESH1 = 0;
	mov	dptr,#_AX5043_FIFOTHRESH1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1100$2$326 ==.
;	..\COMMON\easyax5043.c:1100: AX5043_FIFOTHRESH0 = 0x80;
	mov	dptr,#_AX5043_FIFOTHRESH0
	mov	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$1101$2$326 ==.
;	..\COMMON\easyax5043.c:1101: axradio_trxstate = trxstate_tx_longpreamble;
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$1102$2$326 ==.
;	..\COMMON\easyax5043.c:1102: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1104$2$326 ==.
;	..\COMMON\easyax5043.c:1104: if ((AX5043_MODULATION & 0x0F) == 9) { // 4-FSK
	mov	dptr,#_AX5043_MODULATION
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x09,00138$
	C$easyax5043.c$1105$3$330 ==.
;	..\COMMON\easyax5043.c:1105: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0xe1
	movx	@dptr,a
	C$easyax5043.c$1106$3$330 ==.
;	..\COMMON\easyax5043.c:1106: AX5043_FIFODATA = 2;  // length (including flags)
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$1107$3$330 ==.
;	..\COMMON\easyax5043.c:1107: AX5043_FIFODATA = 0x01;  // flag PKTSTART -> dibit sync
	dec	a
	movx	@dptr,a
	C$easyax5043.c$1108$3$330 ==.
;	..\COMMON\easyax5043.c:1108: AX5043_FIFODATA = 0x11; // dummy byte for forcing dibit sync
	mov	a,#0x11
	movx	@dptr,a
00138$:
	C$easyax5043.c$1115$2$326 ==.
;	..\COMMON\easyax5043.c:1115: AX5043_IRQMASK0 = 0x08; // enable fifo free threshold
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1116$2$326 ==.
;	..\COMMON\easyax5043.c:1116: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1117$2$326 ==.
;	..\COMMON\easyax5043.c:1117: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1118$2$326 ==.
;	..\COMMON\easyax5043.c:1118: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1119$2$326 ==.
;	..\COMMON\easyax5043.c:1119: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1120$2$326 ==.
;	..\COMMON\easyax5043.c:1120: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$1121$2$326 ==.
;	..\COMMON\easyax5043.c:1121: break;
	ljmp	00177$
	C$easyax5043.c$1123$2$326 ==.
;	..\COMMON\easyax5043.c:1123: case AXRADIO_MODE_SYNC_MASTER:
00139$:
	C$easyax5043.c$1124$2$326 ==.
;	..\COMMON\easyax5043.c:1124: case AXRADIO_MODE_SYNC_ACK_MASTER:
00140$:
	C$easyax5043.c$1125$2$326 ==.
;	..\COMMON\easyax5043.c:1125: switch (axradio_syncstate) {
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x04,00283$
	sjmp	00142$
00283$:
	cjne	r7,#0x05,00284$
	ljmp	00150$
00284$:
	C$easyax5043.c$1127$3$331 ==.
;	..\COMMON\easyax5043.c:1127: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1128$3$331 ==.
;	..\COMMON\easyax5043.c:1128: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1129$3$331 ==.
;	..\COMMON\easyax5043.c:1129: axradio_syncstate = syncstate_master_xostartup;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$1130$3$331 ==.
;	..\COMMON\easyax5043.c:1130: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1131$3$331 ==.
;	..\COMMON\easyax5043.c:1131: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1132$3$331 ==.
;	..\COMMON\easyax5043.c:1132: axradio_cb_transmitdata.st.time.t = 0;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1133$3$331 ==.
;	..\COMMON\easyax5043.c:1133: wtimer_add_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_add_callback
	C$easyax5043.c$1134$3$331 ==.
;	..\COMMON\easyax5043.c:1134: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1135$3$331 ==.
;	..\COMMON\easyax5043.c:1135: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1136$3$331 ==.
;	..\COMMON\easyax5043.c:1136: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1137$3$331 ==.
;	..\COMMON\easyax5043.c:1137: break;
	ljmp	00177$
	C$easyax5043.c$1139$3$331 ==.
;	..\COMMON\easyax5043.c:1139: case syncstate_master_xostartup:
00142$:
	C$easyax5043.c$1140$3$331 ==.
;	..\COMMON\easyax5043.c:1140: AX5043_FIFOSTAT = 3;
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1141$3$331 ==.
;	..\COMMON\easyax5043.c:1141: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x0d
	movx	@dptr,a
	C$easyax5043.c$1142$3$331 ==.
;	..\COMMON\easyax5043.c:1142: while (!(AX5043_POWSTAT & 0x08)); // wait for modem vdd so writing the FIFO is safe
00143$:
	mov	dptr,#_AX5043_POWSTAT
	movx	a,@dptr
	mov	r7,a
	jnb	acc.3,00143$
	C$easyax5043.c$1143$3$331 ==.
;	..\COMMON\easyax5043.c:1143: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#_AX5043_RADIOEVENTREQ0
	movx	a,@dptr
	C$easyax5043.c$1144$3$331 ==.
;	..\COMMON\easyax5043.c:1144: AX5043_FIFOTHRESH1 = 0;
	mov	dptr,#_AX5043_FIFOTHRESH1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1145$3$331 ==.
;	..\COMMON\easyax5043.c:1145: AX5043_FIFOTHRESH0 = 0x80;
	mov	dptr,#_AX5043_FIFOTHRESH0
	mov	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$1146$3$331 ==.
;	..\COMMON\easyax5043.c:1146: axradio_trxstate = trxstate_tx_longpreamble;
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$1147$3$331 ==.
;	..\COMMON\easyax5043.c:1147: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1149$3$331 ==.
;	..\COMMON\easyax5043.c:1149: if ((AX5043_MODULATION & 0x0F) == 9) { // 4-FSK
	mov	dptr,#_AX5043_MODULATION
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0f
	cjne	r7,#0x09,00147$
	C$easyax5043.c$1150$4$332 ==.
;	..\COMMON\easyax5043.c:1150: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0xe1
	movx	@dptr,a
	C$easyax5043.c$1151$4$332 ==.
;	..\COMMON\easyax5043.c:1151: AX5043_FIFODATA = 2;  // length (including flags)
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$1152$4$332 ==.
;	..\COMMON\easyax5043.c:1152: AX5043_FIFODATA = 0x01;  // flag PKTSTART -> dibit sync
	dec	a
	movx	@dptr,a
	C$easyax5043.c$1153$4$332 ==.
;	..\COMMON\easyax5043.c:1153: AX5043_FIFODATA = 0x11; // dummy byte for forcing dibit sync
	mov	a,#0x11
	movx	@dptr,a
00147$:
	C$easyax5043.c$1160$3$331 ==.
;	..\COMMON\easyax5043.c:1160: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1161$3$331 ==.
;	..\COMMON\easyax5043.c:1161: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1162$3$331 ==.
;	..\COMMON\easyax5043.c:1162: AX5043_IRQMASK0 = 0x08; // enable fifo free threshold
	mov	dptr,#_AX5043_IRQMASK0
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1163$3$331 ==.
;	..\COMMON\easyax5043.c:1163: axradio_sync_addtime(axradio_sync_period);
	mov	dptr,#_axradio_sync_period
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1164$3$331 ==.
;	..\COMMON\easyax5043.c:1164: axradio_syncstate = syncstate_master_waitack;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1165$3$331 ==.
;	..\COMMON\easyax5043.c:1165: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER) {
	mov	a,#0x31
	cjne	a,_axradio_mode,00288$
	sjmp	00149$
00288$:
	C$easyax5043.c$1166$4$333 ==.
;	..\COMMON\easyax5043.c:1166: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1167$4$333 ==.
;	..\COMMON\easyax5043.c:1167: axradio_sync_settimeradv(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1168$4$333 ==.
;	..\COMMON\easyax5043.c:1168: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
00149$:
	C$easyax5043.c$1170$3$331 ==.
;	..\COMMON\easyax5043.c:1170: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1171$3$331 ==.
;	..\COMMON\easyax5043.c:1171: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1172$3$331 ==.
;	..\COMMON\easyax5043.c:1172: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1173$3$331 ==.
;	..\COMMON\easyax5043.c:1173: wtimer_add_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_add_callback
	C$easyax5043.c$1174$3$331 ==.
;	..\COMMON\easyax5043.c:1174: break;
	ljmp	00177$
	C$easyax5043.c$1176$3$331 ==.
;	..\COMMON\easyax5043.c:1176: case syncstate_master_waitack:
00150$:
	C$easyax5043.c$1177$3$331 ==.
;	..\COMMON\easyax5043.c:1177: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1178$3$331 ==.
;	..\COMMON\easyax5043.c:1178: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1179$3$331 ==.
;	..\COMMON\easyax5043.c:1179: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1180$3$331 ==.
;	..\COMMON\easyax5043.c:1180: axradio_sync_settimeradv(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1181$3$331 ==.
;	..\COMMON\easyax5043.c:1181: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1182$3$331 ==.
;	..\COMMON\easyax5043.c:1182: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1183$3$331 ==.
;	..\COMMON\easyax5043.c:1183: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1184$3$331 ==.
;	..\COMMON\easyax5043.c:1184: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1185$3$331 ==.
;	..\COMMON\easyax5043.c:1185: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1186$3$331 ==.
;	..\COMMON\easyax5043.c:1186: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	C$easyax5043.c$1189$2$326 ==.
;	..\COMMON\easyax5043.c:1189: break;
	ljmp	00177$
	C$easyax5043.c$1191$2$326 ==.
;	..\COMMON\easyax5043.c:1191: case AXRADIO_MODE_SYNC_SLAVE:
00152$:
	C$easyax5043.c$1192$2$326 ==.
;	..\COMMON\easyax5043.c:1192: case AXRADIO_MODE_SYNC_ACK_SLAVE:
00153$:
	C$easyax5043.c$1193$2$326 ==.
;	..\COMMON\easyax5043.c:1193: switch (axradio_syncstate) {
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov  r7,a
	add	a,#0xff - 0x0c
	jnc	00289$
	ljmp	00155$
00289$:
	mov	a,r7
	mov	b,a
	add	a,#(00290$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,b
	add	a,#(00291$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00290$:
	.db	00154$
	.db	00154$
	.db	00154$
	.db	00154$
	.db	00154$
	.db	00154$
	.db	00155$
	.db	00156$
	.db	00157$
	.db	00158$
	.db	00161$
	.db	00166$
	.db	00173$
00291$:
	.db	00154$>>8
	.db	00154$>>8
	.db	00154$>>8
	.db	00154$>>8
	.db	00154$>>8
	.db	00154$>>8
	.db	00155$>>8
	.db	00156$>>8
	.db	00157$>>8
	.db	00158$>>8
	.db	00161$>>8
	.db	00166$>>8
	.db	00173$>>8
	C$easyax5043.c$1194$3$334 ==.
;	..\COMMON\easyax5043.c:1194: default:
00154$:
	C$easyax5043.c$1195$3$334 ==.
;	..\COMMON\easyax5043.c:1195: case syncstate_slave_synchunt:
00155$:
	C$easyax5043.c$1196$3$334 ==.
;	..\COMMON\easyax5043.c:1196: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1197$3$334 ==.
;	..\COMMON\easyax5043.c:1197: axradio_syncstate = syncstate_slave_syncpause;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x07
	movx	@dptr,a
	C$easyax5043.c$1198$3$334 ==.
;	..\COMMON\easyax5043.c:1198: axradio_sync_addtime(axradio_sync_slave_syncpause);
	mov	dptr,#_axradio_sync_slave_syncpause
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1199$3$334 ==.
;	..\COMMON\easyax5043.c:1199: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1200$3$334 ==.
;	..\COMMON\easyax5043.c:1200: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1201$3$334 ==.
;	..\COMMON\easyax5043.c:1201: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1202$3$334 ==.
;	..\COMMON\easyax5043.c:1202: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1203$3$334 ==.
;	..\COMMON\easyax5043.c:1203: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x1e
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1204$3$334 ==.
;	..\COMMON\easyax5043.c:1204: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1205$3$334 ==.
;	..\COMMON\easyax5043.c:1205: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNCTIMEOUT;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x0a
	movx	@dptr,a
	C$easyax5043.c$1206$3$334 ==.
;	..\COMMON\easyax5043.c:1206: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1207$3$334 ==.
;	..\COMMON\easyax5043.c:1207: break;
	ljmp	00177$
	C$easyax5043.c$1209$3$334 ==.
;	..\COMMON\easyax5043.c:1209: case syncstate_slave_syncpause:
00156$:
	C$easyax5043.c$1210$3$334 ==.
;	..\COMMON\easyax5043.c:1210: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1211$3$334 ==.
;	..\COMMON\easyax5043.c:1211: axradio_syncstate = syncstate_slave_synchunt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x06
	movx	@dptr,a
	C$easyax5043.c$1212$3$334 ==.
;	..\COMMON\easyax5043.c:1212: axradio_sync_addtime(axradio_sync_slave_syncwindow);
	mov	dptr,#_axradio_sync_slave_syncwindow
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_addtime
	C$easyax5043.c$1213$3$334 ==.
;	..\COMMON\easyax5043.c:1213: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1214$3$334 ==.
;	..\COMMON\easyax5043.c:1214: axradio_timer.time = axradio_sync_time;
	mov	dptr,#_axradio_sync_time
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1215$3$334 ==.
;	..\COMMON\easyax5043.c:1215: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1216$3$334 ==.
;	..\COMMON\easyax5043.c:1216: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1217$3$334 ==.
;	..\COMMON\easyax5043.c:1217: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1218$3$334 ==.
;	..\COMMON\easyax5043.c:1218: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x1e
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1219$3$334 ==.
;	..\COMMON\easyax5043.c:1219: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1220$3$334 ==.
;	..\COMMON\easyax5043.c:1220: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1221$3$334 ==.
;	..\COMMON\easyax5043.c:1221: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1222$3$334 ==.
;	..\COMMON\easyax5043.c:1222: break;
	ljmp	00177$
	C$easyax5043.c$1224$3$334 ==.
;	..\COMMON\easyax5043.c:1224: case syncstate_slave_rxidle:
00157$:
	C$easyax5043.c$1225$3$334 ==.
;	..\COMMON\easyax5043.c:1225: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1226$3$334 ==.
;	..\COMMON\easyax5043.c:1226: axradio_syncstate = syncstate_slave_rxxosc;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1227$3$334 ==.
;	..\COMMON\easyax5043.c:1227: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1228$3$334 ==.
;	..\COMMON\easyax5043.c:1228: axradio_timer.time += axradio_sync_xoscstartup;
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r1,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1229$3$334 ==.
;	..\COMMON\easyax5043.c:1229: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1230$3$334 ==.
;	..\COMMON\easyax5043.c:1230: break;
	ljmp	00177$
	C$easyax5043.c$1232$3$334 ==.
;	..\COMMON\easyax5043.c:1232: case syncstate_slave_rxxosc:
00158$:
	C$easyax5043.c$1233$3$334 ==.
;	..\COMMON\easyax5043.c:1233: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1234$3$334 ==.
;	..\COMMON\easyax5043.c:1234: axradio_syncstate = syncstate_slave_rxsfdwindow;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x0a
	movx	@dptr,a
	C$easyax5043.c$1235$3$334 ==.
;	..\COMMON\easyax5043.c:1235: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1236$3$334 ==.
;	..\COMMON\easyax5043.c:1236: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1237$3$334 ==.
;	..\COMMON\easyax5043.c:1237: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x1e
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1238$3$334 ==.
;	..\COMMON\easyax5043.c:1238: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1239$3$334 ==.
;	..\COMMON\easyax5043.c:1239: axradio_cb_receive.st.error = AXRADIO_ERR_RECEIVESTART;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x0b
	movx	@dptr,a
	C$easyax5043.c$1240$3$334 ==.
;	..\COMMON\easyax5043.c:1240: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1241$3$334 ==.
;	..\COMMON\easyax5043.c:1241: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1243$4$334 ==.
;	..\COMMON\easyax5043.c:1243: uint8_t __autodata idx = axradio_sync_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1244$4$335 ==.
;	..\COMMON\easyax5043.c:1244: if (idx >= axradio_sync_slave_nrrx)
	mov	dptr,#_axradio_sync_slave_nrrx
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00160$
	C$easyax5043.c$1245$4$335 ==.
;	..\COMMON\easyax5043.c:1245: idx = axradio_sync_slave_nrrx - 1;
	mov	a,r6
	dec	a
	mov	r7,a
00160$:
	C$easyax5043.c$1246$4$335 ==.
;	..\COMMON\easyax5043.c:1246: axradio_timer.time += axradio_sync_slave_rxwindow[idx];
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_sync_slave_rxwindow
	mov	dpl,a
	mov	a,#(_axradio_sync_slave_rxwindow >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	a,r0
	add	a,r3
	mov	r3,a
	mov	a,r1
	addc	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r7
	addc	a,r6
	mov	r6,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1248$3$334 ==.
;	..\COMMON\easyax5043.c:1248: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1249$3$334 ==.
;	..\COMMON\easyax5043.c:1249: break;
	ljmp	00177$
	C$easyax5043.c$1251$3$334 ==.
;	..\COMMON\easyax5043.c:1251: case syncstate_slave_rxsfdwindow:
00161$:
	C$easyax5043.c$1253$4$334 ==.
;	..\COMMON\easyax5043.c:1253: uint8_t __autodata rs = AX5043_RADIOSTATE;
	mov	dptr,#_AX5043_RADIOSTATE
	movx	a,@dptr
	C$easyax5043.c$1254$4$336 ==.
;	..\COMMON\easyax5043.c:1254: if( !rs )
	mov	r7,a
	mov	r6,a
	jnz	00293$
	ljmp	00177$
00293$:
	C$easyax5043.c$1257$4$336 ==.
;	..\COMMON\easyax5043.c:1257: if (!(0x0F & (uint8_t)~rs)) {
	mov	a,r6
	cpl	a
	mov	r6,a
	anl	a,#0x0f
	jz	00295$
	sjmp	00166$
00295$:
	C$easyax5043.c$1258$5$337 ==.
;	..\COMMON\easyax5043.c:1258: axradio_syncstate = syncstate_slave_rxpacket;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x0b
	movx	@dptr,a
	C$easyax5043.c$1259$5$337 ==.
;	..\COMMON\easyax5043.c:1259: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1260$5$337 ==.
;	..\COMMON\easyax5043.c:1260: axradio_timer.time += axradio_sync_slave_rxtimeout;
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_slave_rxtimeout
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r1,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r2,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r3,a
	mov	a,r0
	add	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	a,r2
	addc	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1261$5$337 ==.
;	..\COMMON\easyax5043.c:1261: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1262$5$337 ==.
;	..\COMMON\easyax5043.c:1262: break;
	ljmp	00177$
	C$easyax5043.c$1267$3$334 ==.
;	..\COMMON\easyax5043.c:1267: case syncstate_slave_rxpacket:
00166$:
	C$easyax5043.c$1268$3$334 ==.
;	..\COMMON\easyax5043.c:1268: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1269$3$334 ==.
;	..\COMMON\easyax5043.c:1269: if (!axradio_sync_seqnr)
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	jnz	00168$
	C$easyax5043.c$1270$3$334 ==.
;	..\COMMON\easyax5043.c:1270: axradio_sync_seqnr = 1;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0x01
	movx	@dptr,a
00168$:
	C$easyax5043.c$1271$3$334 ==.
;	..\COMMON\easyax5043.c:1271: ++axradio_sync_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$1272$3$334 ==.
;	..\COMMON\easyax5043.c:1272: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1273$3$334 ==.
;	..\COMMON\easyax5043.c:1273: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1274$3$334 ==.
;	..\COMMON\easyax5043.c:1274: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x1e
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1275$3$334 ==.
;	..\COMMON\easyax5043.c:1275: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1276$3$334 ==.
;	..\COMMON\easyax5043.c:1276: axradio_cb_receive.st.error = AXRADIO_ERR_TIMEOUT;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1277$3$334 ==.
;	..\COMMON\easyax5043.c:1277: if (axradio_sync_seqnr <= axradio_sync_slave_resyncloss) {
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_slave_resyncloss
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	subb	a,r7
	jc	00172$
	C$easyax5043.c$1278$4$338 ==.
;	..\COMMON\easyax5043.c:1278: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1279$4$338 ==.
;	..\COMMON\easyax5043.c:1279: axradio_sync_slave_nextperiod();
	lcall	_axradio_sync_slave_nextperiod
	C$easyax5043.c$1280$4$338 ==.
;	..\COMMON\easyax5043.c:1280: axradio_syncstate = syncstate_slave_rxidle;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1281$4$338 ==.
;	..\COMMON\easyax5043.c:1281: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1283$5$338 ==.
;	..\COMMON\easyax5043.c:1283: uint8_t __autodata idx = axradio_sync_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1284$5$339 ==.
;	..\COMMON\easyax5043.c:1284: if (idx >= axradio_sync_slave_nrrx)
	mov	dptr,#_axradio_sync_slave_nrrx
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00170$
	C$easyax5043.c$1285$5$339 ==.
;	..\COMMON\easyax5043.c:1285: idx = axradio_sync_slave_nrrx - 1;
	mov	a,r6
	dec	a
	mov	r7,a
00170$:
	C$easyax5043.c$1286$5$339 ==.
;	..\COMMON\easyax5043.c:1286: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[idx]);
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_sync_slave_rxadvance
	mov	dpl,a
	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1288$4$338 ==.
;	..\COMMON\easyax5043.c:1288: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1289$4$338 ==.
;	..\COMMON\easyax5043.c:1289: break;
	ljmp	00177$
00172$:
	C$easyax5043.c$1291$3$334 ==.
;	..\COMMON\easyax5043.c:1291: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1292$3$334 ==.
;	..\COMMON\easyax5043.c:1292: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$1293$3$334 ==.
;	..\COMMON\easyax5043.c:1293: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1294$3$334 ==.
;	..\COMMON\easyax5043.c:1294: axradio_syncstate = syncstate_slave_synchunt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x06
	movx	@dptr,a
	C$easyax5043.c$1295$3$334 ==.
;	..\COMMON\easyax5043.c:1295: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1296$3$334 ==.
;	..\COMMON\easyax5043.c:1296: axradio_timer.time = axradio_sync_slave_syncwindow;
	mov	dptr,#_axradio_sync_slave_syncwindow
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1297$3$334 ==.
;	..\COMMON\easyax5043.c:1297: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$1298$3$334 ==.
;	..\COMMON\easyax5043.c:1298: axradio_sync_time = axradio_timer.time;
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1299$3$334 ==.
;	..\COMMON\easyax5043.c:1299: break;
	C$easyax5043.c$1301$3$334 ==.
;	..\COMMON\easyax5043.c:1301: case syncstate_slave_rxack:
	sjmp	00177$
00173$:
	C$easyax5043.c$1302$3$334 ==.
;	..\COMMON\easyax5043.c:1302: axradio_syncstate = syncstate_slave_rxidle;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1303$3$334 ==.
;	..\COMMON\easyax5043.c:1303: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1304$3$334 ==.
;	..\COMMON\easyax5043.c:1304: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[1]);
	mov	dptr,#(_axradio_sync_slave_rxadvance + 0x0004)
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1305$3$334 ==.
;	..\COMMON\easyax5043.c:1305: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	C$easyax5043.c$1306$3$334 ==.
;	..\COMMON\easyax5043.c:1306: goto transmitack;
	ljmp	00133$
	C$easyax5043.c$1310$2$326 ==.
;	..\COMMON\easyax5043.c:1310: default:
00175$:
	C$easyax5043.c$1312$1$325 ==.
;	..\COMMON\easyax5043.c:1312: }
00177$:
	C$easyax5043.c$1313$1$325 ==.
	XFeasyax5043$axradio_timer_callback$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_callback_fwd'
;------------------------------------------------------------
;desc                      Allocated to registers r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_callback_fwd$0$0 ==.
	C$easyax5043.c$1315$1$325 ==.
;	..\COMMON\easyax5043.c:1315: static __reentrantb void axradio_callback_fwd(struct wtimer_callback __xdata *desc) __reentrant
;	-----------------------------------------
;	 function axradio_callback_fwd
;	-----------------------------------------
_axradio_callback_fwd:
	mov	r6,dpl
	mov	r7,dph
	C$easyax5043.c$1317$1$341 ==.
;	..\COMMON\easyax5043.c:1317: axradio_statuschange((struct axradio_status __xdata *)(desc + 1));
	mov	a,#0x04
	add	a,r6
	mov	r6,a
	clr	a
	addc	a,r7
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	lcall	_axradio_statuschange
	C$easyax5043.c$1318$1$341 ==.
	XFeasyax5043$axradio_callback_fwd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_receive_callback_fwd'
;------------------------------------------------------------
;desc                      Allocated to registers 
;len                       Allocated to registers r6 r7 
;len                       Allocated to registers r6 r7 
;seqnr                     Allocated to registers r6 
;len_byte                  Allocated to registers r6 
;trxst                     Allocated to registers r6 
;iesave                    Allocated to registers r7 
;------------------------------------------------------------
	Feasyax5043$axradio_receive_callback_fwd$0$0 ==.
	C$easyax5043.c$1320$1$341 ==.
;	..\COMMON\easyax5043.c:1320: static void axradio_receive_callback_fwd(struct wtimer_callback __xdata *desc)
;	-----------------------------------------
;	 function axradio_receive_callback_fwd
;	-----------------------------------------
_axradio_receive_callback_fwd:
	C$easyax5043.c$1324$1$343 ==.
;	..\COMMON\easyax5043.c:1324: if (axradio_cb_receive.st.error != AXRADIO_ERR_NOERROR) {
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	movx	a,@dptr
	jz	00102$
	C$easyax5043.c$1325$2$344 ==.
;	..\COMMON\easyax5043.c:1325: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	lcall	_axradio_statuschange
	C$easyax5043.c$1326$2$344 ==.
;	..\COMMON\easyax5043.c:1326: return;
	ljmp	00176$
00102$:
	C$easyax5043.c$1328$1$343 ==.
;	..\COMMON\easyax5043.c:1328: if (axradio_phy_pn9 && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jz	00104$
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r7,a
	cjne	r7,#0x28,00282$
	sjmp	00104$
00282$:
	C$easyax5043.c$1329$2$345 ==.
;	..\COMMON\easyax5043.c:1329: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1330$2$345 ==.
;	..\COMMON\easyax5043.c:1330: len += axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r4,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$1331$2$345 ==.
;	..\COMMON\easyax5043.c:1331: pn9_buffer((__xdata uint8_t *)axradio_cb_receive.st.rx.mac.raw, len, 0x1ff, -(AX5043_ENCODING & 0x01));
	mov	dptr,#_AX5043_ENCODING
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x01
	clr	c
	clr	a
	subb	a,r5
	mov	r5,a
	mov	dptr,#(_axradio_cb_receive + 0x001c)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	push	ar5
	mov	a,#0xff
	push	acc
	mov	a,#0x01
	push	acc
	push	ar6
	push	ar7
	mov	dpl,r3
	mov	dph,r4
	mov	b,r2
	lcall	_pn9_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00104$:
	C$easyax5043.c$1333$1$343 ==.
;	..\COMMON\easyax5043.c:1333: if (axradio_framing_swcrclen && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	jz	00109$
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r7,a
	cjne	r7,#0x28,00284$
	sjmp	00109$
00284$:
	C$easyax5043.c$1334$2$346 ==.
;	..\COMMON\easyax5043.c:1334: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	C$easyax5043.c$1335$2$346 ==.
;	..\COMMON\easyax5043.c:1335: len += axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r4,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$1336$2$346 ==.
;	..\COMMON\easyax5043.c:1336: len = axradio_framing_check_crc((uint8_t __xdata *)axradio_cb_receive.st.rx.mac.raw, len);
	mov	dptr,#(_axradio_cb_receive + 0x001c)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	lcall	_axradio_framing_check_crc
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	C$easyax5043.c$1337$2$346 ==.
;	..\COMMON\easyax5043.c:1337: if (!len)
	mov	a,r6
	orl	a,r7
	jnz	00285$
	ljmp	00159$
00285$:
	C$easyax5043.c$1340$2$346 ==.
;	..\COMMON\easyax5043.c:1340: len -= axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	C$easyax5043.c$1341$2$346 ==.
;	..\COMMON\easyax5043.c:1341: len -= axradio_framing_swcrclen; // drop crc
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	a,r6
	clr	c
	subb	a,r5
	mov	r6,a
	mov	a,r7
	subb	a,r4
	mov	r7,a
	C$easyax5043.c$1342$2$346 ==.
;	..\COMMON\easyax5043.c:1342: axradio_cb_receive.st.rx.pktlen = len;
	mov	dptr,#(_axradio_cb_receive + 0x0020)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00109$:
	C$easyax5043.c$1346$1$343 ==.
;	..\COMMON\easyax5043.c:1346: axradio_cb_receive.st.rx.phy.timeoffset = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0010)
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1347$1$343 ==.
;	..\COMMON\easyax5043.c:1347: axradio_cb_receive.st.rx.phy.period = 0;
	mov	dptr,#(_axradio_cb_receive + 0x0012)
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1348$1$343 ==.
;	..\COMMON\easyax5043.c:1348: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
	mov	a,#0x12
	cjne	a,_axradio_mode,00286$
	sjmp	00113$
00286$:
	C$easyax5043.c$1349$1$343 ==.
;	..\COMMON\easyax5043.c:1349: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
	mov	a,#0x13
	cjne	a,_axradio_mode,00287$
	sjmp	00113$
00287$:
	C$easyax5043.c$1350$1$343 ==.
;	..\COMMON\easyax5043.c:1350: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
	mov	a,#0x31
	cjne	a,_axradio_mode,00114$
00113$:
	C$easyax5043.c$1351$2$347 ==.
;	..\COMMON\easyax5043.c:1351: ax5043_off();
	lcall	_ax5043_off
	C$easyax5043.c$1352$2$347 ==.
;	..\COMMON\easyax5043.c:1352: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1353$2$347 ==.
;	..\COMMON\easyax5043.c:1353: if (axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
	mov	a,#0x31
	cjne	a,_axradio_mode,00112$
	C$easyax5043.c$1354$3$348 ==.
;	..\COMMON\easyax5043.c:1354: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1355$3$348 ==.
;	..\COMMON\easyax5043.c:1355: axradio_sync_settimeradv(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1356$3$348 ==.
;	..\COMMON\easyax5043.c:1356: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
00112$:
	C$easyax5043.c$1358$2$347 ==.
;	..\COMMON\easyax5043.c:1358: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1359$2$347 ==.
;	..\COMMON\easyax5043.c:1359: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1360$2$347 ==.
;	..\COMMON\easyax5043.c:1360: axradio_cb_transmitend.st.time.t = radio_read24((uint16_t)&AX5043_TIMER2);
	mov	dptr,#_AX5043_TIMER2
	lcall	_radio_read24
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1361$2$347 ==.
;	..\COMMON\easyax5043.c:1361: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
00114$:
	C$easyax5043.c$1363$1$343 ==.
;	..\COMMON\easyax5043.c:1363: if (axradio_framing_destaddrpos != 0xff)
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00292$
	sjmp	00118$
00292$:
	C$easyax5043.c$1364$1$343 ==.
;	..\COMMON\easyax5043.c:1364: memcpy_xdata(&axradio_cb_receive.st.rx.mac.localaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_destaddrpos], axradio_framing_addrlen);
	mov	dptr,#(_axradio_cb_receive + 0x001c)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	_memcpy_PARM_2,r7
	mov	(_memcpy_PARM_2 + 1),r4
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_memcpy_PARM_3,r7
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0018)
	mov	b,#0x00
	lcall	_memcpy
00118$:
	C$easyax5043.c$1365$1$343 ==.
;	..\COMMON\easyax5043.c:1365: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00293$
	sjmp	00120$
00293$:
	C$easyax5043.c$1366$1$343 ==.
;	..\COMMON\easyax5043.c:1366: memcpy_xdata(&axradio_cb_receive.st.rx.mac.remoteaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_sourceaddrpos], axradio_framing_addrlen);
	mov	dptr,#(_axradio_cb_receive + 0x001c)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	r7,a
	clr	a
	addc	a,r6
	mov	r4,a
	mov	_memcpy_PARM_2,r7
	mov	(_memcpy_PARM_2 + 1),r4
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_memcpy_PARM_3,r7
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0014)
	mov	b,#0x00
	lcall	_memcpy
00120$:
	C$easyax5043.c$1367$1$343 ==.
;	..\COMMON\easyax5043.c:1367: if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
	mov	a,#0x22
	cjne	a,_axradio_mode,00294$
	sjmp	00142$
00294$:
	C$easyax5043.c$1368$1$343 ==.
;	..\COMMON\easyax5043.c:1368: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE ||
	mov	a,#0x23
	cjne	a,_axradio_mode,00295$
	sjmp	00142$
00295$:
	C$easyax5043.c$1369$1$343 ==.
;	..\COMMON\easyax5043.c:1369: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
	mov	a,#0x33
	cjne	a,_axradio_mode,00296$
	sjmp	00297$
00296$:
	ljmp	00143$
00297$:
00142$:
	C$easyax5043.c$1370$2$349 ==.
;	..\COMMON\easyax5043.c:1370: axradio_ack_count = 0;
	mov	dptr,#_axradio_ack_count
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1371$2$349 ==.
;	..\COMMON\easyax5043.c:1371: axradio_txbuffer_len = axradio_framing_maclen + axradio_framing_minpayloadlen;
	mov	dptr,#_axradio_framing_maclen
;	genFromRTrack removed	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,a
	mov	r6,#0x00
	mov	dptr,#_axradio_framing_minpayloadlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r3,#0x00
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r4
	add	a,r5
	movx	@dptr,a
	mov	a,r3
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1372$2$349 ==.
;	..\COMMON\easyax5043.c:1372: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
	mov	_memset_PARM_3,r7
;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
	mov	(_memset_PARM_3 + 1),r6
;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_2,r6
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1373$2$349 ==.
;	..\COMMON\easyax5043.c:1373: if (axradio_framing_ack_seqnrpos != 0xff) {
	mov	dptr,#_axradio_framing_ack_seqnrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00298$
	sjmp	00125$
00298$:
	C$easyax5043.c$1374$3$350 ==.
;	..\COMMON\easyax5043.c:1374: uint8_t seqnr = axradio_cb_receive.st.rx.mac.raw[axradio_framing_ack_seqnrpos];
	mov	dptr,#(_axradio_cb_receive + 0x001c)
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	add	a,r5
	mov	dpl,a
	clr	a
	addc	a,r6
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	C$easyax5043.c$1375$3$350 ==.
;	..\COMMON\easyax5043.c:1375: axradio_txbuffer[axradio_framing_ack_seqnrpos] = seqnr;
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	dph,a
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$1376$3$350 ==.
;	..\COMMON\easyax5043.c:1376: if (axradio_ack_seqnr != seqnr)
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r7,a
	cjne	a,ar6,00299$
	sjmp	00122$
00299$:
	C$easyax5043.c$1377$3$350 ==.
;	..\COMMON\easyax5043.c:1377: axradio_ack_seqnr = seqnr;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,r6
	movx	@dptr,a
	sjmp	00125$
00122$:
	C$easyax5043.c$1379$3$350 ==.
;	..\COMMON\easyax5043.c:1379: axradio_cb_receive.st.error = AXRADIO_ERR_RETRANSMISSION;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x08
	movx	@dptr,a
00125$:
	C$easyax5043.c$1381$2$349 ==.
;	..\COMMON\easyax5043.c:1381: if (axradio_framing_destaddrpos != 0xff) {
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00300$
	sjmp	00130$
00300$:
	C$easyax5043.c$1382$3$351 ==.
;	..\COMMON\easyax5043.c:1382: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	cjne	r6,#0xff,00301$
	sjmp	00127$
00301$:
	C$easyax5043.c$1383$3$351 ==.
;	..\COMMON\easyax5043.c:1383: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_cb_receive.st.rx.mac.remoteaddr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r5,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r4,#0x00
	mov	_memcpy_PARM_2,#(_axradio_cb_receive + 0x0014)
	mov	(_memcpy_PARM_2 + 1),#((_axradio_cb_receive + 0x0014) >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r4
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	_memcpy_PARM_3,r3
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r4
	mov	dpl,r5
	mov	dph,r6
	mov	b,r4
	lcall	_memcpy
	sjmp	00130$
00127$:
	C$easyax5043.c$1385$3$351 ==.
;	..\COMMON\easyax5043.c:1385: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_default_remoteaddr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r7,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r5
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	_memcpy_PARM_3,r4
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
00130$:
	C$easyax5043.c$1387$2$349 ==.
;	..\COMMON\easyax5043.c:1387: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00302$
	sjmp	00132$
00302$:
	C$easyax5043.c$1388$2$349 ==.
;	..\COMMON\easyax5043.c:1388: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r7,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	_memcpy_PARM_2,#_axradio_localaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r5
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	_memcpy_PARM_3,r4
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
00132$:
	C$easyax5043.c$1389$2$349 ==.
;	..\COMMON\easyax5043.c:1389: if (axradio_framing_lenmask) {
	mov	dptr,#_axradio_framing_lenmask
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00134$
	C$easyax5043.c$1390$3$352 ==.
;	..\COMMON\easyax5043.c:1390: uint8_t len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_axradio_framing_lenoffs
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,r6
	anl	a,r7
	mov	r6,a
	C$easyax5043.c$1391$3$352 ==.
;	..\COMMON\easyax5043.c:1391: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
	mov	dptr,#_axradio_framing_lenpos
	clr	a
	movc	a,@a+dptr
	add	a,#_axradio_txbuffer
	mov	r5,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r3
	orl	ar6,a
	mov	dpl,r5
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
00134$:
	C$easyax5043.c$1393$2$349 ==.
;	..\COMMON\easyax5043.c:1393: if (axradio_framing_swcrclen)
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	jz	00136$
	C$easyax5043.c$1394$2$349 ==.
;	..\COMMON\easyax5043.c:1394: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	lcall	_axradio_framing_append_crc
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00136$:
	C$easyax5043.c$1395$2$349 ==.
;	..\COMMON\easyax5043.c:1395: if (axradio_phy_pn9) {
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jz	00138$
	C$easyax5043.c$1396$3$353 ==.
;	..\COMMON\easyax5043.c:1396: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -(AX5043_ENCODING & 0x01));
	mov	dptr,#_AX5043_ENCODING
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	clr	c
	clr	a
	subb	a,r7
	mov	r7,a
	push	ar7
	mov	a,#0xff
	push	acc
	mov	a,#0x01
	push	acc
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	lcall	_pn9_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00138$:
	C$easyax5043.c$1398$2$349 ==.
;	..\COMMON\easyax5043.c:1398: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1399$2$349 ==.
;	..\COMMON\easyax5043.c:1399: AX5043_IRQMASK0 = 0x00;
	mov	dptr,#_AX5043_IRQMASK0
	movx	@dptr,a
	C$easyax5043.c$1400$2$349 ==.
;	..\COMMON\easyax5043.c:1400: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1401$2$349 ==.
;	..\COMMON\easyax5043.c:1401: AX5043_FIFOSTAT = 3;
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1402$2$349 ==.
;	..\COMMON\easyax5043.c:1402: axradio_trxstate = trxstate_tx_longpreamble; // ensure that trxstate != off, otherwise we would prematurely enable the receiver, see below
	mov	_axradio_trxstate,#0x0a
	C$easyax5043.c$1403$2$349 ==.
;	..\COMMON\easyax5043.c:1403: while (AX5043_POWSTAT & 0x08);
00139$:
	mov	dptr,#_AX5043_POWSTAT
	movx	a,@dptr
	mov	r7,a
	jb	acc.3,00139$
	C$easyax5043.c$1404$2$349 ==.
;	..\COMMON\easyax5043.c:1404: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1405$2$349 ==.
;	..\COMMON\easyax5043.c:1405: axradio_timer.time = axradio_framing_ack_delay;
	mov	dptr,#_axradio_framing_ack_delay
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1406$2$349 ==.
;	..\COMMON\easyax5043.c:1406: wtimer1_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer1_addrelative
00143$:
	C$easyax5043.c$1408$1$343 ==.
;	..\COMMON\easyax5043.c:1408: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
	mov	a,#0x32
	cjne	a,_axradio_mode,00307$
	sjmp	00156$
00307$:
	C$easyax5043.c$1409$1$343 ==.
;	..\COMMON\easyax5043.c:1409: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
	mov	a,#0x33
	cjne	a,_axradio_mode,00308$
	sjmp	00309$
00308$:
	ljmp	00157$
00309$:
00156$:
	C$easyax5043.c$1410$2$354 ==.
;	..\COMMON\easyax5043.c:1410: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
	mov	a,#0x33
	cjne	a,_axradio_mode,00310$
	sjmp	00147$
00310$:
	C$easyax5043.c$1411$2$354 ==.
;	..\COMMON\easyax5043.c:1411: ax5043_off();
	lcall	_ax5043_off
00147$:
	C$easyax5043.c$1412$2$354 ==.
;	..\COMMON\easyax5043.c:1412: switch (axradio_syncstate) {
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x08,00311$
	sjmp	00151$
00311$:
	cjne	r7,#0x0a,00312$
	sjmp	00151$
00312$:
	cjne	r7,#0x0b,00313$
	sjmp	00151$
00313$:
	C$easyax5043.c$1416$3$355 ==.
;	..\COMMON\easyax5043.c:1416: axradio_sync_time = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t);
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_conv_time_totimer0
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	dptr,#_axradio_sync_time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1417$3$355 ==.
;	..\COMMON\easyax5043.c:1417: axradio_sync_periodcorr = -32768;
	mov	dptr,#_axradio_sync_periodcorr
	clr	a
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1418$3$355 ==.
;	..\COMMON\easyax5043.c:1418: axradio_sync_seqnr = 0;
	mov	dptr,#_axradio_ack_seqnr
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1419$3$355 ==.
;	..\COMMON\easyax5043.c:1419: break;
	C$easyax5043.c$1423$3$355 ==.
;	..\COMMON\easyax5043.c:1423: case syncstate_slave_rxpacket:
	sjmp	00152$
00151$:
	C$easyax5043.c$1424$3$355 ==.
;	..\COMMON\easyax5043.c:1424: axradio_sync_adjustperiodcorr();
	lcall	_axradio_sync_adjustperiodcorr
	C$easyax5043.c$1425$3$355 ==.
;	..\COMMON\easyax5043.c:1425: axradio_cb_receive.st.rx.phy.period = axradio_sync_periodcorr >> SYNC_K1;
	mov	dptr,#_axradio_sync_periodcorr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	swap	a
	rr	a
	xch	a,r6
	swap	a
	rr	a
	anl	a,#0x07
	xrl	a,r6
	xch	a,r6
	anl	a,#0x07
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	jnb	acc.2,00314$
	orl	a,#0xf8
00314$:
	mov	r7,a
	mov	dptr,#(_axradio_cb_receive + 0x0012)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1426$3$355 ==.
;	..\COMMON\easyax5043.c:1426: axradio_sync_seqnr = 1;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$1428$2$354 ==.
;	..\COMMON\easyax5043.c:1428: };
00152$:
	C$easyax5043.c$1429$2$354 ==.
;	..\COMMON\easyax5043.c:1429: axradio_sync_slave_nextperiod();
	lcall	_axradio_sync_slave_nextperiod
	C$easyax5043.c$1430$2$354 ==.
;	..\COMMON\easyax5043.c:1430: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE) {
	mov	a,#0x33
	cjne	a,_axradio_mode,00315$
	sjmp	00154$
00315$:
	C$easyax5043.c$1431$3$356 ==.
;	..\COMMON\easyax5043.c:1431: axradio_syncstate = syncstate_slave_rxidle;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1432$3$356 ==.
;	..\COMMON\easyax5043.c:1432: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1433$3$356 ==.
;	..\COMMON\easyax5043.c:1433: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[axradio_sync_seqnr]);
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_sync_slave_rxadvance
	mov	dpl,a
	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	_axradio_sync_settimeradv
	C$easyax5043.c$1434$3$356 ==.
;	..\COMMON\easyax5043.c:1434: wtimer0_addabsolute(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addabsolute
	sjmp	00157$
00154$:
	C$easyax5043.c$1436$3$357 ==.
;	..\COMMON\easyax5043.c:1436: axradio_syncstate = syncstate_slave_rxack;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x0c
	movx	@dptr,a
00157$:
	C$easyax5043.c$1439$1$343 ==.
;	..\COMMON\easyax5043.c:1439: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	lcall	_axradio_statuschange
	C$easyax5043.c$1440$1$343 ==.
;	..\COMMON\easyax5043.c:1440: endcb:
00159$:
	C$easyax5043.c$1441$1$343 ==.
;	..\COMMON\easyax5043.c:1441: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE) {
	mov	a,#0x21
	cjne	a,_axradio_mode,00174$
	C$easyax5043.c$1442$2$358 ==.
;	..\COMMON\easyax5043.c:1442: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	sjmp	00176$
00174$:
	C$easyax5043.c$1443$1$343 ==.
;	..\COMMON\easyax5043.c:1443: } else if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
	mov	a,#0x22
	cjne	a,_axradio_mode,00318$
	sjmp	00169$
00318$:
	C$easyax5043.c$1444$1$343 ==.
;	..\COMMON\easyax5043.c:1444: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE) {
	mov	a,#0x23
	cjne	a,_axradio_mode,00170$
00169$:
	C$easyax5043.c$1447$3$360 ==.
;	..\COMMON\easyax5043.c:1447: uint8_t __autodata iesave = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r7,a
	C$easyax5043.c$1448$3$360 ==.
;	..\COMMON\easyax5043.c:1448: EA = 0;
	clr	_EA
	C$easyax5043.c$1449$3$360 ==.
;	..\COMMON\easyax5043.c:1449: trxst = axradio_trxstate;
	mov	r6,_axradio_trxstate
	C$easyax5043.c$1450$3$360 ==.
;	..\COMMON\easyax5043.c:1450: axradio_cb_receive.st.error = AXRADIO_ERR_PACKETDONE;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0xf0
	movx	@dptr,a
	C$easyax5043.c$1451$3$360 ==.
;	..\COMMON\easyax5043.c:1451: IE |= iesave;
	mov	a,r7
	orl	_IE,a
	C$easyax5043.c$1453$2$359 ==.
;	..\COMMON\easyax5043.c:1453: if (trxst == trxstate_off) {
	mov	a,r6
	jnz	00176$
	C$easyax5043.c$1454$3$361 ==.
;	..\COMMON\easyax5043.c:1454: if (axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
	mov	a,#0x23
	cjne	a,_axradio_mode,00161$
	C$easyax5043.c$1455$3$361 ==.
;	..\COMMON\easyax5043.c:1455: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	sjmp	00176$
00161$:
	C$easyax5043.c$1457$3$361 ==.
;	..\COMMON\easyax5043.c:1457: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	sjmp	00176$
00170$:
	C$easyax5043.c$1460$2$362 ==.
;	..\COMMON\easyax5043.c:1460: switch (axradio_trxstate) {
	mov	r7,_axradio_trxstate
	cjne	r7,#0x01,00324$
	sjmp	00166$
00324$:
	cjne	r7,#0x02,00176$
	C$easyax5043.c$1462$3$363 ==.
;	..\COMMON\easyax5043.c:1462: case trxstate_rxwor:
00166$:
	C$easyax5043.c$1463$3$363 ==.
;	..\COMMON\easyax5043.c:1463: AX5043_IRQMASK0 |= 0x01; // re-enable FIFO not empty irq
	mov	dptr,#_AX5043_IRQMASK0
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	orl	a,r7
	movx	@dptr,a
	C$easyax5043.c$1468$1$343 ==.
;	..\COMMON\easyax5043.c:1468: }
00176$:
	C$easyax5043.c$1470$1$343 ==.
	XFeasyax5043$axradio_receive_callback_fwd$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_killallcb'
;------------------------------------------------------------
	Feasyax5043$axradio_killallcb$0$0 ==.
	C$easyax5043.c$1472$1$343 ==.
;	..\COMMON\easyax5043.c:1472: static void axradio_killallcb(void)
;	-----------------------------------------
;	 function axradio_killallcb
;	-----------------------------------------
_axradio_killallcb:
	C$easyax5043.c$1474$1$365 ==.
;	..\COMMON\easyax5043.c:1474: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1475$1$365 ==.
;	..\COMMON\easyax5043.c:1475: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
	mov	dptr,#_axradio_cb_receivesfd
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1476$1$365 ==.
;	..\COMMON\easyax5043.c:1476: wtimer_remove_callback(&axradio_cb_channelstate.cb);
	mov	dptr,#_axradio_cb_channelstate
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1477$1$365 ==.
;	..\COMMON\easyax5043.c:1477: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
	mov	dptr,#_axradio_cb_transmitstart
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1478$1$365 ==.
;	..\COMMON\easyax5043.c:1478: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1479$1$365 ==.
;	..\COMMON\easyax5043.c:1479: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1480$1$365 ==.
;	..\COMMON\easyax5043.c:1480: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1481$1$365 ==.
	XFeasyax5043$axradio_killallcb$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_tunevoltage'
;------------------------------------------------------------
;r                         Allocated to registers r6 r7 
;cnt                       Allocated to registers r5 
;x                         Allocated to registers r4 r3 
;------------------------------------------------------------
	Feasyax5043$axradio_tunevoltage$0$0 ==.
	C$easyax5043.c$1507$1$365 ==.
;	..\COMMON\easyax5043.c:1507: static int16_t axradio_tunevoltage(void)
;	-----------------------------------------
;	 function axradio_tunevoltage
;	-----------------------------------------
_axradio_tunevoltage:
	C$easyax5043.c$1509$1$365 ==.
;	..\COMMON\easyax5043.c:1509: int16_t __autodata r = 0;
	mov	r6,#0x00
	mov	r7,#0x00
	C$easyax5043.c$1511$1$367 ==.
;	..\COMMON\easyax5043.c:1511: do {
	mov	r5,#0x40
00103$:
	C$easyax5043.c$1512$2$368 ==.
;	..\COMMON\easyax5043.c:1512: AX5043_GPADCCTRL = 0x84;
	mov	dptr,#_AX5043_GPADCCTRL
	mov	a,#0x84
	movx	@dptr,a
	C$easyax5043.c$1513$2$368 ==.
;	..\COMMON\easyax5043.c:1513: do {} while (AX5043_GPADCCTRL & 0x80);
00101$:
	mov	dptr,#_AX5043_GPADCCTRL
	movx	a,@dptr
	mov	r4,a
	jb	acc.7,00101$
	C$easyax5043.c$1514$1$367 ==.
;	..\COMMON\easyax5043.c:1514: } while (--cnt);
	djnz	r5,00103$
	C$easyax5043.c$1516$1$367 ==.
;	..\COMMON\easyax5043.c:1516: do {
	mov	r5,#0x20
00108$:
	C$easyax5043.c$1517$2$370 ==.
;	..\COMMON\easyax5043.c:1517: AX5043_GPADCCTRL = 0x84;
	mov	dptr,#_AX5043_GPADCCTRL
	mov	a,#0x84
	movx	@dptr,a
	C$easyax5043.c$1518$2$370 ==.
;	..\COMMON\easyax5043.c:1518: do {} while (AX5043_GPADCCTRL & 0x80);
00106$:
	mov	dptr,#_AX5043_GPADCCTRL
	movx	a,@dptr
	mov	r4,a
	jb	acc.7,00106$
	C$easyax5043.c$1520$3$372 ==.
;	..\COMMON\easyax5043.c:1520: int16_t x = AX5043_GPADC13VALUE1 & 0x03;
	mov	dptr,#_AX5043_GPADC13VALUE1
	movx	a,@dptr
	mov	r4,a
	anl	ar4,#0x03
	C$easyax5043.c$1521$3$372 ==.
;	..\COMMON\easyax5043.c:1521: x <<= 8;
	mov	ar3,r4
	mov	r4,#0x00
	C$easyax5043.c$1522$3$372 ==.
;	..\COMMON\easyax5043.c:1522: x |= AX5043_GPADC13VALUE0;
	mov	dptr,#_AX5043_GPADC13VALUE0
	movx	a,@dptr
	mov	r1,a
	mov	r2,#0x00
	mov	a,r1
	orl	ar4,a
	mov	a,r2
	orl	ar3,a
	C$easyax5043.c$1523$3$372 ==.
;	..\COMMON\easyax5043.c:1523: r += x;
	mov	a,r4
	add	a,r6
	mov	r6,a
	mov	a,r3
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$1525$1$367 ==.
;	..\COMMON\easyax5043.c:1525: } while (--cnt);
	djnz	r5,00108$
	C$easyax5043.c$1526$1$367 ==.
;	..\COMMON\easyax5043.c:1526: return r;
	mov	dpl,r6
	mov	dph,r7
	C$easyax5043.c$1527$1$367 ==.
	XFeasyax5043$axradio_tunevoltage$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_adjustvcoi'
;------------------------------------------------------------
;rng                       Allocated to registers r7 
;offs                      Allocated to registers r3 
;bestrng                   Allocated to registers r4 
;bestval                   Allocated to registers r5 r6 
;val                       Allocated to stack - _bp +1
;------------------------------------------------------------
	Feasyax5043$axradio_adjustvcoi$0$0 ==.
	C$easyax5043.c$1531$1$367 ==.
;	..\COMMON\easyax5043.c:1531: static __reentrantb uint8_t axradio_adjustvcoi(uint8_t rng) __reentrant
;	-----------------------------------------
;	 function axradio_adjustvcoi
;	-----------------------------------------
_axradio_adjustvcoi:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r7,dpl
	C$easyax5043.c$1535$1$367 ==.
;	..\COMMON\easyax5043.c:1535: uint16_t bestval = ~0;
	mov	r5,#0xff
	mov	r6,#0xff
	C$easyax5043.c$1536$1$374 ==.
;	..\COMMON\easyax5043.c:1536: rng &= 0x7F;
	anl	ar7,#0x7f
	C$easyax5043.c$1537$1$374 ==.
;	..\COMMON\easyax5043.c:1537: bestrng = rng;
	mov	ar4,r7
	C$easyax5043.c$1538$1$374 ==.
;	..\COMMON\easyax5043.c:1538: for (offs = 0; offs != 16; ++offs) {
	mov	r3,#0x00
00115$:
	C$easyax5043.c$1540$2$375 ==.
;	..\COMMON\easyax5043.c:1540: if (!((uint8_t)(rng + offs) & 0xC0)) {
	mov	a,r3
	add	a,r7
	anl	a,#0xc0
	jz	00144$
	sjmp	00104$
00144$:
	C$easyax5043.c$1541$1$374 ==.
;	..\COMMON\easyax5043.c:1541: AX5043_PLLVCOI = 0x80 | (rng + offs);
	push	ar4
	mov	a,r3
	add	a,r7
	mov	dptr,#_AX5043_PLLVCOI
	orl	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$1542$3$376 ==.
;	..\COMMON\easyax5043.c:1542: val = axradio_tunevoltage();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_axradio_tunevoltage
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	C$easyax5043.c$1543$3$376 ==.
;	..\COMMON\easyax5043.c:1543: if (val < bestval) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	pop	ar4
	jnc	00104$
	C$easyax5043.c$1544$4$377 ==.
;	..\COMMON\easyax5043.c:1544: bestval = val;
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	C$easyax5043.c$1545$4$377 ==.
;	..\COMMON\easyax5043.c:1545: bestrng = rng + offs;
	mov	a,r3
	add	a,r7
	mov	r2,a
	mov	r4,a
00104$:
	C$easyax5043.c$1548$2$375 ==.
;	..\COMMON\easyax5043.c:1548: if (!offs)
	mov	a,r3
	jz	00111$
	C$easyax5043.c$1550$2$375 ==.
;	..\COMMON\easyax5043.c:1550: if (!((uint8_t)(rng - offs) & 0xC0)) {
	mov	a,r7
	clr	c
	subb	a,r3
	anl	a,#0xc0
	jz	00148$
	sjmp	00111$
00148$:
	C$easyax5043.c$1551$1$374 ==.
;	..\COMMON\easyax5043.c:1551: AX5043_PLLVCOI = 0x80 | (rng - offs);
	push	ar4
	mov	a,r7
	clr	c
	subb	a,r3
	mov	dptr,#_AX5043_PLLVCOI
	orl	a,#0x80
	movx	@dptr,a
	C$easyax5043.c$1552$3$378 ==.
;	..\COMMON\easyax5043.c:1552: val = axradio_tunevoltage();
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	lcall	_axradio_tunevoltage
	mov	r2,dpl
	mov	r4,dph
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	r0,_bp
	inc	r0
	mov	@r0,ar2
	inc	r0
	mov	@r0,ar4
	C$easyax5043.c$1553$3$378 ==.
;	..\COMMON\easyax5043.c:1553: if (val < bestval) {
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r5
	inc	r0
	mov	a,@r0
	subb	a,r6
	pop	ar4
	jnc	00111$
	C$easyax5043.c$1554$4$379 ==.
;	..\COMMON\easyax5043.c:1554: bestval = val;
	mov	r0,_bp
	inc	r0
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	C$easyax5043.c$1555$4$379 ==.
;	..\COMMON\easyax5043.c:1555: bestrng = rng - offs;
	mov	a,r7
	clr	c
	subb	a,r3
	mov	r2,a
	mov	r4,a
00111$:
	C$easyax5043.c$1538$1$374 ==.
;	..\COMMON\easyax5043.c:1538: for (offs = 0; offs != 16; ++offs) {
	inc	r3
	cjne	r3,#0x10,00150$
	sjmp	00151$
00150$:
	ljmp	00115$
00151$:
	C$easyax5043.c$1560$1$374 ==.
;	..\COMMON\easyax5043.c:1560: if (bestval <= 0x0010)
	clr	c
	mov	a,#0x10
	subb	a,r5
	clr	a
	subb	a,r6
	jc	00114$
	C$easyax5043.c$1561$1$374 ==.
;	..\COMMON\easyax5043.c:1561: return rng | 0x80;
	mov	a,#0x80
	orl	a,r7
	mov	dpl,a
	sjmp	00116$
00114$:
	C$easyax5043.c$1562$1$374 ==.
;	..\COMMON\easyax5043.c:1562: return bestrng | 0x80;
	mov	a,#0x80
	orl	a,r4
	mov	dpl,a
00116$:
	mov	sp,_bp
	pop	_bp
	C$easyax5043.c$1563$1$374 ==.
	XFeasyax5043$axradio_adjustvcoi$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_calvcoi'
;------------------------------------------------------------
;i                         Allocated to registers r2 
;r                         Allocated to registers r7 
;vmin                      Allocated to registers r5 r6 
;vmax                      Allocated to stack - _bp +1
;curtune                   Allocated to registers r3 r4 
;------------------------------------------------------------
	Feasyax5043$axradio_calvcoi$0$0 ==.
	C$easyax5043.c$1565$1$374 ==.
;	..\COMMON\easyax5043.c:1565: static __reentrantb uint8_t axradio_calvcoi(void) __reentrant
;	-----------------------------------------
;	 function axradio_calvcoi
;	-----------------------------------------
_axradio_calvcoi:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	C$easyax5043.c$1568$1$374 ==.
;	..\COMMON\easyax5043.c:1568: uint8_t r = 0;
	mov	r7,#0x00
	C$easyax5043.c$1569$1$374 ==.
;	..\COMMON\easyax5043.c:1569: uint16_t vmin = 0xffff;
	mov	r5,#0xff
	mov	r6,#0xff
	C$easyax5043.c$1570$1$374 ==.
;	..\COMMON\easyax5043.c:1570: uint16_t vmax = 0x0000;
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
	C$easyax5043.c$1571$2$382 ==.
;	..\COMMON\easyax5043.c:1571: for (i = 0x40; i != 0;) {
	mov	r2,#0x40
00113$:
	C$easyax5043.c$1573$1$381 ==.
;	..\COMMON\easyax5043.c:1573: --i;
	push	ar7
	dec	r2
	C$easyax5043.c$1574$2$382 ==.
;	..\COMMON\easyax5043.c:1574: AX5043_PLLVCOI = 0x80 | i;
	mov	dptr,#_AX5043_PLLVCOI
	mov	a,#0x80
	orl	a,r2
	movx	@dptr,a
	C$easyax5043.c$1575$2$382 ==.
;	..\COMMON\easyax5043.c:1575: AX5043_PLLRANGINGA; // clear PLL lock loss
	mov	dptr,#_AX5043_PLLRANGINGA
	movx	a,@dptr
	C$easyax5043.c$1576$2$382 ==.
;	..\COMMON\easyax5043.c:1576: curtune = axradio_tunevoltage();
	push	ar6
	push	ar5
	push	ar2
	lcall	_axradio_tunevoltage
	mov	r7,dpl
	mov	r4,dph
	pop	ar2
	pop	ar5
	pop	ar6
	mov	ar3,r7
	C$easyax5043.c$1577$2$382 ==.
;	..\COMMON\easyax5043.c:1577: AX5043_PLLRANGINGA; // clear PLL lock loss
	mov	dptr,#_AX5043_PLLRANGINGA
	movx	a,@dptr
	C$easyax5043.c$1578$2$382 ==.
;	..\COMMON\easyax5043.c:1578: ((uint16_t __xdata *)axradio_rxbuffer)[i] = curtune;
	mov	a,r2
	mov	b,#0x02
	mul	ab
	add	a,#_axradio_rxbuffer
	mov	dpl,a
	mov	a,#(_axradio_rxbuffer >> 8)
	addc	a,b
	mov	dph,a
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1579$2$382 ==.
;	..\COMMON\easyax5043.c:1579: if (curtune > vmax)
	mov	r0,_bp
	inc	r0
	clr	c
	mov	a,@r0
	subb	a,r3
	inc	r0
	mov	a,@r0
	subb	a,r4
	pop	ar7
	jnc	00102$
	C$easyax5043.c$1580$2$382 ==.
;	..\COMMON\easyax5043.c:1580: vmax = curtune;
	mov	r0,_bp
	inc	r0
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
00102$:
	C$easyax5043.c$1581$2$382 ==.
;	..\COMMON\easyax5043.c:1581: if (curtune < vmin) {
	clr	c
	mov	a,r3
	subb	a,r5
	mov	a,r4
	subb	a,r6
	jnc	00114$
	C$easyax5043.c$1582$3$383 ==.
;	..\COMMON\easyax5043.c:1582: vmin = curtune;
	mov	ar5,r3
	mov	ar6,r4
	C$easyax5043.c$1584$3$383 ==.
;	..\COMMON\easyax5043.c:1584: if (!(0xC0 & (uint8_t)~AX5043_PLLRANGINGA))
	mov	dptr,#_AX5043_PLLRANGINGA
	movx	a,@dptr
	cpl	a
	mov	r4,a
	anl	a,#0xc0
	jz	00147$
	sjmp	00114$
00147$:
	C$easyax5043.c$1585$3$383 ==.
;	..\COMMON\easyax5043.c:1585: r = i | 0x80;
	mov	a,#0x80
	orl	a,r2
	mov	r7,a
00114$:
	C$easyax5043.c$1571$1$381 ==.
;	..\COMMON\easyax5043.c:1571: for (i = 0x40; i != 0;) {
	mov	a,r2
	jnz	00113$
	C$easyax5043.c$1588$1$381 ==.
;	..\COMMON\easyax5043.c:1588: if (!(r & 0x80) || vmax >= 0xFF00 || vmin < 0x0100 || vmax - vmin < 0x6000)
	mov	a,r7
	jnb	acc.7,00108$
	mov	r0,_bp
	inc	r0
	clr	c
	inc	r0
	mov	a,@r0
	subb	a,#0xff
	jnc	00108$
	mov	a,#0x100 - 0x01
	add	a,r6
	jnc	00108$
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	clr	c
	subb	a,r5
	mov	r5,a
	inc	r0
	mov	a,@r0
	subb	a,r6
	mov	r6,a
	clr	c
	subb	a,#0x60
	jnc	00109$
00108$:
	C$easyax5043.c$1589$1$381 ==.
;	..\COMMON\easyax5043.c:1589: return 0;
	mov	dpl,#0x00
	sjmp	00115$
00109$:
	C$easyax5043.c$1590$1$381 ==.
;	..\COMMON\easyax5043.c:1590: return r;
	mov	dpl,r7
00115$:
	mov	sp,_bp
	pop	_bp
	C$easyax5043.c$1591$1$381 ==.
	XFeasyax5043$axradio_calvcoi$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_init'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;iesave                    Allocated to registers r6 
;f                         Allocated to registers r3 r4 r5 r6 
;r                         Allocated to registers r5 
;x                         Allocated to registers r7 
;vcoisave                  Allocated with name '_axradio_init_vcoisave_3_395'
;j                         Allocated to registers r6 
;f                         Allocated to registers r0 r1 r2 r7 
;x                         Allocated to registers r7 
;chg                       Allocated to registers r5 
;f                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	G$axradio_init$0$0 ==.
	C$easyax5043.c$1597$1$381 ==.
;	..\COMMON\easyax5043.c:1597: uint8_t axradio_init(void)
;	-----------------------------------------
;	 function axradio_init
;	-----------------------------------------
_axradio_init:
	C$easyax5043.c$1600$1$385 ==.
;	..\COMMON\easyax5043.c:1600: axradio_mode = AXRADIO_MODE_UNINIT;
	mov	_axradio_mode,#0x00
	C$easyax5043.c$1601$1$385 ==.
;	..\COMMON\easyax5043.c:1601: axradio_killallcb();
	lcall	_axradio_killallcb
	C$easyax5043.c$1602$1$385 ==.
;	..\COMMON\easyax5043.c:1602: axradio_cb_receive.cb.handler = axradio_receive_callback_fwd;
	mov	dptr,#(_axradio_cb_receive + 0x0002)
	mov	a,#_axradio_receive_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_receive_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1603$1$385 ==.
;	..\COMMON\easyax5043.c:1603: axradio_cb_receive.st.status = AXRADIO_STAT_RECEIVE;
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1604$1$385 ==.
;	..\COMMON\easyax5043.c:1604: memset_xdata(axradio_cb_receive.st.rx.mac.remoteaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.remoteaddr));
;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_2,a
	mov	_memset_PARM_3,#0x04
;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
	mov	(_memset_PARM_3 + 1),a
	mov	dptr,#(_axradio_cb_receive + 0x0014)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1605$1$385 ==.
;	..\COMMON\easyax5043.c:1605: memset_xdata(axradio_cb_receive.st.rx.mac.localaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.localaddr));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x04
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0018)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$1606$1$385 ==.
;	..\COMMON\easyax5043.c:1606: axradio_cb_receivesfd.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_receivesfd + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1607$1$385 ==.
;	..\COMMON\easyax5043.c:1607: axradio_cb_receivesfd.st.status = AXRADIO_STAT_RECEIVESFD;
	mov	dptr,#(_axradio_cb_receivesfd + 0x0004)
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$1608$1$385 ==.
;	..\COMMON\easyax5043.c:1608: axradio_cb_channelstate.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_channelstate + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1609$1$385 ==.
;	..\COMMON\easyax5043.c:1609: axradio_cb_channelstate.st.status = AXRADIO_STAT_CHANNELSTATE;
	mov	dptr,#(_axradio_cb_channelstate + 0x0004)
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$1610$1$385 ==.
;	..\COMMON\easyax5043.c:1610: axradio_cb_transmitstart.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1611$1$385 ==.
;	..\COMMON\easyax5043.c:1611: axradio_cb_transmitstart.st.status = AXRADIO_STAT_TRANSMITSTART;
	mov	dptr,#(_axradio_cb_transmitstart + 0x0004)
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1612$1$385 ==.
;	..\COMMON\easyax5043.c:1612: axradio_cb_transmitend.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_transmitend + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1613$1$385 ==.
;	..\COMMON\easyax5043.c:1613: axradio_cb_transmitend.st.status = AXRADIO_STAT_TRANSMITEND;
	mov	dptr,#(_axradio_cb_transmitend + 0x0004)
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$1614$1$385 ==.
;	..\COMMON\easyax5043.c:1614: axradio_cb_transmitdata.cb.handler = axradio_callback_fwd;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0002)
	mov	a,#_axradio_callback_fwd
	movx	@dptr,a
	mov	a,#(_axradio_callback_fwd >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1615$1$385 ==.
;	..\COMMON\easyax5043.c:1615: axradio_cb_transmitdata.st.status = AXRADIO_STAT_TRANSMITDATA;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0004)
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1616$1$385 ==.
;	..\COMMON\easyax5043.c:1616: axradio_timer.handler = axradio_timer_callback;
	mov	dptr,#(_axradio_timer + 0x0002)
	mov	a,#_axradio_timer_callback
	movx	@dptr,a
	mov	a,#(_axradio_timer_callback >> 8)
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1617$1$385 ==.
;	..\COMMON\easyax5043.c:1617: axradio_curchannel = 0;
	mov	dptr,#_axradio_curchannel
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1618$1$385 ==.
;	..\COMMON\easyax5043.c:1618: axradio_curfreqoffset = 0;
	mov	dptr,#_axradio_curfreqoffset
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1619$1$385 ==.
;	..\COMMON\easyax5043.c:1619: IE_4 = 0;
	clr	_IE_4
	C$easyax5043.c$1620$1$385 ==.
;	..\COMMON\easyax5043.c:1620: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$1621$1$385 ==.
;	..\COMMON\easyax5043.c:1621: if (ax5043_reset())
	lcall	_ax5043_reset
	mov	a,dpl
	jz	00102$
	C$easyax5043.c$1622$1$385 ==.
;	..\COMMON\easyax5043.c:1622: return AXRADIO_ERR_NOCHIP;
	mov	dpl,#0x05
	ljmp	00158$
00102$:
	C$easyax5043.c$1623$1$385 ==.
;	..\COMMON\easyax5043.c:1623: ax5043_init_registers();
	lcall	_ax5043_init_registers
	C$easyax5043.c$1624$1$385 ==.
;	..\COMMON\easyax5043.c:1624: ax5043_set_registers_tx();
	lcall	_ax5043_set_registers_tx
	C$easyax5043.c$1625$1$385 ==.
;	..\COMMON\easyax5043.c:1625: AX5043_PLLLOOP = 0x09; // default 100kHz loop BW for ranging
	mov	dptr,#_AX5043_PLLLOOP
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$1626$1$385 ==.
;	..\COMMON\easyax5043.c:1626: AX5043_PLLCPI = 0x08;
	mov	dptr,#_AX5043_PLLCPI
	dec	a
	movx	@dptr,a
	C$easyax5043.c$1628$1$385 ==.
;	..\COMMON\easyax5043.c:1628: IE_4 = 1;
	setb	_IE_4
	C$easyax5043.c$1630$1$385 ==.
;	..\COMMON\easyax5043.c:1630: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$1631$1$385 ==.
;	..\COMMON\easyax5043.c:1631: AX5043_MODULATION = 0x08;
	mov	dptr,#_AX5043_MODULATION
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1632$1$385 ==.
;	..\COMMON\easyax5043.c:1632: AX5043_FSKDEV2 = 0x00;
	mov	dptr,#_AX5043_FSKDEV2
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1633$1$385 ==.
;	..\COMMON\easyax5043.c:1633: AX5043_FSKDEV1 = 0x00;
	mov	dptr,#_AX5043_FSKDEV1
	movx	@dptr,a
	C$easyax5043.c$1634$1$385 ==.
;	..\COMMON\easyax5043.c:1634: AX5043_FSKDEV0 = 0x00;
	mov	dptr,#_AX5043_FSKDEV0
	movx	@dptr,a
	C$easyax5043.c$1635$1$385 ==.
;	..\COMMON\easyax5043.c:1635: axradio_wait_for_xtal();
	lcall	_axradio_wait_for_xtal
	C$easyax5043.c$1636$3$387 ==.
;	..\COMMON\easyax5043.c:1636: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	mov	r7,#0x00
00149$:
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00266$
	ljmp	00113$
00266$:
	C$easyax5043.c$1639$3$387 ==.
;	..\COMMON\easyax5043.c:1639: uint32_t __autodata f = axradio_phy_chanfreq[i];
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_phy_chanfreq
	mov	dpl,a
	mov	a,#(_axradio_phy_chanfreq >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	C$easyax5043.c$1640$3$387 ==.
;	..\COMMON\easyax5043.c:1640: AX5043_FREQA0 = f;
	mov	dptr,#_AX5043_FREQA0
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$1641$3$387 ==.
;	..\COMMON\easyax5043.c:1641: AX5043_FREQA1 = f >> 8;
	mov	dptr,#_AX5043_FREQA1
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$1642$3$387 ==.
;	..\COMMON\easyax5043.c:1642: AX5043_FREQA2 = f >> 16;
	mov	dptr,#_AX5043_FREQA2
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$1643$3$387 ==.
;	..\COMMON\easyax5043.c:1643: AX5043_FREQA3 = f >> 24;
	mov	dptr,#_AX5043_FREQA3
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$1645$2$386 ==.
;	..\COMMON\easyax5043.c:1645: iesave = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r6,a
	C$easyax5043.c$1646$2$386 ==.
;	..\COMMON\easyax5043.c:1646: EA = 0;
	clr	_EA
	C$easyax5043.c$1647$2$386 ==.
;	..\COMMON\easyax5043.c:1647: axradio_trxstate = trxstate_pll_ranging;
	mov	_axradio_trxstate,#0x05
	C$easyax5043.c$1648$2$386 ==.
;	..\COMMON\easyax5043.c:1648: AX5043_IRQMASK1 = 0x10; // enable pll autoranging done interrupt
	mov	dptr,#_AX5043_IRQMASK1
	mov	a,#0x10
	movx	@dptr,a
	C$easyax5043.c$1651$3$388 ==.
;	..\COMMON\easyax5043.c:1651: if( !(axradio_phy_chanpllrnginit[0] & 0xF0) ) { // start values for ranging available
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	a,#0xf0
	jnz	00108$
	C$easyax5043.c$1652$4$389 ==.
;	..\COMMON\easyax5043.c:1652: r = axradio_phy_chanpllrnginit[i] | 0x10;
	mov	a,r7
	mov	dptr,#_axradio_phy_chanpllrnginit
	movc	a,@a+dptr
	mov	r5,a
	orl	ar5,#0x10
	sjmp	00109$
00108$:
	C$easyax5043.c$1655$4$390 ==.
;	..\COMMON\easyax5043.c:1655: r = 0x18;
	mov	r5,#0x18
	C$easyax5043.c$1656$4$390 ==.
;	..\COMMON\easyax5043.c:1656: if (i) {
	mov	a,r7
	jz	00109$
	C$easyax5043.c$1657$5$391 ==.
;	..\COMMON\easyax5043.c:1657: r = axradio_phy_chanpllrng[i - 1];
	mov	ar3,r7
	mov	r4,#0x00
	dec	r3
	cjne	r3,#0xff,00270$
	dec	r4
00270$:
	mov	a,r3
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	mov	a,r4
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	C$easyax5043.c$1658$5$391 ==.
;	..\COMMON\easyax5043.c:1658: if (r & 0x20)
	mov	r5,a
	jnb	acc.5,00104$
	C$easyax5043.c$1659$5$391 ==.
;	..\COMMON\easyax5043.c:1659: r = 0x08;
	mov	r5,#0x08
00104$:
	C$easyax5043.c$1660$5$391 ==.
;	..\COMMON\easyax5043.c:1660: r &= 0x0F;
	anl	ar5,#0x0f
	C$easyax5043.c$1661$5$391 ==.
;	..\COMMON\easyax5043.c:1661: r |= 0x10;
	orl	ar5,#0x10
00109$:
	C$easyax5043.c$1664$3$388 ==.
;	..\COMMON\easyax5043.c:1664: AX5043_PLLRANGINGA = r; // init ranging process starting from "range"
	mov	dptr,#_AX5043_PLLRANGINGA
	mov	a,r5
	movx	@dptr,a
00146$:
	C$easyax5043.c$1667$3$392 ==.
;	..\COMMON\easyax5043.c:1667: EA = 0;
	clr	_EA
	C$easyax5043.c$1668$3$392 ==.
;	..\COMMON\easyax5043.c:1668: if (axradio_trxstate == trxstate_pll_ranging_done)
	mov	a,#0x06
	cjne	a,_axradio_trxstate,00272$
	sjmp	00112$
00272$:
	C$easyax5043.c$1670$3$392 ==.
;	..\COMMON\easyax5043.c:1670: wtimer_idle(WTFLAG_CANSTANDBY);
	mov	dpl,#0x02
	push	ar7
	push	ar6
	lcall	_wtimer_idle
	pop	ar6
	C$easyax5043.c$1671$3$392 ==.
;	..\COMMON\easyax5043.c:1671: IE |= iesave;
	mov	a,r6
	orl	_IE,a
	C$easyax5043.c$1672$3$392 ==.
;	..\COMMON\easyax5043.c:1672: wtimer_runcallbacks();
	push	ar6
	lcall	_wtimer_runcallbacks
	pop	ar6
	pop	ar7
	sjmp	00146$
00112$:
	C$easyax5043.c$1674$2$386 ==.
;	..\COMMON\easyax5043.c:1674: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$1675$2$386 ==.
;	..\COMMON\easyax5043.c:1675: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1676$2$386 ==.
;	..\COMMON\easyax5043.c:1676: axradio_phy_chanpllrng[i] = AX5043_PLLRANGINGA;
	mov	a,r7
	add	a,#_axradio_phy_chanpllrng
	mov	r4,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	r5,a
	mov	dptr,#_AX5043_PLLRANGINGA
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
	C$easyax5043.c$1677$2$386 ==.
;	..\COMMON\easyax5043.c:1677: IE |= iesave;
	mov	a,r6
	orl	_IE,a
	C$easyax5043.c$1636$1$385 ==.
;	..\COMMON\easyax5043.c:1636: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	inc	r7
	ljmp	00149$
00113$:
	C$easyax5043.c$1680$1$385 ==.
;	..\COMMON\easyax5043.c:1680: if (axradio_phy_vcocalib) {
	mov	dptr,#_axradio_phy_vcocalib
	clr	a
	movc	a,@a+dptr
	jnz	00273$
	ljmp	00142$
00273$:
	C$easyax5043.c$1681$2$393 ==.
;	..\COMMON\easyax5043.c:1681: ax5043_set_registers_tx();
	lcall	_ax5043_set_registers_tx
	C$easyax5043.c$1682$2$393 ==.
;	..\COMMON\easyax5043.c:1682: AX5043_MODULATION = 0x08;
	mov	dptr,#_AX5043_MODULATION
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1683$2$393 ==.
;	..\COMMON\easyax5043.c:1683: AX5043_FSKDEV2 = 0x00;
	mov	dptr,#_AX5043_FSKDEV2
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1684$2$393 ==.
;	..\COMMON\easyax5043.c:1684: AX5043_FSKDEV1 = 0x00;
	mov	dptr,#_AX5043_FSKDEV1
	movx	@dptr,a
	C$easyax5043.c$1685$2$393 ==.
;	..\COMMON\easyax5043.c:1685: AX5043_FSKDEV0 = 0x00;
	mov	dptr,#_AX5043_FSKDEV0
	movx	@dptr,a
	C$easyax5043.c$1686$2$393 ==.
;	..\COMMON\easyax5043.c:1686: AX5043_PLLLOOP |= 0x04;
	mov	dptr,#_AX5043_PLLLOOP
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x04
	orl	a,r7
	movx	@dptr,a
	C$easyax5043.c$1688$3$393 ==.
;	..\COMMON\easyax5043.c:1688: uint8_t x = AX5043_0xF35;
	mov	dptr,#_AX5043_0xF35
	movx	a,@dptr
	C$easyax5043.c$1689$3$394 ==.
;	..\COMMON\easyax5043.c:1689: x |= 0x80;
	C$easyax5043.c$1690$3$394 ==.
;	..\COMMON\easyax5043.c:1690: if (2 & (uint8_t)~x)
	orl	a,#0x80
	mov	r7,a
	cpl	a
	mov	r6,a
	jnb	acc.1,00115$
	C$easyax5043.c$1691$3$394 ==.
;	..\COMMON\easyax5043.c:1691: ++x;
	inc	r7
00115$:
	C$easyax5043.c$1692$3$394 ==.
;	..\COMMON\easyax5043.c:1692: AX5043_0xF35 = x;
	mov	dptr,#_AX5043_0xF35
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1694$2$393 ==.
;	..\COMMON\easyax5043.c:1694: AX5043_PWRMODE = AX5043_PWRSTATE_SYNTH_TX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x0c
	movx	@dptr,a
	C$easyax5043.c$1696$3$393 ==.
;	..\COMMON\easyax5043.c:1696: uint8_t __autodata vcoisave = AX5043_PLLVCOI;
	mov	dptr,#_AX5043_PLLVCOI
	movx	a,@dptr
	mov	_axradio_init_vcoisave_3_395,a
	C$easyax5043.c$1697$3$393 ==.
;	..\COMMON\easyax5043.c:1697: uint8_t j = 2;
	mov	r6,#0x02
	C$easyax5043.c$1698$5$398 ==.
;	..\COMMON\easyax5043.c:1698: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	mov	r5,#0x00
00152$:
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r4
	jc	00275$
	ljmp	00127$
00275$:
	C$easyax5043.c$1699$4$396 ==.
;	..\COMMON\easyax5043.c:1699: axradio_phy_chanvcoi[i] = 0;
	mov	a,r5
	add	a,#_axradio_phy_chanvcoi
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	dph,a
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1700$4$396 ==.
;	..\COMMON\easyax5043.c:1700: if (axradio_phy_chanpllrng[i] & 0x20)
	mov	a,r5
	add	a,#_axradio_phy_chanpllrng
	mov	r3,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	jnb	acc.5,00276$
	ljmp	00126$
00276$:
	C$easyax5043.c$1702$4$396 ==.
;	..\COMMON\easyax5043.c:1702: AX5043_PLLRANGINGA = axradio_phy_chanpllrng[i] & 0x0F;
	mov	dptr,#_AX5043_PLLRANGINGA
	mov	a,#0x0f
	anl	a,r2
	movx	@dptr,a
	C$easyax5043.c$1704$5$397 ==.
;	..\COMMON\easyax5043.c:1704: uint32_t __autodata f = axradio_phy_chanfreq[i];
	mov	a,r5
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_phy_chanfreq
	mov	dpl,a
	mov	a,#(_axradio_phy_chanfreq >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	C$easyax5043.c$1705$5$397 ==.
;	..\COMMON\easyax5043.c:1705: AX5043_FREQA0 = f;
	mov	dptr,#_AX5043_FREQA0
	mov	a,r0
	movx	@dptr,a
	C$easyax5043.c$1706$5$397 ==.
;	..\COMMON\easyax5043.c:1706: AX5043_FREQA1 = f >> 8;
	mov	dptr,#_AX5043_FREQA1
	mov	a,r1
	movx	@dptr,a
	C$easyax5043.c$1707$5$397 ==.
;	..\COMMON\easyax5043.c:1707: AX5043_FREQA2 = f >> 16;
	mov	dptr,#_AX5043_FREQA2
	mov	a,r2
	movx	@dptr,a
	C$easyax5043.c$1708$5$397 ==.
;	..\COMMON\easyax5043.c:1708: AX5043_FREQA3 = f >> 24;
	mov	dptr,#_AX5043_FREQA3
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1710$4$396 ==.
;	..\COMMON\easyax5043.c:1710: do {
00123$:
	C$easyax5043.c$1711$5$398 ==.
;	..\COMMON\easyax5043.c:1711: if (axradio_phy_chanvcoiinit[0]) {
	mov	dptr,#_axradio_phy_chanvcoiinit
	clr	a
	movc	a,@a+dptr
	jz	00121$
	C$easyax5043.c$1712$6$399 ==.
;	..\COMMON\easyax5043.c:1712: uint8_t x = axradio_phy_chanvcoiinit[i];
	mov	a,r5
	mov	dptr,#_axradio_phy_chanvcoiinit
	movc	a,@a+dptr
	mov	r7,a
	C$easyax5043.c$1713$6$399 ==.
;	..\COMMON\easyax5043.c:1713: if (!(axradio_phy_chanpllrnginit[0] & 0xF0))
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	anl	a,#0xf0
	jnz	00119$
	C$easyax5043.c$1714$6$399 ==.
;	..\COMMON\easyax5043.c:1714: x += (axradio_phy_chanpllrng[i] & 0x0F) - (axradio_phy_chanpllrnginit[i] & 0x0F);
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r2,a
	anl	ar2,#0x0f
	mov	a,r5
	mov	dptr,#_axradio_phy_chanpllrnginit
	movc	a,@a+dptr
	mov	r1,a
	mov	a,#0x0f
	anl	a,r1
	setb	c
	subb	a,r2
	cpl	a
	add	a,r7
	mov	r7,a
00119$:
	C$easyax5043.c$1715$6$399 ==.
;	..\COMMON\easyax5043.c:1715: axradio_phy_chanvcoi[i] = axradio_adjustvcoi(x);
	mov	a,r5
	add	a,#_axradio_phy_chanvcoi
	mov	r1,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	r2,a
	mov	dpl,r7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	lcall	_axradio_adjustvcoi
	mov	r7,dpl
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	mov	dpl,r1
	mov	dph,r2
	mov	a,r7
	movx	@dptr,a
	sjmp	00124$
00121$:
	C$easyax5043.c$1717$6$400 ==.
;	..\COMMON\easyax5043.c:1717: axradio_phy_chanvcoi[i] = axradio_calvcoi();
	mov	a,r5
	add	a,#_axradio_phy_chanvcoi
	mov	r2,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	r7,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_axradio_calvcoi
	mov	r1,dpl
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r2
	mov	dph,r7
	mov	a,r1
	movx	@dptr,a
00124$:
	C$easyax5043.c$1719$4$396 ==.
;	..\COMMON\easyax5043.c:1719: } while (--j);
	mov	a,r6
	dec	a
	mov	r7,a
	mov	r6,a
	jz	00280$
	ljmp	00123$
00280$:
	C$easyax5043.c$1720$4$396 ==.
;	..\COMMON\easyax5043.c:1720: j = 1;
	mov	r6,#0x01
00126$:
	C$easyax5043.c$1698$3$395 ==.
;	..\COMMON\easyax5043.c:1698: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	inc	r5
	ljmp	00152$
00127$:
	C$easyax5043.c$1740$3$395 ==.
;	..\COMMON\easyax5043.c:1740: AX5043_PLLVCOI = vcoisave;
	mov	dptr,#_AX5043_PLLVCOI
	mov	a,_axradio_init_vcoisave_3_395
	movx	@dptr,a
	C$easyax5043.c$1743$2$393 ==.
;	..\COMMON\easyax5043.c:1743: if (DBGLNKSTAT & 0x10) {
	mov	a,_DBGLNKSTAT
	jb	acc.4,00281$
	ljmp	00142$
00281$:
	C$easyax5043.c$1744$4$402 ==.
;	..\COMMON\easyax5043.c:1744: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	mov	r7,#0x00
00154$:
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00282$
	ljmp	00142$
00282$:
	C$easyax5043.c$1745$4$402 ==.
;	..\COMMON\easyax5043.c:1745: uint8_t chg = ((axradio_phy_chanpllrnginit[0] & 0xF0) || axradio_phy_chanpllrnginit[i] != axradio_phy_chanpllrng[i])
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	anl	a,#0xf0
	jnz	00161$
	mov	a,r7
	mov	dptr,#_axradio_phy_chanpllrnginit
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r7
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	a,r6
	cjne	a,ar5,00285$
	setb	c
	sjmp	00286$
00285$:
	clr	c
00286$:
	mov	_axradio_init_sloc0_1_0,c
	jnc	00161$
	mov	dptr,#_axradio_phy_chanvcoiinit
	clr	a
	movc	a,@a+dptr
	jz	00161$
	mov	a,r7
	mov	dptr,#_axradio_phy_chanvcoiinit
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r7
	add	a,#_axradio_phy_chanvcoi
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	xrl	a,r6
	anl	a,#0x7f
	jnz	00161$
	clr	_axradio_init_sloc0_1_0
	sjmp	00162$
00161$:
	setb	_axradio_init_sloc0_1_0
00162$:
	mov	c,_axradio_init_sloc0_1_0
	clr	a
	rlc	a
	C$easyax5043.c$1747$4$402 ==.
;	..\COMMON\easyax5043.c:1747: if (1 && !chg)
	mov	r6,a
	mov	r5,a
	jnz	00291$
	ljmp	00137$
00291$:
	C$easyax5043.c$1749$4$402 ==.
;	..\COMMON\easyax5043.c:1749: dbglink_writestr("CH ");
	mov	dptr,#___str_0
	mov	b,#0x80
	push	ar7
	push	ar5
	lcall	_dbglink_writestr
	pop	ar5
	pop	ar7
	C$easyax5043.c$1750$4$402 ==.
;	..\COMMON\easyax5043.c:1750: dbglink_writenum16(i, 0, 0);
	mov	ar4,r7
	mov	r6,#0x00
	push	ar7
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r4
	mov	dph,r6
	lcall	_dbglink_writenum16
	dec	sp
	dec	sp
	C$easyax5043.c$1751$4$402 ==.
;	..\COMMON\easyax5043.c:1751: dbglink_writestr(" RNG ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_dbglink_writestr
	pop	ar5
	pop	ar7
	C$easyax5043.c$1752$4$402 ==.
;	..\COMMON\easyax5043.c:1752: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	anl	a,#0xf0
	jnz	00132$
	C$easyax5043.c$1753$5$403 ==.
;	..\COMMON\easyax5043.c:1753: dbglink_writenum16(axradio_phy_chanpllrnginit[i], 0, 0);
	mov	a,r7
	mov	dptr,#_axradio_phy_chanpllrnginit
	movc	a,@a+dptr
	mov	r6,a
	mov	r4,#0x00
	push	ar7
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r6
	mov	dph,r4
	lcall	_dbglink_writenum16
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	C$easyax5043.c$1754$5$403 ==.
;	..\COMMON\easyax5043.c:1754: dbglink_tx('/');
	mov	dpl,#0x2f
	lcall	_dbglink_tx
00132$:
	C$easyax5043.c$1756$4$402 ==.
;	..\COMMON\easyax5043.c:1756: dbglink_writenum16(axradio_phy_chanpllrng[i], 0, 0);
	mov	a,r7
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	push	ar7
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r6
	mov	dph,r4
	lcall	_dbglink_writenum16
	dec	sp
	dec	sp
	C$easyax5043.c$1757$4$402 ==.
;	..\COMMON\easyax5043.c:1757: dbglink_writestr(" VCOI ");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_dbglink_writestr
	pop	ar5
	pop	ar7
	C$easyax5043.c$1758$4$402 ==.
;	..\COMMON\easyax5043.c:1758: if (axradio_phy_chanvcoiinit[0]) {
	mov	dptr,#_axradio_phy_chanvcoiinit
	clr	a
	movc	a,@a+dptr
	jz	00134$
	C$easyax5043.c$1759$5$404 ==.
;	..\COMMON\easyax5043.c:1759: dbglink_writenum16(axradio_phy_chanvcoiinit[i] & 0x7F, 0, 0);
	mov	a,r7
	mov	dptr,#_axradio_phy_chanvcoiinit
	movc	a,@a+dptr
	mov	r6,a
	anl	ar6,#0x7f
	mov	r4,#0x00
	push	ar7
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r6
	mov	dph,r4
	lcall	_dbglink_writenum16
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	C$easyax5043.c$1760$5$404 ==.
;	..\COMMON\easyax5043.c:1760: dbglink_tx('/');
	mov	dpl,#0x2f
	lcall	_dbglink_tx
00134$:
	C$easyax5043.c$1762$4$402 ==.
;	..\COMMON\easyax5043.c:1762: dbglink_writenum16(axradio_phy_chanvcoi[i] & 0x7F, 0, 0);
	mov	a,r7
	add	a,#_axradio_phy_chanvcoi
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	anl	ar6,#0x7f
	mov	r4,#0x00
	push	ar7
	push	ar5
	clr	a
	push	acc
	push	acc
	mov	dpl,r6
	mov	dph,r4
	lcall	_dbglink_writenum16
	dec	sp
	dec	sp
	pop	ar5
	pop	ar7
	C$easyax5043.c$1763$4$402 ==.
;	..\COMMON\easyax5043.c:1763: if (chg)
	mov	a,r5
	jz	00136$
	C$easyax5043.c$1764$4$402 ==.
;	..\COMMON\easyax5043.c:1764: dbglink_writestr(" *");
	mov	dptr,#___str_3
	mov	b,#0x80
	push	ar7
	lcall	_dbglink_writestr
	pop	ar7
00136$:
	C$easyax5043.c$1765$4$402 ==.
;	..\COMMON\easyax5043.c:1765: dbglink_tx('\n');
	mov	dpl,#0x0a
	lcall	_dbglink_tx
00137$:
	C$easyax5043.c$1744$3$401 ==.
;	..\COMMON\easyax5043.c:1744: for (i = 0; i < axradio_phy_nrchannels; ++i) {
	inc	r7
	ljmp	00154$
00142$:
	C$easyax5043.c$1770$1$385 ==.
;	..\COMMON\easyax5043.c:1770: AX5043_PWRMODE = AX5043_PWRSTATE_POWERDOWN;
	mov	dptr,#_AX5043_PWRMODE
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1771$1$385 ==.
;	..\COMMON\easyax5043.c:1771: ax5043_init_registers();
	lcall	_ax5043_init_registers
	C$easyax5043.c$1772$1$385 ==.
;	..\COMMON\easyax5043.c:1772: ax5043_set_registers_rx();
	lcall	_ax5043_set_registers_rx
	C$easyax5043.c$1773$1$385 ==.
;	..\COMMON\easyax5043.c:1773: AX5043_PLLRANGINGA = axradio_phy_chanpllrng[0] & 0x0F;
	mov	dptr,#_axradio_phy_chanpllrng
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_AX5043_PLLRANGINGA
	mov	a,#0x0f
	anl	a,r7
	movx	@dptr,a
	C$easyax5043.c$1775$2$405 ==.
;	..\COMMON\easyax5043.c:1775: uint32_t __autodata f = axradio_phy_chanfreq[0];
	mov	dptr,#_axradio_phy_chanfreq
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	C$easyax5043.c$1776$2$405 ==.
;	..\COMMON\easyax5043.c:1776: AX5043_FREQA0 = f;
	mov	dptr,#_AX5043_FREQA0
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$1777$2$405 ==.
;	..\COMMON\easyax5043.c:1777: AX5043_FREQA1 = f >> 8;
	mov	dptr,#_AX5043_FREQA1
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$1778$2$405 ==.
;	..\COMMON\easyax5043.c:1778: AX5043_FREQA2 = f >> 16;
	mov	dptr,#_AX5043_FREQA2
	mov	a,r6
	movx	@dptr,a
	C$easyax5043.c$1779$2$405 ==.
;	..\COMMON\easyax5043.c:1779: AX5043_FREQA3 = f >> 24;
	mov	dptr,#_AX5043_FREQA3
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$1782$1$385 ==.
;	..\COMMON\easyax5043.c:1782: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1783$1$385 ==.
;	..\COMMON\easyax5043.c:1783: for (i = 0; i < axradio_phy_nrchannels; ++i)
	mov	r7,#0x00
00156$:
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jnc	00145$
	C$easyax5043.c$1784$1$385 ==.
;	..\COMMON\easyax5043.c:1784: if (axradio_phy_chanpllrng[i] & 0x20)
	mov	a,r7
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	jnb	acc.5,00157$
	C$easyax5043.c$1785$1$385 ==.
;	..\COMMON\easyax5043.c:1785: return AXRADIO_ERR_RANGING;
	mov	dpl,#0x06
	sjmp	00158$
00157$:
	C$easyax5043.c$1783$1$385 ==.
;	..\COMMON\easyax5043.c:1783: for (i = 0; i < axradio_phy_nrchannels; ++i)
	inc	r7
	sjmp	00156$
00145$:
	C$easyax5043.c$1786$1$385 ==.
;	..\COMMON\easyax5043.c:1786: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00158$:
	C$easyax5043.c$1787$1$385 ==.
	XG$axradio_init$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_cansleep'
;------------------------------------------------------------
	G$axradio_cansleep$0$0 ==.
	C$easyax5043.c$1789$1$385 ==.
;	..\COMMON\easyax5043.c:1789: __reentrantb uint8_t axradio_cansleep(void) __reentrant
;	-----------------------------------------
;	 function axradio_cansleep
;	-----------------------------------------
_axradio_cansleep:
	C$easyax5043.c$1791$1$407 ==.
;	..\COMMON\easyax5043.c:1791: if (axradio_trxstate == trxstate_off || axradio_trxstate == trxstate_rxwor)
	mov	a,_axradio_trxstate
	jz	00101$
	mov	a,#0x02
	cjne	a,_axradio_trxstate,00102$
00101$:
	C$easyax5043.c$1792$1$407 ==.
;	..\COMMON\easyax5043.c:1792: return 1;
	mov	dpl,#0x01
	sjmp	00104$
00102$:
	C$easyax5043.c$1793$1$407 ==.
;	..\COMMON\easyax5043.c:1793: return 0;
	mov	dpl,#0x00
00104$:
	C$easyax5043.c$1794$1$407 ==.
	XG$axradio_cansleep$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'wtimer_cansleep_dummy'
;------------------------------------------------------------
	Feasyax5043$wtimer_cansleep_dummy$0$0 ==.
	C$easyax5043.c$1797$1$407 ==.
;	..\COMMON\easyax5043.c:1797: static void wtimer_cansleep_dummy(void) __naked
;	-----------------------------------------
;	 function wtimer_cansleep_dummy
;	-----------------------------------------
_wtimer_cansleep_dummy:
;	naked function: no prologue.
	C$easyax5043.c$1811$1$409 ==.
;	..\COMMON\easyax5043.c:1811: __endasm;
	.area	WTCANSLP0 (CODE)
	.area	WTCANSLP1 (CODE)
	.area	WTCANSLP2 (CODE)
	.area	WTCANSLP1 (CODE)
	lcall	_axradio_cansleep
	mov	a,dpl
	jnz	00000$
	ret
	00000$:
	.area	CSEG (CODE)
;	naked function: no epilogue.
	C$easyax5043.c$1812$1$409 ==.
	XFeasyax5043$wtimer_cansleep_dummy$0$0 ==.
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_mode'
;------------------------------------------------------------
;mode                      Allocated to registers r7 
;r                         Allocated to registers r5 
;r                         Allocated to registers r6 
;iesave                    Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_set_mode$0$0 ==.
	C$easyax5043.c$1815$1$409 ==.
;	..\COMMON\easyax5043.c:1815: uint8_t axradio_set_mode(uint8_t mode)
;	-----------------------------------------
;	 function axradio_set_mode
;	-----------------------------------------
_axradio_set_mode:
	C$easyax5043.c$1817$1$411 ==.
;	..\COMMON\easyax5043.c:1817: if (mode == axradio_mode)
	mov	a,dpl
	mov	r7,a
	cjne	a,_axradio_mode,00102$
	C$easyax5043.c$1818$1$411 ==.
;	..\COMMON\easyax5043.c:1818: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
00102$:
	C$easyax5043.c$1819$1$411 ==.
;	..\COMMON\easyax5043.c:1819: switch (axradio_mode) {
	mov	r6,_axradio_mode
	cjne	r6,#0x00,00283$
	sjmp	00103$
00283$:
	cjne	r6,#0x02,00284$
	sjmp	00106$
00284$:
	cjne	r6,#0x03,00285$
	ljmp	00116$
00285$:
	cjne	r6,#0x18,00286$
	ljmp	00116$
00286$:
	cjne	r6,#0x19,00287$
	ljmp	00116$
00287$:
	cjne	r6,#0x1a,00288$
	sjmp	00116$
00288$:
	cjne	r6,#0x1b,00289$
	sjmp	00116$
00289$:
	cjne	r6,#0x1c,00290$
	sjmp	00116$
00290$:
	cjne	r6,#0x28,00291$
	ljmp	00124$
00291$:
	cjne	r6,#0x29,00292$
	ljmp	00124$
00292$:
	cjne	r6,#0x2a,00293$
	ljmp	00124$
00293$:
	cjne	r6,#0x2b,00294$
	ljmp	00124$
00294$:
	cjne	r6,#0x2c,00295$
	ljmp	00124$
00295$:
	cjne	r6,#0x2d,00296$
	ljmp	00124$
00296$:
	ljmp	00125$
	C$easyax5043.c$1820$2$412 ==.
;	..\COMMON\easyax5043.c:1820: case AXRADIO_MODE_UNINIT:
00103$:
	C$easyax5043.c$1822$3$413 ==.
;	..\COMMON\easyax5043.c:1822: uint8_t __autodata r = axradio_init();
	push	ar7
	lcall	_axradio_init
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$1823$3$413 ==.
;	..\COMMON\easyax5043.c:1823: if (r != AXRADIO_ERR_NOERROR)
	mov	a,r6
	mov	r5,a
	jnz	00297$
	ljmp	00126$
00297$:
	C$easyax5043.c$1824$3$413 ==.
;	..\COMMON\easyax5043.c:1824: return r;
	mov	dpl,r5
	ljmp	00183$
	C$easyax5043.c$1828$2$412 ==.
;	..\COMMON\easyax5043.c:1828: case AXRADIO_MODE_DEEPSLEEP:
00106$:
	C$easyax5043.c$1830$3$414 ==.
;	..\COMMON\easyax5043.c:1830: uint8_t __autodata r = ax5043_wakeup_deepsleep();
	push	ar7
	lcall	_ax5043_wakeup_deepsleep
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$1831$3$414 ==.
;	..\COMMON\easyax5043.c:1831: if (r)
	mov	a,r6
	jz	00108$
	C$easyax5043.c$1832$3$414 ==.
;	..\COMMON\easyax5043.c:1832: return AXRADIO_ERR_NOCHIP;
	mov	dpl,#0x05
	ljmp	00183$
00108$:
	C$easyax5043.c$1833$3$414 ==.
;	..\COMMON\easyax5043.c:1833: ax5043_init_registers();
	push	ar7
	lcall	_ax5043_init_registers
	C$easyax5043.c$1834$3$414 ==.
;	..\COMMON\easyax5043.c:1834: r = axradio_set_channel(axradio_curchannel);
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	dpl,a
	lcall	_axradio_set_channel
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$1835$3$414 ==.
;	..\COMMON\easyax5043.c:1835: if (r != AXRADIO_ERR_NOERROR)
	mov	a,r6
	jz	00110$
	C$easyax5043.c$1836$3$414 ==.
;	..\COMMON\easyax5043.c:1836: return r;
	mov	dpl,r6
	ljmp	00183$
00110$:
	C$easyax5043.c$1837$3$414 ==.
;	..\COMMON\easyax5043.c:1837: axradio_trxstate = trxstate_off;
	mov	_axradio_trxstate,#0x00
	C$easyax5043.c$1838$3$414 ==.
;	..\COMMON\easyax5043.c:1838: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1839$3$414 ==.
;	..\COMMON\easyax5043.c:1839: break;
	C$easyax5043.c$1847$2$412 ==.
;	..\COMMON\easyax5043.c:1847: case AXRADIO_MODE_CW_TRANSMIT:
	sjmp	00126$
00116$:
	C$easyax5043.c$1849$3$415 ==.
;	..\COMMON\easyax5043.c:1849: uint8_t __autodata iesave = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r6,a
	C$easyax5043.c$1850$3$415 ==.
;	..\COMMON\easyax5043.c:1850: EA = 0;
	clr	_EA
	C$easyax5043.c$1851$3$415 ==.
;	..\COMMON\easyax5043.c:1851: if (axradio_trxstate == trxstate_off) {
	mov	a,_axradio_trxstate
	jnz	00118$
	C$easyax5043.c$1852$4$416 ==.
;	..\COMMON\easyax5043.c:1852: update_timeanchor();
	push	ar7
	push	ar6
	lcall	_update_timeanchor
	C$easyax5043.c$1853$4$416 ==.
;	..\COMMON\easyax5043.c:1853: wtimer_remove_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1854$4$416 ==.
;	..\COMMON\easyax5043.c:1854: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1855$4$416 ==.
;	..\COMMON\easyax5043.c:1855: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1856$4$416 ==.
;	..\COMMON\easyax5043.c:1856: wtimer_add_callback(&axradio_cb_transmitend.cb);
	mov	dptr,#_axradio_cb_transmitend
	lcall	_wtimer_add_callback
	pop	ar6
	pop	ar7
00118$:
	C$easyax5043.c$1858$3$415 ==.
;	..\COMMON\easyax5043.c:1858: ax5043_off();
	push	ar7
	push	ar6
	lcall	_ax5043_off
	pop	ar6
	C$easyax5043.c$1859$3$415 ==.
;	..\COMMON\easyax5043.c:1859: IE |= iesave;
	mov	a,r6
	orl	_IE,a
	C$easyax5043.c$1861$3$415 ==.
;	..\COMMON\easyax5043.c:1861: ax5043_init_registers();
	lcall	_ax5043_init_registers
	pop	ar7
	C$easyax5043.c$1862$3$415 ==.
;	..\COMMON\easyax5043.c:1862: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1863$3$415 ==.
;	..\COMMON\easyax5043.c:1863: break;
	C$easyax5043.c$1871$2$412 ==.
;	..\COMMON\easyax5043.c:1871: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
	sjmp	00126$
00124$:
	C$easyax5043.c$1872$2$412 ==.
;	..\COMMON\easyax5043.c:1872: ax5043_off();
	push	ar7
	lcall	_ax5043_off
	C$easyax5043.c$1873$2$412 ==.
;	..\COMMON\easyax5043.c:1873: ax5043_init_registers();
	lcall	_ax5043_init_registers
	pop	ar7
	C$easyax5043.c$1874$2$412 ==.
;	..\COMMON\easyax5043.c:1874: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1876$2$412 ==.
;	..\COMMON\easyax5043.c:1876: default:
00125$:
	C$easyax5043.c$1877$2$412 ==.
;	..\COMMON\easyax5043.c:1877: ax5043_off();
	push	ar7
	lcall	_ax5043_off
	pop	ar7
	C$easyax5043.c$1878$2$412 ==.
;	..\COMMON\easyax5043.c:1878: axradio_mode = AXRADIO_MODE_OFF;
	mov	_axradio_mode,#0x01
	C$easyax5043.c$1880$1$411 ==.
;	..\COMMON\easyax5043.c:1880: }
00126$:
	C$easyax5043.c$1881$1$411 ==.
;	..\COMMON\easyax5043.c:1881: axradio_killallcb();
	push	ar7
	lcall	_axradio_killallcb
	pop	ar7
	C$easyax5043.c$1882$1$411 ==.
;	..\COMMON\easyax5043.c:1882: if (mode == AXRADIO_MODE_UNINIT)
	mov	a,r7
	jnz	00128$
	C$easyax5043.c$1883$1$411 ==.
;	..\COMMON\easyax5043.c:1883: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	ljmp	00183$
00128$:
	C$easyax5043.c$1884$1$411 ==.
;	..\COMMON\easyax5043.c:1884: axradio_syncstate = syncstate_off;
	mov	dptr,#_axradio_syncstate
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1885$1$411 ==.
;	..\COMMON\easyax5043.c:1885: switch (mode) {
	mov	a,r7
	add	a,#0xff - 0x33
	jnc	00302$
	ljmp	00181$
00302$:
	mov	a,r7
	add	a,#(00303$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00304$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00303$:
	.db	00181$
	.db	00129$
	.db	00130$
	.db	00176$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00131$
	.db	00133$
	.db	00132$
	.db	00134$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00143$
	.db	00144$
	.db	00145$
	.db	00146$
	.db	00142$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00135$
	.db	00140$
	.db	00136$
	.db	00141$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00181$
	.db	00160$
	.db	00161$
	.db	00162$
	.db	00163$
	.db	00159$
	.db	00164$
	.db	00181$
	.db	00181$
	.db	00177$
	.db	00178$
	.db	00179$
	.db	00180$
00304$:
	.db	00181$>>8
	.db	00129$>>8
	.db	00130$>>8
	.db	00176$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00131$>>8
	.db	00133$>>8
	.db	00132$>>8
	.db	00134$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00143$>>8
	.db	00144$>>8
	.db	00145$>>8
	.db	00146$>>8
	.db	00142$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00135$>>8
	.db	00140$>>8
	.db	00136$>>8
	.db	00141$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00160$>>8
	.db	00161$>>8
	.db	00162$>>8
	.db	00163$>>8
	.db	00159$>>8
	.db	00164$>>8
	.db	00181$>>8
	.db	00181$>>8
	.db	00177$>>8
	.db	00178$>>8
	.db	00179$>>8
	.db	00180$>>8
	C$easyax5043.c$1886$2$417 ==.
;	..\COMMON\easyax5043.c:1886: case AXRADIO_MODE_OFF:
00129$:
	C$easyax5043.c$1887$2$417 ==.
;	..\COMMON\easyax5043.c:1887: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$1889$2$417 ==.
;	..\COMMON\easyax5043.c:1889: case AXRADIO_MODE_DEEPSLEEP:
00130$:
	C$easyax5043.c$1890$2$417 ==.
;	..\COMMON\easyax5043.c:1890: ax5043_enter_deepsleep();
	lcall	_ax5043_enter_deepsleep
	C$easyax5043.c$1891$2$417 ==.
;	..\COMMON\easyax5043.c:1891: axradio_mode = AXRADIO_MODE_DEEPSLEEP;
	mov	_axradio_mode,#0x02
	C$easyax5043.c$1892$2$417 ==.
;	..\COMMON\easyax5043.c:1892: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$1894$2$417 ==.
;	..\COMMON\easyax5043.c:1894: case AXRADIO_MODE_ASYNC_TRANSMIT:
00131$:
	C$easyax5043.c$1895$2$417 ==.
;	..\COMMON\easyax5043.c:1895: case AXRADIO_MODE_ACK_TRANSMIT:
00132$:
	C$easyax5043.c$1896$2$417 ==.
;	..\COMMON\easyax5043.c:1896: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1897$2$417 ==.
;	..\COMMON\easyax5043.c:1897: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1898$2$417 ==.
;	..\COMMON\easyax5043.c:1898: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1899$2$417 ==.
;	..\COMMON\easyax5043.c:1899: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$1901$2$417 ==.
;	..\COMMON\easyax5043.c:1901: case AXRADIO_MODE_WOR_TRANSMIT:
00133$:
	C$easyax5043.c$1902$2$417 ==.
;	..\COMMON\easyax5043.c:1902: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
00134$:
	C$easyax5043.c$1903$2$417 ==.
;	..\COMMON\easyax5043.c:1903: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1904$2$417 ==.
;	..\COMMON\easyax5043.c:1904: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1905$2$417 ==.
;	..\COMMON\easyax5043.c:1905: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1906$2$417 ==.
;	..\COMMON\easyax5043.c:1906: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$1908$2$417 ==.
;	..\COMMON\easyax5043.c:1908: case AXRADIO_MODE_ASYNC_RECEIVE:
00135$:
	C$easyax5043.c$1909$2$417 ==.
;	..\COMMON\easyax5043.c:1909: case AXRADIO_MODE_ACK_RECEIVE:
00136$:
	C$easyax5043.c$1910$2$417 ==.
;	..\COMMON\easyax5043.c:1910: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1911$2$417 ==.
;	..\COMMON\easyax5043.c:1911: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1912$2$417 ==.
;	..\COMMON\easyax5043.c:1912: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$1913$2$417 ==.
;	..\COMMON\easyax5043.c:1913: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1914$2$417 ==.
;	..\COMMON\easyax5043.c:1914: enablecs:
00137$:
	C$easyax5043.c$1915$2$417 ==.
;	..\COMMON\easyax5043.c:1915: if (axradio_phy_cs_enabled) {
	mov	dptr,#_axradio_phy_cs_enabled
	clr	a
	movc	a,@a+dptr
	jz	00139$
	C$easyax5043.c$1916$3$418 ==.
;	..\COMMON\easyax5043.c:1916: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$1917$3$418 ==.
;	..\COMMON\easyax5043.c:1917: axradio_timer.time = axradio_phy_cs_period;
	mov	dptr,#_axradio_phy_cs_period
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r6,a
	mov	r4,#0x00
	mov	r3,#0x00
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1918$3$418 ==.
;	..\COMMON\easyax5043.c:1918: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
00139$:
	C$easyax5043.c$1920$2$417 ==.
;	..\COMMON\easyax5043.c:1920: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$1922$2$417 ==.
;	..\COMMON\easyax5043.c:1922: case AXRADIO_MODE_WOR_RECEIVE:
00140$:
	C$easyax5043.c$1923$2$417 ==.
;	..\COMMON\easyax5043.c:1923: case AXRADIO_MODE_WOR_ACK_RECEIVE:
00141$:
	C$easyax5043.c$1924$2$417 ==.
;	..\COMMON\easyax5043.c:1924: axradio_ack_seqnr = 0xff;
	mov	dptr,#_axradio_ack_seqnr
	mov	a,#0xff
	movx	@dptr,a
	C$easyax5043.c$1925$2$417 ==.
;	..\COMMON\easyax5043.c:1925: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1926$2$417 ==.
;	..\COMMON\easyax5043.c:1926: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$1927$2$417 ==.
;	..\COMMON\easyax5043.c:1927: ax5043_receiver_on_wor();
	lcall	_ax5043_receiver_on_wor
	C$easyax5043.c$1928$2$417 ==.
;	..\COMMON\easyax5043.c:1928: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$1930$2$417 ==.
;	..\COMMON\easyax5043.c:1930: case AXRADIO_MODE_STREAM_TRANSMIT:
00142$:
	C$easyax5043.c$1931$2$417 ==.
;	..\COMMON\easyax5043.c:1931: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC:
00143$:
	C$easyax5043.c$1932$2$417 ==.
;	..\COMMON\easyax5043.c:1932: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM:
00144$:
	C$easyax5043.c$1933$2$417 ==.
;	..\COMMON\easyax5043.c:1933: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB:
00145$:
	C$easyax5043.c$1934$2$417 ==.
;	..\COMMON\easyax5043.c:1934: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
00146$:
	C$easyax5043.c$1935$2$417 ==.
;	..\COMMON\easyax5043.c:1935: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1936$2$417 ==.
;	..\COMMON\easyax5043.c:1936: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC ||
	mov	a,#0x18
	cjne	a,_axradio_mode,00306$
	sjmp	00147$
00306$:
	C$easyax5043.c$1937$2$417 ==.
;	..\COMMON\easyax5043.c:1937: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB)
	mov	a,#0x1a
	cjne	a,_axradio_mode,00148$
00147$:
	C$easyax5043.c$1938$2$417 ==.
;	..\COMMON\easyax5043.c:1938: AX5043_ENCODING = 0;
	mov	dptr,#_AX5043_ENCODING
	clr	a
	movx	@dptr,a
00148$:
	C$easyax5043.c$1939$2$417 ==.
;	..\COMMON\easyax5043.c:1939: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM ||
	mov	a,#0x19
	cjne	a,_axradio_mode,00309$
	sjmp	00150$
00309$:
	C$easyax5043.c$1940$2$417 ==.
;	..\COMMON\easyax5043.c:1940: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
	mov	a,#0x1b
	cjne	a,_axradio_mode,00151$
00150$:
	C$easyax5043.c$1941$2$417 ==.
;	..\COMMON\easyax5043.c:1941: AX5043_ENCODING = 4;
	mov	dptr,#_AX5043_ENCODING
	mov	a,#0x04
	movx	@dptr,a
00151$:
	C$easyax5043.c$1942$2$417 ==.
;	..\COMMON\easyax5043.c:1942: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB ||
	mov	a,#0x1a
	cjne	a,_axradio_mode,00312$
	sjmp	00153$
00312$:
	C$easyax5043.c$1943$2$417 ==.
;	..\COMMON\easyax5043.c:1943: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
	mov	a,#0x1b
	cjne	a,_axradio_mode,00154$
00153$:
	C$easyax5043.c$1944$2$417 ==.
;	..\COMMON\easyax5043.c:1944: AX5043_PKTADDRCFG &= 0x7F;
	mov	dptr,#_AX5043_PKTADDRCFG
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x7f
	anl	a,r6
	movx	@dptr,a
00154$:
	C$easyax5043.c$1945$2$417 ==.
;	..\COMMON\easyax5043.c:1945: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1946$2$417 ==.
;	..\COMMON\easyax5043.c:1946: AX5043_FRAMING = 0;
	mov	dptr,#_AX5043_FRAMING
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1947$2$417 ==.
;	..\COMMON\easyax5043.c:1947: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$1948$2$417 ==.
;	..\COMMON\easyax5043.c:1948: axradio_trxstate = trxstate_txstream_xtalwait;
	mov	_axradio_trxstate,#0x0f
	C$easyax5043.c$1949$2$417 ==.
;	..\COMMON\easyax5043.c:1949: while (!(AX5043_POWSTAT & 0x08)) {}; // wait for modem vdd so writing the FIFO is safe
00156$:
	mov	dptr,#_AX5043_POWSTAT
	movx	a,@dptr
	mov	r6,a
	jnb	acc.3,00156$
	C$easyax5043.c$1950$2$417 ==.
;	..\COMMON\easyax5043.c:1950: AX5043_FIFOSTAT = 3; // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$1951$2$417 ==.
;	..\COMMON\easyax5043.c:1951: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
	mov	dptr,#_AX5043_RADIOEVENTREQ0
	movx	a,@dptr
	C$easyax5043.c$1952$2$417 ==.
;	..\COMMON\easyax5043.c:1952: update_timeanchor();
	lcall	_update_timeanchor
	C$easyax5043.c$1953$2$417 ==.
;	..\COMMON\easyax5043.c:1953: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_remove_callback
	C$easyax5043.c$1954$2$417 ==.
;	..\COMMON\easyax5043.c:1954: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1955$2$417 ==.
;	..\COMMON\easyax5043.c:1955: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$1956$2$417 ==.
;	..\COMMON\easyax5043.c:1956: wtimer_add_callback(&axradio_cb_transmitdata.cb);
	mov	dptr,#_axradio_cb_transmitdata
	lcall	_wtimer_add_callback
	C$easyax5043.c$1957$2$417 ==.
;	..\COMMON\easyax5043.c:1957: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$1959$2$417 ==.
;	..\COMMON\easyax5043.c:1959: case AXRADIO_MODE_STREAM_RECEIVE:
00159$:
	C$easyax5043.c$1960$2$417 ==.
;	..\COMMON\easyax5043.c:1960: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
00160$:
	C$easyax5043.c$1961$2$417 ==.
;	..\COMMON\easyax5043.c:1961: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
00161$:
	C$easyax5043.c$1962$2$417 ==.
;	..\COMMON\easyax5043.c:1962: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
00162$:
	C$easyax5043.c$1963$2$417 ==.
;	..\COMMON\easyax5043.c:1963: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
00163$:
	C$easyax5043.c$1964$2$417 ==.
;	..\COMMON\easyax5043.c:1964: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
00164$:
	C$easyax5043.c$1965$2$417 ==.
;	..\COMMON\easyax5043.c:1965: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$1966$2$417 ==.
;	..\COMMON\easyax5043.c:1966: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$1967$2$417 ==.
;	..\COMMON\easyax5043.c:1967: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC ||
	mov	a,#0x28
	cjne	a,_axradio_mode,00316$
	sjmp	00165$
00316$:
	C$easyax5043.c$1968$2$417 ==.
;	..\COMMON\easyax5043.c:1968: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB)
	mov	a,#0x2a
	cjne	a,_axradio_mode,00166$
00165$:
	C$easyax5043.c$1969$2$417 ==.
;	..\COMMON\easyax5043.c:1969: AX5043_ENCODING = 0;
	mov	dptr,#_AX5043_ENCODING
	clr	a
	movx	@dptr,a
00166$:
	C$easyax5043.c$1970$2$417 ==.
;	..\COMMON\easyax5043.c:1970: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM ||
	mov	a,#0x29
	cjne	a,_axradio_mode,00319$
	sjmp	00168$
00319$:
	C$easyax5043.c$1971$2$417 ==.
;	..\COMMON\easyax5043.c:1971: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
	mov	a,#0x2b
	cjne	a,_axradio_mode,00169$
00168$:
	C$easyax5043.c$1972$2$417 ==.
;	..\COMMON\easyax5043.c:1972: AX5043_ENCODING = 4;
	mov	dptr,#_AX5043_ENCODING
	mov	a,#0x04
	movx	@dptr,a
00169$:
	C$easyax5043.c$1973$2$417 ==.
;	..\COMMON\easyax5043.c:1973: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB ||
	mov	a,#0x2a
	cjne	a,_axradio_mode,00322$
	sjmp	00171$
00322$:
	C$easyax5043.c$1974$2$417 ==.
;	..\COMMON\easyax5043.c:1974: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
	mov	a,#0x2b
	cjne	a,_axradio_mode,00172$
00171$:
	C$easyax5043.c$1975$2$417 ==.
;	..\COMMON\easyax5043.c:1975: AX5043_PKTADDRCFG &= 0x7F;
	mov	dptr,#_AX5043_PKTADDRCFG
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x7f
	anl	a,r6
	movx	@dptr,a
00172$:
	C$easyax5043.c$1976$2$417 ==.
;	..\COMMON\easyax5043.c:1976: AX5043_FRAMING = 0;
	mov	dptr,#_AX5043_FRAMING
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1977$2$417 ==.
;	..\COMMON\easyax5043.c:1977: AX5043_PKTCHUNKSIZE = 8; // 64 byte
	mov	dptr,#_AX5043_PKTCHUNKSIZE
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1978$2$417 ==.
;	..\COMMON\easyax5043.c:1978: AX5043_RXPARAMSETS = 0x00;
	mov	dptr,#_AX5043_RXPARAMSETS
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1979$2$417 ==.
;	..\COMMON\easyax5043.c:1979: if( axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_DATAPIN )
	mov	a,#0x2d
	cjne	a,_axradio_mode,00175$
	C$easyax5043.c$1981$3$420 ==.
;	..\COMMON\easyax5043.c:1981: ax5043_set_registers_rxcont_singleparamset();
	lcall	_ax5043_set_registers_rxcont_singleparamset
	C$easyax5043.c$1982$3$420 ==.
;	..\COMMON\easyax5043.c:1982: AX5043_PINFUNCDATA = 0x04;
	mov	dptr,#_AX5043_PINFUNCDATA
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$1983$3$420 ==.
;	..\COMMON\easyax5043.c:1983: AX5043_PINFUNCDCLK = 0x04;
	mov	dptr,#_AX5043_PINFUNCDCLK
	movx	@dptr,a
00175$:
	C$easyax5043.c$1985$2$417 ==.
;	..\COMMON\easyax5043.c:1985: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$1986$2$417 ==.
;	..\COMMON\easyax5043.c:1986: goto enablecs;
	ljmp	00137$
	C$easyax5043.c$1988$2$417 ==.
;	..\COMMON\easyax5043.c:1988: case AXRADIO_MODE_CW_TRANSMIT:
00176$:
	C$easyax5043.c$1989$2$417 ==.
;	..\COMMON\easyax5043.c:1989: axradio_mode = AXRADIO_MODE_CW_TRANSMIT;
	mov	_axradio_mode,#0x03
	C$easyax5043.c$1990$2$417 ==.
;	..\COMMON\easyax5043.c:1990: ax5043_init_registers_tx();
	lcall	_ax5043_init_registers_tx
	C$easyax5043.c$1991$2$417 ==.
;	..\COMMON\easyax5043.c:1991: AX5043_MODULATION = 8;   // Set an FSK mode
	mov	dptr,#_AX5043_MODULATION
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$1992$2$417 ==.
;	..\COMMON\easyax5043.c:1992: AX5043_FSKDEV2 = 0x00;
	mov	dptr,#_AX5043_FSKDEV2
	clr	a
	movx	@dptr,a
	C$easyax5043.c$1993$2$417 ==.
;	..\COMMON\easyax5043.c:1993: AX5043_FSKDEV1 = 0x00;
	mov	dptr,#_AX5043_FSKDEV1
	movx	@dptr,a
	C$easyax5043.c$1994$2$417 ==.
;	..\COMMON\easyax5043.c:1994: AX5043_FSKDEV0 = 0x00;
	mov	dptr,#_AX5043_FSKDEV0
	movx	@dptr,a
	C$easyax5043.c$1995$2$417 ==.
;	..\COMMON\easyax5043.c:1995: AX5043_TXRATE2 = 0x00;
	mov	dptr,#_AX5043_TXRATE2
	movx	@dptr,a
	C$easyax5043.c$1996$2$417 ==.
;	..\COMMON\easyax5043.c:1996: AX5043_TXRATE1 = 0x00;
	mov	dptr,#_AX5043_TXRATE1
	movx	@dptr,a
	C$easyax5043.c$1997$2$417 ==.
;	..\COMMON\easyax5043.c:1997: AX5043_TXRATE0 = 0x01;
	mov	dptr,#_AX5043_TXRATE0
	inc	a
	movx	@dptr,a
	C$easyax5043.c$1998$2$417 ==.
;	..\COMMON\easyax5043.c:1998: AX5043_PINFUNCDATA = 0x04;
	mov	dptr,#_AX5043_PINFUNCDATA
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$1999$2$417 ==.
;	..\COMMON\easyax5043.c:1999: AX5043_PWRMODE = AX5043_PWRSTATE_FIFO_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x07
	movx	@dptr,a
	C$easyax5043.c$2000$2$417 ==.
;	..\COMMON\easyax5043.c:2000: axradio_trxstate = trxstate_txcw_xtalwait;
	mov	_axradio_trxstate,#0x0e
	C$easyax5043.c$2001$2$417 ==.
;	..\COMMON\easyax5043.c:2001: AX5043_IRQMASK0 = 0x00;
	mov	dptr,#_AX5043_IRQMASK0
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2002$2$417 ==.
;	..\COMMON\easyax5043.c:2002: AX5043_IRQMASK1 = 0x01; // enable xtal ready interrupt
	mov	dptr,#_AX5043_IRQMASK1
	inc	a
	movx	@dptr,a
	C$easyax5043.c$2003$2$417 ==.
;	..\COMMON\easyax5043.c:2003: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$2005$2$417 ==.
;	..\COMMON\easyax5043.c:2005: case AXRADIO_MODE_SYNC_MASTER:
00177$:
	C$easyax5043.c$2006$2$417 ==.
;	..\COMMON\easyax5043.c:2006: case AXRADIO_MODE_SYNC_ACK_MASTER:
00178$:
	C$easyax5043.c$2007$2$417 ==.
;	..\COMMON\easyax5043.c:2007: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$2008$2$417 ==.
;	..\COMMON\easyax5043.c:2008: axradio_syncstate = syncstate_master_normal;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$2010$2$417 ==.
;	..\COMMON\easyax5043.c:2010: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$2011$2$417 ==.
;	..\COMMON\easyax5043.c:2011: axradio_timer.time = 2;
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2012$2$417 ==.
;	..\COMMON\easyax5043.c:2012: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$2013$2$417 ==.
;	..\COMMON\easyax5043.c:2013: axradio_sync_time = axradio_timer.time;
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_axradio_sync_time
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2014$2$417 ==.
;	..\COMMON\easyax5043.c:2014: axradio_sync_addtime(axradio_sync_xoscstartup);
	mov	dptr,#_axradio_sync_xoscstartup
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	_axradio_sync_addtime
	C$easyax5043.c$2015$2$417 ==.
;	..\COMMON\easyax5043.c:2015: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00183$
	C$easyax5043.c$2017$2$417 ==.
;	..\COMMON\easyax5043.c:2017: case AXRADIO_MODE_SYNC_SLAVE:
00179$:
	C$easyax5043.c$2018$2$417 ==.
;	..\COMMON\easyax5043.c:2018: case AXRADIO_MODE_SYNC_ACK_SLAVE:
00180$:
	C$easyax5043.c$2019$2$417 ==.
;	..\COMMON\easyax5043.c:2019: axradio_mode = mode;
	mov	_axradio_mode,r7
	C$easyax5043.c$2020$2$417 ==.
;	..\COMMON\easyax5043.c:2020: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$2021$2$417 ==.
;	..\COMMON\easyax5043.c:2021: ax5043_receiver_on_continuous();
	lcall	_ax5043_receiver_on_continuous
	C$easyax5043.c$2022$2$417 ==.
;	..\COMMON\easyax5043.c:2022: axradio_syncstate = syncstate_slave_synchunt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x06
	movx	@dptr,a
	C$easyax5043.c$2023$2$417 ==.
;	..\COMMON\easyax5043.c:2023: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$2024$2$417 ==.
;	..\COMMON\easyax5043.c:2024: axradio_timer.time = axradio_sync_slave_initialsyncwindow;
	mov	dptr,#_axradio_sync_slave_initialsyncwindow
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2025$2$417 ==.
;	..\COMMON\easyax5043.c:2025: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$2026$2$417 ==.
;	..\COMMON\easyax5043.c:2026: axradio_sync_time = axradio_timer.time;
	mov	dptr,#(_axradio_timer + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_sync_time
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2027$2$417 ==.
;	..\COMMON\easyax5043.c:2027: wtimer_remove_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_remove_callback
	C$easyax5043.c$2028$2$417 ==.
;	..\COMMON\easyax5043.c:2028: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
	mov	_memset_PARM_2,#0x00
	mov	_memset_PARM_3,#0x1e
	mov	(_memset_PARM_3 + 1),#0x00
	mov	dptr,#(_axradio_cb_receive + 0x0004)
	mov	b,#0x00
	lcall	_memset
	C$easyax5043.c$2029$2$417 ==.
;	..\COMMON\easyax5043.c:2029: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
	mov	dptr,#(_axradio_timeanchor + 0x0004)
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#(_axradio_cb_receive + 0x0006)
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2030$2$417 ==.
;	..\COMMON\easyax5043.c:2030: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
	mov	dptr,#(_axradio_cb_receive + 0x0005)
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$2031$2$417 ==.
;	..\COMMON\easyax5043.c:2031: wtimer_add_callback(&axradio_cb_receive.cb);
	mov	dptr,#_axradio_cb_receive
	lcall	_wtimer_add_callback
	C$easyax5043.c$2032$2$417 ==.
;	..\COMMON\easyax5043.c:2032: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	C$easyax5043.c$2034$2$417 ==.
;	..\COMMON\easyax5043.c:2034: default:
	sjmp	00183$
00181$:
	C$easyax5043.c$2035$2$417 ==.
;	..\COMMON\easyax5043.c:2035: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	C$easyax5043.c$2036$1$411 ==.
;	..\COMMON\easyax5043.c:2036: }
00183$:
	C$easyax5043.c$2037$1$411 ==.
	XG$axradio_set_mode$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_mode'
;------------------------------------------------------------
	G$axradio_get_mode$0$0 ==.
	C$easyax5043.c$2039$1$411 ==.
;	..\COMMON\easyax5043.c:2039: uint8_t axradio_get_mode(void)
;	-----------------------------------------
;	 function axradio_get_mode
;	-----------------------------------------
_axradio_get_mode:
	C$easyax5043.c$2041$1$422 ==.
;	..\COMMON\easyax5043.c:2041: return axradio_mode;
	mov	dpl,_axradio_mode
	C$easyax5043.c$2042$1$422 ==.
	XG$axradio_get_mode$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_channel'
;------------------------------------------------------------
;chnum                     Allocated to registers r7 
;rng                       Allocated with name '_axradio_set_channel_rng_1_424'
;f                         Allocated to registers r3 r4 r5 r7 
;------------------------------------------------------------
	G$axradio_set_channel$0$0 ==.
	C$easyax5043.c$2044$1$422 ==.
;	..\COMMON\easyax5043.c:2044: uint8_t axradio_set_channel(uint8_t chnum)
;	-----------------------------------------
;	 function axradio_set_channel
;	-----------------------------------------
_axradio_set_channel:
	mov	r7,dpl
	C$easyax5043.c$2047$1$424 ==.
;	..\COMMON\easyax5043.c:2047: if (chnum >= axradio_phy_nrchannels)
	mov	dptr,#_axradio_phy_nrchannels
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	clr	c
	mov	a,r7
	subb	a,r6
	jc	00102$
	C$easyax5043.c$2048$1$424 ==.
;	..\COMMON\easyax5043.c:2048: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
	ljmp	00108$
00102$:
	C$easyax5043.c$2049$1$424 ==.
;	..\COMMON\easyax5043.c:2049: axradio_curchannel = chnum;
	mov	dptr,#_axradio_curchannel
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$2050$1$424 ==.
;	..\COMMON\easyax5043.c:2050: rng = axradio_phy_chanpllrng[chnum];
	mov	a,r7
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	C$easyax5043.c$2051$1$424 ==.
;	..\COMMON\easyax5043.c:2051: if (rng & 0x20)
	mov	_axradio_set_channel_rng_1_424,a
	jnb	acc.5,00104$
	C$easyax5043.c$2052$1$424 ==.
;	..\COMMON\easyax5043.c:2052: return AXRADIO_ERR_RANGING;
	mov	dpl,#0x06
	ljmp	00108$
00104$:
	C$easyax5043.c$2054$2$425 ==.
;	..\COMMON\easyax5043.c:2054: uint32_t __autodata f = axradio_phy_chanfreq[chnum];
	mov	a,r7
	mov	b,#0x04
	mul	ab
	add	a,#_axradio_phy_chanfreq
	mov	dpl,a
	mov	a,#(_axradio_phy_chanfreq >> 8)
	addc	a,b
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	C$easyax5043.c$2055$2$425 ==.
;	..\COMMON\easyax5043.c:2055: f += axradio_curfreqoffset;
	mov	dptr,#_axradio_curfreqoffset
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r0
	add	a,r3
	mov	r3,a
	mov	a,r1
	addc	a,r4
	mov	r4,a
	mov	a,r2
	addc	a,r5
	mov	r5,a
	mov	a,r6
	addc	a,r7
	mov	r7,a
	C$easyax5043.c$2056$2$425 ==.
;	..\COMMON\easyax5043.c:2056: if (AX5043_PLLLOOP & 0x80) {
	mov	dptr,#_AX5043_PLLLOOP
	movx	a,@dptr
	mov	r6,a
	jnb	acc.7,00106$
	C$easyax5043.c$2057$3$426 ==.
;	..\COMMON\easyax5043.c:2057: AX5043_PLLRANGINGA = rng & 0x0F;
	mov	dptr,#_AX5043_PLLRANGINGA
	mov	a,#0x0f
	anl	a,_axradio_set_channel_rng_1_424
	movx	@dptr,a
	C$easyax5043.c$2058$3$426 ==.
;	..\COMMON\easyax5043.c:2058: AX5043_FREQA0 = f;
	mov	dptr,#_AX5043_FREQA0
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$2059$3$426 ==.
;	..\COMMON\easyax5043.c:2059: AX5043_FREQA1 = f >> 8;
	mov	dptr,#_AX5043_FREQA1
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$2060$3$426 ==.
;	..\COMMON\easyax5043.c:2060: AX5043_FREQA2 = f >> 16;
	mov	dptr,#_AX5043_FREQA2
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2061$3$426 ==.
;	..\COMMON\easyax5043.c:2061: AX5043_FREQA3 = f >> 24;
	mov	dptr,#_AX5043_FREQA3
	mov	a,r7
	movx	@dptr,a
	sjmp	00107$
00106$:
	C$easyax5043.c$2063$3$427 ==.
;	..\COMMON\easyax5043.c:2063: AX5043_PLLRANGINGB = rng & 0x0F;
	mov	dptr,#_AX5043_PLLRANGINGB
	mov	a,#0x0f
	anl	a,_axradio_set_channel_rng_1_424
	movx	@dptr,a
	C$easyax5043.c$2064$3$427 ==.
;	..\COMMON\easyax5043.c:2064: AX5043_FREQB0 = f;
	mov	dptr,#_AX5043_FREQB0
	mov	a,r3
	movx	@dptr,a
	C$easyax5043.c$2065$3$427 ==.
;	..\COMMON\easyax5043.c:2065: AX5043_FREQB1 = f >> 8;
	mov	dptr,#_AX5043_FREQB1
	mov	a,r4
	movx	@dptr,a
	C$easyax5043.c$2066$3$427 ==.
;	..\COMMON\easyax5043.c:2066: AX5043_FREQB2 = f >> 16;
	mov	dptr,#_AX5043_FREQB2
	mov	a,r5
	movx	@dptr,a
	C$easyax5043.c$2067$3$427 ==.
;	..\COMMON\easyax5043.c:2067: AX5043_FREQB3 = f >> 24;
	mov	dptr,#_AX5043_FREQB3
	mov	a,r7
	movx	@dptr,a
00107$:
	C$easyax5043.c$2070$1$424 ==.
;	..\COMMON\easyax5043.c:2070: AX5043_PLLLOOP ^= 0x80;
	mov	dptr,#_AX5043_PLLLOOP
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x80
	xrl	a,r7
	movx	@dptr,a
	C$easyax5043.c$2071$1$424 ==.
;	..\COMMON\easyax5043.c:2071: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00108$:
	C$easyax5043.c$2072$1$424 ==.
	XG$axradio_set_channel$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_channel'
;------------------------------------------------------------
	G$axradio_get_channel$0$0 ==.
	C$easyax5043.c$2074$1$424 ==.
;	..\COMMON\easyax5043.c:2074: uint8_t axradio_get_channel(void)
;	-----------------------------------------
;	 function axradio_get_channel
;	-----------------------------------------
_axradio_get_channel:
	C$easyax5043.c$2076$1$429 ==.
;	..\COMMON\easyax5043.c:2076: return axradio_curchannel;
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	C$easyax5043.c$2077$1$429 ==.
	XG$axradio_get_channel$0$0 ==.
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_pllrange'
;------------------------------------------------------------
	G$axradio_get_pllrange$0$0 ==.
	C$easyax5043.c$2079$1$429 ==.
;	..\COMMON\easyax5043.c:2079: uint8_t axradio_get_pllrange(void)
;	-----------------------------------------
;	 function axradio_get_pllrange
;	-----------------------------------------
_axradio_get_pllrange:
	C$easyax5043.c$2081$1$431 ==.
;	..\COMMON\easyax5043.c:2081: return axradio_phy_chanpllrng[axradio_curchannel] & 0x0F;
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x0f
	anl	a,r7
	mov	dpl,a
	C$easyax5043.c$2082$1$431 ==.
	XG$axradio_get_pllrange$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_pllvcoi'
;------------------------------------------------------------
;x                         Allocated to registers r7 
;x                         Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_get_pllvcoi$0$0 ==.
	C$easyax5043.c$2084$1$431 ==.
;	..\COMMON\easyax5043.c:2084: uint8_t axradio_get_pllvcoi(void)
;	-----------------------------------------
;	 function axradio_get_pllvcoi
;	-----------------------------------------
_axradio_get_pllvcoi:
	C$easyax5043.c$2086$1$433 ==.
;	..\COMMON\easyax5043.c:2086: if (axradio_phy_vcocalib) {
	mov	dptr,#_axradio_phy_vcocalib
	clr	a
	movc	a,@a+dptr
	jz	00104$
	C$easyax5043.c$2087$2$434 ==.
;	..\COMMON\easyax5043.c:2087: uint8_t x = axradio_phy_chanvcoi[axradio_curchannel];
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	add	a,#_axradio_phy_chanvcoi
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanvcoi >> 8)
	mov	dph,a
	movx	a,@dptr
	C$easyax5043.c$2088$2$434 ==.
;	..\COMMON\easyax5043.c:2088: if (x & 0x80)
	mov	r7,a
	jnb	acc.7,00104$
	C$easyax5043.c$2089$2$434 ==.
;	..\COMMON\easyax5043.c:2089: return x;
	mov	dpl,r7
	sjmp	00109$
00104$:
	C$easyax5043.c$2092$2$435 ==.
;	..\COMMON\easyax5043.c:2092: uint8_t x = axradio_phy_chanvcoiinit[axradio_curchannel];
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_axradio_phy_chanvcoiinit
	movc	a,@a+dptr
	C$easyax5043.c$2093$2$435 ==.
;	..\COMMON\easyax5043.c:2093: if (x & 0x80) {
	mov	r6,a
	jnb	acc.7,00108$
	C$easyax5043.c$2094$3$436 ==.
;	..\COMMON\easyax5043.c:2094: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
	mov	dptr,#_axradio_phy_chanpllrnginit
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	anl	a,#0xf0
	jz	00127$
	sjmp	00106$
00127$:
	C$easyax5043.c$2095$4$437 ==.
;	..\COMMON\easyax5043.c:2095: x += (axradio_phy_chanpllrng[axradio_curchannel] & 0x0F) - (axradio_phy_chanpllrnginit[axradio_curchannel] & 0x0F);
	mov	a,r7
	add	a,#_axradio_phy_chanpllrng
	mov	dpl,a
	clr	a
	addc	a,#(_axradio_phy_chanpllrng >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x0f
	mov	a,r7
	mov	dptr,#_axradio_phy_chanpllrnginit
	movc	a,@a+dptr
	mov	r7,a
	mov	a,#0x0f
	anl	a,r7
	setb	c
	subb	a,r5
	cpl	a
	add	a,r6
	mov	r6,a
	C$easyax5043.c$2096$4$437 ==.
;	..\COMMON\easyax5043.c:2096: x &= 0x3f;
	anl	ar6,#0x3f
	C$easyax5043.c$2097$4$437 ==.
;	..\COMMON\easyax5043.c:2097: x |= 0x80;
	orl	ar6,#0x80
00106$:
	C$easyax5043.c$2099$3$436 ==.
;	..\COMMON\easyax5043.c:2099: return x;
	mov	dpl,r6
	sjmp	00109$
00108$:
	C$easyax5043.c$2102$1$433 ==.
;	..\COMMON\easyax5043.c:2102: return AX5043_PLLVCOI;
	mov	dptr,#_AX5043_PLLVCOI
	movx	a,@dptr
	C$easyax5043.c$2103$1$433 ==.
	XG$axradio_get_pllvcoi$0$0 ==.
	mov	dpl,a
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_curfreqoffset'
;------------------------------------------------------------
;offs                      Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
	Feasyax5043$axradio_set_curfreqoffset$0$0 ==.
	C$easyax5043.c$2105$1$433 ==.
;	..\COMMON\easyax5043.c:2105: static uint8_t axradio_set_curfreqoffset(int32_t offs)
;	-----------------------------------------
;	 function axradio_set_curfreqoffset
;	-----------------------------------------
_axradio_set_curfreqoffset:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	C$easyax5043.c$2107$1$439 ==.
;	..\COMMON\easyax5043.c:2107: axradio_curfreqoffset = offs;
	mov	dptr,#_axradio_curfreqoffset
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2108$1$439 ==.
;	..\COMMON\easyax5043.c:2108: if (checksignedlimit32(offs, axradio_phy_maxfreqoffset))
	mov	dptr,#_axradio_phy_maxfreqoffset
	clr	a
	movc	a,@a+dptr
	push	acc
	mov	a,#0x01
	movc	a,@a+dptr
	push	acc
	mov	a,#0x02
	movc	a,@a+dptr
	push	acc
	mov	a,#0x03
	movc	a,@a+dptr
	push	acc
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	_checksignedlimit32
	mov	r7,dpl
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	a,r7
	jz	00102$
	C$easyax5043.c$2109$1$439 ==.
;	..\COMMON\easyax5043.c:2109: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	sjmp	00106$
00102$:
	C$easyax5043.c$2110$1$439 ==.
;	..\COMMON\easyax5043.c:2110: if (axradio_curfreqoffset < 0)
	mov	dptr,#_axradio_curfreqoffset
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	jnb	acc.7,00104$
	C$easyax5043.c$2111$1$439 ==.
;	..\COMMON\easyax5043.c:2111: axradio_curfreqoffset = -axradio_phy_maxfreqoffset;
	mov	dptr,#_axradio_phy_maxfreqoffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_curfreqoffset
	clr	c
	clr	a
	subb	a,r4
	movx	@dptr,a
	clr	a
	subb	a,r5
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r6
	inc	dptr
	movx	@dptr,a
	clr	a
	subb	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00105$
00104$:
	C$easyax5043.c$2113$1$439 ==.
;	..\COMMON\easyax5043.c:2113: axradio_curfreqoffset = axradio_phy_maxfreqoffset;
	mov	dptr,#_axradio_phy_maxfreqoffset
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r5,a
	mov	a,#0x02
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x03
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_curfreqoffset
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00105$:
	C$easyax5043.c$2114$1$439 ==.
;	..\COMMON\easyax5043.c:2114: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
00106$:
	C$easyax5043.c$2115$1$439 ==.
	XFeasyax5043$axradio_set_curfreqoffset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_freqoffset'
;------------------------------------------------------------
;offs                      Allocated to registers r4 r5 r6 r7 
;ret                       Allocated to registers r7 
;ret2                      Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_set_freqoffset$0$0 ==.
	C$easyax5043.c$2117$1$439 ==.
;	..\COMMON\easyax5043.c:2117: uint8_t axradio_set_freqoffset(int32_t offs)
;	-----------------------------------------
;	 function axradio_set_freqoffset
;	-----------------------------------------
_axradio_set_freqoffset:
	C$easyax5043.c$2119$1$441 ==.
;	..\COMMON\easyax5043.c:2119: uint8_t __autodata ret = axradio_set_curfreqoffset(offs);
	lcall	_axradio_set_curfreqoffset
	mov	r7,dpl
	C$easyax5043.c$2121$2$442 ==.
;	..\COMMON\easyax5043.c:2121: uint8_t __autodata ret2 = axradio_set_channel(axradio_curchannel);
	mov	dptr,#_axradio_curchannel
	movx	a,@dptr
	mov	dpl,a
	push	ar7
	lcall	_axradio_set_channel
	mov	r6,dpl
	pop	ar7
	C$easyax5043.c$2122$2$442 ==.
;	..\COMMON\easyax5043.c:2122: if (ret == AXRADIO_ERR_NOERROR)
	mov	a,r7
	jnz	00102$
	C$easyax5043.c$2123$2$442 ==.
;	..\COMMON\easyax5043.c:2123: ret = ret2;
	mov	ar7,r6
00102$:
	C$easyax5043.c$2125$1$441 ==.
;	..\COMMON\easyax5043.c:2125: return ret;
	mov	dpl,r7
	C$easyax5043.c$2126$1$441 ==.
	XG$axradio_set_freqoffset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_freqoffset'
;------------------------------------------------------------
	G$axradio_get_freqoffset$0$0 ==.
	C$easyax5043.c$2128$1$441 ==.
;	..\COMMON\easyax5043.c:2128: int32_t axradio_get_freqoffset(void)
;	-----------------------------------------
;	 function axradio_get_freqoffset
;	-----------------------------------------
_axradio_get_freqoffset:
	C$easyax5043.c$2130$1$444 ==.
;	..\COMMON\easyax5043.c:2130: return axradio_curfreqoffset;
	mov	dptr,#_axradio_curfreqoffset
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	C$easyax5043.c$2131$1$444 ==.
	XG$axradio_get_freqoffset$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_local_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_set_local_address$0$0 ==.
	C$easyax5043.c$2133$1$444 ==.
;	..\COMMON\easyax5043.c:2133: void axradio_set_local_address(const struct axradio_address_mask __generic *addr)
;	-----------------------------------------
;	 function axradio_set_local_address
;	-----------------------------------------
_axradio_set_local_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2135$1$446 ==.
;	..\COMMON\easyax5043.c:2135: memcpy_xdatageneric(&axradio_localaddr, addr, sizeof(axradio_localaddr));
	mov	_memcpy_PARM_2,r5
	mov	(_memcpy_PARM_2 + 1),r6
	mov	(_memcpy_PARM_2 + 2),r7
	mov	_memcpy_PARM_3,#0x08
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_axradio_localaddr
	mov	b,#0x00
	lcall	_memcpy
	C$easyax5043.c$2136$1$446 ==.
;	..\COMMON\easyax5043.c:2136: axradio_setaddrregs();
	lcall	_axradio_setaddrregs
	C$easyax5043.c$2137$1$446 ==.
	XG$axradio_set_local_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_local_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_get_local_address$0$0 ==.
	C$easyax5043.c$2139$1$446 ==.
;	..\COMMON\easyax5043.c:2139: void axradio_get_local_address(struct axradio_address_mask __generic *addr)
;	-----------------------------------------
;	 function axradio_get_local_address
;	-----------------------------------------
_axradio_get_local_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2141$1$448 ==.
;	..\COMMON\easyax5043.c:2141: memcpy_genericxdata(addr, &axradio_localaddr, sizeof(axradio_localaddr));
	mov	_memcpy_PARM_2,#_axradio_localaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x08
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	C$easyax5043.c$2142$1$448 ==.
	XG$axradio_get_local_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_default_remote_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_set_default_remote_address$0$0 ==.
	C$easyax5043.c$2144$1$448 ==.
;	..\COMMON\easyax5043.c:2144: void axradio_set_default_remote_address(const struct axradio_address __generic *addr)
;	-----------------------------------------
;	 function axradio_set_default_remote_address
;	-----------------------------------------
_axradio_set_default_remote_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2146$1$450 ==.
;	..\COMMON\easyax5043.c:2146: memcpy_xdatageneric(&axradio_default_remoteaddr, addr, sizeof(axradio_default_remoteaddr));
	mov	_memcpy_PARM_2,r5
	mov	(_memcpy_PARM_2 + 1),r6
	mov	(_memcpy_PARM_2 + 2),r7
	mov	_memcpy_PARM_3,#0x04
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dptr,#_axradio_default_remoteaddr
	mov	b,#0x00
	lcall	_memcpy
	C$easyax5043.c$2147$1$450 ==.
	XG$axradio_set_default_remote_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_get_default_remote_address'
;------------------------------------------------------------
;addr                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
	G$axradio_get_default_remote_address$0$0 ==.
	C$easyax5043.c$2149$1$450 ==.
;	..\COMMON\easyax5043.c:2149: void axradio_get_default_remote_address(struct axradio_address __generic *addr)
;	-----------------------------------------
;	 function axradio_get_default_remote_address
;	-----------------------------------------
_axradio_get_default_remote_address:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2151$1$452 ==.
;	..\COMMON\easyax5043.c:2151: memcpy_genericxdata(addr, &axradio_default_remoteaddr, sizeof(axradio_default_remoteaddr));
	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	_memcpy_PARM_3,#0x04
	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_memcpy
	C$easyax5043.c$2152$1$452 ==.
	XG$axradio_get_default_remote_address$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_transmit'
;------------------------------------------------------------
;pkt                       Allocated with name '_axradio_transmit_PARM_2'
;pktlen                    Allocated with name '_axradio_transmit_PARM_3'
;addr                      Allocated to registers r5 r6 r7 
;fifofree                  Allocated to registers r3 r4 
;i                         Allocated to registers r4 
;iesave                    Allocated to registers r4 
;len_byte                  Allocated to registers r6 
;------------------------------------------------------------
	G$axradio_transmit$0$0 ==.
	C$easyax5043.c$2154$1$452 ==.
;	..\COMMON\easyax5043.c:2154: uint8_t axradio_transmit(const struct axradio_address __generic *addr, const uint8_t __generic *pkt, uint16_t pktlen)
;	-----------------------------------------
;	 function axradio_transmit
;	-----------------------------------------
_axradio_transmit:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
	C$easyax5043.c$2156$1$454 ==.
;	..\COMMON\easyax5043.c:2156: switch (axradio_mode) {
	mov	r4,_axradio_mode
	cjne	r4,#0x10,00278$
	ljmp	00125$
00278$:
	cjne	r4,#0x11,00279$
	ljmp	00125$
00279$:
	cjne	r4,#0x12,00280$
	ljmp	00125$
00280$:
	cjne	r4,#0x13,00281$
	ljmp	00125$
00281$:
	cjne	r4,#0x18,00282$
	sjmp	00105$
00282$:
	cjne	r4,#0x19,00283$
	sjmp	00105$
00283$:
	cjne	r4,#0x1a,00284$
	sjmp	00105$
00284$:
	cjne	r4,#0x1b,00285$
	sjmp	00105$
00285$:
	cjne	r4,#0x1c,00286$
	sjmp	00105$
00286$:
	cjne	r4,#0x20,00287$
	ljmp	00116$
00287$:
	cjne	r4,#0x21,00288$
	ljmp	00116$
00288$:
	cjne	r4,#0x30,00289$
	ljmp	00128$
00289$:
	cjne	r4,#0x31,00290$
	ljmp	00128$
00290$:
	ljmp	00162$
	C$easyax5043.c$2161$2$455 ==.
;	..\COMMON\easyax5043.c:2161: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
00105$:
	C$easyax5043.c$2163$3$456 ==.
;	..\COMMON\easyax5043.c:2163: uint16_t __autodata fifofree = radio_read16((uint16_t)&AX5043_FIFOFREE1);
	mov	dptr,#_AX5043_FIFOFREE1
	lcall	_radio_read16
	mov	r3,dpl
	mov	r4,dph
	C$easyax5043.c$2164$3$456 ==.
;	..\COMMON\easyax5043.c:2164: if (fifofree < pktlen + 3)
	mov	a,#0x03
	add	a,_axradio_transmit_PARM_3
	mov	r1,a
	clr	a
	addc	a,(_axradio_transmit_PARM_3 + 1)
	mov	r2,a
	clr	c
	mov	a,r3
	subb	a,r1
	mov	a,r4
	subb	a,r2
	jnc	00107$
	C$easyax5043.c$2165$3$456 ==.
;	..\COMMON\easyax5043.c:2165: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
	ljmp	00164$
00107$:
	C$easyax5043.c$2167$2$455 ==.
;	..\COMMON\easyax5043.c:2167: if (pktlen) {
	mov	a,_axradio_transmit_PARM_3
	orl	a,(_axradio_transmit_PARM_3 + 1)
	jz	00112$
	C$easyax5043.c$2168$3$455 ==.
;	..\COMMON\easyax5043.c:2168: uint8_t __autodata i = pktlen;
	mov	r4,_axradio_transmit_PARM_3
	C$easyax5043.c$2169$3$457 ==.
;	..\COMMON\easyax5043.c:2169: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
	mov	dptr,#_AX5043_FIFODATA
	mov	a,#0xe1
	movx	@dptr,a
	C$easyax5043.c$2170$3$457 ==.
;	..\COMMON\easyax5043.c:2170: AX5043_FIFODATA = i + 1;
	mov	a,r4
	inc	a
	movx	@dptr,a
	C$easyax5043.c$2171$3$457 ==.
;	..\COMMON\easyax5043.c:2171: AX5043_FIFODATA = 0x08;
	mov	a,#0x08
	movx	@dptr,a
	C$easyax5043.c$2172$1$454 ==.
;	..\COMMON\easyax5043.c:2172: do {
	mov	r1,_axradio_transmit_PARM_2
	mov	r2,(_axradio_transmit_PARM_2 + 1)
	mov	r3,(_axradio_transmit_PARM_2 + 2)
00108$:
	C$easyax5043.c$2173$4$458 ==.
;	..\COMMON\easyax5043.c:2173: AX5043_FIFODATA = *pkt++;
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r1,dpl
	mov	r2,dph
	mov	dptr,#_AX5043_FIFODATA
	mov	a,r0
	movx	@dptr,a
	C$easyax5043.c$2174$3$457 ==.
;	..\COMMON\easyax5043.c:2174: } while (--i);
	djnz	r4,00108$
00112$:
	C$easyax5043.c$2176$2$455 ==.
;	..\COMMON\easyax5043.c:2176: AX5043_FIFOSTAT =  4; // FIFO commit
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x04
	movx	@dptr,a
	C$easyax5043.c$2178$3$459 ==.
;	..\COMMON\easyax5043.c:2178: uint8_t __autodata iesave = IE & 0x80;
	mov	a,#0x80
	anl	a,_IE
	mov	r4,a
	C$easyax5043.c$2179$3$459 ==.
;	..\COMMON\easyax5043.c:2179: EA = 0;
	clr	_EA
	C$easyax5043.c$2180$3$459 ==.
;	..\COMMON\easyax5043.c:2180: AX5043_IRQMASK0 |= 0x08;
	mov	dptr,#_AX5043_IRQMASK0
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x08
	orl	a,r3
	movx	@dptr,a
	C$easyax5043.c$2181$3$459 ==.
;	..\COMMON\easyax5043.c:2181: IE |= iesave;
	mov	a,r4
	orl	_IE,a
	C$easyax5043.c$2183$2$455 ==.
;	..\COMMON\easyax5043.c:2183: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00164$
	C$easyax5043.c$2190$2$455 ==.
;	..\COMMON\easyax5043.c:2190: case AXRADIO_MODE_WOR_RECEIVE:
00116$:
	C$easyax5043.c$2191$2$455 ==.
;	..\COMMON\easyax5043.c:2191: if (axradio_syncstate != syncstate_off)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	movx	a,@dptr
	jz	00118$
	C$easyax5043.c$2192$2$455 ==.
;	..\COMMON\easyax5043.c:2192: return AXRADIO_ERR_BUSY;
	mov	dpl,#0x02
	ljmp	00164$
00118$:
	C$easyax5043.c$2193$2$455 ==.
;	..\COMMON\easyax5043.c:2193: AX5043_IRQMASK1 = 0x00;
	mov	dptr,#_AX5043_IRQMASK1
	clr	a
	movx	@dptr,a
	C$easyax5043.c$2194$2$455 ==.
;	..\COMMON\easyax5043.c:2194: AX5043_IRQMASK0 = 0x00;
	mov	dptr,#_AX5043_IRQMASK0
	movx	@dptr,a
	C$easyax5043.c$2195$2$455 ==.
;	..\COMMON\easyax5043.c:2195: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x05
	movx	@dptr,a
	C$easyax5043.c$2196$2$455 ==.
;	..\COMMON\easyax5043.c:2196: AX5043_FIFOSTAT = 3;
	mov	dptr,#_AX5043_FIFOSTAT
	mov	a,#0x03
	movx	@dptr,a
	C$easyax5043.c$2197$2$455 ==.
;	..\COMMON\easyax5043.c:2197: while (AX5043_POWSTAT & 0x08);
00119$:
	mov	dptr,#_AX5043_POWSTAT
	movx	a,@dptr
	mov	r4,a
	jb	acc.3,00119$
	C$easyax5043.c$2198$2$455 ==.
;	..\COMMON\easyax5043.c:2198: ax5043_init_registers_tx();
	push	ar7
	push	ar6
	push	ar5
	lcall	_ax5043_init_registers_tx
	pop	ar5
	pop	ar6
	pop	ar7
	C$easyax5043.c$2199$2$455 ==.
;	..\COMMON\easyax5043.c:2199: goto dotx;
	C$easyax5043.c$2204$2$455 ==.
;	..\COMMON\easyax5043.c:2204: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
	sjmp	00128$
00125$:
	C$easyax5043.c$2205$2$455 ==.
;	..\COMMON\easyax5043.c:2205: if (axradio_syncstate != syncstate_off)
	mov	dptr,#_axradio_syncstate
	movx	a,@dptr
	movx	a,@dptr
	jz	00128$
	C$easyax5043.c$2206$2$455 ==.
;	..\COMMON\easyax5043.c:2206: return AXRADIO_ERR_BUSY;
	mov	dpl,#0x02
	ljmp	00164$
	C$easyax5043.c$2207$2$455 ==.
;	..\COMMON\easyax5043.c:2207: dotx:
00128$:
	C$easyax5043.c$2208$2$455 ==.
;	..\COMMON\easyax5043.c:2208: axradio_ack_count = axradio_framing_ack_retransmissions;
	mov	dptr,#_axradio_framing_ack_retransmissions
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
	C$easyax5043.c$2209$2$455 ==.
;	..\COMMON\easyax5043.c:2209: ++axradio_ack_seqnr;
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$2210$2$455 ==.
;	..\COMMON\easyax5043.c:2210: axradio_txbuffer_len = pktlen + axradio_framing_maclen;
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	r3,#0x00
	add	a,_axradio_transmit_PARM_3
	mov	r2,a
	mov	a,r3
	addc	a,(_axradio_transmit_PARM_3 + 1)
	mov	r3,a
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2211$2$455 ==.
;	..\COMMON\easyax5043.c:2211: if (axradio_txbuffer_len > sizeof(axradio_txbuffer))
	clr	c
	mov	a,#0x04
	subb	a,r2
	mov	a,#0x01
	subb	a,r3
	jnc	00130$
	C$easyax5043.c$2212$2$455 ==.
;	..\COMMON\easyax5043.c:2212: return AXRADIO_ERR_INVALID;
	mov	dpl,#0x04
	ljmp	00164$
00130$:
	C$easyax5043.c$2213$2$455 ==.
;	..\COMMON\easyax5043.c:2213: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
	mov	_memset_PARM_3,r4
	mov	(_memset_PARM_3 + 1),#0x00
	mov	_memset_PARM_2,#0x00
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	push	ar7
	push	ar6
	push	ar5
	lcall	_memset
	C$easyax5043.c$2214$2$455 ==.
;	..\COMMON\easyax5043.c:2214: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_maclen], pkt, pktlen);
	mov	dptr,#_axradio_framing_maclen
	clr	a
	movc	a,@a+dptr
	add	a,#_axradio_txbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r3,a
	mov	r2,#0x00
	mov	_memcpy_PARM_2,_axradio_transmit_PARM_2
	mov	(_memcpy_PARM_2 + 1),(_axradio_transmit_PARM_2 + 1)
	mov	(_memcpy_PARM_2 + 2),(_axradio_transmit_PARM_2 + 2)
	mov	_memcpy_PARM_3,_axradio_transmit_PARM_3
	mov	(_memcpy_PARM_3 + 1),(_axradio_transmit_PARM_3 + 1)
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memcpy
	pop	ar5
	pop	ar6
	pop	ar7
	C$easyax5043.c$2215$2$455 ==.
;	..\COMMON\easyax5043.c:2215: if (axradio_framing_ack_seqnrpos != 0xff)
	mov	dptr,#_axradio_framing_ack_seqnrpos
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xff,00299$
	sjmp	00132$
00299$:
	C$easyax5043.c$2216$2$455 ==.
;	..\COMMON\easyax5043.c:2216: axradio_txbuffer[axradio_framing_ack_seqnrpos] = axradio_ack_seqnr;
	mov	a,r4
	add	a,#_axradio_txbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r3,a
	mov	dptr,#_axradio_ack_seqnr
	movx	a,@dptr
	mov	r2,a
	mov	dpl,r4
	mov	dph,r3
	movx	@dptr,a
00132$:
	C$easyax5043.c$2217$2$455 ==.
;	..\COMMON\easyax5043.c:2217: if (axradio_framing_destaddrpos != 0xff)
	mov	dptr,#_axradio_framing_destaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	cjne	r4,#0xff,00300$
	sjmp	00134$
00300$:
	C$easyax5043.c$2218$2$455 ==.
;	..\COMMON\easyax5043.c:2218: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_destaddrpos], &addr->addr, axradio_framing_addrlen);
	mov	a,r4
	add	a,#_axradio_txbuffer
	mov	r4,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r3,a
	mov	r2,#0x00
	mov	_memcpy_PARM_2,r5
	mov	(_memcpy_PARM_2 + 1),r6
	mov	(_memcpy_PARM_2 + 2),r7
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_memcpy_PARM_3,r7
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r2
	mov	dpl,r4
	mov	dph,r3
	mov	b,r2
	lcall	_memcpy
00134$:
	C$easyax5043.c$2219$2$455 ==.
;	..\COMMON\easyax5043.c:2219: if (axradio_framing_sourceaddrpos != 0xff)
	mov	dptr,#_axradio_framing_sourceaddrpos
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	cjne	r7,#0xff,00301$
	sjmp	00136$
00301$:
	C$easyax5043.c$2220$2$455 ==.
;	..\COMMON\easyax5043.c:2220: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
	mov	a,r7
	add	a,#_axradio_txbuffer
	mov	r7,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r6,a
	mov	r5,#0x00
	mov	_memcpy_PARM_2,#_axradio_localaddr
	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
	mov	(_memcpy_PARM_2 + 2),r5
	mov	dptr,#_axradio_framing_addrlen
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	mov	_memcpy_PARM_3,r4
;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
	mov	(_memcpy_PARM_3 + 1),r5
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	lcall	_memcpy
00136$:
	C$easyax5043.c$2221$2$455 ==.
;	..\COMMON\easyax5043.c:2221: if (axradio_framing_lenmask) {
	mov	dptr,#_axradio_framing_lenmask
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	jz	00138$
	C$easyax5043.c$2222$3$460 ==.
;	..\COMMON\easyax5043.c:2222: uint8_t __autodata len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#_axradio_framing_lenoffs
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,r5
	clr	c
	subb	a,r6
	anl	a,r7
	mov	r6,a
	C$easyax5043.c$2223$3$460 ==.
;	..\COMMON\easyax5043.c:2223: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
	mov	dptr,#_axradio_framing_lenpos
	clr	a
	movc	a,@a+dptr
	add	a,#_axradio_txbuffer
	mov	r5,a
	clr	a
	addc	a,#(_axradio_txbuffer >> 8)
	mov	r4,a
	mov	dpl,r5
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	mov	a,r7
	cpl	a
	mov	r7,a
	anl	a,r3
	orl	ar6,a
	mov	dpl,r5
	mov	dph,r4
	mov	a,r6
	movx	@dptr,a
00138$:
	C$easyax5043.c$2225$2$455 ==.
;	..\COMMON\easyax5043.c:2225: if (axradio_framing_swcrclen)
	mov	dptr,#_axradio_framing_swcrclen
	clr	a
	movc	a,@a+dptr
	jz	00140$
	C$easyax5043.c$2226$2$455 ==.
;	..\COMMON\easyax5043.c:2226: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	lcall	_axradio_framing_append_crc
	mov	r6,dpl
	mov	r7,dph
	dec	sp
	dec	sp
	mov	dptr,#_axradio_txbuffer_len
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00140$:
	C$easyax5043.c$2227$2$455 ==.
;	..\COMMON\easyax5043.c:2227: if (axradio_phy_pn9)
	mov	dptr,#_axradio_phy_pn9
	clr	a
	movc	a,@a+dptr
	jz	00142$
	C$easyax5043.c$2228$2$455 ==.
;	..\COMMON\easyax5043.c:2228: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -(AX5043_ENCODING & 0x01));
	mov	dptr,#_AX5043_ENCODING
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x01
	clr	c
	clr	a
	subb	a,r7
	mov	r7,a
	push	ar7
	mov	a,#0xff
	push	acc
	mov	a,#0x01
	push	acc
	mov	dptr,#_axradio_txbuffer_len
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dptr,#_axradio_txbuffer
	mov	b,#0x00
	lcall	_pn9_buffer
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
00142$:
	C$easyax5043.c$2229$2$455 ==.
;	..\COMMON\easyax5043.c:2229: if (axradio_mode == AXRADIO_MODE_SYNC_MASTER ||
	mov	a,#0x30
	cjne	a,_axradio_mode,00305$
	sjmp	00143$
00305$:
	C$easyax5043.c$2230$2$455 ==.
;	..\COMMON\easyax5043.c:2230: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
	mov	a,#0x31
	cjne	a,_axradio_mode,00144$
00143$:
	C$easyax5043.c$2231$2$455 ==.
;	..\COMMON\easyax5043.c:2231: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	ljmp	00164$
00144$:
	C$easyax5043.c$2232$2$455 ==.
;	..\COMMON\easyax5043.c:2232: if (axradio_mode == AXRADIO_MODE_WOR_TRANSMIT ||
	mov	a,#0x11
	cjne	a,_axradio_mode,00308$
	sjmp	00146$
00308$:
	C$easyax5043.c$2233$2$455 ==.
;	..\COMMON\easyax5043.c:2233: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT)
	mov	a,#0x13
	cjne	a,_axradio_mode,00147$
00146$:
	C$easyax5043.c$2234$2$455 ==.
;	..\COMMON\easyax5043.c:2234: axradio_txbuffer_cnt = axradio_phy_preamble_wor_longlen;
	mov	dptr,#_axradio_phy_preamble_wor_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00148$
00147$:
	C$easyax5043.c$2236$2$455 ==.
;	..\COMMON\easyax5043.c:2236: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
	mov	dptr,#_axradio_phy_preamble_longlen
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	dptr,#_axradio_txbuffer_cnt
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
00148$:
	C$easyax5043.c$2237$2$455 ==.
;	..\COMMON\easyax5043.c:2237: if (axradio_phy_lbt_retries) {
	mov	dptr,#_axradio_phy_lbt_retries
	clr	a
	movc	a,@a+dptr
	jz	00161$
	C$easyax5043.c$2238$3$461 ==.
;	..\COMMON\easyax5043.c:2238: switch (axradio_mode) {
	mov	r7,_axradio_mode
	cjne	r7,#0x10,00312$
	sjmp	00157$
00312$:
	cjne	r7,#0x11,00313$
	sjmp	00157$
00313$:
	cjne	r7,#0x12,00314$
	sjmp	00157$
00314$:
	cjne	r7,#0x13,00315$
	sjmp	00157$
00315$:
	cjne	r7,#0x20,00316$
	sjmp	00157$
00316$:
	cjne	r7,#0x21,00317$
	sjmp	00157$
00317$:
	cjne	r7,#0x22,00318$
	sjmp	00157$
00318$:
	cjne	r7,#0x23,00161$
	C$easyax5043.c$2246$4$462 ==.
;	..\COMMON\easyax5043.c:2246: case AXRADIO_MODE_ACK_RECEIVE:
00157$:
	C$easyax5043.c$2247$4$462 ==.
;	..\COMMON\easyax5043.c:2247: ax5043_off_xtal();
	lcall	_ax5043_off_xtal
	C$easyax5043.c$2248$4$462 ==.
;	..\COMMON\easyax5043.c:2248: ax5043_init_registers_rx();
	lcall	_ax5043_init_registers_rx
	C$easyax5043.c$2249$4$462 ==.
;	..\COMMON\easyax5043.c:2249: AX5043_RSSIREFERENCE = axradio_phy_rssireference;
	mov	dptr,#_axradio_phy_rssireference
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_AX5043_RSSIREFERENCE
	movx	@dptr,a
	C$easyax5043.c$2250$4$462 ==.
;	..\COMMON\easyax5043.c:2250: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_RX;
	mov	dptr,#_AX5043_PWRMODE
	mov	a,#0x09
	movx	@dptr,a
	C$easyax5043.c$2251$4$462 ==.
;	..\COMMON\easyax5043.c:2251: axradio_ack_count = axradio_phy_lbt_retries;
	mov	dptr,#_axradio_phy_lbt_retries
	clr	a
	movc	a,@a+dptr
	mov	dptr,#_axradio_ack_count
	movx	@dptr,a
	C$easyax5043.c$2252$4$462 ==.
;	..\COMMON\easyax5043.c:2252: axradio_syncstate = syncstate_lbt;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x01
	movx	@dptr,a
	C$easyax5043.c$2253$4$462 ==.
;	..\COMMON\easyax5043.c:2253: wtimer_remove(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer_remove
	C$easyax5043.c$2254$4$462 ==.
;	..\COMMON\easyax5043.c:2254: axradio_timer.time = axradio_phy_cs_period;
	mov	dptr,#_axradio_phy_cs_period
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	a,#0x01
	movc	a,@a+dptr
	mov	r7,a
	mov	r5,#0x00
	mov	r4,#0x00
	mov	dptr,#(_axradio_timer + 0x0004)
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	C$easyax5043.c$2255$4$462 ==.
;	..\COMMON\easyax5043.c:2255: wtimer0_addrelative(&axradio_timer);
	mov	dptr,#_axradio_timer
	lcall	_wtimer0_addrelative
	C$easyax5043.c$2256$4$462 ==.
;	..\COMMON\easyax5043.c:2256: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	C$easyax5043.c$2260$2$455 ==.
;	..\COMMON\easyax5043.c:2260: }
	sjmp	00164$
00161$:
	C$easyax5043.c$2262$2$455 ==.
;	..\COMMON\easyax5043.c:2262: axradio_syncstate = syncstate_asynctx;
	mov	dptr,#_axradio_syncstate
	mov	a,#0x02
	movx	@dptr,a
	C$easyax5043.c$2263$2$455 ==.
;	..\COMMON\easyax5043.c:2263: ax5043_prepare_tx();
	lcall	_ax5043_prepare_tx
	C$easyax5043.c$2264$2$455 ==.
;	..\COMMON\easyax5043.c:2264: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
	C$easyax5043.c$2266$2$455 ==.
;	..\COMMON\easyax5043.c:2266: default:
	sjmp	00164$
00162$:
	C$easyax5043.c$2267$2$455 ==.
;	..\COMMON\easyax5043.c:2267: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	C$easyax5043.c$2268$1$454 ==.
;	..\COMMON\easyax5043.c:2268: }
00164$:
	C$easyax5043.c$2269$1$454 ==.
	XG$axradio_transmit$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_set_paramsets'
;------------------------------------------------------------
;val                       Allocated to registers r7 
;------------------------------------------------------------
	Feasyax5043$axradio_set_paramsets$0$0 ==.
	C$easyax5043.c$2271$1$454 ==.
;	..\COMMON\easyax5043.c:2271: static __reentrantb uint8_t axradio_set_paramsets(uint8_t val) __reentrant
;	-----------------------------------------
;	 function axradio_set_paramsets
;	-----------------------------------------
_axradio_set_paramsets:
	mov	r7,dpl
	C$easyax5043.c$2273$1$464 ==.
;	..\COMMON\easyax5043.c:2273: if (!AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode))
	mov	a,#0xf8
	anl	a,_axradio_mode
	mov	r6,a
	cjne	r6,#0x28,00108$
	sjmp	00102$
00108$:
	C$easyax5043.c$2274$1$464 ==.
;	..\COMMON\easyax5043.c:2274: return AXRADIO_ERR_NOTSUPPORTED;
	mov	dpl,#0x01
	sjmp	00103$
00102$:
	C$easyax5043.c$2275$1$464 ==.
;	..\COMMON\easyax5043.c:2275: AX5043_RXPARAMSETS = val;
	mov	dptr,#_AX5043_RXPARAMSETS
	mov	a,r7
	movx	@dptr,a
	C$easyax5043.c$2276$1$464 ==.
;	..\COMMON\easyax5043.c:2276: return AXRADIO_ERR_NOERROR;
	mov	dpl,#0x00
00103$:
	C$easyax5043.c$2277$1$464 ==.
	XFeasyax5043$axradio_set_paramsets$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_agc_freeze'
;------------------------------------------------------------
	G$axradio_agc_freeze$0$0 ==.
	C$easyax5043.c$2279$1$464 ==.
;	..\COMMON\easyax5043.c:2279: uint8_t axradio_agc_freeze(void)
;	-----------------------------------------
;	 function axradio_agc_freeze
;	-----------------------------------------
_axradio_agc_freeze:
	C$easyax5043.c$2281$1$466 ==.
;	..\COMMON\easyax5043.c:2281: return axradio_set_paramsets(0xff);
	mov	dpl,#0xff
	lcall	_axradio_set_paramsets
	C$easyax5043.c$2282$1$466 ==.
	XG$axradio_agc_freeze$0$0 ==.
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'axradio_agc_thaw'
;------------------------------------------------------------
	G$axradio_agc_thaw$0$0 ==.
	C$easyax5043.c$2284$1$466 ==.
;	..\COMMON\easyax5043.c:2284: uint8_t axradio_agc_thaw(void)
;	-----------------------------------------
;	 function axradio_agc_thaw
;	-----------------------------------------
_axradio_agc_thaw:
	C$easyax5043.c$2286$1$468 ==.
;	..\COMMON\easyax5043.c:2286: return axradio_set_paramsets(0x00);
	mov	dpl,#0x00
	lcall	_axradio_set_paramsets
	C$easyax5043.c$2287$1$468 ==.
	XG$axradio_agc_thaw$0$0 ==.
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
Feasyax5043$__str_0$0$0 == .
___str_0:
	.ascii "CH "
	.db 0x00
Feasyax5043$__str_1$0$0 == .
___str_1:
	.ascii " RNG "
	.db 0x00
Feasyax5043$__str_2$0$0 == .
___str_2:
	.ascii " VCOI "
	.db 0x00
Feasyax5043$__str_3$0$0 == .
___str_3:
	.ascii " *"
	.db 0x00
	.area XINIT   (CODE)
Feasyax5043$__xinit_f30_saved$0$0 == .
__xinit__f30_saved:
	.db #0x3f	; 63
Feasyax5043$__xinit_f31_saved$0$0 == .
__xinit__f31_saved:
	.db #0xf0	; 240
Feasyax5043$__xinit_f32_saved$0$0 == .
__xinit__f32_saved:
	.db #0x3f	; 63
Feasyax5043$__xinit_f33_saved$0$0 == .
__xinit__f33_saved:
	.db #0xf0	; 240
	.area CABS    (ABS,CODE)
