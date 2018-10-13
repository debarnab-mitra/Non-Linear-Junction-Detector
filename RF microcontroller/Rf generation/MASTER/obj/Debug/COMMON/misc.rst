                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module misc
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _com0_writestr
                                     12 	.globl _com0_setpos
                                     13 	.globl _dbglink_writestr
                                     14 	.globl _dbglink_tx
                                     15 	.globl _lcd2_writestr
                                     16 	.globl _lcd2_setpos
                                     17 	.globl _wtimer_remove
                                     18 	.globl _wtimer1_addrelative
                                     19 	.globl _wtimer_runcallbacks
                                     20 	.globl _wtimer_idle
                                     21 	.globl _PORTC_7
                                     22 	.globl _PORTC_6
                                     23 	.globl _PORTC_5
                                     24 	.globl _PORTC_4
                                     25 	.globl _PORTC_3
                                     26 	.globl _PORTC_2
                                     27 	.globl _PORTC_1
                                     28 	.globl _PORTC_0
                                     29 	.globl _PORTB_7
                                     30 	.globl _PORTB_6
                                     31 	.globl _PORTB_5
                                     32 	.globl _PORTB_4
                                     33 	.globl _PORTB_3
                                     34 	.globl _PORTB_2
                                     35 	.globl _PORTB_1
                                     36 	.globl _PORTB_0
                                     37 	.globl _PORTA_7
                                     38 	.globl _PORTA_6
                                     39 	.globl _PORTA_5
                                     40 	.globl _PORTA_4
                                     41 	.globl _PORTA_3
                                     42 	.globl _PORTA_2
                                     43 	.globl _PORTA_1
                                     44 	.globl _PORTA_0
                                     45 	.globl _PINC_7
                                     46 	.globl _PINC_6
                                     47 	.globl _PINC_5
                                     48 	.globl _PINC_4
                                     49 	.globl _PINC_3
                                     50 	.globl _PINC_2
                                     51 	.globl _PINC_1
                                     52 	.globl _PINC_0
                                     53 	.globl _PINB_7
                                     54 	.globl _PINB_6
                                     55 	.globl _PINB_5
                                     56 	.globl _PINB_4
                                     57 	.globl _PINB_3
                                     58 	.globl _PINB_2
                                     59 	.globl _PINB_1
                                     60 	.globl _PINB_0
                                     61 	.globl _PINA_7
                                     62 	.globl _PINA_6
                                     63 	.globl _PINA_5
                                     64 	.globl _PINA_4
                                     65 	.globl _PINA_3
                                     66 	.globl _PINA_2
                                     67 	.globl _PINA_1
                                     68 	.globl _PINA_0
                                     69 	.globl _CY
                                     70 	.globl _AC
                                     71 	.globl _F0
                                     72 	.globl _RS1
                                     73 	.globl _RS0
                                     74 	.globl _OV
                                     75 	.globl _F1
                                     76 	.globl _P
                                     77 	.globl _IP_7
                                     78 	.globl _IP_6
                                     79 	.globl _IP_5
                                     80 	.globl _IP_4
                                     81 	.globl _IP_3
                                     82 	.globl _IP_2
                                     83 	.globl _IP_1
                                     84 	.globl _IP_0
                                     85 	.globl _EA
                                     86 	.globl _IE_7
                                     87 	.globl _IE_6
                                     88 	.globl _IE_5
                                     89 	.globl _IE_4
                                     90 	.globl _IE_3
                                     91 	.globl _IE_2
                                     92 	.globl _IE_1
                                     93 	.globl _IE_0
                                     94 	.globl _EIP_7
                                     95 	.globl _EIP_6
                                     96 	.globl _EIP_5
                                     97 	.globl _EIP_4
                                     98 	.globl _EIP_3
                                     99 	.globl _EIP_2
                                    100 	.globl _EIP_1
                                    101 	.globl _EIP_0
                                    102 	.globl _EIE_7
                                    103 	.globl _EIE_6
                                    104 	.globl _EIE_5
                                    105 	.globl _EIE_4
                                    106 	.globl _EIE_3
                                    107 	.globl _EIE_2
                                    108 	.globl _EIE_1
                                    109 	.globl _EIE_0
                                    110 	.globl _E2IP_7
                                    111 	.globl _E2IP_6
                                    112 	.globl _E2IP_5
                                    113 	.globl _E2IP_4
                                    114 	.globl _E2IP_3
                                    115 	.globl _E2IP_2
                                    116 	.globl _E2IP_1
                                    117 	.globl _E2IP_0
                                    118 	.globl _E2IE_7
                                    119 	.globl _E2IE_6
                                    120 	.globl _E2IE_5
                                    121 	.globl _E2IE_4
                                    122 	.globl _E2IE_3
                                    123 	.globl _E2IE_2
                                    124 	.globl _E2IE_1
                                    125 	.globl _E2IE_0
                                    126 	.globl _B_7
                                    127 	.globl _B_6
                                    128 	.globl _B_5
                                    129 	.globl _B_4
                                    130 	.globl _B_3
                                    131 	.globl _B_2
                                    132 	.globl _B_1
                                    133 	.globl _B_0
                                    134 	.globl _ACC_7
                                    135 	.globl _ACC_6
                                    136 	.globl _ACC_5
                                    137 	.globl _ACC_4
                                    138 	.globl _ACC_3
                                    139 	.globl _ACC_2
                                    140 	.globl _ACC_1
                                    141 	.globl _ACC_0
                                    142 	.globl _WTSTAT
                                    143 	.globl _WTIRQEN
                                    144 	.globl _WTEVTD
                                    145 	.globl _WTEVTD1
                                    146 	.globl _WTEVTD0
                                    147 	.globl _WTEVTC
                                    148 	.globl _WTEVTC1
                                    149 	.globl _WTEVTC0
                                    150 	.globl _WTEVTB
                                    151 	.globl _WTEVTB1
                                    152 	.globl _WTEVTB0
                                    153 	.globl _WTEVTA
                                    154 	.globl _WTEVTA1
                                    155 	.globl _WTEVTA0
                                    156 	.globl _WTCNTR1
                                    157 	.globl _WTCNTB
                                    158 	.globl _WTCNTB1
                                    159 	.globl _WTCNTB0
                                    160 	.globl _WTCNTA
                                    161 	.globl _WTCNTA1
                                    162 	.globl _WTCNTA0
                                    163 	.globl _WTCFGB
                                    164 	.globl _WTCFGA
                                    165 	.globl _WDTRESET
                                    166 	.globl _WDTCFG
                                    167 	.globl _U1STATUS
                                    168 	.globl _U1SHREG
                                    169 	.globl _U1MODE
                                    170 	.globl _U1CTRL
                                    171 	.globl _U0STATUS
                                    172 	.globl _U0SHREG
                                    173 	.globl _U0MODE
                                    174 	.globl _U0CTRL
                                    175 	.globl _T2STATUS
                                    176 	.globl _T2PERIOD
                                    177 	.globl _T2PERIOD1
                                    178 	.globl _T2PERIOD0
                                    179 	.globl _T2MODE
                                    180 	.globl _T2CNT
                                    181 	.globl _T2CNT1
                                    182 	.globl _T2CNT0
                                    183 	.globl _T2CLKSRC
                                    184 	.globl _T1STATUS
                                    185 	.globl _T1PERIOD
                                    186 	.globl _T1PERIOD1
                                    187 	.globl _T1PERIOD0
                                    188 	.globl _T1MODE
                                    189 	.globl _T1CNT
                                    190 	.globl _T1CNT1
                                    191 	.globl _T1CNT0
                                    192 	.globl _T1CLKSRC
                                    193 	.globl _T0STATUS
                                    194 	.globl _T0PERIOD
                                    195 	.globl _T0PERIOD1
                                    196 	.globl _T0PERIOD0
                                    197 	.globl _T0MODE
                                    198 	.globl _T0CNT
                                    199 	.globl _T0CNT1
                                    200 	.globl _T0CNT0
                                    201 	.globl _T0CLKSRC
                                    202 	.globl _SPSTATUS
                                    203 	.globl _SPSHREG
                                    204 	.globl _SPMODE
                                    205 	.globl _SPCLKSRC
                                    206 	.globl _RADIOSTAT
                                    207 	.globl _RADIOSTAT1
                                    208 	.globl _RADIOSTAT0
                                    209 	.globl _RADIODATA
                                    210 	.globl _RADIODATA3
                                    211 	.globl _RADIODATA2
                                    212 	.globl _RADIODATA1
                                    213 	.globl _RADIODATA0
                                    214 	.globl _RADIOADDR
                                    215 	.globl _RADIOADDR1
                                    216 	.globl _RADIOADDR0
                                    217 	.globl _RADIOACC
                                    218 	.globl _OC1STATUS
                                    219 	.globl _OC1PIN
                                    220 	.globl _OC1MODE
                                    221 	.globl _OC1COMP
                                    222 	.globl _OC1COMP1
                                    223 	.globl _OC1COMP0
                                    224 	.globl _OC0STATUS
                                    225 	.globl _OC0PIN
                                    226 	.globl _OC0MODE
                                    227 	.globl _OC0COMP
                                    228 	.globl _OC0COMP1
                                    229 	.globl _OC0COMP0
                                    230 	.globl _NVSTATUS
                                    231 	.globl _NVKEY
                                    232 	.globl _NVDATA
                                    233 	.globl _NVDATA1
                                    234 	.globl _NVDATA0
                                    235 	.globl _NVADDR
                                    236 	.globl _NVADDR1
                                    237 	.globl _NVADDR0
                                    238 	.globl _IC1STATUS
                                    239 	.globl _IC1MODE
                                    240 	.globl _IC1CAPT
                                    241 	.globl _IC1CAPT1
                                    242 	.globl _IC1CAPT0
                                    243 	.globl _IC0STATUS
                                    244 	.globl _IC0MODE
                                    245 	.globl _IC0CAPT
                                    246 	.globl _IC0CAPT1
                                    247 	.globl _IC0CAPT0
                                    248 	.globl _PORTR
                                    249 	.globl _PORTC
                                    250 	.globl _PORTB
                                    251 	.globl _PORTA
                                    252 	.globl _PINR
                                    253 	.globl _PINC
                                    254 	.globl _PINB
                                    255 	.globl _PINA
                                    256 	.globl _DIRR
                                    257 	.globl _DIRC
                                    258 	.globl _DIRB
                                    259 	.globl _DIRA
                                    260 	.globl _DBGLNKSTAT
                                    261 	.globl _DBGLNKBUF
                                    262 	.globl _CODECONFIG
                                    263 	.globl _CLKSTAT
                                    264 	.globl _CLKCON
                                    265 	.globl _ANALOGCOMP
                                    266 	.globl _ADCCONV
                                    267 	.globl _ADCCLKSRC
                                    268 	.globl _ADCCH3CONFIG
                                    269 	.globl _ADCCH2CONFIG
                                    270 	.globl _ADCCH1CONFIG
                                    271 	.globl _ADCCH0CONFIG
                                    272 	.globl __XPAGE
                                    273 	.globl _XPAGE
                                    274 	.globl _SP
                                    275 	.globl _PSW
                                    276 	.globl _PCON
                                    277 	.globl _IP
                                    278 	.globl _IE
                                    279 	.globl _EIP
                                    280 	.globl _EIE
                                    281 	.globl _E2IP
                                    282 	.globl _E2IE
                                    283 	.globl _DPS
                                    284 	.globl _DPTR1
                                    285 	.globl _DPTR0
                                    286 	.globl _DPL1
                                    287 	.globl _DPL
                                    288 	.globl _DPH1
                                    289 	.globl _DPH
                                    290 	.globl _B
                                    291 	.globl _ACC
                                    292 	.globl _XTALREADY
                                    293 	.globl _XTALOSC
                                    294 	.globl _XTALAMPL
                                    295 	.globl _SILICONREV
                                    296 	.globl _SCRATCH3
                                    297 	.globl _SCRATCH2
                                    298 	.globl _SCRATCH1
                                    299 	.globl _SCRATCH0
                                    300 	.globl _RADIOMUX
                                    301 	.globl _RADIOFSTATADDR
                                    302 	.globl _RADIOFSTATADDR1
                                    303 	.globl _RADIOFSTATADDR0
                                    304 	.globl _RADIOFDATAADDR
                                    305 	.globl _RADIOFDATAADDR1
                                    306 	.globl _RADIOFDATAADDR0
                                    307 	.globl _OSCRUN
                                    308 	.globl _OSCREADY
                                    309 	.globl _OSCFORCERUN
                                    310 	.globl _OSCCALIB
                                    311 	.globl _MISCCTRL
                                    312 	.globl _LPXOSCGM
                                    313 	.globl _LPOSCREF
                                    314 	.globl _LPOSCREF1
                                    315 	.globl _LPOSCREF0
                                    316 	.globl _LPOSCPER
                                    317 	.globl _LPOSCPER1
                                    318 	.globl _LPOSCPER0
                                    319 	.globl _LPOSCKFILT
                                    320 	.globl _LPOSCKFILT1
                                    321 	.globl _LPOSCKFILT0
                                    322 	.globl _LPOSCFREQ
                                    323 	.globl _LPOSCFREQ1
                                    324 	.globl _LPOSCFREQ0
                                    325 	.globl _LPOSCCONFIG
                                    326 	.globl _PINSEL
                                    327 	.globl _PINCHGC
                                    328 	.globl _PINCHGB
                                    329 	.globl _PINCHGA
                                    330 	.globl _PALTRADIO
                                    331 	.globl _PALTC
                                    332 	.globl _PALTB
                                    333 	.globl _PALTA
                                    334 	.globl _INTCHGC
                                    335 	.globl _INTCHGB
                                    336 	.globl _INTCHGA
                                    337 	.globl _EXTIRQ
                                    338 	.globl _GPIOENABLE
                                    339 	.globl _ANALOGA
                                    340 	.globl _FRCOSCREF
                                    341 	.globl _FRCOSCREF1
                                    342 	.globl _FRCOSCREF0
                                    343 	.globl _FRCOSCPER
                                    344 	.globl _FRCOSCPER1
                                    345 	.globl _FRCOSCPER0
                                    346 	.globl _FRCOSCKFILT
                                    347 	.globl _FRCOSCKFILT1
                                    348 	.globl _FRCOSCKFILT0
                                    349 	.globl _FRCOSCFREQ
                                    350 	.globl _FRCOSCFREQ1
                                    351 	.globl _FRCOSCFREQ0
                                    352 	.globl _FRCOSCCTRL
                                    353 	.globl _FRCOSCCONFIG
                                    354 	.globl _DMA1CONFIG
                                    355 	.globl _DMA1ADDR
                                    356 	.globl _DMA1ADDR1
                                    357 	.globl _DMA1ADDR0
                                    358 	.globl _DMA0CONFIG
                                    359 	.globl _DMA0ADDR
                                    360 	.globl _DMA0ADDR1
                                    361 	.globl _DMA0ADDR0
                                    362 	.globl _ADCTUNE2
                                    363 	.globl _ADCTUNE1
                                    364 	.globl _ADCTUNE0
                                    365 	.globl _ADCCH3VAL
                                    366 	.globl _ADCCH3VAL1
                                    367 	.globl _ADCCH3VAL0
                                    368 	.globl _ADCCH2VAL
                                    369 	.globl _ADCCH2VAL1
                                    370 	.globl _ADCCH2VAL0
                                    371 	.globl _ADCCH1VAL
                                    372 	.globl _ADCCH1VAL1
                                    373 	.globl _ADCCH1VAL0
                                    374 	.globl _ADCCH0VAL
                                    375 	.globl _ADCCH0VAL1
                                    376 	.globl _ADCCH0VAL0
                                    377 	.globl _lcd2_display_radio_error
                                    378 	.globl _com0_display_radio_error
                                    379 	.globl _dbglink_display_radio_error
                                    380 	.globl _delay_ms
                                    381 ;--------------------------------------------------------
                                    382 ; special function registers
                                    383 ;--------------------------------------------------------
                                    384 	.area RSEG    (ABS,DATA)
      000000                        385 	.org 0x0000
                           0000E0   386 G$ACC$0$0 == 0x00e0
                           0000E0   387 _ACC	=	0x00e0
                           0000F0   388 G$B$0$0 == 0x00f0
                           0000F0   389 _B	=	0x00f0
                           000083   390 G$DPH$0$0 == 0x0083
                           000083   391 _DPH	=	0x0083
                           000085   392 G$DPH1$0$0 == 0x0085
                           000085   393 _DPH1	=	0x0085
                           000082   394 G$DPL$0$0 == 0x0082
                           000082   395 _DPL	=	0x0082
                           000084   396 G$DPL1$0$0 == 0x0084
                           000084   397 _DPL1	=	0x0084
                           008382   398 G$DPTR0$0$0 == 0x8382
                           008382   399 _DPTR0	=	0x8382
                           008584   400 G$DPTR1$0$0 == 0x8584
                           008584   401 _DPTR1	=	0x8584
                           000086   402 G$DPS$0$0 == 0x0086
                           000086   403 _DPS	=	0x0086
                           0000A0   404 G$E2IE$0$0 == 0x00a0
                           0000A0   405 _E2IE	=	0x00a0
                           0000C0   406 G$E2IP$0$0 == 0x00c0
                           0000C0   407 _E2IP	=	0x00c0
                           000098   408 G$EIE$0$0 == 0x0098
                           000098   409 _EIE	=	0x0098
                           0000B0   410 G$EIP$0$0 == 0x00b0
                           0000B0   411 _EIP	=	0x00b0
                           0000A8   412 G$IE$0$0 == 0x00a8
                           0000A8   413 _IE	=	0x00a8
                           0000B8   414 G$IP$0$0 == 0x00b8
                           0000B8   415 _IP	=	0x00b8
                           000087   416 G$PCON$0$0 == 0x0087
                           000087   417 _PCON	=	0x0087
                           0000D0   418 G$PSW$0$0 == 0x00d0
                           0000D0   419 _PSW	=	0x00d0
                           000081   420 G$SP$0$0 == 0x0081
                           000081   421 _SP	=	0x0081
                           0000D9   422 G$XPAGE$0$0 == 0x00d9
                           0000D9   423 _XPAGE	=	0x00d9
                           0000D9   424 G$_XPAGE$0$0 == 0x00d9
                           0000D9   425 __XPAGE	=	0x00d9
                           0000CA   426 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA   427 _ADCCH0CONFIG	=	0x00ca
                           0000CB   428 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB   429 _ADCCH1CONFIG	=	0x00cb
                           0000D2   430 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2   431 _ADCCH2CONFIG	=	0x00d2
                           0000D3   432 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3   433 _ADCCH3CONFIG	=	0x00d3
                           0000D1   434 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1   435 _ADCCLKSRC	=	0x00d1
                           0000C9   436 G$ADCCONV$0$0 == 0x00c9
                           0000C9   437 _ADCCONV	=	0x00c9
                           0000E1   438 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1   439 _ANALOGCOMP	=	0x00e1
                           0000C6   440 G$CLKCON$0$0 == 0x00c6
                           0000C6   441 _CLKCON	=	0x00c6
                           0000C7   442 G$CLKSTAT$0$0 == 0x00c7
                           0000C7   443 _CLKSTAT	=	0x00c7
                           000097   444 G$CODECONFIG$0$0 == 0x0097
                           000097   445 _CODECONFIG	=	0x0097
                           0000E3   446 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3   447 _DBGLNKBUF	=	0x00e3
                           0000E2   448 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2   449 _DBGLNKSTAT	=	0x00e2
                           000089   450 G$DIRA$0$0 == 0x0089
                           000089   451 _DIRA	=	0x0089
                           00008A   452 G$DIRB$0$0 == 0x008a
                           00008A   453 _DIRB	=	0x008a
                           00008B   454 G$DIRC$0$0 == 0x008b
                           00008B   455 _DIRC	=	0x008b
                           00008E   456 G$DIRR$0$0 == 0x008e
                           00008E   457 _DIRR	=	0x008e
                           0000C8   458 G$PINA$0$0 == 0x00c8
                           0000C8   459 _PINA	=	0x00c8
                           0000E8   460 G$PINB$0$0 == 0x00e8
                           0000E8   461 _PINB	=	0x00e8
                           0000F8   462 G$PINC$0$0 == 0x00f8
                           0000F8   463 _PINC	=	0x00f8
                           00008D   464 G$PINR$0$0 == 0x008d
                           00008D   465 _PINR	=	0x008d
                           000080   466 G$PORTA$0$0 == 0x0080
                           000080   467 _PORTA	=	0x0080
                           000088   468 G$PORTB$0$0 == 0x0088
                           000088   469 _PORTB	=	0x0088
                           000090   470 G$PORTC$0$0 == 0x0090
                           000090   471 _PORTC	=	0x0090
                           00008C   472 G$PORTR$0$0 == 0x008c
                           00008C   473 _PORTR	=	0x008c
                           0000CE   474 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE   475 _IC0CAPT0	=	0x00ce
                           0000CF   476 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF   477 _IC0CAPT1	=	0x00cf
                           00CFCE   478 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE   479 _IC0CAPT	=	0xcfce
                           0000CC   480 G$IC0MODE$0$0 == 0x00cc
                           0000CC   481 _IC0MODE	=	0x00cc
                           0000CD   482 G$IC0STATUS$0$0 == 0x00cd
                           0000CD   483 _IC0STATUS	=	0x00cd
                           0000D6   484 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6   485 _IC1CAPT0	=	0x00d6
                           0000D7   486 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7   487 _IC1CAPT1	=	0x00d7
                           00D7D6   488 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6   489 _IC1CAPT	=	0xd7d6
                           0000D4   490 G$IC1MODE$0$0 == 0x00d4
                           0000D4   491 _IC1MODE	=	0x00d4
                           0000D5   492 G$IC1STATUS$0$0 == 0x00d5
                           0000D5   493 _IC1STATUS	=	0x00d5
                           000092   494 G$NVADDR0$0$0 == 0x0092
                           000092   495 _NVADDR0	=	0x0092
                           000093   496 G$NVADDR1$0$0 == 0x0093
                           000093   497 _NVADDR1	=	0x0093
                           009392   498 G$NVADDR$0$0 == 0x9392
                           009392   499 _NVADDR	=	0x9392
                           000094   500 G$NVDATA0$0$0 == 0x0094
                           000094   501 _NVDATA0	=	0x0094
                           000095   502 G$NVDATA1$0$0 == 0x0095
                           000095   503 _NVDATA1	=	0x0095
                           009594   504 G$NVDATA$0$0 == 0x9594
                           009594   505 _NVDATA	=	0x9594
                           000096   506 G$NVKEY$0$0 == 0x0096
                           000096   507 _NVKEY	=	0x0096
                           000091   508 G$NVSTATUS$0$0 == 0x0091
                           000091   509 _NVSTATUS	=	0x0091
                           0000BC   510 G$OC0COMP0$0$0 == 0x00bc
                           0000BC   511 _OC0COMP0	=	0x00bc
                           0000BD   512 G$OC0COMP1$0$0 == 0x00bd
                           0000BD   513 _OC0COMP1	=	0x00bd
                           00BDBC   514 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC   515 _OC0COMP	=	0xbdbc
                           0000B9   516 G$OC0MODE$0$0 == 0x00b9
                           0000B9   517 _OC0MODE	=	0x00b9
                           0000BA   518 G$OC0PIN$0$0 == 0x00ba
                           0000BA   519 _OC0PIN	=	0x00ba
                           0000BB   520 G$OC0STATUS$0$0 == 0x00bb
                           0000BB   521 _OC0STATUS	=	0x00bb
                           0000C4   522 G$OC1COMP0$0$0 == 0x00c4
                           0000C4   523 _OC1COMP0	=	0x00c4
                           0000C5   524 G$OC1COMP1$0$0 == 0x00c5
                           0000C5   525 _OC1COMP1	=	0x00c5
                           00C5C4   526 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4   527 _OC1COMP	=	0xc5c4
                           0000C1   528 G$OC1MODE$0$0 == 0x00c1
                           0000C1   529 _OC1MODE	=	0x00c1
                           0000C2   530 G$OC1PIN$0$0 == 0x00c2
                           0000C2   531 _OC1PIN	=	0x00c2
                           0000C3   532 G$OC1STATUS$0$0 == 0x00c3
                           0000C3   533 _OC1STATUS	=	0x00c3
                           0000B1   534 G$RADIOACC$0$0 == 0x00b1
                           0000B1   535 _RADIOACC	=	0x00b1
                           0000B3   536 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3   537 _RADIOADDR0	=	0x00b3
                           0000B2   538 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2   539 _RADIOADDR1	=	0x00b2
                           00B2B3   540 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3   541 _RADIOADDR	=	0xb2b3
                           0000B7   542 G$RADIODATA0$0$0 == 0x00b7
                           0000B7   543 _RADIODATA0	=	0x00b7
                           0000B6   544 G$RADIODATA1$0$0 == 0x00b6
                           0000B6   545 _RADIODATA1	=	0x00b6
                           0000B5   546 G$RADIODATA2$0$0 == 0x00b5
                           0000B5   547 _RADIODATA2	=	0x00b5
                           0000B4   548 G$RADIODATA3$0$0 == 0x00b4
                           0000B4   549 _RADIODATA3	=	0x00b4
                           B4B5B6B7   550 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7   551 _RADIODATA	=	0xb4b5b6b7
                           0000BE   552 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE   553 _RADIOSTAT0	=	0x00be
                           0000BF   554 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF   555 _RADIOSTAT1	=	0x00bf
                           00BFBE   556 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE   557 _RADIOSTAT	=	0xbfbe
                           0000DF   558 G$SPCLKSRC$0$0 == 0x00df
                           0000DF   559 _SPCLKSRC	=	0x00df
                           0000DC   560 G$SPMODE$0$0 == 0x00dc
                           0000DC   561 _SPMODE	=	0x00dc
                           0000DE   562 G$SPSHREG$0$0 == 0x00de
                           0000DE   563 _SPSHREG	=	0x00de
                           0000DD   564 G$SPSTATUS$0$0 == 0x00dd
                           0000DD   565 _SPSTATUS	=	0x00dd
                           00009A   566 G$T0CLKSRC$0$0 == 0x009a
                           00009A   567 _T0CLKSRC	=	0x009a
                           00009C   568 G$T0CNT0$0$0 == 0x009c
                           00009C   569 _T0CNT0	=	0x009c
                           00009D   570 G$T0CNT1$0$0 == 0x009d
                           00009D   571 _T0CNT1	=	0x009d
                           009D9C   572 G$T0CNT$0$0 == 0x9d9c
                           009D9C   573 _T0CNT	=	0x9d9c
                           000099   574 G$T0MODE$0$0 == 0x0099
                           000099   575 _T0MODE	=	0x0099
                           00009E   576 G$T0PERIOD0$0$0 == 0x009e
                           00009E   577 _T0PERIOD0	=	0x009e
                           00009F   578 G$T0PERIOD1$0$0 == 0x009f
                           00009F   579 _T0PERIOD1	=	0x009f
                           009F9E   580 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E   581 _T0PERIOD	=	0x9f9e
                           00009B   582 G$T0STATUS$0$0 == 0x009b
                           00009B   583 _T0STATUS	=	0x009b
                           0000A2   584 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2   585 _T1CLKSRC	=	0x00a2
                           0000A4   586 G$T1CNT0$0$0 == 0x00a4
                           0000A4   587 _T1CNT0	=	0x00a4
                           0000A5   588 G$T1CNT1$0$0 == 0x00a5
                           0000A5   589 _T1CNT1	=	0x00a5
                           00A5A4   590 G$T1CNT$0$0 == 0xa5a4
                           00A5A4   591 _T1CNT	=	0xa5a4
                           0000A1   592 G$T1MODE$0$0 == 0x00a1
                           0000A1   593 _T1MODE	=	0x00a1
                           0000A6   594 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6   595 _T1PERIOD0	=	0x00a6
                           0000A7   596 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7   597 _T1PERIOD1	=	0x00a7
                           00A7A6   598 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6   599 _T1PERIOD	=	0xa7a6
                           0000A3   600 G$T1STATUS$0$0 == 0x00a3
                           0000A3   601 _T1STATUS	=	0x00a3
                           0000AA   602 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA   603 _T2CLKSRC	=	0x00aa
                           0000AC   604 G$T2CNT0$0$0 == 0x00ac
                           0000AC   605 _T2CNT0	=	0x00ac
                           0000AD   606 G$T2CNT1$0$0 == 0x00ad
                           0000AD   607 _T2CNT1	=	0x00ad
                           00ADAC   608 G$T2CNT$0$0 == 0xadac
                           00ADAC   609 _T2CNT	=	0xadac
                           0000A9   610 G$T2MODE$0$0 == 0x00a9
                           0000A9   611 _T2MODE	=	0x00a9
                           0000AE   612 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE   613 _T2PERIOD0	=	0x00ae
                           0000AF   614 G$T2PERIOD1$0$0 == 0x00af
                           0000AF   615 _T2PERIOD1	=	0x00af
                           00AFAE   616 G$T2PERIOD$0$0 == 0xafae
                           00AFAE   617 _T2PERIOD	=	0xafae
                           0000AB   618 G$T2STATUS$0$0 == 0x00ab
                           0000AB   619 _T2STATUS	=	0x00ab
                           0000E4   620 G$U0CTRL$0$0 == 0x00e4
                           0000E4   621 _U0CTRL	=	0x00e4
                           0000E7   622 G$U0MODE$0$0 == 0x00e7
                           0000E7   623 _U0MODE	=	0x00e7
                           0000E6   624 G$U0SHREG$0$0 == 0x00e6
                           0000E6   625 _U0SHREG	=	0x00e6
                           0000E5   626 G$U0STATUS$0$0 == 0x00e5
                           0000E5   627 _U0STATUS	=	0x00e5
                           0000EC   628 G$U1CTRL$0$0 == 0x00ec
                           0000EC   629 _U1CTRL	=	0x00ec
                           0000EF   630 G$U1MODE$0$0 == 0x00ef
                           0000EF   631 _U1MODE	=	0x00ef
                           0000EE   632 G$U1SHREG$0$0 == 0x00ee
                           0000EE   633 _U1SHREG	=	0x00ee
                           0000ED   634 G$U1STATUS$0$0 == 0x00ed
                           0000ED   635 _U1STATUS	=	0x00ed
                           0000DA   636 G$WDTCFG$0$0 == 0x00da
                           0000DA   637 _WDTCFG	=	0x00da
                           0000DB   638 G$WDTRESET$0$0 == 0x00db
                           0000DB   639 _WDTRESET	=	0x00db
                           0000F1   640 G$WTCFGA$0$0 == 0x00f1
                           0000F1   641 _WTCFGA	=	0x00f1
                           0000F9   642 G$WTCFGB$0$0 == 0x00f9
                           0000F9   643 _WTCFGB	=	0x00f9
                           0000F2   644 G$WTCNTA0$0$0 == 0x00f2
                           0000F2   645 _WTCNTA0	=	0x00f2
                           0000F3   646 G$WTCNTA1$0$0 == 0x00f3
                           0000F3   647 _WTCNTA1	=	0x00f3
                           00F3F2   648 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2   649 _WTCNTA	=	0xf3f2
                           0000FA   650 G$WTCNTB0$0$0 == 0x00fa
                           0000FA   651 _WTCNTB0	=	0x00fa
                           0000FB   652 G$WTCNTB1$0$0 == 0x00fb
                           0000FB   653 _WTCNTB1	=	0x00fb
                           00FBFA   654 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA   655 _WTCNTB	=	0xfbfa
                           0000EB   656 G$WTCNTR1$0$0 == 0x00eb
                           0000EB   657 _WTCNTR1	=	0x00eb
                           0000F4   658 G$WTEVTA0$0$0 == 0x00f4
                           0000F4   659 _WTEVTA0	=	0x00f4
                           0000F5   660 G$WTEVTA1$0$0 == 0x00f5
                           0000F5   661 _WTEVTA1	=	0x00f5
                           00F5F4   662 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4   663 _WTEVTA	=	0xf5f4
                           0000F6   664 G$WTEVTB0$0$0 == 0x00f6
                           0000F6   665 _WTEVTB0	=	0x00f6
                           0000F7   666 G$WTEVTB1$0$0 == 0x00f7
                           0000F7   667 _WTEVTB1	=	0x00f7
                           00F7F6   668 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6   669 _WTEVTB	=	0xf7f6
                           0000FC   670 G$WTEVTC0$0$0 == 0x00fc
                           0000FC   671 _WTEVTC0	=	0x00fc
                           0000FD   672 G$WTEVTC1$0$0 == 0x00fd
                           0000FD   673 _WTEVTC1	=	0x00fd
                           00FDFC   674 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC   675 _WTEVTC	=	0xfdfc
                           0000FE   676 G$WTEVTD0$0$0 == 0x00fe
                           0000FE   677 _WTEVTD0	=	0x00fe
                           0000FF   678 G$WTEVTD1$0$0 == 0x00ff
                           0000FF   679 _WTEVTD1	=	0x00ff
                           00FFFE   680 G$WTEVTD$0$0 == 0xfffe
                           00FFFE   681 _WTEVTD	=	0xfffe
                           0000E9   682 G$WTIRQEN$0$0 == 0x00e9
                           0000E9   683 _WTIRQEN	=	0x00e9
                           0000EA   684 G$WTSTAT$0$0 == 0x00ea
                           0000EA   685 _WTSTAT	=	0x00ea
                                    686 ;--------------------------------------------------------
                                    687 ; special function bits
                                    688 ;--------------------------------------------------------
                                    689 	.area RSEG    (ABS,DATA)
      000000                        690 	.org 0x0000
                           0000E0   691 G$ACC_0$0$0 == 0x00e0
                           0000E0   692 _ACC_0	=	0x00e0
                           0000E1   693 G$ACC_1$0$0 == 0x00e1
                           0000E1   694 _ACC_1	=	0x00e1
                           0000E2   695 G$ACC_2$0$0 == 0x00e2
                           0000E2   696 _ACC_2	=	0x00e2
                           0000E3   697 G$ACC_3$0$0 == 0x00e3
                           0000E3   698 _ACC_3	=	0x00e3
                           0000E4   699 G$ACC_4$0$0 == 0x00e4
                           0000E4   700 _ACC_4	=	0x00e4
                           0000E5   701 G$ACC_5$0$0 == 0x00e5
                           0000E5   702 _ACC_5	=	0x00e5
                           0000E6   703 G$ACC_6$0$0 == 0x00e6
                           0000E6   704 _ACC_6	=	0x00e6
                           0000E7   705 G$ACC_7$0$0 == 0x00e7
                           0000E7   706 _ACC_7	=	0x00e7
                           0000F0   707 G$B_0$0$0 == 0x00f0
                           0000F0   708 _B_0	=	0x00f0
                           0000F1   709 G$B_1$0$0 == 0x00f1
                           0000F1   710 _B_1	=	0x00f1
                           0000F2   711 G$B_2$0$0 == 0x00f2
                           0000F2   712 _B_2	=	0x00f2
                           0000F3   713 G$B_3$0$0 == 0x00f3
                           0000F3   714 _B_3	=	0x00f3
                           0000F4   715 G$B_4$0$0 == 0x00f4
                           0000F4   716 _B_4	=	0x00f4
                           0000F5   717 G$B_5$0$0 == 0x00f5
                           0000F5   718 _B_5	=	0x00f5
                           0000F6   719 G$B_6$0$0 == 0x00f6
                           0000F6   720 _B_6	=	0x00f6
                           0000F7   721 G$B_7$0$0 == 0x00f7
                           0000F7   722 _B_7	=	0x00f7
                           0000A0   723 G$E2IE_0$0$0 == 0x00a0
                           0000A0   724 _E2IE_0	=	0x00a0
                           0000A1   725 G$E2IE_1$0$0 == 0x00a1
                           0000A1   726 _E2IE_1	=	0x00a1
                           0000A2   727 G$E2IE_2$0$0 == 0x00a2
                           0000A2   728 _E2IE_2	=	0x00a2
                           0000A3   729 G$E2IE_3$0$0 == 0x00a3
                           0000A3   730 _E2IE_3	=	0x00a3
                           0000A4   731 G$E2IE_4$0$0 == 0x00a4
                           0000A4   732 _E2IE_4	=	0x00a4
                           0000A5   733 G$E2IE_5$0$0 == 0x00a5
                           0000A5   734 _E2IE_5	=	0x00a5
                           0000A6   735 G$E2IE_6$0$0 == 0x00a6
                           0000A6   736 _E2IE_6	=	0x00a6
                           0000A7   737 G$E2IE_7$0$0 == 0x00a7
                           0000A7   738 _E2IE_7	=	0x00a7
                           0000C0   739 G$E2IP_0$0$0 == 0x00c0
                           0000C0   740 _E2IP_0	=	0x00c0
                           0000C1   741 G$E2IP_1$0$0 == 0x00c1
                           0000C1   742 _E2IP_1	=	0x00c1
                           0000C2   743 G$E2IP_2$0$0 == 0x00c2
                           0000C2   744 _E2IP_2	=	0x00c2
                           0000C3   745 G$E2IP_3$0$0 == 0x00c3
                           0000C3   746 _E2IP_3	=	0x00c3
                           0000C4   747 G$E2IP_4$0$0 == 0x00c4
                           0000C4   748 _E2IP_4	=	0x00c4
                           0000C5   749 G$E2IP_5$0$0 == 0x00c5
                           0000C5   750 _E2IP_5	=	0x00c5
                           0000C6   751 G$E2IP_6$0$0 == 0x00c6
                           0000C6   752 _E2IP_6	=	0x00c6
                           0000C7   753 G$E2IP_7$0$0 == 0x00c7
                           0000C7   754 _E2IP_7	=	0x00c7
                           000098   755 G$EIE_0$0$0 == 0x0098
                           000098   756 _EIE_0	=	0x0098
                           000099   757 G$EIE_1$0$0 == 0x0099
                           000099   758 _EIE_1	=	0x0099
                           00009A   759 G$EIE_2$0$0 == 0x009a
                           00009A   760 _EIE_2	=	0x009a
                           00009B   761 G$EIE_3$0$0 == 0x009b
                           00009B   762 _EIE_3	=	0x009b
                           00009C   763 G$EIE_4$0$0 == 0x009c
                           00009C   764 _EIE_4	=	0x009c
                           00009D   765 G$EIE_5$0$0 == 0x009d
                           00009D   766 _EIE_5	=	0x009d
                           00009E   767 G$EIE_6$0$0 == 0x009e
                           00009E   768 _EIE_6	=	0x009e
                           00009F   769 G$EIE_7$0$0 == 0x009f
                           00009F   770 _EIE_7	=	0x009f
                           0000B0   771 G$EIP_0$0$0 == 0x00b0
                           0000B0   772 _EIP_0	=	0x00b0
                           0000B1   773 G$EIP_1$0$0 == 0x00b1
                           0000B1   774 _EIP_1	=	0x00b1
                           0000B2   775 G$EIP_2$0$0 == 0x00b2
                           0000B2   776 _EIP_2	=	0x00b2
                           0000B3   777 G$EIP_3$0$0 == 0x00b3
                           0000B3   778 _EIP_3	=	0x00b3
                           0000B4   779 G$EIP_4$0$0 == 0x00b4
                           0000B4   780 _EIP_4	=	0x00b4
                           0000B5   781 G$EIP_5$0$0 == 0x00b5
                           0000B5   782 _EIP_5	=	0x00b5
                           0000B6   783 G$EIP_6$0$0 == 0x00b6
                           0000B6   784 _EIP_6	=	0x00b6
                           0000B7   785 G$EIP_7$0$0 == 0x00b7
                           0000B7   786 _EIP_7	=	0x00b7
                           0000A8   787 G$IE_0$0$0 == 0x00a8
                           0000A8   788 _IE_0	=	0x00a8
                           0000A9   789 G$IE_1$0$0 == 0x00a9
                           0000A9   790 _IE_1	=	0x00a9
                           0000AA   791 G$IE_2$0$0 == 0x00aa
                           0000AA   792 _IE_2	=	0x00aa
                           0000AB   793 G$IE_3$0$0 == 0x00ab
                           0000AB   794 _IE_3	=	0x00ab
                           0000AC   795 G$IE_4$0$0 == 0x00ac
                           0000AC   796 _IE_4	=	0x00ac
                           0000AD   797 G$IE_5$0$0 == 0x00ad
                           0000AD   798 _IE_5	=	0x00ad
                           0000AE   799 G$IE_6$0$0 == 0x00ae
                           0000AE   800 _IE_6	=	0x00ae
                           0000AF   801 G$IE_7$0$0 == 0x00af
                           0000AF   802 _IE_7	=	0x00af
                           0000AF   803 G$EA$0$0 == 0x00af
                           0000AF   804 _EA	=	0x00af
                           0000B8   805 G$IP_0$0$0 == 0x00b8
                           0000B8   806 _IP_0	=	0x00b8
                           0000B9   807 G$IP_1$0$0 == 0x00b9
                           0000B9   808 _IP_1	=	0x00b9
                           0000BA   809 G$IP_2$0$0 == 0x00ba
                           0000BA   810 _IP_2	=	0x00ba
                           0000BB   811 G$IP_3$0$0 == 0x00bb
                           0000BB   812 _IP_3	=	0x00bb
                           0000BC   813 G$IP_4$0$0 == 0x00bc
                           0000BC   814 _IP_4	=	0x00bc
                           0000BD   815 G$IP_5$0$0 == 0x00bd
                           0000BD   816 _IP_5	=	0x00bd
                           0000BE   817 G$IP_6$0$0 == 0x00be
                           0000BE   818 _IP_6	=	0x00be
                           0000BF   819 G$IP_7$0$0 == 0x00bf
                           0000BF   820 _IP_7	=	0x00bf
                           0000D0   821 G$P$0$0 == 0x00d0
                           0000D0   822 _P	=	0x00d0
                           0000D1   823 G$F1$0$0 == 0x00d1
                           0000D1   824 _F1	=	0x00d1
                           0000D2   825 G$OV$0$0 == 0x00d2
                           0000D2   826 _OV	=	0x00d2
                           0000D3   827 G$RS0$0$0 == 0x00d3
                           0000D3   828 _RS0	=	0x00d3
                           0000D4   829 G$RS1$0$0 == 0x00d4
                           0000D4   830 _RS1	=	0x00d4
                           0000D5   831 G$F0$0$0 == 0x00d5
                           0000D5   832 _F0	=	0x00d5
                           0000D6   833 G$AC$0$0 == 0x00d6
                           0000D6   834 _AC	=	0x00d6
                           0000D7   835 G$CY$0$0 == 0x00d7
                           0000D7   836 _CY	=	0x00d7
                           0000C8   837 G$PINA_0$0$0 == 0x00c8
                           0000C8   838 _PINA_0	=	0x00c8
                           0000C9   839 G$PINA_1$0$0 == 0x00c9
                           0000C9   840 _PINA_1	=	0x00c9
                           0000CA   841 G$PINA_2$0$0 == 0x00ca
                           0000CA   842 _PINA_2	=	0x00ca
                           0000CB   843 G$PINA_3$0$0 == 0x00cb
                           0000CB   844 _PINA_3	=	0x00cb
                           0000CC   845 G$PINA_4$0$0 == 0x00cc
                           0000CC   846 _PINA_4	=	0x00cc
                           0000CD   847 G$PINA_5$0$0 == 0x00cd
                           0000CD   848 _PINA_5	=	0x00cd
                           0000CE   849 G$PINA_6$0$0 == 0x00ce
                           0000CE   850 _PINA_6	=	0x00ce
                           0000CF   851 G$PINA_7$0$0 == 0x00cf
                           0000CF   852 _PINA_7	=	0x00cf
                           0000E8   853 G$PINB_0$0$0 == 0x00e8
                           0000E8   854 _PINB_0	=	0x00e8
                           0000E9   855 G$PINB_1$0$0 == 0x00e9
                           0000E9   856 _PINB_1	=	0x00e9
                           0000EA   857 G$PINB_2$0$0 == 0x00ea
                           0000EA   858 _PINB_2	=	0x00ea
                           0000EB   859 G$PINB_3$0$0 == 0x00eb
                           0000EB   860 _PINB_3	=	0x00eb
                           0000EC   861 G$PINB_4$0$0 == 0x00ec
                           0000EC   862 _PINB_4	=	0x00ec
                           0000ED   863 G$PINB_5$0$0 == 0x00ed
                           0000ED   864 _PINB_5	=	0x00ed
                           0000EE   865 G$PINB_6$0$0 == 0x00ee
                           0000EE   866 _PINB_6	=	0x00ee
                           0000EF   867 G$PINB_7$0$0 == 0x00ef
                           0000EF   868 _PINB_7	=	0x00ef
                           0000F8   869 G$PINC_0$0$0 == 0x00f8
                           0000F8   870 _PINC_0	=	0x00f8
                           0000F9   871 G$PINC_1$0$0 == 0x00f9
                           0000F9   872 _PINC_1	=	0x00f9
                           0000FA   873 G$PINC_2$0$0 == 0x00fa
                           0000FA   874 _PINC_2	=	0x00fa
                           0000FB   875 G$PINC_3$0$0 == 0x00fb
                           0000FB   876 _PINC_3	=	0x00fb
                           0000FC   877 G$PINC_4$0$0 == 0x00fc
                           0000FC   878 _PINC_4	=	0x00fc
                           0000FD   879 G$PINC_5$0$0 == 0x00fd
                           0000FD   880 _PINC_5	=	0x00fd
                           0000FE   881 G$PINC_6$0$0 == 0x00fe
                           0000FE   882 _PINC_6	=	0x00fe
                           0000FF   883 G$PINC_7$0$0 == 0x00ff
                           0000FF   884 _PINC_7	=	0x00ff
                           000080   885 G$PORTA_0$0$0 == 0x0080
                           000080   886 _PORTA_0	=	0x0080
                           000081   887 G$PORTA_1$0$0 == 0x0081
                           000081   888 _PORTA_1	=	0x0081
                           000082   889 G$PORTA_2$0$0 == 0x0082
                           000082   890 _PORTA_2	=	0x0082
                           000083   891 G$PORTA_3$0$0 == 0x0083
                           000083   892 _PORTA_3	=	0x0083
                           000084   893 G$PORTA_4$0$0 == 0x0084
                           000084   894 _PORTA_4	=	0x0084
                           000085   895 G$PORTA_5$0$0 == 0x0085
                           000085   896 _PORTA_5	=	0x0085
                           000086   897 G$PORTA_6$0$0 == 0x0086
                           000086   898 _PORTA_6	=	0x0086
                           000087   899 G$PORTA_7$0$0 == 0x0087
                           000087   900 _PORTA_7	=	0x0087
                           000088   901 G$PORTB_0$0$0 == 0x0088
                           000088   902 _PORTB_0	=	0x0088
                           000089   903 G$PORTB_1$0$0 == 0x0089
                           000089   904 _PORTB_1	=	0x0089
                           00008A   905 G$PORTB_2$0$0 == 0x008a
                           00008A   906 _PORTB_2	=	0x008a
                           00008B   907 G$PORTB_3$0$0 == 0x008b
                           00008B   908 _PORTB_3	=	0x008b
                           00008C   909 G$PORTB_4$0$0 == 0x008c
                           00008C   910 _PORTB_4	=	0x008c
                           00008D   911 G$PORTB_5$0$0 == 0x008d
                           00008D   912 _PORTB_5	=	0x008d
                           00008E   913 G$PORTB_6$0$0 == 0x008e
                           00008E   914 _PORTB_6	=	0x008e
                           00008F   915 G$PORTB_7$0$0 == 0x008f
                           00008F   916 _PORTB_7	=	0x008f
                           000090   917 G$PORTC_0$0$0 == 0x0090
                           000090   918 _PORTC_0	=	0x0090
                           000091   919 G$PORTC_1$0$0 == 0x0091
                           000091   920 _PORTC_1	=	0x0091
                           000092   921 G$PORTC_2$0$0 == 0x0092
                           000092   922 _PORTC_2	=	0x0092
                           000093   923 G$PORTC_3$0$0 == 0x0093
                           000093   924 _PORTC_3	=	0x0093
                           000094   925 G$PORTC_4$0$0 == 0x0094
                           000094   926 _PORTC_4	=	0x0094
                           000095   927 G$PORTC_5$0$0 == 0x0095
                           000095   928 _PORTC_5	=	0x0095
                           000096   929 G$PORTC_6$0$0 == 0x0096
                           000096   930 _PORTC_6	=	0x0096
                           000097   931 G$PORTC_7$0$0 == 0x0097
                           000097   932 _PORTC_7	=	0x0097
                                    933 ;--------------------------------------------------------
                                    934 ; overlayable register banks
                                    935 ;--------------------------------------------------------
                                    936 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        937 	.ds 8
                                    938 ;--------------------------------------------------------
                                    939 ; internal ram data
                                    940 ;--------------------------------------------------------
                                    941 	.area DSEG    (DATA)
                                    942 ;--------------------------------------------------------
                                    943 ; overlayable items in internal ram 
                                    944 ;--------------------------------------------------------
                                    945 	.area	OSEG    (OVR,DATA)
                                    946 ;--------------------------------------------------------
                                    947 ; indirectly addressable internal ram data
                                    948 ;--------------------------------------------------------
                                    949 	.area ISEG    (DATA)
                                    950 ;--------------------------------------------------------
                                    951 ; absolute internal ram data
                                    952 ;--------------------------------------------------------
                                    953 	.area IABS    (ABS,DATA)
                                    954 	.area IABS    (ABS,DATA)
                                    955 ;--------------------------------------------------------
                                    956 ; bit data
                                    957 ;--------------------------------------------------------
                                    958 	.area BSEG    (BIT)
                                    959 ;--------------------------------------------------------
                                    960 ; paged external ram data
                                    961 ;--------------------------------------------------------
                                    962 	.area PSEG    (PAG,XDATA)
                                    963 ;--------------------------------------------------------
                                    964 ; external ram data
                                    965 ;--------------------------------------------------------
                                    966 	.area XSEG    (XDATA)
                           007020   967 G$ADCCH0VAL0$0$0 == 0x7020
                           007020   968 _ADCCH0VAL0	=	0x7020
                           007021   969 G$ADCCH0VAL1$0$0 == 0x7021
                           007021   970 _ADCCH0VAL1	=	0x7021
                           007020   971 G$ADCCH0VAL$0$0 == 0x7020
                           007020   972 _ADCCH0VAL	=	0x7020
                           007022   973 G$ADCCH1VAL0$0$0 == 0x7022
                           007022   974 _ADCCH1VAL0	=	0x7022
                           007023   975 G$ADCCH1VAL1$0$0 == 0x7023
                           007023   976 _ADCCH1VAL1	=	0x7023
                           007022   977 G$ADCCH1VAL$0$0 == 0x7022
                           007022   978 _ADCCH1VAL	=	0x7022
                           007024   979 G$ADCCH2VAL0$0$0 == 0x7024
                           007024   980 _ADCCH2VAL0	=	0x7024
                           007025   981 G$ADCCH2VAL1$0$0 == 0x7025
                           007025   982 _ADCCH2VAL1	=	0x7025
                           007024   983 G$ADCCH2VAL$0$0 == 0x7024
                           007024   984 _ADCCH2VAL	=	0x7024
                           007026   985 G$ADCCH3VAL0$0$0 == 0x7026
                           007026   986 _ADCCH3VAL0	=	0x7026
                           007027   987 G$ADCCH3VAL1$0$0 == 0x7027
                           007027   988 _ADCCH3VAL1	=	0x7027
                           007026   989 G$ADCCH3VAL$0$0 == 0x7026
                           007026   990 _ADCCH3VAL	=	0x7026
                           007028   991 G$ADCTUNE0$0$0 == 0x7028
                           007028   992 _ADCTUNE0	=	0x7028
                           007029   993 G$ADCTUNE1$0$0 == 0x7029
                           007029   994 _ADCTUNE1	=	0x7029
                           00702A   995 G$ADCTUNE2$0$0 == 0x702a
                           00702A   996 _ADCTUNE2	=	0x702a
                           007010   997 G$DMA0ADDR0$0$0 == 0x7010
                           007010   998 _DMA0ADDR0	=	0x7010
                           007011   999 G$DMA0ADDR1$0$0 == 0x7011
                           007011  1000 _DMA0ADDR1	=	0x7011
                           007010  1001 G$DMA0ADDR$0$0 == 0x7010
                           007010  1002 _DMA0ADDR	=	0x7010
                           007014  1003 G$DMA0CONFIG$0$0 == 0x7014
                           007014  1004 _DMA0CONFIG	=	0x7014
                           007012  1005 G$DMA1ADDR0$0$0 == 0x7012
                           007012  1006 _DMA1ADDR0	=	0x7012
                           007013  1007 G$DMA1ADDR1$0$0 == 0x7013
                           007013  1008 _DMA1ADDR1	=	0x7013
                           007012  1009 G$DMA1ADDR$0$0 == 0x7012
                           007012  1010 _DMA1ADDR	=	0x7012
                           007015  1011 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1012 _DMA1CONFIG	=	0x7015
                           007070  1013 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1014 _FRCOSCCONFIG	=	0x7070
                           007071  1015 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1016 _FRCOSCCTRL	=	0x7071
                           007076  1017 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1018 _FRCOSCFREQ0	=	0x7076
                           007077  1019 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1020 _FRCOSCFREQ1	=	0x7077
                           007076  1021 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1022 _FRCOSCFREQ	=	0x7076
                           007072  1023 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1024 _FRCOSCKFILT0	=	0x7072
                           007073  1025 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1026 _FRCOSCKFILT1	=	0x7073
                           007072  1027 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1028 _FRCOSCKFILT	=	0x7072
                           007078  1029 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1030 _FRCOSCPER0	=	0x7078
                           007079  1031 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1032 _FRCOSCPER1	=	0x7079
                           007078  1033 G$FRCOSCPER$0$0 == 0x7078
                           007078  1034 _FRCOSCPER	=	0x7078
                           007074  1035 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1036 _FRCOSCREF0	=	0x7074
                           007075  1037 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1038 _FRCOSCREF1	=	0x7075
                           007074  1039 G$FRCOSCREF$0$0 == 0x7074
                           007074  1040 _FRCOSCREF	=	0x7074
                           007007  1041 G$ANALOGA$0$0 == 0x7007
                           007007  1042 _ANALOGA	=	0x7007
                           00700C  1043 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1044 _GPIOENABLE	=	0x700c
                           007003  1045 G$EXTIRQ$0$0 == 0x7003
                           007003  1046 _EXTIRQ	=	0x7003
                           007000  1047 G$INTCHGA$0$0 == 0x7000
                           007000  1048 _INTCHGA	=	0x7000
                           007001  1049 G$INTCHGB$0$0 == 0x7001
                           007001  1050 _INTCHGB	=	0x7001
                           007002  1051 G$INTCHGC$0$0 == 0x7002
                           007002  1052 _INTCHGC	=	0x7002
                           007008  1053 G$PALTA$0$0 == 0x7008
                           007008  1054 _PALTA	=	0x7008
                           007009  1055 G$PALTB$0$0 == 0x7009
                           007009  1056 _PALTB	=	0x7009
                           00700A  1057 G$PALTC$0$0 == 0x700a
                           00700A  1058 _PALTC	=	0x700a
                           007046  1059 G$PALTRADIO$0$0 == 0x7046
                           007046  1060 _PALTRADIO	=	0x7046
                           007004  1061 G$PINCHGA$0$0 == 0x7004
                           007004  1062 _PINCHGA	=	0x7004
                           007005  1063 G$PINCHGB$0$0 == 0x7005
                           007005  1064 _PINCHGB	=	0x7005
                           007006  1065 G$PINCHGC$0$0 == 0x7006
                           007006  1066 _PINCHGC	=	0x7006
                           00700B  1067 G$PINSEL$0$0 == 0x700b
                           00700B  1068 _PINSEL	=	0x700b
                           007060  1069 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1070 _LPOSCCONFIG	=	0x7060
                           007066  1071 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1072 _LPOSCFREQ0	=	0x7066
                           007067  1073 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1074 _LPOSCFREQ1	=	0x7067
                           007066  1075 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1076 _LPOSCFREQ	=	0x7066
                           007062  1077 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1078 _LPOSCKFILT0	=	0x7062
                           007063  1079 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1080 _LPOSCKFILT1	=	0x7063
                           007062  1081 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1082 _LPOSCKFILT	=	0x7062
                           007068  1083 G$LPOSCPER0$0$0 == 0x7068
                           007068  1084 _LPOSCPER0	=	0x7068
                           007069  1085 G$LPOSCPER1$0$0 == 0x7069
                           007069  1086 _LPOSCPER1	=	0x7069
                           007068  1087 G$LPOSCPER$0$0 == 0x7068
                           007068  1088 _LPOSCPER	=	0x7068
                           007064  1089 G$LPOSCREF0$0$0 == 0x7064
                           007064  1090 _LPOSCREF0	=	0x7064
                           007065  1091 G$LPOSCREF1$0$0 == 0x7065
                           007065  1092 _LPOSCREF1	=	0x7065
                           007064  1093 G$LPOSCREF$0$0 == 0x7064
                           007064  1094 _LPOSCREF	=	0x7064
                           007054  1095 G$LPXOSCGM$0$0 == 0x7054
                           007054  1096 _LPXOSCGM	=	0x7054
                           007F01  1097 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1098 _MISCCTRL	=	0x7f01
                           007053  1099 G$OSCCALIB$0$0 == 0x7053
                           007053  1100 _OSCCALIB	=	0x7053
                           007050  1101 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1102 _OSCFORCERUN	=	0x7050
                           007052  1103 G$OSCREADY$0$0 == 0x7052
                           007052  1104 _OSCREADY	=	0x7052
                           007051  1105 G$OSCRUN$0$0 == 0x7051
                           007051  1106 _OSCRUN	=	0x7051
                           007040  1107 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1108 _RADIOFDATAADDR0	=	0x7040
                           007041  1109 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1110 _RADIOFDATAADDR1	=	0x7041
                           007040  1111 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1112 _RADIOFDATAADDR	=	0x7040
                           007042  1113 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1114 _RADIOFSTATADDR0	=	0x7042
                           007043  1115 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1116 _RADIOFSTATADDR1	=	0x7043
                           007042  1117 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1118 _RADIOFSTATADDR	=	0x7042
                           007044  1119 G$RADIOMUX$0$0 == 0x7044
                           007044  1120 _RADIOMUX	=	0x7044
                           007084  1121 G$SCRATCH0$0$0 == 0x7084
                           007084  1122 _SCRATCH0	=	0x7084
                           007085  1123 G$SCRATCH1$0$0 == 0x7085
                           007085  1124 _SCRATCH1	=	0x7085
                           007086  1125 G$SCRATCH2$0$0 == 0x7086
                           007086  1126 _SCRATCH2	=	0x7086
                           007087  1127 G$SCRATCH3$0$0 == 0x7087
                           007087  1128 _SCRATCH3	=	0x7087
                           007F00  1129 G$SILICONREV$0$0 == 0x7f00
                           007F00  1130 _SILICONREV	=	0x7f00
                           007F19  1131 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1132 _XTALAMPL	=	0x7f19
                           007F18  1133 G$XTALOSC$0$0 == 0x7f18
                           007F18  1134 _XTALOSC	=	0x7f18
                           007F1A  1135 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1136 _XTALREADY	=	0x7f1a
                           00FC06  1137 Fmisc$flash_deviceid$0$0 == 0xfc06
                           00FC06  1138 _flash_deviceid	=	0xfc06
                           00FC00  1139 Fmisc$flash_calsector$0$0 == 0xfc00
                           00FC00  1140 _flash_calsector	=	0xfc00
                           000000  1141 Fmisc$delaymstimer$0$0==.
      000292                       1142 _delaymstimer:
      000292                       1143 	.ds 8
                                   1144 ;--------------------------------------------------------
                                   1145 ; absolute external ram data
                                   1146 ;--------------------------------------------------------
                                   1147 	.area XABS    (ABS,XDATA)
                                   1148 ;--------------------------------------------------------
                                   1149 ; external initialized ram data
                                   1150 ;--------------------------------------------------------
                                   1151 	.area XISEG   (XDATA)
                                   1152 	.area HOME    (CODE)
                                   1153 	.area GSINIT0 (CODE)
                                   1154 	.area GSINIT1 (CODE)
                                   1155 	.area GSINIT2 (CODE)
                                   1156 	.area GSINIT3 (CODE)
                                   1157 	.area GSINIT4 (CODE)
                                   1158 	.area GSINIT5 (CODE)
                                   1159 	.area GSINIT  (CODE)
                                   1160 	.area GSFINAL (CODE)
                                   1161 	.area CSEG    (CODE)
                                   1162 ;--------------------------------------------------------
                                   1163 ; global & static initialisations
                                   1164 ;--------------------------------------------------------
                                   1165 	.area HOME    (CODE)
                                   1166 	.area GSINIT  (CODE)
                                   1167 	.area GSFINAL (CODE)
                                   1168 	.area GSINIT  (CODE)
                                   1169 ;--------------------------------------------------------
                                   1170 ; Home
                                   1171 ;--------------------------------------------------------
                                   1172 	.area HOME    (CODE)
                                   1173 	.area HOME    (CODE)
                                   1174 ;--------------------------------------------------------
                                   1175 ; code
                                   1176 ;--------------------------------------------------------
                                   1177 	.area CSEG    (CODE)
                                   1178 ;------------------------------------------------------------
                                   1179 ;Allocation info for local variables in function 'lcd2_display_radio_error'
                                   1180 ;------------------------------------------------------------
                                   1181 ;err                       Allocated to registers r7 
                                   1182 ;p                         Allocated to registers r5 r6 
                                   1183 ;------------------------------------------------------------
                           000000  1184 	G$lcd2_display_radio_error$0$0 ==.
                           000000  1185 	C$misc.c$60$0$0 ==.
                                   1186 ;	..\COMMON\misc.c:60: void lcd2_display_radio_error(uint8_t err)
                                   1187 ;	-----------------------------------------
                                   1188 ;	 function lcd2_display_radio_error
                                   1189 ;	-----------------------------------------
      003AC5                       1190 _lcd2_display_radio_error:
                           000007  1191 	ar7 = 0x07
                           000006  1192 	ar6 = 0x06
                           000005  1193 	ar5 = 0x05
                           000004  1194 	ar4 = 0x04
                           000003  1195 	ar3 = 0x03
                           000002  1196 	ar2 = 0x02
                           000001  1197 	ar1 = 0x01
                           000000  1198 	ar0 = 0x00
      003AC5 AF 82            [24] 1199 	mov	r7,dpl
                           000002  1200 	C$misc.c$62$1$0 ==.
                                   1201 ;	..\COMMON\misc.c:62: const struct errtbl __code *p = errtbl;
      003AC7 7D CD            [12] 1202 	mov	r5,#_errtbl
      003AC9 7E 56            [12] 1203 	mov	r6,#(_errtbl >> 8)
                           000006  1204 	C$misc.c$63$1$239 ==.
                                   1205 ;	..\COMMON\misc.c:63: do {
      003ACB 8D 03            [24] 1206 	mov	ar3,r5
      003ACD 8E 04            [24] 1207 	mov	ar4,r6
      003ACF                       1208 00103$:
                           00000A  1209 	C$misc.c$64$2$240 ==.
                                   1210 ;	..\COMMON\misc.c:64: if (p->errcode == err) {
      003ACF 8B 82            [24] 1211 	mov	dpl,r3
      003AD1 8C 83            [24] 1212 	mov	dph,r4
      003AD3 E4               [12] 1213 	clr	a
      003AD4 93               [24] 1214 	movc	a,@a+dptr
      003AD5 FA               [12] 1215 	mov	r2,a
      003AD6 B5 07 27         [24] 1216 	cjne	a,ar7,00102$
                           000014  1217 	C$misc.c$65$3$241 ==.
                                   1218 ;	..\COMMON\misc.c:65: lcd2_setpos(0);
      003AD9 75 82 00         [24] 1219 	mov	dpl,#0x00
      003ADC C0 06            [24] 1220 	push	ar6
      003ADE C0 05            [24] 1221 	push	ar5
      003AE0 12 3F E9         [24] 1222 	lcall	_lcd2_setpos
      003AE3 D0 05            [24] 1223 	pop	ar5
      003AE5 D0 06            [24] 1224 	pop	ar6
                           000022  1225 	C$misc.c$66$3$241 ==.
                                   1226 ;	..\COMMON\misc.c:66: lcd2_writestr(p->msg);
      003AE7 8D 82            [24] 1227 	mov	dpl,r5
      003AE9 8E 83            [24] 1228 	mov	dph,r6
      003AEB A3               [24] 1229 	inc	dptr
      003AEC E4               [12] 1230 	clr	a
      003AED 93               [24] 1231 	movc	a,@a+dptr
      003AEE F9               [12] 1232 	mov	r1,a
      003AEF A3               [24] 1233 	inc	dptr
      003AF0 E4               [12] 1234 	clr	a
      003AF1 93               [24] 1235 	movc	a,@a+dptr
      003AF2 F8               [12] 1236 	mov	r0,a
      003AF3 7A 80            [12] 1237 	mov	r2,#0x80
      003AF5 89 82            [24] 1238 	mov	dpl,r1
      003AF7 88 83            [24] 1239 	mov	dph,r0
      003AF9 8A F0            [24] 1240 	mov	b,r2
      003AFB 12 4E 8E         [24] 1241 	lcall	_lcd2_writestr
                           000039  1242 	C$misc.c$67$3$241 ==.
                                   1243 ;	..\COMMON\misc.c:67: return;
      003AFE 80 13            [24] 1244 	sjmp	00106$
      003B00                       1245 00102$:
                           00003B  1246 	C$misc.c$69$2$240 ==.
                                   1247 ;	..\COMMON\misc.c:69: ++p;
      003B00 74 03            [12] 1248 	mov	a,#0x03
      003B02 2B               [12] 1249 	add	a,r3
      003B03 FB               [12] 1250 	mov	r3,a
      003B04 E4               [12] 1251 	clr	a
      003B05 3C               [12] 1252 	addc	a,r4
      003B06 FC               [12] 1253 	mov	r4,a
      003B07 8B 05            [24] 1254 	mov	ar5,r3
      003B09 8C 06            [24] 1255 	mov	ar6,r4
                           000046  1256 	C$misc.c$70$1$239 ==.
                                   1257 ;	..\COMMON\misc.c:70: } while (p->errcode != AXRADIO_ERR_NOERROR);
      003B0B 8B 82            [24] 1258 	mov	dpl,r3
      003B0D 8C 83            [24] 1259 	mov	dph,r4
      003B0F E4               [12] 1260 	clr	a
      003B10 93               [24] 1261 	movc	a,@a+dptr
      003B11 70 BC            [24] 1262 	jnz	00103$
      003B13                       1263 00106$:
                           00004E  1264 	C$misc.c$71$1$239 ==.
                           00004E  1265 	XG$lcd2_display_radio_error$0$0 ==.
      003B13 22               [24] 1266 	ret
                                   1267 ;------------------------------------------------------------
                                   1268 ;Allocation info for local variables in function 'com0_display_radio_error'
                                   1269 ;------------------------------------------------------------
                                   1270 ;err                       Allocated to registers r7 
                                   1271 ;p                         Allocated to registers r5 r6 
                                   1272 ;------------------------------------------------------------
                           00004F  1273 	G$com0_display_radio_error$0$0 ==.
                           00004F  1274 	C$misc.c$73$1$239 ==.
                                   1275 ;	..\COMMON\misc.c:73: void com0_display_radio_error(uint8_t err)
                                   1276 ;	-----------------------------------------
                                   1277 ;	 function com0_display_radio_error
                                   1278 ;	-----------------------------------------
      003B14                       1279 _com0_display_radio_error:
      003B14 AF 82            [24] 1280 	mov	r7,dpl
                           000051  1281 	C$misc.c$75$1$239 ==.
                                   1282 ;	..\COMMON\misc.c:75: const struct errtbl __code *p = errtbl;
      003B16 7D CD            [12] 1283 	mov	r5,#_errtbl
      003B18 7E 56            [12] 1284 	mov	r6,#(_errtbl >> 8)
                           000055  1285 	C$misc.c$76$1$243 ==.
                                   1286 ;	..\COMMON\misc.c:76: do {
      003B1A 8D 03            [24] 1287 	mov	ar3,r5
      003B1C 8E 04            [24] 1288 	mov	ar4,r6
      003B1E                       1289 00103$:
                           000059  1290 	C$misc.c$77$2$244 ==.
                                   1291 ;	..\COMMON\misc.c:77: if (p->errcode == err) {
      003B1E 8B 82            [24] 1292 	mov	dpl,r3
      003B20 8C 83            [24] 1293 	mov	dph,r4
      003B22 E4               [12] 1294 	clr	a
      003B23 93               [24] 1295 	movc	a,@a+dptr
      003B24 FA               [12] 1296 	mov	r2,a
      003B25 B5 07 27         [24] 1297 	cjne	a,ar7,00102$
                           000063  1298 	C$misc.c$78$3$245 ==.
                                   1299 ;	..\COMMON\misc.c:78: com0_setpos(0);
      003B28 75 82 00         [24] 1300 	mov	dpl,#0x00
      003B2B C0 06            [24] 1301 	push	ar6
      003B2D C0 05            [24] 1302 	push	ar5
      003B2F 12 0A E3         [24] 1303 	lcall	_com0_setpos
      003B32 D0 05            [24] 1304 	pop	ar5
      003B34 D0 06            [24] 1305 	pop	ar6
                           000071  1306 	C$misc.c$79$3$245 ==.
                                   1307 ;	..\COMMON\misc.c:79: com0_writestr(p->msg);
      003B36 8D 82            [24] 1308 	mov	dpl,r5
      003B38 8E 83            [24] 1309 	mov	dph,r6
      003B3A A3               [24] 1310 	inc	dptr
      003B3B E4               [12] 1311 	clr	a
      003B3C 93               [24] 1312 	movc	a,@a+dptr
      003B3D F9               [12] 1313 	mov	r1,a
      003B3E A3               [24] 1314 	inc	dptr
      003B3F E4               [12] 1315 	clr	a
      003B40 93               [24] 1316 	movc	a,@a+dptr
      003B41 F8               [12] 1317 	mov	r0,a
      003B42 7A 80            [12] 1318 	mov	r2,#0x80
      003B44 89 82            [24] 1319 	mov	dpl,r1
      003B46 88 83            [24] 1320 	mov	dph,r0
      003B48 8A F0            [24] 1321 	mov	b,r2
      003B4A 12 0A FF         [24] 1322 	lcall	_com0_writestr
                           000088  1323 	C$misc.c$80$3$245 ==.
                                   1324 ;	..\COMMON\misc.c:80: return;
      003B4D 80 13            [24] 1325 	sjmp	00106$
      003B4F                       1326 00102$:
                           00008A  1327 	C$misc.c$82$2$244 ==.
                                   1328 ;	..\COMMON\misc.c:82: ++p;
      003B4F 74 03            [12] 1329 	mov	a,#0x03
      003B51 2B               [12] 1330 	add	a,r3
      003B52 FB               [12] 1331 	mov	r3,a
      003B53 E4               [12] 1332 	clr	a
      003B54 3C               [12] 1333 	addc	a,r4
      003B55 FC               [12] 1334 	mov	r4,a
      003B56 8B 05            [24] 1335 	mov	ar5,r3
      003B58 8C 06            [24] 1336 	mov	ar6,r4
                           000095  1337 	C$misc.c$83$1$243 ==.
                                   1338 ;	..\COMMON\misc.c:83: } while (p->errcode != AXRADIO_ERR_NOERROR);
      003B5A 8B 82            [24] 1339 	mov	dpl,r3
      003B5C 8C 83            [24] 1340 	mov	dph,r4
      003B5E E4               [12] 1341 	clr	a
      003B5F 93               [24] 1342 	movc	a,@a+dptr
      003B60 70 BC            [24] 1343 	jnz	00103$
      003B62                       1344 00106$:
                           00009D  1345 	C$misc.c$84$1$243 ==.
                           00009D  1346 	XG$com0_display_radio_error$0$0 ==.
      003B62 22               [24] 1347 	ret
                                   1348 ;------------------------------------------------------------
                                   1349 ;Allocation info for local variables in function 'dbglink_display_radio_error'
                                   1350 ;------------------------------------------------------------
                                   1351 ;err                       Allocated to registers r7 
                                   1352 ;p                         Allocated to registers 
                                   1353 ;------------------------------------------------------------
                           00009E  1354 	G$dbglink_display_radio_error$0$0 ==.
                           00009E  1355 	C$misc.c$86$1$243 ==.
                                   1356 ;	..\COMMON\misc.c:86: void dbglink_display_radio_error(uint8_t err)
                                   1357 ;	-----------------------------------------
                                   1358 ;	 function dbglink_display_radio_error
                                   1359 ;	-----------------------------------------
      003B63                       1360 _dbglink_display_radio_error:
      003B63 AF 82            [24] 1361 	mov	r7,dpl
                           0000A0  1362 	C$misc.c$88$1$243 ==.
                                   1363 ;	..\COMMON\misc.c:88: const struct errtbl __code *p = errtbl;
                           0000A0  1364 	C$misc.c$89$1$247 ==.
                                   1365 ;	..\COMMON\misc.c:89: if (!(DBGLNKSTAT & 0x10))
      003B65 E5 E2            [12] 1366 	mov	a,_DBGLNKSTAT
      003B67 20 E4 02         [24] 1367 	jb	acc.4,00112$
                           0000A5  1368 	C$misc.c$90$1$247 ==.
                                   1369 ;	..\COMMON\misc.c:90: return;
                           0000A5  1370 	C$misc.c$91$1$247 ==.
                                   1371 ;	..\COMMON\misc.c:91: do {
      003B6A 80 46            [24] 1372 	sjmp	00108$
      003B6C                       1373 00112$:
      003B6C 7D CD            [12] 1374 	mov	r5,#_errtbl
      003B6E 7E 56            [12] 1375 	mov	r6,#(_errtbl >> 8)
      003B70                       1376 00105$:
                           0000AB  1377 	C$misc.c$92$2$248 ==.
                                   1378 ;	..\COMMON\misc.c:92: if (p->errcode == err) {
      003B70 8D 82            [24] 1379 	mov	dpl,r5
      003B72 8E 83            [24] 1380 	mov	dph,r6
      003B74 E4               [12] 1381 	clr	a
      003B75 93               [24] 1382 	movc	a,@a+dptr
      003B76 FC               [12] 1383 	mov	r4,a
      003B77 B5 07 29         [24] 1384 	cjne	a,ar7,00104$
                           0000B5  1385 	C$misc.c$93$3$249 ==.
                                   1386 ;	..\COMMON\misc.c:93: dbglink_writestr(p->msg);
      003B7A 8D 82            [24] 1387 	mov	dpl,r5
      003B7C 8E 83            [24] 1388 	mov	dph,r6
      003B7E A3               [24] 1389 	inc	dptr
      003B7F E4               [12] 1390 	clr	a
      003B80 93               [24] 1391 	movc	a,@a+dptr
      003B81 FB               [12] 1392 	mov	r3,a
      003B82 A3               [24] 1393 	inc	dptr
      003B83 E4               [12] 1394 	clr	a
      003B84 93               [24] 1395 	movc	a,@a+dptr
      003B85 FC               [12] 1396 	mov	r4,a
      003B86 7A 80            [12] 1397 	mov	r2,#0x80
      003B88 8B 82            [24] 1398 	mov	dpl,r3
      003B8A 8C 83            [24] 1399 	mov	dph,r4
      003B8C 8A F0            [24] 1400 	mov	b,r2
      003B8E C0 07            [24] 1401 	push	ar7
      003B90 C0 06            [24] 1402 	push	ar6
      003B92 C0 05            [24] 1403 	push	ar5
      003B94 12 4C 05         [24] 1404 	lcall	_dbglink_writestr
      003B97 D0 05            [24] 1405 	pop	ar5
      003B99 D0 06            [24] 1406 	pop	ar6
      003B9B D0 07            [24] 1407 	pop	ar7
                           0000D8  1408 	C$misc.c$94$3$249 ==.
                                   1409 ;	..\COMMON\misc.c:94: dbglink_tx('\n');
      003B9D 75 82 0A         [24] 1410 	mov	dpl,#0x0a
      003BA0 12 40 47         [24] 1411 	lcall	_dbglink_tx
      003BA3                       1412 00104$:
                           0000DE  1413 	C$misc.c$96$2$248 ==.
                                   1414 ;	..\COMMON\misc.c:96: ++p;
      003BA3 74 03            [12] 1415 	mov	a,#0x03
      003BA5 2D               [12] 1416 	add	a,r5
      003BA6 FD               [12] 1417 	mov	r5,a
      003BA7 E4               [12] 1418 	clr	a
      003BA8 3E               [12] 1419 	addc	a,r6
      003BA9 FE               [12] 1420 	mov	r6,a
                           0000E5  1421 	C$misc.c$97$1$247 ==.
                                   1422 ;	..\COMMON\misc.c:97: } while (p->errcode != AXRADIO_ERR_NOERROR);
      003BAA 8D 82            [24] 1423 	mov	dpl,r5
      003BAC 8E 83            [24] 1424 	mov	dph,r6
      003BAE E4               [12] 1425 	clr	a
      003BAF 93               [24] 1426 	movc	a,@a+dptr
      003BB0 70 BE            [24] 1427 	jnz	00105$
      003BB2                       1428 00108$:
                           0000ED  1429 	C$misc.c$98$1$247 ==.
                           0000ED  1430 	XG$dbglink_display_radio_error$0$0 ==.
      003BB2 22               [24] 1431 	ret
                                   1432 ;------------------------------------------------------------
                                   1433 ;Allocation info for local variables in function 'delayms_callback'
                                   1434 ;------------------------------------------------------------
                                   1435 ;desc                      Allocated to registers 
                                   1436 ;------------------------------------------------------------
                           0000EE  1437 	Fmisc$delayms_callback$0$0 ==.
                           0000EE  1438 	C$misc.c$103$1$247 ==.
                                   1439 ;	..\COMMON\misc.c:103: static void delayms_callback(struct wtimer_desc __xdata *desc)
                                   1440 ;	-----------------------------------------
                                   1441 ;	 function delayms_callback
                                   1442 ;	-----------------------------------------
      003BB3                       1443 _delayms_callback:
                           0000EE  1444 	C$misc.c$106$1$251 ==.
                                   1445 ;	..\COMMON\misc.c:106: delaymstimer.handler = 0;
      003BB3 90 02 94         [24] 1446 	mov	dptr,#(_delaymstimer + 0x0002)
      003BB6 E4               [12] 1447 	clr	a
      003BB7 F0               [24] 1448 	movx	@dptr,a
      003BB8 A3               [24] 1449 	inc	dptr
      003BB9 F0               [24] 1450 	movx	@dptr,a
                           0000F5  1451 	C$misc.c$107$1$251 ==.
                           0000F5  1452 	XFmisc$delayms_callback$0$0 ==.
      003BBA 22               [24] 1453 	ret
                                   1454 ;------------------------------------------------------------
                                   1455 ;Allocation info for local variables in function 'delay_ms'
                                   1456 ;------------------------------------------------------------
                                   1457 ;ms                        Allocated to registers r6 r7 
                                   1458 ;x                         Allocated to stack - _bp +1
                                   1459 ;------------------------------------------------------------
                           0000F6  1460 	G$delay_ms$0$0 ==.
                           0000F6  1461 	C$misc.c$109$1$251 ==.
                                   1462 ;	..\COMMON\misc.c:109: __reentrantb void delay_ms(uint16_t ms) __reentrant
                                   1463 ;	-----------------------------------------
                                   1464 ;	 function delay_ms
                                   1465 ;	-----------------------------------------
      003BBB                       1466 _delay_ms:
      003BBB C0 22            [24] 1467 	push	_bp
      003BBD E5 81            [12] 1468 	mov	a,sp
      003BBF F5 22            [12] 1469 	mov	_bp,a
      003BC1 24 04            [12] 1470 	add	a,#0x04
      003BC3 F5 81            [12] 1471 	mov	sp,a
      003BC5 AE 82            [24] 1472 	mov	r6,dpl
      003BC7 AF 83            [24] 1473 	mov	r7,dph
                           000104  1474 	C$misc.c$113$1$253 ==.
                                   1475 ;	..\COMMON\misc.c:113: wtimer_remove(&delaymstimer);
      003BC9 90 02 92         [24] 1476 	mov	dptr,#_delaymstimer
      003BCC C0 07            [24] 1477 	push	ar7
      003BCE C0 06            [24] 1478 	push	ar6
      003BD0 12 4D D3         [24] 1479 	lcall	_wtimer_remove
      003BD3 D0 06            [24] 1480 	pop	ar6
      003BD5 D0 07            [24] 1481 	pop	ar7
                           000112  1482 	C$misc.c$114$1$253 ==.
                                   1483 ;	..\COMMON\misc.c:114: x = ms;
      003BD7 A8 22            [24] 1484 	mov	r0,_bp
      003BD9 08               [12] 1485 	inc	r0
      003BDA A6 06            [24] 1486 	mov	@r0,ar6
      003BDC 08               [12] 1487 	inc	r0
      003BDD A6 07            [24] 1488 	mov	@r0,ar7
      003BDF 08               [12] 1489 	inc	r0
      003BE0 76 00            [12] 1490 	mov	@r0,#0x00
      003BE2 08               [12] 1491 	inc	r0
      003BE3 76 00            [12] 1492 	mov	@r0,#0x00
                           000120  1493 	C$misc.c$115$1$253 ==.
                                   1494 ;	..\COMMON\misc.c:115: delaymstimer.time = ms >> 1;
      003BE5 EF               [12] 1495 	mov	a,r7
      003BE6 C3               [12] 1496 	clr	c
      003BE7 13               [12] 1497 	rrc	a
      003BE8 CE               [12] 1498 	xch	a,r6
      003BE9 13               [12] 1499 	rrc	a
      003BEA CE               [12] 1500 	xch	a,r6
      003BEB FF               [12] 1501 	mov	r7,a
      003BEC 8E 04            [24] 1502 	mov	ar4,r6
      003BEE 8F 05            [24] 1503 	mov	ar5,r7
      003BF0 7E 00            [12] 1504 	mov	r6,#0x00
      003BF2 7F 00            [12] 1505 	mov	r7,#0x00
      003BF4 90 02 96         [24] 1506 	mov	dptr,#(_delaymstimer + 0x0004)
      003BF7 EC               [12] 1507 	mov	a,r4
      003BF8 F0               [24] 1508 	movx	@dptr,a
      003BF9 ED               [12] 1509 	mov	a,r5
      003BFA A3               [24] 1510 	inc	dptr
      003BFB F0               [24] 1511 	movx	@dptr,a
      003BFC EE               [12] 1512 	mov	a,r6
      003BFD A3               [24] 1513 	inc	dptr
      003BFE F0               [24] 1514 	movx	@dptr,a
      003BFF EF               [12] 1515 	mov	a,r7
      003C00 A3               [24] 1516 	inc	dptr
      003C01 F0               [24] 1517 	movx	@dptr,a
                           00013D  1518 	C$misc.c$116$1$253 ==.
                                   1519 ;	..\COMMON\misc.c:116: x <<= 3;
      003C02 A8 22            [24] 1520 	mov	r0,_bp
      003C04 08               [12] 1521 	inc	r0
      003C05 08               [12] 1522 	inc	r0
      003C06 08               [12] 1523 	inc	r0
      003C07 08               [12] 1524 	inc	r0
      003C08 E6               [12] 1525 	mov	a,@r0
      003C09 18               [12] 1526 	dec	r0
      003C0A C4               [12] 1527 	swap	a
      003C0B 03               [12] 1528 	rr	a
      003C0C 54 F8            [12] 1529 	anl	a,#0xf8
      003C0E C6               [12] 1530 	xch	a,@r0
      003C0F C4               [12] 1531 	swap	a
      003C10 03               [12] 1532 	rr	a
      003C11 C6               [12] 1533 	xch	a,@r0
      003C12 66               [12] 1534 	xrl	a,@r0
      003C13 C6               [12] 1535 	xch	a,@r0
      003C14 54 F8            [12] 1536 	anl	a,#0xf8
      003C16 C6               [12] 1537 	xch	a,@r0
      003C17 66               [12] 1538 	xrl	a,@r0
      003C18 08               [12] 1539 	inc	r0
      003C19 F6               [12] 1540 	mov	@r0,a
      003C1A 18               [12] 1541 	dec	r0
      003C1B 18               [12] 1542 	dec	r0
      003C1C E6               [12] 1543 	mov	a,@r0
      003C1D C4               [12] 1544 	swap	a
      003C1E 03               [12] 1545 	rr	a
      003C1F 54 07            [12] 1546 	anl	a,#0x07
      003C21 08               [12] 1547 	inc	r0
      003C22 46               [12] 1548 	orl	a,@r0
      003C23 F6               [12] 1549 	mov	@r0,a
      003C24 18               [12] 1550 	dec	r0
      003C25 E6               [12] 1551 	mov	a,@r0
      003C26 18               [12] 1552 	dec	r0
      003C27 C4               [12] 1553 	swap	a
      003C28 03               [12] 1554 	rr	a
      003C29 54 F8            [12] 1555 	anl	a,#0xf8
      003C2B C6               [12] 1556 	xch	a,@r0
      003C2C C4               [12] 1557 	swap	a
      003C2D 03               [12] 1558 	rr	a
      003C2E C6               [12] 1559 	xch	a,@r0
      003C2F 66               [12] 1560 	xrl	a,@r0
      003C30 C6               [12] 1561 	xch	a,@r0
      003C31 54 F8            [12] 1562 	anl	a,#0xf8
      003C33 C6               [12] 1563 	xch	a,@r0
      003C34 66               [12] 1564 	xrl	a,@r0
      003C35 08               [12] 1565 	inc	r0
      003C36 F6               [12] 1566 	mov	@r0,a
                           000172  1567 	C$misc.c$117$1$253 ==.
                                   1568 ;	..\COMMON\misc.c:117: delaymstimer.time -= x;
      003C37 A8 22            [24] 1569 	mov	r0,_bp
      003C39 08               [12] 1570 	inc	r0
      003C3A EC               [12] 1571 	mov	a,r4
      003C3B C3               [12] 1572 	clr	c
      003C3C 96               [12] 1573 	subb	a,@r0
      003C3D FC               [12] 1574 	mov	r4,a
      003C3E ED               [12] 1575 	mov	a,r5
      003C3F 08               [12] 1576 	inc	r0
      003C40 96               [12] 1577 	subb	a,@r0
      003C41 FD               [12] 1578 	mov	r5,a
      003C42 EE               [12] 1579 	mov	a,r6
      003C43 08               [12] 1580 	inc	r0
      003C44 96               [12] 1581 	subb	a,@r0
      003C45 FE               [12] 1582 	mov	r6,a
      003C46 EF               [12] 1583 	mov	a,r7
      003C47 08               [12] 1584 	inc	r0
      003C48 96               [12] 1585 	subb	a,@r0
      003C49 FF               [12] 1586 	mov	r7,a
      003C4A 90 02 96         [24] 1587 	mov	dptr,#(_delaymstimer + 0x0004)
      003C4D EC               [12] 1588 	mov	a,r4
      003C4E F0               [24] 1589 	movx	@dptr,a
      003C4F ED               [12] 1590 	mov	a,r5
      003C50 A3               [24] 1591 	inc	dptr
      003C51 F0               [24] 1592 	movx	@dptr,a
      003C52 EE               [12] 1593 	mov	a,r6
      003C53 A3               [24] 1594 	inc	dptr
      003C54 F0               [24] 1595 	movx	@dptr,a
      003C55 EF               [12] 1596 	mov	a,r7
      003C56 A3               [24] 1597 	inc	dptr
      003C57 F0               [24] 1598 	movx	@dptr,a
                           000193  1599 	C$misc.c$118$1$253 ==.
                                   1600 ;	..\COMMON\misc.c:118: x <<= 3;
      003C58 A8 22            [24] 1601 	mov	r0,_bp
      003C5A 08               [12] 1602 	inc	r0
      003C5B 08               [12] 1603 	inc	r0
      003C5C 08               [12] 1604 	inc	r0
      003C5D 08               [12] 1605 	inc	r0
      003C5E E6               [12] 1606 	mov	a,@r0
      003C5F 18               [12] 1607 	dec	r0
      003C60 C4               [12] 1608 	swap	a
      003C61 03               [12] 1609 	rr	a
      003C62 54 F8            [12] 1610 	anl	a,#0xf8
      003C64 C6               [12] 1611 	xch	a,@r0
      003C65 C4               [12] 1612 	swap	a
      003C66 03               [12] 1613 	rr	a
      003C67 C6               [12] 1614 	xch	a,@r0
      003C68 66               [12] 1615 	xrl	a,@r0
      003C69 C6               [12] 1616 	xch	a,@r0
      003C6A 54 F8            [12] 1617 	anl	a,#0xf8
      003C6C C6               [12] 1618 	xch	a,@r0
      003C6D 66               [12] 1619 	xrl	a,@r0
      003C6E 08               [12] 1620 	inc	r0
      003C6F F6               [12] 1621 	mov	@r0,a
      003C70 18               [12] 1622 	dec	r0
      003C71 18               [12] 1623 	dec	r0
      003C72 E6               [12] 1624 	mov	a,@r0
      003C73 C4               [12] 1625 	swap	a
      003C74 03               [12] 1626 	rr	a
      003C75 54 07            [12] 1627 	anl	a,#0x07
      003C77 08               [12] 1628 	inc	r0
      003C78 46               [12] 1629 	orl	a,@r0
      003C79 F6               [12] 1630 	mov	@r0,a
      003C7A 18               [12] 1631 	dec	r0
      003C7B E6               [12] 1632 	mov	a,@r0
      003C7C 18               [12] 1633 	dec	r0
      003C7D C4               [12] 1634 	swap	a
      003C7E 03               [12] 1635 	rr	a
      003C7F 54 F8            [12] 1636 	anl	a,#0xf8
      003C81 C6               [12] 1637 	xch	a,@r0
      003C82 C4               [12] 1638 	swap	a
      003C83 03               [12] 1639 	rr	a
      003C84 C6               [12] 1640 	xch	a,@r0
      003C85 66               [12] 1641 	xrl	a,@r0
      003C86 C6               [12] 1642 	xch	a,@r0
      003C87 54 F8            [12] 1643 	anl	a,#0xf8
      003C89 C6               [12] 1644 	xch	a,@r0
      003C8A 66               [12] 1645 	xrl	a,@r0
      003C8B 08               [12] 1646 	inc	r0
      003C8C F6               [12] 1647 	mov	@r0,a
                           0001C8  1648 	C$misc.c$119$1$253 ==.
                                   1649 ;	..\COMMON\misc.c:119: delaymstimer.time += x;
      003C8D A8 22            [24] 1650 	mov	r0,_bp
      003C8F 08               [12] 1651 	inc	r0
      003C90 E6               [12] 1652 	mov	a,@r0
      003C91 2C               [12] 1653 	add	a,r4
      003C92 FC               [12] 1654 	mov	r4,a
      003C93 08               [12] 1655 	inc	r0
      003C94 E6               [12] 1656 	mov	a,@r0
      003C95 3D               [12] 1657 	addc	a,r5
      003C96 FD               [12] 1658 	mov	r5,a
      003C97 08               [12] 1659 	inc	r0
      003C98 E6               [12] 1660 	mov	a,@r0
      003C99 3E               [12] 1661 	addc	a,r6
      003C9A FE               [12] 1662 	mov	r6,a
      003C9B 08               [12] 1663 	inc	r0
      003C9C E6               [12] 1664 	mov	a,@r0
      003C9D 3F               [12] 1665 	addc	a,r7
      003C9E FF               [12] 1666 	mov	r7,a
      003C9F 90 02 96         [24] 1667 	mov	dptr,#(_delaymstimer + 0x0004)
      003CA2 EC               [12] 1668 	mov	a,r4
      003CA3 F0               [24] 1669 	movx	@dptr,a
      003CA4 ED               [12] 1670 	mov	a,r5
      003CA5 A3               [24] 1671 	inc	dptr
      003CA6 F0               [24] 1672 	movx	@dptr,a
      003CA7 EE               [12] 1673 	mov	a,r6
      003CA8 A3               [24] 1674 	inc	dptr
      003CA9 F0               [24] 1675 	movx	@dptr,a
      003CAA EF               [12] 1676 	mov	a,r7
      003CAB A3               [24] 1677 	inc	dptr
      003CAC F0               [24] 1678 	movx	@dptr,a
                           0001E8  1679 	C$misc.c$120$1$253 ==.
                                   1680 ;	..\COMMON\misc.c:120: x <<= 2;
      003CAD A8 22            [24] 1681 	mov	r0,_bp
      003CAF 08               [12] 1682 	inc	r0
      003CB0 E6               [12] 1683 	mov	a,@r0
      003CB1 25 E0            [12] 1684 	add	a,acc
      003CB3 F6               [12] 1685 	mov	@r0,a
      003CB4 08               [12] 1686 	inc	r0
      003CB5 E6               [12] 1687 	mov	a,@r0
      003CB6 33               [12] 1688 	rlc	a
      003CB7 F6               [12] 1689 	mov	@r0,a
      003CB8 08               [12] 1690 	inc	r0
      003CB9 E6               [12] 1691 	mov	a,@r0
      003CBA 33               [12] 1692 	rlc	a
      003CBB F6               [12] 1693 	mov	@r0,a
      003CBC 08               [12] 1694 	inc	r0
      003CBD E6               [12] 1695 	mov	a,@r0
      003CBE 33               [12] 1696 	rlc	a
      003CBF F6               [12] 1697 	mov	@r0,a
      003CC0 18               [12] 1698 	dec	r0
      003CC1 18               [12] 1699 	dec	r0
      003CC2 18               [12] 1700 	dec	r0
      003CC3 E6               [12] 1701 	mov	a,@r0
      003CC4 25 E0            [12] 1702 	add	a,acc
      003CC6 F6               [12] 1703 	mov	@r0,a
      003CC7 08               [12] 1704 	inc	r0
      003CC8 E6               [12] 1705 	mov	a,@r0
      003CC9 33               [12] 1706 	rlc	a
      003CCA F6               [12] 1707 	mov	@r0,a
      003CCB 08               [12] 1708 	inc	r0
      003CCC E6               [12] 1709 	mov	a,@r0
      003CCD 33               [12] 1710 	rlc	a
      003CCE F6               [12] 1711 	mov	@r0,a
      003CCF 08               [12] 1712 	inc	r0
      003CD0 E6               [12] 1713 	mov	a,@r0
      003CD1 33               [12] 1714 	rlc	a
      003CD2 F6               [12] 1715 	mov	@r0,a
                           00020E  1716 	C$misc.c$121$1$253 ==.
                                   1717 ;	..\COMMON\misc.c:121: delaymstimer.time += x;
      003CD3 A8 22            [24] 1718 	mov	r0,_bp
      003CD5 08               [12] 1719 	inc	r0
      003CD6 E6               [12] 1720 	mov	a,@r0
      003CD7 2C               [12] 1721 	add	a,r4
      003CD8 FC               [12] 1722 	mov	r4,a
      003CD9 08               [12] 1723 	inc	r0
      003CDA E6               [12] 1724 	mov	a,@r0
      003CDB 3D               [12] 1725 	addc	a,r5
      003CDC FD               [12] 1726 	mov	r5,a
      003CDD 08               [12] 1727 	inc	r0
      003CDE E6               [12] 1728 	mov	a,@r0
      003CDF 3E               [12] 1729 	addc	a,r6
      003CE0 FE               [12] 1730 	mov	r6,a
      003CE1 08               [12] 1731 	inc	r0
      003CE2 E6               [12] 1732 	mov	a,@r0
      003CE3 3F               [12] 1733 	addc	a,r7
      003CE4 FF               [12] 1734 	mov	r7,a
      003CE5 90 02 96         [24] 1735 	mov	dptr,#(_delaymstimer + 0x0004)
      003CE8 EC               [12] 1736 	mov	a,r4
      003CE9 F0               [24] 1737 	movx	@dptr,a
      003CEA ED               [12] 1738 	mov	a,r5
      003CEB A3               [24] 1739 	inc	dptr
      003CEC F0               [24] 1740 	movx	@dptr,a
      003CED EE               [12] 1741 	mov	a,r6
      003CEE A3               [24] 1742 	inc	dptr
      003CEF F0               [24] 1743 	movx	@dptr,a
      003CF0 EF               [12] 1744 	mov	a,r7
      003CF1 A3               [24] 1745 	inc	dptr
      003CF2 F0               [24] 1746 	movx	@dptr,a
                           00022E  1747 	C$misc.c$122$1$253 ==.
                                   1748 ;	..\COMMON\misc.c:122: delaymstimer.handler = delayms_callback;
      003CF3 90 02 94         [24] 1749 	mov	dptr,#(_delaymstimer + 0x0002)
      003CF6 74 B3            [12] 1750 	mov	a,#_delayms_callback
      003CF8 F0               [24] 1751 	movx	@dptr,a
      003CF9 74 3B            [12] 1752 	mov	a,#(_delayms_callback >> 8)
      003CFB A3               [24] 1753 	inc	dptr
      003CFC F0               [24] 1754 	movx	@dptr,a
                           000238  1755 	C$misc.c$123$1$253 ==.
                                   1756 ;	..\COMMON\misc.c:123: wtimer1_addrelative(&delaymstimer);
      003CFD 90 02 92         [24] 1757 	mov	dptr,#_delaymstimer
      003D00 12 47 03         [24] 1758 	lcall	_wtimer1_addrelative
                           00023E  1759 	C$misc.c$124$1$253 ==.
                                   1760 ;	..\COMMON\misc.c:124: wtimer_runcallbacks();
      003D03 12 45 29         [24] 1761 	lcall	_wtimer_runcallbacks
                           000241  1762 	C$misc.c$125$1$253 ==.
                                   1763 ;	..\COMMON\misc.c:125: do {
      003D06                       1764 00101$:
                           000241  1765 	C$misc.c$126$2$254 ==.
                                   1766 ;	..\COMMON\misc.c:126: wtimer_idle(WTFLAG_CANSTANDBY);
      003D06 75 82 02         [24] 1767 	mov	dpl,#0x02
      003D09 12 45 AA         [24] 1768 	lcall	_wtimer_idle
                           000247  1769 	C$misc.c$127$2$254 ==.
                                   1770 ;	..\COMMON\misc.c:127: wtimer_runcallbacks();
      003D0C 12 45 29         [24] 1771 	lcall	_wtimer_runcallbacks
                           00024A  1772 	C$misc.c$128$1$253 ==.
                                   1773 ;	..\COMMON\misc.c:128: } while (delaymstimer.handler);
      003D0F 90 02 94         [24] 1774 	mov	dptr,#(_delaymstimer + 0x0002)
      003D12 E0               [24] 1775 	movx	a,@dptr
      003D13 FE               [12] 1776 	mov	r6,a
      003D14 A3               [24] 1777 	inc	dptr
      003D15 E0               [24] 1778 	movx	a,@dptr
      003D16 FF               [12] 1779 	mov	r7,a
      003D17 4E               [12] 1780 	orl	a,r6
      003D18 70 EC            [24] 1781 	jnz	00101$
      003D1A 85 22 81         [24] 1782 	mov	sp,_bp
      003D1D D0 22            [24] 1783 	pop	_bp
                           00025A  1784 	C$misc.c$129$1$253 ==.
                           00025A  1785 	XG$delay_ms$0$0 ==.
      003D1F 22               [24] 1786 	ret
                                   1787 	.area CSEG    (CODE)
                                   1788 	.area CONST   (CODE)
                           000000  1789 Fmisc$errtbl$0$0 == .
      0056CD                       1790 _errtbl:
      0056CD 01                    1791 	.db #0x01	; 1
      0056CE E5 56                 1792 	.byte __str_0, (__str_0 >> 8)
      0056D0 02                    1793 	.db #0x02	; 2
      0056D1 F6 56                 1794 	.byte __str_1, (__str_1 >> 8)
      0056D3 03                    1795 	.db #0x03	; 3
      0056D4 FE 56                 1796 	.byte __str_2, (__str_2 >> 8)
      0056D6 04                    1797 	.db #0x04	; 4
      0056D7 09 57                 1798 	.byte __str_3, (__str_3 >> 8)
      0056D9 05                    1799 	.db #0x05	; 5
      0056DA 14 57                 1800 	.byte __str_4, (__str_4 >> 8)
      0056DC 06                    1801 	.db #0x06	; 6
      0056DD 25 57                 1802 	.byte __str_5, (__str_5 >> 8)
      0056DF 07                    1803 	.db #0x07	; 7
      0056E0 30 57                 1804 	.byte __str_6, (__str_6 >> 8)
      0056E2 00                    1805 	.db #0x00	; 0
      0056E3 00 00                 1806 	.byte #0x00,#0x00
                           000018  1807 Fmisc$__str_0$0$0 == .
      0056E5                       1808 __str_0:
      0056E5 45 3A 20 6E 6F 74 20  1809 	.ascii "E: not supported"
             73 75 70 70 6F 72 74
             65 64
      0056F5 00                    1810 	.db 0x00
                           000029  1811 Fmisc$__str_1$0$0 == .
      0056F6                       1812 __str_1:
      0056F6 45 3A 20 62 75 73 79  1813 	.ascii "E: busy"
      0056FD 00                    1814 	.db 0x00
                           000031  1815 Fmisc$__str_2$0$0 == .
      0056FE                       1816 __str_2:
      0056FE 45 3A 20 74 69 6D 65  1817 	.ascii "E: timeout"
             6F 75 74
      005708 00                    1818 	.db 0x00
                           00003C  1819 Fmisc$__str_3$0$0 == .
      005709                       1820 __str_3:
      005709 45 3A 20 69 6E 76 61  1821 	.ascii "E: invalid"
             6C 69 64
      005713 00                    1822 	.db 0x00
                           000047  1823 Fmisc$__str_4$0$0 == .
      005714                       1824 __str_4:
      005714 45 3A 20 6E 6F 20 63  1825 	.ascii "E: no chip found"
             68 69 70 20 66 6F 75
             6E 64
      005724 00                    1826 	.db 0x00
                           000058  1827 Fmisc$__str_5$0$0 == .
      005725                       1828 __str_5:
      005725 45 3A 20 72 61 6E 67  1829 	.ascii "E: ranging"
             69 6E 67
      00572F 00                    1830 	.db 0x00
                           000063  1831 Fmisc$__str_6$0$0 == .
      005730                       1832 __str_6:
      005730 45 3A 20 6C 6F 63 6B  1833 	.ascii "E: lock lost"
             20 6C 6F 73 74
      00573C 00                    1834 	.db 0x00
                                   1835 	.area XINIT   (CODE)
                                   1836 	.area CABS    (ABS,CODE)
