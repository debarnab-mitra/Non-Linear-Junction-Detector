                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module easyax5043
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ax5043_init_registers_rx
                                     12 	.globl _ax5043_init_registers_tx
                                     13 	.globl _dbglink_writenum16
                                     14 	.globl _dbglink_writestr
                                     15 	.globl _dbglink_tx
                                     16 	.globl _memset
                                     17 	.globl _memcpy
                                     18 	.globl _wtimer_remove_callback
                                     19 	.globl _wtimer_add_callback
                                     20 	.globl _wtimer_remove
                                     21 	.globl _wtimer1_addrelative
                                     22 	.globl _wtimer0_addrelative
                                     23 	.globl _wtimer0_addabsolute
                                     24 	.globl _wtimer0_curtime
                                     25 	.globl _wtimer_runcallbacks
                                     26 	.globl _wtimer_idle
                                     27 	.globl _ax5043_writefifo
                                     28 	.globl _ax5043_readfifo
                                     29 	.globl _ax5043_wakeup_deepsleep
                                     30 	.globl _ax5043_enter_deepsleep
                                     31 	.globl _ax5043_reset
                                     32 	.globl _radio_read24
                                     33 	.globl _radio_read16
                                     34 	.globl _pn9_buffer
                                     35 	.globl _pn9_advance_byte
                                     36 	.globl _pn9_advance_bits
                                     37 	.globl _axradio_framing_append_crc
                                     38 	.globl _axradio_framing_check_crc
                                     39 	.globl _ax5043_set_registers_rxcont_singleparamset
                                     40 	.globl _ax5043_set_registers_rxcont
                                     41 	.globl _ax5043_set_registers_rxwor
                                     42 	.globl _ax5043_set_registers_rx
                                     43 	.globl _ax5043_set_registers_tx
                                     44 	.globl _ax5043_set_registers
                                     45 	.globl _axradio_conv_freq_fromreg
                                     46 	.globl _axradio_statuschange
                                     47 	.globl _axradio_conv_timeinterval_totimer0
                                     48 	.globl _checksignedlimit32
                                     49 	.globl _checksignedlimit16
                                     50 	.globl _signedlimit16
                                     51 	.globl _signextend24
                                     52 	.globl _signextend20
                                     53 	.globl _signextend16
                                     54 	.globl _PORTC_7
                                     55 	.globl _PORTC_6
                                     56 	.globl _PORTC_5
                                     57 	.globl _PORTC_4
                                     58 	.globl _PORTC_3
                                     59 	.globl _PORTC_2
                                     60 	.globl _PORTC_1
                                     61 	.globl _PORTC_0
                                     62 	.globl _PORTB_7
                                     63 	.globl _PORTB_6
                                     64 	.globl _PORTB_5
                                     65 	.globl _PORTB_4
                                     66 	.globl _PORTB_3
                                     67 	.globl _PORTB_2
                                     68 	.globl _PORTB_1
                                     69 	.globl _PORTB_0
                                     70 	.globl _PORTA_7
                                     71 	.globl _PORTA_6
                                     72 	.globl _PORTA_5
                                     73 	.globl _PORTA_4
                                     74 	.globl _PORTA_3
                                     75 	.globl _PORTA_2
                                     76 	.globl _PORTA_1
                                     77 	.globl _PORTA_0
                                     78 	.globl _PINC_7
                                     79 	.globl _PINC_6
                                     80 	.globl _PINC_5
                                     81 	.globl _PINC_4
                                     82 	.globl _PINC_3
                                     83 	.globl _PINC_2
                                     84 	.globl _PINC_1
                                     85 	.globl _PINC_0
                                     86 	.globl _PINB_7
                                     87 	.globl _PINB_6
                                     88 	.globl _PINB_5
                                     89 	.globl _PINB_4
                                     90 	.globl _PINB_3
                                     91 	.globl _PINB_2
                                     92 	.globl _PINB_1
                                     93 	.globl _PINB_0
                                     94 	.globl _PINA_7
                                     95 	.globl _PINA_6
                                     96 	.globl _PINA_5
                                     97 	.globl _PINA_4
                                     98 	.globl _PINA_3
                                     99 	.globl _PINA_2
                                    100 	.globl _PINA_1
                                    101 	.globl _PINA_0
                                    102 	.globl _CY
                                    103 	.globl _AC
                                    104 	.globl _F0
                                    105 	.globl _RS1
                                    106 	.globl _RS0
                                    107 	.globl _OV
                                    108 	.globl _F1
                                    109 	.globl _P
                                    110 	.globl _IP_7
                                    111 	.globl _IP_6
                                    112 	.globl _IP_5
                                    113 	.globl _IP_4
                                    114 	.globl _IP_3
                                    115 	.globl _IP_2
                                    116 	.globl _IP_1
                                    117 	.globl _IP_0
                                    118 	.globl _EA
                                    119 	.globl _IE_7
                                    120 	.globl _IE_6
                                    121 	.globl _IE_5
                                    122 	.globl _IE_4
                                    123 	.globl _IE_3
                                    124 	.globl _IE_2
                                    125 	.globl _IE_1
                                    126 	.globl _IE_0
                                    127 	.globl _EIP_7
                                    128 	.globl _EIP_6
                                    129 	.globl _EIP_5
                                    130 	.globl _EIP_4
                                    131 	.globl _EIP_3
                                    132 	.globl _EIP_2
                                    133 	.globl _EIP_1
                                    134 	.globl _EIP_0
                                    135 	.globl _EIE_7
                                    136 	.globl _EIE_6
                                    137 	.globl _EIE_5
                                    138 	.globl _EIE_4
                                    139 	.globl _EIE_3
                                    140 	.globl _EIE_2
                                    141 	.globl _EIE_1
                                    142 	.globl _EIE_0
                                    143 	.globl _E2IP_7
                                    144 	.globl _E2IP_6
                                    145 	.globl _E2IP_5
                                    146 	.globl _E2IP_4
                                    147 	.globl _E2IP_3
                                    148 	.globl _E2IP_2
                                    149 	.globl _E2IP_1
                                    150 	.globl _E2IP_0
                                    151 	.globl _E2IE_7
                                    152 	.globl _E2IE_6
                                    153 	.globl _E2IE_5
                                    154 	.globl _E2IE_4
                                    155 	.globl _E2IE_3
                                    156 	.globl _E2IE_2
                                    157 	.globl _E2IE_1
                                    158 	.globl _E2IE_0
                                    159 	.globl _B_7
                                    160 	.globl _B_6
                                    161 	.globl _B_5
                                    162 	.globl _B_4
                                    163 	.globl _B_3
                                    164 	.globl _B_2
                                    165 	.globl _B_1
                                    166 	.globl _B_0
                                    167 	.globl _ACC_7
                                    168 	.globl _ACC_6
                                    169 	.globl _ACC_5
                                    170 	.globl _ACC_4
                                    171 	.globl _ACC_3
                                    172 	.globl _ACC_2
                                    173 	.globl _ACC_1
                                    174 	.globl _ACC_0
                                    175 	.globl _WTSTAT
                                    176 	.globl _WTIRQEN
                                    177 	.globl _WTEVTD
                                    178 	.globl _WTEVTD1
                                    179 	.globl _WTEVTD0
                                    180 	.globl _WTEVTC
                                    181 	.globl _WTEVTC1
                                    182 	.globl _WTEVTC0
                                    183 	.globl _WTEVTB
                                    184 	.globl _WTEVTB1
                                    185 	.globl _WTEVTB0
                                    186 	.globl _WTEVTA
                                    187 	.globl _WTEVTA1
                                    188 	.globl _WTEVTA0
                                    189 	.globl _WTCNTR1
                                    190 	.globl _WTCNTB
                                    191 	.globl _WTCNTB1
                                    192 	.globl _WTCNTB0
                                    193 	.globl _WTCNTA
                                    194 	.globl _WTCNTA1
                                    195 	.globl _WTCNTA0
                                    196 	.globl _WTCFGB
                                    197 	.globl _WTCFGA
                                    198 	.globl _WDTRESET
                                    199 	.globl _WDTCFG
                                    200 	.globl _U1STATUS
                                    201 	.globl _U1SHREG
                                    202 	.globl _U1MODE
                                    203 	.globl _U1CTRL
                                    204 	.globl _U0STATUS
                                    205 	.globl _U0SHREG
                                    206 	.globl _U0MODE
                                    207 	.globl _U0CTRL
                                    208 	.globl _T2STATUS
                                    209 	.globl _T2PERIOD
                                    210 	.globl _T2PERIOD1
                                    211 	.globl _T2PERIOD0
                                    212 	.globl _T2MODE
                                    213 	.globl _T2CNT
                                    214 	.globl _T2CNT1
                                    215 	.globl _T2CNT0
                                    216 	.globl _T2CLKSRC
                                    217 	.globl _T1STATUS
                                    218 	.globl _T1PERIOD
                                    219 	.globl _T1PERIOD1
                                    220 	.globl _T1PERIOD0
                                    221 	.globl _T1MODE
                                    222 	.globl _T1CNT
                                    223 	.globl _T1CNT1
                                    224 	.globl _T1CNT0
                                    225 	.globl _T1CLKSRC
                                    226 	.globl _T0STATUS
                                    227 	.globl _T0PERIOD
                                    228 	.globl _T0PERIOD1
                                    229 	.globl _T0PERIOD0
                                    230 	.globl _T0MODE
                                    231 	.globl _T0CNT
                                    232 	.globl _T0CNT1
                                    233 	.globl _T0CNT0
                                    234 	.globl _T0CLKSRC
                                    235 	.globl _SPSTATUS
                                    236 	.globl _SPSHREG
                                    237 	.globl _SPMODE
                                    238 	.globl _SPCLKSRC
                                    239 	.globl _RADIOSTAT
                                    240 	.globl _RADIOSTAT1
                                    241 	.globl _RADIOSTAT0
                                    242 	.globl _RADIODATA
                                    243 	.globl _RADIODATA3
                                    244 	.globl _RADIODATA2
                                    245 	.globl _RADIODATA1
                                    246 	.globl _RADIODATA0
                                    247 	.globl _RADIOADDR
                                    248 	.globl _RADIOADDR1
                                    249 	.globl _RADIOADDR0
                                    250 	.globl _RADIOACC
                                    251 	.globl _OC1STATUS
                                    252 	.globl _OC1PIN
                                    253 	.globl _OC1MODE
                                    254 	.globl _OC1COMP
                                    255 	.globl _OC1COMP1
                                    256 	.globl _OC1COMP0
                                    257 	.globl _OC0STATUS
                                    258 	.globl _OC0PIN
                                    259 	.globl _OC0MODE
                                    260 	.globl _OC0COMP
                                    261 	.globl _OC0COMP1
                                    262 	.globl _OC0COMP0
                                    263 	.globl _NVSTATUS
                                    264 	.globl _NVKEY
                                    265 	.globl _NVDATA
                                    266 	.globl _NVDATA1
                                    267 	.globl _NVDATA0
                                    268 	.globl _NVADDR
                                    269 	.globl _NVADDR1
                                    270 	.globl _NVADDR0
                                    271 	.globl _IC1STATUS
                                    272 	.globl _IC1MODE
                                    273 	.globl _IC1CAPT
                                    274 	.globl _IC1CAPT1
                                    275 	.globl _IC1CAPT0
                                    276 	.globl _IC0STATUS
                                    277 	.globl _IC0MODE
                                    278 	.globl _IC0CAPT
                                    279 	.globl _IC0CAPT1
                                    280 	.globl _IC0CAPT0
                                    281 	.globl _PORTR
                                    282 	.globl _PORTC
                                    283 	.globl _PORTB
                                    284 	.globl _PORTA
                                    285 	.globl _PINR
                                    286 	.globl _PINC
                                    287 	.globl _PINB
                                    288 	.globl _PINA
                                    289 	.globl _DIRR
                                    290 	.globl _DIRC
                                    291 	.globl _DIRB
                                    292 	.globl _DIRA
                                    293 	.globl _DBGLNKSTAT
                                    294 	.globl _DBGLNKBUF
                                    295 	.globl _CODECONFIG
                                    296 	.globl _CLKSTAT
                                    297 	.globl _CLKCON
                                    298 	.globl _ANALOGCOMP
                                    299 	.globl _ADCCONV
                                    300 	.globl _ADCCLKSRC
                                    301 	.globl _ADCCH3CONFIG
                                    302 	.globl _ADCCH2CONFIG
                                    303 	.globl _ADCCH1CONFIG
                                    304 	.globl _ADCCH0CONFIG
                                    305 	.globl __XPAGE
                                    306 	.globl _XPAGE
                                    307 	.globl _SP
                                    308 	.globl _PSW
                                    309 	.globl _PCON
                                    310 	.globl _IP
                                    311 	.globl _IE
                                    312 	.globl _EIP
                                    313 	.globl _EIE
                                    314 	.globl _E2IP
                                    315 	.globl _E2IE
                                    316 	.globl _DPS
                                    317 	.globl _DPTR1
                                    318 	.globl _DPTR0
                                    319 	.globl _DPL1
                                    320 	.globl _DPL
                                    321 	.globl _DPH1
                                    322 	.globl _DPH
                                    323 	.globl _B
                                    324 	.globl _ACC
                                    325 	.globl _f33_saved
                                    326 	.globl _f32_saved
                                    327 	.globl _f31_saved
                                    328 	.globl _f30_saved
                                    329 	.globl _axradio_timer
                                    330 	.globl _axradio_cb_transmitdata
                                    331 	.globl _axradio_cb_transmitend
                                    332 	.globl _axradio_cb_transmitstart
                                    333 	.globl _axradio_cb_channelstate
                                    334 	.globl _axradio_cb_receivesfd
                                    335 	.globl _axradio_cb_receive
                                    336 	.globl _axradio_rxbuffer
                                    337 	.globl _axradio_txbuffer
                                    338 	.globl _axradio_default_remoteaddr
                                    339 	.globl _axradio_localaddr
                                    340 	.globl _axradio_timeanchor
                                    341 	.globl _axradio_sync_periodcorr
                                    342 	.globl _axradio_sync_time
                                    343 	.globl _axradio_ack_seqnr
                                    344 	.globl _axradio_ack_count
                                    345 	.globl _axradio_curfreqoffset
                                    346 	.globl _axradio_curchannel
                                    347 	.globl _axradio_txbuffer_cnt
                                    348 	.globl _axradio_txbuffer_len
                                    349 	.globl _axradio_syncstate
                                    350 	.globl _AX5043_XTALAMPL
                                    351 	.globl _AX5043_XTALOSC
                                    352 	.globl _AX5043_MODCFGP
                                    353 	.globl _AX5043_POWCTRL1
                                    354 	.globl _AX5043_REF
                                    355 	.globl _AX5043_0xF44
                                    356 	.globl _AX5043_0xF35
                                    357 	.globl _AX5043_0xF34
                                    358 	.globl _AX5043_0xF33
                                    359 	.globl _AX5043_0xF32
                                    360 	.globl _AX5043_0xF31
                                    361 	.globl _AX5043_0xF30
                                    362 	.globl _AX5043_0xF26
                                    363 	.globl _AX5043_0xF23
                                    364 	.globl _AX5043_0xF22
                                    365 	.globl _AX5043_0xF21
                                    366 	.globl _AX5043_0xF1C
                                    367 	.globl _AX5043_0xF18
                                    368 	.globl _AX5043_0xF11
                                    369 	.globl _AX5043_0xF10
                                    370 	.globl _AX5043_0xF0C
                                    371 	.globl _AX5043_0xF00
                                    372 	.globl _AX5043_TIMEGAIN3NB
                                    373 	.globl _AX5043_TIMEGAIN2NB
                                    374 	.globl _AX5043_TIMEGAIN1NB
                                    375 	.globl _AX5043_TIMEGAIN0NB
                                    376 	.globl _AX5043_RXPARAMSETSNB
                                    377 	.globl _AX5043_RXPARAMCURSETNB
                                    378 	.globl _AX5043_PKTMAXLENNB
                                    379 	.globl _AX5043_PKTLENOFFSETNB
                                    380 	.globl _AX5043_PKTLENCFGNB
                                    381 	.globl _AX5043_PKTADDRMASK3NB
                                    382 	.globl _AX5043_PKTADDRMASK2NB
                                    383 	.globl _AX5043_PKTADDRMASK1NB
                                    384 	.globl _AX5043_PKTADDRMASK0NB
                                    385 	.globl _AX5043_PKTADDRCFGNB
                                    386 	.globl _AX5043_PKTADDR3NB
                                    387 	.globl _AX5043_PKTADDR2NB
                                    388 	.globl _AX5043_PKTADDR1NB
                                    389 	.globl _AX5043_PKTADDR0NB
                                    390 	.globl _AX5043_PHASEGAIN3NB
                                    391 	.globl _AX5043_PHASEGAIN2NB
                                    392 	.globl _AX5043_PHASEGAIN1NB
                                    393 	.globl _AX5043_PHASEGAIN0NB
                                    394 	.globl _AX5043_FREQUENCYLEAKNB
                                    395 	.globl _AX5043_FREQUENCYGAIND3NB
                                    396 	.globl _AX5043_FREQUENCYGAIND2NB
                                    397 	.globl _AX5043_FREQUENCYGAIND1NB
                                    398 	.globl _AX5043_FREQUENCYGAIND0NB
                                    399 	.globl _AX5043_FREQUENCYGAINC3NB
                                    400 	.globl _AX5043_FREQUENCYGAINC2NB
                                    401 	.globl _AX5043_FREQUENCYGAINC1NB
                                    402 	.globl _AX5043_FREQUENCYGAINC0NB
                                    403 	.globl _AX5043_FREQUENCYGAINB3NB
                                    404 	.globl _AX5043_FREQUENCYGAINB2NB
                                    405 	.globl _AX5043_FREQUENCYGAINB1NB
                                    406 	.globl _AX5043_FREQUENCYGAINB0NB
                                    407 	.globl _AX5043_FREQUENCYGAINA3NB
                                    408 	.globl _AX5043_FREQUENCYGAINA2NB
                                    409 	.globl _AX5043_FREQUENCYGAINA1NB
                                    410 	.globl _AX5043_FREQUENCYGAINA0NB
                                    411 	.globl _AX5043_FREQDEV13NB
                                    412 	.globl _AX5043_FREQDEV12NB
                                    413 	.globl _AX5043_FREQDEV11NB
                                    414 	.globl _AX5043_FREQDEV10NB
                                    415 	.globl _AX5043_FREQDEV03NB
                                    416 	.globl _AX5043_FREQDEV02NB
                                    417 	.globl _AX5043_FREQDEV01NB
                                    418 	.globl _AX5043_FREQDEV00NB
                                    419 	.globl _AX5043_FOURFSK3NB
                                    420 	.globl _AX5043_FOURFSK2NB
                                    421 	.globl _AX5043_FOURFSK1NB
                                    422 	.globl _AX5043_FOURFSK0NB
                                    423 	.globl _AX5043_DRGAIN3NB
                                    424 	.globl _AX5043_DRGAIN2NB
                                    425 	.globl _AX5043_DRGAIN1NB
                                    426 	.globl _AX5043_DRGAIN0NB
                                    427 	.globl _AX5043_BBOFFSRES3NB
                                    428 	.globl _AX5043_BBOFFSRES2NB
                                    429 	.globl _AX5043_BBOFFSRES1NB
                                    430 	.globl _AX5043_BBOFFSRES0NB
                                    431 	.globl _AX5043_AMPLITUDEGAIN3NB
                                    432 	.globl _AX5043_AMPLITUDEGAIN2NB
                                    433 	.globl _AX5043_AMPLITUDEGAIN1NB
                                    434 	.globl _AX5043_AMPLITUDEGAIN0NB
                                    435 	.globl _AX5043_AGCTARGET3NB
                                    436 	.globl _AX5043_AGCTARGET2NB
                                    437 	.globl _AX5043_AGCTARGET1NB
                                    438 	.globl _AX5043_AGCTARGET0NB
                                    439 	.globl _AX5043_AGCMINMAX3NB
                                    440 	.globl _AX5043_AGCMINMAX2NB
                                    441 	.globl _AX5043_AGCMINMAX1NB
                                    442 	.globl _AX5043_AGCMINMAX0NB
                                    443 	.globl _AX5043_AGCGAIN3NB
                                    444 	.globl _AX5043_AGCGAIN2NB
                                    445 	.globl _AX5043_AGCGAIN1NB
                                    446 	.globl _AX5043_AGCGAIN0NB
                                    447 	.globl _AX5043_AGCAHYST3NB
                                    448 	.globl _AX5043_AGCAHYST2NB
                                    449 	.globl _AX5043_AGCAHYST1NB
                                    450 	.globl _AX5043_AGCAHYST0NB
                                    451 	.globl _AX5043_0xF44NB
                                    452 	.globl _AX5043_0xF35NB
                                    453 	.globl _AX5043_0xF34NB
                                    454 	.globl _AX5043_0xF33NB
                                    455 	.globl _AX5043_0xF32NB
                                    456 	.globl _AX5043_0xF31NB
                                    457 	.globl _AX5043_0xF30NB
                                    458 	.globl _AX5043_0xF26NB
                                    459 	.globl _AX5043_0xF23NB
                                    460 	.globl _AX5043_0xF22NB
                                    461 	.globl _AX5043_0xF21NB
                                    462 	.globl _AX5043_0xF1CNB
                                    463 	.globl _AX5043_0xF18NB
                                    464 	.globl _AX5043_0xF0CNB
                                    465 	.globl _AX5043_0xF00NB
                                    466 	.globl _AX5043_XTALSTATUSNB
                                    467 	.globl _AX5043_XTALOSCNB
                                    468 	.globl _AX5043_XTALCAPNB
                                    469 	.globl _AX5043_XTALAMPLNB
                                    470 	.globl _AX5043_WAKEUPXOEARLYNB
                                    471 	.globl _AX5043_WAKEUPTIMER1NB
                                    472 	.globl _AX5043_WAKEUPTIMER0NB
                                    473 	.globl _AX5043_WAKEUPFREQ1NB
                                    474 	.globl _AX5043_WAKEUPFREQ0NB
                                    475 	.globl _AX5043_WAKEUP1NB
                                    476 	.globl _AX5043_WAKEUP0NB
                                    477 	.globl _AX5043_TXRATE2NB
                                    478 	.globl _AX5043_TXRATE1NB
                                    479 	.globl _AX5043_TXRATE0NB
                                    480 	.globl _AX5043_TXPWRCOEFFE1NB
                                    481 	.globl _AX5043_TXPWRCOEFFE0NB
                                    482 	.globl _AX5043_TXPWRCOEFFD1NB
                                    483 	.globl _AX5043_TXPWRCOEFFD0NB
                                    484 	.globl _AX5043_TXPWRCOEFFC1NB
                                    485 	.globl _AX5043_TXPWRCOEFFC0NB
                                    486 	.globl _AX5043_TXPWRCOEFFB1NB
                                    487 	.globl _AX5043_TXPWRCOEFFB0NB
                                    488 	.globl _AX5043_TXPWRCOEFFA1NB
                                    489 	.globl _AX5043_TXPWRCOEFFA0NB
                                    490 	.globl _AX5043_TRKRFFREQ2NB
                                    491 	.globl _AX5043_TRKRFFREQ1NB
                                    492 	.globl _AX5043_TRKRFFREQ0NB
                                    493 	.globl _AX5043_TRKPHASE1NB
                                    494 	.globl _AX5043_TRKPHASE0NB
                                    495 	.globl _AX5043_TRKFSKDEMOD1NB
                                    496 	.globl _AX5043_TRKFSKDEMOD0NB
                                    497 	.globl _AX5043_TRKFREQ1NB
                                    498 	.globl _AX5043_TRKFREQ0NB
                                    499 	.globl _AX5043_TRKDATARATE2NB
                                    500 	.globl _AX5043_TRKDATARATE1NB
                                    501 	.globl _AX5043_TRKDATARATE0NB
                                    502 	.globl _AX5043_TRKAMPLITUDE1NB
                                    503 	.globl _AX5043_TRKAMPLITUDE0NB
                                    504 	.globl _AX5043_TRKAFSKDEMOD1NB
                                    505 	.globl _AX5043_TRKAFSKDEMOD0NB
                                    506 	.globl _AX5043_TMGTXSETTLENB
                                    507 	.globl _AX5043_TMGTXBOOSTNB
                                    508 	.globl _AX5043_TMGRXSETTLENB
                                    509 	.globl _AX5043_TMGRXRSSINB
                                    510 	.globl _AX5043_TMGRXPREAMBLE3NB
                                    511 	.globl _AX5043_TMGRXPREAMBLE2NB
                                    512 	.globl _AX5043_TMGRXPREAMBLE1NB
                                    513 	.globl _AX5043_TMGRXOFFSACQNB
                                    514 	.globl _AX5043_TMGRXCOARSEAGCNB
                                    515 	.globl _AX5043_TMGRXBOOSTNB
                                    516 	.globl _AX5043_TMGRXAGCNB
                                    517 	.globl _AX5043_TIMER2NB
                                    518 	.globl _AX5043_TIMER1NB
                                    519 	.globl _AX5043_TIMER0NB
                                    520 	.globl _AX5043_SILICONREVISIONNB
                                    521 	.globl _AX5043_SCRATCHNB
                                    522 	.globl _AX5043_RXDATARATE2NB
                                    523 	.globl _AX5043_RXDATARATE1NB
                                    524 	.globl _AX5043_RXDATARATE0NB
                                    525 	.globl _AX5043_RSSIREFERENCENB
                                    526 	.globl _AX5043_RSSIABSTHRNB
                                    527 	.globl _AX5043_RSSINB
                                    528 	.globl _AX5043_REFNB
                                    529 	.globl _AX5043_RADIOSTATENB
                                    530 	.globl _AX5043_RADIOEVENTREQ1NB
                                    531 	.globl _AX5043_RADIOEVENTREQ0NB
                                    532 	.globl _AX5043_RADIOEVENTMASK1NB
                                    533 	.globl _AX5043_RADIOEVENTMASK0NB
                                    534 	.globl _AX5043_PWRMODENB
                                    535 	.globl _AX5043_PWRAMPNB
                                    536 	.globl _AX5043_POWSTICKYSTATNB
                                    537 	.globl _AX5043_POWSTATNB
                                    538 	.globl _AX5043_POWIRQMASKNB
                                    539 	.globl _AX5043_POWCTRL1NB
                                    540 	.globl _AX5043_PLLVCOIRNB
                                    541 	.globl _AX5043_PLLVCOINB
                                    542 	.globl _AX5043_PLLVCODIVNB
                                    543 	.globl _AX5043_PLLRNGCLKNB
                                    544 	.globl _AX5043_PLLRANGINGBNB
                                    545 	.globl _AX5043_PLLRANGINGANB
                                    546 	.globl _AX5043_PLLLOOPBOOSTNB
                                    547 	.globl _AX5043_PLLLOOPNB
                                    548 	.globl _AX5043_PLLLOCKDETNB
                                    549 	.globl _AX5043_PLLCPIBOOSTNB
                                    550 	.globl _AX5043_PLLCPINB
                                    551 	.globl _AX5043_PKTSTOREFLAGSNB
                                    552 	.globl _AX5043_PKTMISCFLAGSNB
                                    553 	.globl _AX5043_PKTCHUNKSIZENB
                                    554 	.globl _AX5043_PKTACCEPTFLAGSNB
                                    555 	.globl _AX5043_PINSTATENB
                                    556 	.globl _AX5043_PINFUNCSYSCLKNB
                                    557 	.globl _AX5043_PINFUNCPWRAMPNB
                                    558 	.globl _AX5043_PINFUNCIRQNB
                                    559 	.globl _AX5043_PINFUNCDCLKNB
                                    560 	.globl _AX5043_PINFUNCDATANB
                                    561 	.globl _AX5043_PINFUNCANTSELNB
                                    562 	.globl _AX5043_MODULATIONNB
                                    563 	.globl _AX5043_MODCFGPNB
                                    564 	.globl _AX5043_MODCFGFNB
                                    565 	.globl _AX5043_MODCFGANB
                                    566 	.globl _AX5043_MAXRFOFFSET2NB
                                    567 	.globl _AX5043_MAXRFOFFSET1NB
                                    568 	.globl _AX5043_MAXRFOFFSET0NB
                                    569 	.globl _AX5043_MAXDROFFSET2NB
                                    570 	.globl _AX5043_MAXDROFFSET1NB
                                    571 	.globl _AX5043_MAXDROFFSET0NB
                                    572 	.globl _AX5043_MATCH1PAT1NB
                                    573 	.globl _AX5043_MATCH1PAT0NB
                                    574 	.globl _AX5043_MATCH1MINNB
                                    575 	.globl _AX5043_MATCH1MAXNB
                                    576 	.globl _AX5043_MATCH1LENNB
                                    577 	.globl _AX5043_MATCH0PAT3NB
                                    578 	.globl _AX5043_MATCH0PAT2NB
                                    579 	.globl _AX5043_MATCH0PAT1NB
                                    580 	.globl _AX5043_MATCH0PAT0NB
                                    581 	.globl _AX5043_MATCH0MINNB
                                    582 	.globl _AX5043_MATCH0MAXNB
                                    583 	.globl _AX5043_MATCH0LENNB
                                    584 	.globl _AX5043_LPOSCSTATUSNB
                                    585 	.globl _AX5043_LPOSCREF1NB
                                    586 	.globl _AX5043_LPOSCREF0NB
                                    587 	.globl _AX5043_LPOSCPER1NB
                                    588 	.globl _AX5043_LPOSCPER0NB
                                    589 	.globl _AX5043_LPOSCKFILT1NB
                                    590 	.globl _AX5043_LPOSCKFILT0NB
                                    591 	.globl _AX5043_LPOSCFREQ1NB
                                    592 	.globl _AX5043_LPOSCFREQ0NB
                                    593 	.globl _AX5043_LPOSCCONFIGNB
                                    594 	.globl _AX5043_IRQREQUEST1NB
                                    595 	.globl _AX5043_IRQREQUEST0NB
                                    596 	.globl _AX5043_IRQMASK1NB
                                    597 	.globl _AX5043_IRQMASK0NB
                                    598 	.globl _AX5043_IRQINVERSION1NB
                                    599 	.globl _AX5043_IRQINVERSION0NB
                                    600 	.globl _AX5043_IFFREQ1NB
                                    601 	.globl _AX5043_IFFREQ0NB
                                    602 	.globl _AX5043_GPADCPERIODNB
                                    603 	.globl _AX5043_GPADCCTRLNB
                                    604 	.globl _AX5043_GPADC13VALUE1NB
                                    605 	.globl _AX5043_GPADC13VALUE0NB
                                    606 	.globl _AX5043_FSKDMIN1NB
                                    607 	.globl _AX5043_FSKDMIN0NB
                                    608 	.globl _AX5043_FSKDMAX1NB
                                    609 	.globl _AX5043_FSKDMAX0NB
                                    610 	.globl _AX5043_FSKDEV2NB
                                    611 	.globl _AX5043_FSKDEV1NB
                                    612 	.globl _AX5043_FSKDEV0NB
                                    613 	.globl _AX5043_FREQB3NB
                                    614 	.globl _AX5043_FREQB2NB
                                    615 	.globl _AX5043_FREQB1NB
                                    616 	.globl _AX5043_FREQB0NB
                                    617 	.globl _AX5043_FREQA3NB
                                    618 	.globl _AX5043_FREQA2NB
                                    619 	.globl _AX5043_FREQA1NB
                                    620 	.globl _AX5043_FREQA0NB
                                    621 	.globl _AX5043_FRAMINGNB
                                    622 	.globl _AX5043_FIFOTHRESH1NB
                                    623 	.globl _AX5043_FIFOTHRESH0NB
                                    624 	.globl _AX5043_FIFOSTATNB
                                    625 	.globl _AX5043_FIFOFREE1NB
                                    626 	.globl _AX5043_FIFOFREE0NB
                                    627 	.globl _AX5043_FIFODATANB
                                    628 	.globl _AX5043_FIFOCOUNT1NB
                                    629 	.globl _AX5043_FIFOCOUNT0NB
                                    630 	.globl _AX5043_FECSYNCNB
                                    631 	.globl _AX5043_FECSTATUSNB
                                    632 	.globl _AX5043_FECNB
                                    633 	.globl _AX5043_ENCODINGNB
                                    634 	.globl _AX5043_DIVERSITYNB
                                    635 	.globl _AX5043_DECIMATIONNB
                                    636 	.globl _AX5043_DACVALUE1NB
                                    637 	.globl _AX5043_DACVALUE0NB
                                    638 	.globl _AX5043_DACCONFIGNB
                                    639 	.globl _AX5043_CRCINIT3NB
                                    640 	.globl _AX5043_CRCINIT2NB
                                    641 	.globl _AX5043_CRCINIT1NB
                                    642 	.globl _AX5043_CRCINIT0NB
                                    643 	.globl _AX5043_BGNDRSSITHRNB
                                    644 	.globl _AX5043_BGNDRSSIGAINNB
                                    645 	.globl _AX5043_BGNDRSSINB
                                    646 	.globl _AX5043_BBTUNENB
                                    647 	.globl _AX5043_BBOFFSCAPNB
                                    648 	.globl _AX5043_AMPLFILTERNB
                                    649 	.globl _AX5043_AGCCOUNTERNB
                                    650 	.globl _AX5043_AFSKSPACE1NB
                                    651 	.globl _AX5043_AFSKSPACE0NB
                                    652 	.globl _AX5043_AFSKMARK1NB
                                    653 	.globl _AX5043_AFSKMARK0NB
                                    654 	.globl _AX5043_AFSKCTRLNB
                                    655 	.globl _AX5043_TIMEGAIN3
                                    656 	.globl _AX5043_TIMEGAIN2
                                    657 	.globl _AX5043_TIMEGAIN1
                                    658 	.globl _AX5043_TIMEGAIN0
                                    659 	.globl _AX5043_RXPARAMSETS
                                    660 	.globl _AX5043_RXPARAMCURSET
                                    661 	.globl _AX5043_PKTMAXLEN
                                    662 	.globl _AX5043_PKTLENOFFSET
                                    663 	.globl _AX5043_PKTLENCFG
                                    664 	.globl _AX5043_PKTADDRMASK3
                                    665 	.globl _AX5043_PKTADDRMASK2
                                    666 	.globl _AX5043_PKTADDRMASK1
                                    667 	.globl _AX5043_PKTADDRMASK0
                                    668 	.globl _AX5043_PKTADDRCFG
                                    669 	.globl _AX5043_PKTADDR3
                                    670 	.globl _AX5043_PKTADDR2
                                    671 	.globl _AX5043_PKTADDR1
                                    672 	.globl _AX5043_PKTADDR0
                                    673 	.globl _AX5043_PHASEGAIN3
                                    674 	.globl _AX5043_PHASEGAIN2
                                    675 	.globl _AX5043_PHASEGAIN1
                                    676 	.globl _AX5043_PHASEGAIN0
                                    677 	.globl _AX5043_FREQUENCYLEAK
                                    678 	.globl _AX5043_FREQUENCYGAIND3
                                    679 	.globl _AX5043_FREQUENCYGAIND2
                                    680 	.globl _AX5043_FREQUENCYGAIND1
                                    681 	.globl _AX5043_FREQUENCYGAIND0
                                    682 	.globl _AX5043_FREQUENCYGAINC3
                                    683 	.globl _AX5043_FREQUENCYGAINC2
                                    684 	.globl _AX5043_FREQUENCYGAINC1
                                    685 	.globl _AX5043_FREQUENCYGAINC0
                                    686 	.globl _AX5043_FREQUENCYGAINB3
                                    687 	.globl _AX5043_FREQUENCYGAINB2
                                    688 	.globl _AX5043_FREQUENCYGAINB1
                                    689 	.globl _AX5043_FREQUENCYGAINB0
                                    690 	.globl _AX5043_FREQUENCYGAINA3
                                    691 	.globl _AX5043_FREQUENCYGAINA2
                                    692 	.globl _AX5043_FREQUENCYGAINA1
                                    693 	.globl _AX5043_FREQUENCYGAINA0
                                    694 	.globl _AX5043_FREQDEV13
                                    695 	.globl _AX5043_FREQDEV12
                                    696 	.globl _AX5043_FREQDEV11
                                    697 	.globl _AX5043_FREQDEV10
                                    698 	.globl _AX5043_FREQDEV03
                                    699 	.globl _AX5043_FREQDEV02
                                    700 	.globl _AX5043_FREQDEV01
                                    701 	.globl _AX5043_FREQDEV00
                                    702 	.globl _AX5043_FOURFSK3
                                    703 	.globl _AX5043_FOURFSK2
                                    704 	.globl _AX5043_FOURFSK1
                                    705 	.globl _AX5043_FOURFSK0
                                    706 	.globl _AX5043_DRGAIN3
                                    707 	.globl _AX5043_DRGAIN2
                                    708 	.globl _AX5043_DRGAIN1
                                    709 	.globl _AX5043_DRGAIN0
                                    710 	.globl _AX5043_BBOFFSRES3
                                    711 	.globl _AX5043_BBOFFSRES2
                                    712 	.globl _AX5043_BBOFFSRES1
                                    713 	.globl _AX5043_BBOFFSRES0
                                    714 	.globl _AX5043_AMPLITUDEGAIN3
                                    715 	.globl _AX5043_AMPLITUDEGAIN2
                                    716 	.globl _AX5043_AMPLITUDEGAIN1
                                    717 	.globl _AX5043_AMPLITUDEGAIN0
                                    718 	.globl _AX5043_AGCTARGET3
                                    719 	.globl _AX5043_AGCTARGET2
                                    720 	.globl _AX5043_AGCTARGET1
                                    721 	.globl _AX5043_AGCTARGET0
                                    722 	.globl _AX5043_AGCMINMAX3
                                    723 	.globl _AX5043_AGCMINMAX2
                                    724 	.globl _AX5043_AGCMINMAX1
                                    725 	.globl _AX5043_AGCMINMAX0
                                    726 	.globl _AX5043_AGCGAIN3
                                    727 	.globl _AX5043_AGCGAIN2
                                    728 	.globl _AX5043_AGCGAIN1
                                    729 	.globl _AX5043_AGCGAIN0
                                    730 	.globl _AX5043_AGCAHYST3
                                    731 	.globl _AX5043_AGCAHYST2
                                    732 	.globl _AX5043_AGCAHYST1
                                    733 	.globl _AX5043_AGCAHYST0
                                    734 	.globl _AX5043_XTALSTATUS
                                    735 	.globl _AX5043_XTALCAP
                                    736 	.globl _AX5043_WAKEUPXOEARLY
                                    737 	.globl _AX5043_WAKEUPTIMER1
                                    738 	.globl _AX5043_WAKEUPTIMER0
                                    739 	.globl _AX5043_WAKEUPFREQ1
                                    740 	.globl _AX5043_WAKEUPFREQ0
                                    741 	.globl _AX5043_WAKEUP1
                                    742 	.globl _AX5043_WAKEUP0
                                    743 	.globl _AX5043_TXRATE2
                                    744 	.globl _AX5043_TXRATE1
                                    745 	.globl _AX5043_TXRATE0
                                    746 	.globl _AX5043_TXPWRCOEFFE1
                                    747 	.globl _AX5043_TXPWRCOEFFE0
                                    748 	.globl _AX5043_TXPWRCOEFFD1
                                    749 	.globl _AX5043_TXPWRCOEFFD0
                                    750 	.globl _AX5043_TXPWRCOEFFC1
                                    751 	.globl _AX5043_TXPWRCOEFFC0
                                    752 	.globl _AX5043_TXPWRCOEFFB1
                                    753 	.globl _AX5043_TXPWRCOEFFB0
                                    754 	.globl _AX5043_TXPWRCOEFFA1
                                    755 	.globl _AX5043_TXPWRCOEFFA0
                                    756 	.globl _AX5043_TRKRFFREQ2
                                    757 	.globl _AX5043_TRKRFFREQ1
                                    758 	.globl _AX5043_TRKRFFREQ0
                                    759 	.globl _AX5043_TRKPHASE1
                                    760 	.globl _AX5043_TRKPHASE0
                                    761 	.globl _AX5043_TRKFSKDEMOD1
                                    762 	.globl _AX5043_TRKFSKDEMOD0
                                    763 	.globl _AX5043_TRKFREQ1
                                    764 	.globl _AX5043_TRKFREQ0
                                    765 	.globl _AX5043_TRKDATARATE2
                                    766 	.globl _AX5043_TRKDATARATE1
                                    767 	.globl _AX5043_TRKDATARATE0
                                    768 	.globl _AX5043_TRKAMPLITUDE1
                                    769 	.globl _AX5043_TRKAMPLITUDE0
                                    770 	.globl _AX5043_TRKAFSKDEMOD1
                                    771 	.globl _AX5043_TRKAFSKDEMOD0
                                    772 	.globl _AX5043_TMGTXSETTLE
                                    773 	.globl _AX5043_TMGTXBOOST
                                    774 	.globl _AX5043_TMGRXSETTLE
                                    775 	.globl _AX5043_TMGRXRSSI
                                    776 	.globl _AX5043_TMGRXPREAMBLE3
                                    777 	.globl _AX5043_TMGRXPREAMBLE2
                                    778 	.globl _AX5043_TMGRXPREAMBLE1
                                    779 	.globl _AX5043_TMGRXOFFSACQ
                                    780 	.globl _AX5043_TMGRXCOARSEAGC
                                    781 	.globl _AX5043_TMGRXBOOST
                                    782 	.globl _AX5043_TMGRXAGC
                                    783 	.globl _AX5043_TIMER2
                                    784 	.globl _AX5043_TIMER1
                                    785 	.globl _AX5043_TIMER0
                                    786 	.globl _AX5043_SILICONREVISION
                                    787 	.globl _AX5043_SCRATCH
                                    788 	.globl _AX5043_RXDATARATE2
                                    789 	.globl _AX5043_RXDATARATE1
                                    790 	.globl _AX5043_RXDATARATE0
                                    791 	.globl _AX5043_RSSIREFERENCE
                                    792 	.globl _AX5043_RSSIABSTHR
                                    793 	.globl _AX5043_RSSI
                                    794 	.globl _AX5043_RADIOSTATE
                                    795 	.globl _AX5043_RADIOEVENTREQ1
                                    796 	.globl _AX5043_RADIOEVENTREQ0
                                    797 	.globl _AX5043_RADIOEVENTMASK1
                                    798 	.globl _AX5043_RADIOEVENTMASK0
                                    799 	.globl _AX5043_PWRMODE
                                    800 	.globl _AX5043_PWRAMP
                                    801 	.globl _AX5043_POWSTICKYSTAT
                                    802 	.globl _AX5043_POWSTAT
                                    803 	.globl _AX5043_POWIRQMASK
                                    804 	.globl _AX5043_PLLVCOIR
                                    805 	.globl _AX5043_PLLVCOI
                                    806 	.globl _AX5043_PLLVCODIV
                                    807 	.globl _AX5043_PLLRNGCLK
                                    808 	.globl _AX5043_PLLRANGINGB
                                    809 	.globl _AX5043_PLLRANGINGA
                                    810 	.globl _AX5043_PLLLOOPBOOST
                                    811 	.globl _AX5043_PLLLOOP
                                    812 	.globl _AX5043_PLLLOCKDET
                                    813 	.globl _AX5043_PLLCPIBOOST
                                    814 	.globl _AX5043_PLLCPI
                                    815 	.globl _AX5043_PKTSTOREFLAGS
                                    816 	.globl _AX5043_PKTMISCFLAGS
                                    817 	.globl _AX5043_PKTCHUNKSIZE
                                    818 	.globl _AX5043_PKTACCEPTFLAGS
                                    819 	.globl _AX5043_PINSTATE
                                    820 	.globl _AX5043_PINFUNCSYSCLK
                                    821 	.globl _AX5043_PINFUNCPWRAMP
                                    822 	.globl _AX5043_PINFUNCIRQ
                                    823 	.globl _AX5043_PINFUNCDCLK
                                    824 	.globl _AX5043_PINFUNCDATA
                                    825 	.globl _AX5043_PINFUNCANTSEL
                                    826 	.globl _AX5043_MODULATION
                                    827 	.globl _AX5043_MODCFGF
                                    828 	.globl _AX5043_MODCFGA
                                    829 	.globl _AX5043_MAXRFOFFSET2
                                    830 	.globl _AX5043_MAXRFOFFSET1
                                    831 	.globl _AX5043_MAXRFOFFSET0
                                    832 	.globl _AX5043_MAXDROFFSET2
                                    833 	.globl _AX5043_MAXDROFFSET1
                                    834 	.globl _AX5043_MAXDROFFSET0
                                    835 	.globl _AX5043_MATCH1PAT1
                                    836 	.globl _AX5043_MATCH1PAT0
                                    837 	.globl _AX5043_MATCH1MIN
                                    838 	.globl _AX5043_MATCH1MAX
                                    839 	.globl _AX5043_MATCH1LEN
                                    840 	.globl _AX5043_MATCH0PAT3
                                    841 	.globl _AX5043_MATCH0PAT2
                                    842 	.globl _AX5043_MATCH0PAT1
                                    843 	.globl _AX5043_MATCH0PAT0
                                    844 	.globl _AX5043_MATCH0MIN
                                    845 	.globl _AX5043_MATCH0MAX
                                    846 	.globl _AX5043_MATCH0LEN
                                    847 	.globl _AX5043_LPOSCSTATUS
                                    848 	.globl _AX5043_LPOSCREF1
                                    849 	.globl _AX5043_LPOSCREF0
                                    850 	.globl _AX5043_LPOSCPER1
                                    851 	.globl _AX5043_LPOSCPER0
                                    852 	.globl _AX5043_LPOSCKFILT1
                                    853 	.globl _AX5043_LPOSCKFILT0
                                    854 	.globl _AX5043_LPOSCFREQ1
                                    855 	.globl _AX5043_LPOSCFREQ0
                                    856 	.globl _AX5043_LPOSCCONFIG
                                    857 	.globl _AX5043_IRQREQUEST1
                                    858 	.globl _AX5043_IRQREQUEST0
                                    859 	.globl _AX5043_IRQMASK1
                                    860 	.globl _AX5043_IRQMASK0
                                    861 	.globl _AX5043_IRQINVERSION1
                                    862 	.globl _AX5043_IRQINVERSION0
                                    863 	.globl _AX5043_IFFREQ1
                                    864 	.globl _AX5043_IFFREQ0
                                    865 	.globl _AX5043_GPADCPERIOD
                                    866 	.globl _AX5043_GPADCCTRL
                                    867 	.globl _AX5043_GPADC13VALUE1
                                    868 	.globl _AX5043_GPADC13VALUE0
                                    869 	.globl _AX5043_FSKDMIN1
                                    870 	.globl _AX5043_FSKDMIN0
                                    871 	.globl _AX5043_FSKDMAX1
                                    872 	.globl _AX5043_FSKDMAX0
                                    873 	.globl _AX5043_FSKDEV2
                                    874 	.globl _AX5043_FSKDEV1
                                    875 	.globl _AX5043_FSKDEV0
                                    876 	.globl _AX5043_FREQB3
                                    877 	.globl _AX5043_FREQB2
                                    878 	.globl _AX5043_FREQB1
                                    879 	.globl _AX5043_FREQB0
                                    880 	.globl _AX5043_FREQA3
                                    881 	.globl _AX5043_FREQA2
                                    882 	.globl _AX5043_FREQA1
                                    883 	.globl _AX5043_FREQA0
                                    884 	.globl _AX5043_FRAMING
                                    885 	.globl _AX5043_FIFOTHRESH1
                                    886 	.globl _AX5043_FIFOTHRESH0
                                    887 	.globl _AX5043_FIFOSTAT
                                    888 	.globl _AX5043_FIFOFREE1
                                    889 	.globl _AX5043_FIFOFREE0
                                    890 	.globl _AX5043_FIFODATA
                                    891 	.globl _AX5043_FIFOCOUNT1
                                    892 	.globl _AX5043_FIFOCOUNT0
                                    893 	.globl _AX5043_FECSYNC
                                    894 	.globl _AX5043_FECSTATUS
                                    895 	.globl _AX5043_FEC
                                    896 	.globl _AX5043_ENCODING
                                    897 	.globl _AX5043_DIVERSITY
                                    898 	.globl _AX5043_DECIMATION
                                    899 	.globl _AX5043_DACVALUE1
                                    900 	.globl _AX5043_DACVALUE0
                                    901 	.globl _AX5043_DACCONFIG
                                    902 	.globl _AX5043_CRCINIT3
                                    903 	.globl _AX5043_CRCINIT2
                                    904 	.globl _AX5043_CRCINIT1
                                    905 	.globl _AX5043_CRCINIT0
                                    906 	.globl _AX5043_BGNDRSSITHR
                                    907 	.globl _AX5043_BGNDRSSIGAIN
                                    908 	.globl _AX5043_BGNDRSSI
                                    909 	.globl _AX5043_BBTUNE
                                    910 	.globl _AX5043_BBOFFSCAP
                                    911 	.globl _AX5043_AMPLFILTER
                                    912 	.globl _AX5043_AGCCOUNTER
                                    913 	.globl _AX5043_AFSKSPACE1
                                    914 	.globl _AX5043_AFSKSPACE0
                                    915 	.globl _AX5043_AFSKMARK1
                                    916 	.globl _AX5043_AFSKMARK0
                                    917 	.globl _AX5043_AFSKCTRL
                                    918 	.globl _XWTSTAT
                                    919 	.globl _XWTIRQEN
                                    920 	.globl _XWTEVTD
                                    921 	.globl _XWTEVTD1
                                    922 	.globl _XWTEVTD0
                                    923 	.globl _XWTEVTC
                                    924 	.globl _XWTEVTC1
                                    925 	.globl _XWTEVTC0
                                    926 	.globl _XWTEVTB
                                    927 	.globl _XWTEVTB1
                                    928 	.globl _XWTEVTB0
                                    929 	.globl _XWTEVTA
                                    930 	.globl _XWTEVTA1
                                    931 	.globl _XWTEVTA0
                                    932 	.globl _XWTCNTR1
                                    933 	.globl _XWTCNTB
                                    934 	.globl _XWTCNTB1
                                    935 	.globl _XWTCNTB0
                                    936 	.globl _XWTCNTA
                                    937 	.globl _XWTCNTA1
                                    938 	.globl _XWTCNTA0
                                    939 	.globl _XWTCFGB
                                    940 	.globl _XWTCFGA
                                    941 	.globl _XWDTRESET
                                    942 	.globl _XWDTCFG
                                    943 	.globl _XU1STATUS
                                    944 	.globl _XU1SHREG
                                    945 	.globl _XU1MODE
                                    946 	.globl _XU1CTRL
                                    947 	.globl _XU0STATUS
                                    948 	.globl _XU0SHREG
                                    949 	.globl _XU0MODE
                                    950 	.globl _XU0CTRL
                                    951 	.globl _XT2STATUS
                                    952 	.globl _XT2PERIOD
                                    953 	.globl _XT2PERIOD1
                                    954 	.globl _XT2PERIOD0
                                    955 	.globl _XT2MODE
                                    956 	.globl _XT2CNT
                                    957 	.globl _XT2CNT1
                                    958 	.globl _XT2CNT0
                                    959 	.globl _XT2CLKSRC
                                    960 	.globl _XT1STATUS
                                    961 	.globl _XT1PERIOD
                                    962 	.globl _XT1PERIOD1
                                    963 	.globl _XT1PERIOD0
                                    964 	.globl _XT1MODE
                                    965 	.globl _XT1CNT
                                    966 	.globl _XT1CNT1
                                    967 	.globl _XT1CNT0
                                    968 	.globl _XT1CLKSRC
                                    969 	.globl _XT0STATUS
                                    970 	.globl _XT0PERIOD
                                    971 	.globl _XT0PERIOD1
                                    972 	.globl _XT0PERIOD0
                                    973 	.globl _XT0MODE
                                    974 	.globl _XT0CNT
                                    975 	.globl _XT0CNT1
                                    976 	.globl _XT0CNT0
                                    977 	.globl _XT0CLKSRC
                                    978 	.globl _XSPSTATUS
                                    979 	.globl _XSPSHREG
                                    980 	.globl _XSPMODE
                                    981 	.globl _XSPCLKSRC
                                    982 	.globl _XRADIOSTAT
                                    983 	.globl _XRADIOSTAT1
                                    984 	.globl _XRADIOSTAT0
                                    985 	.globl _XRADIODATA3
                                    986 	.globl _XRADIODATA2
                                    987 	.globl _XRADIODATA1
                                    988 	.globl _XRADIODATA0
                                    989 	.globl _XRADIOADDR1
                                    990 	.globl _XRADIOADDR0
                                    991 	.globl _XRADIOACC
                                    992 	.globl _XOC1STATUS
                                    993 	.globl _XOC1PIN
                                    994 	.globl _XOC1MODE
                                    995 	.globl _XOC1COMP
                                    996 	.globl _XOC1COMP1
                                    997 	.globl _XOC1COMP0
                                    998 	.globl _XOC0STATUS
                                    999 	.globl _XOC0PIN
                                   1000 	.globl _XOC0MODE
                                   1001 	.globl _XOC0COMP
                                   1002 	.globl _XOC0COMP1
                                   1003 	.globl _XOC0COMP0
                                   1004 	.globl _XNVSTATUS
                                   1005 	.globl _XNVKEY
                                   1006 	.globl _XNVDATA
                                   1007 	.globl _XNVDATA1
                                   1008 	.globl _XNVDATA0
                                   1009 	.globl _XNVADDR
                                   1010 	.globl _XNVADDR1
                                   1011 	.globl _XNVADDR0
                                   1012 	.globl _XIC1STATUS
                                   1013 	.globl _XIC1MODE
                                   1014 	.globl _XIC1CAPT
                                   1015 	.globl _XIC1CAPT1
                                   1016 	.globl _XIC1CAPT0
                                   1017 	.globl _XIC0STATUS
                                   1018 	.globl _XIC0MODE
                                   1019 	.globl _XIC0CAPT
                                   1020 	.globl _XIC0CAPT1
                                   1021 	.globl _XIC0CAPT0
                                   1022 	.globl _XPORTR
                                   1023 	.globl _XPORTC
                                   1024 	.globl _XPORTB
                                   1025 	.globl _XPORTA
                                   1026 	.globl _XPINR
                                   1027 	.globl _XPINC
                                   1028 	.globl _XPINB
                                   1029 	.globl _XPINA
                                   1030 	.globl _XDIRR
                                   1031 	.globl _XDIRC
                                   1032 	.globl _XDIRB
                                   1033 	.globl _XDIRA
                                   1034 	.globl _XDBGLNKSTAT
                                   1035 	.globl _XDBGLNKBUF
                                   1036 	.globl _XCODECONFIG
                                   1037 	.globl _XCLKSTAT
                                   1038 	.globl _XCLKCON
                                   1039 	.globl _XANALOGCOMP
                                   1040 	.globl _XADCCONV
                                   1041 	.globl _XADCCLKSRC
                                   1042 	.globl _XADCCH3CONFIG
                                   1043 	.globl _XADCCH2CONFIG
                                   1044 	.globl _XADCCH1CONFIG
                                   1045 	.globl _XADCCH0CONFIG
                                   1046 	.globl _XPCON
                                   1047 	.globl _XIP
                                   1048 	.globl _XIE
                                   1049 	.globl _XDPTR1
                                   1050 	.globl _XDPTR0
                                   1051 	.globl _XTALREADY
                                   1052 	.globl _XTALOSC
                                   1053 	.globl _XTALAMPL
                                   1054 	.globl _SILICONREV
                                   1055 	.globl _SCRATCH3
                                   1056 	.globl _SCRATCH2
                                   1057 	.globl _SCRATCH1
                                   1058 	.globl _SCRATCH0
                                   1059 	.globl _RADIOMUX
                                   1060 	.globl _RADIOFSTATADDR
                                   1061 	.globl _RADIOFSTATADDR1
                                   1062 	.globl _RADIOFSTATADDR0
                                   1063 	.globl _RADIOFDATAADDR
                                   1064 	.globl _RADIOFDATAADDR1
                                   1065 	.globl _RADIOFDATAADDR0
                                   1066 	.globl _OSCRUN
                                   1067 	.globl _OSCREADY
                                   1068 	.globl _OSCFORCERUN
                                   1069 	.globl _OSCCALIB
                                   1070 	.globl _MISCCTRL
                                   1071 	.globl _LPXOSCGM
                                   1072 	.globl _LPOSCREF
                                   1073 	.globl _LPOSCREF1
                                   1074 	.globl _LPOSCREF0
                                   1075 	.globl _LPOSCPER
                                   1076 	.globl _LPOSCPER1
                                   1077 	.globl _LPOSCPER0
                                   1078 	.globl _LPOSCKFILT
                                   1079 	.globl _LPOSCKFILT1
                                   1080 	.globl _LPOSCKFILT0
                                   1081 	.globl _LPOSCFREQ
                                   1082 	.globl _LPOSCFREQ1
                                   1083 	.globl _LPOSCFREQ0
                                   1084 	.globl _LPOSCCONFIG
                                   1085 	.globl _PINSEL
                                   1086 	.globl _PINCHGC
                                   1087 	.globl _PINCHGB
                                   1088 	.globl _PINCHGA
                                   1089 	.globl _PALTRADIO
                                   1090 	.globl _PALTC
                                   1091 	.globl _PALTB
                                   1092 	.globl _PALTA
                                   1093 	.globl _INTCHGC
                                   1094 	.globl _INTCHGB
                                   1095 	.globl _INTCHGA
                                   1096 	.globl _EXTIRQ
                                   1097 	.globl _GPIOENABLE
                                   1098 	.globl _ANALOGA
                                   1099 	.globl _FRCOSCREF
                                   1100 	.globl _FRCOSCREF1
                                   1101 	.globl _FRCOSCREF0
                                   1102 	.globl _FRCOSCPER
                                   1103 	.globl _FRCOSCPER1
                                   1104 	.globl _FRCOSCPER0
                                   1105 	.globl _FRCOSCKFILT
                                   1106 	.globl _FRCOSCKFILT1
                                   1107 	.globl _FRCOSCKFILT0
                                   1108 	.globl _FRCOSCFREQ
                                   1109 	.globl _FRCOSCFREQ1
                                   1110 	.globl _FRCOSCFREQ0
                                   1111 	.globl _FRCOSCCTRL
                                   1112 	.globl _FRCOSCCONFIG
                                   1113 	.globl _DMA1CONFIG
                                   1114 	.globl _DMA1ADDR
                                   1115 	.globl _DMA1ADDR1
                                   1116 	.globl _DMA1ADDR0
                                   1117 	.globl _DMA0CONFIG
                                   1118 	.globl _DMA0ADDR
                                   1119 	.globl _DMA0ADDR1
                                   1120 	.globl _DMA0ADDR0
                                   1121 	.globl _ADCTUNE2
                                   1122 	.globl _ADCTUNE1
                                   1123 	.globl _ADCTUNE0
                                   1124 	.globl _ADCCH3VAL
                                   1125 	.globl _ADCCH3VAL1
                                   1126 	.globl _ADCCH3VAL0
                                   1127 	.globl _ADCCH2VAL
                                   1128 	.globl _ADCCH2VAL1
                                   1129 	.globl _ADCCH2VAL0
                                   1130 	.globl _ADCCH1VAL
                                   1131 	.globl _ADCCH1VAL1
                                   1132 	.globl _ADCCH1VAL0
                                   1133 	.globl _ADCCH0VAL
                                   1134 	.globl _ADCCH0VAL1
                                   1135 	.globl _ADCCH0VAL0
                                   1136 	.globl _axradio_transmit_PARM_3
                                   1137 	.globl _axradio_transmit_PARM_2
                                   1138 	.globl _aligned_alloc_PARM_2
                                   1139 	.globl _axradio_trxstate
                                   1140 	.globl _axradio_mode
                                   1141 	.globl _axradio_conv_time_totimer0
                                   1142 	.globl _axradio_isr
                                   1143 	.globl _ax5043_receiver_on_continuous
                                   1144 	.globl _ax5043_receiver_on_wor
                                   1145 	.globl _ax5043_prepare_tx
                                   1146 	.globl _ax5043_off
                                   1147 	.globl _ax5043_off_xtal
                                   1148 	.globl _axradio_wait_for_xtal
                                   1149 	.globl _axradio_init
                                   1150 	.globl _axradio_cansleep
                                   1151 	.globl _axradio_set_mode
                                   1152 	.globl _axradio_get_mode
                                   1153 	.globl _axradio_set_channel
                                   1154 	.globl _axradio_get_channel
                                   1155 	.globl _axradio_get_pllrange
                                   1156 	.globl _axradio_get_pllvcoi
                                   1157 	.globl _axradio_set_freqoffset
                                   1158 	.globl _axradio_get_freqoffset
                                   1159 	.globl _axradio_set_local_address
                                   1160 	.globl _axradio_get_local_address
                                   1161 	.globl _axradio_set_default_remote_address
                                   1162 	.globl _axradio_get_default_remote_address
                                   1163 	.globl _axradio_transmit
                                   1164 	.globl _axradio_agc_freeze
                                   1165 	.globl _axradio_agc_thaw
                                   1166 ;--------------------------------------------------------
                                   1167 ; special function registers
                                   1168 ;--------------------------------------------------------
                                   1169 	.area RSEG    (ABS,DATA)
      000000                       1170 	.org 0x0000
                           0000E0  1171 G$ACC$0$0 == 0x00e0
                           0000E0  1172 _ACC	=	0x00e0
                           0000F0  1173 G$B$0$0 == 0x00f0
                           0000F0  1174 _B	=	0x00f0
                           000083  1175 G$DPH$0$0 == 0x0083
                           000083  1176 _DPH	=	0x0083
                           000085  1177 G$DPH1$0$0 == 0x0085
                           000085  1178 _DPH1	=	0x0085
                           000082  1179 G$DPL$0$0 == 0x0082
                           000082  1180 _DPL	=	0x0082
                           000084  1181 G$DPL1$0$0 == 0x0084
                           000084  1182 _DPL1	=	0x0084
                           008382  1183 G$DPTR0$0$0 == 0x8382
                           008382  1184 _DPTR0	=	0x8382
                           008584  1185 G$DPTR1$0$0 == 0x8584
                           008584  1186 _DPTR1	=	0x8584
                           000086  1187 G$DPS$0$0 == 0x0086
                           000086  1188 _DPS	=	0x0086
                           0000A0  1189 G$E2IE$0$0 == 0x00a0
                           0000A0  1190 _E2IE	=	0x00a0
                           0000C0  1191 G$E2IP$0$0 == 0x00c0
                           0000C0  1192 _E2IP	=	0x00c0
                           000098  1193 G$EIE$0$0 == 0x0098
                           000098  1194 _EIE	=	0x0098
                           0000B0  1195 G$EIP$0$0 == 0x00b0
                           0000B0  1196 _EIP	=	0x00b0
                           0000A8  1197 G$IE$0$0 == 0x00a8
                           0000A8  1198 _IE	=	0x00a8
                           0000B8  1199 G$IP$0$0 == 0x00b8
                           0000B8  1200 _IP	=	0x00b8
                           000087  1201 G$PCON$0$0 == 0x0087
                           000087  1202 _PCON	=	0x0087
                           0000D0  1203 G$PSW$0$0 == 0x00d0
                           0000D0  1204 _PSW	=	0x00d0
                           000081  1205 G$SP$0$0 == 0x0081
                           000081  1206 _SP	=	0x0081
                           0000D9  1207 G$XPAGE$0$0 == 0x00d9
                           0000D9  1208 _XPAGE	=	0x00d9
                           0000D9  1209 G$_XPAGE$0$0 == 0x00d9
                           0000D9  1210 __XPAGE	=	0x00d9
                           0000CA  1211 G$ADCCH0CONFIG$0$0 == 0x00ca
                           0000CA  1212 _ADCCH0CONFIG	=	0x00ca
                           0000CB  1213 G$ADCCH1CONFIG$0$0 == 0x00cb
                           0000CB  1214 _ADCCH1CONFIG	=	0x00cb
                           0000D2  1215 G$ADCCH2CONFIG$0$0 == 0x00d2
                           0000D2  1216 _ADCCH2CONFIG	=	0x00d2
                           0000D3  1217 G$ADCCH3CONFIG$0$0 == 0x00d3
                           0000D3  1218 _ADCCH3CONFIG	=	0x00d3
                           0000D1  1219 G$ADCCLKSRC$0$0 == 0x00d1
                           0000D1  1220 _ADCCLKSRC	=	0x00d1
                           0000C9  1221 G$ADCCONV$0$0 == 0x00c9
                           0000C9  1222 _ADCCONV	=	0x00c9
                           0000E1  1223 G$ANALOGCOMP$0$0 == 0x00e1
                           0000E1  1224 _ANALOGCOMP	=	0x00e1
                           0000C6  1225 G$CLKCON$0$0 == 0x00c6
                           0000C6  1226 _CLKCON	=	0x00c6
                           0000C7  1227 G$CLKSTAT$0$0 == 0x00c7
                           0000C7  1228 _CLKSTAT	=	0x00c7
                           000097  1229 G$CODECONFIG$0$0 == 0x0097
                           000097  1230 _CODECONFIG	=	0x0097
                           0000E3  1231 G$DBGLNKBUF$0$0 == 0x00e3
                           0000E3  1232 _DBGLNKBUF	=	0x00e3
                           0000E2  1233 G$DBGLNKSTAT$0$0 == 0x00e2
                           0000E2  1234 _DBGLNKSTAT	=	0x00e2
                           000089  1235 G$DIRA$0$0 == 0x0089
                           000089  1236 _DIRA	=	0x0089
                           00008A  1237 G$DIRB$0$0 == 0x008a
                           00008A  1238 _DIRB	=	0x008a
                           00008B  1239 G$DIRC$0$0 == 0x008b
                           00008B  1240 _DIRC	=	0x008b
                           00008E  1241 G$DIRR$0$0 == 0x008e
                           00008E  1242 _DIRR	=	0x008e
                           0000C8  1243 G$PINA$0$0 == 0x00c8
                           0000C8  1244 _PINA	=	0x00c8
                           0000E8  1245 G$PINB$0$0 == 0x00e8
                           0000E8  1246 _PINB	=	0x00e8
                           0000F8  1247 G$PINC$0$0 == 0x00f8
                           0000F8  1248 _PINC	=	0x00f8
                           00008D  1249 G$PINR$0$0 == 0x008d
                           00008D  1250 _PINR	=	0x008d
                           000080  1251 G$PORTA$0$0 == 0x0080
                           000080  1252 _PORTA	=	0x0080
                           000088  1253 G$PORTB$0$0 == 0x0088
                           000088  1254 _PORTB	=	0x0088
                           000090  1255 G$PORTC$0$0 == 0x0090
                           000090  1256 _PORTC	=	0x0090
                           00008C  1257 G$PORTR$0$0 == 0x008c
                           00008C  1258 _PORTR	=	0x008c
                           0000CE  1259 G$IC0CAPT0$0$0 == 0x00ce
                           0000CE  1260 _IC0CAPT0	=	0x00ce
                           0000CF  1261 G$IC0CAPT1$0$0 == 0x00cf
                           0000CF  1262 _IC0CAPT1	=	0x00cf
                           00CFCE  1263 G$IC0CAPT$0$0 == 0xcfce
                           00CFCE  1264 _IC0CAPT	=	0xcfce
                           0000CC  1265 G$IC0MODE$0$0 == 0x00cc
                           0000CC  1266 _IC0MODE	=	0x00cc
                           0000CD  1267 G$IC0STATUS$0$0 == 0x00cd
                           0000CD  1268 _IC0STATUS	=	0x00cd
                           0000D6  1269 G$IC1CAPT0$0$0 == 0x00d6
                           0000D6  1270 _IC1CAPT0	=	0x00d6
                           0000D7  1271 G$IC1CAPT1$0$0 == 0x00d7
                           0000D7  1272 _IC1CAPT1	=	0x00d7
                           00D7D6  1273 G$IC1CAPT$0$0 == 0xd7d6
                           00D7D6  1274 _IC1CAPT	=	0xd7d6
                           0000D4  1275 G$IC1MODE$0$0 == 0x00d4
                           0000D4  1276 _IC1MODE	=	0x00d4
                           0000D5  1277 G$IC1STATUS$0$0 == 0x00d5
                           0000D5  1278 _IC1STATUS	=	0x00d5
                           000092  1279 G$NVADDR0$0$0 == 0x0092
                           000092  1280 _NVADDR0	=	0x0092
                           000093  1281 G$NVADDR1$0$0 == 0x0093
                           000093  1282 _NVADDR1	=	0x0093
                           009392  1283 G$NVADDR$0$0 == 0x9392
                           009392  1284 _NVADDR	=	0x9392
                           000094  1285 G$NVDATA0$0$0 == 0x0094
                           000094  1286 _NVDATA0	=	0x0094
                           000095  1287 G$NVDATA1$0$0 == 0x0095
                           000095  1288 _NVDATA1	=	0x0095
                           009594  1289 G$NVDATA$0$0 == 0x9594
                           009594  1290 _NVDATA	=	0x9594
                           000096  1291 G$NVKEY$0$0 == 0x0096
                           000096  1292 _NVKEY	=	0x0096
                           000091  1293 G$NVSTATUS$0$0 == 0x0091
                           000091  1294 _NVSTATUS	=	0x0091
                           0000BC  1295 G$OC0COMP0$0$0 == 0x00bc
                           0000BC  1296 _OC0COMP0	=	0x00bc
                           0000BD  1297 G$OC0COMP1$0$0 == 0x00bd
                           0000BD  1298 _OC0COMP1	=	0x00bd
                           00BDBC  1299 G$OC0COMP$0$0 == 0xbdbc
                           00BDBC  1300 _OC0COMP	=	0xbdbc
                           0000B9  1301 G$OC0MODE$0$0 == 0x00b9
                           0000B9  1302 _OC0MODE	=	0x00b9
                           0000BA  1303 G$OC0PIN$0$0 == 0x00ba
                           0000BA  1304 _OC0PIN	=	0x00ba
                           0000BB  1305 G$OC0STATUS$0$0 == 0x00bb
                           0000BB  1306 _OC0STATUS	=	0x00bb
                           0000C4  1307 G$OC1COMP0$0$0 == 0x00c4
                           0000C4  1308 _OC1COMP0	=	0x00c4
                           0000C5  1309 G$OC1COMP1$0$0 == 0x00c5
                           0000C5  1310 _OC1COMP1	=	0x00c5
                           00C5C4  1311 G$OC1COMP$0$0 == 0xc5c4
                           00C5C4  1312 _OC1COMP	=	0xc5c4
                           0000C1  1313 G$OC1MODE$0$0 == 0x00c1
                           0000C1  1314 _OC1MODE	=	0x00c1
                           0000C2  1315 G$OC1PIN$0$0 == 0x00c2
                           0000C2  1316 _OC1PIN	=	0x00c2
                           0000C3  1317 G$OC1STATUS$0$0 == 0x00c3
                           0000C3  1318 _OC1STATUS	=	0x00c3
                           0000B1  1319 G$RADIOACC$0$0 == 0x00b1
                           0000B1  1320 _RADIOACC	=	0x00b1
                           0000B3  1321 G$RADIOADDR0$0$0 == 0x00b3
                           0000B3  1322 _RADIOADDR0	=	0x00b3
                           0000B2  1323 G$RADIOADDR1$0$0 == 0x00b2
                           0000B2  1324 _RADIOADDR1	=	0x00b2
                           00B2B3  1325 G$RADIOADDR$0$0 == 0xb2b3
                           00B2B3  1326 _RADIOADDR	=	0xb2b3
                           0000B7  1327 G$RADIODATA0$0$0 == 0x00b7
                           0000B7  1328 _RADIODATA0	=	0x00b7
                           0000B6  1329 G$RADIODATA1$0$0 == 0x00b6
                           0000B6  1330 _RADIODATA1	=	0x00b6
                           0000B5  1331 G$RADIODATA2$0$0 == 0x00b5
                           0000B5  1332 _RADIODATA2	=	0x00b5
                           0000B4  1333 G$RADIODATA3$0$0 == 0x00b4
                           0000B4  1334 _RADIODATA3	=	0x00b4
                           B4B5B6B7  1335 G$RADIODATA$0$0 == 0xb4b5b6b7
                           B4B5B6B7  1336 _RADIODATA	=	0xb4b5b6b7
                           0000BE  1337 G$RADIOSTAT0$0$0 == 0x00be
                           0000BE  1338 _RADIOSTAT0	=	0x00be
                           0000BF  1339 G$RADIOSTAT1$0$0 == 0x00bf
                           0000BF  1340 _RADIOSTAT1	=	0x00bf
                           00BFBE  1341 G$RADIOSTAT$0$0 == 0xbfbe
                           00BFBE  1342 _RADIOSTAT	=	0xbfbe
                           0000DF  1343 G$SPCLKSRC$0$0 == 0x00df
                           0000DF  1344 _SPCLKSRC	=	0x00df
                           0000DC  1345 G$SPMODE$0$0 == 0x00dc
                           0000DC  1346 _SPMODE	=	0x00dc
                           0000DE  1347 G$SPSHREG$0$0 == 0x00de
                           0000DE  1348 _SPSHREG	=	0x00de
                           0000DD  1349 G$SPSTATUS$0$0 == 0x00dd
                           0000DD  1350 _SPSTATUS	=	0x00dd
                           00009A  1351 G$T0CLKSRC$0$0 == 0x009a
                           00009A  1352 _T0CLKSRC	=	0x009a
                           00009C  1353 G$T0CNT0$0$0 == 0x009c
                           00009C  1354 _T0CNT0	=	0x009c
                           00009D  1355 G$T0CNT1$0$0 == 0x009d
                           00009D  1356 _T0CNT1	=	0x009d
                           009D9C  1357 G$T0CNT$0$0 == 0x9d9c
                           009D9C  1358 _T0CNT	=	0x9d9c
                           000099  1359 G$T0MODE$0$0 == 0x0099
                           000099  1360 _T0MODE	=	0x0099
                           00009E  1361 G$T0PERIOD0$0$0 == 0x009e
                           00009E  1362 _T0PERIOD0	=	0x009e
                           00009F  1363 G$T0PERIOD1$0$0 == 0x009f
                           00009F  1364 _T0PERIOD1	=	0x009f
                           009F9E  1365 G$T0PERIOD$0$0 == 0x9f9e
                           009F9E  1366 _T0PERIOD	=	0x9f9e
                           00009B  1367 G$T0STATUS$0$0 == 0x009b
                           00009B  1368 _T0STATUS	=	0x009b
                           0000A2  1369 G$T1CLKSRC$0$0 == 0x00a2
                           0000A2  1370 _T1CLKSRC	=	0x00a2
                           0000A4  1371 G$T1CNT0$0$0 == 0x00a4
                           0000A4  1372 _T1CNT0	=	0x00a4
                           0000A5  1373 G$T1CNT1$0$0 == 0x00a5
                           0000A5  1374 _T1CNT1	=	0x00a5
                           00A5A4  1375 G$T1CNT$0$0 == 0xa5a4
                           00A5A4  1376 _T1CNT	=	0xa5a4
                           0000A1  1377 G$T1MODE$0$0 == 0x00a1
                           0000A1  1378 _T1MODE	=	0x00a1
                           0000A6  1379 G$T1PERIOD0$0$0 == 0x00a6
                           0000A6  1380 _T1PERIOD0	=	0x00a6
                           0000A7  1381 G$T1PERIOD1$0$0 == 0x00a7
                           0000A7  1382 _T1PERIOD1	=	0x00a7
                           00A7A6  1383 G$T1PERIOD$0$0 == 0xa7a6
                           00A7A6  1384 _T1PERIOD	=	0xa7a6
                           0000A3  1385 G$T1STATUS$0$0 == 0x00a3
                           0000A3  1386 _T1STATUS	=	0x00a3
                           0000AA  1387 G$T2CLKSRC$0$0 == 0x00aa
                           0000AA  1388 _T2CLKSRC	=	0x00aa
                           0000AC  1389 G$T2CNT0$0$0 == 0x00ac
                           0000AC  1390 _T2CNT0	=	0x00ac
                           0000AD  1391 G$T2CNT1$0$0 == 0x00ad
                           0000AD  1392 _T2CNT1	=	0x00ad
                           00ADAC  1393 G$T2CNT$0$0 == 0xadac
                           00ADAC  1394 _T2CNT	=	0xadac
                           0000A9  1395 G$T2MODE$0$0 == 0x00a9
                           0000A9  1396 _T2MODE	=	0x00a9
                           0000AE  1397 G$T2PERIOD0$0$0 == 0x00ae
                           0000AE  1398 _T2PERIOD0	=	0x00ae
                           0000AF  1399 G$T2PERIOD1$0$0 == 0x00af
                           0000AF  1400 _T2PERIOD1	=	0x00af
                           00AFAE  1401 G$T2PERIOD$0$0 == 0xafae
                           00AFAE  1402 _T2PERIOD	=	0xafae
                           0000AB  1403 G$T2STATUS$0$0 == 0x00ab
                           0000AB  1404 _T2STATUS	=	0x00ab
                           0000E4  1405 G$U0CTRL$0$0 == 0x00e4
                           0000E4  1406 _U0CTRL	=	0x00e4
                           0000E7  1407 G$U0MODE$0$0 == 0x00e7
                           0000E7  1408 _U0MODE	=	0x00e7
                           0000E6  1409 G$U0SHREG$0$0 == 0x00e6
                           0000E6  1410 _U0SHREG	=	0x00e6
                           0000E5  1411 G$U0STATUS$0$0 == 0x00e5
                           0000E5  1412 _U0STATUS	=	0x00e5
                           0000EC  1413 G$U1CTRL$0$0 == 0x00ec
                           0000EC  1414 _U1CTRL	=	0x00ec
                           0000EF  1415 G$U1MODE$0$0 == 0x00ef
                           0000EF  1416 _U1MODE	=	0x00ef
                           0000EE  1417 G$U1SHREG$0$0 == 0x00ee
                           0000EE  1418 _U1SHREG	=	0x00ee
                           0000ED  1419 G$U1STATUS$0$0 == 0x00ed
                           0000ED  1420 _U1STATUS	=	0x00ed
                           0000DA  1421 G$WDTCFG$0$0 == 0x00da
                           0000DA  1422 _WDTCFG	=	0x00da
                           0000DB  1423 G$WDTRESET$0$0 == 0x00db
                           0000DB  1424 _WDTRESET	=	0x00db
                           0000F1  1425 G$WTCFGA$0$0 == 0x00f1
                           0000F1  1426 _WTCFGA	=	0x00f1
                           0000F9  1427 G$WTCFGB$0$0 == 0x00f9
                           0000F9  1428 _WTCFGB	=	0x00f9
                           0000F2  1429 G$WTCNTA0$0$0 == 0x00f2
                           0000F2  1430 _WTCNTA0	=	0x00f2
                           0000F3  1431 G$WTCNTA1$0$0 == 0x00f3
                           0000F3  1432 _WTCNTA1	=	0x00f3
                           00F3F2  1433 G$WTCNTA$0$0 == 0xf3f2
                           00F3F2  1434 _WTCNTA	=	0xf3f2
                           0000FA  1435 G$WTCNTB0$0$0 == 0x00fa
                           0000FA  1436 _WTCNTB0	=	0x00fa
                           0000FB  1437 G$WTCNTB1$0$0 == 0x00fb
                           0000FB  1438 _WTCNTB1	=	0x00fb
                           00FBFA  1439 G$WTCNTB$0$0 == 0xfbfa
                           00FBFA  1440 _WTCNTB	=	0xfbfa
                           0000EB  1441 G$WTCNTR1$0$0 == 0x00eb
                           0000EB  1442 _WTCNTR1	=	0x00eb
                           0000F4  1443 G$WTEVTA0$0$0 == 0x00f4
                           0000F4  1444 _WTEVTA0	=	0x00f4
                           0000F5  1445 G$WTEVTA1$0$0 == 0x00f5
                           0000F5  1446 _WTEVTA1	=	0x00f5
                           00F5F4  1447 G$WTEVTA$0$0 == 0xf5f4
                           00F5F4  1448 _WTEVTA	=	0xf5f4
                           0000F6  1449 G$WTEVTB0$0$0 == 0x00f6
                           0000F6  1450 _WTEVTB0	=	0x00f6
                           0000F7  1451 G$WTEVTB1$0$0 == 0x00f7
                           0000F7  1452 _WTEVTB1	=	0x00f7
                           00F7F6  1453 G$WTEVTB$0$0 == 0xf7f6
                           00F7F6  1454 _WTEVTB	=	0xf7f6
                           0000FC  1455 G$WTEVTC0$0$0 == 0x00fc
                           0000FC  1456 _WTEVTC0	=	0x00fc
                           0000FD  1457 G$WTEVTC1$0$0 == 0x00fd
                           0000FD  1458 _WTEVTC1	=	0x00fd
                           00FDFC  1459 G$WTEVTC$0$0 == 0xfdfc
                           00FDFC  1460 _WTEVTC	=	0xfdfc
                           0000FE  1461 G$WTEVTD0$0$0 == 0x00fe
                           0000FE  1462 _WTEVTD0	=	0x00fe
                           0000FF  1463 G$WTEVTD1$0$0 == 0x00ff
                           0000FF  1464 _WTEVTD1	=	0x00ff
                           00FFFE  1465 G$WTEVTD$0$0 == 0xfffe
                           00FFFE  1466 _WTEVTD	=	0xfffe
                           0000E9  1467 G$WTIRQEN$0$0 == 0x00e9
                           0000E9  1468 _WTIRQEN	=	0x00e9
                           0000EA  1469 G$WTSTAT$0$0 == 0x00ea
                           0000EA  1470 _WTSTAT	=	0x00ea
                                   1471 ;--------------------------------------------------------
                                   1472 ; special function bits
                                   1473 ;--------------------------------------------------------
                                   1474 	.area RSEG    (ABS,DATA)
      000000                       1475 	.org 0x0000
                           0000E0  1476 G$ACC_0$0$0 == 0x00e0
                           0000E0  1477 _ACC_0	=	0x00e0
                           0000E1  1478 G$ACC_1$0$0 == 0x00e1
                           0000E1  1479 _ACC_1	=	0x00e1
                           0000E2  1480 G$ACC_2$0$0 == 0x00e2
                           0000E2  1481 _ACC_2	=	0x00e2
                           0000E3  1482 G$ACC_3$0$0 == 0x00e3
                           0000E3  1483 _ACC_3	=	0x00e3
                           0000E4  1484 G$ACC_4$0$0 == 0x00e4
                           0000E4  1485 _ACC_4	=	0x00e4
                           0000E5  1486 G$ACC_5$0$0 == 0x00e5
                           0000E5  1487 _ACC_5	=	0x00e5
                           0000E6  1488 G$ACC_6$0$0 == 0x00e6
                           0000E6  1489 _ACC_6	=	0x00e6
                           0000E7  1490 G$ACC_7$0$0 == 0x00e7
                           0000E7  1491 _ACC_7	=	0x00e7
                           0000F0  1492 G$B_0$0$0 == 0x00f0
                           0000F0  1493 _B_0	=	0x00f0
                           0000F1  1494 G$B_1$0$0 == 0x00f1
                           0000F1  1495 _B_1	=	0x00f1
                           0000F2  1496 G$B_2$0$0 == 0x00f2
                           0000F2  1497 _B_2	=	0x00f2
                           0000F3  1498 G$B_3$0$0 == 0x00f3
                           0000F3  1499 _B_3	=	0x00f3
                           0000F4  1500 G$B_4$0$0 == 0x00f4
                           0000F4  1501 _B_4	=	0x00f4
                           0000F5  1502 G$B_5$0$0 == 0x00f5
                           0000F5  1503 _B_5	=	0x00f5
                           0000F6  1504 G$B_6$0$0 == 0x00f6
                           0000F6  1505 _B_6	=	0x00f6
                           0000F7  1506 G$B_7$0$0 == 0x00f7
                           0000F7  1507 _B_7	=	0x00f7
                           0000A0  1508 G$E2IE_0$0$0 == 0x00a0
                           0000A0  1509 _E2IE_0	=	0x00a0
                           0000A1  1510 G$E2IE_1$0$0 == 0x00a1
                           0000A1  1511 _E2IE_1	=	0x00a1
                           0000A2  1512 G$E2IE_2$0$0 == 0x00a2
                           0000A2  1513 _E2IE_2	=	0x00a2
                           0000A3  1514 G$E2IE_3$0$0 == 0x00a3
                           0000A3  1515 _E2IE_3	=	0x00a3
                           0000A4  1516 G$E2IE_4$0$0 == 0x00a4
                           0000A4  1517 _E2IE_4	=	0x00a4
                           0000A5  1518 G$E2IE_5$0$0 == 0x00a5
                           0000A5  1519 _E2IE_5	=	0x00a5
                           0000A6  1520 G$E2IE_6$0$0 == 0x00a6
                           0000A6  1521 _E2IE_6	=	0x00a6
                           0000A7  1522 G$E2IE_7$0$0 == 0x00a7
                           0000A7  1523 _E2IE_7	=	0x00a7
                           0000C0  1524 G$E2IP_0$0$0 == 0x00c0
                           0000C0  1525 _E2IP_0	=	0x00c0
                           0000C1  1526 G$E2IP_1$0$0 == 0x00c1
                           0000C1  1527 _E2IP_1	=	0x00c1
                           0000C2  1528 G$E2IP_2$0$0 == 0x00c2
                           0000C2  1529 _E2IP_2	=	0x00c2
                           0000C3  1530 G$E2IP_3$0$0 == 0x00c3
                           0000C3  1531 _E2IP_3	=	0x00c3
                           0000C4  1532 G$E2IP_4$0$0 == 0x00c4
                           0000C4  1533 _E2IP_4	=	0x00c4
                           0000C5  1534 G$E2IP_5$0$0 == 0x00c5
                           0000C5  1535 _E2IP_5	=	0x00c5
                           0000C6  1536 G$E2IP_6$0$0 == 0x00c6
                           0000C6  1537 _E2IP_6	=	0x00c6
                           0000C7  1538 G$E2IP_7$0$0 == 0x00c7
                           0000C7  1539 _E2IP_7	=	0x00c7
                           000098  1540 G$EIE_0$0$0 == 0x0098
                           000098  1541 _EIE_0	=	0x0098
                           000099  1542 G$EIE_1$0$0 == 0x0099
                           000099  1543 _EIE_1	=	0x0099
                           00009A  1544 G$EIE_2$0$0 == 0x009a
                           00009A  1545 _EIE_2	=	0x009a
                           00009B  1546 G$EIE_3$0$0 == 0x009b
                           00009B  1547 _EIE_3	=	0x009b
                           00009C  1548 G$EIE_4$0$0 == 0x009c
                           00009C  1549 _EIE_4	=	0x009c
                           00009D  1550 G$EIE_5$0$0 == 0x009d
                           00009D  1551 _EIE_5	=	0x009d
                           00009E  1552 G$EIE_6$0$0 == 0x009e
                           00009E  1553 _EIE_6	=	0x009e
                           00009F  1554 G$EIE_7$0$0 == 0x009f
                           00009F  1555 _EIE_7	=	0x009f
                           0000B0  1556 G$EIP_0$0$0 == 0x00b0
                           0000B0  1557 _EIP_0	=	0x00b0
                           0000B1  1558 G$EIP_1$0$0 == 0x00b1
                           0000B1  1559 _EIP_1	=	0x00b1
                           0000B2  1560 G$EIP_2$0$0 == 0x00b2
                           0000B2  1561 _EIP_2	=	0x00b2
                           0000B3  1562 G$EIP_3$0$0 == 0x00b3
                           0000B3  1563 _EIP_3	=	0x00b3
                           0000B4  1564 G$EIP_4$0$0 == 0x00b4
                           0000B4  1565 _EIP_4	=	0x00b4
                           0000B5  1566 G$EIP_5$0$0 == 0x00b5
                           0000B5  1567 _EIP_5	=	0x00b5
                           0000B6  1568 G$EIP_6$0$0 == 0x00b6
                           0000B6  1569 _EIP_6	=	0x00b6
                           0000B7  1570 G$EIP_7$0$0 == 0x00b7
                           0000B7  1571 _EIP_7	=	0x00b7
                           0000A8  1572 G$IE_0$0$0 == 0x00a8
                           0000A8  1573 _IE_0	=	0x00a8
                           0000A9  1574 G$IE_1$0$0 == 0x00a9
                           0000A9  1575 _IE_1	=	0x00a9
                           0000AA  1576 G$IE_2$0$0 == 0x00aa
                           0000AA  1577 _IE_2	=	0x00aa
                           0000AB  1578 G$IE_3$0$0 == 0x00ab
                           0000AB  1579 _IE_3	=	0x00ab
                           0000AC  1580 G$IE_4$0$0 == 0x00ac
                           0000AC  1581 _IE_4	=	0x00ac
                           0000AD  1582 G$IE_5$0$0 == 0x00ad
                           0000AD  1583 _IE_5	=	0x00ad
                           0000AE  1584 G$IE_6$0$0 == 0x00ae
                           0000AE  1585 _IE_6	=	0x00ae
                           0000AF  1586 G$IE_7$0$0 == 0x00af
                           0000AF  1587 _IE_7	=	0x00af
                           0000AF  1588 G$EA$0$0 == 0x00af
                           0000AF  1589 _EA	=	0x00af
                           0000B8  1590 G$IP_0$0$0 == 0x00b8
                           0000B8  1591 _IP_0	=	0x00b8
                           0000B9  1592 G$IP_1$0$0 == 0x00b9
                           0000B9  1593 _IP_1	=	0x00b9
                           0000BA  1594 G$IP_2$0$0 == 0x00ba
                           0000BA  1595 _IP_2	=	0x00ba
                           0000BB  1596 G$IP_3$0$0 == 0x00bb
                           0000BB  1597 _IP_3	=	0x00bb
                           0000BC  1598 G$IP_4$0$0 == 0x00bc
                           0000BC  1599 _IP_4	=	0x00bc
                           0000BD  1600 G$IP_5$0$0 == 0x00bd
                           0000BD  1601 _IP_5	=	0x00bd
                           0000BE  1602 G$IP_6$0$0 == 0x00be
                           0000BE  1603 _IP_6	=	0x00be
                           0000BF  1604 G$IP_7$0$0 == 0x00bf
                           0000BF  1605 _IP_7	=	0x00bf
                           0000D0  1606 G$P$0$0 == 0x00d0
                           0000D0  1607 _P	=	0x00d0
                           0000D1  1608 G$F1$0$0 == 0x00d1
                           0000D1  1609 _F1	=	0x00d1
                           0000D2  1610 G$OV$0$0 == 0x00d2
                           0000D2  1611 _OV	=	0x00d2
                           0000D3  1612 G$RS0$0$0 == 0x00d3
                           0000D3  1613 _RS0	=	0x00d3
                           0000D4  1614 G$RS1$0$0 == 0x00d4
                           0000D4  1615 _RS1	=	0x00d4
                           0000D5  1616 G$F0$0$0 == 0x00d5
                           0000D5  1617 _F0	=	0x00d5
                           0000D6  1618 G$AC$0$0 == 0x00d6
                           0000D6  1619 _AC	=	0x00d6
                           0000D7  1620 G$CY$0$0 == 0x00d7
                           0000D7  1621 _CY	=	0x00d7
                           0000C8  1622 G$PINA_0$0$0 == 0x00c8
                           0000C8  1623 _PINA_0	=	0x00c8
                           0000C9  1624 G$PINA_1$0$0 == 0x00c9
                           0000C9  1625 _PINA_1	=	0x00c9
                           0000CA  1626 G$PINA_2$0$0 == 0x00ca
                           0000CA  1627 _PINA_2	=	0x00ca
                           0000CB  1628 G$PINA_3$0$0 == 0x00cb
                           0000CB  1629 _PINA_3	=	0x00cb
                           0000CC  1630 G$PINA_4$0$0 == 0x00cc
                           0000CC  1631 _PINA_4	=	0x00cc
                           0000CD  1632 G$PINA_5$0$0 == 0x00cd
                           0000CD  1633 _PINA_5	=	0x00cd
                           0000CE  1634 G$PINA_6$0$0 == 0x00ce
                           0000CE  1635 _PINA_6	=	0x00ce
                           0000CF  1636 G$PINA_7$0$0 == 0x00cf
                           0000CF  1637 _PINA_7	=	0x00cf
                           0000E8  1638 G$PINB_0$0$0 == 0x00e8
                           0000E8  1639 _PINB_0	=	0x00e8
                           0000E9  1640 G$PINB_1$0$0 == 0x00e9
                           0000E9  1641 _PINB_1	=	0x00e9
                           0000EA  1642 G$PINB_2$0$0 == 0x00ea
                           0000EA  1643 _PINB_2	=	0x00ea
                           0000EB  1644 G$PINB_3$0$0 == 0x00eb
                           0000EB  1645 _PINB_3	=	0x00eb
                           0000EC  1646 G$PINB_4$0$0 == 0x00ec
                           0000EC  1647 _PINB_4	=	0x00ec
                           0000ED  1648 G$PINB_5$0$0 == 0x00ed
                           0000ED  1649 _PINB_5	=	0x00ed
                           0000EE  1650 G$PINB_6$0$0 == 0x00ee
                           0000EE  1651 _PINB_6	=	0x00ee
                           0000EF  1652 G$PINB_7$0$0 == 0x00ef
                           0000EF  1653 _PINB_7	=	0x00ef
                           0000F8  1654 G$PINC_0$0$0 == 0x00f8
                           0000F8  1655 _PINC_0	=	0x00f8
                           0000F9  1656 G$PINC_1$0$0 == 0x00f9
                           0000F9  1657 _PINC_1	=	0x00f9
                           0000FA  1658 G$PINC_2$0$0 == 0x00fa
                           0000FA  1659 _PINC_2	=	0x00fa
                           0000FB  1660 G$PINC_3$0$0 == 0x00fb
                           0000FB  1661 _PINC_3	=	0x00fb
                           0000FC  1662 G$PINC_4$0$0 == 0x00fc
                           0000FC  1663 _PINC_4	=	0x00fc
                           0000FD  1664 G$PINC_5$0$0 == 0x00fd
                           0000FD  1665 _PINC_5	=	0x00fd
                           0000FE  1666 G$PINC_6$0$0 == 0x00fe
                           0000FE  1667 _PINC_6	=	0x00fe
                           0000FF  1668 G$PINC_7$0$0 == 0x00ff
                           0000FF  1669 _PINC_7	=	0x00ff
                           000080  1670 G$PORTA_0$0$0 == 0x0080
                           000080  1671 _PORTA_0	=	0x0080
                           000081  1672 G$PORTA_1$0$0 == 0x0081
                           000081  1673 _PORTA_1	=	0x0081
                           000082  1674 G$PORTA_2$0$0 == 0x0082
                           000082  1675 _PORTA_2	=	0x0082
                           000083  1676 G$PORTA_3$0$0 == 0x0083
                           000083  1677 _PORTA_3	=	0x0083
                           000084  1678 G$PORTA_4$0$0 == 0x0084
                           000084  1679 _PORTA_4	=	0x0084
                           000085  1680 G$PORTA_5$0$0 == 0x0085
                           000085  1681 _PORTA_5	=	0x0085
                           000086  1682 G$PORTA_6$0$0 == 0x0086
                           000086  1683 _PORTA_6	=	0x0086
                           000087  1684 G$PORTA_7$0$0 == 0x0087
                           000087  1685 _PORTA_7	=	0x0087
                           000088  1686 G$PORTB_0$0$0 == 0x0088
                           000088  1687 _PORTB_0	=	0x0088
                           000089  1688 G$PORTB_1$0$0 == 0x0089
                           000089  1689 _PORTB_1	=	0x0089
                           00008A  1690 G$PORTB_2$0$0 == 0x008a
                           00008A  1691 _PORTB_2	=	0x008a
                           00008B  1692 G$PORTB_3$0$0 == 0x008b
                           00008B  1693 _PORTB_3	=	0x008b
                           00008C  1694 G$PORTB_4$0$0 == 0x008c
                           00008C  1695 _PORTB_4	=	0x008c
                           00008D  1696 G$PORTB_5$0$0 == 0x008d
                           00008D  1697 _PORTB_5	=	0x008d
                           00008E  1698 G$PORTB_6$0$0 == 0x008e
                           00008E  1699 _PORTB_6	=	0x008e
                           00008F  1700 G$PORTB_7$0$0 == 0x008f
                           00008F  1701 _PORTB_7	=	0x008f
                           000090  1702 G$PORTC_0$0$0 == 0x0090
                           000090  1703 _PORTC_0	=	0x0090
                           000091  1704 G$PORTC_1$0$0 == 0x0091
                           000091  1705 _PORTC_1	=	0x0091
                           000092  1706 G$PORTC_2$0$0 == 0x0092
                           000092  1707 _PORTC_2	=	0x0092
                           000093  1708 G$PORTC_3$0$0 == 0x0093
                           000093  1709 _PORTC_3	=	0x0093
                           000094  1710 G$PORTC_4$0$0 == 0x0094
                           000094  1711 _PORTC_4	=	0x0094
                           000095  1712 G$PORTC_5$0$0 == 0x0095
                           000095  1713 _PORTC_5	=	0x0095
                           000096  1714 G$PORTC_6$0$0 == 0x0096
                           000096  1715 _PORTC_6	=	0x0096
                           000097  1716 G$PORTC_7$0$0 == 0x0097
                           000097  1717 _PORTC_7	=	0x0097
                                   1718 ;--------------------------------------------------------
                                   1719 ; overlayable register banks
                                   1720 ;--------------------------------------------------------
                                   1721 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                       1722 	.ds 8
                                   1723 ;--------------------------------------------------------
                                   1724 ; overlayable bit register bank
                                   1725 ;--------------------------------------------------------
                                   1726 	.area BIT_BANK	(REL,OVR,DATA)
      000021                       1727 bits:
      000021                       1728 	.ds 1
                           008000  1729 	b0 = bits[0]
                           008100  1730 	b1 = bits[1]
                           008200  1731 	b2 = bits[2]
                           008300  1732 	b3 = bits[3]
                           008400  1733 	b4 = bits[4]
                           008500  1734 	b5 = bits[5]
                           008600  1735 	b6 = bits[6]
                           008700  1736 	b7 = bits[7]
                                   1737 ;--------------------------------------------------------
                                   1738 ; internal ram data
                                   1739 ;--------------------------------------------------------
                                   1740 	.area DSEG    (DATA)
                           000000  1741 G$axradio_mode$0$0==.
      000008                       1742 _axradio_mode::
      000008                       1743 	.ds 1
                           000001  1744 G$axradio_trxstate$0$0==.
      000009                       1745 _axradio_trxstate::
      000009                       1746 	.ds 1
                           000002  1747 Leasyax5043.aligned_alloc$size$1$171==.
      00000A                       1748 _aligned_alloc_PARM_2:
      00000A                       1749 	.ds 2
                           000004  1750 Leasyax5043.axradio_init$vcoisave$3$395==.
      00000C                       1751 _axradio_init_vcoisave_3_395:
      00000C                       1752 	.ds 1
                           000005  1753 Leasyax5043.axradio_transmit$pkt$1$453==.
      00000D                       1754 _axradio_transmit_PARM_2:
      00000D                       1755 	.ds 3
                           000008  1756 Leasyax5043.axradio_transmit$pktlen$1$453==.
      000010                       1757 _axradio_transmit_PARM_3:
      000010                       1758 	.ds 2
                                   1759 ;--------------------------------------------------------
                                   1760 ; overlayable items in internal ram 
                                   1761 ;--------------------------------------------------------
                                   1762 	.area	OSEG    (OVR,DATA)
                                   1763 	.area	OSEG    (OVR,DATA)
                           000000  1764 Leasyax5043.axradio_set_channel$rng$1$424==.
      000023                       1765 _axradio_set_channel_rng_1_424:
      000023                       1766 	.ds 1
                                   1767 	.area	OSEG    (OVR,DATA)
                                   1768 ;--------------------------------------------------------
                                   1769 ; indirectly addressable internal ram data
                                   1770 ;--------------------------------------------------------
                                   1771 	.area ISEG    (DATA)
                                   1772 ;--------------------------------------------------------
                                   1773 ; absolute internal ram data
                                   1774 ;--------------------------------------------------------
                                   1775 	.area IABS    (ABS,DATA)
                                   1776 	.area IABS    (ABS,DATA)
                                   1777 ;--------------------------------------------------------
                                   1778 ; bit data
                                   1779 ;--------------------------------------------------------
                                   1780 	.area BSEG    (BIT)
                           000000  1781 Leasyax5043.axradio_timer_callback$sloc0$1$0==.
      000000                       1782 _axradio_timer_callback_sloc0_1_0:
      000000                       1783 	.ds 1
                           000001  1784 Leasyax5043.axradio_init$sloc0$1$0==.
      000001                       1785 _axradio_init_sloc0_1_0:
      000001                       1786 	.ds 1
                                   1787 ;--------------------------------------------------------
                                   1788 ; paged external ram data
                                   1789 ;--------------------------------------------------------
                                   1790 	.area PSEG    (PAG,XDATA)
                                   1791 ;--------------------------------------------------------
                                   1792 ; external ram data
                                   1793 ;--------------------------------------------------------
                                   1794 	.area XSEG    (XDATA)
                           007020  1795 G$ADCCH0VAL0$0$0 == 0x7020
                           007020  1796 _ADCCH0VAL0	=	0x7020
                           007021  1797 G$ADCCH0VAL1$0$0 == 0x7021
                           007021  1798 _ADCCH0VAL1	=	0x7021
                           007020  1799 G$ADCCH0VAL$0$0 == 0x7020
                           007020  1800 _ADCCH0VAL	=	0x7020
                           007022  1801 G$ADCCH1VAL0$0$0 == 0x7022
                           007022  1802 _ADCCH1VAL0	=	0x7022
                           007023  1803 G$ADCCH1VAL1$0$0 == 0x7023
                           007023  1804 _ADCCH1VAL1	=	0x7023
                           007022  1805 G$ADCCH1VAL$0$0 == 0x7022
                           007022  1806 _ADCCH1VAL	=	0x7022
                           007024  1807 G$ADCCH2VAL0$0$0 == 0x7024
                           007024  1808 _ADCCH2VAL0	=	0x7024
                           007025  1809 G$ADCCH2VAL1$0$0 == 0x7025
                           007025  1810 _ADCCH2VAL1	=	0x7025
                           007024  1811 G$ADCCH2VAL$0$0 == 0x7024
                           007024  1812 _ADCCH2VAL	=	0x7024
                           007026  1813 G$ADCCH3VAL0$0$0 == 0x7026
                           007026  1814 _ADCCH3VAL0	=	0x7026
                           007027  1815 G$ADCCH3VAL1$0$0 == 0x7027
                           007027  1816 _ADCCH3VAL1	=	0x7027
                           007026  1817 G$ADCCH3VAL$0$0 == 0x7026
                           007026  1818 _ADCCH3VAL	=	0x7026
                           007028  1819 G$ADCTUNE0$0$0 == 0x7028
                           007028  1820 _ADCTUNE0	=	0x7028
                           007029  1821 G$ADCTUNE1$0$0 == 0x7029
                           007029  1822 _ADCTUNE1	=	0x7029
                           00702A  1823 G$ADCTUNE2$0$0 == 0x702a
                           00702A  1824 _ADCTUNE2	=	0x702a
                           007010  1825 G$DMA0ADDR0$0$0 == 0x7010
                           007010  1826 _DMA0ADDR0	=	0x7010
                           007011  1827 G$DMA0ADDR1$0$0 == 0x7011
                           007011  1828 _DMA0ADDR1	=	0x7011
                           007010  1829 G$DMA0ADDR$0$0 == 0x7010
                           007010  1830 _DMA0ADDR	=	0x7010
                           007014  1831 G$DMA0CONFIG$0$0 == 0x7014
                           007014  1832 _DMA0CONFIG	=	0x7014
                           007012  1833 G$DMA1ADDR0$0$0 == 0x7012
                           007012  1834 _DMA1ADDR0	=	0x7012
                           007013  1835 G$DMA1ADDR1$0$0 == 0x7013
                           007013  1836 _DMA1ADDR1	=	0x7013
                           007012  1837 G$DMA1ADDR$0$0 == 0x7012
                           007012  1838 _DMA1ADDR	=	0x7012
                           007015  1839 G$DMA1CONFIG$0$0 == 0x7015
                           007015  1840 _DMA1CONFIG	=	0x7015
                           007070  1841 G$FRCOSCCONFIG$0$0 == 0x7070
                           007070  1842 _FRCOSCCONFIG	=	0x7070
                           007071  1843 G$FRCOSCCTRL$0$0 == 0x7071
                           007071  1844 _FRCOSCCTRL	=	0x7071
                           007076  1845 G$FRCOSCFREQ0$0$0 == 0x7076
                           007076  1846 _FRCOSCFREQ0	=	0x7076
                           007077  1847 G$FRCOSCFREQ1$0$0 == 0x7077
                           007077  1848 _FRCOSCFREQ1	=	0x7077
                           007076  1849 G$FRCOSCFREQ$0$0 == 0x7076
                           007076  1850 _FRCOSCFREQ	=	0x7076
                           007072  1851 G$FRCOSCKFILT0$0$0 == 0x7072
                           007072  1852 _FRCOSCKFILT0	=	0x7072
                           007073  1853 G$FRCOSCKFILT1$0$0 == 0x7073
                           007073  1854 _FRCOSCKFILT1	=	0x7073
                           007072  1855 G$FRCOSCKFILT$0$0 == 0x7072
                           007072  1856 _FRCOSCKFILT	=	0x7072
                           007078  1857 G$FRCOSCPER0$0$0 == 0x7078
                           007078  1858 _FRCOSCPER0	=	0x7078
                           007079  1859 G$FRCOSCPER1$0$0 == 0x7079
                           007079  1860 _FRCOSCPER1	=	0x7079
                           007078  1861 G$FRCOSCPER$0$0 == 0x7078
                           007078  1862 _FRCOSCPER	=	0x7078
                           007074  1863 G$FRCOSCREF0$0$0 == 0x7074
                           007074  1864 _FRCOSCREF0	=	0x7074
                           007075  1865 G$FRCOSCREF1$0$0 == 0x7075
                           007075  1866 _FRCOSCREF1	=	0x7075
                           007074  1867 G$FRCOSCREF$0$0 == 0x7074
                           007074  1868 _FRCOSCREF	=	0x7074
                           007007  1869 G$ANALOGA$0$0 == 0x7007
                           007007  1870 _ANALOGA	=	0x7007
                           00700C  1871 G$GPIOENABLE$0$0 == 0x700c
                           00700C  1872 _GPIOENABLE	=	0x700c
                           007003  1873 G$EXTIRQ$0$0 == 0x7003
                           007003  1874 _EXTIRQ	=	0x7003
                           007000  1875 G$INTCHGA$0$0 == 0x7000
                           007000  1876 _INTCHGA	=	0x7000
                           007001  1877 G$INTCHGB$0$0 == 0x7001
                           007001  1878 _INTCHGB	=	0x7001
                           007002  1879 G$INTCHGC$0$0 == 0x7002
                           007002  1880 _INTCHGC	=	0x7002
                           007008  1881 G$PALTA$0$0 == 0x7008
                           007008  1882 _PALTA	=	0x7008
                           007009  1883 G$PALTB$0$0 == 0x7009
                           007009  1884 _PALTB	=	0x7009
                           00700A  1885 G$PALTC$0$0 == 0x700a
                           00700A  1886 _PALTC	=	0x700a
                           007046  1887 G$PALTRADIO$0$0 == 0x7046
                           007046  1888 _PALTRADIO	=	0x7046
                           007004  1889 G$PINCHGA$0$0 == 0x7004
                           007004  1890 _PINCHGA	=	0x7004
                           007005  1891 G$PINCHGB$0$0 == 0x7005
                           007005  1892 _PINCHGB	=	0x7005
                           007006  1893 G$PINCHGC$0$0 == 0x7006
                           007006  1894 _PINCHGC	=	0x7006
                           00700B  1895 G$PINSEL$0$0 == 0x700b
                           00700B  1896 _PINSEL	=	0x700b
                           007060  1897 G$LPOSCCONFIG$0$0 == 0x7060
                           007060  1898 _LPOSCCONFIG	=	0x7060
                           007066  1899 G$LPOSCFREQ0$0$0 == 0x7066
                           007066  1900 _LPOSCFREQ0	=	0x7066
                           007067  1901 G$LPOSCFREQ1$0$0 == 0x7067
                           007067  1902 _LPOSCFREQ1	=	0x7067
                           007066  1903 G$LPOSCFREQ$0$0 == 0x7066
                           007066  1904 _LPOSCFREQ	=	0x7066
                           007062  1905 G$LPOSCKFILT0$0$0 == 0x7062
                           007062  1906 _LPOSCKFILT0	=	0x7062
                           007063  1907 G$LPOSCKFILT1$0$0 == 0x7063
                           007063  1908 _LPOSCKFILT1	=	0x7063
                           007062  1909 G$LPOSCKFILT$0$0 == 0x7062
                           007062  1910 _LPOSCKFILT	=	0x7062
                           007068  1911 G$LPOSCPER0$0$0 == 0x7068
                           007068  1912 _LPOSCPER0	=	0x7068
                           007069  1913 G$LPOSCPER1$0$0 == 0x7069
                           007069  1914 _LPOSCPER1	=	0x7069
                           007068  1915 G$LPOSCPER$0$0 == 0x7068
                           007068  1916 _LPOSCPER	=	0x7068
                           007064  1917 G$LPOSCREF0$0$0 == 0x7064
                           007064  1918 _LPOSCREF0	=	0x7064
                           007065  1919 G$LPOSCREF1$0$0 == 0x7065
                           007065  1920 _LPOSCREF1	=	0x7065
                           007064  1921 G$LPOSCREF$0$0 == 0x7064
                           007064  1922 _LPOSCREF	=	0x7064
                           007054  1923 G$LPXOSCGM$0$0 == 0x7054
                           007054  1924 _LPXOSCGM	=	0x7054
                           007F01  1925 G$MISCCTRL$0$0 == 0x7f01
                           007F01  1926 _MISCCTRL	=	0x7f01
                           007053  1927 G$OSCCALIB$0$0 == 0x7053
                           007053  1928 _OSCCALIB	=	0x7053
                           007050  1929 G$OSCFORCERUN$0$0 == 0x7050
                           007050  1930 _OSCFORCERUN	=	0x7050
                           007052  1931 G$OSCREADY$0$0 == 0x7052
                           007052  1932 _OSCREADY	=	0x7052
                           007051  1933 G$OSCRUN$0$0 == 0x7051
                           007051  1934 _OSCRUN	=	0x7051
                           007040  1935 G$RADIOFDATAADDR0$0$0 == 0x7040
                           007040  1936 _RADIOFDATAADDR0	=	0x7040
                           007041  1937 G$RADIOFDATAADDR1$0$0 == 0x7041
                           007041  1938 _RADIOFDATAADDR1	=	0x7041
                           007040  1939 G$RADIOFDATAADDR$0$0 == 0x7040
                           007040  1940 _RADIOFDATAADDR	=	0x7040
                           007042  1941 G$RADIOFSTATADDR0$0$0 == 0x7042
                           007042  1942 _RADIOFSTATADDR0	=	0x7042
                           007043  1943 G$RADIOFSTATADDR1$0$0 == 0x7043
                           007043  1944 _RADIOFSTATADDR1	=	0x7043
                           007042  1945 G$RADIOFSTATADDR$0$0 == 0x7042
                           007042  1946 _RADIOFSTATADDR	=	0x7042
                           007044  1947 G$RADIOMUX$0$0 == 0x7044
                           007044  1948 _RADIOMUX	=	0x7044
                           007084  1949 G$SCRATCH0$0$0 == 0x7084
                           007084  1950 _SCRATCH0	=	0x7084
                           007085  1951 G$SCRATCH1$0$0 == 0x7085
                           007085  1952 _SCRATCH1	=	0x7085
                           007086  1953 G$SCRATCH2$0$0 == 0x7086
                           007086  1954 _SCRATCH2	=	0x7086
                           007087  1955 G$SCRATCH3$0$0 == 0x7087
                           007087  1956 _SCRATCH3	=	0x7087
                           007F00  1957 G$SILICONREV$0$0 == 0x7f00
                           007F00  1958 _SILICONREV	=	0x7f00
                           007F19  1959 G$XTALAMPL$0$0 == 0x7f19
                           007F19  1960 _XTALAMPL	=	0x7f19
                           007F18  1961 G$XTALOSC$0$0 == 0x7f18
                           007F18  1962 _XTALOSC	=	0x7f18
                           007F1A  1963 G$XTALREADY$0$0 == 0x7f1a
                           007F1A  1964 _XTALREADY	=	0x7f1a
                           003F82  1965 G$XDPTR0$0$0 == 0x3f82
                           003F82  1966 _XDPTR0	=	0x3f82
                           003F84  1967 G$XDPTR1$0$0 == 0x3f84
                           003F84  1968 _XDPTR1	=	0x3f84
                           003FA8  1969 G$XIE$0$0 == 0x3fa8
                           003FA8  1970 _XIE	=	0x3fa8
                           003FB8  1971 G$XIP$0$0 == 0x3fb8
                           003FB8  1972 _XIP	=	0x3fb8
                           003F87  1973 G$XPCON$0$0 == 0x3f87
                           003F87  1974 _XPCON	=	0x3f87
                           003FCA  1975 G$XADCCH0CONFIG$0$0 == 0x3fca
                           003FCA  1976 _XADCCH0CONFIG	=	0x3fca
                           003FCB  1977 G$XADCCH1CONFIG$0$0 == 0x3fcb
                           003FCB  1978 _XADCCH1CONFIG	=	0x3fcb
                           003FD2  1979 G$XADCCH2CONFIG$0$0 == 0x3fd2
                           003FD2  1980 _XADCCH2CONFIG	=	0x3fd2
                           003FD3  1981 G$XADCCH3CONFIG$0$0 == 0x3fd3
                           003FD3  1982 _XADCCH3CONFIG	=	0x3fd3
                           003FD1  1983 G$XADCCLKSRC$0$0 == 0x3fd1
                           003FD1  1984 _XADCCLKSRC	=	0x3fd1
                           003FC9  1985 G$XADCCONV$0$0 == 0x3fc9
                           003FC9  1986 _XADCCONV	=	0x3fc9
                           003FE1  1987 G$XANALOGCOMP$0$0 == 0x3fe1
                           003FE1  1988 _XANALOGCOMP	=	0x3fe1
                           003FC6  1989 G$XCLKCON$0$0 == 0x3fc6
                           003FC6  1990 _XCLKCON	=	0x3fc6
                           003FC7  1991 G$XCLKSTAT$0$0 == 0x3fc7
                           003FC7  1992 _XCLKSTAT	=	0x3fc7
                           003F97  1993 G$XCODECONFIG$0$0 == 0x3f97
                           003F97  1994 _XCODECONFIG	=	0x3f97
                           003FE3  1995 G$XDBGLNKBUF$0$0 == 0x3fe3
                           003FE3  1996 _XDBGLNKBUF	=	0x3fe3
                           003FE2  1997 G$XDBGLNKSTAT$0$0 == 0x3fe2
                           003FE2  1998 _XDBGLNKSTAT	=	0x3fe2
                           003F89  1999 G$XDIRA$0$0 == 0x3f89
                           003F89  2000 _XDIRA	=	0x3f89
                           003F8A  2001 G$XDIRB$0$0 == 0x3f8a
                           003F8A  2002 _XDIRB	=	0x3f8a
                           003F8B  2003 G$XDIRC$0$0 == 0x3f8b
                           003F8B  2004 _XDIRC	=	0x3f8b
                           003F8E  2005 G$XDIRR$0$0 == 0x3f8e
                           003F8E  2006 _XDIRR	=	0x3f8e
                           003FC8  2007 G$XPINA$0$0 == 0x3fc8
                           003FC8  2008 _XPINA	=	0x3fc8
                           003FE8  2009 G$XPINB$0$0 == 0x3fe8
                           003FE8  2010 _XPINB	=	0x3fe8
                           003FF8  2011 G$XPINC$0$0 == 0x3ff8
                           003FF8  2012 _XPINC	=	0x3ff8
                           003F8D  2013 G$XPINR$0$0 == 0x3f8d
                           003F8D  2014 _XPINR	=	0x3f8d
                           003F80  2015 G$XPORTA$0$0 == 0x3f80
                           003F80  2016 _XPORTA	=	0x3f80
                           003F88  2017 G$XPORTB$0$0 == 0x3f88
                           003F88  2018 _XPORTB	=	0x3f88
                           003F90  2019 G$XPORTC$0$0 == 0x3f90
                           003F90  2020 _XPORTC	=	0x3f90
                           003F8C  2021 G$XPORTR$0$0 == 0x3f8c
                           003F8C  2022 _XPORTR	=	0x3f8c
                           003FCE  2023 G$XIC0CAPT0$0$0 == 0x3fce
                           003FCE  2024 _XIC0CAPT0	=	0x3fce
                           003FCF  2025 G$XIC0CAPT1$0$0 == 0x3fcf
                           003FCF  2026 _XIC0CAPT1	=	0x3fcf
                           003FCE  2027 G$XIC0CAPT$0$0 == 0x3fce
                           003FCE  2028 _XIC0CAPT	=	0x3fce
                           003FCC  2029 G$XIC0MODE$0$0 == 0x3fcc
                           003FCC  2030 _XIC0MODE	=	0x3fcc
                           003FCD  2031 G$XIC0STATUS$0$0 == 0x3fcd
                           003FCD  2032 _XIC0STATUS	=	0x3fcd
                           003FD6  2033 G$XIC1CAPT0$0$0 == 0x3fd6
                           003FD6  2034 _XIC1CAPT0	=	0x3fd6
                           003FD7  2035 G$XIC1CAPT1$0$0 == 0x3fd7
                           003FD7  2036 _XIC1CAPT1	=	0x3fd7
                           003FD6  2037 G$XIC1CAPT$0$0 == 0x3fd6
                           003FD6  2038 _XIC1CAPT	=	0x3fd6
                           003FD4  2039 G$XIC1MODE$0$0 == 0x3fd4
                           003FD4  2040 _XIC1MODE	=	0x3fd4
                           003FD5  2041 G$XIC1STATUS$0$0 == 0x3fd5
                           003FD5  2042 _XIC1STATUS	=	0x3fd5
                           003F92  2043 G$XNVADDR0$0$0 == 0x3f92
                           003F92  2044 _XNVADDR0	=	0x3f92
                           003F93  2045 G$XNVADDR1$0$0 == 0x3f93
                           003F93  2046 _XNVADDR1	=	0x3f93
                           003F92  2047 G$XNVADDR$0$0 == 0x3f92
                           003F92  2048 _XNVADDR	=	0x3f92
                           003F94  2049 G$XNVDATA0$0$0 == 0x3f94
                           003F94  2050 _XNVDATA0	=	0x3f94
                           003F95  2051 G$XNVDATA1$0$0 == 0x3f95
                           003F95  2052 _XNVDATA1	=	0x3f95
                           003F94  2053 G$XNVDATA$0$0 == 0x3f94
                           003F94  2054 _XNVDATA	=	0x3f94
                           003F96  2055 G$XNVKEY$0$0 == 0x3f96
                           003F96  2056 _XNVKEY	=	0x3f96
                           003F91  2057 G$XNVSTATUS$0$0 == 0x3f91
                           003F91  2058 _XNVSTATUS	=	0x3f91
                           003FBC  2059 G$XOC0COMP0$0$0 == 0x3fbc
                           003FBC  2060 _XOC0COMP0	=	0x3fbc
                           003FBD  2061 G$XOC0COMP1$0$0 == 0x3fbd
                           003FBD  2062 _XOC0COMP1	=	0x3fbd
                           003FBC  2063 G$XOC0COMP$0$0 == 0x3fbc
                           003FBC  2064 _XOC0COMP	=	0x3fbc
                           003FB9  2065 G$XOC0MODE$0$0 == 0x3fb9
                           003FB9  2066 _XOC0MODE	=	0x3fb9
                           003FBA  2067 G$XOC0PIN$0$0 == 0x3fba
                           003FBA  2068 _XOC0PIN	=	0x3fba
                           003FBB  2069 G$XOC0STATUS$0$0 == 0x3fbb
                           003FBB  2070 _XOC0STATUS	=	0x3fbb
                           003FC4  2071 G$XOC1COMP0$0$0 == 0x3fc4
                           003FC4  2072 _XOC1COMP0	=	0x3fc4
                           003FC5  2073 G$XOC1COMP1$0$0 == 0x3fc5
                           003FC5  2074 _XOC1COMP1	=	0x3fc5
                           003FC4  2075 G$XOC1COMP$0$0 == 0x3fc4
                           003FC4  2076 _XOC1COMP	=	0x3fc4
                           003FC1  2077 G$XOC1MODE$0$0 == 0x3fc1
                           003FC1  2078 _XOC1MODE	=	0x3fc1
                           003FC2  2079 G$XOC1PIN$0$0 == 0x3fc2
                           003FC2  2080 _XOC1PIN	=	0x3fc2
                           003FC3  2081 G$XOC1STATUS$0$0 == 0x3fc3
                           003FC3  2082 _XOC1STATUS	=	0x3fc3
                           003FB1  2083 G$XRADIOACC$0$0 == 0x3fb1
                           003FB1  2084 _XRADIOACC	=	0x3fb1
                           003FB3  2085 G$XRADIOADDR0$0$0 == 0x3fb3
                           003FB3  2086 _XRADIOADDR0	=	0x3fb3
                           003FB2  2087 G$XRADIOADDR1$0$0 == 0x3fb2
                           003FB2  2088 _XRADIOADDR1	=	0x3fb2
                           003FB7  2089 G$XRADIODATA0$0$0 == 0x3fb7
                           003FB7  2090 _XRADIODATA0	=	0x3fb7
                           003FB6  2091 G$XRADIODATA1$0$0 == 0x3fb6
                           003FB6  2092 _XRADIODATA1	=	0x3fb6
                           003FB5  2093 G$XRADIODATA2$0$0 == 0x3fb5
                           003FB5  2094 _XRADIODATA2	=	0x3fb5
                           003FB4  2095 G$XRADIODATA3$0$0 == 0x3fb4
                           003FB4  2096 _XRADIODATA3	=	0x3fb4
                           003FBE  2097 G$XRADIOSTAT0$0$0 == 0x3fbe
                           003FBE  2098 _XRADIOSTAT0	=	0x3fbe
                           003FBF  2099 G$XRADIOSTAT1$0$0 == 0x3fbf
                           003FBF  2100 _XRADIOSTAT1	=	0x3fbf
                           003FBE  2101 G$XRADIOSTAT$0$0 == 0x3fbe
                           003FBE  2102 _XRADIOSTAT	=	0x3fbe
                           003FDF  2103 G$XSPCLKSRC$0$0 == 0x3fdf
                           003FDF  2104 _XSPCLKSRC	=	0x3fdf
                           003FDC  2105 G$XSPMODE$0$0 == 0x3fdc
                           003FDC  2106 _XSPMODE	=	0x3fdc
                           003FDE  2107 G$XSPSHREG$0$0 == 0x3fde
                           003FDE  2108 _XSPSHREG	=	0x3fde
                           003FDD  2109 G$XSPSTATUS$0$0 == 0x3fdd
                           003FDD  2110 _XSPSTATUS	=	0x3fdd
                           003F9A  2111 G$XT0CLKSRC$0$0 == 0x3f9a
                           003F9A  2112 _XT0CLKSRC	=	0x3f9a
                           003F9C  2113 G$XT0CNT0$0$0 == 0x3f9c
                           003F9C  2114 _XT0CNT0	=	0x3f9c
                           003F9D  2115 G$XT0CNT1$0$0 == 0x3f9d
                           003F9D  2116 _XT0CNT1	=	0x3f9d
                           003F9C  2117 G$XT0CNT$0$0 == 0x3f9c
                           003F9C  2118 _XT0CNT	=	0x3f9c
                           003F99  2119 G$XT0MODE$0$0 == 0x3f99
                           003F99  2120 _XT0MODE	=	0x3f99
                           003F9E  2121 G$XT0PERIOD0$0$0 == 0x3f9e
                           003F9E  2122 _XT0PERIOD0	=	0x3f9e
                           003F9F  2123 G$XT0PERIOD1$0$0 == 0x3f9f
                           003F9F  2124 _XT0PERIOD1	=	0x3f9f
                           003F9E  2125 G$XT0PERIOD$0$0 == 0x3f9e
                           003F9E  2126 _XT0PERIOD	=	0x3f9e
                           003F9B  2127 G$XT0STATUS$0$0 == 0x3f9b
                           003F9B  2128 _XT0STATUS	=	0x3f9b
                           003FA2  2129 G$XT1CLKSRC$0$0 == 0x3fa2
                           003FA2  2130 _XT1CLKSRC	=	0x3fa2
                           003FA4  2131 G$XT1CNT0$0$0 == 0x3fa4
                           003FA4  2132 _XT1CNT0	=	0x3fa4
                           003FA5  2133 G$XT1CNT1$0$0 == 0x3fa5
                           003FA5  2134 _XT1CNT1	=	0x3fa5
                           003FA4  2135 G$XT1CNT$0$0 == 0x3fa4
                           003FA4  2136 _XT1CNT	=	0x3fa4
                           003FA1  2137 G$XT1MODE$0$0 == 0x3fa1
                           003FA1  2138 _XT1MODE	=	0x3fa1
                           003FA6  2139 G$XT1PERIOD0$0$0 == 0x3fa6
                           003FA6  2140 _XT1PERIOD0	=	0x3fa6
                           003FA7  2141 G$XT1PERIOD1$0$0 == 0x3fa7
                           003FA7  2142 _XT1PERIOD1	=	0x3fa7
                           003FA6  2143 G$XT1PERIOD$0$0 == 0x3fa6
                           003FA6  2144 _XT1PERIOD	=	0x3fa6
                           003FA3  2145 G$XT1STATUS$0$0 == 0x3fa3
                           003FA3  2146 _XT1STATUS	=	0x3fa3
                           003FAA  2147 G$XT2CLKSRC$0$0 == 0x3faa
                           003FAA  2148 _XT2CLKSRC	=	0x3faa
                           003FAC  2149 G$XT2CNT0$0$0 == 0x3fac
                           003FAC  2150 _XT2CNT0	=	0x3fac
                           003FAD  2151 G$XT2CNT1$0$0 == 0x3fad
                           003FAD  2152 _XT2CNT1	=	0x3fad
                           003FAC  2153 G$XT2CNT$0$0 == 0x3fac
                           003FAC  2154 _XT2CNT	=	0x3fac
                           003FA9  2155 G$XT2MODE$0$0 == 0x3fa9
                           003FA9  2156 _XT2MODE	=	0x3fa9
                           003FAE  2157 G$XT2PERIOD0$0$0 == 0x3fae
                           003FAE  2158 _XT2PERIOD0	=	0x3fae
                           003FAF  2159 G$XT2PERIOD1$0$0 == 0x3faf
                           003FAF  2160 _XT2PERIOD1	=	0x3faf
                           003FAE  2161 G$XT2PERIOD$0$0 == 0x3fae
                           003FAE  2162 _XT2PERIOD	=	0x3fae
                           003FAB  2163 G$XT2STATUS$0$0 == 0x3fab
                           003FAB  2164 _XT2STATUS	=	0x3fab
                           003FE4  2165 G$XU0CTRL$0$0 == 0x3fe4
                           003FE4  2166 _XU0CTRL	=	0x3fe4
                           003FE7  2167 G$XU0MODE$0$0 == 0x3fe7
                           003FE7  2168 _XU0MODE	=	0x3fe7
                           003FE6  2169 G$XU0SHREG$0$0 == 0x3fe6
                           003FE6  2170 _XU0SHREG	=	0x3fe6
                           003FE5  2171 G$XU0STATUS$0$0 == 0x3fe5
                           003FE5  2172 _XU0STATUS	=	0x3fe5
                           003FEC  2173 G$XU1CTRL$0$0 == 0x3fec
                           003FEC  2174 _XU1CTRL	=	0x3fec
                           003FEF  2175 G$XU1MODE$0$0 == 0x3fef
                           003FEF  2176 _XU1MODE	=	0x3fef
                           003FEE  2177 G$XU1SHREG$0$0 == 0x3fee
                           003FEE  2178 _XU1SHREG	=	0x3fee
                           003FED  2179 G$XU1STATUS$0$0 == 0x3fed
                           003FED  2180 _XU1STATUS	=	0x3fed
                           003FDA  2181 G$XWDTCFG$0$0 == 0x3fda
                           003FDA  2182 _XWDTCFG	=	0x3fda
                           003FDB  2183 G$XWDTRESET$0$0 == 0x3fdb
                           003FDB  2184 _XWDTRESET	=	0x3fdb
                           003FF1  2185 G$XWTCFGA$0$0 == 0x3ff1
                           003FF1  2186 _XWTCFGA	=	0x3ff1
                           003FF9  2187 G$XWTCFGB$0$0 == 0x3ff9
                           003FF9  2188 _XWTCFGB	=	0x3ff9
                           003FF2  2189 G$XWTCNTA0$0$0 == 0x3ff2
                           003FF2  2190 _XWTCNTA0	=	0x3ff2
                           003FF3  2191 G$XWTCNTA1$0$0 == 0x3ff3
                           003FF3  2192 _XWTCNTA1	=	0x3ff3
                           003FF2  2193 G$XWTCNTA$0$0 == 0x3ff2
                           003FF2  2194 _XWTCNTA	=	0x3ff2
                           003FFA  2195 G$XWTCNTB0$0$0 == 0x3ffa
                           003FFA  2196 _XWTCNTB0	=	0x3ffa
                           003FFB  2197 G$XWTCNTB1$0$0 == 0x3ffb
                           003FFB  2198 _XWTCNTB1	=	0x3ffb
                           003FFA  2199 G$XWTCNTB$0$0 == 0x3ffa
                           003FFA  2200 _XWTCNTB	=	0x3ffa
                           003FEB  2201 G$XWTCNTR1$0$0 == 0x3feb
                           003FEB  2202 _XWTCNTR1	=	0x3feb
                           003FF4  2203 G$XWTEVTA0$0$0 == 0x3ff4
                           003FF4  2204 _XWTEVTA0	=	0x3ff4
                           003FF5  2205 G$XWTEVTA1$0$0 == 0x3ff5
                           003FF5  2206 _XWTEVTA1	=	0x3ff5
                           003FF4  2207 G$XWTEVTA$0$0 == 0x3ff4
                           003FF4  2208 _XWTEVTA	=	0x3ff4
                           003FF6  2209 G$XWTEVTB0$0$0 == 0x3ff6
                           003FF6  2210 _XWTEVTB0	=	0x3ff6
                           003FF7  2211 G$XWTEVTB1$0$0 == 0x3ff7
                           003FF7  2212 _XWTEVTB1	=	0x3ff7
                           003FF6  2213 G$XWTEVTB$0$0 == 0x3ff6
                           003FF6  2214 _XWTEVTB	=	0x3ff6
                           003FFC  2215 G$XWTEVTC0$0$0 == 0x3ffc
                           003FFC  2216 _XWTEVTC0	=	0x3ffc
                           003FFD  2217 G$XWTEVTC1$0$0 == 0x3ffd
                           003FFD  2218 _XWTEVTC1	=	0x3ffd
                           003FFC  2219 G$XWTEVTC$0$0 == 0x3ffc
                           003FFC  2220 _XWTEVTC	=	0x3ffc
                           003FFE  2221 G$XWTEVTD0$0$0 == 0x3ffe
                           003FFE  2222 _XWTEVTD0	=	0x3ffe
                           003FFF  2223 G$XWTEVTD1$0$0 == 0x3fff
                           003FFF  2224 _XWTEVTD1	=	0x3fff
                           003FFE  2225 G$XWTEVTD$0$0 == 0x3ffe
                           003FFE  2226 _XWTEVTD	=	0x3ffe
                           003FE9  2227 G$XWTIRQEN$0$0 == 0x3fe9
                           003FE9  2228 _XWTIRQEN	=	0x3fe9
                           003FEA  2229 G$XWTSTAT$0$0 == 0x3fea
                           003FEA  2230 _XWTSTAT	=	0x3fea
                           004114  2231 G$AX5043_AFSKCTRL$0$0 == 0x4114
                           004114  2232 _AX5043_AFSKCTRL	=	0x4114
                           004113  2233 G$AX5043_AFSKMARK0$0$0 == 0x4113
                           004113  2234 _AX5043_AFSKMARK0	=	0x4113
                           004112  2235 G$AX5043_AFSKMARK1$0$0 == 0x4112
                           004112  2236 _AX5043_AFSKMARK1	=	0x4112
                           004111  2237 G$AX5043_AFSKSPACE0$0$0 == 0x4111
                           004111  2238 _AX5043_AFSKSPACE0	=	0x4111
                           004110  2239 G$AX5043_AFSKSPACE1$0$0 == 0x4110
                           004110  2240 _AX5043_AFSKSPACE1	=	0x4110
                           004043  2241 G$AX5043_AGCCOUNTER$0$0 == 0x4043
                           004043  2242 _AX5043_AGCCOUNTER	=	0x4043
                           004115  2243 G$AX5043_AMPLFILTER$0$0 == 0x4115
                           004115  2244 _AX5043_AMPLFILTER	=	0x4115
                           004189  2245 G$AX5043_BBOFFSCAP$0$0 == 0x4189
                           004189  2246 _AX5043_BBOFFSCAP	=	0x4189
                           004188  2247 G$AX5043_BBTUNE$0$0 == 0x4188
                           004188  2248 _AX5043_BBTUNE	=	0x4188
                           004041  2249 G$AX5043_BGNDRSSI$0$0 == 0x4041
                           004041  2250 _AX5043_BGNDRSSI	=	0x4041
                           00422E  2251 G$AX5043_BGNDRSSIGAIN$0$0 == 0x422e
                           00422E  2252 _AX5043_BGNDRSSIGAIN	=	0x422e
                           00422F  2253 G$AX5043_BGNDRSSITHR$0$0 == 0x422f
                           00422F  2254 _AX5043_BGNDRSSITHR	=	0x422f
                           004017  2255 G$AX5043_CRCINIT0$0$0 == 0x4017
                           004017  2256 _AX5043_CRCINIT0	=	0x4017
                           004016  2257 G$AX5043_CRCINIT1$0$0 == 0x4016
                           004016  2258 _AX5043_CRCINIT1	=	0x4016
                           004015  2259 G$AX5043_CRCINIT2$0$0 == 0x4015
                           004015  2260 _AX5043_CRCINIT2	=	0x4015
                           004014  2261 G$AX5043_CRCINIT3$0$0 == 0x4014
                           004014  2262 _AX5043_CRCINIT3	=	0x4014
                           004332  2263 G$AX5043_DACCONFIG$0$0 == 0x4332
                           004332  2264 _AX5043_DACCONFIG	=	0x4332
                           004331  2265 G$AX5043_DACVALUE0$0$0 == 0x4331
                           004331  2266 _AX5043_DACVALUE0	=	0x4331
                           004330  2267 G$AX5043_DACVALUE1$0$0 == 0x4330
                           004330  2268 _AX5043_DACVALUE1	=	0x4330
                           004102  2269 G$AX5043_DECIMATION$0$0 == 0x4102
                           004102  2270 _AX5043_DECIMATION	=	0x4102
                           004042  2271 G$AX5043_DIVERSITY$0$0 == 0x4042
                           004042  2272 _AX5043_DIVERSITY	=	0x4042
                           004011  2273 G$AX5043_ENCODING$0$0 == 0x4011
                           004011  2274 _AX5043_ENCODING	=	0x4011
                           004018  2275 G$AX5043_FEC$0$0 == 0x4018
                           004018  2276 _AX5043_FEC	=	0x4018
                           00401A  2277 G$AX5043_FECSTATUS$0$0 == 0x401a
                           00401A  2278 _AX5043_FECSTATUS	=	0x401a
                           004019  2279 G$AX5043_FECSYNC$0$0 == 0x4019
                           004019  2280 _AX5043_FECSYNC	=	0x4019
                           00402B  2281 G$AX5043_FIFOCOUNT0$0$0 == 0x402b
                           00402B  2282 _AX5043_FIFOCOUNT0	=	0x402b
                           00402A  2283 G$AX5043_FIFOCOUNT1$0$0 == 0x402a
                           00402A  2284 _AX5043_FIFOCOUNT1	=	0x402a
                           004029  2285 G$AX5043_FIFODATA$0$0 == 0x4029
                           004029  2286 _AX5043_FIFODATA	=	0x4029
                           00402D  2287 G$AX5043_FIFOFREE0$0$0 == 0x402d
                           00402D  2288 _AX5043_FIFOFREE0	=	0x402d
                           00402C  2289 G$AX5043_FIFOFREE1$0$0 == 0x402c
                           00402C  2290 _AX5043_FIFOFREE1	=	0x402c
                           004028  2291 G$AX5043_FIFOSTAT$0$0 == 0x4028
                           004028  2292 _AX5043_FIFOSTAT	=	0x4028
                           00402F  2293 G$AX5043_FIFOTHRESH0$0$0 == 0x402f
                           00402F  2294 _AX5043_FIFOTHRESH0	=	0x402f
                           00402E  2295 G$AX5043_FIFOTHRESH1$0$0 == 0x402e
                           00402E  2296 _AX5043_FIFOTHRESH1	=	0x402e
                           004012  2297 G$AX5043_FRAMING$0$0 == 0x4012
                           004012  2298 _AX5043_FRAMING	=	0x4012
                           004037  2299 G$AX5043_FREQA0$0$0 == 0x4037
                           004037  2300 _AX5043_FREQA0	=	0x4037
                           004036  2301 G$AX5043_FREQA1$0$0 == 0x4036
                           004036  2302 _AX5043_FREQA1	=	0x4036
                           004035  2303 G$AX5043_FREQA2$0$0 == 0x4035
                           004035  2304 _AX5043_FREQA2	=	0x4035
                           004034  2305 G$AX5043_FREQA3$0$0 == 0x4034
                           004034  2306 _AX5043_FREQA3	=	0x4034
                           00403F  2307 G$AX5043_FREQB0$0$0 == 0x403f
                           00403F  2308 _AX5043_FREQB0	=	0x403f
                           00403E  2309 G$AX5043_FREQB1$0$0 == 0x403e
                           00403E  2310 _AX5043_FREQB1	=	0x403e
                           00403D  2311 G$AX5043_FREQB2$0$0 == 0x403d
                           00403D  2312 _AX5043_FREQB2	=	0x403d
                           00403C  2313 G$AX5043_FREQB3$0$0 == 0x403c
                           00403C  2314 _AX5043_FREQB3	=	0x403c
                           004163  2315 G$AX5043_FSKDEV0$0$0 == 0x4163
                           004163  2316 _AX5043_FSKDEV0	=	0x4163
                           004162  2317 G$AX5043_FSKDEV1$0$0 == 0x4162
                           004162  2318 _AX5043_FSKDEV1	=	0x4162
                           004161  2319 G$AX5043_FSKDEV2$0$0 == 0x4161
                           004161  2320 _AX5043_FSKDEV2	=	0x4161
                           00410D  2321 G$AX5043_FSKDMAX0$0$0 == 0x410d
                           00410D  2322 _AX5043_FSKDMAX0	=	0x410d
                           00410C  2323 G$AX5043_FSKDMAX1$0$0 == 0x410c
                           00410C  2324 _AX5043_FSKDMAX1	=	0x410c
                           00410F  2325 G$AX5043_FSKDMIN0$0$0 == 0x410f
                           00410F  2326 _AX5043_FSKDMIN0	=	0x410f
                           00410E  2327 G$AX5043_FSKDMIN1$0$0 == 0x410e
                           00410E  2328 _AX5043_FSKDMIN1	=	0x410e
                           004309  2329 G$AX5043_GPADC13VALUE0$0$0 == 0x4309
                           004309  2330 _AX5043_GPADC13VALUE0	=	0x4309
                           004308  2331 G$AX5043_GPADC13VALUE1$0$0 == 0x4308
                           004308  2332 _AX5043_GPADC13VALUE1	=	0x4308
                           004300  2333 G$AX5043_GPADCCTRL$0$0 == 0x4300
                           004300  2334 _AX5043_GPADCCTRL	=	0x4300
                           004301  2335 G$AX5043_GPADCPERIOD$0$0 == 0x4301
                           004301  2336 _AX5043_GPADCPERIOD	=	0x4301
                           004101  2337 G$AX5043_IFFREQ0$0$0 == 0x4101
                           004101  2338 _AX5043_IFFREQ0	=	0x4101
                           004100  2339 G$AX5043_IFFREQ1$0$0 == 0x4100
                           004100  2340 _AX5043_IFFREQ1	=	0x4100
                           00400B  2341 G$AX5043_IRQINVERSION0$0$0 == 0x400b
                           00400B  2342 _AX5043_IRQINVERSION0	=	0x400b
                           00400A  2343 G$AX5043_IRQINVERSION1$0$0 == 0x400a
                           00400A  2344 _AX5043_IRQINVERSION1	=	0x400a
                           004007  2345 G$AX5043_IRQMASK0$0$0 == 0x4007
                           004007  2346 _AX5043_IRQMASK0	=	0x4007
                           004006  2347 G$AX5043_IRQMASK1$0$0 == 0x4006
                           004006  2348 _AX5043_IRQMASK1	=	0x4006
                           00400D  2349 G$AX5043_IRQREQUEST0$0$0 == 0x400d
                           00400D  2350 _AX5043_IRQREQUEST0	=	0x400d
                           00400C  2351 G$AX5043_IRQREQUEST1$0$0 == 0x400c
                           00400C  2352 _AX5043_IRQREQUEST1	=	0x400c
                           004310  2353 G$AX5043_LPOSCCONFIG$0$0 == 0x4310
                           004310  2354 _AX5043_LPOSCCONFIG	=	0x4310
                           004317  2355 G$AX5043_LPOSCFREQ0$0$0 == 0x4317
                           004317  2356 _AX5043_LPOSCFREQ0	=	0x4317
                           004316  2357 G$AX5043_LPOSCFREQ1$0$0 == 0x4316
                           004316  2358 _AX5043_LPOSCFREQ1	=	0x4316
                           004313  2359 G$AX5043_LPOSCKFILT0$0$0 == 0x4313
                           004313  2360 _AX5043_LPOSCKFILT0	=	0x4313
                           004312  2361 G$AX5043_LPOSCKFILT1$0$0 == 0x4312
                           004312  2362 _AX5043_LPOSCKFILT1	=	0x4312
                           004319  2363 G$AX5043_LPOSCPER0$0$0 == 0x4319
                           004319  2364 _AX5043_LPOSCPER0	=	0x4319
                           004318  2365 G$AX5043_LPOSCPER1$0$0 == 0x4318
                           004318  2366 _AX5043_LPOSCPER1	=	0x4318
                           004315  2367 G$AX5043_LPOSCREF0$0$0 == 0x4315
                           004315  2368 _AX5043_LPOSCREF0	=	0x4315
                           004314  2369 G$AX5043_LPOSCREF1$0$0 == 0x4314
                           004314  2370 _AX5043_LPOSCREF1	=	0x4314
                           004311  2371 G$AX5043_LPOSCSTATUS$0$0 == 0x4311
                           004311  2372 _AX5043_LPOSCSTATUS	=	0x4311
                           004214  2373 G$AX5043_MATCH0LEN$0$0 == 0x4214
                           004214  2374 _AX5043_MATCH0LEN	=	0x4214
                           004216  2375 G$AX5043_MATCH0MAX$0$0 == 0x4216
                           004216  2376 _AX5043_MATCH0MAX	=	0x4216
                           004215  2377 G$AX5043_MATCH0MIN$0$0 == 0x4215
                           004215  2378 _AX5043_MATCH0MIN	=	0x4215
                           004213  2379 G$AX5043_MATCH0PAT0$0$0 == 0x4213
                           004213  2380 _AX5043_MATCH0PAT0	=	0x4213
                           004212  2381 G$AX5043_MATCH0PAT1$0$0 == 0x4212
                           004212  2382 _AX5043_MATCH0PAT1	=	0x4212
                           004211  2383 G$AX5043_MATCH0PAT2$0$0 == 0x4211
                           004211  2384 _AX5043_MATCH0PAT2	=	0x4211
                           004210  2385 G$AX5043_MATCH0PAT3$0$0 == 0x4210
                           004210  2386 _AX5043_MATCH0PAT3	=	0x4210
                           00421C  2387 G$AX5043_MATCH1LEN$0$0 == 0x421c
                           00421C  2388 _AX5043_MATCH1LEN	=	0x421c
                           00421E  2389 G$AX5043_MATCH1MAX$0$0 == 0x421e
                           00421E  2390 _AX5043_MATCH1MAX	=	0x421e
                           00421D  2391 G$AX5043_MATCH1MIN$0$0 == 0x421d
                           00421D  2392 _AX5043_MATCH1MIN	=	0x421d
                           004219  2393 G$AX5043_MATCH1PAT0$0$0 == 0x4219
                           004219  2394 _AX5043_MATCH1PAT0	=	0x4219
                           004218  2395 G$AX5043_MATCH1PAT1$0$0 == 0x4218
                           004218  2396 _AX5043_MATCH1PAT1	=	0x4218
                           004108  2397 G$AX5043_MAXDROFFSET0$0$0 == 0x4108
                           004108  2398 _AX5043_MAXDROFFSET0	=	0x4108
                           004107  2399 G$AX5043_MAXDROFFSET1$0$0 == 0x4107
                           004107  2400 _AX5043_MAXDROFFSET1	=	0x4107
                           004106  2401 G$AX5043_MAXDROFFSET2$0$0 == 0x4106
                           004106  2402 _AX5043_MAXDROFFSET2	=	0x4106
                           00410B  2403 G$AX5043_MAXRFOFFSET0$0$0 == 0x410b
                           00410B  2404 _AX5043_MAXRFOFFSET0	=	0x410b
                           00410A  2405 G$AX5043_MAXRFOFFSET1$0$0 == 0x410a
                           00410A  2406 _AX5043_MAXRFOFFSET1	=	0x410a
                           004109  2407 G$AX5043_MAXRFOFFSET2$0$0 == 0x4109
                           004109  2408 _AX5043_MAXRFOFFSET2	=	0x4109
                           004164  2409 G$AX5043_MODCFGA$0$0 == 0x4164
                           004164  2410 _AX5043_MODCFGA	=	0x4164
                           004160  2411 G$AX5043_MODCFGF$0$0 == 0x4160
                           004160  2412 _AX5043_MODCFGF	=	0x4160
                           004010  2413 G$AX5043_MODULATION$0$0 == 0x4010
                           004010  2414 _AX5043_MODULATION	=	0x4010
                           004025  2415 G$AX5043_PINFUNCANTSEL$0$0 == 0x4025
                           004025  2416 _AX5043_PINFUNCANTSEL	=	0x4025
                           004023  2417 G$AX5043_PINFUNCDATA$0$0 == 0x4023
                           004023  2418 _AX5043_PINFUNCDATA	=	0x4023
                           004022  2419 G$AX5043_PINFUNCDCLK$0$0 == 0x4022
                           004022  2420 _AX5043_PINFUNCDCLK	=	0x4022
                           004024  2421 G$AX5043_PINFUNCIRQ$0$0 == 0x4024
                           004024  2422 _AX5043_PINFUNCIRQ	=	0x4024
                           004026  2423 G$AX5043_PINFUNCPWRAMP$0$0 == 0x4026
                           004026  2424 _AX5043_PINFUNCPWRAMP	=	0x4026
                           004021  2425 G$AX5043_PINFUNCSYSCLK$0$0 == 0x4021
                           004021  2426 _AX5043_PINFUNCSYSCLK	=	0x4021
                           004020  2427 G$AX5043_PINSTATE$0$0 == 0x4020
                           004020  2428 _AX5043_PINSTATE	=	0x4020
                           004233  2429 G$AX5043_PKTACCEPTFLAGS$0$0 == 0x4233
                           004233  2430 _AX5043_PKTACCEPTFLAGS	=	0x4233
                           004230  2431 G$AX5043_PKTCHUNKSIZE$0$0 == 0x4230
                           004230  2432 _AX5043_PKTCHUNKSIZE	=	0x4230
                           004231  2433 G$AX5043_PKTMISCFLAGS$0$0 == 0x4231
                           004231  2434 _AX5043_PKTMISCFLAGS	=	0x4231
                           004232  2435 G$AX5043_PKTSTOREFLAGS$0$0 == 0x4232
                           004232  2436 _AX5043_PKTSTOREFLAGS	=	0x4232
                           004031  2437 G$AX5043_PLLCPI$0$0 == 0x4031
                           004031  2438 _AX5043_PLLCPI	=	0x4031
                           004039  2439 G$AX5043_PLLCPIBOOST$0$0 == 0x4039
                           004039  2440 _AX5043_PLLCPIBOOST	=	0x4039
                           004182  2441 G$AX5043_PLLLOCKDET$0$0 == 0x4182
                           004182  2442 _AX5043_PLLLOCKDET	=	0x4182
                           004030  2443 G$AX5043_PLLLOOP$0$0 == 0x4030
                           004030  2444 _AX5043_PLLLOOP	=	0x4030
                           004038  2445 G$AX5043_PLLLOOPBOOST$0$0 == 0x4038
                           004038  2446 _AX5043_PLLLOOPBOOST	=	0x4038
                           004033  2447 G$AX5043_PLLRANGINGA$0$0 == 0x4033
                           004033  2448 _AX5043_PLLRANGINGA	=	0x4033
                           00403B  2449 G$AX5043_PLLRANGINGB$0$0 == 0x403b
                           00403B  2450 _AX5043_PLLRANGINGB	=	0x403b
                           004183  2451 G$AX5043_PLLRNGCLK$0$0 == 0x4183
                           004183  2452 _AX5043_PLLRNGCLK	=	0x4183
                           004032  2453 G$AX5043_PLLVCODIV$0$0 == 0x4032
                           004032  2454 _AX5043_PLLVCODIV	=	0x4032
                           004180  2455 G$AX5043_PLLVCOI$0$0 == 0x4180
                           004180  2456 _AX5043_PLLVCOI	=	0x4180
                           004181  2457 G$AX5043_PLLVCOIR$0$0 == 0x4181
                           004181  2458 _AX5043_PLLVCOIR	=	0x4181
                           004005  2459 G$AX5043_POWIRQMASK$0$0 == 0x4005
                           004005  2460 _AX5043_POWIRQMASK	=	0x4005
                           004003  2461 G$AX5043_POWSTAT$0$0 == 0x4003
                           004003  2462 _AX5043_POWSTAT	=	0x4003
                           004004  2463 G$AX5043_POWSTICKYSTAT$0$0 == 0x4004
                           004004  2464 _AX5043_POWSTICKYSTAT	=	0x4004
                           004027  2465 G$AX5043_PWRAMP$0$0 == 0x4027
                           004027  2466 _AX5043_PWRAMP	=	0x4027
                           004002  2467 G$AX5043_PWRMODE$0$0 == 0x4002
                           004002  2468 _AX5043_PWRMODE	=	0x4002
                           004009  2469 G$AX5043_RADIOEVENTMASK0$0$0 == 0x4009
                           004009  2470 _AX5043_RADIOEVENTMASK0	=	0x4009
                           004008  2471 G$AX5043_RADIOEVENTMASK1$0$0 == 0x4008
                           004008  2472 _AX5043_RADIOEVENTMASK1	=	0x4008
                           00400F  2473 G$AX5043_RADIOEVENTREQ0$0$0 == 0x400f
                           00400F  2474 _AX5043_RADIOEVENTREQ0	=	0x400f
                           00400E  2475 G$AX5043_RADIOEVENTREQ1$0$0 == 0x400e
                           00400E  2476 _AX5043_RADIOEVENTREQ1	=	0x400e
                           00401C  2477 G$AX5043_RADIOSTATE$0$0 == 0x401c
                           00401C  2478 _AX5043_RADIOSTATE	=	0x401c
                           004040  2479 G$AX5043_RSSI$0$0 == 0x4040
                           004040  2480 _AX5043_RSSI	=	0x4040
                           00422D  2481 G$AX5043_RSSIABSTHR$0$0 == 0x422d
                           00422D  2482 _AX5043_RSSIABSTHR	=	0x422d
                           00422C  2483 G$AX5043_RSSIREFERENCE$0$0 == 0x422c
                           00422C  2484 _AX5043_RSSIREFERENCE	=	0x422c
                           004105  2485 G$AX5043_RXDATARATE0$0$0 == 0x4105
                           004105  2486 _AX5043_RXDATARATE0	=	0x4105
                           004104  2487 G$AX5043_RXDATARATE1$0$0 == 0x4104
                           004104  2488 _AX5043_RXDATARATE1	=	0x4104
                           004103  2489 G$AX5043_RXDATARATE2$0$0 == 0x4103
                           004103  2490 _AX5043_RXDATARATE2	=	0x4103
                           004001  2491 G$AX5043_SCRATCH$0$0 == 0x4001
                           004001  2492 _AX5043_SCRATCH	=	0x4001
                           004000  2493 G$AX5043_SILICONREVISION$0$0 == 0x4000
                           004000  2494 _AX5043_SILICONREVISION	=	0x4000
                           00405B  2495 G$AX5043_TIMER0$0$0 == 0x405b
                           00405B  2496 _AX5043_TIMER0	=	0x405b
                           00405A  2497 G$AX5043_TIMER1$0$0 == 0x405a
                           00405A  2498 _AX5043_TIMER1	=	0x405a
                           004059  2499 G$AX5043_TIMER2$0$0 == 0x4059
                           004059  2500 _AX5043_TIMER2	=	0x4059
                           004227  2501 G$AX5043_TMGRXAGC$0$0 == 0x4227
                           004227  2502 _AX5043_TMGRXAGC	=	0x4227
                           004223  2503 G$AX5043_TMGRXBOOST$0$0 == 0x4223
                           004223  2504 _AX5043_TMGRXBOOST	=	0x4223
                           004226  2505 G$AX5043_TMGRXCOARSEAGC$0$0 == 0x4226
                           004226  2506 _AX5043_TMGRXCOARSEAGC	=	0x4226
                           004225  2507 G$AX5043_TMGRXOFFSACQ$0$0 == 0x4225
                           004225  2508 _AX5043_TMGRXOFFSACQ	=	0x4225
                           004229  2509 G$AX5043_TMGRXPREAMBLE1$0$0 == 0x4229
                           004229  2510 _AX5043_TMGRXPREAMBLE1	=	0x4229
                           00422A  2511 G$AX5043_TMGRXPREAMBLE2$0$0 == 0x422a
                           00422A  2512 _AX5043_TMGRXPREAMBLE2	=	0x422a
                           00422B  2513 G$AX5043_TMGRXPREAMBLE3$0$0 == 0x422b
                           00422B  2514 _AX5043_TMGRXPREAMBLE3	=	0x422b
                           004228  2515 G$AX5043_TMGRXRSSI$0$0 == 0x4228
                           004228  2516 _AX5043_TMGRXRSSI	=	0x4228
                           004224  2517 G$AX5043_TMGRXSETTLE$0$0 == 0x4224
                           004224  2518 _AX5043_TMGRXSETTLE	=	0x4224
                           004220  2519 G$AX5043_TMGTXBOOST$0$0 == 0x4220
                           004220  2520 _AX5043_TMGTXBOOST	=	0x4220
                           004221  2521 G$AX5043_TMGTXSETTLE$0$0 == 0x4221
                           004221  2522 _AX5043_TMGTXSETTLE	=	0x4221
                           004055  2523 G$AX5043_TRKAFSKDEMOD0$0$0 == 0x4055
                           004055  2524 _AX5043_TRKAFSKDEMOD0	=	0x4055
                           004054  2525 G$AX5043_TRKAFSKDEMOD1$0$0 == 0x4054
                           004054  2526 _AX5043_TRKAFSKDEMOD1	=	0x4054
                           004049  2527 G$AX5043_TRKAMPLITUDE0$0$0 == 0x4049
                           004049  2528 _AX5043_TRKAMPLITUDE0	=	0x4049
                           004048  2529 G$AX5043_TRKAMPLITUDE1$0$0 == 0x4048
                           004048  2530 _AX5043_TRKAMPLITUDE1	=	0x4048
                           004047  2531 G$AX5043_TRKDATARATE0$0$0 == 0x4047
                           004047  2532 _AX5043_TRKDATARATE0	=	0x4047
                           004046  2533 G$AX5043_TRKDATARATE1$0$0 == 0x4046
                           004046  2534 _AX5043_TRKDATARATE1	=	0x4046
                           004045  2535 G$AX5043_TRKDATARATE2$0$0 == 0x4045
                           004045  2536 _AX5043_TRKDATARATE2	=	0x4045
                           004051  2537 G$AX5043_TRKFREQ0$0$0 == 0x4051
                           004051  2538 _AX5043_TRKFREQ0	=	0x4051
                           004050  2539 G$AX5043_TRKFREQ1$0$0 == 0x4050
                           004050  2540 _AX5043_TRKFREQ1	=	0x4050
                           004053  2541 G$AX5043_TRKFSKDEMOD0$0$0 == 0x4053
                           004053  2542 _AX5043_TRKFSKDEMOD0	=	0x4053
                           004052  2543 G$AX5043_TRKFSKDEMOD1$0$0 == 0x4052
                           004052  2544 _AX5043_TRKFSKDEMOD1	=	0x4052
                           00404B  2545 G$AX5043_TRKPHASE0$0$0 == 0x404b
                           00404B  2546 _AX5043_TRKPHASE0	=	0x404b
                           00404A  2547 G$AX5043_TRKPHASE1$0$0 == 0x404a
                           00404A  2548 _AX5043_TRKPHASE1	=	0x404a
                           00404F  2549 G$AX5043_TRKRFFREQ0$0$0 == 0x404f
                           00404F  2550 _AX5043_TRKRFFREQ0	=	0x404f
                           00404E  2551 G$AX5043_TRKRFFREQ1$0$0 == 0x404e
                           00404E  2552 _AX5043_TRKRFFREQ1	=	0x404e
                           00404D  2553 G$AX5043_TRKRFFREQ2$0$0 == 0x404d
                           00404D  2554 _AX5043_TRKRFFREQ2	=	0x404d
                           004169  2555 G$AX5043_TXPWRCOEFFA0$0$0 == 0x4169
                           004169  2556 _AX5043_TXPWRCOEFFA0	=	0x4169
                           004168  2557 G$AX5043_TXPWRCOEFFA1$0$0 == 0x4168
                           004168  2558 _AX5043_TXPWRCOEFFA1	=	0x4168
                           00416B  2559 G$AX5043_TXPWRCOEFFB0$0$0 == 0x416b
                           00416B  2560 _AX5043_TXPWRCOEFFB0	=	0x416b
                           00416A  2561 G$AX5043_TXPWRCOEFFB1$0$0 == 0x416a
                           00416A  2562 _AX5043_TXPWRCOEFFB1	=	0x416a
                           00416D  2563 G$AX5043_TXPWRCOEFFC0$0$0 == 0x416d
                           00416D  2564 _AX5043_TXPWRCOEFFC0	=	0x416d
                           00416C  2565 G$AX5043_TXPWRCOEFFC1$0$0 == 0x416c
                           00416C  2566 _AX5043_TXPWRCOEFFC1	=	0x416c
                           00416F  2567 G$AX5043_TXPWRCOEFFD0$0$0 == 0x416f
                           00416F  2568 _AX5043_TXPWRCOEFFD0	=	0x416f
                           00416E  2569 G$AX5043_TXPWRCOEFFD1$0$0 == 0x416e
                           00416E  2570 _AX5043_TXPWRCOEFFD1	=	0x416e
                           004171  2571 G$AX5043_TXPWRCOEFFE0$0$0 == 0x4171
                           004171  2572 _AX5043_TXPWRCOEFFE0	=	0x4171
                           004170  2573 G$AX5043_TXPWRCOEFFE1$0$0 == 0x4170
                           004170  2574 _AX5043_TXPWRCOEFFE1	=	0x4170
                           004167  2575 G$AX5043_TXRATE0$0$0 == 0x4167
                           004167  2576 _AX5043_TXRATE0	=	0x4167
                           004166  2577 G$AX5043_TXRATE1$0$0 == 0x4166
                           004166  2578 _AX5043_TXRATE1	=	0x4166
                           004165  2579 G$AX5043_TXRATE2$0$0 == 0x4165
                           004165  2580 _AX5043_TXRATE2	=	0x4165
                           00406B  2581 G$AX5043_WAKEUP0$0$0 == 0x406b
                           00406B  2582 _AX5043_WAKEUP0	=	0x406b
                           00406A  2583 G$AX5043_WAKEUP1$0$0 == 0x406a
                           00406A  2584 _AX5043_WAKEUP1	=	0x406a
                           00406D  2585 G$AX5043_WAKEUPFREQ0$0$0 == 0x406d
                           00406D  2586 _AX5043_WAKEUPFREQ0	=	0x406d
                           00406C  2587 G$AX5043_WAKEUPFREQ1$0$0 == 0x406c
                           00406C  2588 _AX5043_WAKEUPFREQ1	=	0x406c
                           004069  2589 G$AX5043_WAKEUPTIMER0$0$0 == 0x4069
                           004069  2590 _AX5043_WAKEUPTIMER0	=	0x4069
                           004068  2591 G$AX5043_WAKEUPTIMER1$0$0 == 0x4068
                           004068  2592 _AX5043_WAKEUPTIMER1	=	0x4068
                           00406E  2593 G$AX5043_WAKEUPXOEARLY$0$0 == 0x406e
                           00406E  2594 _AX5043_WAKEUPXOEARLY	=	0x406e
                           004184  2595 G$AX5043_XTALCAP$0$0 == 0x4184
                           004184  2596 _AX5043_XTALCAP	=	0x4184
                           00401D  2597 G$AX5043_XTALSTATUS$0$0 == 0x401d
                           00401D  2598 _AX5043_XTALSTATUS	=	0x401d
                           004122  2599 G$AX5043_AGCAHYST0$0$0 == 0x4122
                           004122  2600 _AX5043_AGCAHYST0	=	0x4122
                           004132  2601 G$AX5043_AGCAHYST1$0$0 == 0x4132
                           004132  2602 _AX5043_AGCAHYST1	=	0x4132
                           004142  2603 G$AX5043_AGCAHYST2$0$0 == 0x4142
                           004142  2604 _AX5043_AGCAHYST2	=	0x4142
                           004152  2605 G$AX5043_AGCAHYST3$0$0 == 0x4152
                           004152  2606 _AX5043_AGCAHYST3	=	0x4152
                           004120  2607 G$AX5043_AGCGAIN0$0$0 == 0x4120
                           004120  2608 _AX5043_AGCGAIN0	=	0x4120
                           004130  2609 G$AX5043_AGCGAIN1$0$0 == 0x4130
                           004130  2610 _AX5043_AGCGAIN1	=	0x4130
                           004140  2611 G$AX5043_AGCGAIN2$0$0 == 0x4140
                           004140  2612 _AX5043_AGCGAIN2	=	0x4140
                           004150  2613 G$AX5043_AGCGAIN3$0$0 == 0x4150
                           004150  2614 _AX5043_AGCGAIN3	=	0x4150
                           004123  2615 G$AX5043_AGCMINMAX0$0$0 == 0x4123
                           004123  2616 _AX5043_AGCMINMAX0	=	0x4123
                           004133  2617 G$AX5043_AGCMINMAX1$0$0 == 0x4133
                           004133  2618 _AX5043_AGCMINMAX1	=	0x4133
                           004143  2619 G$AX5043_AGCMINMAX2$0$0 == 0x4143
                           004143  2620 _AX5043_AGCMINMAX2	=	0x4143
                           004153  2621 G$AX5043_AGCMINMAX3$0$0 == 0x4153
                           004153  2622 _AX5043_AGCMINMAX3	=	0x4153
                           004121  2623 G$AX5043_AGCTARGET0$0$0 == 0x4121
                           004121  2624 _AX5043_AGCTARGET0	=	0x4121
                           004131  2625 G$AX5043_AGCTARGET1$0$0 == 0x4131
                           004131  2626 _AX5043_AGCTARGET1	=	0x4131
                           004141  2627 G$AX5043_AGCTARGET2$0$0 == 0x4141
                           004141  2628 _AX5043_AGCTARGET2	=	0x4141
                           004151  2629 G$AX5043_AGCTARGET3$0$0 == 0x4151
                           004151  2630 _AX5043_AGCTARGET3	=	0x4151
                           00412B  2631 G$AX5043_AMPLITUDEGAIN0$0$0 == 0x412b
                           00412B  2632 _AX5043_AMPLITUDEGAIN0	=	0x412b
                           00413B  2633 G$AX5043_AMPLITUDEGAIN1$0$0 == 0x413b
                           00413B  2634 _AX5043_AMPLITUDEGAIN1	=	0x413b
                           00414B  2635 G$AX5043_AMPLITUDEGAIN2$0$0 == 0x414b
                           00414B  2636 _AX5043_AMPLITUDEGAIN2	=	0x414b
                           00415B  2637 G$AX5043_AMPLITUDEGAIN3$0$0 == 0x415b
                           00415B  2638 _AX5043_AMPLITUDEGAIN3	=	0x415b
                           00412F  2639 G$AX5043_BBOFFSRES0$0$0 == 0x412f
                           00412F  2640 _AX5043_BBOFFSRES0	=	0x412f
                           00413F  2641 G$AX5043_BBOFFSRES1$0$0 == 0x413f
                           00413F  2642 _AX5043_BBOFFSRES1	=	0x413f
                           00414F  2643 G$AX5043_BBOFFSRES2$0$0 == 0x414f
                           00414F  2644 _AX5043_BBOFFSRES2	=	0x414f
                           00415F  2645 G$AX5043_BBOFFSRES3$0$0 == 0x415f
                           00415F  2646 _AX5043_BBOFFSRES3	=	0x415f
                           004125  2647 G$AX5043_DRGAIN0$0$0 == 0x4125
                           004125  2648 _AX5043_DRGAIN0	=	0x4125
                           004135  2649 G$AX5043_DRGAIN1$0$0 == 0x4135
                           004135  2650 _AX5043_DRGAIN1	=	0x4135
                           004145  2651 G$AX5043_DRGAIN2$0$0 == 0x4145
                           004145  2652 _AX5043_DRGAIN2	=	0x4145
                           004155  2653 G$AX5043_DRGAIN3$0$0 == 0x4155
                           004155  2654 _AX5043_DRGAIN3	=	0x4155
                           00412E  2655 G$AX5043_FOURFSK0$0$0 == 0x412e
                           00412E  2656 _AX5043_FOURFSK0	=	0x412e
                           00413E  2657 G$AX5043_FOURFSK1$0$0 == 0x413e
                           00413E  2658 _AX5043_FOURFSK1	=	0x413e
                           00414E  2659 G$AX5043_FOURFSK2$0$0 == 0x414e
                           00414E  2660 _AX5043_FOURFSK2	=	0x414e
                           00415E  2661 G$AX5043_FOURFSK3$0$0 == 0x415e
                           00415E  2662 _AX5043_FOURFSK3	=	0x415e
                           00412D  2663 G$AX5043_FREQDEV00$0$0 == 0x412d
                           00412D  2664 _AX5043_FREQDEV00	=	0x412d
                           00413D  2665 G$AX5043_FREQDEV01$0$0 == 0x413d
                           00413D  2666 _AX5043_FREQDEV01	=	0x413d
                           00414D  2667 G$AX5043_FREQDEV02$0$0 == 0x414d
                           00414D  2668 _AX5043_FREQDEV02	=	0x414d
                           00415D  2669 G$AX5043_FREQDEV03$0$0 == 0x415d
                           00415D  2670 _AX5043_FREQDEV03	=	0x415d
                           00412C  2671 G$AX5043_FREQDEV10$0$0 == 0x412c
                           00412C  2672 _AX5043_FREQDEV10	=	0x412c
                           00413C  2673 G$AX5043_FREQDEV11$0$0 == 0x413c
                           00413C  2674 _AX5043_FREQDEV11	=	0x413c
                           00414C  2675 G$AX5043_FREQDEV12$0$0 == 0x414c
                           00414C  2676 _AX5043_FREQDEV12	=	0x414c
                           00415C  2677 G$AX5043_FREQDEV13$0$0 == 0x415c
                           00415C  2678 _AX5043_FREQDEV13	=	0x415c
                           004127  2679 G$AX5043_FREQUENCYGAINA0$0$0 == 0x4127
                           004127  2680 _AX5043_FREQUENCYGAINA0	=	0x4127
                           004137  2681 G$AX5043_FREQUENCYGAINA1$0$0 == 0x4137
                           004137  2682 _AX5043_FREQUENCYGAINA1	=	0x4137
                           004147  2683 G$AX5043_FREQUENCYGAINA2$0$0 == 0x4147
                           004147  2684 _AX5043_FREQUENCYGAINA2	=	0x4147
                           004157  2685 G$AX5043_FREQUENCYGAINA3$0$0 == 0x4157
                           004157  2686 _AX5043_FREQUENCYGAINA3	=	0x4157
                           004128  2687 G$AX5043_FREQUENCYGAINB0$0$0 == 0x4128
                           004128  2688 _AX5043_FREQUENCYGAINB0	=	0x4128
                           004138  2689 G$AX5043_FREQUENCYGAINB1$0$0 == 0x4138
                           004138  2690 _AX5043_FREQUENCYGAINB1	=	0x4138
                           004148  2691 G$AX5043_FREQUENCYGAINB2$0$0 == 0x4148
                           004148  2692 _AX5043_FREQUENCYGAINB2	=	0x4148
                           004158  2693 G$AX5043_FREQUENCYGAINB3$0$0 == 0x4158
                           004158  2694 _AX5043_FREQUENCYGAINB3	=	0x4158
                           004129  2695 G$AX5043_FREQUENCYGAINC0$0$0 == 0x4129
                           004129  2696 _AX5043_FREQUENCYGAINC0	=	0x4129
                           004139  2697 G$AX5043_FREQUENCYGAINC1$0$0 == 0x4139
                           004139  2698 _AX5043_FREQUENCYGAINC1	=	0x4139
                           004149  2699 G$AX5043_FREQUENCYGAINC2$0$0 == 0x4149
                           004149  2700 _AX5043_FREQUENCYGAINC2	=	0x4149
                           004159  2701 G$AX5043_FREQUENCYGAINC3$0$0 == 0x4159
                           004159  2702 _AX5043_FREQUENCYGAINC3	=	0x4159
                           00412A  2703 G$AX5043_FREQUENCYGAIND0$0$0 == 0x412a
                           00412A  2704 _AX5043_FREQUENCYGAIND0	=	0x412a
                           00413A  2705 G$AX5043_FREQUENCYGAIND1$0$0 == 0x413a
                           00413A  2706 _AX5043_FREQUENCYGAIND1	=	0x413a
                           00414A  2707 G$AX5043_FREQUENCYGAIND2$0$0 == 0x414a
                           00414A  2708 _AX5043_FREQUENCYGAIND2	=	0x414a
                           00415A  2709 G$AX5043_FREQUENCYGAIND3$0$0 == 0x415a
                           00415A  2710 _AX5043_FREQUENCYGAIND3	=	0x415a
                           004116  2711 G$AX5043_FREQUENCYLEAK$0$0 == 0x4116
                           004116  2712 _AX5043_FREQUENCYLEAK	=	0x4116
                           004126  2713 G$AX5043_PHASEGAIN0$0$0 == 0x4126
                           004126  2714 _AX5043_PHASEGAIN0	=	0x4126
                           004136  2715 G$AX5043_PHASEGAIN1$0$0 == 0x4136
                           004136  2716 _AX5043_PHASEGAIN1	=	0x4136
                           004146  2717 G$AX5043_PHASEGAIN2$0$0 == 0x4146
                           004146  2718 _AX5043_PHASEGAIN2	=	0x4146
                           004156  2719 G$AX5043_PHASEGAIN3$0$0 == 0x4156
                           004156  2720 _AX5043_PHASEGAIN3	=	0x4156
                           004207  2721 G$AX5043_PKTADDR0$0$0 == 0x4207
                           004207  2722 _AX5043_PKTADDR0	=	0x4207
                           004206  2723 G$AX5043_PKTADDR1$0$0 == 0x4206
                           004206  2724 _AX5043_PKTADDR1	=	0x4206
                           004205  2725 G$AX5043_PKTADDR2$0$0 == 0x4205
                           004205  2726 _AX5043_PKTADDR2	=	0x4205
                           004204  2727 G$AX5043_PKTADDR3$0$0 == 0x4204
                           004204  2728 _AX5043_PKTADDR3	=	0x4204
                           004200  2729 G$AX5043_PKTADDRCFG$0$0 == 0x4200
                           004200  2730 _AX5043_PKTADDRCFG	=	0x4200
                           00420B  2731 G$AX5043_PKTADDRMASK0$0$0 == 0x420b
                           00420B  2732 _AX5043_PKTADDRMASK0	=	0x420b
                           00420A  2733 G$AX5043_PKTADDRMASK1$0$0 == 0x420a
                           00420A  2734 _AX5043_PKTADDRMASK1	=	0x420a
                           004209  2735 G$AX5043_PKTADDRMASK2$0$0 == 0x4209
                           004209  2736 _AX5043_PKTADDRMASK2	=	0x4209
                           004208  2737 G$AX5043_PKTADDRMASK3$0$0 == 0x4208
                           004208  2738 _AX5043_PKTADDRMASK3	=	0x4208
                           004201  2739 G$AX5043_PKTLENCFG$0$0 == 0x4201
                           004201  2740 _AX5043_PKTLENCFG	=	0x4201
                           004202  2741 G$AX5043_PKTLENOFFSET$0$0 == 0x4202
                           004202  2742 _AX5043_PKTLENOFFSET	=	0x4202
                           004203  2743 G$AX5043_PKTMAXLEN$0$0 == 0x4203
                           004203  2744 _AX5043_PKTMAXLEN	=	0x4203
                           004118  2745 G$AX5043_RXPARAMCURSET$0$0 == 0x4118
                           004118  2746 _AX5043_RXPARAMCURSET	=	0x4118
                           004117  2747 G$AX5043_RXPARAMSETS$0$0 == 0x4117
                           004117  2748 _AX5043_RXPARAMSETS	=	0x4117
                           004124  2749 G$AX5043_TIMEGAIN0$0$0 == 0x4124
                           004124  2750 _AX5043_TIMEGAIN0	=	0x4124
                           004134  2751 G$AX5043_TIMEGAIN1$0$0 == 0x4134
                           004134  2752 _AX5043_TIMEGAIN1	=	0x4134
                           004144  2753 G$AX5043_TIMEGAIN2$0$0 == 0x4144
                           004144  2754 _AX5043_TIMEGAIN2	=	0x4144
                           004154  2755 G$AX5043_TIMEGAIN3$0$0 == 0x4154
                           004154  2756 _AX5043_TIMEGAIN3	=	0x4154
                           005114  2757 G$AX5043_AFSKCTRLNB$0$0 == 0x5114
                           005114  2758 _AX5043_AFSKCTRLNB	=	0x5114
                           005113  2759 G$AX5043_AFSKMARK0NB$0$0 == 0x5113
                           005113  2760 _AX5043_AFSKMARK0NB	=	0x5113
                           005112  2761 G$AX5043_AFSKMARK1NB$0$0 == 0x5112
                           005112  2762 _AX5043_AFSKMARK1NB	=	0x5112
                           005111  2763 G$AX5043_AFSKSPACE0NB$0$0 == 0x5111
                           005111  2764 _AX5043_AFSKSPACE0NB	=	0x5111
                           005110  2765 G$AX5043_AFSKSPACE1NB$0$0 == 0x5110
                           005110  2766 _AX5043_AFSKSPACE1NB	=	0x5110
                           005043  2767 G$AX5043_AGCCOUNTERNB$0$0 == 0x5043
                           005043  2768 _AX5043_AGCCOUNTERNB	=	0x5043
                           005115  2769 G$AX5043_AMPLFILTERNB$0$0 == 0x5115
                           005115  2770 _AX5043_AMPLFILTERNB	=	0x5115
                           005189  2771 G$AX5043_BBOFFSCAPNB$0$0 == 0x5189
                           005189  2772 _AX5043_BBOFFSCAPNB	=	0x5189
                           005188  2773 G$AX5043_BBTUNENB$0$0 == 0x5188
                           005188  2774 _AX5043_BBTUNENB	=	0x5188
                           005041  2775 G$AX5043_BGNDRSSINB$0$0 == 0x5041
                           005041  2776 _AX5043_BGNDRSSINB	=	0x5041
                           00522E  2777 G$AX5043_BGNDRSSIGAINNB$0$0 == 0x522e
                           00522E  2778 _AX5043_BGNDRSSIGAINNB	=	0x522e
                           00522F  2779 G$AX5043_BGNDRSSITHRNB$0$0 == 0x522f
                           00522F  2780 _AX5043_BGNDRSSITHRNB	=	0x522f
                           005017  2781 G$AX5043_CRCINIT0NB$0$0 == 0x5017
                           005017  2782 _AX5043_CRCINIT0NB	=	0x5017
                           005016  2783 G$AX5043_CRCINIT1NB$0$0 == 0x5016
                           005016  2784 _AX5043_CRCINIT1NB	=	0x5016
                           005015  2785 G$AX5043_CRCINIT2NB$0$0 == 0x5015
                           005015  2786 _AX5043_CRCINIT2NB	=	0x5015
                           005014  2787 G$AX5043_CRCINIT3NB$0$0 == 0x5014
                           005014  2788 _AX5043_CRCINIT3NB	=	0x5014
                           005332  2789 G$AX5043_DACCONFIGNB$0$0 == 0x5332
                           005332  2790 _AX5043_DACCONFIGNB	=	0x5332
                           005331  2791 G$AX5043_DACVALUE0NB$0$0 == 0x5331
                           005331  2792 _AX5043_DACVALUE0NB	=	0x5331
                           005330  2793 G$AX5043_DACVALUE1NB$0$0 == 0x5330
                           005330  2794 _AX5043_DACVALUE1NB	=	0x5330
                           005102  2795 G$AX5043_DECIMATIONNB$0$0 == 0x5102
                           005102  2796 _AX5043_DECIMATIONNB	=	0x5102
                           005042  2797 G$AX5043_DIVERSITYNB$0$0 == 0x5042
                           005042  2798 _AX5043_DIVERSITYNB	=	0x5042
                           005011  2799 G$AX5043_ENCODINGNB$0$0 == 0x5011
                           005011  2800 _AX5043_ENCODINGNB	=	0x5011
                           005018  2801 G$AX5043_FECNB$0$0 == 0x5018
                           005018  2802 _AX5043_FECNB	=	0x5018
                           00501A  2803 G$AX5043_FECSTATUSNB$0$0 == 0x501a
                           00501A  2804 _AX5043_FECSTATUSNB	=	0x501a
                           005019  2805 G$AX5043_FECSYNCNB$0$0 == 0x5019
                           005019  2806 _AX5043_FECSYNCNB	=	0x5019
                           00502B  2807 G$AX5043_FIFOCOUNT0NB$0$0 == 0x502b
                           00502B  2808 _AX5043_FIFOCOUNT0NB	=	0x502b
                           00502A  2809 G$AX5043_FIFOCOUNT1NB$0$0 == 0x502a
                           00502A  2810 _AX5043_FIFOCOUNT1NB	=	0x502a
                           005029  2811 G$AX5043_FIFODATANB$0$0 == 0x5029
                           005029  2812 _AX5043_FIFODATANB	=	0x5029
                           00502D  2813 G$AX5043_FIFOFREE0NB$0$0 == 0x502d
                           00502D  2814 _AX5043_FIFOFREE0NB	=	0x502d
                           00502C  2815 G$AX5043_FIFOFREE1NB$0$0 == 0x502c
                           00502C  2816 _AX5043_FIFOFREE1NB	=	0x502c
                           005028  2817 G$AX5043_FIFOSTATNB$0$0 == 0x5028
                           005028  2818 _AX5043_FIFOSTATNB	=	0x5028
                           00502F  2819 G$AX5043_FIFOTHRESH0NB$0$0 == 0x502f
                           00502F  2820 _AX5043_FIFOTHRESH0NB	=	0x502f
                           00502E  2821 G$AX5043_FIFOTHRESH1NB$0$0 == 0x502e
                           00502E  2822 _AX5043_FIFOTHRESH1NB	=	0x502e
                           005012  2823 G$AX5043_FRAMINGNB$0$0 == 0x5012
                           005012  2824 _AX5043_FRAMINGNB	=	0x5012
                           005037  2825 G$AX5043_FREQA0NB$0$0 == 0x5037
                           005037  2826 _AX5043_FREQA0NB	=	0x5037
                           005036  2827 G$AX5043_FREQA1NB$0$0 == 0x5036
                           005036  2828 _AX5043_FREQA1NB	=	0x5036
                           005035  2829 G$AX5043_FREQA2NB$0$0 == 0x5035
                           005035  2830 _AX5043_FREQA2NB	=	0x5035
                           005034  2831 G$AX5043_FREQA3NB$0$0 == 0x5034
                           005034  2832 _AX5043_FREQA3NB	=	0x5034
                           00503F  2833 G$AX5043_FREQB0NB$0$0 == 0x503f
                           00503F  2834 _AX5043_FREQB0NB	=	0x503f
                           00503E  2835 G$AX5043_FREQB1NB$0$0 == 0x503e
                           00503E  2836 _AX5043_FREQB1NB	=	0x503e
                           00503D  2837 G$AX5043_FREQB2NB$0$0 == 0x503d
                           00503D  2838 _AX5043_FREQB2NB	=	0x503d
                           00503C  2839 G$AX5043_FREQB3NB$0$0 == 0x503c
                           00503C  2840 _AX5043_FREQB3NB	=	0x503c
                           005163  2841 G$AX5043_FSKDEV0NB$0$0 == 0x5163
                           005163  2842 _AX5043_FSKDEV0NB	=	0x5163
                           005162  2843 G$AX5043_FSKDEV1NB$0$0 == 0x5162
                           005162  2844 _AX5043_FSKDEV1NB	=	0x5162
                           005161  2845 G$AX5043_FSKDEV2NB$0$0 == 0x5161
                           005161  2846 _AX5043_FSKDEV2NB	=	0x5161
                           00510D  2847 G$AX5043_FSKDMAX0NB$0$0 == 0x510d
                           00510D  2848 _AX5043_FSKDMAX0NB	=	0x510d
                           00510C  2849 G$AX5043_FSKDMAX1NB$0$0 == 0x510c
                           00510C  2850 _AX5043_FSKDMAX1NB	=	0x510c
                           00510F  2851 G$AX5043_FSKDMIN0NB$0$0 == 0x510f
                           00510F  2852 _AX5043_FSKDMIN0NB	=	0x510f
                           00510E  2853 G$AX5043_FSKDMIN1NB$0$0 == 0x510e
                           00510E  2854 _AX5043_FSKDMIN1NB	=	0x510e
                           005309  2855 G$AX5043_GPADC13VALUE0NB$0$0 == 0x5309
                           005309  2856 _AX5043_GPADC13VALUE0NB	=	0x5309
                           005308  2857 G$AX5043_GPADC13VALUE1NB$0$0 == 0x5308
                           005308  2858 _AX5043_GPADC13VALUE1NB	=	0x5308
                           005300  2859 G$AX5043_GPADCCTRLNB$0$0 == 0x5300
                           005300  2860 _AX5043_GPADCCTRLNB	=	0x5300
                           005301  2861 G$AX5043_GPADCPERIODNB$0$0 == 0x5301
                           005301  2862 _AX5043_GPADCPERIODNB	=	0x5301
                           005101  2863 G$AX5043_IFFREQ0NB$0$0 == 0x5101
                           005101  2864 _AX5043_IFFREQ0NB	=	0x5101
                           005100  2865 G$AX5043_IFFREQ1NB$0$0 == 0x5100
                           005100  2866 _AX5043_IFFREQ1NB	=	0x5100
                           00500B  2867 G$AX5043_IRQINVERSION0NB$0$0 == 0x500b
                           00500B  2868 _AX5043_IRQINVERSION0NB	=	0x500b
                           00500A  2869 G$AX5043_IRQINVERSION1NB$0$0 == 0x500a
                           00500A  2870 _AX5043_IRQINVERSION1NB	=	0x500a
                           005007  2871 G$AX5043_IRQMASK0NB$0$0 == 0x5007
                           005007  2872 _AX5043_IRQMASK0NB	=	0x5007
                           005006  2873 G$AX5043_IRQMASK1NB$0$0 == 0x5006
                           005006  2874 _AX5043_IRQMASK1NB	=	0x5006
                           00500D  2875 G$AX5043_IRQREQUEST0NB$0$0 == 0x500d
                           00500D  2876 _AX5043_IRQREQUEST0NB	=	0x500d
                           00500C  2877 G$AX5043_IRQREQUEST1NB$0$0 == 0x500c
                           00500C  2878 _AX5043_IRQREQUEST1NB	=	0x500c
                           005310  2879 G$AX5043_LPOSCCONFIGNB$0$0 == 0x5310
                           005310  2880 _AX5043_LPOSCCONFIGNB	=	0x5310
                           005317  2881 G$AX5043_LPOSCFREQ0NB$0$0 == 0x5317
                           005317  2882 _AX5043_LPOSCFREQ0NB	=	0x5317
                           005316  2883 G$AX5043_LPOSCFREQ1NB$0$0 == 0x5316
                           005316  2884 _AX5043_LPOSCFREQ1NB	=	0x5316
                           005313  2885 G$AX5043_LPOSCKFILT0NB$0$0 == 0x5313
                           005313  2886 _AX5043_LPOSCKFILT0NB	=	0x5313
                           005312  2887 G$AX5043_LPOSCKFILT1NB$0$0 == 0x5312
                           005312  2888 _AX5043_LPOSCKFILT1NB	=	0x5312
                           005319  2889 G$AX5043_LPOSCPER0NB$0$0 == 0x5319
                           005319  2890 _AX5043_LPOSCPER0NB	=	0x5319
                           005318  2891 G$AX5043_LPOSCPER1NB$0$0 == 0x5318
                           005318  2892 _AX5043_LPOSCPER1NB	=	0x5318
                           005315  2893 G$AX5043_LPOSCREF0NB$0$0 == 0x5315
                           005315  2894 _AX5043_LPOSCREF0NB	=	0x5315
                           005314  2895 G$AX5043_LPOSCREF1NB$0$0 == 0x5314
                           005314  2896 _AX5043_LPOSCREF1NB	=	0x5314
                           005311  2897 G$AX5043_LPOSCSTATUSNB$0$0 == 0x5311
                           005311  2898 _AX5043_LPOSCSTATUSNB	=	0x5311
                           005214  2899 G$AX5043_MATCH0LENNB$0$0 == 0x5214
                           005214  2900 _AX5043_MATCH0LENNB	=	0x5214
                           005216  2901 G$AX5043_MATCH0MAXNB$0$0 == 0x5216
                           005216  2902 _AX5043_MATCH0MAXNB	=	0x5216
                           005215  2903 G$AX5043_MATCH0MINNB$0$0 == 0x5215
                           005215  2904 _AX5043_MATCH0MINNB	=	0x5215
                           005213  2905 G$AX5043_MATCH0PAT0NB$0$0 == 0x5213
                           005213  2906 _AX5043_MATCH0PAT0NB	=	0x5213
                           005212  2907 G$AX5043_MATCH0PAT1NB$0$0 == 0x5212
                           005212  2908 _AX5043_MATCH0PAT1NB	=	0x5212
                           005211  2909 G$AX5043_MATCH0PAT2NB$0$0 == 0x5211
                           005211  2910 _AX5043_MATCH0PAT2NB	=	0x5211
                           005210  2911 G$AX5043_MATCH0PAT3NB$0$0 == 0x5210
                           005210  2912 _AX5043_MATCH0PAT3NB	=	0x5210
                           00521C  2913 G$AX5043_MATCH1LENNB$0$0 == 0x521c
                           00521C  2914 _AX5043_MATCH1LENNB	=	0x521c
                           00521E  2915 G$AX5043_MATCH1MAXNB$0$0 == 0x521e
                           00521E  2916 _AX5043_MATCH1MAXNB	=	0x521e
                           00521D  2917 G$AX5043_MATCH1MINNB$0$0 == 0x521d
                           00521D  2918 _AX5043_MATCH1MINNB	=	0x521d
                           005219  2919 G$AX5043_MATCH1PAT0NB$0$0 == 0x5219
                           005219  2920 _AX5043_MATCH1PAT0NB	=	0x5219
                           005218  2921 G$AX5043_MATCH1PAT1NB$0$0 == 0x5218
                           005218  2922 _AX5043_MATCH1PAT1NB	=	0x5218
                           005108  2923 G$AX5043_MAXDROFFSET0NB$0$0 == 0x5108
                           005108  2924 _AX5043_MAXDROFFSET0NB	=	0x5108
                           005107  2925 G$AX5043_MAXDROFFSET1NB$0$0 == 0x5107
                           005107  2926 _AX5043_MAXDROFFSET1NB	=	0x5107
                           005106  2927 G$AX5043_MAXDROFFSET2NB$0$0 == 0x5106
                           005106  2928 _AX5043_MAXDROFFSET2NB	=	0x5106
                           00510B  2929 G$AX5043_MAXRFOFFSET0NB$0$0 == 0x510b
                           00510B  2930 _AX5043_MAXRFOFFSET0NB	=	0x510b
                           00510A  2931 G$AX5043_MAXRFOFFSET1NB$0$0 == 0x510a
                           00510A  2932 _AX5043_MAXRFOFFSET1NB	=	0x510a
                           005109  2933 G$AX5043_MAXRFOFFSET2NB$0$0 == 0x5109
                           005109  2934 _AX5043_MAXRFOFFSET2NB	=	0x5109
                           005164  2935 G$AX5043_MODCFGANB$0$0 == 0x5164
                           005164  2936 _AX5043_MODCFGANB	=	0x5164
                           005160  2937 G$AX5043_MODCFGFNB$0$0 == 0x5160
                           005160  2938 _AX5043_MODCFGFNB	=	0x5160
                           005F5F  2939 G$AX5043_MODCFGPNB$0$0 == 0x5f5f
                           005F5F  2940 _AX5043_MODCFGPNB	=	0x5f5f
                           005010  2941 G$AX5043_MODULATIONNB$0$0 == 0x5010
                           005010  2942 _AX5043_MODULATIONNB	=	0x5010
                           005025  2943 G$AX5043_PINFUNCANTSELNB$0$0 == 0x5025
                           005025  2944 _AX5043_PINFUNCANTSELNB	=	0x5025
                           005023  2945 G$AX5043_PINFUNCDATANB$0$0 == 0x5023
                           005023  2946 _AX5043_PINFUNCDATANB	=	0x5023
                           005022  2947 G$AX5043_PINFUNCDCLKNB$0$0 == 0x5022
                           005022  2948 _AX5043_PINFUNCDCLKNB	=	0x5022
                           005024  2949 G$AX5043_PINFUNCIRQNB$0$0 == 0x5024
                           005024  2950 _AX5043_PINFUNCIRQNB	=	0x5024
                           005026  2951 G$AX5043_PINFUNCPWRAMPNB$0$0 == 0x5026
                           005026  2952 _AX5043_PINFUNCPWRAMPNB	=	0x5026
                           005021  2953 G$AX5043_PINFUNCSYSCLKNB$0$0 == 0x5021
                           005021  2954 _AX5043_PINFUNCSYSCLKNB	=	0x5021
                           005020  2955 G$AX5043_PINSTATENB$0$0 == 0x5020
                           005020  2956 _AX5043_PINSTATENB	=	0x5020
                           005233  2957 G$AX5043_PKTACCEPTFLAGSNB$0$0 == 0x5233
                           005233  2958 _AX5043_PKTACCEPTFLAGSNB	=	0x5233
                           005230  2959 G$AX5043_PKTCHUNKSIZENB$0$0 == 0x5230
                           005230  2960 _AX5043_PKTCHUNKSIZENB	=	0x5230
                           005231  2961 G$AX5043_PKTMISCFLAGSNB$0$0 == 0x5231
                           005231  2962 _AX5043_PKTMISCFLAGSNB	=	0x5231
                           005232  2963 G$AX5043_PKTSTOREFLAGSNB$0$0 == 0x5232
                           005232  2964 _AX5043_PKTSTOREFLAGSNB	=	0x5232
                           005031  2965 G$AX5043_PLLCPINB$0$0 == 0x5031
                           005031  2966 _AX5043_PLLCPINB	=	0x5031
                           005039  2967 G$AX5043_PLLCPIBOOSTNB$0$0 == 0x5039
                           005039  2968 _AX5043_PLLCPIBOOSTNB	=	0x5039
                           005182  2969 G$AX5043_PLLLOCKDETNB$0$0 == 0x5182
                           005182  2970 _AX5043_PLLLOCKDETNB	=	0x5182
                           005030  2971 G$AX5043_PLLLOOPNB$0$0 == 0x5030
                           005030  2972 _AX5043_PLLLOOPNB	=	0x5030
                           005038  2973 G$AX5043_PLLLOOPBOOSTNB$0$0 == 0x5038
                           005038  2974 _AX5043_PLLLOOPBOOSTNB	=	0x5038
                           005033  2975 G$AX5043_PLLRANGINGANB$0$0 == 0x5033
                           005033  2976 _AX5043_PLLRANGINGANB	=	0x5033
                           00503B  2977 G$AX5043_PLLRANGINGBNB$0$0 == 0x503b
                           00503B  2978 _AX5043_PLLRANGINGBNB	=	0x503b
                           005183  2979 G$AX5043_PLLRNGCLKNB$0$0 == 0x5183
                           005183  2980 _AX5043_PLLRNGCLKNB	=	0x5183
                           005032  2981 G$AX5043_PLLVCODIVNB$0$0 == 0x5032
                           005032  2982 _AX5043_PLLVCODIVNB	=	0x5032
                           005180  2983 G$AX5043_PLLVCOINB$0$0 == 0x5180
                           005180  2984 _AX5043_PLLVCOINB	=	0x5180
                           005181  2985 G$AX5043_PLLVCOIRNB$0$0 == 0x5181
                           005181  2986 _AX5043_PLLVCOIRNB	=	0x5181
                           005F08  2987 G$AX5043_POWCTRL1NB$0$0 == 0x5f08
                           005F08  2988 _AX5043_POWCTRL1NB	=	0x5f08
                           005005  2989 G$AX5043_POWIRQMASKNB$0$0 == 0x5005
                           005005  2990 _AX5043_POWIRQMASKNB	=	0x5005
                           005003  2991 G$AX5043_POWSTATNB$0$0 == 0x5003
                           005003  2992 _AX5043_POWSTATNB	=	0x5003
                           005004  2993 G$AX5043_POWSTICKYSTATNB$0$0 == 0x5004
                           005004  2994 _AX5043_POWSTICKYSTATNB	=	0x5004
                           005027  2995 G$AX5043_PWRAMPNB$0$0 == 0x5027
                           005027  2996 _AX5043_PWRAMPNB	=	0x5027
                           005002  2997 G$AX5043_PWRMODENB$0$0 == 0x5002
                           005002  2998 _AX5043_PWRMODENB	=	0x5002
                           005009  2999 G$AX5043_RADIOEVENTMASK0NB$0$0 == 0x5009
                           005009  3000 _AX5043_RADIOEVENTMASK0NB	=	0x5009
                           005008  3001 G$AX5043_RADIOEVENTMASK1NB$0$0 == 0x5008
                           005008  3002 _AX5043_RADIOEVENTMASK1NB	=	0x5008
                           00500F  3003 G$AX5043_RADIOEVENTREQ0NB$0$0 == 0x500f
                           00500F  3004 _AX5043_RADIOEVENTREQ0NB	=	0x500f
                           00500E  3005 G$AX5043_RADIOEVENTREQ1NB$0$0 == 0x500e
                           00500E  3006 _AX5043_RADIOEVENTREQ1NB	=	0x500e
                           00501C  3007 G$AX5043_RADIOSTATENB$0$0 == 0x501c
                           00501C  3008 _AX5043_RADIOSTATENB	=	0x501c
                           005F0D  3009 G$AX5043_REFNB$0$0 == 0x5f0d
                           005F0D  3010 _AX5043_REFNB	=	0x5f0d
                           005040  3011 G$AX5043_RSSINB$0$0 == 0x5040
                           005040  3012 _AX5043_RSSINB	=	0x5040
                           00522D  3013 G$AX5043_RSSIABSTHRNB$0$0 == 0x522d
                           00522D  3014 _AX5043_RSSIABSTHRNB	=	0x522d
                           00522C  3015 G$AX5043_RSSIREFERENCENB$0$0 == 0x522c
                           00522C  3016 _AX5043_RSSIREFERENCENB	=	0x522c
                           005105  3017 G$AX5043_RXDATARATE0NB$0$0 == 0x5105
                           005105  3018 _AX5043_RXDATARATE0NB	=	0x5105
                           005104  3019 G$AX5043_RXDATARATE1NB$0$0 == 0x5104
                           005104  3020 _AX5043_RXDATARATE1NB	=	0x5104
                           005103  3021 G$AX5043_RXDATARATE2NB$0$0 == 0x5103
                           005103  3022 _AX5043_RXDATARATE2NB	=	0x5103
                           005001  3023 G$AX5043_SCRATCHNB$0$0 == 0x5001
                           005001  3024 _AX5043_SCRATCHNB	=	0x5001
                           005000  3025 G$AX5043_SILICONREVISIONNB$0$0 == 0x5000
                           005000  3026 _AX5043_SILICONREVISIONNB	=	0x5000
                           00505B  3027 G$AX5043_TIMER0NB$0$0 == 0x505b
                           00505B  3028 _AX5043_TIMER0NB	=	0x505b
                           00505A  3029 G$AX5043_TIMER1NB$0$0 == 0x505a
                           00505A  3030 _AX5043_TIMER1NB	=	0x505a
                           005059  3031 G$AX5043_TIMER2NB$0$0 == 0x5059
                           005059  3032 _AX5043_TIMER2NB	=	0x5059
                           005227  3033 G$AX5043_TMGRXAGCNB$0$0 == 0x5227
                           005227  3034 _AX5043_TMGRXAGCNB	=	0x5227
                           005223  3035 G$AX5043_TMGRXBOOSTNB$0$0 == 0x5223
                           005223  3036 _AX5043_TMGRXBOOSTNB	=	0x5223
                           005226  3037 G$AX5043_TMGRXCOARSEAGCNB$0$0 == 0x5226
                           005226  3038 _AX5043_TMGRXCOARSEAGCNB	=	0x5226
                           005225  3039 G$AX5043_TMGRXOFFSACQNB$0$0 == 0x5225
                           005225  3040 _AX5043_TMGRXOFFSACQNB	=	0x5225
                           005229  3041 G$AX5043_TMGRXPREAMBLE1NB$0$0 == 0x5229
                           005229  3042 _AX5043_TMGRXPREAMBLE1NB	=	0x5229
                           00522A  3043 G$AX5043_TMGRXPREAMBLE2NB$0$0 == 0x522a
                           00522A  3044 _AX5043_TMGRXPREAMBLE2NB	=	0x522a
                           00522B  3045 G$AX5043_TMGRXPREAMBLE3NB$0$0 == 0x522b
                           00522B  3046 _AX5043_TMGRXPREAMBLE3NB	=	0x522b
                           005228  3047 G$AX5043_TMGRXRSSINB$0$0 == 0x5228
                           005228  3048 _AX5043_TMGRXRSSINB	=	0x5228
                           005224  3049 G$AX5043_TMGRXSETTLENB$0$0 == 0x5224
                           005224  3050 _AX5043_TMGRXSETTLENB	=	0x5224
                           005220  3051 G$AX5043_TMGTXBOOSTNB$0$0 == 0x5220
                           005220  3052 _AX5043_TMGTXBOOSTNB	=	0x5220
                           005221  3053 G$AX5043_TMGTXSETTLENB$0$0 == 0x5221
                           005221  3054 _AX5043_TMGTXSETTLENB	=	0x5221
                           005055  3055 G$AX5043_TRKAFSKDEMOD0NB$0$0 == 0x5055
                           005055  3056 _AX5043_TRKAFSKDEMOD0NB	=	0x5055
                           005054  3057 G$AX5043_TRKAFSKDEMOD1NB$0$0 == 0x5054
                           005054  3058 _AX5043_TRKAFSKDEMOD1NB	=	0x5054
                           005049  3059 G$AX5043_TRKAMPLITUDE0NB$0$0 == 0x5049
                           005049  3060 _AX5043_TRKAMPLITUDE0NB	=	0x5049
                           005048  3061 G$AX5043_TRKAMPLITUDE1NB$0$0 == 0x5048
                           005048  3062 _AX5043_TRKAMPLITUDE1NB	=	0x5048
                           005047  3063 G$AX5043_TRKDATARATE0NB$0$0 == 0x5047
                           005047  3064 _AX5043_TRKDATARATE0NB	=	0x5047
                           005046  3065 G$AX5043_TRKDATARATE1NB$0$0 == 0x5046
                           005046  3066 _AX5043_TRKDATARATE1NB	=	0x5046
                           005045  3067 G$AX5043_TRKDATARATE2NB$0$0 == 0x5045
                           005045  3068 _AX5043_TRKDATARATE2NB	=	0x5045
                           005051  3069 G$AX5043_TRKFREQ0NB$0$0 == 0x5051
                           005051  3070 _AX5043_TRKFREQ0NB	=	0x5051
                           005050  3071 G$AX5043_TRKFREQ1NB$0$0 == 0x5050
                           005050  3072 _AX5043_TRKFREQ1NB	=	0x5050
                           005053  3073 G$AX5043_TRKFSKDEMOD0NB$0$0 == 0x5053
                           005053  3074 _AX5043_TRKFSKDEMOD0NB	=	0x5053
                           005052  3075 G$AX5043_TRKFSKDEMOD1NB$0$0 == 0x5052
                           005052  3076 _AX5043_TRKFSKDEMOD1NB	=	0x5052
                           00504B  3077 G$AX5043_TRKPHASE0NB$0$0 == 0x504b
                           00504B  3078 _AX5043_TRKPHASE0NB	=	0x504b
                           00504A  3079 G$AX5043_TRKPHASE1NB$0$0 == 0x504a
                           00504A  3080 _AX5043_TRKPHASE1NB	=	0x504a
                           00504F  3081 G$AX5043_TRKRFFREQ0NB$0$0 == 0x504f
                           00504F  3082 _AX5043_TRKRFFREQ0NB	=	0x504f
                           00504E  3083 G$AX5043_TRKRFFREQ1NB$0$0 == 0x504e
                           00504E  3084 _AX5043_TRKRFFREQ1NB	=	0x504e
                           00504D  3085 G$AX5043_TRKRFFREQ2NB$0$0 == 0x504d
                           00504D  3086 _AX5043_TRKRFFREQ2NB	=	0x504d
                           005169  3087 G$AX5043_TXPWRCOEFFA0NB$0$0 == 0x5169
                           005169  3088 _AX5043_TXPWRCOEFFA0NB	=	0x5169
                           005168  3089 G$AX5043_TXPWRCOEFFA1NB$0$0 == 0x5168
                           005168  3090 _AX5043_TXPWRCOEFFA1NB	=	0x5168
                           00516B  3091 G$AX5043_TXPWRCOEFFB0NB$0$0 == 0x516b
                           00516B  3092 _AX5043_TXPWRCOEFFB0NB	=	0x516b
                           00516A  3093 G$AX5043_TXPWRCOEFFB1NB$0$0 == 0x516a
                           00516A  3094 _AX5043_TXPWRCOEFFB1NB	=	0x516a
                           00516D  3095 G$AX5043_TXPWRCOEFFC0NB$0$0 == 0x516d
                           00516D  3096 _AX5043_TXPWRCOEFFC0NB	=	0x516d
                           00516C  3097 G$AX5043_TXPWRCOEFFC1NB$0$0 == 0x516c
                           00516C  3098 _AX5043_TXPWRCOEFFC1NB	=	0x516c
                           00516F  3099 G$AX5043_TXPWRCOEFFD0NB$0$0 == 0x516f
                           00516F  3100 _AX5043_TXPWRCOEFFD0NB	=	0x516f
                           00516E  3101 G$AX5043_TXPWRCOEFFD1NB$0$0 == 0x516e
                           00516E  3102 _AX5043_TXPWRCOEFFD1NB	=	0x516e
                           005171  3103 G$AX5043_TXPWRCOEFFE0NB$0$0 == 0x5171
                           005171  3104 _AX5043_TXPWRCOEFFE0NB	=	0x5171
                           005170  3105 G$AX5043_TXPWRCOEFFE1NB$0$0 == 0x5170
                           005170  3106 _AX5043_TXPWRCOEFFE1NB	=	0x5170
                           005167  3107 G$AX5043_TXRATE0NB$0$0 == 0x5167
                           005167  3108 _AX5043_TXRATE0NB	=	0x5167
                           005166  3109 G$AX5043_TXRATE1NB$0$0 == 0x5166
                           005166  3110 _AX5043_TXRATE1NB	=	0x5166
                           005165  3111 G$AX5043_TXRATE2NB$0$0 == 0x5165
                           005165  3112 _AX5043_TXRATE2NB	=	0x5165
                           00506B  3113 G$AX5043_WAKEUP0NB$0$0 == 0x506b
                           00506B  3114 _AX5043_WAKEUP0NB	=	0x506b
                           00506A  3115 G$AX5043_WAKEUP1NB$0$0 == 0x506a
                           00506A  3116 _AX5043_WAKEUP1NB	=	0x506a
                           00506D  3117 G$AX5043_WAKEUPFREQ0NB$0$0 == 0x506d
                           00506D  3118 _AX5043_WAKEUPFREQ0NB	=	0x506d
                           00506C  3119 G$AX5043_WAKEUPFREQ1NB$0$0 == 0x506c
                           00506C  3120 _AX5043_WAKEUPFREQ1NB	=	0x506c
                           005069  3121 G$AX5043_WAKEUPTIMER0NB$0$0 == 0x5069
                           005069  3122 _AX5043_WAKEUPTIMER0NB	=	0x5069
                           005068  3123 G$AX5043_WAKEUPTIMER1NB$0$0 == 0x5068
                           005068  3124 _AX5043_WAKEUPTIMER1NB	=	0x5068
                           00506E  3125 G$AX5043_WAKEUPXOEARLYNB$0$0 == 0x506e
                           00506E  3126 _AX5043_WAKEUPXOEARLYNB	=	0x506e
                           005F11  3127 G$AX5043_XTALAMPLNB$0$0 == 0x5f11
                           005F11  3128 _AX5043_XTALAMPLNB	=	0x5f11
                           005184  3129 G$AX5043_XTALCAPNB$0$0 == 0x5184
                           005184  3130 _AX5043_XTALCAPNB	=	0x5184
                           005F10  3131 G$AX5043_XTALOSCNB$0$0 == 0x5f10
                           005F10  3132 _AX5043_XTALOSCNB	=	0x5f10
                           00501D  3133 G$AX5043_XTALSTATUSNB$0$0 == 0x501d
                           00501D  3134 _AX5043_XTALSTATUSNB	=	0x501d
                           005F00  3135 G$AX5043_0xF00NB$0$0 == 0x5f00
                           005F00  3136 _AX5043_0xF00NB	=	0x5f00
                           005F0C  3137 G$AX5043_0xF0CNB$0$0 == 0x5f0c
                           005F0C  3138 _AX5043_0xF0CNB	=	0x5f0c
                           005F18  3139 G$AX5043_0xF18NB$0$0 == 0x5f18
                           005F18  3140 _AX5043_0xF18NB	=	0x5f18
                           005F1C  3141 G$AX5043_0xF1CNB$0$0 == 0x5f1c
                           005F1C  3142 _AX5043_0xF1CNB	=	0x5f1c
                           005F21  3143 G$AX5043_0xF21NB$0$0 == 0x5f21
                           005F21  3144 _AX5043_0xF21NB	=	0x5f21
                           005F22  3145 G$AX5043_0xF22NB$0$0 == 0x5f22
                           005F22  3146 _AX5043_0xF22NB	=	0x5f22
                           005F23  3147 G$AX5043_0xF23NB$0$0 == 0x5f23
                           005F23  3148 _AX5043_0xF23NB	=	0x5f23
                           005F26  3149 G$AX5043_0xF26NB$0$0 == 0x5f26
                           005F26  3150 _AX5043_0xF26NB	=	0x5f26
                           005F30  3151 G$AX5043_0xF30NB$0$0 == 0x5f30
                           005F30  3152 _AX5043_0xF30NB	=	0x5f30
                           005F31  3153 G$AX5043_0xF31NB$0$0 == 0x5f31
                           005F31  3154 _AX5043_0xF31NB	=	0x5f31
                           005F32  3155 G$AX5043_0xF32NB$0$0 == 0x5f32
                           005F32  3156 _AX5043_0xF32NB	=	0x5f32
                           005F33  3157 G$AX5043_0xF33NB$0$0 == 0x5f33
                           005F33  3158 _AX5043_0xF33NB	=	0x5f33
                           005F34  3159 G$AX5043_0xF34NB$0$0 == 0x5f34
                           005F34  3160 _AX5043_0xF34NB	=	0x5f34
                           005F35  3161 G$AX5043_0xF35NB$0$0 == 0x5f35
                           005F35  3162 _AX5043_0xF35NB	=	0x5f35
                           005F44  3163 G$AX5043_0xF44NB$0$0 == 0x5f44
                           005F44  3164 _AX5043_0xF44NB	=	0x5f44
                           005122  3165 G$AX5043_AGCAHYST0NB$0$0 == 0x5122
                           005122  3166 _AX5043_AGCAHYST0NB	=	0x5122
                           005132  3167 G$AX5043_AGCAHYST1NB$0$0 == 0x5132
                           005132  3168 _AX5043_AGCAHYST1NB	=	0x5132
                           005142  3169 G$AX5043_AGCAHYST2NB$0$0 == 0x5142
                           005142  3170 _AX5043_AGCAHYST2NB	=	0x5142
                           005152  3171 G$AX5043_AGCAHYST3NB$0$0 == 0x5152
                           005152  3172 _AX5043_AGCAHYST3NB	=	0x5152
                           005120  3173 G$AX5043_AGCGAIN0NB$0$0 == 0x5120
                           005120  3174 _AX5043_AGCGAIN0NB	=	0x5120
                           005130  3175 G$AX5043_AGCGAIN1NB$0$0 == 0x5130
                           005130  3176 _AX5043_AGCGAIN1NB	=	0x5130
                           005140  3177 G$AX5043_AGCGAIN2NB$0$0 == 0x5140
                           005140  3178 _AX5043_AGCGAIN2NB	=	0x5140
                           005150  3179 G$AX5043_AGCGAIN3NB$0$0 == 0x5150
                           005150  3180 _AX5043_AGCGAIN3NB	=	0x5150
                           005123  3181 G$AX5043_AGCMINMAX0NB$0$0 == 0x5123
                           005123  3182 _AX5043_AGCMINMAX0NB	=	0x5123
                           005133  3183 G$AX5043_AGCMINMAX1NB$0$0 == 0x5133
                           005133  3184 _AX5043_AGCMINMAX1NB	=	0x5133
                           005143  3185 G$AX5043_AGCMINMAX2NB$0$0 == 0x5143
                           005143  3186 _AX5043_AGCMINMAX2NB	=	0x5143
                           005153  3187 G$AX5043_AGCMINMAX3NB$0$0 == 0x5153
                           005153  3188 _AX5043_AGCMINMAX3NB	=	0x5153
                           005121  3189 G$AX5043_AGCTARGET0NB$0$0 == 0x5121
                           005121  3190 _AX5043_AGCTARGET0NB	=	0x5121
                           005131  3191 G$AX5043_AGCTARGET1NB$0$0 == 0x5131
                           005131  3192 _AX5043_AGCTARGET1NB	=	0x5131
                           005141  3193 G$AX5043_AGCTARGET2NB$0$0 == 0x5141
                           005141  3194 _AX5043_AGCTARGET2NB	=	0x5141
                           005151  3195 G$AX5043_AGCTARGET3NB$0$0 == 0x5151
                           005151  3196 _AX5043_AGCTARGET3NB	=	0x5151
                           00512B  3197 G$AX5043_AMPLITUDEGAIN0NB$0$0 == 0x512b
                           00512B  3198 _AX5043_AMPLITUDEGAIN0NB	=	0x512b
                           00513B  3199 G$AX5043_AMPLITUDEGAIN1NB$0$0 == 0x513b
                           00513B  3200 _AX5043_AMPLITUDEGAIN1NB	=	0x513b
                           00514B  3201 G$AX5043_AMPLITUDEGAIN2NB$0$0 == 0x514b
                           00514B  3202 _AX5043_AMPLITUDEGAIN2NB	=	0x514b
                           00515B  3203 G$AX5043_AMPLITUDEGAIN3NB$0$0 == 0x515b
                           00515B  3204 _AX5043_AMPLITUDEGAIN3NB	=	0x515b
                           00512F  3205 G$AX5043_BBOFFSRES0NB$0$0 == 0x512f
                           00512F  3206 _AX5043_BBOFFSRES0NB	=	0x512f
                           00513F  3207 G$AX5043_BBOFFSRES1NB$0$0 == 0x513f
                           00513F  3208 _AX5043_BBOFFSRES1NB	=	0x513f
                           00514F  3209 G$AX5043_BBOFFSRES2NB$0$0 == 0x514f
                           00514F  3210 _AX5043_BBOFFSRES2NB	=	0x514f
                           00515F  3211 G$AX5043_BBOFFSRES3NB$0$0 == 0x515f
                           00515F  3212 _AX5043_BBOFFSRES3NB	=	0x515f
                           005125  3213 G$AX5043_DRGAIN0NB$0$0 == 0x5125
                           005125  3214 _AX5043_DRGAIN0NB	=	0x5125
                           005135  3215 G$AX5043_DRGAIN1NB$0$0 == 0x5135
                           005135  3216 _AX5043_DRGAIN1NB	=	0x5135
                           005145  3217 G$AX5043_DRGAIN2NB$0$0 == 0x5145
                           005145  3218 _AX5043_DRGAIN2NB	=	0x5145
                           005155  3219 G$AX5043_DRGAIN3NB$0$0 == 0x5155
                           005155  3220 _AX5043_DRGAIN3NB	=	0x5155
                           00512E  3221 G$AX5043_FOURFSK0NB$0$0 == 0x512e
                           00512E  3222 _AX5043_FOURFSK0NB	=	0x512e
                           00513E  3223 G$AX5043_FOURFSK1NB$0$0 == 0x513e
                           00513E  3224 _AX5043_FOURFSK1NB	=	0x513e
                           00514E  3225 G$AX5043_FOURFSK2NB$0$0 == 0x514e
                           00514E  3226 _AX5043_FOURFSK2NB	=	0x514e
                           00515E  3227 G$AX5043_FOURFSK3NB$0$0 == 0x515e
                           00515E  3228 _AX5043_FOURFSK3NB	=	0x515e
                           00512D  3229 G$AX5043_FREQDEV00NB$0$0 == 0x512d
                           00512D  3230 _AX5043_FREQDEV00NB	=	0x512d
                           00513D  3231 G$AX5043_FREQDEV01NB$0$0 == 0x513d
                           00513D  3232 _AX5043_FREQDEV01NB	=	0x513d
                           00514D  3233 G$AX5043_FREQDEV02NB$0$0 == 0x514d
                           00514D  3234 _AX5043_FREQDEV02NB	=	0x514d
                           00515D  3235 G$AX5043_FREQDEV03NB$0$0 == 0x515d
                           00515D  3236 _AX5043_FREQDEV03NB	=	0x515d
                           00512C  3237 G$AX5043_FREQDEV10NB$0$0 == 0x512c
                           00512C  3238 _AX5043_FREQDEV10NB	=	0x512c
                           00513C  3239 G$AX5043_FREQDEV11NB$0$0 == 0x513c
                           00513C  3240 _AX5043_FREQDEV11NB	=	0x513c
                           00514C  3241 G$AX5043_FREQDEV12NB$0$0 == 0x514c
                           00514C  3242 _AX5043_FREQDEV12NB	=	0x514c
                           00515C  3243 G$AX5043_FREQDEV13NB$0$0 == 0x515c
                           00515C  3244 _AX5043_FREQDEV13NB	=	0x515c
                           005127  3245 G$AX5043_FREQUENCYGAINA0NB$0$0 == 0x5127
                           005127  3246 _AX5043_FREQUENCYGAINA0NB	=	0x5127
                           005137  3247 G$AX5043_FREQUENCYGAINA1NB$0$0 == 0x5137
                           005137  3248 _AX5043_FREQUENCYGAINA1NB	=	0x5137
                           005147  3249 G$AX5043_FREQUENCYGAINA2NB$0$0 == 0x5147
                           005147  3250 _AX5043_FREQUENCYGAINA2NB	=	0x5147
                           005157  3251 G$AX5043_FREQUENCYGAINA3NB$0$0 == 0x5157
                           005157  3252 _AX5043_FREQUENCYGAINA3NB	=	0x5157
                           005128  3253 G$AX5043_FREQUENCYGAINB0NB$0$0 == 0x5128
                           005128  3254 _AX5043_FREQUENCYGAINB0NB	=	0x5128
                           005138  3255 G$AX5043_FREQUENCYGAINB1NB$0$0 == 0x5138
                           005138  3256 _AX5043_FREQUENCYGAINB1NB	=	0x5138
                           005148  3257 G$AX5043_FREQUENCYGAINB2NB$0$0 == 0x5148
                           005148  3258 _AX5043_FREQUENCYGAINB2NB	=	0x5148
                           005158  3259 G$AX5043_FREQUENCYGAINB3NB$0$0 == 0x5158
                           005158  3260 _AX5043_FREQUENCYGAINB3NB	=	0x5158
                           005129  3261 G$AX5043_FREQUENCYGAINC0NB$0$0 == 0x5129
                           005129  3262 _AX5043_FREQUENCYGAINC0NB	=	0x5129
                           005139  3263 G$AX5043_FREQUENCYGAINC1NB$0$0 == 0x5139
                           005139  3264 _AX5043_FREQUENCYGAINC1NB	=	0x5139
                           005149  3265 G$AX5043_FREQUENCYGAINC2NB$0$0 == 0x5149
                           005149  3266 _AX5043_FREQUENCYGAINC2NB	=	0x5149
                           005159  3267 G$AX5043_FREQUENCYGAINC3NB$0$0 == 0x5159
                           005159  3268 _AX5043_FREQUENCYGAINC3NB	=	0x5159
                           00512A  3269 G$AX5043_FREQUENCYGAIND0NB$0$0 == 0x512a
                           00512A  3270 _AX5043_FREQUENCYGAIND0NB	=	0x512a
                           00513A  3271 G$AX5043_FREQUENCYGAIND1NB$0$0 == 0x513a
                           00513A  3272 _AX5043_FREQUENCYGAIND1NB	=	0x513a
                           00514A  3273 G$AX5043_FREQUENCYGAIND2NB$0$0 == 0x514a
                           00514A  3274 _AX5043_FREQUENCYGAIND2NB	=	0x514a
                           00515A  3275 G$AX5043_FREQUENCYGAIND3NB$0$0 == 0x515a
                           00515A  3276 _AX5043_FREQUENCYGAIND3NB	=	0x515a
                           005116  3277 G$AX5043_FREQUENCYLEAKNB$0$0 == 0x5116
                           005116  3278 _AX5043_FREQUENCYLEAKNB	=	0x5116
                           005126  3279 G$AX5043_PHASEGAIN0NB$0$0 == 0x5126
                           005126  3280 _AX5043_PHASEGAIN0NB	=	0x5126
                           005136  3281 G$AX5043_PHASEGAIN1NB$0$0 == 0x5136
                           005136  3282 _AX5043_PHASEGAIN1NB	=	0x5136
                           005146  3283 G$AX5043_PHASEGAIN2NB$0$0 == 0x5146
                           005146  3284 _AX5043_PHASEGAIN2NB	=	0x5146
                           005156  3285 G$AX5043_PHASEGAIN3NB$0$0 == 0x5156
                           005156  3286 _AX5043_PHASEGAIN3NB	=	0x5156
                           005207  3287 G$AX5043_PKTADDR0NB$0$0 == 0x5207
                           005207  3288 _AX5043_PKTADDR0NB	=	0x5207
                           005206  3289 G$AX5043_PKTADDR1NB$0$0 == 0x5206
                           005206  3290 _AX5043_PKTADDR1NB	=	0x5206
                           005205  3291 G$AX5043_PKTADDR2NB$0$0 == 0x5205
                           005205  3292 _AX5043_PKTADDR2NB	=	0x5205
                           005204  3293 G$AX5043_PKTADDR3NB$0$0 == 0x5204
                           005204  3294 _AX5043_PKTADDR3NB	=	0x5204
                           005200  3295 G$AX5043_PKTADDRCFGNB$0$0 == 0x5200
                           005200  3296 _AX5043_PKTADDRCFGNB	=	0x5200
                           00520B  3297 G$AX5043_PKTADDRMASK0NB$0$0 == 0x520b
                           00520B  3298 _AX5043_PKTADDRMASK0NB	=	0x520b
                           00520A  3299 G$AX5043_PKTADDRMASK1NB$0$0 == 0x520a
                           00520A  3300 _AX5043_PKTADDRMASK1NB	=	0x520a
                           005209  3301 G$AX5043_PKTADDRMASK2NB$0$0 == 0x5209
                           005209  3302 _AX5043_PKTADDRMASK2NB	=	0x5209
                           005208  3303 G$AX5043_PKTADDRMASK3NB$0$0 == 0x5208
                           005208  3304 _AX5043_PKTADDRMASK3NB	=	0x5208
                           005201  3305 G$AX5043_PKTLENCFGNB$0$0 == 0x5201
                           005201  3306 _AX5043_PKTLENCFGNB	=	0x5201
                           005202  3307 G$AX5043_PKTLENOFFSETNB$0$0 == 0x5202
                           005202  3308 _AX5043_PKTLENOFFSETNB	=	0x5202
                           005203  3309 G$AX5043_PKTMAXLENNB$0$0 == 0x5203
                           005203  3310 _AX5043_PKTMAXLENNB	=	0x5203
                           005118  3311 G$AX5043_RXPARAMCURSETNB$0$0 == 0x5118
                           005118  3312 _AX5043_RXPARAMCURSETNB	=	0x5118
                           005117  3313 G$AX5043_RXPARAMSETSNB$0$0 == 0x5117
                           005117  3314 _AX5043_RXPARAMSETSNB	=	0x5117
                           005124  3315 G$AX5043_TIMEGAIN0NB$0$0 == 0x5124
                           005124  3316 _AX5043_TIMEGAIN0NB	=	0x5124
                           005134  3317 G$AX5043_TIMEGAIN1NB$0$0 == 0x5134
                           005134  3318 _AX5043_TIMEGAIN1NB	=	0x5134
                           005144  3319 G$AX5043_TIMEGAIN2NB$0$0 == 0x5144
                           005144  3320 _AX5043_TIMEGAIN2NB	=	0x5144
                           005154  3321 G$AX5043_TIMEGAIN3NB$0$0 == 0x5154
                           005154  3322 _AX5043_TIMEGAIN3NB	=	0x5154
                           004F00  3323 G$AX5043_0xF00$0$0 == 0x4f00
                           004F00  3324 _AX5043_0xF00	=	0x4f00
                           004F0C  3325 G$AX5043_0xF0C$0$0 == 0x4f0c
                           004F0C  3326 _AX5043_0xF0C	=	0x4f0c
                           004F10  3327 G$AX5043_0xF10$0$0 == 0x4f10
                           004F10  3328 _AX5043_0xF10	=	0x4f10
                           004F11  3329 G$AX5043_0xF11$0$0 == 0x4f11
                           004F11  3330 _AX5043_0xF11	=	0x4f11
                           004F18  3331 G$AX5043_0xF18$0$0 == 0x4f18
                           004F18  3332 _AX5043_0xF18	=	0x4f18
                           004F1C  3333 G$AX5043_0xF1C$0$0 == 0x4f1c
                           004F1C  3334 _AX5043_0xF1C	=	0x4f1c
                           004F21  3335 G$AX5043_0xF21$0$0 == 0x4f21
                           004F21  3336 _AX5043_0xF21	=	0x4f21
                           004F22  3337 G$AX5043_0xF22$0$0 == 0x4f22
                           004F22  3338 _AX5043_0xF22	=	0x4f22
                           004F23  3339 G$AX5043_0xF23$0$0 == 0x4f23
                           004F23  3340 _AX5043_0xF23	=	0x4f23
                           004F26  3341 G$AX5043_0xF26$0$0 == 0x4f26
                           004F26  3342 _AX5043_0xF26	=	0x4f26
                           004F30  3343 G$AX5043_0xF30$0$0 == 0x4f30
                           004F30  3344 _AX5043_0xF30	=	0x4f30
                           004F31  3345 G$AX5043_0xF31$0$0 == 0x4f31
                           004F31  3346 _AX5043_0xF31	=	0x4f31
                           004F32  3347 G$AX5043_0xF32$0$0 == 0x4f32
                           004F32  3348 _AX5043_0xF32	=	0x4f32
                           004F33  3349 G$AX5043_0xF33$0$0 == 0x4f33
                           004F33  3350 _AX5043_0xF33	=	0x4f33
                           004F34  3351 G$AX5043_0xF34$0$0 == 0x4f34
                           004F34  3352 _AX5043_0xF34	=	0x4f34
                           004F35  3353 G$AX5043_0xF35$0$0 == 0x4f35
                           004F35  3354 _AX5043_0xF35	=	0x4f35
                           004F44  3355 G$AX5043_0xF44$0$0 == 0x4f44
                           004F44  3356 _AX5043_0xF44	=	0x4f44
                           004F0D  3357 G$AX5043_REF$0$0 == 0x4f0d
                           004F0D  3358 _AX5043_REF	=	0x4f0d
                           004F08  3359 G$AX5043_POWCTRL1$0$0 == 0x4f08
                           004F08  3360 _AX5043_POWCTRL1	=	0x4f08
                           004F5F  3361 G$AX5043_MODCFGP$0$0 == 0x4f5f
                           004F5F  3362 _AX5043_MODCFGP	=	0x4f5f
                           004F10  3363 G$AX5043_XTALOSC$0$0 == 0x4f10
                           004F10  3364 _AX5043_XTALOSC	=	0x4f10
                           004F11  3365 G$AX5043_XTALAMPL$0$0 == 0x4f11
                           004F11  3366 _AX5043_XTALAMPL	=	0x4f11
                           000000  3367 G$axradio_syncstate$0$0==.
      000005                       3368 _axradio_syncstate::
      000005                       3369 	.ds 1
                           000001  3370 G$axradio_txbuffer_len$0$0==.
      000006                       3371 _axradio_txbuffer_len::
      000006                       3372 	.ds 2
                           000003  3373 G$axradio_txbuffer_cnt$0$0==.
      000008                       3374 _axradio_txbuffer_cnt::
      000008                       3375 	.ds 2
                           000005  3376 G$axradio_curchannel$0$0==.
      00000A                       3377 _axradio_curchannel::
      00000A                       3378 	.ds 1
                           000006  3379 G$axradio_curfreqoffset$0$0==.
      00000B                       3380 _axradio_curfreqoffset::
      00000B                       3381 	.ds 4
                           00000A  3382 G$axradio_ack_count$0$0==.
      00000F                       3383 _axradio_ack_count::
      00000F                       3384 	.ds 1
                           00000B  3385 G$axradio_ack_seqnr$0$0==.
      000010                       3386 _axradio_ack_seqnr::
      000010                       3387 	.ds 1
                           00000C  3388 G$axradio_sync_time$0$0==.
      000011                       3389 _axradio_sync_time::
      000011                       3390 	.ds 4
                           000010  3391 G$axradio_sync_periodcorr$0$0==.
      000015                       3392 _axradio_sync_periodcorr::
      000015                       3393 	.ds 2
                           000012  3394 G$axradio_timeanchor$0$0==.
      000017                       3395 _axradio_timeanchor::
      000017                       3396 	.ds 8
                           00001A  3397 G$axradio_localaddr$0$0==.
      00001F                       3398 _axradio_localaddr::
      00001F                       3399 	.ds 8
                           000022  3400 G$axradio_default_remoteaddr$0$0==.
      000027                       3401 _axradio_default_remoteaddr::
      000027                       3402 	.ds 4
                           000026  3403 G$axradio_txbuffer$0$0==.
      00002B                       3404 _axradio_txbuffer::
      00002B                       3405 	.ds 260
                           00012A  3406 G$axradio_rxbuffer$0$0==.
      00012F                       3407 _axradio_rxbuffer::
      00012F                       3408 	.ds 260
                           00022E  3409 G$axradio_cb_receive$0$0==.
      000233                       3410 _axradio_cb_receive::
      000233                       3411 	.ds 34
                           000250  3412 G$axradio_cb_receivesfd$0$0==.
      000255                       3413 _axradio_cb_receivesfd::
      000255                       3414 	.ds 10
                           00025A  3415 G$axradio_cb_channelstate$0$0==.
      00025F                       3416 _axradio_cb_channelstate::
      00025F                       3417 	.ds 13
                           000267  3418 G$axradio_cb_transmitstart$0$0==.
      00026C                       3419 _axradio_cb_transmitstart::
      00026C                       3420 	.ds 10
                           000271  3421 G$axradio_cb_transmitend$0$0==.
      000276                       3422 _axradio_cb_transmitend::
      000276                       3423 	.ds 10
                           00027B  3424 G$axradio_cb_transmitdata$0$0==.
      000280                       3425 _axradio_cb_transmitdata::
      000280                       3426 	.ds 10
                           000285  3427 G$axradio_timer$0$0==.
      00028A                       3428 _axradio_timer::
      00028A                       3429 	.ds 8
                                   3430 ;--------------------------------------------------------
                                   3431 ; absolute external ram data
                                   3432 ;--------------------------------------------------------
                                   3433 	.area XABS    (ABS,XDATA)
                                   3434 ;--------------------------------------------------------
                                   3435 ; external initialized ram data
                                   3436 ;--------------------------------------------------------
                                   3437 	.area XISEG   (XDATA)
                           000000  3438 G$f30_saved$0$0==.
      00043A                       3439 _f30_saved::
      00043A                       3440 	.ds 1
                           000001  3441 G$f31_saved$0$0==.
      00043B                       3442 _f31_saved::
      00043B                       3443 	.ds 1
                           000002  3444 G$f32_saved$0$0==.
      00043C                       3445 _f32_saved::
      00043C                       3446 	.ds 1
                           000003  3447 G$f33_saved$0$0==.
      00043D                       3448 _f33_saved::
      00043D                       3449 	.ds 1
                                   3450 	.area HOME    (CODE)
                                   3451 	.area GSINIT0 (CODE)
                                   3452 	.area GSINIT1 (CODE)
                                   3453 	.area GSINIT2 (CODE)
                                   3454 	.area GSINIT3 (CODE)
                                   3455 	.area GSINIT4 (CODE)
                                   3456 	.area GSINIT5 (CODE)
                                   3457 	.area GSINIT  (CODE)
                                   3458 	.area GSFINAL (CODE)
                                   3459 	.area CSEG    (CODE)
                                   3460 ;--------------------------------------------------------
                                   3461 ; global & static initialisations
                                   3462 ;--------------------------------------------------------
                                   3463 	.area HOME    (CODE)
                                   3464 	.area GSINIT  (CODE)
                                   3465 	.area GSFINAL (CODE)
                                   3466 	.area GSINIT  (CODE)
                           000000  3467 	C$easyax5043.c$59$1$468 ==.
                                   3468 ;	..\COMMON\easyax5043.c:59: volatile uint8_t __data axradio_mode = AXRADIO_MODE_UNINIT;
      00034D 75 08 00         [24] 3469 	mov	_axradio_mode,#0x00
                           000003  3470 	C$easyax5043.c$60$1$468 ==.
                                   3471 ;	..\COMMON\easyax5043.c:60: volatile axradio_trxstate_t __data axradio_trxstate = trxstate_off;
      000350 75 09 00         [24] 3472 	mov	_axradio_trxstate,#0x00
                                   3473 ;--------------------------------------------------------
                                   3474 ; Home
                                   3475 ;--------------------------------------------------------
                                   3476 	.area HOME    (CODE)
                                   3477 	.area HOME    (CODE)
                                   3478 ;--------------------------------------------------------
                                   3479 ; code
                                   3480 ;--------------------------------------------------------
                                   3481 	.area CSEG    (CODE)
                                   3482 ;------------------------------------------------------------
                                   3483 ;Allocation info for local variables in function 'update_timeanchor'
                                   3484 ;------------------------------------------------------------
                                   3485 ;iesave                    Allocated to registers r7 
                                   3486 ;------------------------------------------------------------
                           000000  3487 	Feasyax5043$update_timeanchor$0$0 ==.
                           000000  3488 	C$easyax5043.c$238$0$0 ==.
                                   3489 ;	..\COMMON\easyax5043.c:238: static __reentrantb void update_timeanchor(void) __reentrant
                                   3490 ;	-----------------------------------------
                                   3491 ;	 function update_timeanchor
                                   3492 ;	-----------------------------------------
      000B63                       3493 _update_timeanchor:
                           000007  3494 	ar7 = 0x07
                           000006  3495 	ar6 = 0x06
                           000005  3496 	ar5 = 0x05
                           000004  3497 	ar4 = 0x04
                           000003  3498 	ar3 = 0x03
                           000002  3499 	ar2 = 0x02
                           000001  3500 	ar1 = 0x01
                           000000  3501 	ar0 = 0x00
                           000000  3502 	C$easyax5043.c$240$1$231 ==.
                                   3503 ;	..\COMMON\easyax5043.c:240: uint8_t iesave = IE & 0x80;
      000B63 74 80            [12] 3504 	mov	a,#0x80
      000B65 55 A8            [12] 3505 	anl	a,_IE
      000B67 FF               [12] 3506 	mov	r7,a
                           000005  3507 	C$easyax5043.c$241$1$231 ==.
                                   3508 ;	..\COMMON\easyax5043.c:241: EA = 0;
      000B68 C2 AF            [12] 3509 	clr	_EA
                           000007  3510 	C$easyax5043.c$242$1$231 ==.
                                   3511 ;	..\COMMON\easyax5043.c:242: axradio_timeanchor.timer0 = wtimer0_curtime();
      000B6A C0 07            [24] 3512 	push	ar7
      000B6C 12 54 88         [24] 3513 	lcall	_wtimer0_curtime
      000B6F AB 82            [24] 3514 	mov	r3,dpl
      000B71 AC 83            [24] 3515 	mov	r4,dph
      000B73 AD F0            [24] 3516 	mov	r5,b
      000B75 FE               [12] 3517 	mov	r6,a
      000B76 D0 07            [24] 3518 	pop	ar7
      000B78 90 00 17         [24] 3519 	mov	dptr,#_axradio_timeanchor
      000B7B EB               [12] 3520 	mov	a,r3
      000B7C F0               [24] 3521 	movx	@dptr,a
      000B7D EC               [12] 3522 	mov	a,r4
      000B7E A3               [24] 3523 	inc	dptr
      000B7F F0               [24] 3524 	movx	@dptr,a
      000B80 ED               [12] 3525 	mov	a,r5
      000B81 A3               [24] 3526 	inc	dptr
      000B82 F0               [24] 3527 	movx	@dptr,a
      000B83 EE               [12] 3528 	mov	a,r6
      000B84 A3               [24] 3529 	inc	dptr
      000B85 F0               [24] 3530 	movx	@dptr,a
                           000023  3531 	C$easyax5043.c$243$1$231 ==.
                                   3532 ;	..\COMMON\easyax5043.c:243: axradio_timeanchor.radiotimer = radio_read24((uint16_t)&AX5043_TIMER2);
      000B86 90 40 59         [24] 3533 	mov	dptr,#_AX5043_TIMER2
      000B89 12 47 C4         [24] 3534 	lcall	_radio_read24
      000B8C AB 82            [24] 3535 	mov	r3,dpl
      000B8E AC 83            [24] 3536 	mov	r4,dph
      000B90 AD F0            [24] 3537 	mov	r5,b
      000B92 FE               [12] 3538 	mov	r6,a
      000B93 90 00 1B         [24] 3539 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000B96 EB               [12] 3540 	mov	a,r3
      000B97 F0               [24] 3541 	movx	@dptr,a
      000B98 EC               [12] 3542 	mov	a,r4
      000B99 A3               [24] 3543 	inc	dptr
      000B9A F0               [24] 3544 	movx	@dptr,a
      000B9B ED               [12] 3545 	mov	a,r5
      000B9C A3               [24] 3546 	inc	dptr
      000B9D F0               [24] 3547 	movx	@dptr,a
      000B9E EE               [12] 3548 	mov	a,r6
      000B9F A3               [24] 3549 	inc	dptr
      000BA0 F0               [24] 3550 	movx	@dptr,a
                           00003E  3551 	C$easyax5043.c$244$1$231 ==.
                                   3552 ;	..\COMMON\easyax5043.c:244: IE |= iesave;
      000BA1 EF               [12] 3553 	mov	a,r7
      000BA2 42 A8            [12] 3554 	orl	_IE,a
                           000041  3555 	C$easyax5043.c$245$1$231 ==.
                           000041  3556 	XFeasyax5043$update_timeanchor$0$0 ==.
      000BA4 22               [24] 3557 	ret
                                   3558 ;------------------------------------------------------------
                                   3559 ;Allocation info for local variables in function 'axradio_conv_time_totimer0'
                                   3560 ;------------------------------------------------------------
                                   3561 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   3562 ;------------------------------------------------------------
                           000042  3563 	G$axradio_conv_time_totimer0$0$0 ==.
                           000042  3564 	C$easyax5043.c$247$1$231 ==.
                                   3565 ;	..\COMMON\easyax5043.c:247: __reentrantb uint32_t axradio_conv_time_totimer0(uint32_t dt) __reentrant
                                   3566 ;	-----------------------------------------
                                   3567 ;	 function axradio_conv_time_totimer0
                                   3568 ;	-----------------------------------------
      000BA5                       3569 _axradio_conv_time_totimer0:
      000BA5 AC 82            [24] 3570 	mov	r4,dpl
      000BA7 AD 83            [24] 3571 	mov	r5,dph
      000BA9 AE F0            [24] 3572 	mov	r6,b
      000BAB FF               [12] 3573 	mov	r7,a
                           000049  3574 	C$easyax5043.c$249$1$233 ==.
                                   3575 ;	..\COMMON\easyax5043.c:249: dt -= axradio_timeanchor.radiotimer;
      000BAC 90 00 1B         [24] 3576 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000BAF E0               [24] 3577 	movx	a,@dptr
      000BB0 F8               [12] 3578 	mov	r0,a
      000BB1 A3               [24] 3579 	inc	dptr
      000BB2 E0               [24] 3580 	movx	a,@dptr
      000BB3 F9               [12] 3581 	mov	r1,a
      000BB4 A3               [24] 3582 	inc	dptr
      000BB5 E0               [24] 3583 	movx	a,@dptr
      000BB6 FA               [12] 3584 	mov	r2,a
      000BB7 A3               [24] 3585 	inc	dptr
      000BB8 E0               [24] 3586 	movx	a,@dptr
      000BB9 FB               [12] 3587 	mov	r3,a
      000BBA EC               [12] 3588 	mov	a,r4
      000BBB C3               [12] 3589 	clr	c
      000BBC 98               [12] 3590 	subb	a,r0
      000BBD FC               [12] 3591 	mov	r4,a
      000BBE ED               [12] 3592 	mov	a,r5
      000BBF 99               [12] 3593 	subb	a,r1
      000BC0 FD               [12] 3594 	mov	r5,a
      000BC1 EE               [12] 3595 	mov	a,r6
      000BC2 9A               [12] 3596 	subb	a,r2
      000BC3 FE               [12] 3597 	mov	r6,a
      000BC4 EF               [12] 3598 	mov	a,r7
      000BC5 9B               [12] 3599 	subb	a,r3
                           000063  3600 	C$easyax5043.c$250$1$233 ==.
                                   3601 ;	..\COMMON\easyax5043.c:250: dt = axradio_conv_timeinterval_totimer0(signextend24(dt));
      000BC6 8C 82            [24] 3602 	mov	dpl,r4
      000BC8 8D 83            [24] 3603 	mov	dph,r5
      000BCA 8E F0            [24] 3604 	mov	b,r6
      000BCC 12 54 82         [24] 3605 	lcall	_signextend24
      000BCF 12 08 61         [24] 3606 	lcall	_axradio_conv_timeinterval_totimer0
      000BD2 AC 82            [24] 3607 	mov	r4,dpl
      000BD4 AD 83            [24] 3608 	mov	r5,dph
      000BD6 AE F0            [24] 3609 	mov	r6,b
      000BD8 FF               [12] 3610 	mov	r7,a
                           000076  3611 	C$easyax5043.c$251$1$233 ==.
                                   3612 ;	..\COMMON\easyax5043.c:251: dt += axradio_timeanchor.timer0;
      000BD9 90 00 17         [24] 3613 	mov	dptr,#_axradio_timeanchor
      000BDC E0               [24] 3614 	movx	a,@dptr
      000BDD F8               [12] 3615 	mov	r0,a
      000BDE A3               [24] 3616 	inc	dptr
      000BDF E0               [24] 3617 	movx	a,@dptr
      000BE0 F9               [12] 3618 	mov	r1,a
      000BE1 A3               [24] 3619 	inc	dptr
      000BE2 E0               [24] 3620 	movx	a,@dptr
      000BE3 FA               [12] 3621 	mov	r2,a
      000BE4 A3               [24] 3622 	inc	dptr
      000BE5 E0               [24] 3623 	movx	a,@dptr
      000BE6 FB               [12] 3624 	mov	r3,a
      000BE7 E8               [12] 3625 	mov	a,r0
      000BE8 2C               [12] 3626 	add	a,r4
      000BE9 FC               [12] 3627 	mov	r4,a
      000BEA E9               [12] 3628 	mov	a,r1
      000BEB 3D               [12] 3629 	addc	a,r5
      000BEC FD               [12] 3630 	mov	r5,a
      000BED EA               [12] 3631 	mov	a,r2
      000BEE 3E               [12] 3632 	addc	a,r6
      000BEF FE               [12] 3633 	mov	r6,a
      000BF0 EB               [12] 3634 	mov	a,r3
      000BF1 3F               [12] 3635 	addc	a,r7
                           00008F  3636 	C$easyax5043.c$252$1$233 ==.
                                   3637 ;	..\COMMON\easyax5043.c:252: return dt;
      000BF2 8C 82            [24] 3638 	mov	dpl,r4
      000BF4 8D 83            [24] 3639 	mov	dph,r5
      000BF6 8E F0            [24] 3640 	mov	b,r6
                           000095  3641 	C$easyax5043.c$253$1$233 ==.
                           000095  3642 	XG$axradio_conv_time_totimer0$0$0 ==.
      000BF8 22               [24] 3643 	ret
                                   3644 ;------------------------------------------------------------
                                   3645 ;Allocation info for local variables in function 'ax5043_init_registers_common'
                                   3646 ;------------------------------------------------------------
                                   3647 ;rng                       Allocated to registers r7 
                                   3648 ;------------------------------------------------------------
                           000096  3649 	Feasyax5043$ax5043_init_registers_common$0$0 ==.
                           000096  3650 	C$easyax5043.c$255$1$233 ==.
                                   3651 ;	..\COMMON\easyax5043.c:255: static __reentrantb uint8_t ax5043_init_registers_common(void) __reentrant
                                   3652 ;	-----------------------------------------
                                   3653 ;	 function ax5043_init_registers_common
                                   3654 ;	-----------------------------------------
      000BF9                       3655 _ax5043_init_registers_common:
                           000096  3656 	C$easyax5043.c$257$1$235 ==.
                                   3657 ;	..\COMMON\easyax5043.c:257: uint8_t rng = axradio_phy_chanpllrng[axradio_curchannel];
      000BF9 90 00 0A         [24] 3658 	mov	dptr,#_axradio_curchannel
      000BFC E0               [24] 3659 	movx	a,@dptr
      000BFD 24 01            [12] 3660 	add	a,#_axradio_phy_chanpllrng
      000BFF F5 82            [12] 3661 	mov	dpl,a
      000C01 E4               [12] 3662 	clr	a
      000C02 34 00            [12] 3663 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      000C04 F5 83            [12] 3664 	mov	dph,a
      000C06 E0               [24] 3665 	movx	a,@dptr
                           0000A4  3666 	C$easyax5043.c$258$1$235 ==.
                                   3667 ;	..\COMMON\easyax5043.c:258: if (rng & 0x20)
      000C07 FF               [12] 3668 	mov	r7,a
      000C08 30 E5 05         [24] 3669 	jnb	acc.5,00102$
                           0000A8  3670 	C$easyax5043.c$259$1$235 ==.
                                   3671 ;	..\COMMON\easyax5043.c:259: return AXRADIO_ERR_RANGING;
      000C0B 75 82 06         [24] 3672 	mov	dpl,#0x06
      000C0E 80 2B            [24] 3673 	sjmp	00108$
      000C10                       3674 00102$:
                           0000AD  3675 	C$easyax5043.c$260$1$235 ==.
                                   3676 ;	..\COMMON\easyax5043.c:260: if (AX5043_PLLLOOP & 0x80) {
      000C10 90 40 30         [24] 3677 	mov	dptr,#_AX5043_PLLLOOP
      000C13 E0               [24] 3678 	movx	a,@dptr
      000C14 FE               [12] 3679 	mov	r6,a
      000C15 30 E7 09         [24] 3680 	jnb	acc.7,00104$
                           0000B5  3681 	C$easyax5043.c$261$2$236 ==.
                                   3682 ;	..\COMMON\easyax5043.c:261: AX5043_PLLRANGINGB = rng & 0x0F;
      000C18 90 40 3B         [24] 3683 	mov	dptr,#_AX5043_PLLRANGINGB
      000C1B 74 0F            [12] 3684 	mov	a,#0x0f
      000C1D 5F               [12] 3685 	anl	a,r7
      000C1E F0               [24] 3686 	movx	@dptr,a
      000C1F 80 07            [24] 3687 	sjmp	00105$
      000C21                       3688 00104$:
                           0000BE  3689 	C$easyax5043.c$263$2$237 ==.
                                   3690 ;	..\COMMON\easyax5043.c:263: AX5043_PLLRANGINGA = rng & 0x0F;
      000C21 90 40 33         [24] 3691 	mov	dptr,#_AX5043_PLLRANGINGA
      000C24 74 0F            [12] 3692 	mov	a,#0x0f
      000C26 5F               [12] 3693 	anl	a,r7
      000C27 F0               [24] 3694 	movx	@dptr,a
      000C28                       3695 00105$:
                           0000C5  3696 	C$easyax5043.c$265$1$235 ==.
                                   3697 ;	..\COMMON\easyax5043.c:265: rng = axradio_get_pllvcoi();
      000C28 12 35 85         [24] 3698 	lcall	_axradio_get_pllvcoi
      000C2B AE 82            [24] 3699 	mov	r6,dpl
      000C2D 8E 07            [24] 3700 	mov	ar7,r6
                           0000CC  3701 	C$easyax5043.c$266$1$235 ==.
                                   3702 ;	..\COMMON\easyax5043.c:266: if (rng & 0x80)
      000C2F EF               [12] 3703 	mov	a,r7
      000C30 30 E7 05         [24] 3704 	jnb	acc.7,00107$
                           0000D0  3705 	C$easyax5043.c$267$1$235 ==.
                                   3706 ;	..\COMMON\easyax5043.c:267: AX5043_PLLVCOI = rng;
      000C33 90 41 80         [24] 3707 	mov	dptr,#_AX5043_PLLVCOI
      000C36 EF               [12] 3708 	mov	a,r7
      000C37 F0               [24] 3709 	movx	@dptr,a
      000C38                       3710 00107$:
                           0000D5  3711 	C$easyax5043.c$268$1$235 ==.
                                   3712 ;	..\COMMON\easyax5043.c:268: return AXRADIO_ERR_NOERROR;
      000C38 75 82 00         [24] 3713 	mov	dpl,#0x00
      000C3B                       3714 00108$:
                           0000D8  3715 	C$easyax5043.c$269$1$235 ==.
                           0000D8  3716 	XFeasyax5043$ax5043_init_registers_common$0$0 ==.
      000C3B 22               [24] 3717 	ret
                                   3718 ;------------------------------------------------------------
                                   3719 ;Allocation info for local variables in function 'ax5043_init_registers_tx'
                                   3720 ;------------------------------------------------------------
                           0000D9  3721 	G$ax5043_init_registers_tx$0$0 ==.
                           0000D9  3722 	C$easyax5043.c$271$1$235 ==.
                                   3723 ;	..\COMMON\easyax5043.c:271: __reentrantb uint8_t ax5043_init_registers_tx(void) __reentrant
                                   3724 ;	-----------------------------------------
                                   3725 ;	 function ax5043_init_registers_tx
                                   3726 ;	-----------------------------------------
      000C3C                       3727 _ax5043_init_registers_tx:
                           0000D9  3728 	C$easyax5043.c$273$1$239 ==.
                                   3729 ;	..\COMMON\easyax5043.c:273: ax5043_set_registers_tx();
      000C3C 12 06 0E         [24] 3730 	lcall	_ax5043_set_registers_tx
                           0000DC  3731 	C$easyax5043.c$274$1$239 ==.
                                   3732 ;	..\COMMON\easyax5043.c:274: return ax5043_init_registers_common();
      000C3F 12 0B F9         [24] 3733 	lcall	_ax5043_init_registers_common
                           0000DF  3734 	C$easyax5043.c$275$1$239 ==.
                           0000DF  3735 	XG$ax5043_init_registers_tx$0$0 ==.
      000C42 22               [24] 3736 	ret
                                   3737 ;------------------------------------------------------------
                                   3738 ;Allocation info for local variables in function 'ax5043_init_registers_rx'
                                   3739 ;------------------------------------------------------------
                           0000E0  3740 	G$ax5043_init_registers_rx$0$0 ==.
                           0000E0  3741 	C$easyax5043.c$277$1$239 ==.
                                   3742 ;	..\COMMON\easyax5043.c:277: __reentrantb uint8_t ax5043_init_registers_rx(void) __reentrant
                                   3743 ;	-----------------------------------------
                                   3744 ;	 function ax5043_init_registers_rx
                                   3745 ;	-----------------------------------------
      000C43                       3746 _ax5043_init_registers_rx:
                           0000E0  3747 	C$easyax5043.c$279$1$241 ==.
                                   3748 ;	..\COMMON\easyax5043.c:279: ax5043_set_registers_rx();
      000C43 12 06 32         [24] 3749 	lcall	_ax5043_set_registers_rx
                           0000E3  3750 	C$easyax5043.c$280$1$241 ==.
                                   3751 ;	..\COMMON\easyax5043.c:280: return ax5043_init_registers_common();
      000C46 12 0B F9         [24] 3752 	lcall	_ax5043_init_registers_common
                           0000E6  3753 	C$easyax5043.c$281$1$241 ==.
                           0000E6  3754 	XG$ax5043_init_registers_rx$0$0 ==.
      000C49 22               [24] 3755 	ret
                                   3756 ;------------------------------------------------------------
                                   3757 ;Allocation info for local variables in function 'receive_isr'
                                   3758 ;------------------------------------------------------------
                                   3759 ;fifo_cmd                  Allocated to registers r6 
                                   3760 ;flags                     Allocated to registers 
                                   3761 ;i                         Allocated to registers r6 
                                   3762 ;len                       Allocated to registers r7 
                                   3763 ;r                         Allocated to registers r6 
                                   3764 ;r                         Allocated to registers r6 
                                   3765 ;r                         Allocated to registers r6 
                                   3766 ;------------------------------------------------------------
                           0000E7  3767 	Feasyax5043$receive_isr$0$0 ==.
                           0000E7  3768 	C$easyax5043.c$283$1$241 ==.
                                   3769 ;	..\COMMON\easyax5043.c:283: static __reentrantb void receive_isr(void) __reentrant
                                   3770 ;	-----------------------------------------
                                   3771 ;	 function receive_isr
                                   3772 ;	-----------------------------------------
      000C4A                       3773 _receive_isr:
                           0000E7  3774 	C$easyax5043.c$287$1$241 ==.
                                   3775 ;	..\COMMON\easyax5043.c:287: uint8_t len = AX5043_RADIOEVENTREQ0; // clear request so interrupt does not fire again. sync_rx enables interrupt on radio state changed in order to wake up on SDF detected
      000C4A 90 40 0F         [24] 3776 	mov	dptr,#_AX5043_RADIOEVENTREQ0
      000C4D E0               [24] 3777 	movx	a,@dptr
                           0000EB  3778 	C$easyax5043.c$289$1$243 ==.
                                   3779 ;	..\COMMON\easyax5043.c:289: if ((len & 0x04) && AX5043_RADIOSTATE == 0x0F) {
      000C4E FF               [12] 3780 	mov	r7,a
      000C4F 30 E2 3F         [24] 3781 	jnb	acc.2,00169$
      000C52 90 40 1C         [24] 3782 	mov	dptr,#_AX5043_RADIOSTATE
      000C55 E0               [24] 3783 	movx	a,@dptr
      000C56 FE               [12] 3784 	mov	r6,a
      000C57 BE 0F 37         [24] 3785 	cjne	r6,#0x0f,00169$
                           0000F7  3786 	C$easyax5043.c$291$2$244 ==.
                                   3787 ;	..\COMMON\easyax5043.c:291: update_timeanchor();
      000C5A 12 0B 63         [24] 3788 	lcall	_update_timeanchor
                           0000FA  3789 	C$easyax5043.c$292$2$244 ==.
                                   3790 ;	..\COMMON\easyax5043.c:292: if(axradio_framing_enable_sfdcallback)
      000C5D 90 55 E3         [24] 3791 	mov	dptr,#_axradio_framing_enable_sfdcallback
      000C60 E4               [12] 3792 	clr	a
      000C61 93               [24] 3793 	movc	a,@a+dptr
      000C62 60 2D            [24] 3794 	jz	00169$
                           000101  3795 	C$easyax5043.c$294$3$245 ==.
                                   3796 ;	..\COMMON\easyax5043.c:294: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
      000C64 90 02 55         [24] 3797 	mov	dptr,#_axradio_cb_receivesfd
      000C67 12 51 BE         [24] 3798 	lcall	_wtimer_remove_callback
                           000107  3799 	C$easyax5043.c$295$3$245 ==.
                                   3800 ;	..\COMMON\easyax5043.c:295: axradio_cb_receivesfd.st.error = AXRADIO_ERR_NOERROR;
      000C6A 90 02 5A         [24] 3801 	mov	dptr,#(_axradio_cb_receivesfd + 0x0005)
      000C6D E4               [12] 3802 	clr	a
      000C6E F0               [24] 3803 	movx	@dptr,a
                           00010C  3804 	C$easyax5043.c$296$3$245 ==.
                                   3805 ;	..\COMMON\easyax5043.c:296: axradio_cb_receivesfd.st.time.t = axradio_timeanchor.radiotimer;
      000C6F 90 00 1B         [24] 3806 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000C72 E0               [24] 3807 	movx	a,@dptr
      000C73 FB               [12] 3808 	mov	r3,a
      000C74 A3               [24] 3809 	inc	dptr
      000C75 E0               [24] 3810 	movx	a,@dptr
      000C76 FC               [12] 3811 	mov	r4,a
      000C77 A3               [24] 3812 	inc	dptr
      000C78 E0               [24] 3813 	movx	a,@dptr
      000C79 FD               [12] 3814 	mov	r5,a
      000C7A A3               [24] 3815 	inc	dptr
      000C7B E0               [24] 3816 	movx	a,@dptr
      000C7C FE               [12] 3817 	mov	r6,a
      000C7D 90 02 5B         [24] 3818 	mov	dptr,#(_axradio_cb_receivesfd + 0x0006)
      000C80 EB               [12] 3819 	mov	a,r3
      000C81 F0               [24] 3820 	movx	@dptr,a
      000C82 EC               [12] 3821 	mov	a,r4
      000C83 A3               [24] 3822 	inc	dptr
      000C84 F0               [24] 3823 	movx	@dptr,a
      000C85 ED               [12] 3824 	mov	a,r5
      000C86 A3               [24] 3825 	inc	dptr
      000C87 F0               [24] 3826 	movx	@dptr,a
      000C88 EE               [12] 3827 	mov	a,r6
      000C89 A3               [24] 3828 	inc	dptr
      000C8A F0               [24] 3829 	movx	@dptr,a
                           000128  3830 	C$easyax5043.c$297$3$245 ==.
                                   3831 ;	..\COMMON\easyax5043.c:297: wtimer_add_callback(&axradio_cb_receivesfd.cb);
      000C8B 90 02 55         [24] 3832 	mov	dptr,#_axradio_cb_receivesfd
      000C8E 12 46 A2         [24] 3833 	lcall	_wtimer_add_callback
                           00012E  3834 	C$easyax5043.c$309$1$243 ==.
                                   3835 ;	..\COMMON\easyax5043.c:309: while (AX5043_IRQREQUEST0 & 0x01) {    // while fifo not empty
      000C91                       3836 00169$:
      000C91                       3837 00153$:
      000C91 90 40 0D         [24] 3838 	mov	dptr,#_AX5043_IRQREQUEST0
      000C94 E0               [24] 3839 	movx	a,@dptr
      000C95 FE               [12] 3840 	mov	r6,a
      000C96 20 E0 03         [24] 3841 	jb	acc.0,00250$
      000C99 02 0F B1         [24] 3842 	ljmp	00156$
      000C9C                       3843 00250$:
                           000139  3844 	C$easyax5043.c$310$2$246 ==.
                                   3845 ;	..\COMMON\easyax5043.c:310: fifo_cmd = AX5043_FIFODATA; // read command
      000C9C 90 40 29         [24] 3846 	mov	dptr,#_AX5043_FIFODATA
      000C9F E0               [24] 3847 	movx	a,@dptr
      000CA0 FE               [12] 3848 	mov	r6,a
                           00013E  3849 	C$easyax5043.c$311$2$246 ==.
                                   3850 ;	..\COMMON\easyax5043.c:311: len = (fifo_cmd & 0xE0) >> 5; // top 3 bits encode payload len
      000CA1 74 E0            [12] 3851 	mov	a,#0xe0
      000CA3 5E               [12] 3852 	anl	a,r6
      000CA4 FD               [12] 3853 	mov	r5,a
      000CA5 C4               [12] 3854 	swap	a
      000CA6 03               [12] 3855 	rr	a
      000CA7 54 07            [12] 3856 	anl	a,#0x07
      000CA9 FF               [12] 3857 	mov	r7,a
                           000147  3858 	C$easyax5043.c$312$2$246 ==.
                                   3859 ;	..\COMMON\easyax5043.c:312: if (len == 7)
      000CAA BF 07 06         [24] 3860 	cjne	r7,#0x07,00107$
                           00014A  3861 	C$easyax5043.c$313$2$246 ==.
                                   3862 ;	..\COMMON\easyax5043.c:313: len = AX5043_FIFODATA; // 7 means variable length, -> get length byte
      000CAD 90 40 29         [24] 3863 	mov	dptr,#_AX5043_FIFODATA
      000CB0 E0               [24] 3864 	movx	a,@dptr
      000CB1 FD               [12] 3865 	mov	r5,a
      000CB2 FF               [12] 3866 	mov	r7,a
      000CB3                       3867 00107$:
                           000150  3868 	C$easyax5043.c$314$2$246 ==.
                                   3869 ;	..\COMMON\easyax5043.c:314: fifo_cmd &= 0x1F;
      000CB3 53 06 1F         [24] 3870 	anl	ar6,#0x1f
                           000153  3871 	C$easyax5043.c$315$2$246 ==.
                                   3872 ;	..\COMMON\easyax5043.c:315: switch (fifo_cmd) {
      000CB6 BE 01 02         [24] 3873 	cjne	r6,#0x01,00253$
      000CB9 80 21            [24] 3874 	sjmp	00108$
      000CBB                       3875 00253$:
      000CBB BE 10 03         [24] 3876 	cjne	r6,#0x10,00254$
      000CBE 02 0F 01         [24] 3877 	ljmp	00139$
      000CC1                       3878 00254$:
      000CC1 BE 11 03         [24] 3879 	cjne	r6,#0x11,00255$
      000CC4 02 0E D4         [24] 3880 	ljmp	00136$
      000CC7                       3881 00255$:
      000CC7 BE 12 03         [24] 3882 	cjne	r6,#0x12,00256$
      000CCA 02 0E 84         [24] 3883 	ljmp	00132$
      000CCD                       3884 00256$:
      000CCD BE 13 03         [24] 3885 	cjne	r6,#0x13,00257$
      000CD0 02 0E 3D         [24] 3886 	ljmp	00128$
      000CD3                       3887 00257$:
      000CD3 BE 15 03         [24] 3888 	cjne	r6,#0x15,00258$
      000CD6 02 0F 2A         [24] 3889 	ljmp	00142$
      000CD9                       3890 00258$:
      000CD9 02 0F A2         [24] 3891 	ljmp	00146$
                           000179  3892 	C$easyax5043.c$316$3$247 ==.
                                   3893 ;	..\COMMON\easyax5043.c:316: case AX5043_FIFOCMD_DATA:
      000CDC                       3894 00108$:
                           000179  3895 	C$easyax5043.c$317$3$247 ==.
                                   3896 ;	..\COMMON\easyax5043.c:317: if (!len)
      000CDC EF               [12] 3897 	mov	a,r7
      000CDD 60 B2            [24] 3898 	jz	00153$
                           00017C  3899 	C$easyax5043.c$320$3$247 ==.
                                   3900 ;	..\COMMON\easyax5043.c:320: flags = AX5043_FIFODATA;
      000CDF 90 40 29         [24] 3901 	mov	dptr,#_AX5043_FIFODATA
      000CE2 E0               [24] 3902 	movx	a,@dptr
                           000180  3903 	C$easyax5043.c$321$3$247 ==.
                                   3904 ;	..\COMMON\easyax5043.c:321: --len;
      000CE3 1F               [12] 3905 	dec	r7
                           000181  3906 	C$easyax5043.c$322$3$247 ==.
                                   3907 ;	..\COMMON\easyax5043.c:322: ax5043_readfifo(axradio_rxbuffer, len);
      000CE4 C0 07            [24] 3908 	push	ar7
      000CE6 C0 07            [24] 3909 	push	ar7
      000CE8 90 01 2F         [24] 3910 	mov	dptr,#_axradio_rxbuffer
      000CEB 75 F0 00         [24] 3911 	mov	b,#0x00
      000CEE 12 4D 7F         [24] 3912 	lcall	_ax5043_readfifo
      000CF1 15 81            [12] 3913 	dec	sp
      000CF3 D0 07            [24] 3914 	pop	ar7
                           000192  3915 	C$easyax5043.c$323$3$247 ==.
                                   3916 ;	..\COMMON\easyax5043.c:323: if(axradio_mode == AXRADIO_MODE_WOR_RECEIVE || axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
      000CF5 74 21            [12] 3917 	mov	a,#0x21
      000CF7 B5 08 02         [24] 3918 	cjne	a,_axradio_mode,00260$
      000CFA 80 05            [24] 3919 	sjmp	00111$
      000CFC                       3920 00260$:
      000CFC 74 23            [12] 3921 	mov	a,#0x23
      000CFE B5 08 21         [24] 3922 	cjne	a,_axradio_mode,00112$
      000D01                       3923 00111$:
                           00019E  3924 	C$easyax5043.c$325$4$248 ==.
                                   3925 ;	..\COMMON\easyax5043.c:325: f30_saved = AX5043_0xF30;
      000D01 90 4F 30         [24] 3926 	mov	dptr,#_AX5043_0xF30
      000D04 E0               [24] 3927 	movx	a,@dptr
      000D05 90 04 3A         [24] 3928 	mov	dptr,#_f30_saved
      000D08 F0               [24] 3929 	movx	@dptr,a
                           0001A6  3930 	C$easyax5043.c$326$4$248 ==.
                                   3931 ;	..\COMMON\easyax5043.c:326: f31_saved = AX5043_0xF31;
      000D09 90 4F 31         [24] 3932 	mov	dptr,#_AX5043_0xF31
      000D0C E0               [24] 3933 	movx	a,@dptr
      000D0D 90 04 3B         [24] 3934 	mov	dptr,#_f31_saved
      000D10 F0               [24] 3935 	movx	@dptr,a
                           0001AE  3936 	C$easyax5043.c$327$4$248 ==.
                                   3937 ;	..\COMMON\easyax5043.c:327: f32_saved = AX5043_0xF32;
      000D11 90 4F 32         [24] 3938 	mov	dptr,#_AX5043_0xF32
      000D14 E0               [24] 3939 	movx	a,@dptr
      000D15 90 04 3C         [24] 3940 	mov	dptr,#_f32_saved
      000D18 F0               [24] 3941 	movx	@dptr,a
                           0001B6  3942 	C$easyax5043.c$328$4$248 ==.
                                   3943 ;	..\COMMON\easyax5043.c:328: f33_saved = AX5043_0xF33;
      000D19 90 4F 33         [24] 3944 	mov	dptr,#_AX5043_0xF33
      000D1C E0               [24] 3945 	movx	a,@dptr
      000D1D FE               [12] 3946 	mov	r6,a
      000D1E 90 04 3D         [24] 3947 	mov	dptr,#_f33_saved
      000D21 F0               [24] 3948 	movx	@dptr,a
      000D22                       3949 00112$:
                           0001BF  3950 	C$easyax5043.c$330$3$247 ==.
                                   3951 ;	..\COMMON\easyax5043.c:330: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE ||
      000D22 74 21            [12] 3952 	mov	a,#0x21
      000D24 B5 08 02         [24] 3953 	cjne	a,_axradio_mode,00263$
      000D27 80 05            [24] 3954 	sjmp	00114$
      000D29                       3955 00263$:
                           0001C6  3956 	C$easyax5043.c$331$3$247 ==.
                                   3957 ;	..\COMMON\easyax5043.c:331: axradio_mode == AXRADIO_MODE_SYNC_SLAVE)
      000D29 74 32            [12] 3958 	mov	a,#0x32
      000D2B B5 08 05         [24] 3959 	cjne	a,_axradio_mode,00115$
      000D2E                       3960 00114$:
                           0001CB  3961 	C$easyax5043.c$332$3$247 ==.
                                   3962 ;	..\COMMON\easyax5043.c:332: AX5043_PWRMODE = AX5043_PWRSTATE_POWERDOWN;
      000D2E 90 40 02         [24] 3963 	mov	dptr,#_AX5043_PWRMODE
      000D31 E4               [12] 3964 	clr	a
      000D32 F0               [24] 3965 	movx	@dptr,a
      000D33                       3966 00115$:
                           0001D0  3967 	C$easyax5043.c$333$3$247 ==.
                                   3968 ;	..\COMMON\easyax5043.c:333: AX5043_IRQMASK0 &= (uint8_t)~0x01; // disable FIFO not empty irq
      000D33 90 40 07         [24] 3969 	mov	dptr,#_AX5043_IRQMASK0
      000D36 E0               [24] 3970 	movx	a,@dptr
      000D37 FE               [12] 3971 	mov	r6,a
      000D38 74 FE            [12] 3972 	mov	a,#0xfe
      000D3A 5E               [12] 3973 	anl	a,r6
      000D3B F0               [24] 3974 	movx	@dptr,a
                           0001D9  3975 	C$easyax5043.c$334$3$247 ==.
                                   3976 ;	..\COMMON\easyax5043.c:334: wtimer_remove_callback(&axradio_cb_receive.cb);
      000D3C 90 02 33         [24] 3977 	mov	dptr,#_axradio_cb_receive
      000D3F C0 07            [24] 3978 	push	ar7
      000D41 12 51 BE         [24] 3979 	lcall	_wtimer_remove_callback
      000D44 D0 07            [24] 3980 	pop	ar7
                           0001E3  3981 	C$easyax5043.c$335$3$247 ==.
                                   3982 ;	..\COMMON\easyax5043.c:335: axradio_cb_receive.st.error = AXRADIO_ERR_NOERROR;
      000D46 90 02 38         [24] 3983 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      000D49 E4               [12] 3984 	clr	a
      000D4A F0               [24] 3985 	movx	@dptr,a
                           0001E8  3986 	C$easyax5043.c$336$3$247 ==.
                                   3987 ;	..\COMMON\easyax5043.c:336: axradio_cb_receive.st.rx.mac.raw = axradio_rxbuffer;
      000D4B 90 02 4F         [24] 3988 	mov	dptr,#(_axradio_cb_receive + 0x001c)
      000D4E 74 2F            [12] 3989 	mov	a,#_axradio_rxbuffer
      000D50 F0               [24] 3990 	movx	@dptr,a
      000D51 74 01            [12] 3991 	mov	a,#(_axradio_rxbuffer >> 8)
      000D53 A3               [24] 3992 	inc	dptr
      000D54 F0               [24] 3993 	movx	@dptr,a
                           0001F2  3994 	C$easyax5043.c$337$3$247 ==.
                                   3995 ;	..\COMMON\easyax5043.c:337: if (AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
      000D55 74 F8            [12] 3996 	mov	a,#0xf8
      000D57 55 08            [12] 3997 	anl	a,_axradio_mode
      000D59 FE               [12] 3998 	mov	r6,a
      000D5A BE 28 02         [24] 3999 	cjne	r6,#0x28,00266$
      000D5D 80 03            [24] 4000 	sjmp	00267$
      000D5F                       4001 00266$:
      000D5F 02 0D EB         [24] 4002 	ljmp	00121$
      000D62                       4003 00267$:
                           0001FF  4004 	C$easyax5043.c$338$4$249 ==.
                                   4005 ;	..\COMMON\easyax5043.c:338: axradio_cb_receive.st.rx.pktdata = axradio_rxbuffer;
      000D62 90 02 51         [24] 4006 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      000D65 74 2F            [12] 4007 	mov	a,#_axradio_rxbuffer
      000D67 F0               [24] 4008 	movx	@dptr,a
      000D68 74 01            [12] 4009 	mov	a,#(_axradio_rxbuffer >> 8)
      000D6A A3               [24] 4010 	inc	dptr
      000D6B F0               [24] 4011 	movx	@dptr,a
                           000209  4012 	C$easyax5043.c$339$4$249 ==.
                                   4013 ;	..\COMMON\easyax5043.c:339: axradio_cb_receive.st.rx.pktlen = len;
      000D6C 8F 05            [24] 4014 	mov	ar5,r7
      000D6E 7E 00            [12] 4015 	mov	r6,#0x00
      000D70 90 02 53         [24] 4016 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      000D73 ED               [12] 4017 	mov	a,r5
      000D74 F0               [24] 4018 	movx	@dptr,a
      000D75 EE               [12] 4019 	mov	a,r6
      000D76 A3               [24] 4020 	inc	dptr
      000D77 F0               [24] 4021 	movx	@dptr,a
                           000215  4022 	C$easyax5043.c$341$5$249 ==.
                                   4023 ;	..\COMMON\easyax5043.c:341: int8_t r = AX5043_RSSI;
      000D78 90 40 40         [24] 4024 	mov	dptr,#_AX5043_RSSI
      000D7B E0               [24] 4025 	movx	a,@dptr
                           000219  4026 	C$easyax5043.c$342$5$250 ==.
                                   4027 ;	..\COMMON\easyax5043.c:342: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
      000D7C FE               [12] 4028 	mov	r6,a
      000D7D 33               [12] 4029 	rlc	a
      000D7E 95 E0            [12] 4030 	subb	a,acc
      000D80 FD               [12] 4031 	mov	r5,a
      000D81 90 55 C1         [24] 4032 	mov	dptr,#_axradio_phy_rssioffset
      000D84 E4               [12] 4033 	clr	a
      000D85 93               [24] 4034 	movc	a,@a+dptr
      000D86 FC               [12] 4035 	mov	r4,a
      000D87 33               [12] 4036 	rlc	a
      000D88 95 E0            [12] 4037 	subb	a,acc
      000D8A FB               [12] 4038 	mov	r3,a
      000D8B EE               [12] 4039 	mov	a,r6
      000D8C C3               [12] 4040 	clr	c
      000D8D 9C               [12] 4041 	subb	a,r4
      000D8E FE               [12] 4042 	mov	r6,a
      000D8F ED               [12] 4043 	mov	a,r5
      000D90 9B               [12] 4044 	subb	a,r3
      000D91 FD               [12] 4045 	mov	r5,a
      000D92 90 02 3D         [24] 4046 	mov	dptr,#(_axradio_cb_receive + 0x000a)
      000D95 EE               [12] 4047 	mov	a,r6
      000D96 F0               [24] 4048 	movx	@dptr,a
      000D97 ED               [12] 4049 	mov	a,r5
      000D98 A3               [24] 4050 	inc	dptr
      000D99 F0               [24] 4051 	movx	@dptr,a
                           000237  4052 	C$easyax5043.c$344$4$249 ==.
                                   4053 ;	..\COMMON\easyax5043.c:344: if (axradio_phy_innerfreqloop)
      000D9A 90 55 B3         [24] 4054 	mov	dptr,#_axradio_phy_innerfreqloop
      000D9D E4               [12] 4055 	clr	a
      000D9E 93               [24] 4056 	movc	a,@a+dptr
      000D9F 60 23            [24] 4057 	jz	00118$
                           00023E  4058 	C$easyax5043.c$345$4$249 ==.
                                   4059 ;	..\COMMON\easyax5043.c:345: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(radio_read16((uint16_t)&AX5043_TRKFREQ1)));
      000DA1 90 40 50         [24] 4060 	mov	dptr,#_AX5043_TRKFREQ1
      000DA4 12 48 FD         [24] 4061 	lcall	_radio_read16
      000DA7 12 54 AF         [24] 4062 	lcall	_signextend16
      000DAA 12 08 0F         [24] 4063 	lcall	_axradio_conv_freq_fromreg
      000DAD AB 82            [24] 4064 	mov	r3,dpl
      000DAF AC 83            [24] 4065 	mov	r4,dph
      000DB1 AD F0            [24] 4066 	mov	r5,b
      000DB3 FE               [12] 4067 	mov	r6,a
      000DB4 90 02 3F         [24] 4068 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000DB7 EB               [12] 4069 	mov	a,r3
      000DB8 F0               [24] 4070 	movx	@dptr,a
      000DB9 EC               [12] 4071 	mov	a,r4
      000DBA A3               [24] 4072 	inc	dptr
      000DBB F0               [24] 4073 	movx	@dptr,a
      000DBC ED               [12] 4074 	mov	a,r5
      000DBD A3               [24] 4075 	inc	dptr
      000DBE F0               [24] 4076 	movx	@dptr,a
      000DBF EE               [12] 4077 	mov	a,r6
      000DC0 A3               [24] 4078 	inc	dptr
      000DC1 F0               [24] 4079 	movx	@dptr,a
      000DC2 80 1E            [24] 4080 	sjmp	00119$
      000DC4                       4081 00118$:
                           000261  4082 	C$easyax5043.c$347$4$249 ==.
                                   4083 ;	..\COMMON\easyax5043.c:347: axradio_cb_receive.st.rx.phy.offset.o = signextend20(radio_read24((uint16_t)&AX5043_TRKRFFREQ2));
      000DC4 90 40 4D         [24] 4084 	mov	dptr,#_AX5043_TRKRFFREQ2
      000DC7 12 47 C4         [24] 4085 	lcall	_radio_read24
      000DCA 12 53 5E         [24] 4086 	lcall	_signextend20
      000DCD AB 82            [24] 4087 	mov	r3,dpl
      000DCF AC 83            [24] 4088 	mov	r4,dph
      000DD1 AD F0            [24] 4089 	mov	r5,b
      000DD3 FE               [12] 4090 	mov	r6,a
      000DD4 90 02 3F         [24] 4091 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000DD7 EB               [12] 4092 	mov	a,r3
      000DD8 F0               [24] 4093 	movx	@dptr,a
      000DD9 EC               [12] 4094 	mov	a,r4
      000DDA A3               [24] 4095 	inc	dptr
      000DDB F0               [24] 4096 	movx	@dptr,a
      000DDC ED               [12] 4097 	mov	a,r5
      000DDD A3               [24] 4098 	inc	dptr
      000DDE F0               [24] 4099 	movx	@dptr,a
      000DDF EE               [12] 4100 	mov	a,r6
      000DE0 A3               [24] 4101 	inc	dptr
      000DE1 F0               [24] 4102 	movx	@dptr,a
      000DE2                       4103 00119$:
                           00027F  4104 	C$easyax5043.c$348$4$249 ==.
                                   4105 ;	..\COMMON\easyax5043.c:348: wtimer_add_callback(&axradio_cb_receive.cb);
      000DE2 90 02 33         [24] 4106 	mov	dptr,#_axradio_cb_receive
      000DE5 12 46 A2         [24] 4107 	lcall	_wtimer_add_callback
                           000285  4108 	C$easyax5043.c$349$4$249 ==.
                                   4109 ;	..\COMMON\easyax5043.c:349: break;
      000DE8 02 0C 91         [24] 4110 	ljmp	00153$
      000DEB                       4111 00121$:
                           000288  4112 	C$easyax5043.c$351$3$247 ==.
                                   4113 ;	..\COMMON\easyax5043.c:351: axradio_cb_receive.st.rx.pktdata = &axradio_rxbuffer[axradio_framing_maclen];
      000DEB 90 55 D5         [24] 4114 	mov	dptr,#_axradio_framing_maclen
      000DEE E4               [12] 4115 	clr	a
      000DEF 93               [24] 4116 	movc	a,@a+dptr
      000DF0 FE               [12] 4117 	mov	r6,a
      000DF1 24 2F            [12] 4118 	add	a,#_axradio_rxbuffer
      000DF3 FC               [12] 4119 	mov	r4,a
      000DF4 E4               [12] 4120 	clr	a
      000DF5 34 01            [12] 4121 	addc	a,#(_axradio_rxbuffer >> 8)
      000DF7 FD               [12] 4122 	mov	r5,a
      000DF8 90 02 51         [24] 4123 	mov	dptr,#(_axradio_cb_receive + 0x001e)
      000DFB EC               [12] 4124 	mov	a,r4
      000DFC F0               [24] 4125 	movx	@dptr,a
      000DFD ED               [12] 4126 	mov	a,r5
      000DFE A3               [24] 4127 	inc	dptr
      000DFF F0               [24] 4128 	movx	@dptr,a
                           00029D  4129 	C$easyax5043.c$352$3$247 ==.
                                   4130 ;	..\COMMON\easyax5043.c:352: if (len < axradio_framing_maclen) {
      000E00 C3               [12] 4131 	clr	c
      000E01 EF               [12] 4132 	mov	a,r7
      000E02 9E               [12] 4133 	subb	a,r6
      000E03 50 0A            [24] 4134 	jnc	00126$
                           0002A2  4135 	C$easyax5043.c$354$4$251 ==.
                                   4136 ;	..\COMMON\easyax5043.c:354: axradio_cb_receive.st.rx.pktlen = 0;
      000E05 90 02 53         [24] 4137 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      000E08 E4               [12] 4138 	clr	a
      000E09 F0               [24] 4139 	movx	@dptr,a
      000E0A A3               [24] 4140 	inc	dptr
      000E0B F0               [24] 4141 	movx	@dptr,a
      000E0C 02 0C 91         [24] 4142 	ljmp	00153$
      000E0F                       4143 00126$:
                           0002AC  4144 	C$easyax5043.c$356$4$252 ==.
                                   4145 ;	..\COMMON\easyax5043.c:356: len -= axradio_framing_maclen;
      000E0F EF               [12] 4146 	mov	a,r7
      000E10 C3               [12] 4147 	clr	c
      000E11 9E               [12] 4148 	subb	a,r6
                           0002AF  4149 	C$easyax5043.c$357$4$252 ==.
                                   4150 ;	..\COMMON\easyax5043.c:357: axradio_cb_receive.st.rx.pktlen = len;
      000E12 FD               [12] 4151 	mov	r5,a
      000E13 7E 00            [12] 4152 	mov	r6,#0x00
      000E15 90 02 53         [24] 4153 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      000E18 ED               [12] 4154 	mov	a,r5
      000E19 F0               [24] 4155 	movx	@dptr,a
      000E1A EE               [12] 4156 	mov	a,r6
      000E1B A3               [24] 4157 	inc	dptr
      000E1C F0               [24] 4158 	movx	@dptr,a
                           0002BA  4159 	C$easyax5043.c$358$4$252 ==.
                                   4160 ;	..\COMMON\easyax5043.c:358: wtimer_add_callback(&axradio_cb_receive.cb);
      000E1D 90 02 33         [24] 4161 	mov	dptr,#_axradio_cb_receive
      000E20 12 46 A2         [24] 4162 	lcall	_wtimer_add_callback
                           0002C0  4163 	C$easyax5043.c$359$4$252 ==.
                                   4164 ;	..\COMMON\easyax5043.c:359: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
      000E23 74 32            [12] 4165 	mov	a,#0x32
      000E25 B5 08 02         [24] 4166 	cjne	a,_axradio_mode,00270$
      000E28 80 0A            [24] 4167 	sjmp	00122$
      000E2A                       4168 00270$:
                           0002C7  4169 	C$easyax5043.c$360$4$252 ==.
                                   4170 ;	..\COMMON\easyax5043.c:360: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE)
      000E2A 74 33            [12] 4171 	mov	a,#0x33
      000E2C B5 08 02         [24] 4172 	cjne	a,_axradio_mode,00271$
      000E2F 80 03            [24] 4173 	sjmp	00272$
      000E31                       4174 00271$:
      000E31 02 0C 91         [24] 4175 	ljmp	00153$
      000E34                       4176 00272$:
      000E34                       4177 00122$:
                           0002D1  4178 	C$easyax5043.c$361$4$252 ==.
                                   4179 ;	..\COMMON\easyax5043.c:361: wtimer_remove(&axradio_timer);
      000E34 90 02 8A         [24] 4180 	mov	dptr,#_axradio_timer
      000E37 12 4D D3         [24] 4181 	lcall	_wtimer_remove
                           0002D7  4182 	C$easyax5043.c$363$3$247 ==.
                                   4183 ;	..\COMMON\easyax5043.c:363: break;
      000E3A 02 0C 91         [24] 4184 	ljmp	00153$
                           0002DA  4185 	C$easyax5043.c$365$3$247 ==.
                                   4186 ;	..\COMMON\easyax5043.c:365: case AX5043_FIFOCMD_RFFREQOFFS:
      000E3D                       4187 00128$:
                           0002DA  4188 	C$easyax5043.c$366$3$247 ==.
                                   4189 ;	..\COMMON\easyax5043.c:366: if (axradio_phy_innerfreqloop || len != 3)
      000E3D 90 55 B3         [24] 4190 	mov	dptr,#_axradio_phy_innerfreqloop
      000E40 E4               [12] 4191 	clr	a
      000E41 93               [24] 4192 	movc	a,@a+dptr
      000E42 60 03            [24] 4193 	jz	00273$
      000E44 02 0F A2         [24] 4194 	ljmp	00146$
      000E47                       4195 00273$:
      000E47 BF 03 02         [24] 4196 	cjne	r7,#0x03,00274$
      000E4A 80 03            [24] 4197 	sjmp	00275$
      000E4C                       4198 00274$:
      000E4C 02 0F A2         [24] 4199 	ljmp	00146$
      000E4F                       4200 00275$:
                           0002EC  4201 	C$easyax5043.c$368$3$247 ==.
                                   4202 ;	..\COMMON\easyax5043.c:368: i = AX5043_FIFODATA;
      000E4F 90 40 29         [24] 4203 	mov	dptr,#_AX5043_FIFODATA
      000E52 E0               [24] 4204 	movx	a,@dptr
      000E53 FE               [12] 4205 	mov	r6,a
                           0002F1  4206 	C$easyax5043.c$369$3$247 ==.
                                   4207 ;	..\COMMON\easyax5043.c:369: i &= 0x0F;
      000E54 53 06 0F         [24] 4208 	anl	ar6,#0x0f
                           0002F4  4209 	C$easyax5043.c$370$3$247 ==.
                                   4210 ;	..\COMMON\easyax5043.c:370: i |= 1 + (uint8_t)~(i & 0x08);
      000E57 74 08            [12] 4211 	mov	a,#0x08
      000E59 5E               [12] 4212 	anl	a,r6
      000E5A F4               [12] 4213 	cpl	a
      000E5B FD               [12] 4214 	mov	r5,a
      000E5C 0D               [12] 4215 	inc	r5
      000E5D ED               [12] 4216 	mov	a,r5
      000E5E 42 06            [12] 4217 	orl	ar6,a
                           0002FD  4218 	C$easyax5043.c$371$3$247 ==.
                                   4219 ;	..\COMMON\easyax5043.c:371: axradio_cb_receive.st.rx.phy.offset.b.b3 = ((int8_t)i) >> 8;
      000E60 8E 05            [24] 4220 	mov	ar5,r6
      000E62 ED               [12] 4221 	mov	a,r5
      000E63 33               [12] 4222 	rlc	a
      000E64 95 E0            [12] 4223 	subb	a,acc
      000E66 FD               [12] 4224 	mov	r5,a
      000E67 90 02 42         [24] 4225 	mov	dptr,#(_axradio_cb_receive + 0x000f)
      000E6A F0               [24] 4226 	movx	@dptr,a
                           000308  4227 	C$easyax5043.c$372$3$247 ==.
                                   4228 ;	..\COMMON\easyax5043.c:372: axradio_cb_receive.st.rx.phy.offset.b.b2 = i;
      000E6B 90 02 41         [24] 4229 	mov	dptr,#(_axradio_cb_receive + 0x000e)
      000E6E EE               [12] 4230 	mov	a,r6
      000E6F F0               [24] 4231 	movx	@dptr,a
                           00030D  4232 	C$easyax5043.c$373$3$247 ==.
                                   4233 ;	..\COMMON\easyax5043.c:373: axradio_cb_receive.st.rx.phy.offset.b.b1 = AX5043_FIFODATA;
      000E70 90 40 29         [24] 4234 	mov	dptr,#_AX5043_FIFODATA
      000E73 E0               [24] 4235 	movx	a,@dptr
      000E74 90 02 40         [24] 4236 	mov	dptr,#(_axradio_cb_receive + 0x000d)
      000E77 F0               [24] 4237 	movx	@dptr,a
                           000315  4238 	C$easyax5043.c$374$3$247 ==.
                                   4239 ;	..\COMMON\easyax5043.c:374: axradio_cb_receive.st.rx.phy.offset.b.b0 = AX5043_FIFODATA;
      000E78 90 40 29         [24] 4240 	mov	dptr,#_AX5043_FIFODATA
      000E7B E0               [24] 4241 	movx	a,@dptr
      000E7C FE               [12] 4242 	mov	r6,a
      000E7D 90 02 3F         [24] 4243 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000E80 F0               [24] 4244 	movx	@dptr,a
                           00031E  4245 	C$easyax5043.c$375$3$247 ==.
                                   4246 ;	..\COMMON\easyax5043.c:375: break;
      000E81 02 0C 91         [24] 4247 	ljmp	00153$
                           000321  4248 	C$easyax5043.c$377$3$247 ==.
                                   4249 ;	..\COMMON\easyax5043.c:377: case AX5043_FIFOCMD_FREQOFFS:
      000E84                       4250 00132$:
                           000321  4251 	C$easyax5043.c$378$3$247 ==.
                                   4252 ;	..\COMMON\easyax5043.c:378: if (!axradio_phy_innerfreqloop || len != 2)
      000E84 90 55 B3         [24] 4253 	mov	dptr,#_axradio_phy_innerfreqloop
      000E87 E4               [12] 4254 	clr	a
      000E88 93               [24] 4255 	movc	a,@a+dptr
      000E89 70 03            [24] 4256 	jnz	00276$
      000E8B 02 0F A2         [24] 4257 	ljmp	00146$
      000E8E                       4258 00276$:
      000E8E BF 02 02         [24] 4259 	cjne	r7,#0x02,00277$
      000E91 80 03            [24] 4260 	sjmp	00278$
      000E93                       4261 00277$:
      000E93 02 0F A2         [24] 4262 	ljmp	00146$
      000E96                       4263 00278$:
                           000333  4264 	C$easyax5043.c$380$3$247 ==.
                                   4265 ;	..\COMMON\easyax5043.c:380: axradio_cb_receive.st.rx.phy.offset.b.b1 = AX5043_FIFODATA;
      000E96 90 40 29         [24] 4266 	mov	dptr,#_AX5043_FIFODATA
      000E99 E0               [24] 4267 	movx	a,@dptr
      000E9A 90 02 40         [24] 4268 	mov	dptr,#(_axradio_cb_receive + 0x000d)
      000E9D F0               [24] 4269 	movx	@dptr,a
                           00033B  4270 	C$easyax5043.c$381$3$247 ==.
                                   4271 ;	..\COMMON\easyax5043.c:381: axradio_cb_receive.st.rx.phy.offset.b.b0 = AX5043_FIFODATA;
      000E9E 90 40 29         [24] 4272 	mov	dptr,#_AX5043_FIFODATA
      000EA1 E0               [24] 4273 	movx	a,@dptr
      000EA2 90 02 3F         [24] 4274 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000EA5 F0               [24] 4275 	movx	@dptr,a
                           000343  4276 	C$easyax5043.c$382$3$247 ==.
                                   4277 ;	..\COMMON\easyax5043.c:382: axradio_cb_receive.st.rx.phy.offset.o = axradio_conv_freq_fromreg(signextend16(axradio_cb_receive.st.rx.phy.offset.o));
      000EA6 90 02 3F         [24] 4278 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000EA9 E0               [24] 4279 	movx	a,@dptr
      000EAA FB               [12] 4280 	mov	r3,a
      000EAB A3               [24] 4281 	inc	dptr
      000EAC E0               [24] 4282 	movx	a,@dptr
      000EAD FC               [12] 4283 	mov	r4,a
      000EAE A3               [24] 4284 	inc	dptr
      000EAF E0               [24] 4285 	movx	a,@dptr
      000EB0 A3               [24] 4286 	inc	dptr
      000EB1 E0               [24] 4287 	movx	a,@dptr
      000EB2 8B 82            [24] 4288 	mov	dpl,r3
      000EB4 8C 83            [24] 4289 	mov	dph,r4
      000EB6 12 54 AF         [24] 4290 	lcall	_signextend16
      000EB9 12 08 0F         [24] 4291 	lcall	_axradio_conv_freq_fromreg
      000EBC AB 82            [24] 4292 	mov	r3,dpl
      000EBE AC 83            [24] 4293 	mov	r4,dph
      000EC0 AD F0            [24] 4294 	mov	r5,b
      000EC2 FE               [12] 4295 	mov	r6,a
      000EC3 90 02 3F         [24] 4296 	mov	dptr,#(_axradio_cb_receive + 0x000c)
      000EC6 EB               [12] 4297 	mov	a,r3
      000EC7 F0               [24] 4298 	movx	@dptr,a
      000EC8 EC               [12] 4299 	mov	a,r4
      000EC9 A3               [24] 4300 	inc	dptr
      000ECA F0               [24] 4301 	movx	@dptr,a
      000ECB ED               [12] 4302 	mov	a,r5
      000ECC A3               [24] 4303 	inc	dptr
      000ECD F0               [24] 4304 	movx	@dptr,a
      000ECE EE               [12] 4305 	mov	a,r6
      000ECF A3               [24] 4306 	inc	dptr
      000ED0 F0               [24] 4307 	movx	@dptr,a
                           00036E  4308 	C$easyax5043.c$383$3$247 ==.
                                   4309 ;	..\COMMON\easyax5043.c:383: break;
      000ED1 02 0C 91         [24] 4310 	ljmp	00153$
                           000371  4311 	C$easyax5043.c$385$3$247 ==.
                                   4312 ;	..\COMMON\easyax5043.c:385: case AX5043_FIFOCMD_RSSI:
      000ED4                       4313 00136$:
                           000371  4314 	C$easyax5043.c$386$3$247 ==.
                                   4315 ;	..\COMMON\easyax5043.c:386: if (len != 1)
      000ED4 BF 01 02         [24] 4316 	cjne	r7,#0x01,00279$
      000ED7 80 03            [24] 4317 	sjmp	00280$
      000ED9                       4318 00279$:
      000ED9 02 0F A2         [24] 4319 	ljmp	00146$
      000EDC                       4320 00280$:
                           000379  4321 	C$easyax5043.c$389$4$247 ==.
                                   4322 ;	..\COMMON\easyax5043.c:389: int8_t r = AX5043_FIFODATA;
      000EDC 90 40 29         [24] 4323 	mov	dptr,#_AX5043_FIFODATA
      000EDF E0               [24] 4324 	movx	a,@dptr
                           00037D  4325 	C$easyax5043.c$390$4$253 ==.
                                   4326 ;	..\COMMON\easyax5043.c:390: axradio_cb_receive.st.rx.phy.rssi = r - (int16_t)axradio_phy_rssioffset;
      000EE0 FE               [12] 4327 	mov	r6,a
      000EE1 33               [12] 4328 	rlc	a
      000EE2 95 E0            [12] 4329 	subb	a,acc
      000EE4 FD               [12] 4330 	mov	r5,a
      000EE5 90 55 C1         [24] 4331 	mov	dptr,#_axradio_phy_rssioffset
      000EE8 E4               [12] 4332 	clr	a
      000EE9 93               [24] 4333 	movc	a,@a+dptr
      000EEA FC               [12] 4334 	mov	r4,a
      000EEB 33               [12] 4335 	rlc	a
      000EEC 95 E0            [12] 4336 	subb	a,acc
      000EEE FB               [12] 4337 	mov	r3,a
      000EEF EE               [12] 4338 	mov	a,r6
      000EF0 C3               [12] 4339 	clr	c
      000EF1 9C               [12] 4340 	subb	a,r4
      000EF2 FE               [12] 4341 	mov	r6,a
      000EF3 ED               [12] 4342 	mov	a,r5
      000EF4 9B               [12] 4343 	subb	a,r3
      000EF5 FD               [12] 4344 	mov	r5,a
      000EF6 90 02 3D         [24] 4345 	mov	dptr,#(_axradio_cb_receive + 0x000a)
      000EF9 EE               [12] 4346 	mov	a,r6
      000EFA F0               [24] 4347 	movx	@dptr,a
      000EFB ED               [12] 4348 	mov	a,r5
      000EFC A3               [24] 4349 	inc	dptr
      000EFD F0               [24] 4350 	movx	@dptr,a
                           00039B  4351 	C$easyax5043.c$392$3$247 ==.
                                   4352 ;	..\COMMON\easyax5043.c:392: break;
      000EFE 02 0C 91         [24] 4353 	ljmp	00153$
                           00039E  4354 	C$easyax5043.c$394$3$247 ==.
                                   4355 ;	..\COMMON\easyax5043.c:394: case AX5043_FIFOCMD_TIMER:
      000F01                       4356 00139$:
                           00039E  4357 	C$easyax5043.c$395$3$247 ==.
                                   4358 ;	..\COMMON\easyax5043.c:395: if (len != 3)
      000F01 BF 03 02         [24] 4359 	cjne	r7,#0x03,00281$
      000F04 80 03            [24] 4360 	sjmp	00282$
      000F06                       4361 00281$:
      000F06 02 0F A2         [24] 4362 	ljmp	00146$
      000F09                       4363 00282$:
                           0003A6  4364 	C$easyax5043.c$399$3$247 ==.
                                   4365 ;	..\COMMON\easyax5043.c:399: axradio_cb_receive.st.time.b.b3 = 0;
      000F09 90 02 3C         [24] 4366 	mov	dptr,#(_axradio_cb_receive + 0x0009)
      000F0C E4               [12] 4367 	clr	a
      000F0D F0               [24] 4368 	movx	@dptr,a
                           0003AB  4369 	C$easyax5043.c$400$3$247 ==.
                                   4370 ;	..\COMMON\easyax5043.c:400: axradio_cb_receive.st.time.b.b2 = AX5043_FIFODATA;
      000F0E 90 40 29         [24] 4371 	mov	dptr,#_AX5043_FIFODATA
      000F11 E0               [24] 4372 	movx	a,@dptr
      000F12 90 02 3B         [24] 4373 	mov	dptr,#(_axradio_cb_receive + 0x0008)
      000F15 F0               [24] 4374 	movx	@dptr,a
                           0003B3  4375 	C$easyax5043.c$401$3$247 ==.
                                   4376 ;	..\COMMON\easyax5043.c:401: axradio_cb_receive.st.time.b.b1 = AX5043_FIFODATA;
      000F16 90 40 29         [24] 4377 	mov	dptr,#_AX5043_FIFODATA
      000F19 E0               [24] 4378 	movx	a,@dptr
      000F1A 90 02 3A         [24] 4379 	mov	dptr,#(_axradio_cb_receive + 0x0007)
      000F1D F0               [24] 4380 	movx	@dptr,a
                           0003BB  4381 	C$easyax5043.c$402$3$247 ==.
                                   4382 ;	..\COMMON\easyax5043.c:402: axradio_cb_receive.st.time.b.b0 = AX5043_FIFODATA;
      000F1E 90 40 29         [24] 4383 	mov	dptr,#_AX5043_FIFODATA
      000F21 E0               [24] 4384 	movx	a,@dptr
      000F22 FE               [12] 4385 	mov	r6,a
      000F23 90 02 39         [24] 4386 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      000F26 F0               [24] 4387 	movx	@dptr,a
                           0003C4  4388 	C$easyax5043.c$403$3$247 ==.
                                   4389 ;	..\COMMON\easyax5043.c:403: break;
      000F27 02 0C 91         [24] 4390 	ljmp	00153$
                           0003C7  4391 	C$easyax5043.c$405$3$247 ==.
                                   4392 ;	..\COMMON\easyax5043.c:405: case AX5043_FIFOCMD_ANTRSSI:
      000F2A                       4393 00142$:
                           0003C7  4394 	C$easyax5043.c$406$3$247 ==.
                                   4395 ;	..\COMMON\easyax5043.c:406: if (!len)
      000F2A EF               [12] 4396 	mov	a,r7
      000F2B 70 03            [24] 4397 	jnz	00283$
      000F2D 02 0C 91         [24] 4398 	ljmp	00153$
      000F30                       4399 00283$:
                           0003CD  4400 	C$easyax5043.c$408$3$247 ==.
                                   4401 ;	..\COMMON\easyax5043.c:408: update_timeanchor();
      000F30 C0 07            [24] 4402 	push	ar7
      000F32 12 0B 63         [24] 4403 	lcall	_update_timeanchor
                           0003D2  4404 	C$easyax5043.c$409$3$247 ==.
                                   4405 ;	..\COMMON\easyax5043.c:409: wtimer_remove_callback(&axradio_cb_channelstate.cb);
      000F35 90 02 5F         [24] 4406 	mov	dptr,#_axradio_cb_channelstate
      000F38 12 51 BE         [24] 4407 	lcall	_wtimer_remove_callback
                           0003D8  4408 	C$easyax5043.c$410$3$247 ==.
                                   4409 ;	..\COMMON\easyax5043.c:410: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
      000F3B 90 02 64         [24] 4410 	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
      000F3E E4               [12] 4411 	clr	a
      000F3F F0               [24] 4412 	movx	@dptr,a
                           0003DD  4413 	C$easyax5043.c$412$4$247 ==.
                                   4414 ;	..\COMMON\easyax5043.c:412: int8_t r = AX5043_FIFODATA;
      000F40 90 40 29         [24] 4415 	mov	dptr,#_AX5043_FIFODATA
      000F43 E0               [24] 4416 	movx	a,@dptr
                           0003E1  4417 	C$easyax5043.c$413$4$254 ==.
                                   4418 ;	..\COMMON\easyax5043.c:413: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
      000F44 FE               [12] 4419 	mov	r6,a
      000F45 FC               [12] 4420 	mov	r4,a
      000F46 33               [12] 4421 	rlc	a
      000F47 95 E0            [12] 4422 	subb	a,acc
      000F49 FD               [12] 4423 	mov	r5,a
      000F4A 90 55 C1         [24] 4424 	mov	dptr,#_axradio_phy_rssioffset
      000F4D E4               [12] 4425 	clr	a
      000F4E 93               [24] 4426 	movc	a,@a+dptr
      000F4F FB               [12] 4427 	mov	r3,a
      000F50 33               [12] 4428 	rlc	a
      000F51 95 E0            [12] 4429 	subb	a,acc
      000F53 FA               [12] 4430 	mov	r2,a
      000F54 EC               [12] 4431 	mov	a,r4
      000F55 C3               [12] 4432 	clr	c
      000F56 9B               [12] 4433 	subb	a,r3
      000F57 FC               [12] 4434 	mov	r4,a
      000F58 ED               [12] 4435 	mov	a,r5
      000F59 9A               [12] 4436 	subb	a,r2
      000F5A FD               [12] 4437 	mov	r5,a
      000F5B 90 02 69         [24] 4438 	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
      000F5E EC               [12] 4439 	mov	a,r4
      000F5F F0               [24] 4440 	movx	@dptr,a
      000F60 ED               [12] 4441 	mov	a,r5
      000F61 A3               [24] 4442 	inc	dptr
      000F62 F0               [24] 4443 	movx	@dptr,a
                           000400  4444 	C$easyax5043.c$414$4$254 ==.
                                   4445 ;	..\COMMON\easyax5043.c:414: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
      000F63 90 55 C3         [24] 4446 	mov	dptr,#_axradio_phy_channelbusy
      000F66 E4               [12] 4447 	clr	a
      000F67 93               [24] 4448 	movc	a,@a+dptr
      000F68 FD               [12] 4449 	mov	r5,a
      000F69 C3               [12] 4450 	clr	c
      000F6A EE               [12] 4451 	mov	a,r6
      000F6B 64 80            [12] 4452 	xrl	a,#0x80
      000F6D 8D F0            [24] 4453 	mov	b,r5
      000F6F 63 F0 80         [24] 4454 	xrl	b,#0x80
      000F72 95 F0            [12] 4455 	subb	a,b
      000F74 B3               [12] 4456 	cpl	c
      000F75 92 08            [24] 4457 	mov	b0,c
      000F77 E4               [12] 4458 	clr	a
      000F78 33               [12] 4459 	rlc	a
      000F79 90 02 6B         [24] 4460 	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
      000F7C F0               [24] 4461 	movx	@dptr,a
                           00041A  4462 	C$easyax5043.c$416$3$247 ==.
                                   4463 ;	..\COMMON\easyax5043.c:416: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
      000F7D 90 00 1B         [24] 4464 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      000F80 E0               [24] 4465 	movx	a,@dptr
      000F81 FB               [12] 4466 	mov	r3,a
      000F82 A3               [24] 4467 	inc	dptr
      000F83 E0               [24] 4468 	movx	a,@dptr
      000F84 FC               [12] 4469 	mov	r4,a
      000F85 A3               [24] 4470 	inc	dptr
      000F86 E0               [24] 4471 	movx	a,@dptr
      000F87 FD               [12] 4472 	mov	r5,a
      000F88 A3               [24] 4473 	inc	dptr
      000F89 E0               [24] 4474 	movx	a,@dptr
      000F8A FE               [12] 4475 	mov	r6,a
      000F8B 90 02 65         [24] 4476 	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
      000F8E EB               [12] 4477 	mov	a,r3
      000F8F F0               [24] 4478 	movx	@dptr,a
      000F90 EC               [12] 4479 	mov	a,r4
      000F91 A3               [24] 4480 	inc	dptr
      000F92 F0               [24] 4481 	movx	@dptr,a
      000F93 ED               [12] 4482 	mov	a,r5
      000F94 A3               [24] 4483 	inc	dptr
      000F95 F0               [24] 4484 	movx	@dptr,a
      000F96 EE               [12] 4485 	mov	a,r6
      000F97 A3               [24] 4486 	inc	dptr
      000F98 F0               [24] 4487 	movx	@dptr,a
                           000436  4488 	C$easyax5043.c$417$3$247 ==.
                                   4489 ;	..\COMMON\easyax5043.c:417: wtimer_add_callback(&axradio_cb_channelstate.cb);
      000F99 90 02 5F         [24] 4490 	mov	dptr,#_axradio_cb_channelstate
      000F9C 12 46 A2         [24] 4491 	lcall	_wtimer_add_callback
      000F9F D0 07            [24] 4492 	pop	ar7
                           00043E  4493 	C$easyax5043.c$418$3$247 ==.
                                   4494 ;	..\COMMON\easyax5043.c:418: --len;
      000FA1 1F               [12] 4495 	dec	r7
                           00043F  4496 	C$easyax5043.c$423$3$247 ==.
                                   4497 ;	..\COMMON\easyax5043.c:423: dropchunk:
      000FA2                       4498 00146$:
                           00043F  4499 	C$easyax5043.c$424$3$247 ==.
                                   4500 ;	..\COMMON\easyax5043.c:424: if (!len)
      000FA2 EF               [12] 4501 	mov	a,r7
      000FA3 70 03            [24] 4502 	jnz	00284$
      000FA5 02 0C 91         [24] 4503 	ljmp	00153$
      000FA8                       4504 00284$:
                           000445  4505 	C$easyax5043.c$427$1$243 ==.
                                   4506 ;	..\COMMON\easyax5043.c:427: do {
      000FA8                       4507 00149$:
                           000445  4508 	C$easyax5043.c$428$4$255 ==.
                                   4509 ;	..\COMMON\easyax5043.c:428: AX5043_FIFODATA;        // purge FIFO
      000FA8 90 40 29         [24] 4510 	mov	dptr,#_AX5043_FIFODATA
      000FAB E0               [24] 4511 	movx	a,@dptr
                           000449  4512 	C$easyax5043.c$430$3$247 ==.
                                   4513 ;	..\COMMON\easyax5043.c:430: while (--i);
      000FAC DF FA            [24] 4514 	djnz	r7,00149$
                           00044B  4515 	C$easyax5043.c$432$1$243 ==.
                                   4516 ;	..\COMMON\easyax5043.c:432: } // end switch(fifo_cmd)
      000FAE 02 0C 91         [24] 4517 	ljmp	00153$
      000FB1                       4518 00156$:
                           00044E  4519 	C$easyax5043.c$434$1$243 ==.
                           00044E  4520 	XFeasyax5043$receive_isr$0$0 ==.
      000FB1 22               [24] 4521 	ret
                                   4522 ;------------------------------------------------------------
                                   4523 ;Allocation info for local variables in function 'transmit_isr'
                                   4524 ;------------------------------------------------------------
                                   4525 ;cnt                       Allocated to registers r7 
                                   4526 ;byte                      Allocated to registers r7 
                                   4527 ;len_byte                  Allocated to registers r4 
                                   4528 ;i                         Allocated to registers r3 
                                   4529 ;byte                      Allocated to registers r6 
                                   4530 ;flags                     Allocated to registers r6 
                                   4531 ;len                       Allocated to registers r4 r5 
                                   4532 ;------------------------------------------------------------
                           00044F  4533 	Feasyax5043$transmit_isr$0$0 ==.
                           00044F  4534 	C$easyax5043.c$436$1$243 ==.
                                   4535 ;	..\COMMON\easyax5043.c:436: static __reentrantb void transmit_isr(void) __reentrant
                                   4536 ;	-----------------------------------------
                                   4537 ;	 function transmit_isr
                                   4538 ;	-----------------------------------------
      000FB2                       4539 _transmit_isr:
                           00044F  4540 	C$easyax5043.c$575$6$266 ==.
                                   4541 ;	..\COMMON\easyax5043.c:575: axradio_trxstate = trxstate_tx_waitdone;
      000FB2                       4542 00157$:
                           00044F  4543 	C$easyax5043.c$439$2$257 ==.
                                   4544 ;	..\COMMON\easyax5043.c:439: uint8_t cnt = AX5043_FIFOFREE0;
      000FB2 90 40 2D         [24] 4545 	mov	dptr,#_AX5043_FIFOFREE0
      000FB5 E0               [24] 4546 	movx	a,@dptr
      000FB6 FF               [12] 4547 	mov	r7,a
                           000454  4548 	C$easyax5043.c$440$2$258 ==.
                                   4549 ;	..\COMMON\easyax5043.c:440: if (AX5043_FIFOFREE1)
      000FB7 90 40 2C         [24] 4550 	mov	dptr,#_AX5043_FIFOFREE1
      000FBA E0               [24] 4551 	movx	a,@dptr
      000FBB E0               [24] 4552 	movx	a,@dptr
      000FBC 60 02            [24] 4553 	jz	00102$
                           00045B  4554 	C$easyax5043.c$441$2$258 ==.
                                   4555 ;	..\COMMON\easyax5043.c:441: cnt = 0xff;
      000FBE 7F FF            [12] 4556 	mov	r7,#0xff
      000FC0                       4557 00102$:
                           00045D  4558 	C$easyax5043.c$442$2$258 ==.
                                   4559 ;	..\COMMON\easyax5043.c:442: switch (axradio_trxstate) {
      000FC0 AE 09            [24] 4560 	mov	r6,_axradio_trxstate
      000FC2 BE 0A 02         [24] 4561 	cjne	r6,#0x0a,00246$
      000FC5 80 0F            [24] 4562 	sjmp	00103$
      000FC7                       4563 00246$:
      000FC7 BE 0B 03         [24] 4564 	cjne	r6,#0x0b,00247$
      000FCA 02 10 68         [24] 4565 	ljmp	00115$
      000FCD                       4566 00247$:
      000FCD BE 0C 03         [24] 4567 	cjne	r6,#0x0c,00248$
      000FD0 02 12 39         [24] 4568 	ljmp	00138$
      000FD3                       4569 00248$:
      000FD3 02 12 E0         [24] 4570 	ljmp	00159$
                           000473  4571 	C$easyax5043.c$443$3$259 ==.
                                   4572 ;	..\COMMON\easyax5043.c:443: case trxstate_tx_longpreamble:
      000FD6                       4573 00103$:
                           000473  4574 	C$easyax5043.c$444$3$259 ==.
                                   4575 ;	..\COMMON\easyax5043.c:444: if (!axradio_txbuffer_cnt) {
      000FD6 90 00 08         [24] 4576 	mov	dptr,#_axradio_txbuffer_cnt
      000FD9 E0               [24] 4577 	movx	a,@dptr
      000FDA FD               [12] 4578 	mov	r5,a
      000FDB A3               [24] 4579 	inc	dptr
      000FDC E0               [24] 4580 	movx	a,@dptr
      000FDD FE               [12] 4581 	mov	r6,a
      000FDE 4D               [12] 4582 	orl	a,r5
      000FDF 70 37            [24] 4583 	jnz	00109$
                           00047E  4584 	C$easyax5043.c$445$4$260 ==.
                                   4585 ;	..\COMMON\easyax5043.c:445: axradio_trxstate = trxstate_tx_shortpreamble;
      000FE1 75 09 0B         [24] 4586 	mov	_axradio_trxstate,#0x0b
                           000481  4587 	C$easyax5043.c$446$4$260 ==.
                                   4588 ;	..\COMMON\easyax5043.c:446: if( axradio_mode == AXRADIO_MODE_WOR_TRANSMIT || axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT )
      000FE4 74 11            [12] 4589 	mov	a,#0x11
      000FE6 B5 08 02         [24] 4590 	cjne	a,_axradio_mode,00250$
      000FE9 80 05            [24] 4591 	sjmp	00104$
      000FEB                       4592 00250$:
      000FEB 74 13            [12] 4593 	mov	a,#0x13
      000FED B5 08 14         [24] 4594 	cjne	a,_axradio_mode,00105$
      000FF0                       4595 00104$:
                           00048D  4596 	C$easyax5043.c$447$4$260 ==.
                                   4597 ;	..\COMMON\easyax5043.c:447: axradio_txbuffer_cnt = axradio_phy_preamble_wor_len;
      000FF0 90 55 CB         [24] 4598 	mov	dptr,#_axradio_phy_preamble_wor_len
      000FF3 E4               [12] 4599 	clr	a
      000FF4 93               [24] 4600 	movc	a,@a+dptr
      000FF5 FB               [12] 4601 	mov	r3,a
      000FF6 74 01            [12] 4602 	mov	a,#0x01
      000FF8 93               [24] 4603 	movc	a,@a+dptr
      000FF9 FC               [12] 4604 	mov	r4,a
      000FFA 90 00 08         [24] 4605 	mov	dptr,#_axradio_txbuffer_cnt
      000FFD EB               [12] 4606 	mov	a,r3
      000FFE F0               [24] 4607 	movx	@dptr,a
      000FFF EC               [12] 4608 	mov	a,r4
      001000 A3               [24] 4609 	inc	dptr
      001001 F0               [24] 4610 	movx	@dptr,a
      001002 80 64            [24] 4611 	sjmp	00115$
      001004                       4612 00105$:
                           0004A1  4613 	C$easyax5043.c$449$4$260 ==.
                                   4614 ;	..\COMMON\easyax5043.c:449: axradio_txbuffer_cnt = axradio_phy_preamble_len;
      001004 90 55 CF         [24] 4615 	mov	dptr,#_axradio_phy_preamble_len
      001007 E4               [12] 4616 	clr	a
      001008 93               [24] 4617 	movc	a,@a+dptr
      001009 FB               [12] 4618 	mov	r3,a
      00100A 74 01            [12] 4619 	mov	a,#0x01
      00100C 93               [24] 4620 	movc	a,@a+dptr
      00100D FC               [12] 4621 	mov	r4,a
      00100E 90 00 08         [24] 4622 	mov	dptr,#_axradio_txbuffer_cnt
      001011 EB               [12] 4623 	mov	a,r3
      001012 F0               [24] 4624 	movx	@dptr,a
      001013 EC               [12] 4625 	mov	a,r4
      001014 A3               [24] 4626 	inc	dptr
      001015 F0               [24] 4627 	movx	@dptr,a
                           0004B3  4628 	C$easyax5043.c$450$4$260 ==.
                                   4629 ;	..\COMMON\easyax5043.c:450: goto shortpreamble;
      001016 80 50            [24] 4630 	sjmp	00115$
      001018                       4631 00109$:
                           0004B5  4632 	C$easyax5043.c$452$3$259 ==.
                                   4633 ;	..\COMMON\easyax5043.c:452: if (cnt < 4)
      001018 BF 04 00         [24] 4634 	cjne	r7,#0x04,00253$
      00101B                       4635 00253$:
      00101B 50 03            [24] 4636 	jnc	00254$
      00101D 02 12 DA         [24] 4637 	ljmp	00153$
      001020                       4638 00254$:
                           0004BD  4639 	C$easyax5043.c$454$3$259 ==.
                                   4640 ;	..\COMMON\easyax5043.c:454: cnt = 7;
      001020 7F 07            [12] 4641 	mov	r7,#0x07
                           0004BF  4642 	C$easyax5043.c$455$3$259 ==.
                                   4643 ;	..\COMMON\easyax5043.c:455: if (axradio_txbuffer_cnt < 7)
      001022 C3               [12] 4644 	clr	c
      001023 ED               [12] 4645 	mov	a,r5
      001024 94 07            [12] 4646 	subb	a,#0x07
      001026 EE               [12] 4647 	mov	a,r6
      001027 94 00            [12] 4648 	subb	a,#0x00
      001029 50 02            [24] 4649 	jnc	00113$
                           0004C8  4650 	C$easyax5043.c$456$3$259 ==.
                                   4651 ;	..\COMMON\easyax5043.c:456: cnt = axradio_txbuffer_cnt;
      00102B 8D 07            [24] 4652 	mov	ar7,r5
      00102D                       4653 00113$:
                           0004CA  4654 	C$easyax5043.c$457$3$259 ==.
                                   4655 ;	..\COMMON\easyax5043.c:457: axradio_txbuffer_cnt -= cnt;
      00102D 8F 05            [24] 4656 	mov	ar5,r7
      00102F 7E 00            [12] 4657 	mov	r6,#0x00
      001031 90 00 08         [24] 4658 	mov	dptr,#_axradio_txbuffer_cnt
      001034 E0               [24] 4659 	movx	a,@dptr
      001035 FB               [12] 4660 	mov	r3,a
      001036 A3               [24] 4661 	inc	dptr
      001037 E0               [24] 4662 	movx	a,@dptr
      001038 FC               [12] 4663 	mov	r4,a
      001039 90 00 08         [24] 4664 	mov	dptr,#_axradio_txbuffer_cnt
      00103C EB               [12] 4665 	mov	a,r3
      00103D C3               [12] 4666 	clr	c
      00103E 9D               [12] 4667 	subb	a,r5
      00103F F0               [24] 4668 	movx	@dptr,a
      001040 EC               [12] 4669 	mov	a,r4
      001041 9E               [12] 4670 	subb	a,r6
      001042 A3               [24] 4671 	inc	dptr
      001043 F0               [24] 4672 	movx	@dptr,a
                           0004E1  4673 	C$easyax5043.c$458$3$259 ==.
                                   4674 ;	..\COMMON\easyax5043.c:458: cnt <<= 5;
      001044 EF               [12] 4675 	mov	a,r7
      001045 C4               [12] 4676 	swap	a
      001046 23               [12] 4677 	rl	a
      001047 54 E0            [12] 4678 	anl	a,#0xe0
      001049 FF               [12] 4679 	mov	r7,a
                           0004E7  4680 	C$easyax5043.c$459$3$259 ==.
                                   4681 ;	..\COMMON\easyax5043.c:459: AX5043_FIFODATA = AX5043_FIFOCMD_REPEATDATA | (3 << 5);
      00104A 90 40 29         [24] 4682 	mov	dptr,#_AX5043_FIFODATA
      00104D 74 62            [12] 4683 	mov	a,#0x62
      00104F F0               [24] 4684 	movx	@dptr,a
                           0004ED  4685 	C$easyax5043.c$460$3$259 ==.
                                   4686 ;	..\COMMON\easyax5043.c:460: AX5043_FIFODATA = axradio_phy_preamble_flags;
      001050 90 55 D2         [24] 4687 	mov	dptr,#_axradio_phy_preamble_flags
      001053 E4               [12] 4688 	clr	a
      001054 93               [24] 4689 	movc	a,@a+dptr
      001055 90 40 29         [24] 4690 	mov	dptr,#_AX5043_FIFODATA
      001058 F0               [24] 4691 	movx	@dptr,a
                           0004F6  4692 	C$easyax5043.c$461$3$259 ==.
                                   4693 ;	..\COMMON\easyax5043.c:461: AX5043_FIFODATA = cnt;
      001059 EF               [12] 4694 	mov	a,r7
      00105A F0               [24] 4695 	movx	@dptr,a
                           0004F8  4696 	C$easyax5043.c$462$3$259 ==.
                                   4697 ;	..\COMMON\easyax5043.c:462: AX5043_FIFODATA = axradio_phy_preamble_byte;
      00105B 90 55 D1         [24] 4698 	mov	dptr,#_axradio_phy_preamble_byte
      00105E E4               [12] 4699 	clr	a
      00105F 93               [24] 4700 	movc	a,@a+dptr
      001060 FE               [12] 4701 	mov	r6,a
      001061 90 40 29         [24] 4702 	mov	dptr,#_AX5043_FIFODATA
      001064 F0               [24] 4703 	movx	@dptr,a
                           000502  4704 	C$easyax5043.c$463$3$259 ==.
                                   4705 ;	..\COMMON\easyax5043.c:463: break;
      001065 02 0F B2         [24] 4706 	ljmp	00157$
                           000505  4707 	C$easyax5043.c$466$3$259 ==.
                                   4708 ;	..\COMMON\easyax5043.c:466: shortpreamble:
      001068                       4709 00115$:
                           000505  4710 	C$easyax5043.c$467$3$259 ==.
                                   4711 ;	..\COMMON\easyax5043.c:467: if (!axradio_txbuffer_cnt) {
      001068 90 00 08         [24] 4712 	mov	dptr,#_axradio_txbuffer_cnt
      00106B E0               [24] 4713 	movx	a,@dptr
      00106C FD               [12] 4714 	mov	r5,a
      00106D A3               [24] 4715 	inc	dptr
      00106E E0               [24] 4716 	movx	a,@dptr
      00106F FE               [12] 4717 	mov	r6,a
      001070 4D               [12] 4718 	orl	a,r5
      001071 60 03            [24] 4719 	jz	00256$
      001073 02 11 4D         [24] 4720 	ljmp	00128$
      001076                       4721 00256$:
                           000513  4722 	C$easyax5043.c$468$4$261 ==.
                                   4723 ;	..\COMMON\easyax5043.c:468: if (cnt < 15)
      001076 BF 0F 00         [24] 4724 	cjne	r7,#0x0f,00257$
      001079                       4725 00257$:
      001079 50 03            [24] 4726 	jnc	00258$
      00107B 02 12 DA         [24] 4727 	ljmp	00153$
      00107E                       4728 00258$:
                           00051B  4729 	C$easyax5043.c$470$4$261 ==.
                                   4730 ;	..\COMMON\easyax5043.c:470: if (axradio_phy_preamble_appendbits) {
      00107E 90 55 D3         [24] 4731 	mov	dptr,#_axradio_phy_preamble_appendbits
      001081 E4               [12] 4732 	clr	a
      001082 93               [24] 4733 	movc	a,@a+dptr
      001083 FC               [12] 4734 	mov	r4,a
      001084 60 6F            [24] 4735 	jz	00122$
                           000523  4736 	C$easyax5043.c$472$5$262 ==.
                                   4737 ;	..\COMMON\easyax5043.c:472: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (2 << 5);
      001086 90 40 29         [24] 4738 	mov	dptr,#_AX5043_FIFODATA
      001089 74 41            [12] 4739 	mov	a,#0x41
      00108B F0               [24] 4740 	movx	@dptr,a
                           000529  4741 	C$easyax5043.c$473$5$262 ==.
                                   4742 ;	..\COMMON\easyax5043.c:473: AX5043_FIFODATA = 0x1C;
      00108C 74 1C            [12] 4743 	mov	a,#0x1c
      00108E F0               [24] 4744 	movx	@dptr,a
                           00052C  4745 	C$easyax5043.c$474$5$262 ==.
                                   4746 ;	..\COMMON\easyax5043.c:474: byte = axradio_phy_preamble_appendpattern;
      00108F 90 55 D4         [24] 4747 	mov	dptr,#_axradio_phy_preamble_appendpattern
      001092 E4               [12] 4748 	clr	a
      001093 93               [24] 4749 	movc	a,@a+dptr
      001094 FB               [12] 4750 	mov	r3,a
      001095 FF               [12] 4751 	mov	r7,a
                           000533  4752 	C$easyax5043.c$475$5$262 ==.
                                   4753 ;	..\COMMON\easyax5043.c:475: if (AX5043_PKTADDRCFG & 0x80) {
      001096 90 42 00         [24] 4754 	mov	dptr,#_AX5043_PKTADDRCFG
      001099 E0               [24] 4755 	movx	a,@dptr
      00109A FA               [12] 4756 	mov	r2,a
      00109B 30 E7 26         [24] 4757 	jnb	acc.7,00119$
                           00053B  4758 	C$easyax5043.c$477$6$263 ==.
                                   4759 ;	..\COMMON\easyax5043.c:477: byte &= 0xFF << (8-axradio_phy_preamble_appendbits);
      00109E 74 08            [12] 4760 	mov	a,#0x08
      0010A0 C3               [12] 4761 	clr	c
      0010A1 9C               [12] 4762 	subb	a,r4
      0010A2 F5 F0            [12] 4763 	mov	b,a
      0010A4 05 F0            [12] 4764 	inc	b
      0010A6 74 FF            [12] 4765 	mov	a,#0xff
      0010A8 80 02            [24] 4766 	sjmp	00263$
      0010AA                       4767 00261$:
      0010AA 25 E0            [12] 4768 	add	a,acc
      0010AC                       4769 00263$:
      0010AC D5 F0 FB         [24] 4770 	djnz	b,00261$
      0010AF FA               [12] 4771 	mov	r2,a
      0010B0 52 07            [12] 4772 	anl	ar7,a
                           00054F  4773 	C$easyax5043.c$478$6$263 ==.
                                   4774 ;	..\COMMON\easyax5043.c:478: byte |= 0x80 >> axradio_phy_preamble_appendbits;
      0010B2 8C F0            [24] 4775 	mov	b,r4
      0010B4 05 F0            [12] 4776 	inc	b
      0010B6 74 80            [12] 4777 	mov	a,#0x80
      0010B8 80 02            [24] 4778 	sjmp	00265$
      0010BA                       4779 00264$:
      0010BA C3               [12] 4780 	clr	c
      0010BB 13               [12] 4781 	rrc	a
      0010BC                       4782 00265$:
      0010BC D5 F0 FB         [24] 4783 	djnz	b,00264$
      0010BF FA               [12] 4784 	mov	r2,a
      0010C0 42 07            [12] 4785 	orl	ar7,a
      0010C2 80 2C            [24] 4786 	sjmp	00120$
      0010C4                       4787 00119$:
                           000561  4788 	C$easyax5043.c$481$6$264 ==.
                                   4789 ;	..\COMMON\easyax5043.c:481: byte &= 0xFF >> (8-axradio_phy_preamble_appendbits);
      0010C4 8C 02            [24] 4790 	mov	ar2,r4
      0010C6 7B 00            [12] 4791 	mov	r3,#0x00
      0010C8 74 08            [12] 4792 	mov	a,#0x08
      0010CA C3               [12] 4793 	clr	c
      0010CB 9A               [12] 4794 	subb	a,r2
      0010CC FA               [12] 4795 	mov	r2,a
      0010CD E4               [12] 4796 	clr	a
      0010CE 9B               [12] 4797 	subb	a,r3
      0010CF FB               [12] 4798 	mov	r3,a
      0010D0 8A F0            [24] 4799 	mov	b,r2
      0010D2 05 F0            [12] 4800 	inc	b
      0010D4 74 FF            [12] 4801 	mov	a,#0xff
      0010D6 80 02            [24] 4802 	sjmp	00267$
      0010D8                       4803 00266$:
      0010D8 C3               [12] 4804 	clr	c
      0010D9 13               [12] 4805 	rrc	a
      0010DA                       4806 00267$:
      0010DA D5 F0 FB         [24] 4807 	djnz	b,00266$
      0010DD FA               [12] 4808 	mov	r2,a
      0010DE 52 07            [12] 4809 	anl	ar7,a
                           00057D  4810 	C$easyax5043.c$482$6$264 ==.
                                   4811 ;	..\COMMON\easyax5043.c:482: byte |= 0x01 << axradio_phy_preamble_appendbits;
      0010E0 8C F0            [24] 4812 	mov	b,r4
      0010E2 05 F0            [12] 4813 	inc	b
      0010E4 74 01            [12] 4814 	mov	a,#0x01
      0010E6 80 02            [24] 4815 	sjmp	00270$
      0010E8                       4816 00268$:
      0010E8 25 E0            [12] 4817 	add	a,acc
      0010EA                       4818 00270$:
      0010EA D5 F0 FB         [24] 4819 	djnz	b,00268$
      0010ED FC               [12] 4820 	mov	r4,a
      0010EE 42 07            [12] 4821 	orl	ar7,a
      0010F0                       4822 00120$:
                           00058D  4823 	C$easyax5043.c$484$5$262 ==.
                                   4824 ;	..\COMMON\easyax5043.c:484: AX5043_FIFODATA = byte;
      0010F0 90 40 29         [24] 4825 	mov	dptr,#_AX5043_FIFODATA
      0010F3 EF               [12] 4826 	mov	a,r7
      0010F4 F0               [24] 4827 	movx	@dptr,a
      0010F5                       4828 00122$:
                           000592  4829 	C$easyax5043.c$490$4$261 ==.
                                   4830 ;	..\COMMON\easyax5043.c:490: if ((AX5043_FRAMING & 0x0E) == 0x06 && axradio_framing_synclen) {
      0010F5 90 40 12         [24] 4831 	mov	dptr,#_AX5043_FRAMING
      0010F8 E0               [24] 4832 	movx	a,@dptr
      0010F9 FC               [12] 4833 	mov	r4,a
      0010FA 53 04 0E         [24] 4834 	anl	ar4,#0x0e
      0010FD BC 06 47         [24] 4835 	cjne	r4,#0x06,00125$
      001100 90 55 DD         [24] 4836 	mov	dptr,#_axradio_framing_synclen
      001103 E4               [12] 4837 	clr	a
      001104 93               [24] 4838 	movc	a,@a+dptr
      001105 FC               [12] 4839 	mov	r4,a
      001106 E4               [12] 4840 	clr	a
      001107 93               [24] 4841 	movc	a,@a+dptr
      001108 60 3D            [24] 4842 	jz	00125$
                           0005A7  4843 	C$easyax5043.c$492$5$261 ==.
                                   4844 ;	..\COMMON\easyax5043.c:492: uint8_t len_byte = axradio_framing_synclen;
                           0005A7  4845 	C$easyax5043.c$493$5$265 ==.
                                   4846 ;	..\COMMON\easyax5043.c:493: uint8_t i = (len_byte & 0x07) ? 0x04 : 0;
      00110A EC               [12] 4847 	mov	a,r4
      00110B 54 07            [12] 4848 	anl	a,#0x07
      00110D 60 02            [24] 4849 	jz	00161$
      00110F 74 04            [12] 4850 	mov	a,#0x04
      001111                       4851 00161$:
      001111 FB               [12] 4852 	mov	r3,a
                           0005AF  4853 	C$easyax5043.c$495$5$265 ==.
                                   4854 ;	..\COMMON\easyax5043.c:495: len_byte += 7;
      001112 74 07            [12] 4855 	mov	a,#0x07
      001114 2C               [12] 4856 	add	a,r4
                           0005B2  4857 	C$easyax5043.c$496$5$265 ==.
                                   4858 ;	..\COMMON\easyax5043.c:496: len_byte >>= 3;
      001115 C4               [12] 4859 	swap	a
      001116 23               [12] 4860 	rl	a
      001117 54 1F            [12] 4861 	anl	a,#0x1f
                           0005B6  4862 	C$easyax5043.c$497$5$265 ==.
                                   4863 ;	..\COMMON\easyax5043.c:497: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | ((len_byte + 1) << 5);
      001119 FC               [12] 4864 	mov	r4,a
      00111A 04               [12] 4865 	inc	a
      00111B C4               [12] 4866 	swap	a
      00111C 23               [12] 4867 	rl	a
      00111D 54 E0            [12] 4868 	anl	a,#0xe0
      00111F FA               [12] 4869 	mov	r2,a
      001120 90 40 29         [24] 4870 	mov	dptr,#_AX5043_FIFODATA
      001123 74 01            [12] 4871 	mov	a,#0x01
      001125 4A               [12] 4872 	orl	a,r2
      001126 F0               [24] 4873 	movx	@dptr,a
                           0005C4  4874 	C$easyax5043.c$498$5$265 ==.
                                   4875 ;	..\COMMON\easyax5043.c:498: AX5043_FIFODATA = axradio_framing_syncflags | i;
      001127 90 55 E2         [24] 4876 	mov	dptr,#_axradio_framing_syncflags
      00112A E4               [12] 4877 	clr	a
      00112B 93               [24] 4878 	movc	a,@a+dptr
      00112C FA               [12] 4879 	mov	r2,a
      00112D 90 40 29         [24] 4880 	mov	dptr,#_AX5043_FIFODATA
      001130 EB               [12] 4881 	mov	a,r3
      001131 4A               [12] 4882 	orl	a,r2
      001132 F0               [24] 4883 	movx	@dptr,a
                           0005D0  4884 	C$easyax5043.c$499$1$257 ==.
                                   4885 ;	..\COMMON\easyax5043.c:499: for (i = 0; i < len_byte; ++i) {
      001133 7B 00            [12] 4886 	mov	r3,#0x00
      001135                       4887 00155$:
      001135 C3               [12] 4888 	clr	c
      001136 EB               [12] 4889 	mov	a,r3
      001137 9C               [12] 4890 	subb	a,r4
      001138 50 0D            [24] 4891 	jnc	00125$
                           0005D7  4892 	C$easyax5043.c$501$6$266 ==.
                                   4893 ;	..\COMMON\easyax5043.c:501: AX5043_FIFODATA = axradio_framing_syncword[i];
      00113A EB               [12] 4894 	mov	a,r3
      00113B 90 55 DE         [24] 4895 	mov	dptr,#_axradio_framing_syncword
      00113E 93               [24] 4896 	movc	a,@a+dptr
      00113F FA               [12] 4897 	mov	r2,a
      001140 90 40 29         [24] 4898 	mov	dptr,#_AX5043_FIFODATA
      001143 F0               [24] 4899 	movx	@dptr,a
                           0005E1  4900 	C$easyax5043.c$499$5$265 ==.
                                   4901 ;	..\COMMON\easyax5043.c:499: for (i = 0; i < len_byte; ++i) {
      001144 0B               [12] 4902 	inc	r3
      001145 80 EE            [24] 4903 	sjmp	00155$
      001147                       4904 00125$:
                           0005E4  4905 	C$easyax5043.c$508$4$261 ==.
                                   4906 ;	..\COMMON\easyax5043.c:508: axradio_trxstate = trxstate_tx_packet;
      001147 75 09 0C         [24] 4907 	mov	_axradio_trxstate,#0x0c
                           0005E7  4908 	C$easyax5043.c$509$4$261 ==.
                                   4909 ;	..\COMMON\easyax5043.c:509: break;
      00114A 02 0F B2         [24] 4910 	ljmp	00157$
      00114D                       4911 00128$:
                           0005EA  4912 	C$easyax5043.c$511$3$259 ==.
                                   4913 ;	..\COMMON\easyax5043.c:511: if (cnt < 4)
      00114D BF 04 00         [24] 4914 	cjne	r7,#0x04,00276$
      001150                       4915 00276$:
      001150 50 03            [24] 4916 	jnc	00277$
      001152 02 12 DA         [24] 4917 	ljmp	00153$
      001155                       4918 00277$:
                           0005F2  4919 	C$easyax5043.c$513$3$259 ==.
                                   4920 ;	..\COMMON\easyax5043.c:513: cnt = 255;
      001155 7F FF            [12] 4921 	mov	r7,#0xff
                           0005F4  4922 	C$easyax5043.c$514$3$259 ==.
                                   4923 ;	..\COMMON\easyax5043.c:514: if (axradio_txbuffer_cnt < 255*8)
      001157 C3               [12] 4924 	clr	c
      001158 ED               [12] 4925 	mov	a,r5
      001159 94 F8            [12] 4926 	subb	a,#0xf8
      00115B EE               [12] 4927 	mov	a,r6
      00115C 94 07            [12] 4928 	subb	a,#0x07
      00115E 50 12            [24] 4929 	jnc	00132$
                           0005FD  4930 	C$easyax5043.c$515$3$259 ==.
                                   4931 ;	..\COMMON\easyax5043.c:515: cnt = axradio_txbuffer_cnt >> 3;
      001160 EE               [12] 4932 	mov	a,r6
      001161 C4               [12] 4933 	swap	a
      001162 23               [12] 4934 	rl	a
      001163 CD               [12] 4935 	xch	a,r5
      001164 C4               [12] 4936 	swap	a
      001165 23               [12] 4937 	rl	a
      001166 54 1F            [12] 4938 	anl	a,#0x1f
      001168 6D               [12] 4939 	xrl	a,r5
      001169 CD               [12] 4940 	xch	a,r5
      00116A 54 1F            [12] 4941 	anl	a,#0x1f
      00116C CD               [12] 4942 	xch	a,r5
      00116D 6D               [12] 4943 	xrl	a,r5
      00116E CD               [12] 4944 	xch	a,r5
      00116F FE               [12] 4945 	mov	r6,a
      001170 8D 07            [24] 4946 	mov	ar7,r5
      001172                       4947 00132$:
                           00060F  4948 	C$easyax5043.c$516$3$259 ==.
                                   4949 ;	..\COMMON\easyax5043.c:516: if (cnt) {
      001172 EF               [12] 4950 	mov	a,r7
      001173 60 42            [24] 4951 	jz	00134$
                           000612  4952 	C$easyax5043.c$517$4$267 ==.
                                   4953 ;	..\COMMON\easyax5043.c:517: axradio_txbuffer_cnt -= ((uint16_t)cnt) << 3;
      001175 8F 05            [24] 4954 	mov	ar5,r7
      001177 E4               [12] 4955 	clr	a
      001178 03               [12] 4956 	rr	a
      001179 54 F8            [12] 4957 	anl	a,#0xf8
      00117B CD               [12] 4958 	xch	a,r5
      00117C C4               [12] 4959 	swap	a
      00117D 03               [12] 4960 	rr	a
      00117E CD               [12] 4961 	xch	a,r5
      00117F 6D               [12] 4962 	xrl	a,r5
      001180 CD               [12] 4963 	xch	a,r5
      001181 54 F8            [12] 4964 	anl	a,#0xf8
      001183 CD               [12] 4965 	xch	a,r5
      001184 6D               [12] 4966 	xrl	a,r5
      001185 FE               [12] 4967 	mov	r6,a
      001186 90 00 08         [24] 4968 	mov	dptr,#_axradio_txbuffer_cnt
      001189 E0               [24] 4969 	movx	a,@dptr
      00118A FB               [12] 4970 	mov	r3,a
      00118B A3               [24] 4971 	inc	dptr
      00118C E0               [24] 4972 	movx	a,@dptr
      00118D FC               [12] 4973 	mov	r4,a
      00118E 90 00 08         [24] 4974 	mov	dptr,#_axradio_txbuffer_cnt
      001191 EB               [12] 4975 	mov	a,r3
      001192 C3               [12] 4976 	clr	c
      001193 9D               [12] 4977 	subb	a,r5
      001194 F0               [24] 4978 	movx	@dptr,a
      001195 EC               [12] 4979 	mov	a,r4
      001196 9E               [12] 4980 	subb	a,r6
      001197 A3               [24] 4981 	inc	dptr
      001198 F0               [24] 4982 	movx	@dptr,a
                           000636  4983 	C$easyax5043.c$518$4$267 ==.
                                   4984 ;	..\COMMON\easyax5043.c:518: AX5043_FIFODATA = AX5043_FIFOCMD_REPEATDATA | (3 << 5);
      001199 90 40 29         [24] 4985 	mov	dptr,#_AX5043_FIFODATA
      00119C 74 62            [12] 4986 	mov	a,#0x62
      00119E F0               [24] 4987 	movx	@dptr,a
                           00063C  4988 	C$easyax5043.c$519$4$267 ==.
                                   4989 ;	..\COMMON\easyax5043.c:519: AX5043_FIFODATA = axradio_phy_preamble_flags;
      00119F 90 55 D2         [24] 4990 	mov	dptr,#_axradio_phy_preamble_flags
      0011A2 E4               [12] 4991 	clr	a
      0011A3 93               [24] 4992 	movc	a,@a+dptr
      0011A4 90 40 29         [24] 4993 	mov	dptr,#_AX5043_FIFODATA
      0011A7 F0               [24] 4994 	movx	@dptr,a
                           000645  4995 	C$easyax5043.c$520$4$267 ==.
                                   4996 ;	..\COMMON\easyax5043.c:520: AX5043_FIFODATA = cnt;
      0011A8 EF               [12] 4997 	mov	a,r7
      0011A9 F0               [24] 4998 	movx	@dptr,a
                           000647  4999 	C$easyax5043.c$521$4$267 ==.
                                   5000 ;	..\COMMON\easyax5043.c:521: AX5043_FIFODATA = axradio_phy_preamble_byte;
      0011AA 90 55 D1         [24] 5001 	mov	dptr,#_axradio_phy_preamble_byte
      0011AD E4               [12] 5002 	clr	a
      0011AE 93               [24] 5003 	movc	a,@a+dptr
      0011AF FE               [12] 5004 	mov	r6,a
      0011B0 90 40 29         [24] 5005 	mov	dptr,#_AX5043_FIFODATA
      0011B3 F0               [24] 5006 	movx	@dptr,a
                           000651  5007 	C$easyax5043.c$522$4$267 ==.
                                   5008 ;	..\COMMON\easyax5043.c:522: break;
      0011B4 02 0F B2         [24] 5009 	ljmp	00157$
      0011B7                       5010 00134$:
                           000654  5011 	C$easyax5043.c$525$4$259 ==.
                                   5012 ;	..\COMMON\easyax5043.c:525: uint8_t byte = axradio_phy_preamble_byte;
      0011B7 90 55 D1         [24] 5013 	mov	dptr,#_axradio_phy_preamble_byte
      0011BA E4               [12] 5014 	clr	a
      0011BB 93               [24] 5015 	movc	a,@a+dptr
      0011BC FE               [12] 5016 	mov	r6,a
                           00065A  5017 	C$easyax5043.c$526$4$268 ==.
                                   5018 ;	..\COMMON\easyax5043.c:526: cnt = axradio_txbuffer_cnt;
      0011BD 90 00 08         [24] 5019 	mov	dptr,#_axradio_txbuffer_cnt
      0011C0 E0               [24] 5020 	movx	a,@dptr
      0011C1 FC               [12] 5021 	mov	r4,a
      0011C2 A3               [24] 5022 	inc	dptr
      0011C3 E0               [24] 5023 	movx	a,@dptr
      0011C4 8C 07            [24] 5024 	mov	ar7,r4
                           000663  5025 	C$easyax5043.c$527$4$268 ==.
                                   5026 ;	..\COMMON\easyax5043.c:527: axradio_txbuffer_cnt = 0;
      0011C6 90 00 08         [24] 5027 	mov	dptr,#_axradio_txbuffer_cnt
      0011C9 E4               [12] 5028 	clr	a
      0011CA F0               [24] 5029 	movx	@dptr,a
      0011CB A3               [24] 5030 	inc	dptr
      0011CC F0               [24] 5031 	movx	@dptr,a
                           00066A  5032 	C$easyax5043.c$528$4$268 ==.
                                   5033 ;	..\COMMON\easyax5043.c:528: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (2 << 5);
      0011CD 90 40 29         [24] 5034 	mov	dptr,#_AX5043_FIFODATA
      0011D0 74 41            [12] 5035 	mov	a,#0x41
      0011D2 F0               [24] 5036 	movx	@dptr,a
                           000670  5037 	C$easyax5043.c$529$4$268 ==.
                                   5038 ;	..\COMMON\easyax5043.c:529: AX5043_FIFODATA = 0x1C;
      0011D3 74 1C            [12] 5039 	mov	a,#0x1c
      0011D5 F0               [24] 5040 	movx	@dptr,a
                           000673  5041 	C$easyax5043.c$530$4$268 ==.
                                   5042 ;	..\COMMON\easyax5043.c:530: if (AX5043_PKTADDRCFG & 0x80) {
      0011D6 90 42 00         [24] 5043 	mov	dptr,#_AX5043_PKTADDRCFG
      0011D9 E0               [24] 5044 	movx	a,@dptr
      0011DA FD               [12] 5045 	mov	r5,a
      0011DB 30 E7 27         [24] 5046 	jnb	acc.7,00136$
                           00067B  5047 	C$easyax5043.c$532$5$269 ==.
                                   5048 ;	..\COMMON\easyax5043.c:532: byte &= 0xFF << (8-cnt);
      0011DE 74 08            [12] 5049 	mov	a,#0x08
      0011E0 C3               [12] 5050 	clr	c
      0011E1 9F               [12] 5051 	subb	a,r7
      0011E2 FD               [12] 5052 	mov	r5,a
      0011E3 8D F0            [24] 5053 	mov	b,r5
      0011E5 05 F0            [12] 5054 	inc	b
      0011E7 74 FF            [12] 5055 	mov	a,#0xff
      0011E9 80 02            [24] 5056 	sjmp	00283$
      0011EB                       5057 00281$:
      0011EB 25 E0            [12] 5058 	add	a,acc
      0011ED                       5059 00283$:
      0011ED D5 F0 FB         [24] 5060 	djnz	b,00281$
      0011F0 FD               [12] 5061 	mov	r5,a
      0011F1 52 06            [12] 5062 	anl	ar6,a
                           000690  5063 	C$easyax5043.c$533$5$269 ==.
                                   5064 ;	..\COMMON\easyax5043.c:533: byte |= 0x80 >> cnt;
      0011F3 8F F0            [24] 5065 	mov	b,r7
      0011F5 05 F0            [12] 5066 	inc	b
      0011F7 74 80            [12] 5067 	mov	a,#0x80
      0011F9 80 02            [24] 5068 	sjmp	00285$
      0011FB                       5069 00284$:
      0011FB C3               [12] 5070 	clr	c
      0011FC 13               [12] 5071 	rrc	a
      0011FD                       5072 00285$:
      0011FD D5 F0 FB         [24] 5073 	djnz	b,00284$
      001200 FD               [12] 5074 	mov	r5,a
      001201 42 06            [12] 5075 	orl	ar6,a
      001203 80 2C            [24] 5076 	sjmp	00137$
      001205                       5077 00136$:
                           0006A2  5078 	C$easyax5043.c$536$5$270 ==.
                                   5079 ;	..\COMMON\easyax5043.c:536: byte &= 0xFF >> (8-cnt);
      001205 8F 04            [24] 5080 	mov	ar4,r7
      001207 7D 00            [12] 5081 	mov	r5,#0x00
      001209 74 08            [12] 5082 	mov	a,#0x08
      00120B C3               [12] 5083 	clr	c
      00120C 9C               [12] 5084 	subb	a,r4
      00120D FC               [12] 5085 	mov	r4,a
      00120E E4               [12] 5086 	clr	a
      00120F 9D               [12] 5087 	subb	a,r5
      001210 FD               [12] 5088 	mov	r5,a
      001211 8C F0            [24] 5089 	mov	b,r4
      001213 05 F0            [12] 5090 	inc	b
      001215 74 FF            [12] 5091 	mov	a,#0xff
      001217 80 02            [24] 5092 	sjmp	00287$
      001219                       5093 00286$:
      001219 C3               [12] 5094 	clr	c
      00121A 13               [12] 5095 	rrc	a
      00121B                       5096 00287$:
      00121B D5 F0 FB         [24] 5097 	djnz	b,00286$
      00121E FC               [12] 5098 	mov	r4,a
      00121F 52 06            [12] 5099 	anl	ar6,a
                           0006BE  5100 	C$easyax5043.c$537$5$270 ==.
                                   5101 ;	..\COMMON\easyax5043.c:537: byte |= 0x01 << cnt;
      001221 8F F0            [24] 5102 	mov	b,r7
      001223 05 F0            [12] 5103 	inc	b
      001225 74 01            [12] 5104 	mov	a,#0x01
      001227 80 02            [24] 5105 	sjmp	00290$
      001229                       5106 00288$:
      001229 25 E0            [12] 5107 	add	a,acc
      00122B                       5108 00290$:
      00122B D5 F0 FB         [24] 5109 	djnz	b,00288$
      00122E FD               [12] 5110 	mov	r5,a
      00122F 42 06            [12] 5111 	orl	ar6,a
      001231                       5112 00137$:
                           0006CE  5113 	C$easyax5043.c$539$4$268 ==.
                                   5114 ;	..\COMMON\easyax5043.c:539: AX5043_FIFODATA = byte;
      001231 90 40 29         [24] 5115 	mov	dptr,#_AX5043_FIFODATA
      001234 EE               [12] 5116 	mov	a,r6
      001235 F0               [24] 5117 	movx	@dptr,a
                           0006D3  5118 	C$easyax5043.c$541$3$259 ==.
                                   5119 ;	..\COMMON\easyax5043.c:541: break;
      001236 02 0F B2         [24] 5120 	ljmp	00157$
                           0006D6  5121 	C$easyax5043.c$543$3$259 ==.
                                   5122 ;	..\COMMON\easyax5043.c:543: case trxstate_tx_packet:
      001239                       5123 00138$:
                           0006D6  5124 	C$easyax5043.c$544$3$259 ==.
                                   5125 ;	..\COMMON\easyax5043.c:544: if (cnt < 11)
      001239 BF 0B 00         [24] 5126 	cjne	r7,#0x0b,00291$
      00123C                       5127 00291$:
      00123C 50 03            [24] 5128 	jnc	00292$
      00123E 02 12 DA         [24] 5129 	ljmp	00153$
      001241                       5130 00292$:
                           0006DE  5131 	C$easyax5043.c$547$4$259 ==.
                                   5132 ;	..\COMMON\easyax5043.c:547: uint8_t flags = 0;
      001241 7E 00            [12] 5133 	mov	r6,#0x00
                           0006E0  5134 	C$easyax5043.c$548$4$271 ==.
                                   5135 ;	..\COMMON\easyax5043.c:548: if (!axradio_txbuffer_cnt)
      001243 90 00 08         [24] 5136 	mov	dptr,#_axradio_txbuffer_cnt
      001246 E0               [24] 5137 	movx	a,@dptr
      001247 F5 F0            [12] 5138 	mov	b,a
      001249 A3               [24] 5139 	inc	dptr
      00124A E0               [24] 5140 	movx	a,@dptr
      00124B 45 F0            [12] 5141 	orl	a,b
      00124D 70 02            [24] 5142 	jnz	00142$
                           0006EC  5143 	C$easyax5043.c$549$4$271 ==.
                                   5144 ;	..\COMMON\easyax5043.c:549: flags |= 0x01; // flag byte: pkt_start
      00124F 7E 01            [12] 5145 	mov	r6,#0x01
      001251                       5146 00142$:
                           0006EE  5147 	C$easyax5043.c$551$5$272 ==.
                                   5148 ;	..\COMMON\easyax5043.c:551: uint16_t len = axradio_txbuffer_len - axradio_txbuffer_cnt;
      001251 90 00 08         [24] 5149 	mov	dptr,#_axradio_txbuffer_cnt
      001254 E0               [24] 5150 	movx	a,@dptr
      001255 FC               [12] 5151 	mov	r4,a
      001256 A3               [24] 5152 	inc	dptr
      001257 E0               [24] 5153 	movx	a,@dptr
      001258 FD               [12] 5154 	mov	r5,a
      001259 90 00 06         [24] 5155 	mov	dptr,#_axradio_txbuffer_len
      00125C E0               [24] 5156 	movx	a,@dptr
      00125D FA               [12] 5157 	mov	r2,a
      00125E A3               [24] 5158 	inc	dptr
      00125F E0               [24] 5159 	movx	a,@dptr
      001260 FB               [12] 5160 	mov	r3,a
      001261 EA               [12] 5161 	mov	a,r2
      001262 C3               [12] 5162 	clr	c
      001263 9C               [12] 5163 	subb	a,r4
      001264 FC               [12] 5164 	mov	r4,a
      001265 EB               [12] 5165 	mov	a,r3
      001266 9D               [12] 5166 	subb	a,r5
      001267 FD               [12] 5167 	mov	r5,a
                           000705  5168 	C$easyax5043.c$552$5$272 ==.
                                   5169 ;	..\COMMON\easyax5043.c:552: cnt -= 3;
      001268 1F               [12] 5170 	dec	r7
      001269 1F               [12] 5171 	dec	r7
      00126A 1F               [12] 5172 	dec	r7
                           000708  5173 	C$easyax5043.c$553$5$272 ==.
                                   5174 ;	..\COMMON\easyax5043.c:553: if (cnt >= len) {
      00126B 8F 02            [24] 5175 	mov	ar2,r7
      00126D 7B 00            [12] 5176 	mov	r3,#0x00
      00126F C3               [12] 5177 	clr	c
      001270 EA               [12] 5178 	mov	a,r2
      001271 9C               [12] 5179 	subb	a,r4
      001272 EB               [12] 5180 	mov	a,r3
      001273 9D               [12] 5181 	subb	a,r5
      001274 40 05            [24] 5182 	jc	00144$
                           000713  5183 	C$easyax5043.c$554$6$273 ==.
                                   5184 ;	..\COMMON\easyax5043.c:554: cnt = len;
      001276 8C 07            [24] 5185 	mov	ar7,r4
                           000715  5186 	C$easyax5043.c$555$6$273 ==.
                                   5187 ;	..\COMMON\easyax5043.c:555: flags |= 0x02; // flag byte: pkt_end
      001278 43 06 02         [24] 5188 	orl	ar6,#0x02
      00127B                       5189 00144$:
                           000718  5190 	C$easyax5043.c$558$4$271 ==.
                                   5191 ;	..\COMMON\easyax5043.c:558: if (!cnt)
      00127B EF               [12] 5192 	mov	a,r7
      00127C 60 4D            [24] 5193 	jz	00152$
                           00071B  5194 	C$easyax5043.c$560$4$271 ==.
                                   5195 ;	..\COMMON\easyax5043.c:560: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
      00127E 90 40 29         [24] 5196 	mov	dptr,#_AX5043_FIFODATA
      001281 74 E1            [12] 5197 	mov	a,#0xe1
      001283 F0               [24] 5198 	movx	@dptr,a
                           000721  5199 	C$easyax5043.c$561$4$271 ==.
                                   5200 ;	..\COMMON\easyax5043.c:561: AX5043_FIFODATA = cnt + 1; // write FIFO chunk length byte (length includes the flag byte, thus the +1)
      001284 EF               [12] 5201 	mov	a,r7
      001285 04               [12] 5202 	inc	a
      001286 F0               [24] 5203 	movx	@dptr,a
                           000724  5204 	C$easyax5043.c$562$4$271 ==.
                                   5205 ;	..\COMMON\easyax5043.c:562: AX5043_FIFODATA = flags;
      001287 EE               [12] 5206 	mov	a,r6
      001288 F0               [24] 5207 	movx	@dptr,a
                           000726  5208 	C$easyax5043.c$563$4$271 ==.
                                   5209 ;	..\COMMON\easyax5043.c:563: ax5043_writefifo(&axradio_txbuffer[axradio_txbuffer_cnt], cnt);
      001289 90 00 08         [24] 5210 	mov	dptr,#_axradio_txbuffer_cnt
      00128C E0               [24] 5211 	movx	a,@dptr
      00128D FC               [12] 5212 	mov	r4,a
      00128E A3               [24] 5213 	inc	dptr
      00128F E0               [24] 5214 	movx	a,@dptr
      001290 FD               [12] 5215 	mov	r5,a
      001291 EC               [12] 5216 	mov	a,r4
      001292 24 2B            [12] 5217 	add	a,#_axradio_txbuffer
      001294 FC               [12] 5218 	mov	r4,a
      001295 ED               [12] 5219 	mov	a,r5
      001296 34 00            [12] 5220 	addc	a,#(_axradio_txbuffer >> 8)
      001298 FD               [12] 5221 	mov	r5,a
      001299 7B 00            [12] 5222 	mov	r3,#0x00
      00129B C0 07            [24] 5223 	push	ar7
      00129D C0 06            [24] 5224 	push	ar6
      00129F C0 07            [24] 5225 	push	ar7
      0012A1 8C 82            [24] 5226 	mov	dpl,r4
      0012A3 8D 83            [24] 5227 	mov	dph,r5
      0012A5 8B F0            [24] 5228 	mov	b,r3
      0012A7 12 52 2D         [24] 5229 	lcall	_ax5043_writefifo
      0012AA 15 81            [12] 5230 	dec	sp
      0012AC D0 06            [24] 5231 	pop	ar6
      0012AE D0 07            [24] 5232 	pop	ar7
                           00074D  5233 	C$easyax5043.c$564$4$271 ==.
                                   5234 ;	..\COMMON\easyax5043.c:564: axradio_txbuffer_cnt += cnt;
      0012B0 7D 00            [12] 5235 	mov	r5,#0x00
      0012B2 90 00 08         [24] 5236 	mov	dptr,#_axradio_txbuffer_cnt
      0012B5 E0               [24] 5237 	movx	a,@dptr
      0012B6 FB               [12] 5238 	mov	r3,a
      0012B7 A3               [24] 5239 	inc	dptr
      0012B8 E0               [24] 5240 	movx	a,@dptr
      0012B9 FC               [12] 5241 	mov	r4,a
      0012BA 90 00 08         [24] 5242 	mov	dptr,#_axradio_txbuffer_cnt
      0012BD EF               [12] 5243 	mov	a,r7
      0012BE 2B               [12] 5244 	add	a,r3
      0012BF F0               [24] 5245 	movx	@dptr,a
      0012C0 ED               [12] 5246 	mov	a,r5
      0012C1 3C               [12] 5247 	addc	a,r4
      0012C2 A3               [24] 5248 	inc	dptr
      0012C3 F0               [24] 5249 	movx	@dptr,a
                           000761  5250 	C$easyax5043.c$565$4$271 ==.
                                   5251 ;	..\COMMON\easyax5043.c:565: if (flags & 0x02)
      0012C4 EE               [12] 5252 	mov	a,r6
      0012C5 20 E1 03         [24] 5253 	jb	acc.1,00152$
                           000765  5254 	C$easyax5043.c$566$4$271 ==.
                                   5255 ;	..\COMMON\easyax5043.c:566: goto pktend;
                           000765  5256 	C$easyax5043.c$570$3$259 ==.
                                   5257 ;	..\COMMON\easyax5043.c:570: default:
                           000765  5258 	C$easyax5043.c$571$3$259 ==.
                                   5259 ;	..\COMMON\easyax5043.c:571: return;
                           000765  5260 	C$easyax5043.c$574$1$257 ==.
                                   5261 ;	..\COMMON\easyax5043.c:574: pktend:
      0012C8 02 0F B2         [24] 5262 	ljmp	00157$
      0012CB                       5263 00152$:
                           000768  5264 	C$easyax5043.c$575$1$257 ==.
                                   5265 ;	..\COMMON\easyax5043.c:575: axradio_trxstate = trxstate_tx_waitdone;
      0012CB 75 09 0D         [24] 5266 	mov	_axradio_trxstate,#0x0d
                           00076B  5267 	C$easyax5043.c$576$1$257 ==.
                                   5268 ;	..\COMMON\easyax5043.c:576: AX5043_RADIOEVENTMASK0 = 0x01; // enable REVRDONE event
      0012CE 90 40 09         [24] 5269 	mov	dptr,#_AX5043_RADIOEVENTMASK0
      0012D1 74 01            [12] 5270 	mov	a,#0x01
      0012D3 F0               [24] 5271 	movx	@dptr,a
                           000771  5272 	C$easyax5043.c$577$1$257 ==.
                                   5273 ;	..\COMMON\easyax5043.c:577: AX5043_IRQMASK0 = 0x40; // enable radio controller irq
      0012D4 90 40 07         [24] 5274 	mov	dptr,#_AX5043_IRQMASK0
      0012D7 74 40            [12] 5275 	mov	a,#0x40
      0012D9 F0               [24] 5276 	movx	@dptr,a
                           000777  5277 	C$easyax5043.c$578$1$257 ==.
                                   5278 ;	..\COMMON\easyax5043.c:578: fifocommit:
      0012DA                       5279 00153$:
                           000777  5280 	C$easyax5043.c$579$1$257 ==.
                                   5281 ;	..\COMMON\easyax5043.c:579: AX5043_FIFOSTAT = 4; // commit
      0012DA 90 40 28         [24] 5282 	mov	dptr,#_AX5043_FIFOSTAT
      0012DD 74 04            [12] 5283 	mov	a,#0x04
      0012DF F0               [24] 5284 	movx	@dptr,a
      0012E0                       5285 00159$:
                           00077D  5286 	C$easyax5043.c$580$1$257 ==.
                           00077D  5287 	XFeasyax5043$transmit_isr$0$0 ==.
      0012E0 22               [24] 5288 	ret
                                   5289 ;------------------------------------------------------------
                                   5290 ;Allocation info for local variables in function 'axradio_isr'
                                   5291 ;------------------------------------------------------------
                                   5292 ;evt                       Allocated to registers r7 
                                   5293 ;------------------------------------------------------------
                           00077E  5294 	G$axradio_isr$0$0 ==.
                           00077E  5295 	C$easyax5043.c$583$1$257 ==.
                                   5296 ;	..\COMMON\easyax5043.c:583: void axradio_isr(void) __interrupt INT_RADIO
                                   5297 ;	-----------------------------------------
                                   5298 ;	 function axradio_isr
                                   5299 ;	-----------------------------------------
      0012E1                       5300 _axradio_isr:
      0012E1 C0 21            [24] 5301 	push	bits
      0012E3 C0 E0            [24] 5302 	push	acc
      0012E5 C0 F0            [24] 5303 	push	b
      0012E7 C0 82            [24] 5304 	push	dpl
      0012E9 C0 83            [24] 5305 	push	dph
      0012EB C0 07            [24] 5306 	push	(0+7)
      0012ED C0 06            [24] 5307 	push	(0+6)
      0012EF C0 05            [24] 5308 	push	(0+5)
      0012F1 C0 04            [24] 5309 	push	(0+4)
      0012F3 C0 03            [24] 5310 	push	(0+3)
      0012F5 C0 02            [24] 5311 	push	(0+2)
      0012F7 C0 01            [24] 5312 	push	(0+1)
      0012F9 C0 00            [24] 5313 	push	(0+0)
      0012FB C0 D0            [24] 5314 	push	psw
      0012FD 75 D0 00         [24] 5315 	mov	psw,#0x00
                           00079D  5316 	C$easyax5043.c$593$1$275 ==.
                                   5317 ;	..\COMMON\easyax5043.c:593: switch (axradio_trxstate) {
      001300 E5 09            [12] 5318 	mov	a,_axradio_trxstate
      001302 FF               [12] 5319 	mov	r7,a
      001303 24 EF            [12] 5320 	add	a,#0xff - 0x10
      001305 50 03            [24] 5321 	jnc	00256$
      001307 02 13 3D         [24] 5322 	ljmp	00101$
      00130A                       5323 00256$:
      00130A EF               [12] 5324 	mov	a,r7
      00130B F5 F0            [12] 5325 	mov	b,a
      00130D 24 0B            [12] 5326 	add	a,#(00257$-3-.)
      00130F 83               [24] 5327 	movc	a,@a+pc
      001310 F5 82            [12] 5328 	mov	dpl,a
      001312 E5 F0            [12] 5329 	mov	a,b
      001314 24 15            [12] 5330 	add	a,#(00258$-3-.)
      001316 83               [24] 5331 	movc	a,@a+pc
      001317 F5 83            [12] 5332 	mov	dph,a
      001319 E4               [12] 5333 	clr	a
      00131A 73               [24] 5334 	jmp	@a+dptr
      00131B                       5335 00257$:
      00131B 3D                    5336 	.db	00101$
      00131C BC                    5337 	.db	00165$
      00131D 63                    5338 	.db	00158$
      00131E 49                    5339 	.db	00102$
      00131F 3D                    5340 	.db	00101$
      001320 54                    5341 	.db	00103$
      001321 3D                    5342 	.db	00101$
      001322 5F                    5343 	.db	00104$
      001323 3D                    5344 	.db	00101$
      001324 6A                    5345 	.db	00105$
      001325 FA                    5346 	.db	00114$
      001326 FA                    5347 	.db	00115$
      001327 FA                    5348 	.db	00116$
      001328 00                    5349 	.db	00117$
      001329 35                    5350 	.db	00144$
      00132A 7A                    5351 	.db	00145$
      00132B A1                    5352 	.db	00148$
      00132C                       5353 00258$:
      00132C 13                    5354 	.db	00101$>>8
      00132D 16                    5355 	.db	00165$>>8
      00132E 16                    5356 	.db	00158$>>8
      00132F 13                    5357 	.db	00102$>>8
      001330 13                    5358 	.db	00101$>>8
      001331 13                    5359 	.db	00103$>>8
      001332 13                    5360 	.db	00101$>>8
      001333 13                    5361 	.db	00104$>>8
      001334 13                    5362 	.db	00101$>>8
      001335 13                    5363 	.db	00105$>>8
      001336 13                    5364 	.db	00114$>>8
      001337 13                    5365 	.db	00115$>>8
      001338 13                    5366 	.db	00116$>>8
      001339 14                    5367 	.db	00117$>>8
      00133A 15                    5368 	.db	00144$>>8
      00133B 15                    5369 	.db	00145$>>8
      00133C 15                    5370 	.db	00148$>>8
                           0007DA  5371 	C$easyax5043.c$594$2$276 ==.
                                   5372 ;	..\COMMON\easyax5043.c:594: default:
      00133D                       5373 00101$:
                           0007DA  5374 	C$easyax5043.c$595$2$276 ==.
                                   5375 ;	..\COMMON\easyax5043.c:595: AX5043_IRQMASK1 = 0x00;
      00133D 90 40 06         [24] 5376 	mov	dptr,#_AX5043_IRQMASK1
      001340 E4               [12] 5377 	clr	a
      001341 F0               [24] 5378 	movx	@dptr,a
                           0007DF  5379 	C$easyax5043.c$596$2$276 ==.
                                   5380 ;	..\COMMON\easyax5043.c:596: AX5043_IRQMASK0 = 0x00;
      001342 90 40 07         [24] 5381 	mov	dptr,#_AX5043_IRQMASK0
      001345 F0               [24] 5382 	movx	@dptr,a
                           0007E3  5383 	C$easyax5043.c$597$2$276 ==.
                                   5384 ;	..\COMMON\easyax5043.c:597: break;
      001346 02 16 BF         [24] 5385 	ljmp	00167$
                           0007E6  5386 	C$easyax5043.c$599$2$276 ==.
                                   5387 ;	..\COMMON\easyax5043.c:599: case trxstate_wait_xtal:
      001349                       5388 00102$:
                           0007E6  5389 	C$easyax5043.c$600$2$276 ==.
                                   5390 ;	..\COMMON\easyax5043.c:600: AX5043_IRQMASK1 = 0x00; // otherwise crystal ready will fire all over again
      001349 90 40 06         [24] 5391 	mov	dptr,#_AX5043_IRQMASK1
      00134C E4               [12] 5392 	clr	a
      00134D F0               [24] 5393 	movx	@dptr,a
                           0007EB  5394 	C$easyax5043.c$601$2$276 ==.
                                   5395 ;	..\COMMON\easyax5043.c:601: axradio_trxstate = trxstate_xtal_ready;
      00134E 75 09 04         [24] 5396 	mov	_axradio_trxstate,#0x04
                           0007EE  5397 	C$easyax5043.c$602$2$276 ==.
                                   5398 ;	..\COMMON\easyax5043.c:602: break;
      001351 02 16 BF         [24] 5399 	ljmp	00167$
                           0007F1  5400 	C$easyax5043.c$604$2$276 ==.
                                   5401 ;	..\COMMON\easyax5043.c:604: case trxstate_pll_ranging:
      001354                       5402 00103$:
                           0007F1  5403 	C$easyax5043.c$605$2$276 ==.
                                   5404 ;	..\COMMON\easyax5043.c:605: AX5043_IRQMASK1 = 0x00; // otherwise autoranging done will fire all over again
      001354 90 40 06         [24] 5405 	mov	dptr,#_AX5043_IRQMASK1
      001357 E4               [12] 5406 	clr	a
      001358 F0               [24] 5407 	movx	@dptr,a
                           0007F6  5408 	C$easyax5043.c$606$2$276 ==.
                                   5409 ;	..\COMMON\easyax5043.c:606: axradio_trxstate = trxstate_pll_ranging_done;
      001359 75 09 06         [24] 5410 	mov	_axradio_trxstate,#0x06
                           0007F9  5411 	C$easyax5043.c$607$2$276 ==.
                                   5412 ;	..\COMMON\easyax5043.c:607: break;
      00135C 02 16 BF         [24] 5413 	ljmp	00167$
                           0007FC  5414 	C$easyax5043.c$609$2$276 ==.
                                   5415 ;	..\COMMON\easyax5043.c:609: case trxstate_pll_settling:
      00135F                       5416 00104$:
                           0007FC  5417 	C$easyax5043.c$610$2$276 ==.
                                   5418 ;	..\COMMON\easyax5043.c:610: AX5043_RADIOEVENTMASK0 = 0x00;
      00135F 90 40 09         [24] 5419 	mov	dptr,#_AX5043_RADIOEVENTMASK0
      001362 E4               [12] 5420 	clr	a
      001363 F0               [24] 5421 	movx	@dptr,a
                           000801  5422 	C$easyax5043.c$611$2$276 ==.
                                   5423 ;	..\COMMON\easyax5043.c:611: axradio_trxstate = trxstate_pll_settled;
      001364 75 09 08         [24] 5424 	mov	_axradio_trxstate,#0x08
                           000804  5425 	C$easyax5043.c$612$2$276 ==.
                                   5426 ;	..\COMMON\easyax5043.c:612: break;
      001367 02 16 BF         [24] 5427 	ljmp	00167$
                           000807  5428 	C$easyax5043.c$614$2$276 ==.
                                   5429 ;	..\COMMON\easyax5043.c:614: case trxstate_tx_xtalwait:
      00136A                       5430 00105$:
                           000807  5431 	C$easyax5043.c$615$2$276 ==.
                                   5432 ;	..\COMMON\easyax5043.c:615: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      00136A 90 40 0F         [24] 5433 	mov	dptr,#_AX5043_RADIOEVENTREQ0
      00136D E0               [24] 5434 	movx	a,@dptr
                           00080B  5435 	C$easyax5043.c$616$2$276 ==.
                                   5436 ;	..\COMMON\easyax5043.c:616: AX5043_FIFOSTAT = 3; // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
      00136E 90 40 28         [24] 5437 	mov	dptr,#_AX5043_FIFOSTAT
      001371 74 03            [12] 5438 	mov	a,#0x03
      001373 F0               [24] 5439 	movx	@dptr,a
                           000811  5440 	C$easyax5043.c$617$2$276 ==.
                                   5441 ;	..\COMMON\easyax5043.c:617: AX5043_IRQMASK1 = 0x00;
      001374 90 40 06         [24] 5442 	mov	dptr,#_AX5043_IRQMASK1
      001377 E4               [12] 5443 	clr	a
      001378 F0               [24] 5444 	movx	@dptr,a
                           000816  5445 	C$easyax5043.c$618$2$276 ==.
                                   5446 ;	..\COMMON\easyax5043.c:618: AX5043_IRQMASK0 = 0x08; // enable fifo free threshold
      001379 90 40 07         [24] 5447 	mov	dptr,#_AX5043_IRQMASK0
      00137C 74 08            [12] 5448 	mov	a,#0x08
      00137E F0               [24] 5449 	movx	@dptr,a
                           00081C  5450 	C$easyax5043.c$619$2$276 ==.
                                   5451 ;	..\COMMON\easyax5043.c:619: axradio_trxstate = trxstate_tx_longpreamble;
      00137F 75 09 0A         [24] 5452 	mov	_axradio_trxstate,#0x0a
                           00081F  5453 	C$easyax5043.c$621$2$276 ==.
                                   5454 ;	..\COMMON\easyax5043.c:621: if ((AX5043_MODULATION & 0x0F) == 9) { // 4-FSK
      001382 90 40 10         [24] 5455 	mov	dptr,#_AX5043_MODULATION
      001385 E0               [24] 5456 	movx	a,@dptr
      001386 FF               [12] 5457 	mov	r7,a
      001387 53 07 0F         [24] 5458 	anl	ar7,#0x0f
      00138A BF 09 0E         [24] 5459 	cjne	r7,#0x09,00107$
                           00082A  5460 	C$easyax5043.c$622$3$277 ==.
                                   5461 ;	..\COMMON\easyax5043.c:622: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
      00138D 90 40 29         [24] 5462 	mov	dptr,#_AX5043_FIFODATA
      001390 74 E1            [12] 5463 	mov	a,#0xe1
      001392 F0               [24] 5464 	movx	@dptr,a
                           000830  5465 	C$easyax5043.c$623$3$277 ==.
                                   5466 ;	..\COMMON\easyax5043.c:623: AX5043_FIFODATA = 2;  // length (including flags)
      001393 74 02            [12] 5467 	mov	a,#0x02
      001395 F0               [24] 5468 	movx	@dptr,a
                           000833  5469 	C$easyax5043.c$624$3$277 ==.
                                   5470 ;	..\COMMON\easyax5043.c:624: AX5043_FIFODATA = 0x01;  // flag PKTSTART -> dibit sync
      001396 14               [12] 5471 	dec	a
      001397 F0               [24] 5472 	movx	@dptr,a
                           000835  5473 	C$easyax5043.c$625$3$277 ==.
                                   5474 ;	..\COMMON\easyax5043.c:625: AX5043_FIFODATA = 0x11; // dummy byte for forcing dibit sync
      001398 74 11            [12] 5475 	mov	a,#0x11
      00139A F0               [24] 5476 	movx	@dptr,a
      00139B                       5477 00107$:
                           000838  5478 	C$easyax5043.c$632$2$276 ==.
                                   5479 ;	..\COMMON\easyax5043.c:632: transmit_isr();
      00139B 12 0F B2         [24] 5480 	lcall	_transmit_isr
                           00083B  5481 	C$easyax5043.c$633$2$276 ==.
                                   5482 ;	..\COMMON\easyax5043.c:633: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
      00139E 90 40 02         [24] 5483 	mov	dptr,#_AX5043_PWRMODE
      0013A1 74 0D            [12] 5484 	mov	a,#0x0d
      0013A3 F0               [24] 5485 	movx	@dptr,a
                           000841  5486 	C$easyax5043.c$634$2$276 ==.
                                   5487 ;	..\COMMON\easyax5043.c:634: update_timeanchor();
      0013A4 12 0B 63         [24] 5488 	lcall	_update_timeanchor
                           000844  5489 	C$easyax5043.c$635$2$276 ==.
                                   5490 ;	..\COMMON\easyax5043.c:635: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      0013A7 90 02 6C         [24] 5491 	mov	dptr,#_axradio_cb_transmitstart
      0013AA 12 51 BE         [24] 5492 	lcall	_wtimer_remove_callback
                           00084A  5493 	C$easyax5043.c$636$2$276 ==.
                                   5494 ;	..\COMMON\easyax5043.c:636: switch (axradio_mode) {
      0013AD AF 08            [24] 5495 	mov	r7,_axradio_mode
      0013AF BF 12 02         [24] 5496 	cjne	r7,#0x12,00261$
      0013B2 80 03            [24] 5497 	sjmp	00109$
      0013B4                       5498 00261$:
      0013B4 BF 13 19         [24] 5499 	cjne	r7,#0x13,00112$
                           000854  5500 	C$easyax5043.c$638$3$278 ==.
                                   5501 ;	..\COMMON\easyax5043.c:638: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      0013B7                       5502 00109$:
                           000854  5503 	C$easyax5043.c$639$3$278 ==.
                                   5504 ;	..\COMMON\easyax5043.c:639: if (axradio_ack_count != axradio_framing_ack_retransmissions) {
      0013B7 90 00 0F         [24] 5505 	mov	dptr,#_axradio_ack_count
      0013BA E0               [24] 5506 	movx	a,@dptr
      0013BB FF               [12] 5507 	mov	r7,a
      0013BC 90 55 EC         [24] 5508 	mov	dptr,#_axradio_framing_ack_retransmissions
      0013BF E4               [12] 5509 	clr	a
      0013C0 93               [24] 5510 	movc	a,@a+dptr
      0013C1 FE               [12] 5511 	mov	r6,a
      0013C2 EF               [12] 5512 	mov	a,r7
      0013C3 B5 06 02         [24] 5513 	cjne	a,ar6,00264$
      0013C6 80 08            [24] 5514 	sjmp	00112$
      0013C8                       5515 00264$:
                           000865  5516 	C$easyax5043.c$640$4$279 ==.
                                   5517 ;	..\COMMON\easyax5043.c:640: axradio_cb_transmitstart.st.error = AXRADIO_ERR_RETRANSMISSION;
      0013C8 90 02 71         [24] 5518 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      0013CB 74 08            [12] 5519 	mov	a,#0x08
      0013CD F0               [24] 5520 	movx	@dptr,a
                           00086B  5521 	C$easyax5043.c$641$4$279 ==.
                                   5522 ;	..\COMMON\easyax5043.c:641: break;
                           00086B  5523 	C$easyax5043.c$644$3$278 ==.
                                   5524 ;	..\COMMON\easyax5043.c:644: default:
      0013CE 80 05            [24] 5525 	sjmp	00113$
      0013D0                       5526 00112$:
                           00086D  5527 	C$easyax5043.c$645$3$278 ==.
                                   5528 ;	..\COMMON\easyax5043.c:645: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      0013D0 90 02 71         [24] 5529 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      0013D3 E4               [12] 5530 	clr	a
      0013D4 F0               [24] 5531 	movx	@dptr,a
                           000872  5532 	C$easyax5043.c$647$2$276 ==.
                                   5533 ;	..\COMMON\easyax5043.c:647: }
      0013D5                       5534 00113$:
                           000872  5535 	C$easyax5043.c$648$2$276 ==.
                                   5536 ;	..\COMMON\easyax5043.c:648: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      0013D5 90 00 1B         [24] 5537 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0013D8 E0               [24] 5538 	movx	a,@dptr
      0013D9 FC               [12] 5539 	mov	r4,a
      0013DA A3               [24] 5540 	inc	dptr
      0013DB E0               [24] 5541 	movx	a,@dptr
      0013DC FD               [12] 5542 	mov	r5,a
      0013DD A3               [24] 5543 	inc	dptr
      0013DE E0               [24] 5544 	movx	a,@dptr
      0013DF FE               [12] 5545 	mov	r6,a
      0013E0 A3               [24] 5546 	inc	dptr
      0013E1 E0               [24] 5547 	movx	a,@dptr
      0013E2 FF               [12] 5548 	mov	r7,a
      0013E3 90 02 72         [24] 5549 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      0013E6 EC               [12] 5550 	mov	a,r4
      0013E7 F0               [24] 5551 	movx	@dptr,a
      0013E8 ED               [12] 5552 	mov	a,r5
      0013E9 A3               [24] 5553 	inc	dptr
      0013EA F0               [24] 5554 	movx	@dptr,a
      0013EB EE               [12] 5555 	mov	a,r6
      0013EC A3               [24] 5556 	inc	dptr
      0013ED F0               [24] 5557 	movx	@dptr,a
      0013EE EF               [12] 5558 	mov	a,r7
      0013EF A3               [24] 5559 	inc	dptr
      0013F0 F0               [24] 5560 	movx	@dptr,a
                           00088E  5561 	C$easyax5043.c$649$2$276 ==.
                                   5562 ;	..\COMMON\easyax5043.c:649: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      0013F1 90 02 6C         [24] 5563 	mov	dptr,#_axradio_cb_transmitstart
      0013F4 12 46 A2         [24] 5564 	lcall	_wtimer_add_callback
                           000894  5565 	C$easyax5043.c$650$2$276 ==.
                                   5566 ;	..\COMMON\easyax5043.c:650: break;
      0013F7 02 16 BF         [24] 5567 	ljmp	00167$
                           000897  5568 	C$easyax5043.c$652$2$276 ==.
                                   5569 ;	..\COMMON\easyax5043.c:652: case trxstate_tx_longpreamble:
      0013FA                       5570 00114$:
                           000897  5571 	C$easyax5043.c$653$2$276 ==.
                                   5572 ;	..\COMMON\easyax5043.c:653: case trxstate_tx_shortpreamble:
      0013FA                       5573 00115$:
                           000897  5574 	C$easyax5043.c$654$2$276 ==.
                                   5575 ;	..\COMMON\easyax5043.c:654: case trxstate_tx_packet:
      0013FA                       5576 00116$:
                           000897  5577 	C$easyax5043.c$655$2$276 ==.
                                   5578 ;	..\COMMON\easyax5043.c:655: transmit_isr();
      0013FA 12 0F B2         [24] 5579 	lcall	_transmit_isr
                           00089A  5580 	C$easyax5043.c$656$2$276 ==.
                                   5581 ;	..\COMMON\easyax5043.c:656: break;
      0013FD 02 16 BF         [24] 5582 	ljmp	00167$
                           00089D  5583 	C$easyax5043.c$658$2$276 ==.
                                   5584 ;	..\COMMON\easyax5043.c:658: case trxstate_tx_waitdone:
      001400                       5585 00117$:
                           00089D  5586 	C$easyax5043.c$659$2$276 ==.
                                   5587 ;	..\COMMON\easyax5043.c:659: AX5043_RADIOEVENTREQ0;
      001400 90 40 0F         [24] 5588 	mov	dptr,#_AX5043_RADIOEVENTREQ0
      001403 E0               [24] 5589 	movx	a,@dptr
                           0008A1  5590 	C$easyax5043.c$660$2$276 ==.
                                   5591 ;	..\COMMON\easyax5043.c:660: if (AX5043_RADIOSTATE != 0)
      001404 90 40 1C         [24] 5592 	mov	dptr,#_AX5043_RADIOSTATE
      001407 E0               [24] 5593 	movx	a,@dptr
      001408 E0               [24] 5594 	movx	a,@dptr
      001409 60 03            [24] 5595 	jz	00265$
      00140B 02 16 BF         [24] 5596 	ljmp	00167$
      00140E                       5597 00265$:
                           0008AB  5598 	C$easyax5043.c$662$2$276 ==.
                                   5599 ;	..\COMMON\easyax5043.c:662: AX5043_RADIOEVENTMASK0 = 0x00;
      00140E 90 40 09         [24] 5600 	mov	dptr,#_AX5043_RADIOEVENTMASK0
      001411 E4               [12] 5601 	clr	a
      001412 F0               [24] 5602 	movx	@dptr,a
                           0008B0  5603 	C$easyax5043.c$663$2$276 ==.
                                   5604 ;	..\COMMON\easyax5043.c:663: switch (axradio_mode) {
      001413 AF 08            [24] 5605 	mov	r7,_axradio_mode
      001415 BF 12 02         [24] 5606 	cjne	r7,#0x12,00266$
      001418 80 6A            [24] 5607 	sjmp	00131$
      00141A                       5608 00266$:
      00141A BF 13 02         [24] 5609 	cjne	r7,#0x13,00267$
      00141D 80 65            [24] 5610 	sjmp	00131$
      00141F                       5611 00267$:
      00141F BF 20 02         [24] 5612 	cjne	r7,#0x20,00268$
      001422 80 1D            [24] 5613 	sjmp	00120$
      001424                       5614 00268$:
      001424 BF 21 02         [24] 5615 	cjne	r7,#0x21,00269$
      001427 80 36            [24] 5616 	sjmp	00125$
      001429                       5617 00269$:
      001429 BF 22 02         [24] 5618 	cjne	r7,#0x22,00270$
      00142C 80 1C            [24] 5619 	sjmp	00121$
      00142E                       5620 00270$:
      00142E BF 23 02         [24] 5621 	cjne	r7,#0x23,00271$
      001431 80 3C            [24] 5622 	sjmp	00128$
      001433                       5623 00271$:
      001433 BF 30 03         [24] 5624 	cjne	r7,#0x30,00272$
      001436 02 14 B8         [24] 5625 	ljmp	00132$
      001439                       5626 00272$:
      001439 BF 31 02         [24] 5627 	cjne	r7,#0x31,00273$
      00143C 80 39            [24] 5628 	sjmp	00129$
      00143E                       5629 00273$:
      00143E 02 14 C5         [24] 5630 	ljmp	00133$
                           0008DE  5631 	C$easyax5043.c$664$3$280 ==.
                                   5632 ;	..\COMMON\easyax5043.c:664: case AXRADIO_MODE_ASYNC_RECEIVE:
      001441                       5633 00120$:
                           0008DE  5634 	C$easyax5043.c$665$3$280 ==.
                                   5635 ;	..\COMMON\easyax5043.c:665: ax5043_init_registers_rx();
      001441 12 0C 43         [24] 5636 	lcall	_ax5043_init_registers_rx
                           0008E1  5637 	C$easyax5043.c$666$3$280 ==.
                                   5638 ;	..\COMMON\easyax5043.c:666: ax5043_receiver_on_continuous();
      001444 12 16 DC         [24] 5639 	lcall	_ax5043_receiver_on_continuous
                           0008E4  5640 	C$easyax5043.c$667$3$280 ==.
                                   5641 ;	..\COMMON\easyax5043.c:667: break;
      001447 02 14 C8         [24] 5642 	ljmp	00134$
                           0008E7  5643 	C$easyax5043.c$669$3$280 ==.
                                   5644 ;	..\COMMON\easyax5043.c:669: case AXRADIO_MODE_ACK_RECEIVE:
      00144A                       5645 00121$:
                           0008E7  5646 	C$easyax5043.c$670$3$280 ==.
                                   5647 ;	..\COMMON\easyax5043.c:670: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
      00144A 90 02 38         [24] 5648 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      00144D E0               [24] 5649 	movx	a,@dptr
      00144E FF               [12] 5650 	mov	r7,a
      00144F BF F0 08         [24] 5651 	cjne	r7,#0xf0,00124$
                           0008EF  5652 	C$easyax5043.c$671$4$281 ==.
                                   5653 ;	..\COMMON\easyax5043.c:671: ax5043_init_registers_rx();
      001452 12 0C 43         [24] 5654 	lcall	_ax5043_init_registers_rx
                           0008F2  5655 	C$easyax5043.c$672$4$281 ==.
                                   5656 ;	..\COMMON\easyax5043.c:672: ax5043_receiver_on_continuous();
      001455 12 16 DC         [24] 5657 	lcall	_ax5043_receiver_on_continuous
                           0008F5  5658 	C$easyax5043.c$673$4$281 ==.
                                   5659 ;	..\COMMON\easyax5043.c:673: break;
                           0008F5  5660 	C$easyax5043.c$675$3$280 ==.
                                   5661 ;	..\COMMON\easyax5043.c:675: offxtal:
      001458 80 6E            [24] 5662 	sjmp	00134$
      00145A                       5663 00124$:
                           0008F7  5664 	C$easyax5043.c$676$3$280 ==.
                                   5665 ;	..\COMMON\easyax5043.c:676: ax5043_off_xtal();
      00145A 12 18 37         [24] 5666 	lcall	_ax5043_off_xtal
                           0008FA  5667 	C$easyax5043.c$677$3$280 ==.
                                   5668 ;	..\COMMON\easyax5043.c:677: break;
                           0008FA  5669 	C$easyax5043.c$679$3$280 ==.
                                   5670 ;	..\COMMON\easyax5043.c:679: case AXRADIO_MODE_WOR_RECEIVE:
      00145D 80 69            [24] 5671 	sjmp	00134$
      00145F                       5672 00125$:
                           0008FC  5673 	C$easyax5043.c$680$3$280 ==.
                                   5674 ;	..\COMMON\easyax5043.c:680: if (axradio_cb_receive.st.error == AXRADIO_ERR_PACKETDONE) {
      00145F 90 02 38         [24] 5675 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      001462 E0               [24] 5676 	movx	a,@dptr
      001463 FF               [12] 5677 	mov	r7,a
      001464 BF F0 F3         [24] 5678 	cjne	r7,#0xf0,00124$
                           000904  5679 	C$easyax5043.c$681$4$282 ==.
                                   5680 ;	..\COMMON\easyax5043.c:681: ax5043_init_registers_rx();
      001467 12 0C 43         [24] 5681 	lcall	_ax5043_init_registers_rx
                           000907  5682 	C$easyax5043.c$682$4$282 ==.
                                   5683 ;	..\COMMON\easyax5043.c:682: ax5043_receiver_on_wor();
      00146A 12 17 44         [24] 5684 	lcall	_ax5043_receiver_on_wor
                           00090A  5685 	C$easyax5043.c$683$4$282 ==.
                                   5686 ;	..\COMMON\easyax5043.c:683: break;
                           00090A  5687 	C$easyax5043.c$687$3$280 ==.
                                   5688 ;	..\COMMON\easyax5043.c:687: case AXRADIO_MODE_WOR_ACK_RECEIVE:
      00146D 80 59            [24] 5689 	sjmp	00134$
      00146F                       5690 00128$:
                           00090C  5691 	C$easyax5043.c$688$3$280 ==.
                                   5692 ;	..\COMMON\easyax5043.c:688: ax5043_init_registers_rx();
      00146F 12 0C 43         [24] 5693 	lcall	_ax5043_init_registers_rx
                           00090F  5694 	C$easyax5043.c$689$3$280 ==.
                                   5695 ;	..\COMMON\easyax5043.c:689: ax5043_receiver_on_wor();
      001472 12 17 44         [24] 5696 	lcall	_ax5043_receiver_on_wor
                           000912  5697 	C$easyax5043.c$690$3$280 ==.
                                   5698 ;	..\COMMON\easyax5043.c:690: break;
                           000912  5699 	C$easyax5043.c$692$3$280 ==.
                                   5700 ;	..\COMMON\easyax5043.c:692: case AXRADIO_MODE_SYNC_ACK_MASTER:
      001475 80 51            [24] 5701 	sjmp	00134$
      001477                       5702 00129$:
                           000914  5703 	C$easyax5043.c$693$3$280 ==.
                                   5704 ;	..\COMMON\easyax5043.c:693: axradio_txbuffer_len = axradio_framing_minpayloadlen;
      001477 90 55 EE         [24] 5705 	mov	dptr,#_axradio_framing_minpayloadlen
      00147A E4               [12] 5706 	clr	a
      00147B 93               [24] 5707 	movc	a,@a+dptr
      00147C FF               [12] 5708 	mov	r7,a
      00147D 90 00 06         [24] 5709 	mov	dptr,#_axradio_txbuffer_len
      001480 F0               [24] 5710 	movx	@dptr,a
      001481 E4               [12] 5711 	clr	a
      001482 A3               [24] 5712 	inc	dptr
      001483 F0               [24] 5713 	movx	@dptr,a
                           000921  5714 	C$easyax5043.c$697$3$280 ==.
                                   5715 ;	..\COMMON\easyax5043.c:697: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      001484                       5716 00131$:
                           000921  5717 	C$easyax5043.c$698$3$280 ==.
                                   5718 ;	..\COMMON\easyax5043.c:698: ax5043_init_registers_rx();
      001484 12 0C 43         [24] 5719 	lcall	_ax5043_init_registers_rx
                           000924  5720 	C$easyax5043.c$699$3$280 ==.
                                   5721 ;	..\COMMON\easyax5043.c:699: ax5043_receiver_on_continuous();
      001487 12 16 DC         [24] 5722 	lcall	_ax5043_receiver_on_continuous
                           000927  5723 	C$easyax5043.c$700$3$280 ==.
                                   5724 ;	..\COMMON\easyax5043.c:700: wtimer_remove(&axradio_timer);
      00148A 90 02 8A         [24] 5725 	mov	dptr,#_axradio_timer
      00148D 12 4D D3         [24] 5726 	lcall	_wtimer_remove
                           00092D  5727 	C$easyax5043.c$701$3$280 ==.
                                   5728 ;	..\COMMON\easyax5043.c:701: axradio_timer.time = axradio_framing_ack_timeout;
      001490 90 55 E4         [24] 5729 	mov	dptr,#_axradio_framing_ack_timeout
      001493 E4               [12] 5730 	clr	a
      001494 93               [24] 5731 	movc	a,@a+dptr
      001495 FC               [12] 5732 	mov	r4,a
      001496 74 01            [12] 5733 	mov	a,#0x01
      001498 93               [24] 5734 	movc	a,@a+dptr
      001499 FD               [12] 5735 	mov	r5,a
      00149A 74 02            [12] 5736 	mov	a,#0x02
      00149C 93               [24] 5737 	movc	a,@a+dptr
      00149D FE               [12] 5738 	mov	r6,a
      00149E 74 03            [12] 5739 	mov	a,#0x03
      0014A0 93               [24] 5740 	movc	a,@a+dptr
      0014A1 FF               [12] 5741 	mov	r7,a
      0014A2 90 02 8E         [24] 5742 	mov	dptr,#(_axradio_timer + 0x0004)
      0014A5 EC               [12] 5743 	mov	a,r4
      0014A6 F0               [24] 5744 	movx	@dptr,a
      0014A7 ED               [12] 5745 	mov	a,r5
      0014A8 A3               [24] 5746 	inc	dptr
      0014A9 F0               [24] 5747 	movx	@dptr,a
      0014AA EE               [12] 5748 	mov	a,r6
      0014AB A3               [24] 5749 	inc	dptr
      0014AC F0               [24] 5750 	movx	@dptr,a
      0014AD EF               [12] 5751 	mov	a,r7
      0014AE A3               [24] 5752 	inc	dptr
      0014AF F0               [24] 5753 	movx	@dptr,a
                           00094D  5754 	C$easyax5043.c$702$3$280 ==.
                                   5755 ;	..\COMMON\easyax5043.c:702: wtimer0_addrelative(&axradio_timer);
      0014B0 90 02 8A         [24] 5756 	mov	dptr,#_axradio_timer
      0014B3 12 46 BC         [24] 5757 	lcall	_wtimer0_addrelative
                           000953  5758 	C$easyax5043.c$703$3$280 ==.
                                   5759 ;	..\COMMON\easyax5043.c:703: break;
                           000953  5760 	C$easyax5043.c$705$3$280 ==.
                                   5761 ;	..\COMMON\easyax5043.c:705: case AXRADIO_MODE_SYNC_MASTER:
      0014B6 80 10            [24] 5762 	sjmp	00134$
      0014B8                       5763 00132$:
                           000955  5764 	C$easyax5043.c$706$3$280 ==.
                                   5765 ;	..\COMMON\easyax5043.c:706: axradio_txbuffer_len = axradio_framing_minpayloadlen;
      0014B8 90 55 EE         [24] 5766 	mov	dptr,#_axradio_framing_minpayloadlen
      0014BB E4               [12] 5767 	clr	a
      0014BC 93               [24] 5768 	movc	a,@a+dptr
      0014BD FF               [12] 5769 	mov	r7,a
      0014BE 90 00 06         [24] 5770 	mov	dptr,#_axradio_txbuffer_len
      0014C1 F0               [24] 5771 	movx	@dptr,a
      0014C2 E4               [12] 5772 	clr	a
      0014C3 A3               [24] 5773 	inc	dptr
      0014C4 F0               [24] 5774 	movx	@dptr,a
                           000962  5775 	C$easyax5043.c$709$3$280 ==.
                                   5776 ;	..\COMMON\easyax5043.c:709: default:
      0014C5                       5777 00133$:
                           000962  5778 	C$easyax5043.c$710$3$280 ==.
                                   5779 ;	..\COMMON\easyax5043.c:710: ax5043_off();
      0014C5 12 18 2E         [24] 5780 	lcall	_ax5043_off
                           000965  5781 	C$easyax5043.c$712$2$276 ==.
                                   5782 ;	..\COMMON\easyax5043.c:712: }
      0014C8                       5783 00134$:
                           000965  5784 	C$easyax5043.c$713$2$276 ==.
                                   5785 ;	..\COMMON\easyax5043.c:713: if (axradio_mode != AXRADIO_MODE_SYNC_MASTER &&
      0014C8 74 30            [12] 5786 	mov	a,#0x30
      0014CA B5 08 02         [24] 5787 	cjne	a,_axradio_mode,00278$
      0014CD 80 1A            [24] 5788 	sjmp	00136$
      0014CF                       5789 00278$:
                           00096C  5790 	C$easyax5043.c$714$2$276 ==.
                                   5791 ;	..\COMMON\easyax5043.c:714: axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER &&
      0014CF 74 31            [12] 5792 	mov	a,#0x31
      0014D1 B5 08 02         [24] 5793 	cjne	a,_axradio_mode,00279$
      0014D4 80 13            [24] 5794 	sjmp	00136$
      0014D6                       5795 00279$:
                           000973  5796 	C$easyax5043.c$715$2$276 ==.
                                   5797 ;	..\COMMON\easyax5043.c:715: axradio_mode != AXRADIO_MODE_SYNC_SLAVE &&
      0014D6 74 32            [12] 5798 	mov	a,#0x32
      0014D8 B5 08 02         [24] 5799 	cjne	a,_axradio_mode,00280$
      0014DB 80 0C            [24] 5800 	sjmp	00136$
      0014DD                       5801 00280$:
                           00097A  5802 	C$easyax5043.c$716$2$276 ==.
                                   5803 ;	..\COMMON\easyax5043.c:716: axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
      0014DD 74 33            [12] 5804 	mov	a,#0x33
      0014DF B5 08 02         [24] 5805 	cjne	a,_axradio_mode,00281$
      0014E2 80 05            [24] 5806 	sjmp	00136$
      0014E4                       5807 00281$:
                           000981  5808 	C$easyax5043.c$717$2$276 ==.
                                   5809 ;	..\COMMON\easyax5043.c:717: axradio_syncstate = syncstate_off;
      0014E4 90 00 05         [24] 5810 	mov	dptr,#_axradio_syncstate
      0014E7 E4               [12] 5811 	clr	a
      0014E8 F0               [24] 5812 	movx	@dptr,a
      0014E9                       5813 00136$:
                           000986  5814 	C$easyax5043.c$718$2$276 ==.
                                   5815 ;	..\COMMON\easyax5043.c:718: update_timeanchor();
      0014E9 12 0B 63         [24] 5816 	lcall	_update_timeanchor
                           000989  5817 	C$easyax5043.c$719$2$276 ==.
                                   5818 ;	..\COMMON\easyax5043.c:719: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      0014EC 90 02 76         [24] 5819 	mov	dptr,#_axradio_cb_transmitend
      0014EF 12 51 BE         [24] 5820 	lcall	_wtimer_remove_callback
                           00098F  5821 	C$easyax5043.c$720$2$276 ==.
                                   5822 ;	..\COMMON\easyax5043.c:720: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      0014F2 90 02 7B         [24] 5823 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      0014F5 E4               [12] 5824 	clr	a
      0014F6 F0               [24] 5825 	movx	@dptr,a
                           000994  5826 	C$easyax5043.c$721$2$276 ==.
                                   5827 ;	..\COMMON\easyax5043.c:721: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
      0014F7 74 12            [12] 5828 	mov	a,#0x12
      0014F9 B5 08 02         [24] 5829 	cjne	a,_axradio_mode,00282$
      0014FC 80 0C            [24] 5830 	sjmp	00140$
      0014FE                       5831 00282$:
                           00099B  5832 	C$easyax5043.c$722$2$276 ==.
                                   5833 ;	..\COMMON\easyax5043.c:722: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
      0014FE 74 13            [12] 5834 	mov	a,#0x13
      001500 B5 08 02         [24] 5835 	cjne	a,_axradio_mode,00283$
      001503 80 05            [24] 5836 	sjmp	00140$
      001505                       5837 00283$:
                           0009A2  5838 	C$easyax5043.c$723$2$276 ==.
                                   5839 ;	..\COMMON\easyax5043.c:723: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
      001505 74 31            [12] 5840 	mov	a,#0x31
      001507 B5 08 06         [24] 5841 	cjne	a,_axradio_mode,00141$
      00150A                       5842 00140$:
                           0009A7  5843 	C$easyax5043.c$724$2$276 ==.
                                   5844 ;	..\COMMON\easyax5043.c:724: axradio_cb_transmitend.st.error = AXRADIO_ERR_BUSY;
      00150A 90 02 7B         [24] 5845 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      00150D 74 02            [12] 5846 	mov	a,#0x02
      00150F F0               [24] 5847 	movx	@dptr,a
      001510                       5848 00141$:
                           0009AD  5849 	C$easyax5043.c$725$2$276 ==.
                                   5850 ;	..\COMMON\easyax5043.c:725: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      001510 90 00 1B         [24] 5851 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001513 E0               [24] 5852 	movx	a,@dptr
      001514 FC               [12] 5853 	mov	r4,a
      001515 A3               [24] 5854 	inc	dptr
      001516 E0               [24] 5855 	movx	a,@dptr
      001517 FD               [12] 5856 	mov	r5,a
      001518 A3               [24] 5857 	inc	dptr
      001519 E0               [24] 5858 	movx	a,@dptr
      00151A FE               [12] 5859 	mov	r6,a
      00151B A3               [24] 5860 	inc	dptr
      00151C E0               [24] 5861 	movx	a,@dptr
      00151D FF               [12] 5862 	mov	r7,a
      00151E 90 02 7C         [24] 5863 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      001521 EC               [12] 5864 	mov	a,r4
      001522 F0               [24] 5865 	movx	@dptr,a
      001523 ED               [12] 5866 	mov	a,r5
      001524 A3               [24] 5867 	inc	dptr
      001525 F0               [24] 5868 	movx	@dptr,a
      001526 EE               [12] 5869 	mov	a,r6
      001527 A3               [24] 5870 	inc	dptr
      001528 F0               [24] 5871 	movx	@dptr,a
      001529 EF               [12] 5872 	mov	a,r7
      00152A A3               [24] 5873 	inc	dptr
      00152B F0               [24] 5874 	movx	@dptr,a
                           0009C9  5875 	C$easyax5043.c$726$2$276 ==.
                                   5876 ;	..\COMMON\easyax5043.c:726: wtimer_add_callback(&axradio_cb_transmitend.cb);
      00152C 90 02 76         [24] 5877 	mov	dptr,#_axradio_cb_transmitend
      00152F 12 46 A2         [24] 5878 	lcall	_wtimer_add_callback
                           0009CF  5879 	C$easyax5043.c$727$2$276 ==.
                                   5880 ;	..\COMMON\easyax5043.c:727: break;
      001532 02 16 BF         [24] 5881 	ljmp	00167$
                           0009D2  5882 	C$easyax5043.c$730$2$276 ==.
                                   5883 ;	..\COMMON\easyax5043.c:730: case trxstate_txcw_xtalwait:
      001535                       5884 00144$:
                           0009D2  5885 	C$easyax5043.c$731$2$276 ==.
                                   5886 ;	..\COMMON\easyax5043.c:731: AX5043_IRQMASK1 = 0x00;
      001535 90 40 06         [24] 5887 	mov	dptr,#_AX5043_IRQMASK1
      001538 E4               [12] 5888 	clr	a
      001539 F0               [24] 5889 	movx	@dptr,a
                           0009D7  5890 	C$easyax5043.c$732$2$276 ==.
                                   5891 ;	..\COMMON\easyax5043.c:732: AX5043_IRQMASK0 = 0x00;
      00153A 90 40 07         [24] 5892 	mov	dptr,#_AX5043_IRQMASK0
      00153D F0               [24] 5893 	movx	@dptr,a
                           0009DB  5894 	C$easyax5043.c$733$2$276 ==.
                                   5895 ;	..\COMMON\easyax5043.c:733: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
      00153E 90 40 02         [24] 5896 	mov	dptr,#_AX5043_PWRMODE
      001541 74 0D            [12] 5897 	mov	a,#0x0d
      001543 F0               [24] 5898 	movx	@dptr,a
                           0009E1  5899 	C$easyax5043.c$734$2$276 ==.
                                   5900 ;	..\COMMON\easyax5043.c:734: axradio_trxstate = trxstate_off;
      001544 75 09 00         [24] 5901 	mov	_axradio_trxstate,#0x00
                           0009E4  5902 	C$easyax5043.c$735$2$276 ==.
                                   5903 ;	..\COMMON\easyax5043.c:735: update_timeanchor();
      001547 12 0B 63         [24] 5904 	lcall	_update_timeanchor
                           0009E7  5905 	C$easyax5043.c$736$2$276 ==.
                                   5906 ;	..\COMMON\easyax5043.c:736: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      00154A 90 02 6C         [24] 5907 	mov	dptr,#_axradio_cb_transmitstart
      00154D 12 51 BE         [24] 5908 	lcall	_wtimer_remove_callback
                           0009ED  5909 	C$easyax5043.c$737$2$276 ==.
                                   5910 ;	..\COMMON\easyax5043.c:737: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      001550 90 02 71         [24] 5911 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001553 E4               [12] 5912 	clr	a
      001554 F0               [24] 5913 	movx	@dptr,a
                           0009F2  5914 	C$easyax5043.c$738$2$276 ==.
                                   5915 ;	..\COMMON\easyax5043.c:738: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      001555 90 00 1B         [24] 5916 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001558 E0               [24] 5917 	movx	a,@dptr
      001559 FC               [12] 5918 	mov	r4,a
      00155A A3               [24] 5919 	inc	dptr
      00155B E0               [24] 5920 	movx	a,@dptr
      00155C FD               [12] 5921 	mov	r5,a
      00155D A3               [24] 5922 	inc	dptr
      00155E E0               [24] 5923 	movx	a,@dptr
      00155F FE               [12] 5924 	mov	r6,a
      001560 A3               [24] 5925 	inc	dptr
      001561 E0               [24] 5926 	movx	a,@dptr
      001562 FF               [12] 5927 	mov	r7,a
      001563 90 02 72         [24] 5928 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001566 EC               [12] 5929 	mov	a,r4
      001567 F0               [24] 5930 	movx	@dptr,a
      001568 ED               [12] 5931 	mov	a,r5
      001569 A3               [24] 5932 	inc	dptr
      00156A F0               [24] 5933 	movx	@dptr,a
      00156B EE               [12] 5934 	mov	a,r6
      00156C A3               [24] 5935 	inc	dptr
      00156D F0               [24] 5936 	movx	@dptr,a
      00156E EF               [12] 5937 	mov	a,r7
      00156F A3               [24] 5938 	inc	dptr
      001570 F0               [24] 5939 	movx	@dptr,a
                           000A0E  5940 	C$easyax5043.c$739$2$276 ==.
                                   5941 ;	..\COMMON\easyax5043.c:739: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001571 90 02 6C         [24] 5942 	mov	dptr,#_axradio_cb_transmitstart
      001574 12 46 A2         [24] 5943 	lcall	_wtimer_add_callback
                           000A14  5944 	C$easyax5043.c$740$2$276 ==.
                                   5945 ;	..\COMMON\easyax5043.c:740: break;
      001577 02 16 BF         [24] 5946 	ljmp	00167$
                           000A17  5947 	C$easyax5043.c$742$2$276 ==.
                                   5948 ;	..\COMMON\easyax5043.c:742: case trxstate_txstream_xtalwait:
      00157A                       5949 00145$:
                           000A17  5950 	C$easyax5043.c$743$2$276 ==.
                                   5951 ;	..\COMMON\easyax5043.c:743: if (AX5043_IRQREQUEST1 & 0x01) {
      00157A 90 40 0C         [24] 5952 	mov	dptr,#_AX5043_IRQREQUEST1
      00157D E0               [24] 5953 	movx	a,@dptr
      00157E FF               [12] 5954 	mov	r7,a
      00157F 20 E0 03         [24] 5955 	jb	acc.0,00286$
      001582 02 16 17         [24] 5956 	ljmp	00155$
      001585                       5957 00286$:
                           000A22  5958 	C$easyax5043.c$744$3$283 ==.
                                   5959 ;	..\COMMON\easyax5043.c:744: AX5043_RADIOEVENTMASK0 = 0x03; // enable PLL settled and done event
      001585 90 40 09         [24] 5960 	mov	dptr,#_AX5043_RADIOEVENTMASK0
      001588 74 03            [12] 5961 	mov	a,#0x03
      00158A F0               [24] 5962 	movx	@dptr,a
                           000A28  5963 	C$easyax5043.c$745$3$283 ==.
                                   5964 ;	..\COMMON\easyax5043.c:745: AX5043_IRQMASK1 = 0x00;
      00158B 90 40 06         [24] 5965 	mov	dptr,#_AX5043_IRQMASK1
      00158E E4               [12] 5966 	clr	a
      00158F F0               [24] 5967 	movx	@dptr,a
                           000A2D  5968 	C$easyax5043.c$746$3$283 ==.
                                   5969 ;	..\COMMON\easyax5043.c:746: AX5043_IRQMASK0 = 0x40; // enable radio controller irq
      001590 90 40 07         [24] 5970 	mov	dptr,#_AX5043_IRQMASK0
      001593 74 40            [12] 5971 	mov	a,#0x40
      001595 F0               [24] 5972 	movx	@dptr,a
                           000A33  5973 	C$easyax5043.c$747$3$283 ==.
                                   5974 ;	..\COMMON\easyax5043.c:747: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
      001596 90 40 02         [24] 5975 	mov	dptr,#_AX5043_PWRMODE
      001599 74 0D            [12] 5976 	mov	a,#0x0d
      00159B F0               [24] 5977 	movx	@dptr,a
                           000A39  5978 	C$easyax5043.c$748$3$283 ==.
                                   5979 ;	..\COMMON\easyax5043.c:748: axradio_trxstate = trxstate_txstream;
      00159C 75 09 10         [24] 5980 	mov	_axradio_trxstate,#0x10
                           000A3C  5981 	C$easyax5043.c$750$2$276 ==.
                                   5982 ;	..\COMMON\easyax5043.c:750: goto txstreamdatacb;
                           000A3C  5983 	C$easyax5043.c$752$2$276 ==.
                                   5984 ;	..\COMMON\easyax5043.c:752: case trxstate_txstream:
      00159F 80 76            [24] 5985 	sjmp	00155$
      0015A1                       5986 00148$:
                           000A3E  5987 	C$easyax5043.c$754$3$276 ==.
                                   5988 ;	..\COMMON\easyax5043.c:754: uint8_t __autodata evt = AX5043_RADIOEVENTREQ0;
      0015A1 90 40 0F         [24] 5989 	mov	dptr,#_AX5043_RADIOEVENTREQ0
      0015A4 E0               [24] 5990 	movx	a,@dptr
                           000A42  5991 	C$easyax5043.c$755$3$284 ==.
                                   5992 ;	..\COMMON\easyax5043.c:755: if (evt & 0x03)
      0015A5 FF               [12] 5993 	mov	r7,a
      0015A6 54 03            [12] 5994 	anl	a,#0x03
      0015A8 60 07            [24] 5995 	jz	00150$
                           000A47  5996 	C$easyax5043.c$756$3$284 ==.
                                   5997 ;	..\COMMON\easyax5043.c:756: update_timeanchor();
      0015AA C0 07            [24] 5998 	push	ar7
      0015AC 12 0B 63         [24] 5999 	lcall	_update_timeanchor
      0015AF D0 07            [24] 6000 	pop	ar7
      0015B1                       6001 00150$:
                           000A4E  6002 	C$easyax5043.c$757$3$284 ==.
                                   6003 ;	..\COMMON\easyax5043.c:757: if (evt & 0x01) {
      0015B1 EF               [12] 6004 	mov	a,r7
      0015B2 30 E0 31         [24] 6005 	jnb	acc.0,00152$
                           000A52  6006 	C$easyax5043.c$758$4$285 ==.
                                   6007 ;	..\COMMON\easyax5043.c:758: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      0015B5 90 02 76         [24] 6008 	mov	dptr,#_axradio_cb_transmitend
      0015B8 C0 07            [24] 6009 	push	ar7
      0015BA 12 51 BE         [24] 6010 	lcall	_wtimer_remove_callback
                           000A5A  6011 	C$easyax5043.c$759$4$285 ==.
                                   6012 ;	..\COMMON\easyax5043.c:759: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      0015BD 90 02 7B         [24] 6013 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      0015C0 E4               [12] 6014 	clr	a
      0015C1 F0               [24] 6015 	movx	@dptr,a
                           000A5F  6016 	C$easyax5043.c$760$4$285 ==.
                                   6017 ;	..\COMMON\easyax5043.c:760: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      0015C2 90 00 1B         [24] 6018 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0015C5 E0               [24] 6019 	movx	a,@dptr
      0015C6 FB               [12] 6020 	mov	r3,a
      0015C7 A3               [24] 6021 	inc	dptr
      0015C8 E0               [24] 6022 	movx	a,@dptr
      0015C9 FC               [12] 6023 	mov	r4,a
      0015CA A3               [24] 6024 	inc	dptr
      0015CB E0               [24] 6025 	movx	a,@dptr
      0015CC FD               [12] 6026 	mov	r5,a
      0015CD A3               [24] 6027 	inc	dptr
      0015CE E0               [24] 6028 	movx	a,@dptr
      0015CF FE               [12] 6029 	mov	r6,a
      0015D0 90 02 7C         [24] 6030 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      0015D3 EB               [12] 6031 	mov	a,r3
      0015D4 F0               [24] 6032 	movx	@dptr,a
      0015D5 EC               [12] 6033 	mov	a,r4
      0015D6 A3               [24] 6034 	inc	dptr
      0015D7 F0               [24] 6035 	movx	@dptr,a
      0015D8 ED               [12] 6036 	mov	a,r5
      0015D9 A3               [24] 6037 	inc	dptr
      0015DA F0               [24] 6038 	movx	@dptr,a
      0015DB EE               [12] 6039 	mov	a,r6
      0015DC A3               [24] 6040 	inc	dptr
      0015DD F0               [24] 6041 	movx	@dptr,a
                           000A7B  6042 	C$easyax5043.c$761$4$285 ==.
                                   6043 ;	..\COMMON\easyax5043.c:761: wtimer_add_callback(&axradio_cb_transmitend.cb);
      0015DE 90 02 76         [24] 6044 	mov	dptr,#_axradio_cb_transmitend
      0015E1 12 46 A2         [24] 6045 	lcall	_wtimer_add_callback
      0015E4 D0 07            [24] 6046 	pop	ar7
      0015E6                       6047 00152$:
                           000A83  6048 	C$easyax5043.c$763$3$284 ==.
                                   6049 ;	..\COMMON\easyax5043.c:763: if (evt & 0x02) {
      0015E6 EF               [12] 6050 	mov	a,r7
      0015E7 30 E1 2D         [24] 6051 	jnb	acc.1,00155$
                           000A87  6052 	C$easyax5043.c$764$4$286 ==.
                                   6053 ;	..\COMMON\easyax5043.c:764: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      0015EA 90 02 6C         [24] 6054 	mov	dptr,#_axradio_cb_transmitstart
      0015ED 12 51 BE         [24] 6055 	lcall	_wtimer_remove_callback
                           000A8D  6056 	C$easyax5043.c$765$4$286 ==.
                                   6057 ;	..\COMMON\easyax5043.c:765: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      0015F0 90 02 71         [24] 6058 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      0015F3 E4               [12] 6059 	clr	a
      0015F4 F0               [24] 6060 	movx	@dptr,a
                           000A92  6061 	C$easyax5043.c$766$4$286 ==.
                                   6062 ;	..\COMMON\easyax5043.c:766: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      0015F5 90 00 1B         [24] 6063 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0015F8 E0               [24] 6064 	movx	a,@dptr
      0015F9 FC               [12] 6065 	mov	r4,a
      0015FA A3               [24] 6066 	inc	dptr
      0015FB E0               [24] 6067 	movx	a,@dptr
      0015FC FD               [12] 6068 	mov	r5,a
      0015FD A3               [24] 6069 	inc	dptr
      0015FE E0               [24] 6070 	movx	a,@dptr
      0015FF FE               [12] 6071 	mov	r6,a
      001600 A3               [24] 6072 	inc	dptr
      001601 E0               [24] 6073 	movx	a,@dptr
      001602 FF               [12] 6074 	mov	r7,a
      001603 90 02 72         [24] 6075 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001606 EC               [12] 6076 	mov	a,r4
      001607 F0               [24] 6077 	movx	@dptr,a
      001608 ED               [12] 6078 	mov	a,r5
      001609 A3               [24] 6079 	inc	dptr
      00160A F0               [24] 6080 	movx	@dptr,a
      00160B EE               [12] 6081 	mov	a,r6
      00160C A3               [24] 6082 	inc	dptr
      00160D F0               [24] 6083 	movx	@dptr,a
      00160E EF               [12] 6084 	mov	a,r7
      00160F A3               [24] 6085 	inc	dptr
      001610 F0               [24] 6086 	movx	@dptr,a
                           000AAE  6087 	C$easyax5043.c$767$4$286 ==.
                                   6088 ;	..\COMMON\easyax5043.c:767: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001611 90 02 6C         [24] 6089 	mov	dptr,#_axradio_cb_transmitstart
      001614 12 46 A2         [24] 6090 	lcall	_wtimer_add_callback
                           000AB4  6091 	C$easyax5043.c$770$2$276 ==.
                                   6092 ;	..\COMMON\easyax5043.c:770: txstreamdatacb:
      001617                       6093 00155$:
                           000AB4  6094 	C$easyax5043.c$771$2$276 ==.
                                   6095 ;	..\COMMON\easyax5043.c:771: if (AX5043_IRQREQUEST0 & AX5043_IRQMASK0 & 0x08) {
      001617 90 40 0D         [24] 6096 	mov	dptr,#_AX5043_IRQREQUEST0
      00161A E0               [24] 6097 	movx	a,@dptr
      00161B FF               [12] 6098 	mov	r7,a
      00161C 90 40 07         [24] 6099 	mov	dptr,#_AX5043_IRQMASK0
      00161F E0               [24] 6100 	movx	a,@dptr
      001620 FE               [12] 6101 	mov	r6,a
      001621 5F               [12] 6102 	anl	a,r7
      001622 20 E3 03         [24] 6103 	jb	acc.3,00290$
      001625 02 16 BF         [24] 6104 	ljmp	00167$
      001628                       6105 00290$:
                           000AC5  6106 	C$easyax5043.c$772$3$287 ==.
                                   6107 ;	..\COMMON\easyax5043.c:772: AX5043_IRQMASK0 &= (uint8_t)~0x08;
      001628 90 40 07         [24] 6108 	mov	dptr,#_AX5043_IRQMASK0
      00162B E0               [24] 6109 	movx	a,@dptr
      00162C FF               [12] 6110 	mov	r7,a
      00162D 74 F7            [12] 6111 	mov	a,#0xf7
      00162F 5F               [12] 6112 	anl	a,r7
      001630 F0               [24] 6113 	movx	@dptr,a
                           000ACE  6114 	C$easyax5043.c$773$3$287 ==.
                                   6115 ;	..\COMMON\easyax5043.c:773: update_timeanchor();
      001631 12 0B 63         [24] 6116 	lcall	_update_timeanchor
                           000AD1  6117 	C$easyax5043.c$774$3$287 ==.
                                   6118 ;	..\COMMON\easyax5043.c:774: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      001634 90 02 80         [24] 6119 	mov	dptr,#_axradio_cb_transmitdata
      001637 12 51 BE         [24] 6120 	lcall	_wtimer_remove_callback
                           000AD7  6121 	C$easyax5043.c$775$3$287 ==.
                                   6122 ;	..\COMMON\easyax5043.c:775: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
      00163A 90 02 85         [24] 6123 	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
      00163D E4               [12] 6124 	clr	a
      00163E F0               [24] 6125 	movx	@dptr,a
                           000ADC  6126 	C$easyax5043.c$776$3$287 ==.
                                   6127 ;	..\COMMON\easyax5043.c:776: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
      00163F 90 00 1B         [24] 6128 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001642 E0               [24] 6129 	movx	a,@dptr
      001643 FC               [12] 6130 	mov	r4,a
      001644 A3               [24] 6131 	inc	dptr
      001645 E0               [24] 6132 	movx	a,@dptr
      001646 FD               [12] 6133 	mov	r5,a
      001647 A3               [24] 6134 	inc	dptr
      001648 E0               [24] 6135 	movx	a,@dptr
      001649 FE               [12] 6136 	mov	r6,a
      00164A A3               [24] 6137 	inc	dptr
      00164B E0               [24] 6138 	movx	a,@dptr
      00164C FF               [12] 6139 	mov	r7,a
      00164D 90 02 86         [24] 6140 	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
      001650 EC               [12] 6141 	mov	a,r4
      001651 F0               [24] 6142 	movx	@dptr,a
      001652 ED               [12] 6143 	mov	a,r5
      001653 A3               [24] 6144 	inc	dptr
      001654 F0               [24] 6145 	movx	@dptr,a
      001655 EE               [12] 6146 	mov	a,r6
      001656 A3               [24] 6147 	inc	dptr
      001657 F0               [24] 6148 	movx	@dptr,a
      001658 EF               [12] 6149 	mov	a,r7
      001659 A3               [24] 6150 	inc	dptr
      00165A F0               [24] 6151 	movx	@dptr,a
                           000AF8  6152 	C$easyax5043.c$777$3$287 ==.
                                   6153 ;	..\COMMON\easyax5043.c:777: wtimer_add_callback(&axradio_cb_transmitdata.cb);
      00165B 90 02 80         [24] 6154 	mov	dptr,#_axradio_cb_transmitdata
      00165E 12 46 A2         [24] 6155 	lcall	_wtimer_add_callback
                           000AFE  6156 	C$easyax5043.c$779$2$276 ==.
                                   6157 ;	..\COMMON\easyax5043.c:779: break;
                           000AFE  6158 	C$easyax5043.c$781$2$276 ==.
                                   6159 ;	..\COMMON\easyax5043.c:781: case trxstate_rxwor:
      001661 80 5C            [24] 6160 	sjmp	00167$
      001663                       6161 00158$:
                           000B00  6162 	C$easyax5043.c$784$2$276 ==.
                                   6163 ;	..\COMMON\easyax5043.c:784: if( AX5043_IRQREQUEST0 & 0x80 ) // vdda ready (note irqinversion does not act upon AX5043_IRQREQUEST0)
      001663 90 40 0D         [24] 6164 	mov	dptr,#_AX5043_IRQREQUEST0
      001666 E0               [24] 6165 	movx	a,@dptr
      001667 FF               [12] 6166 	mov	r7,a
      001668 30 E7 0B         [24] 6167 	jnb	acc.7,00160$
                           000B08  6168 	C$easyax5043.c$786$3$288 ==.
                                   6169 ;	..\COMMON\easyax5043.c:786: AX5043_IRQINVERSION0 |= 0x80; // invert pwr irq, so it does not fire continuously
      00166B 90 40 0B         [24] 6170 	mov	dptr,#_AX5043_IRQINVERSION0
      00166E E0               [24] 6171 	movx	a,@dptr
      00166F FF               [12] 6172 	mov	r7,a
      001670 74 80            [12] 6173 	mov	a,#0x80
      001672 4F               [12] 6174 	orl	a,r7
      001673 F0               [24] 6175 	movx	@dptr,a
      001674 80 09            [24] 6176 	sjmp	00161$
      001676                       6177 00160$:
                           000B13  6178 	C$easyax5043.c$790$3$289 ==.
                                   6179 ;	..\COMMON\easyax5043.c:790: AX5043_IRQINVERSION0 &= (uint8_t)~0x80; // drop pwr irq inversion --> armed again
      001676 90 40 0B         [24] 6180 	mov	dptr,#_AX5043_IRQINVERSION0
      001679 E0               [24] 6181 	movx	a,@dptr
      00167A FF               [12] 6182 	mov	r7,a
      00167B 74 7F            [12] 6183 	mov	a,#0x7f
      00167D 5F               [12] 6184 	anl	a,r7
      00167E F0               [24] 6185 	movx	@dptr,a
      00167F                       6186 00161$:
                           000B1C  6187 	C$easyax5043.c$794$2$276 ==.
                                   6188 ;	..\COMMON\easyax5043.c:794: if( AX5043_IRQREQUEST1 & 0x01 ) // XTAL ready
      00167F 90 40 0C         [24] 6189 	mov	dptr,#_AX5043_IRQREQUEST1
      001682 E0               [24] 6190 	movx	a,@dptr
      001683 FF               [12] 6191 	mov	r7,a
      001684 30 E0 0B         [24] 6192 	jnb	acc.0,00163$
                           000B24  6193 	C$easyax5043.c$796$3$290 ==.
                                   6194 ;	..\COMMON\easyax5043.c:796: AX5043_IRQINVERSION1 |= 0x01; // invert the xtal ready irq so it does not fire continuously
      001687 90 40 0A         [24] 6195 	mov	dptr,#_AX5043_IRQINVERSION1
      00168A E0               [24] 6196 	movx	a,@dptr
      00168B FF               [12] 6197 	mov	r7,a
      00168C 74 01            [12] 6198 	mov	a,#0x01
      00168E 4F               [12] 6199 	orl	a,r7
      00168F F0               [24] 6200 	movx	@dptr,a
      001690 80 2A            [24] 6201 	sjmp	00165$
      001692                       6202 00163$:
                           000B2F  6203 	C$easyax5043.c$800$3$291 ==.
                                   6204 ;	..\COMMON\easyax5043.c:800: AX5043_IRQINVERSION1 &= (uint8_t)~0x01; // drop xtal ready irq inversion --> armed again for next wake-up
      001692 90 40 0A         [24] 6205 	mov	dptr,#_AX5043_IRQINVERSION1
      001695 E0               [24] 6206 	movx	a,@dptr
      001696 FF               [12] 6207 	mov	r7,a
      001697 74 FE            [12] 6208 	mov	a,#0xfe
      001699 5F               [12] 6209 	anl	a,r7
      00169A F0               [24] 6210 	movx	@dptr,a
                           000B38  6211 	C$easyax5043.c$801$3$291 ==.
                                   6212 ;	..\COMMON\easyax5043.c:801: AX5043_0xF30 = f30_saved;
      00169B 90 04 3A         [24] 6213 	mov	dptr,#_f30_saved
      00169E E0               [24] 6214 	movx	a,@dptr
      00169F 90 4F 30         [24] 6215 	mov	dptr,#_AX5043_0xF30
      0016A2 F0               [24] 6216 	movx	@dptr,a
                           000B40  6217 	C$easyax5043.c$802$3$291 ==.
                                   6218 ;	..\COMMON\easyax5043.c:802: AX5043_0xF31 = f31_saved;
      0016A3 90 04 3B         [24] 6219 	mov	dptr,#_f31_saved
      0016A6 E0               [24] 6220 	movx	a,@dptr
      0016A7 90 4F 31         [24] 6221 	mov	dptr,#_AX5043_0xF31
      0016AA F0               [24] 6222 	movx	@dptr,a
                           000B48  6223 	C$easyax5043.c$803$3$291 ==.
                                   6224 ;	..\COMMON\easyax5043.c:803: AX5043_0xF32 = f32_saved;
      0016AB 90 04 3C         [24] 6225 	mov	dptr,#_f32_saved
      0016AE E0               [24] 6226 	movx	a,@dptr
      0016AF 90 4F 32         [24] 6227 	mov	dptr,#_AX5043_0xF32
      0016B2 F0               [24] 6228 	movx	@dptr,a
                           000B50  6229 	C$easyax5043.c$804$3$291 ==.
                                   6230 ;	..\COMMON\easyax5043.c:804: AX5043_0xF33 = f33_saved;
      0016B3 90 04 3D         [24] 6231 	mov	dptr,#_f33_saved
      0016B6 E0               [24] 6232 	movx	a,@dptr
      0016B7 FF               [12] 6233 	mov	r7,a
      0016B8 90 4F 33         [24] 6234 	mov	dptr,#_AX5043_0xF33
      0016BB F0               [24] 6235 	movx	@dptr,a
                           000B59  6236 	C$easyax5043.c$808$2$276 ==.
                                   6237 ;	..\COMMON\easyax5043.c:808: case trxstate_rx:
      0016BC                       6238 00165$:
                           000B59  6239 	C$easyax5043.c$809$2$276 ==.
                                   6240 ;	..\COMMON\easyax5043.c:809: receive_isr();
      0016BC 12 0C 4A         [24] 6241 	lcall	_receive_isr
                           000B5C  6242 	C$easyax5043.c$812$1$275 ==.
                                   6243 ;	..\COMMON\easyax5043.c:812: } // end switch(axradio_trxstate)
      0016BF                       6244 00167$:
      0016BF D0 D0            [24] 6245 	pop	psw
      0016C1 D0 00            [24] 6246 	pop	(0+0)
      0016C3 D0 01            [24] 6247 	pop	(0+1)
      0016C5 D0 02            [24] 6248 	pop	(0+2)
      0016C7 D0 03            [24] 6249 	pop	(0+3)
      0016C9 D0 04            [24] 6250 	pop	(0+4)
      0016CB D0 05            [24] 6251 	pop	(0+5)
      0016CD D0 06            [24] 6252 	pop	(0+6)
      0016CF D0 07            [24] 6253 	pop	(0+7)
      0016D1 D0 83            [24] 6254 	pop	dph
      0016D3 D0 82            [24] 6255 	pop	dpl
      0016D5 D0 F0            [24] 6256 	pop	b
      0016D7 D0 E0            [24] 6257 	pop	acc
      0016D9 D0 21            [24] 6258 	pop	bits
                           000B78  6259 	C$easyax5043.c$813$1$275 ==.
                           000B78  6260 	XG$axradio_isr$0$0 ==.
      0016DB 32               [24] 6261 	reti
                                   6262 ;------------------------------------------------------------
                                   6263 ;Allocation info for local variables in function 'ax5043_receiver_on_continuous'
                                   6264 ;------------------------------------------------------------
                                   6265 ;rschanged_int             Allocated to registers r6 
                                   6266 ;------------------------------------------------------------
                           000B79  6267 	G$ax5043_receiver_on_continuous$0$0 ==.
                           000B79  6268 	C$easyax5043.c$816$1$275 ==.
                                   6269 ;	..\COMMON\easyax5043.c:816: __reentrantb void ax5043_receiver_on_continuous(void) __reentrant
                                   6270 ;	-----------------------------------------
                                   6271 ;	 function ax5043_receiver_on_continuous
                                   6272 ;	-----------------------------------------
      0016DC                       6273 _ax5043_receiver_on_continuous:
                           000B79  6274 	C$easyax5043.c$818$1$293 ==.
                                   6275 ;	..\COMMON\easyax5043.c:818: uint8_t rschanged_int = (axradio_framing_enable_sfdcallback | (axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) | (axradio_mode == AXRADIO_MODE_SYNC_SLAVE) );
      0016DC 74 33            [12] 6276 	mov	a,#0x33
      0016DE B5 08 04         [24] 6277 	cjne	a,_axradio_mode,00114$
      0016E1 74 01            [12] 6278 	mov	a,#0x01
      0016E3 80 01            [24] 6279 	sjmp	00115$
      0016E5                       6280 00114$:
      0016E5 E4               [12] 6281 	clr	a
      0016E6                       6282 00115$:
      0016E6 FF               [12] 6283 	mov	r7,a
      0016E7 90 55 E3         [24] 6284 	mov	dptr,#_axradio_framing_enable_sfdcallback
      0016EA E4               [12] 6285 	clr	a
      0016EB 93               [24] 6286 	movc	a,@a+dptr
      0016EC FE               [12] 6287 	mov	r6,a
      0016ED 42 07            [12] 6288 	orl	ar7,a
      0016EF 74 32            [12] 6289 	mov	a,#0x32
      0016F1 B5 08 04         [24] 6290 	cjne	a,_axradio_mode,00116$
      0016F4 74 01            [12] 6291 	mov	a,#0x01
      0016F6 80 01            [24] 6292 	sjmp	00117$
      0016F8                       6293 00116$:
      0016F8 E4               [12] 6294 	clr	a
      0016F9                       6295 00117$:
      0016F9 42 07            [12] 6296 	orl	ar7,a
                           000B98  6297 	C$easyax5043.c$819$1$293 ==.
                                   6298 ;	..\COMMON\easyax5043.c:819: if(rschanged_int)
      0016FB EF               [12] 6299 	mov	a,r7
      0016FC FE               [12] 6300 	mov	r6,a
      0016FD 60 06            [24] 6301 	jz	00102$
                           000B9C  6302 	C$easyax5043.c$820$1$293 ==.
                                   6303 ;	..\COMMON\easyax5043.c:820: AX5043_RADIOEVENTMASK0 = 0x04;
      0016FF 90 40 09         [24] 6304 	mov	dptr,#_AX5043_RADIOEVENTMASK0
      001702 74 04            [12] 6305 	mov	a,#0x04
      001704 F0               [24] 6306 	movx	@dptr,a
      001705                       6307 00102$:
                           000BA2  6308 	C$easyax5043.c$821$1$293 ==.
                                   6309 ;	..\COMMON\easyax5043.c:821: AX5043_RSSIREFERENCE = axradio_phy_rssireference;
      001705 90 55 C2         [24] 6310 	mov	dptr,#_axradio_phy_rssireference
      001708 E4               [12] 6311 	clr	a
      001709 93               [24] 6312 	movc	a,@a+dptr
      00170A 90 42 2C         [24] 6313 	mov	dptr,#_AX5043_RSSIREFERENCE
      00170D F0               [24] 6314 	movx	@dptr,a
                           000BAB  6315 	C$easyax5043.c$822$1$293 ==.
                                   6316 ;	..\COMMON\easyax5043.c:822: ax5043_set_registers_rxcont();
      00170E C0 06            [24] 6317 	push	ar6
      001710 12 06 69         [24] 6318 	lcall	_ax5043_set_registers_rxcont
      001713 D0 06            [24] 6319 	pop	ar6
                           000BB2  6320 	C$easyax5043.c$835$1$293 ==.
                                   6321 ;	..\COMMON\easyax5043.c:835: AX5043_PKTSTOREFLAGS &= (uint8_t)~0x40;
      001715 90 42 32         [24] 6322 	mov	dptr,#_AX5043_PKTSTOREFLAGS
      001718 E0               [24] 6323 	movx	a,@dptr
      001719 FF               [12] 6324 	mov	r7,a
      00171A 74 BF            [12] 6325 	mov	a,#0xbf
      00171C 5F               [12] 6326 	anl	a,r7
      00171D F0               [24] 6327 	movx	@dptr,a
                           000BBB  6328 	C$easyax5043.c$838$1$293 ==.
                                   6329 ;	..\COMMON\easyax5043.c:838: AX5043_FIFOSTAT = 3; // clear FIFO data & flags
      00171E 90 40 28         [24] 6330 	mov	dptr,#_AX5043_FIFOSTAT
      001721 74 03            [12] 6331 	mov	a,#0x03
      001723 F0               [24] 6332 	movx	@dptr,a
                           000BC1  6333 	C$easyax5043.c$839$1$293 ==.
                                   6334 ;	..\COMMON\easyax5043.c:839: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_RX;
      001724 90 40 02         [24] 6335 	mov	dptr,#_AX5043_PWRMODE
      001727 74 09            [12] 6336 	mov	a,#0x09
      001729 F0               [24] 6337 	movx	@dptr,a
                           000BC7  6338 	C$easyax5043.c$840$1$293 ==.
                                   6339 ;	..\COMMON\easyax5043.c:840: axradio_trxstate = trxstate_rx;
      00172A 75 09 01         [24] 6340 	mov	_axradio_trxstate,#0x01
                           000BCA  6341 	C$easyax5043.c$841$1$293 ==.
                                   6342 ;	..\COMMON\easyax5043.c:841: if(rschanged_int)
      00172D EE               [12] 6343 	mov	a,r6
      00172E 60 08            [24] 6344 	jz	00104$
                           000BCD  6345 	C$easyax5043.c$842$1$293 ==.
                                   6346 ;	..\COMMON\easyax5043.c:842: AX5043_IRQMASK0 = 0x41; //  enable FIFO not empty / radio controller irq
      001730 90 40 07         [24] 6347 	mov	dptr,#_AX5043_IRQMASK0
      001733 74 41            [12] 6348 	mov	a,#0x41
      001735 F0               [24] 6349 	movx	@dptr,a
      001736 80 06            [24] 6350 	sjmp	00105$
      001738                       6351 00104$:
                           000BD5  6352 	C$easyax5043.c$844$1$293 ==.
                                   6353 ;	..\COMMON\easyax5043.c:844: AX5043_IRQMASK0 = 0x01; //  enable FIFO not empty
      001738 90 40 07         [24] 6354 	mov	dptr,#_AX5043_IRQMASK0
      00173B 74 01            [12] 6355 	mov	a,#0x01
      00173D F0               [24] 6356 	movx	@dptr,a
      00173E                       6357 00105$:
                           000BDB  6358 	C$easyax5043.c$845$1$293 ==.
                                   6359 ;	..\COMMON\easyax5043.c:845: AX5043_IRQMASK1 = 0x00;
      00173E 90 40 06         [24] 6360 	mov	dptr,#_AX5043_IRQMASK1
      001741 E4               [12] 6361 	clr	a
      001742 F0               [24] 6362 	movx	@dptr,a
                           000BE0  6363 	C$easyax5043.c$846$1$293 ==.
                           000BE0  6364 	XG$ax5043_receiver_on_continuous$0$0 ==.
      001743 22               [24] 6365 	ret
                                   6366 ;------------------------------------------------------------
                                   6367 ;Allocation info for local variables in function 'ax5043_receiver_on_wor'
                                   6368 ;------------------------------------------------------------
                                   6369 ;wp                        Allocated to registers r6 r7 
                                   6370 ;------------------------------------------------------------
                           000BE1  6371 	G$ax5043_receiver_on_wor$0$0 ==.
                           000BE1  6372 	C$easyax5043.c$848$1$293 ==.
                                   6373 ;	..\COMMON\easyax5043.c:848: __reentrantb void ax5043_receiver_on_wor(void) __reentrant
                                   6374 ;	-----------------------------------------
                                   6375 ;	 function ax5043_receiver_on_wor
                                   6376 ;	-----------------------------------------
      001744                       6377 _ax5043_receiver_on_wor:
                           000BE1  6378 	C$easyax5043.c$850$1$295 ==.
                                   6379 ;	..\COMMON\easyax5043.c:850: AX5043_BGNDRSSIGAIN = 0x02;
      001744 90 42 2E         [24] 6380 	mov	dptr,#_AX5043_BGNDRSSIGAIN
      001747 74 02            [12] 6381 	mov	a,#0x02
      001749 F0               [24] 6382 	movx	@dptr,a
                           000BE7  6383 	C$easyax5043.c$851$1$295 ==.
                                   6384 ;	..\COMMON\easyax5043.c:851: if(axradio_framing_enable_sfdcallback)
      00174A 90 55 E3         [24] 6385 	mov	dptr,#_axradio_framing_enable_sfdcallback
      00174D E4               [12] 6386 	clr	a
      00174E 93               [24] 6387 	movc	a,@a+dptr
      00174F 60 06            [24] 6388 	jz	00102$
                           000BEE  6389 	C$easyax5043.c$852$1$295 ==.
                                   6390 ;	..\COMMON\easyax5043.c:852: AX5043_RADIOEVENTMASK0 = 0x04;
      001751 90 40 09         [24] 6391 	mov	dptr,#_AX5043_RADIOEVENTMASK0
      001754 74 04            [12] 6392 	mov	a,#0x04
      001756 F0               [24] 6393 	movx	@dptr,a
      001757                       6394 00102$:
                           000BF4  6395 	C$easyax5043.c$853$1$295 ==.
                                   6396 ;	..\COMMON\easyax5043.c:853: AX5043_FIFOSTAT = 3; // clear FIFO data & flags
      001757 90 40 28         [24] 6397 	mov	dptr,#_AX5043_FIFOSTAT
      00175A 74 03            [12] 6398 	mov	a,#0x03
      00175C F0               [24] 6399 	movx	@dptr,a
                           000BFA  6400 	C$easyax5043.c$854$1$295 ==.
                                   6401 ;	..\COMMON\easyax5043.c:854: AX5043_LPOSCCONFIG = 0x01; // start LPOSC, slow mode
      00175D 90 43 10         [24] 6402 	mov	dptr,#_AX5043_LPOSCCONFIG
      001760 74 01            [12] 6403 	mov	a,#0x01
      001762 F0               [24] 6404 	movx	@dptr,a
                           000C00  6405 	C$easyax5043.c$855$1$295 ==.
                                   6406 ;	..\COMMON\easyax5043.c:855: AX5043_RSSIREFERENCE = axradio_phy_rssireference;
      001763 90 55 C2         [24] 6407 	mov	dptr,#_axradio_phy_rssireference
      001766 E4               [12] 6408 	clr	a
      001767 93               [24] 6409 	movc	a,@a+dptr
      001768 90 42 2C         [24] 6410 	mov	dptr,#_AX5043_RSSIREFERENCE
      00176B F0               [24] 6411 	movx	@dptr,a
                           000C09  6412 	C$easyax5043.c$856$1$295 ==.
                                   6413 ;	..\COMMON\easyax5043.c:856: ax5043_set_registers_rxwor();
      00176C 12 06 57         [24] 6414 	lcall	_ax5043_set_registers_rxwor
                           000C0C  6415 	C$easyax5043.c$857$1$295 ==.
                                   6416 ;	..\COMMON\easyax5043.c:857: AX5043_PKTSTOREFLAGS &= (uint8_t)~0x40;
      00176F 90 42 32         [24] 6417 	mov	dptr,#_AX5043_PKTSTOREFLAGS
      001772 E0               [24] 6418 	movx	a,@dptr
      001773 FF               [12] 6419 	mov	r7,a
      001774 74 BF            [12] 6420 	mov	a,#0xbf
      001776 5F               [12] 6421 	anl	a,r7
      001777 F0               [24] 6422 	movx	@dptr,a
                           000C15  6423 	C$easyax5043.c$859$1$295 ==.
                                   6424 ;	..\COMMON\easyax5043.c:859: AX5043_PWRMODE = AX5043_PWRSTATE_WOR_RX;
      001778 90 40 02         [24] 6425 	mov	dptr,#_AX5043_PWRMODE
      00177B 74 0B            [12] 6426 	mov	a,#0x0b
      00177D F0               [24] 6427 	movx	@dptr,a
                           000C1B  6428 	C$easyax5043.c$860$1$295 ==.
                                   6429 ;	..\COMMON\easyax5043.c:860: axradio_trxstate = trxstate_rxwor;
      00177E 75 09 02         [24] 6430 	mov	_axradio_trxstate,#0x02
                           000C1E  6431 	C$easyax5043.c$861$1$295 ==.
                                   6432 ;	..\COMMON\easyax5043.c:861: if(axradio_framing_enable_sfdcallback)
      001781 90 55 E3         [24] 6433 	mov	dptr,#_axradio_framing_enable_sfdcallback
      001784 E4               [12] 6434 	clr	a
      001785 93               [24] 6435 	movc	a,@a+dptr
      001786 60 08            [24] 6436 	jz	00104$
                           000C25  6437 	C$easyax5043.c$862$1$295 ==.
                                   6438 ;	..\COMMON\easyax5043.c:862: AX5043_IRQMASK0 = 0x41; //  enable FIFO not empty / radio controller irq
      001788 90 40 07         [24] 6439 	mov	dptr,#_AX5043_IRQMASK0
      00178B 74 41            [12] 6440 	mov	a,#0x41
      00178D F0               [24] 6441 	movx	@dptr,a
      00178E 80 06            [24] 6442 	sjmp	00105$
      001790                       6443 00104$:
                           000C2D  6444 	C$easyax5043.c$864$1$295 ==.
                                   6445 ;	..\COMMON\easyax5043.c:864: AX5043_IRQMASK0 = 0x01; //  enable FIFO not empty
      001790 90 40 07         [24] 6446 	mov	dptr,#_AX5043_IRQMASK0
      001793 74 01            [12] 6447 	mov	a,#0x01
      001795 F0               [24] 6448 	movx	@dptr,a
      001796                       6449 00105$:
                           000C33  6450 	C$easyax5043.c$866$1$295 ==.
                                   6451 ;	..\COMMON\easyax5043.c:866: if( ( (PALTRADIO & 0x40) && ((AX5043_PINFUNCPWRAMP & 0x0F) == 0x07) ) || ( (PALTRADIO & 0x80) && ( (AX5043_PINFUNCANTSEL & 0x07 ) == 0x04 ) ) ) // pass through of TCXO_EN
      001796 90 70 46         [24] 6452 	mov	dptr,#_PALTRADIO
      001799 E0               [24] 6453 	movx	a,@dptr
      00179A FF               [12] 6454 	mov	r7,a
      00179B 30 E6 0D         [24] 6455 	jnb	acc.6,00110$
      00179E 90 40 26         [24] 6456 	mov	dptr,#_AX5043_PINFUNCPWRAMP
      0017A1 E0               [24] 6457 	movx	a,@dptr
      0017A2 FF               [12] 6458 	mov	r7,a
      0017A3 53 07 0F         [24] 6459 	anl	ar7,#0x0f
      0017A6 BF 07 02         [24] 6460 	cjne	r7,#0x07,00128$
      0017A9 80 13            [24] 6461 	sjmp	00106$
      0017AB                       6462 00128$:
      0017AB                       6463 00110$:
      0017AB 90 70 46         [24] 6464 	mov	dptr,#_PALTRADIO
      0017AE E0               [24] 6465 	movx	a,@dptr
      0017AF FF               [12] 6466 	mov	r7,a
      0017B0 30 E7 1A         [24] 6467 	jnb	acc.7,00107$
      0017B3 90 40 25         [24] 6468 	mov	dptr,#_AX5043_PINFUNCANTSEL
      0017B6 E0               [24] 6469 	movx	a,@dptr
      0017B7 FF               [12] 6470 	mov	r7,a
      0017B8 53 07 07         [24] 6471 	anl	ar7,#0x07
      0017BB BF 04 0F         [24] 6472 	cjne	r7,#0x04,00107$
      0017BE                       6473 00106$:
                           000C5B  6474 	C$easyax5043.c$869$2$296 ==.
                                   6475 ;	..\COMMON\easyax5043.c:869: AX5043_IRQMASK0 |= 0x80; // power irq (AX8052F143 WOR with TCXO)
      0017BE 90 40 07         [24] 6476 	mov	dptr,#_AX5043_IRQMASK0
      0017C1 E0               [24] 6477 	movx	a,@dptr
      0017C2 FF               [12] 6478 	mov	r7,a
      0017C3 74 80            [12] 6479 	mov	a,#0x80
      0017C5 4F               [12] 6480 	orl	a,r7
      0017C6 F0               [24] 6481 	movx	@dptr,a
                           000C64  6482 	C$easyax5043.c$870$2$296 ==.
                                   6483 ;	..\COMMON\easyax5043.c:870: AX5043_POWIRQMASK = 0x90; // interrupt when vddana ready (AX8052F143 WOR with TCXO)
      0017C7 90 40 05         [24] 6484 	mov	dptr,#_AX5043_POWIRQMASK
      0017CA 74 90            [12] 6485 	mov	a,#0x90
      0017CC F0               [24] 6486 	movx	@dptr,a
      0017CD                       6487 00107$:
                           000C6A  6488 	C$easyax5043.c$873$1$295 ==.
                                   6489 ;	..\COMMON\easyax5043.c:873: AX5043_IRQMASK1 = 0x01; // xtal ready
      0017CD 90 40 06         [24] 6490 	mov	dptr,#_AX5043_IRQMASK1
      0017D0 74 01            [12] 6491 	mov	a,#0x01
      0017D2 F0               [24] 6492 	movx	@dptr,a
                           000C70  6493 	C$easyax5043.c$875$2$295 ==.
                                   6494 ;	..\COMMON\easyax5043.c:875: uint16_t wp = axradio_wor_period;
      0017D3 90 55 EF         [24] 6495 	mov	dptr,#_axradio_wor_period
      0017D6 E4               [12] 6496 	clr	a
      0017D7 93               [24] 6497 	movc	a,@a+dptr
      0017D8 FE               [12] 6498 	mov	r6,a
      0017D9 74 01            [12] 6499 	mov	a,#0x01
      0017DB 93               [24] 6500 	movc	a,@a+dptr
                           000C79  6501 	C$easyax5043.c$876$2$297 ==.
                                   6502 ;	..\COMMON\easyax5043.c:876: AX5043_WAKEUPFREQ1 = (wp >> 8) & 0xFF;
      0017DC FF               [12] 6503 	mov	r7,a
      0017DD FD               [12] 6504 	mov	r5,a
      0017DE 90 40 6C         [24] 6505 	mov	dptr,#_AX5043_WAKEUPFREQ1
      0017E1 ED               [12] 6506 	mov	a,r5
      0017E2 F0               [24] 6507 	movx	@dptr,a
                           000C80  6508 	C$easyax5043.c$877$2$297 ==.
                                   6509 ;	..\COMMON\easyax5043.c:877: AX5043_WAKEUPFREQ0 = (wp >> 0) & 0xFF;  // actually wakeup period measured in LP OSC cycles
      0017E3 8E 05            [24] 6510 	mov	ar5,r6
      0017E5 90 40 6D         [24] 6511 	mov	dptr,#_AX5043_WAKEUPFREQ0
      0017E8 ED               [12] 6512 	mov	a,r5
      0017E9 F0               [24] 6513 	movx	@dptr,a
                           000C87  6514 	C$easyax5043.c$878$2$297 ==.
                                   6515 ;	..\COMMON\easyax5043.c:878: wp += radio_read16((uint16_t)&AX5043_WAKEUPTIMER1);
      0017EA 90 40 68         [24] 6516 	mov	dptr,#_AX5043_WAKEUPTIMER1
      0017ED 12 48 FD         [24] 6517 	lcall	_radio_read16
      0017F0 AC 82            [24] 6518 	mov	r4,dpl
      0017F2 AD 83            [24] 6519 	mov	r5,dph
      0017F4 EC               [12] 6520 	mov	a,r4
      0017F5 2E               [12] 6521 	add	a,r6
      0017F6 FE               [12] 6522 	mov	r6,a
      0017F7 ED               [12] 6523 	mov	a,r5
      0017F8 3F               [12] 6524 	addc	a,r7
                           000C96  6525 	C$easyax5043.c$879$2$297 ==.
                                   6526 ;	..\COMMON\easyax5043.c:879: AX5043_WAKEUP1 = (wp >> 8) & 0xFF;
      0017F9 FD               [12] 6527 	mov	r5,a
      0017FA 90 40 6A         [24] 6528 	mov	dptr,#_AX5043_WAKEUP1
      0017FD ED               [12] 6529 	mov	a,r5
      0017FE F0               [24] 6530 	movx	@dptr,a
                           000C9C  6531 	C$easyax5043.c$880$2$297 ==.
                                   6532 ;	..\COMMON\easyax5043.c:880: AX5043_WAKEUP0 = (wp >> 0) & 0xFF;
      0017FF 90 40 6B         [24] 6533 	mov	dptr,#_AX5043_WAKEUP0
      001802 EE               [12] 6534 	mov	a,r6
      001803 F0               [24] 6535 	movx	@dptr,a
                           000CA1  6536 	C$easyax5043.c$882$2$297 ==.
                           000CA1  6537 	XG$ax5043_receiver_on_wor$0$0 ==.
      001804 22               [24] 6538 	ret
                                   6539 ;------------------------------------------------------------
                                   6540 ;Allocation info for local variables in function 'ax5043_prepare_tx'
                                   6541 ;------------------------------------------------------------
                           000CA2  6542 	G$ax5043_prepare_tx$0$0 ==.
                           000CA2  6543 	C$easyax5043.c$883$2$297 ==.
                                   6544 ;	..\COMMON\easyax5043.c:883: __reentrantb void ax5043_prepare_tx(void) __reentrant
                                   6545 ;	-----------------------------------------
                                   6546 ;	 function ax5043_prepare_tx
                                   6547 ;	-----------------------------------------
      001805                       6548 _ax5043_prepare_tx:
                           000CA2  6549 	C$easyax5043.c$885$1$299 ==.
                                   6550 ;	..\COMMON\easyax5043.c:885: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
      001805 90 40 02         [24] 6551 	mov	dptr,#_AX5043_PWRMODE
      001808 74 05            [12] 6552 	mov	a,#0x05
      00180A F0               [24] 6553 	movx	@dptr,a
                           000CA8  6554 	C$easyax5043.c$886$1$299 ==.
                                   6555 ;	..\COMMON\easyax5043.c:886: AX5043_PWRMODE = AX5043_PWRSTATE_FIFO_ON;
      00180B 74 07            [12] 6556 	mov	a,#0x07
      00180D F0               [24] 6557 	movx	@dptr,a
                           000CAB  6558 	C$easyax5043.c$887$1$299 ==.
                                   6559 ;	..\COMMON\easyax5043.c:887: ax5043_init_registers_tx();
      00180E 12 0C 3C         [24] 6560 	lcall	_ax5043_init_registers_tx
                           000CAE  6561 	C$easyax5043.c$888$1$299 ==.
                                   6562 ;	..\COMMON\easyax5043.c:888: AX5043_FIFOTHRESH1 = 0;
      001811 90 40 2E         [24] 6563 	mov	dptr,#_AX5043_FIFOTHRESH1
      001814 E4               [12] 6564 	clr	a
      001815 F0               [24] 6565 	movx	@dptr,a
                           000CB3  6566 	C$easyax5043.c$889$1$299 ==.
                                   6567 ;	..\COMMON\easyax5043.c:889: AX5043_FIFOTHRESH0 = 0x80;
      001816 90 40 2F         [24] 6568 	mov	dptr,#_AX5043_FIFOTHRESH0
      001819 74 80            [12] 6569 	mov	a,#0x80
      00181B F0               [24] 6570 	movx	@dptr,a
                           000CB9  6571 	C$easyax5043.c$890$1$299 ==.
                                   6572 ;	..\COMMON\easyax5043.c:890: axradio_trxstate = trxstate_tx_xtalwait;
      00181C 75 09 09         [24] 6573 	mov	_axradio_trxstate,#0x09
                           000CBC  6574 	C$easyax5043.c$891$1$299 ==.
                                   6575 ;	..\COMMON\easyax5043.c:891: AX5043_IRQMASK0 = 0x00;
      00181F 90 40 07         [24] 6576 	mov	dptr,#_AX5043_IRQMASK0
      001822 E4               [12] 6577 	clr	a
      001823 F0               [24] 6578 	movx	@dptr,a
                           000CC1  6579 	C$easyax5043.c$892$1$299 ==.
                                   6580 ;	..\COMMON\easyax5043.c:892: AX5043_IRQMASK1 = 0x01; // enable xtal ready interrupt
      001824 90 40 06         [24] 6581 	mov	dptr,#_AX5043_IRQMASK1
      001827 04               [12] 6582 	inc	a
      001828 F0               [24] 6583 	movx	@dptr,a
                           000CC6  6584 	C$easyax5043.c$893$1$299 ==.
                                   6585 ;	..\COMMON\easyax5043.c:893: AX5043_POWSTICKYSTAT; // clear pwr management sticky status --> brownout gate works
      001829 90 40 04         [24] 6586 	mov	dptr,#_AX5043_POWSTICKYSTAT
      00182C E0               [24] 6587 	movx	a,@dptr
                           000CCA  6588 	C$easyax5043.c$894$1$299 ==.
                           000CCA  6589 	XG$ax5043_prepare_tx$0$0 ==.
      00182D 22               [24] 6590 	ret
                                   6591 ;------------------------------------------------------------
                                   6592 ;Allocation info for local variables in function 'ax5043_off'
                                   6593 ;------------------------------------------------------------
                           000CCB  6594 	G$ax5043_off$0$0 ==.
                           000CCB  6595 	C$easyax5043.c$896$1$299 ==.
                                   6596 ;	..\COMMON\easyax5043.c:896: __reentrantb void ax5043_off(void) __reentrant
                                   6597 ;	-----------------------------------------
                                   6598 ;	 function ax5043_off
                                   6599 ;	-----------------------------------------
      00182E                       6600 _ax5043_off:
                           000CCB  6601 	C$easyax5043.c$898$1$301 ==.
                                   6602 ;	..\COMMON\easyax5043.c:898: ax5043_off_xtal();
      00182E 12 18 37         [24] 6603 	lcall	_ax5043_off_xtal
                           000CCE  6604 	C$easyax5043.c$899$1$301 ==.
                                   6605 ;	..\COMMON\easyax5043.c:899: AX5043_PWRMODE = AX5043_PWRSTATE_POWERDOWN;
      001831 90 40 02         [24] 6606 	mov	dptr,#_AX5043_PWRMODE
      001834 E4               [12] 6607 	clr	a
      001835 F0               [24] 6608 	movx	@dptr,a
                           000CD3  6609 	C$easyax5043.c$900$1$301 ==.
                           000CD3  6610 	XG$ax5043_off$0$0 ==.
      001836 22               [24] 6611 	ret
                                   6612 ;------------------------------------------------------------
                                   6613 ;Allocation info for local variables in function 'ax5043_off_xtal'
                                   6614 ;------------------------------------------------------------
                           000CD4  6615 	G$ax5043_off_xtal$0$0 ==.
                           000CD4  6616 	C$easyax5043.c$902$1$301 ==.
                                   6617 ;	..\COMMON\easyax5043.c:902: __reentrantb void ax5043_off_xtal(void) __reentrant
                                   6618 ;	-----------------------------------------
                                   6619 ;	 function ax5043_off_xtal
                                   6620 ;	-----------------------------------------
      001837                       6621 _ax5043_off_xtal:
                           000CD4  6622 	C$easyax5043.c$904$1$303 ==.
                                   6623 ;	..\COMMON\easyax5043.c:904: AX5043_IRQMASK0 = 0x00; // IRQ off
      001837 90 40 07         [24] 6624 	mov	dptr,#_AX5043_IRQMASK0
      00183A E4               [12] 6625 	clr	a
      00183B F0               [24] 6626 	movx	@dptr,a
                           000CD9  6627 	C$easyax5043.c$905$1$303 ==.
                                   6628 ;	..\COMMON\easyax5043.c:905: AX5043_IRQMASK1 = 0x00;
      00183C 90 40 06         [24] 6629 	mov	dptr,#_AX5043_IRQMASK1
      00183F F0               [24] 6630 	movx	@dptr,a
                           000CDD  6631 	C$easyax5043.c$906$1$303 ==.
                                   6632 ;	..\COMMON\easyax5043.c:906: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
      001840 90 40 02         [24] 6633 	mov	dptr,#_AX5043_PWRMODE
      001843 74 05            [12] 6634 	mov	a,#0x05
      001845 F0               [24] 6635 	movx	@dptr,a
                           000CE3  6636 	C$easyax5043.c$907$1$303 ==.
                                   6637 ;	..\COMMON\easyax5043.c:907: AX5043_LPOSCCONFIG = 0x00; // LPOSC off
      001846 90 43 10         [24] 6638 	mov	dptr,#_AX5043_LPOSCCONFIG
      001849 E4               [12] 6639 	clr	a
      00184A F0               [24] 6640 	movx	@dptr,a
                           000CE8  6641 	C$easyax5043.c$908$1$303 ==.
                                   6642 ;	..\COMMON\easyax5043.c:908: axradio_trxstate = trxstate_off;
                                   6643 ;	1-genFromRTrack replaced	mov	_axradio_trxstate,#0x00
      00184B F5 09            [12] 6644 	mov	_axradio_trxstate,a
                           000CEA  6645 	C$easyax5043.c$909$1$303 ==.
                           000CEA  6646 	XG$ax5043_off_xtal$0$0 ==.
      00184D 22               [24] 6647 	ret
                                   6648 ;------------------------------------------------------------
                                   6649 ;Allocation info for local variables in function 'axradio_wait_for_xtal'
                                   6650 ;------------------------------------------------------------
                                   6651 ;iesave                    Allocated to registers r7 
                                   6652 ;------------------------------------------------------------
                           000CEB  6653 	G$axradio_wait_for_xtal$0$0 ==.
                           000CEB  6654 	C$easyax5043.c$911$1$303 ==.
                                   6655 ;	..\COMMON\easyax5043.c:911: void axradio_wait_for_xtal(void)
                                   6656 ;	-----------------------------------------
                                   6657 ;	 function axradio_wait_for_xtal
                                   6658 ;	-----------------------------------------
      00184E                       6659 _axradio_wait_for_xtal:
                           000CEB  6660 	C$easyax5043.c$913$1$305 ==.
                                   6661 ;	..\COMMON\easyax5043.c:913: uint8_t __autodata iesave = IE & 0x80;
      00184E 74 80            [12] 6662 	mov	a,#0x80
      001850 55 A8            [12] 6663 	anl	a,_IE
      001852 FF               [12] 6664 	mov	r7,a
                           000CF0  6665 	C$easyax5043.c$914$1$305 ==.
                                   6666 ;	..\COMMON\easyax5043.c:914: EA = 0;
      001853 C2 AF            [12] 6667 	clr	_EA
                           000CF2  6668 	C$easyax5043.c$915$1$305 ==.
                                   6669 ;	..\COMMON\easyax5043.c:915: axradio_trxstate = trxstate_wait_xtal;
      001855 75 09 03         [24] 6670 	mov	_axradio_trxstate,#0x03
                           000CF5  6671 	C$easyax5043.c$916$1$305 ==.
                                   6672 ;	..\COMMON\easyax5043.c:916: AX5043_IRQMASK1 |= 0x01; // enable xtal ready interrupt
      001858 90 40 06         [24] 6673 	mov	dptr,#_AX5043_IRQMASK1
      00185B E0               [24] 6674 	movx	a,@dptr
      00185C FE               [12] 6675 	mov	r6,a
      00185D 74 01            [12] 6676 	mov	a,#0x01
      00185F 4E               [12] 6677 	orl	a,r6
      001860 F0               [24] 6678 	movx	@dptr,a
      001861                       6679 00104$:
                           000CFE  6680 	C$easyax5043.c$918$2$306 ==.
                                   6681 ;	..\COMMON\easyax5043.c:918: EA = 0;
      001861 C2 AF            [12] 6682 	clr	_EA
                           000D00  6683 	C$easyax5043.c$919$2$306 ==.
                                   6684 ;	..\COMMON\easyax5043.c:919: if (axradio_trxstate == trxstate_xtal_ready)
      001863 74 04            [12] 6685 	mov	a,#0x04
      001865 B5 09 02         [24] 6686 	cjne	a,_axradio_trxstate,00114$
      001868 80 11            [24] 6687 	sjmp	00103$
      00186A                       6688 00114$:
                           000D07  6689 	C$easyax5043.c$921$2$306 ==.
                                   6690 ;	..\COMMON\easyax5043.c:921: wtimer_idle(WTFLAG_CANSTANDBY);
      00186A 75 82 02         [24] 6691 	mov	dpl,#0x02
      00186D C0 07            [24] 6692 	push	ar7
      00186F 12 45 AA         [24] 6693 	lcall	_wtimer_idle
                           000D0F  6694 	C$easyax5043.c$922$2$306 ==.
                                   6695 ;	..\COMMON\easyax5043.c:922: EA = 1;
      001872 D2 AF            [12] 6696 	setb	_EA
                           000D11  6697 	C$easyax5043.c$923$2$306 ==.
                                   6698 ;	..\COMMON\easyax5043.c:923: wtimer_runcallbacks();
      001874 12 45 29         [24] 6699 	lcall	_wtimer_runcallbacks
      001877 D0 07            [24] 6700 	pop	ar7
      001879 80 E6            [24] 6701 	sjmp	00104$
      00187B                       6702 00103$:
                           000D18  6703 	C$easyax5043.c$925$1$305 ==.
                                   6704 ;	..\COMMON\easyax5043.c:925: IE |= iesave;
      00187B EF               [12] 6705 	mov	a,r7
      00187C 42 A8            [12] 6706 	orl	_IE,a
                           000D1B  6707 	C$easyax5043.c$926$1$305 ==.
                           000D1B  6708 	XG$axradio_wait_for_xtal$0$0 ==.
      00187E 22               [24] 6709 	ret
                                   6710 ;------------------------------------------------------------
                                   6711 ;Allocation info for local variables in function 'axradio_setaddrregs'
                                   6712 ;------------------------------------------------------------
                                   6713 ;pn                        Allocated to registers r6 r7 
                                   6714 ;inv                       Allocated to registers r5 
                                   6715 ;------------------------------------------------------------
                           000D1C  6716 	Feasyax5043$axradio_setaddrregs$0$0 ==.
                           000D1C  6717 	C$easyax5043.c$928$1$305 ==.
                                   6718 ;	..\COMMON\easyax5043.c:928: static void axradio_setaddrregs(void)
                                   6719 ;	-----------------------------------------
                                   6720 ;	 function axradio_setaddrregs
                                   6721 ;	-----------------------------------------
      00187F                       6722 _axradio_setaddrregs:
                           000D1C  6723 	C$easyax5043.c$930$1$308 ==.
                                   6724 ;	..\COMMON\easyax5043.c:930: AX5043_PKTADDR0 = axradio_localaddr.addr[0];
      00187F 90 00 1F         [24] 6725 	mov	dptr,#_axradio_localaddr
      001882 E0               [24] 6726 	movx	a,@dptr
      001883 90 42 07         [24] 6727 	mov	dptr,#_AX5043_PKTADDR0
      001886 F0               [24] 6728 	movx	@dptr,a
                           000D24  6729 	C$easyax5043.c$931$1$308 ==.
                                   6730 ;	..\COMMON\easyax5043.c:931: AX5043_PKTADDR1 = axradio_localaddr.addr[1];
      001887 90 00 20         [24] 6731 	mov	dptr,#(_axradio_localaddr + 0x0001)
      00188A E0               [24] 6732 	movx	a,@dptr
      00188B 90 42 06         [24] 6733 	mov	dptr,#_AX5043_PKTADDR1
      00188E F0               [24] 6734 	movx	@dptr,a
                           000D2C  6735 	C$easyax5043.c$932$1$308 ==.
                                   6736 ;	..\COMMON\easyax5043.c:932: AX5043_PKTADDR2 = axradio_localaddr.addr[2];
      00188F 90 00 21         [24] 6737 	mov	dptr,#(_axradio_localaddr + 0x0002)
      001892 E0               [24] 6738 	movx	a,@dptr
      001893 90 42 05         [24] 6739 	mov	dptr,#_AX5043_PKTADDR2
      001896 F0               [24] 6740 	movx	@dptr,a
                           000D34  6741 	C$easyax5043.c$933$1$308 ==.
                                   6742 ;	..\COMMON\easyax5043.c:933: AX5043_PKTADDR3 = axradio_localaddr.addr[3];
      001897 90 00 22         [24] 6743 	mov	dptr,#(_axradio_localaddr + 0x0003)
      00189A E0               [24] 6744 	movx	a,@dptr
      00189B 90 42 04         [24] 6745 	mov	dptr,#_AX5043_PKTADDR3
      00189E F0               [24] 6746 	movx	@dptr,a
                           000D3C  6747 	C$easyax5043.c$935$1$308 ==.
                                   6748 ;	..\COMMON\easyax5043.c:935: AX5043_PKTADDRMASK0 = axradio_localaddr.mask[0];
      00189F 90 00 23         [24] 6749 	mov	dptr,#(_axradio_localaddr + 0x0004)
      0018A2 E0               [24] 6750 	movx	a,@dptr
      0018A3 90 42 0B         [24] 6751 	mov	dptr,#_AX5043_PKTADDRMASK0
      0018A6 F0               [24] 6752 	movx	@dptr,a
                           000D44  6753 	C$easyax5043.c$936$1$308 ==.
                                   6754 ;	..\COMMON\easyax5043.c:936: AX5043_PKTADDRMASK1 = axradio_localaddr.mask[1];
      0018A7 90 00 24         [24] 6755 	mov	dptr,#(_axradio_localaddr + 0x0005)
      0018AA E0               [24] 6756 	movx	a,@dptr
      0018AB 90 42 0A         [24] 6757 	mov	dptr,#_AX5043_PKTADDRMASK1
      0018AE F0               [24] 6758 	movx	@dptr,a
                           000D4C  6759 	C$easyax5043.c$937$1$308 ==.
                                   6760 ;	..\COMMON\easyax5043.c:937: AX5043_PKTADDRMASK2 = axradio_localaddr.mask[2];
      0018AF 90 00 25         [24] 6761 	mov	dptr,#(_axradio_localaddr + 0x0006)
      0018B2 E0               [24] 6762 	movx	a,@dptr
      0018B3 90 42 09         [24] 6763 	mov	dptr,#_AX5043_PKTADDRMASK2
      0018B6 F0               [24] 6764 	movx	@dptr,a
                           000D54  6765 	C$easyax5043.c$938$1$308 ==.
                                   6766 ;	..\COMMON\easyax5043.c:938: AX5043_PKTADDRMASK3 = axradio_localaddr.mask[3];
      0018B7 90 00 26         [24] 6767 	mov	dptr,#(_axradio_localaddr + 0x0007)
      0018BA E0               [24] 6768 	movx	a,@dptr
      0018BB FF               [12] 6769 	mov	r7,a
      0018BC 90 42 08         [24] 6770 	mov	dptr,#_AX5043_PKTADDRMASK3
      0018BF F0               [24] 6771 	movx	@dptr,a
                           000D5D  6772 	C$easyax5043.c$940$1$308 ==.
                                   6773 ;	..\COMMON\easyax5043.c:940: if (axradio_phy_pn9 && axradio_framing_addrlen) {
      0018C0 90 55 B4         [24] 6774 	mov	dptr,#_axradio_phy_pn9
      0018C3 E4               [12] 6775 	clr	a
      0018C4 93               [24] 6776 	movc	a,@a+dptr
      0018C5 70 03            [24] 6777 	jnz	00117$
      0018C7 02 19 A8         [24] 6778 	ljmp	00106$
      0018CA                       6779 00117$:
      0018CA 90 55 D6         [24] 6780 	mov	dptr,#_axradio_framing_addrlen
      0018CD E4               [12] 6781 	clr	a
      0018CE 93               [24] 6782 	movc	a,@a+dptr
      0018CF 70 03            [24] 6783 	jnz	00118$
      0018D1 02 19 A8         [24] 6784 	ljmp	00106$
      0018D4                       6785 00118$:
                           000D71  6786 	C$easyax5043.c$941$2$308 ==.
                                   6787 ;	..\COMMON\easyax5043.c:941: uint16_t __autodata pn = 0x1ff;
      0018D4 7E FF            [12] 6788 	mov	r6,#0xff
      0018D6 7F 01            [12] 6789 	mov	r7,#0x01
                           000D75  6790 	C$easyax5043.c$942$2$309 ==.
                                   6791 ;	..\COMMON\easyax5043.c:942: uint8_t __autodata inv = -(AX5043_ENCODING & 0x01);
      0018D8 90 40 11         [24] 6792 	mov	dptr,#_AX5043_ENCODING
      0018DB E0               [24] 6793 	movx	a,@dptr
      0018DC FD               [12] 6794 	mov	r5,a
      0018DD 53 05 01         [24] 6795 	anl	ar5,#0x01
      0018E0 C3               [12] 6796 	clr	c
      0018E1 E4               [12] 6797 	clr	a
      0018E2 9D               [12] 6798 	subb	a,r5
      0018E3 FD               [12] 6799 	mov	r5,a
                           000D81  6800 	C$easyax5043.c$943$2$309 ==.
                                   6801 ;	..\COMMON\easyax5043.c:943: if (axradio_framing_destaddrpos != 0xff)
      0018E4 90 55 D7         [24] 6802 	mov	dptr,#_axradio_framing_destaddrpos
      0018E7 E4               [12] 6803 	clr	a
      0018E8 93               [24] 6804 	movc	a,@a+dptr
      0018E9 FC               [12] 6805 	mov	r4,a
      0018EA BC FF 02         [24] 6806 	cjne	r4,#0xff,00119$
      0018ED 80 25            [24] 6807 	sjmp	00102$
      0018EF                       6808 00119$:
                           000D8C  6809 	C$easyax5043.c$944$2$309 ==.
                                   6810 ;	..\COMMON\easyax5043.c:944: pn = pn9_advance_bits(pn, axradio_framing_destaddrpos << 3);
      0018EF E4               [12] 6811 	clr	a
      0018F0 03               [12] 6812 	rr	a
      0018F1 54 F8            [12] 6813 	anl	a,#0xf8
      0018F3 CC               [12] 6814 	xch	a,r4
      0018F4 C4               [12] 6815 	swap	a
      0018F5 03               [12] 6816 	rr	a
      0018F6 CC               [12] 6817 	xch	a,r4
      0018F7 6C               [12] 6818 	xrl	a,r4
      0018F8 CC               [12] 6819 	xch	a,r4
      0018F9 54 F8            [12] 6820 	anl	a,#0xf8
      0018FB CC               [12] 6821 	xch	a,r4
      0018FC 6C               [12] 6822 	xrl	a,r4
      0018FD FB               [12] 6823 	mov	r3,a
      0018FE C0 05            [24] 6824 	push	ar5
      001900 C0 04            [24] 6825 	push	ar4
      001902 C0 03            [24] 6826 	push	ar3
      001904 90 01 FF         [24] 6827 	mov	dptr,#0x01ff
      001907 12 53 04         [24] 6828 	lcall	_pn9_advance_bits
      00190A AE 82            [24] 6829 	mov	r6,dpl
      00190C AF 83            [24] 6830 	mov	r7,dph
      00190E 15 81            [12] 6831 	dec	sp
      001910 15 81            [12] 6832 	dec	sp
      001912 D0 05            [24] 6833 	pop	ar5
      001914                       6834 00102$:
                           000DB1  6835 	C$easyax5043.c$945$2$309 ==.
                                   6836 ;	..\COMMON\easyax5043.c:945: AX5043_PKTADDR0 ^= pn ^ inv;
      001914 7C 00            [12] 6837 	mov	r4,#0x00
      001916 ED               [12] 6838 	mov	a,r5
      001917 6E               [12] 6839 	xrl	a,r6
      001918 FA               [12] 6840 	mov	r2,a
      001919 EC               [12] 6841 	mov	a,r4
      00191A 6F               [12] 6842 	xrl	a,r7
      00191B FB               [12] 6843 	mov	r3,a
      00191C 90 42 07         [24] 6844 	mov	dptr,#_AX5043_PKTADDR0
      00191F E0               [24] 6845 	movx	a,@dptr
      001920 79 00            [12] 6846 	mov	r1,#0x00
      001922 62 02            [12] 6847 	xrl	ar2,a
      001924 E9               [12] 6848 	mov	a,r1
      001925 62 03            [12] 6849 	xrl	ar3,a
      001927 90 42 07         [24] 6850 	mov	dptr,#_AX5043_PKTADDR0
      00192A EA               [12] 6851 	mov	a,r2
      00192B F0               [24] 6852 	movx	@dptr,a
                           000DC9  6853 	C$easyax5043.c$946$2$309 ==.
                                   6854 ;	..\COMMON\easyax5043.c:946: pn = pn9_advance_byte(pn);
      00192C 8E 82            [24] 6855 	mov	dpl,r6
      00192E 8F 83            [24] 6856 	mov	dph,r7
      001930 C0 05            [24] 6857 	push	ar5
      001932 C0 04            [24] 6858 	push	ar4
      001934 12 53 2A         [24] 6859 	lcall	_pn9_advance_byte
      001937 AE 82            [24] 6860 	mov	r6,dpl
      001939 AF 83            [24] 6861 	mov	r7,dph
      00193B D0 04            [24] 6862 	pop	ar4
      00193D D0 05            [24] 6863 	pop	ar5
                           000DDC  6864 	C$easyax5043.c$947$2$309 ==.
                                   6865 ;	..\COMMON\easyax5043.c:947: AX5043_PKTADDR1 ^= pn ^ inv;
      00193F ED               [12] 6866 	mov	a,r5
      001940 6E               [12] 6867 	xrl	a,r6
      001941 FA               [12] 6868 	mov	r2,a
      001942 EC               [12] 6869 	mov	a,r4
      001943 6F               [12] 6870 	xrl	a,r7
      001944 FB               [12] 6871 	mov	r3,a
      001945 90 42 06         [24] 6872 	mov	dptr,#_AX5043_PKTADDR1
      001948 E0               [24] 6873 	movx	a,@dptr
      001949 79 00            [12] 6874 	mov	r1,#0x00
      00194B 62 02            [12] 6875 	xrl	ar2,a
      00194D E9               [12] 6876 	mov	a,r1
      00194E 62 03            [12] 6877 	xrl	ar3,a
      001950 90 42 06         [24] 6878 	mov	dptr,#_AX5043_PKTADDR1
      001953 EA               [12] 6879 	mov	a,r2
      001954 F0               [24] 6880 	movx	@dptr,a
                           000DF2  6881 	C$easyax5043.c$948$2$309 ==.
                                   6882 ;	..\COMMON\easyax5043.c:948: pn = pn9_advance_byte(pn);
      001955 8E 82            [24] 6883 	mov	dpl,r6
      001957 8F 83            [24] 6884 	mov	dph,r7
      001959 C0 05            [24] 6885 	push	ar5
      00195B C0 04            [24] 6886 	push	ar4
      00195D 12 53 2A         [24] 6887 	lcall	_pn9_advance_byte
      001960 AE 82            [24] 6888 	mov	r6,dpl
      001962 AF 83            [24] 6889 	mov	r7,dph
      001964 D0 04            [24] 6890 	pop	ar4
      001966 D0 05            [24] 6891 	pop	ar5
                           000E05  6892 	C$easyax5043.c$949$2$309 ==.
                                   6893 ;	..\COMMON\easyax5043.c:949: AX5043_PKTADDR2 ^= pn ^ inv;
      001968 ED               [12] 6894 	mov	a,r5
      001969 6E               [12] 6895 	xrl	a,r6
      00196A FA               [12] 6896 	mov	r2,a
      00196B EC               [12] 6897 	mov	a,r4
      00196C 6F               [12] 6898 	xrl	a,r7
      00196D FB               [12] 6899 	mov	r3,a
      00196E 90 42 05         [24] 6900 	mov	dptr,#_AX5043_PKTADDR2
      001971 E0               [24] 6901 	movx	a,@dptr
      001972 79 00            [12] 6902 	mov	r1,#0x00
      001974 62 02            [12] 6903 	xrl	ar2,a
      001976 E9               [12] 6904 	mov	a,r1
      001977 62 03            [12] 6905 	xrl	ar3,a
      001979 90 42 05         [24] 6906 	mov	dptr,#_AX5043_PKTADDR2
      00197C EA               [12] 6907 	mov	a,r2
      00197D F0               [24] 6908 	movx	@dptr,a
                           000E1B  6909 	C$easyax5043.c$950$2$309 ==.
                                   6910 ;	..\COMMON\easyax5043.c:950: pn = pn9_advance_byte(pn);
      00197E 8E 82            [24] 6911 	mov	dpl,r6
      001980 8F 83            [24] 6912 	mov	dph,r7
      001982 C0 05            [24] 6913 	push	ar5
      001984 C0 04            [24] 6914 	push	ar4
      001986 12 53 2A         [24] 6915 	lcall	_pn9_advance_byte
      001989 AE 82            [24] 6916 	mov	r6,dpl
      00198B AF 83            [24] 6917 	mov	r7,dph
      00198D D0 04            [24] 6918 	pop	ar4
      00198F D0 05            [24] 6919 	pop	ar5
                           000E2E  6920 	C$easyax5043.c$951$2$309 ==.
                                   6921 ;	..\COMMON\easyax5043.c:951: AX5043_PKTADDR3 ^= pn ^ inv;
      001991 ED               [12] 6922 	mov	a,r5
      001992 62 06            [12] 6923 	xrl	ar6,a
      001994 EC               [12] 6924 	mov	a,r4
      001995 62 07            [12] 6925 	xrl	ar7,a
      001997 90 42 04         [24] 6926 	mov	dptr,#_AX5043_PKTADDR3
      00199A E0               [24] 6927 	movx	a,@dptr
      00199B FD               [12] 6928 	mov	r5,a
      00199C 7C 00            [12] 6929 	mov	r4,#0x00
      00199E 62 06            [12] 6930 	xrl	ar6,a
      0019A0 EC               [12] 6931 	mov	a,r4
      0019A1 62 07            [12] 6932 	xrl	ar7,a
      0019A3 90 42 04         [24] 6933 	mov	dptr,#_AX5043_PKTADDR3
      0019A6 EE               [12] 6934 	mov	a,r6
      0019A7 F0               [24] 6935 	movx	@dptr,a
      0019A8                       6936 00106$:
                           000E45  6937 	C$easyax5043.c$953$1$308 ==.
                           000E45  6938 	XFeasyax5043$axradio_setaddrregs$0$0 ==.
      0019A8 22               [24] 6939 	ret
                                   6940 ;------------------------------------------------------------
                                   6941 ;Allocation info for local variables in function 'ax5043_init_registers'
                                   6942 ;------------------------------------------------------------
                           000E46  6943 	Feasyax5043$ax5043_init_registers$0$0 ==.
                           000E46  6944 	C$easyax5043.c$955$1$308 ==.
                                   6945 ;	..\COMMON\easyax5043.c:955: static void ax5043_init_registers(void)
                                   6946 ;	-----------------------------------------
                                   6947 ;	 function ax5043_init_registers
                                   6948 ;	-----------------------------------------
      0019A9                       6949 _ax5043_init_registers:
                           000E46  6950 	C$easyax5043.c$957$1$311 ==.
                                   6951 ;	..\COMMON\easyax5043.c:957: ax5043_set_registers();
      0019A9 12 03 61         [24] 6952 	lcall	_ax5043_set_registers
                           000E49  6953 	C$easyax5043.c$962$1$311 ==.
                                   6954 ;	..\COMMON\easyax5043.c:962: AX5043_PKTLENOFFSET += axradio_framing_swcrclen; // add len offs for software CRC16 (used for both, fixed and variable length packets
      0019AC 90 55 DC         [24] 6955 	mov	dptr,#_axradio_framing_swcrclen
      0019AF E4               [12] 6956 	clr	a
      0019B0 93               [24] 6957 	movc	a,@a+dptr
      0019B1 FF               [12] 6958 	mov	r7,a
      0019B2 90 42 02         [24] 6959 	mov	dptr,#_AX5043_PKTLENOFFSET
      0019B5 E0               [24] 6960 	movx	a,@dptr
      0019B6 FE               [12] 6961 	mov	r6,a
      0019B7 2F               [12] 6962 	add	a,r7
      0019B8 F0               [24] 6963 	movx	@dptr,a
                           000E56  6964 	C$easyax5043.c$963$1$311 ==.
                                   6965 ;	..\COMMON\easyax5043.c:963: AX5043_PINFUNCIRQ = 0x03; // use as IRQ pin
      0019B9 90 40 24         [24] 6966 	mov	dptr,#_AX5043_PINFUNCIRQ
      0019BC 74 03            [12] 6967 	mov	a,#0x03
      0019BE F0               [24] 6968 	movx	@dptr,a
                           000E5C  6969 	C$easyax5043.c$964$1$311 ==.
                                   6970 ;	..\COMMON\easyax5043.c:964: AX5043_PKTSTOREFLAGS = axradio_phy_innerfreqloop ? 0x13 : 0x15; // store RF offset, RSSI and delimiter timing
      0019BF 90 55 B3         [24] 6971 	mov	dptr,#_axradio_phy_innerfreqloop
      0019C2 E4               [12] 6972 	clr	a
      0019C3 93               [24] 6973 	movc	a,@a+dptr
      0019C4 FF               [12] 6974 	mov	r7,a
      0019C5 60 04            [24] 6975 	jz	00103$
      0019C7 7F 13            [12] 6976 	mov	r7,#0x13
      0019C9 80 02            [24] 6977 	sjmp	00104$
      0019CB                       6978 00103$:
      0019CB 7F 15            [12] 6979 	mov	r7,#0x15
      0019CD                       6980 00104$:
      0019CD 90 42 32         [24] 6981 	mov	dptr,#_AX5043_PKTSTOREFLAGS
      0019D0 EF               [12] 6982 	mov	a,r7
      0019D1 F0               [24] 6983 	movx	@dptr,a
                           000E6F  6984 	C$easyax5043.c$965$1$311 ==.
                                   6985 ;	..\COMMON\easyax5043.c:965: axradio_setaddrregs();
      0019D2 12 18 7F         [24] 6986 	lcall	_axradio_setaddrregs
                           000E72  6987 	C$easyax5043.c$966$1$311 ==.
                           000E72  6988 	XFeasyax5043$ax5043_init_registers$0$0 ==.
      0019D5 22               [24] 6989 	ret
                                   6990 ;------------------------------------------------------------
                                   6991 ;Allocation info for local variables in function 'axradio_sync_addtime'
                                   6992 ;------------------------------------------------------------
                                   6993 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   6994 ;------------------------------------------------------------
                           000E73  6995 	Feasyax5043$axradio_sync_addtime$0$0 ==.
                           000E73  6996 	C$easyax5043.c$972$1$311 ==.
                                   6997 ;	..\COMMON\easyax5043.c:972: static __reentrantb void axradio_sync_addtime(uint32_t dt) __reentrant
                                   6998 ;	-----------------------------------------
                                   6999 ;	 function axradio_sync_addtime
                                   7000 ;	-----------------------------------------
      0019D6                       7001 _axradio_sync_addtime:
      0019D6 AC 82            [24] 7002 	mov	r4,dpl
      0019D8 AD 83            [24] 7003 	mov	r5,dph
      0019DA AE F0            [24] 7004 	mov	r6,b
      0019DC FF               [12] 7005 	mov	r7,a
                           000E7A  7006 	C$easyax5043.c$974$1$313 ==.
                                   7007 ;	..\COMMON\easyax5043.c:974: axradio_sync_time += dt;
      0019DD 90 00 11         [24] 7008 	mov	dptr,#_axradio_sync_time
      0019E0 E0               [24] 7009 	movx	a,@dptr
      0019E1 F8               [12] 7010 	mov	r0,a
      0019E2 A3               [24] 7011 	inc	dptr
      0019E3 E0               [24] 7012 	movx	a,@dptr
      0019E4 F9               [12] 7013 	mov	r1,a
      0019E5 A3               [24] 7014 	inc	dptr
      0019E6 E0               [24] 7015 	movx	a,@dptr
      0019E7 FA               [12] 7016 	mov	r2,a
      0019E8 A3               [24] 7017 	inc	dptr
      0019E9 E0               [24] 7018 	movx	a,@dptr
      0019EA FB               [12] 7019 	mov	r3,a
      0019EB 90 00 11         [24] 7020 	mov	dptr,#_axradio_sync_time
      0019EE EC               [12] 7021 	mov	a,r4
      0019EF 28               [12] 7022 	add	a,r0
      0019F0 F0               [24] 7023 	movx	@dptr,a
      0019F1 ED               [12] 7024 	mov	a,r5
      0019F2 39               [12] 7025 	addc	a,r1
      0019F3 A3               [24] 7026 	inc	dptr
      0019F4 F0               [24] 7027 	movx	@dptr,a
      0019F5 EE               [12] 7028 	mov	a,r6
      0019F6 3A               [12] 7029 	addc	a,r2
      0019F7 A3               [24] 7030 	inc	dptr
      0019F8 F0               [24] 7031 	movx	@dptr,a
      0019F9 EF               [12] 7032 	mov	a,r7
      0019FA 3B               [12] 7033 	addc	a,r3
      0019FB A3               [24] 7034 	inc	dptr
      0019FC F0               [24] 7035 	movx	@dptr,a
                           000E9A  7036 	C$easyax5043.c$975$1$313 ==.
                           000E9A  7037 	XFeasyax5043$axradio_sync_addtime$0$0 ==.
      0019FD 22               [24] 7038 	ret
                                   7039 ;------------------------------------------------------------
                                   7040 ;Allocation info for local variables in function 'axradio_sync_subtime'
                                   7041 ;------------------------------------------------------------
                                   7042 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   7043 ;------------------------------------------------------------
                           000E9B  7044 	Feasyax5043$axradio_sync_subtime$0$0 ==.
                           000E9B  7045 	C$easyax5043.c$977$1$313 ==.
                                   7046 ;	..\COMMON\easyax5043.c:977: static __reentrantb void axradio_sync_subtime(uint32_t dt) __reentrant
                                   7047 ;	-----------------------------------------
                                   7048 ;	 function axradio_sync_subtime
                                   7049 ;	-----------------------------------------
      0019FE                       7050 _axradio_sync_subtime:
      0019FE AC 82            [24] 7051 	mov	r4,dpl
      001A00 AD 83            [24] 7052 	mov	r5,dph
      001A02 AE F0            [24] 7053 	mov	r6,b
      001A04 FF               [12] 7054 	mov	r7,a
                           000EA2  7055 	C$easyax5043.c$979$1$315 ==.
                                   7056 ;	..\COMMON\easyax5043.c:979: axradio_sync_time -= dt;
      001A05 90 00 11         [24] 7057 	mov	dptr,#_axradio_sync_time
      001A08 E0               [24] 7058 	movx	a,@dptr
      001A09 F8               [12] 7059 	mov	r0,a
      001A0A A3               [24] 7060 	inc	dptr
      001A0B E0               [24] 7061 	movx	a,@dptr
      001A0C F9               [12] 7062 	mov	r1,a
      001A0D A3               [24] 7063 	inc	dptr
      001A0E E0               [24] 7064 	movx	a,@dptr
      001A0F FA               [12] 7065 	mov	r2,a
      001A10 A3               [24] 7066 	inc	dptr
      001A11 E0               [24] 7067 	movx	a,@dptr
      001A12 FB               [12] 7068 	mov	r3,a
      001A13 90 00 11         [24] 7069 	mov	dptr,#_axradio_sync_time
      001A16 E8               [12] 7070 	mov	a,r0
      001A17 C3               [12] 7071 	clr	c
      001A18 9C               [12] 7072 	subb	a,r4
      001A19 F0               [24] 7073 	movx	@dptr,a
      001A1A E9               [12] 7074 	mov	a,r1
      001A1B 9D               [12] 7075 	subb	a,r5
      001A1C A3               [24] 7076 	inc	dptr
      001A1D F0               [24] 7077 	movx	@dptr,a
      001A1E EA               [12] 7078 	mov	a,r2
      001A1F 9E               [12] 7079 	subb	a,r6
      001A20 A3               [24] 7080 	inc	dptr
      001A21 F0               [24] 7081 	movx	@dptr,a
      001A22 EB               [12] 7082 	mov	a,r3
      001A23 9F               [12] 7083 	subb	a,r7
      001A24 A3               [24] 7084 	inc	dptr
      001A25 F0               [24] 7085 	movx	@dptr,a
                           000EC3  7086 	C$easyax5043.c$980$1$315 ==.
                           000EC3  7087 	XFeasyax5043$axradio_sync_subtime$0$0 ==.
      001A26 22               [24] 7088 	ret
                                   7089 ;------------------------------------------------------------
                                   7090 ;Allocation info for local variables in function 'axradio_sync_settimeradv'
                                   7091 ;------------------------------------------------------------
                                   7092 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   7093 ;------------------------------------------------------------
                           000EC4  7094 	Feasyax5043$axradio_sync_settimeradv$0$0 ==.
                           000EC4  7095 	C$easyax5043.c$982$1$315 ==.
                                   7096 ;	..\COMMON\easyax5043.c:982: static __reentrantb void axradio_sync_settimeradv(uint32_t dt) __reentrant
                                   7097 ;	-----------------------------------------
                                   7098 ;	 function axradio_sync_settimeradv
                                   7099 ;	-----------------------------------------
      001A27                       7100 _axradio_sync_settimeradv:
      001A27 AC 82            [24] 7101 	mov	r4,dpl
      001A29 AD 83            [24] 7102 	mov	r5,dph
      001A2B AE F0            [24] 7103 	mov	r6,b
      001A2D FF               [12] 7104 	mov	r7,a
                           000ECB  7105 	C$easyax5043.c$984$1$317 ==.
                                   7106 ;	..\COMMON\easyax5043.c:984: axradio_timer.time = axradio_sync_time;
      001A2E 90 00 11         [24] 7107 	mov	dptr,#_axradio_sync_time
      001A31 E0               [24] 7108 	movx	a,@dptr
      001A32 F8               [12] 7109 	mov	r0,a
      001A33 A3               [24] 7110 	inc	dptr
      001A34 E0               [24] 7111 	movx	a,@dptr
      001A35 F9               [12] 7112 	mov	r1,a
      001A36 A3               [24] 7113 	inc	dptr
      001A37 E0               [24] 7114 	movx	a,@dptr
      001A38 FA               [12] 7115 	mov	r2,a
      001A39 A3               [24] 7116 	inc	dptr
      001A3A E0               [24] 7117 	movx	a,@dptr
      001A3B FB               [12] 7118 	mov	r3,a
      001A3C 90 02 8E         [24] 7119 	mov	dptr,#(_axradio_timer + 0x0004)
      001A3F E8               [12] 7120 	mov	a,r0
      001A40 F0               [24] 7121 	movx	@dptr,a
      001A41 E9               [12] 7122 	mov	a,r1
      001A42 A3               [24] 7123 	inc	dptr
      001A43 F0               [24] 7124 	movx	@dptr,a
      001A44 EA               [12] 7125 	mov	a,r2
      001A45 A3               [24] 7126 	inc	dptr
      001A46 F0               [24] 7127 	movx	@dptr,a
      001A47 EB               [12] 7128 	mov	a,r3
      001A48 A3               [24] 7129 	inc	dptr
      001A49 F0               [24] 7130 	movx	@dptr,a
                           000EE7  7131 	C$easyax5043.c$985$1$317 ==.
                                   7132 ;	..\COMMON\easyax5043.c:985: axradio_timer.time -= dt;
      001A4A E8               [12] 7133 	mov	a,r0
      001A4B C3               [12] 7134 	clr	c
      001A4C 9C               [12] 7135 	subb	a,r4
      001A4D FC               [12] 7136 	mov	r4,a
      001A4E E9               [12] 7137 	mov	a,r1
      001A4F 9D               [12] 7138 	subb	a,r5
      001A50 FD               [12] 7139 	mov	r5,a
      001A51 EA               [12] 7140 	mov	a,r2
      001A52 9E               [12] 7141 	subb	a,r6
      001A53 FE               [12] 7142 	mov	r6,a
      001A54 EB               [12] 7143 	mov	a,r3
      001A55 9F               [12] 7144 	subb	a,r7
      001A56 FF               [12] 7145 	mov	r7,a
      001A57 90 02 8E         [24] 7146 	mov	dptr,#(_axradio_timer + 0x0004)
      001A5A EC               [12] 7147 	mov	a,r4
      001A5B F0               [24] 7148 	movx	@dptr,a
      001A5C ED               [12] 7149 	mov	a,r5
      001A5D A3               [24] 7150 	inc	dptr
      001A5E F0               [24] 7151 	movx	@dptr,a
      001A5F EE               [12] 7152 	mov	a,r6
      001A60 A3               [24] 7153 	inc	dptr
      001A61 F0               [24] 7154 	movx	@dptr,a
      001A62 EF               [12] 7155 	mov	a,r7
      001A63 A3               [24] 7156 	inc	dptr
      001A64 F0               [24] 7157 	movx	@dptr,a
                           000F02  7158 	C$easyax5043.c$986$1$317 ==.
                           000F02  7159 	XFeasyax5043$axradio_sync_settimeradv$0$0 ==.
      001A65 22               [24] 7160 	ret
                                   7161 ;------------------------------------------------------------
                                   7162 ;Allocation info for local variables in function 'axradio_sync_adjustperiodcorr'
                                   7163 ;------------------------------------------------------------
                                   7164 ;dt                        Allocated to registers r4 r5 r6 r7 
                                   7165 ;------------------------------------------------------------
                           000F03  7166 	Feasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
                           000F03  7167 	C$easyax5043.c$988$1$317 ==.
                                   7168 ;	..\COMMON\easyax5043.c:988: static void axradio_sync_adjustperiodcorr(void)
                                   7169 ;	-----------------------------------------
                                   7170 ;	 function axradio_sync_adjustperiodcorr
                                   7171 ;	-----------------------------------------
      001A66                       7172 _axradio_sync_adjustperiodcorr:
                           000F03  7173 	C$easyax5043.c$990$1$319 ==.
                                   7174 ;	..\COMMON\easyax5043.c:990: int32_t __autodata dt = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t) - axradio_sync_time;
      001A66 90 02 39         [24] 7175 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      001A69 E0               [24] 7176 	movx	a,@dptr
      001A6A FC               [12] 7177 	mov	r4,a
      001A6B A3               [24] 7178 	inc	dptr
      001A6C E0               [24] 7179 	movx	a,@dptr
      001A6D FD               [12] 7180 	mov	r5,a
      001A6E A3               [24] 7181 	inc	dptr
      001A6F E0               [24] 7182 	movx	a,@dptr
      001A70 FE               [12] 7183 	mov	r6,a
      001A71 A3               [24] 7184 	inc	dptr
      001A72 E0               [24] 7185 	movx	a,@dptr
      001A73 8C 82            [24] 7186 	mov	dpl,r4
      001A75 8D 83            [24] 7187 	mov	dph,r5
      001A77 8E F0            [24] 7188 	mov	b,r6
      001A79 12 0B A5         [24] 7189 	lcall	_axradio_conv_time_totimer0
      001A7C AC 82            [24] 7190 	mov	r4,dpl
      001A7E AD 83            [24] 7191 	mov	r5,dph
      001A80 AE F0            [24] 7192 	mov	r6,b
      001A82 FF               [12] 7193 	mov	r7,a
      001A83 90 00 11         [24] 7194 	mov	dptr,#_axradio_sync_time
      001A86 E0               [24] 7195 	movx	a,@dptr
      001A87 F8               [12] 7196 	mov	r0,a
      001A88 A3               [24] 7197 	inc	dptr
      001A89 E0               [24] 7198 	movx	a,@dptr
      001A8A F9               [12] 7199 	mov	r1,a
      001A8B A3               [24] 7200 	inc	dptr
      001A8C E0               [24] 7201 	movx	a,@dptr
      001A8D FA               [12] 7202 	mov	r2,a
      001A8E A3               [24] 7203 	inc	dptr
      001A8F E0               [24] 7204 	movx	a,@dptr
      001A90 FB               [12] 7205 	mov	r3,a
      001A91 EC               [12] 7206 	mov	a,r4
      001A92 C3               [12] 7207 	clr	c
      001A93 98               [12] 7208 	subb	a,r0
      001A94 FC               [12] 7209 	mov	r4,a
      001A95 ED               [12] 7210 	mov	a,r5
      001A96 99               [12] 7211 	subb	a,r1
      001A97 FD               [12] 7212 	mov	r5,a
      001A98 EE               [12] 7213 	mov	a,r6
      001A99 9A               [12] 7214 	subb	a,r2
      001A9A FE               [12] 7215 	mov	r6,a
      001A9B EF               [12] 7216 	mov	a,r7
      001A9C 9B               [12] 7217 	subb	a,r3
      001A9D FF               [12] 7218 	mov	r7,a
                           000F3B  7219 	C$easyax5043.c$991$1$319 ==.
                                   7220 ;	..\COMMON\easyax5043.c:991: axradio_cb_receive.st.rx.phy.timeoffset = dt;
      001A9E 8C 02            [24] 7221 	mov	ar2,r4
      001AA0 8D 03            [24] 7222 	mov	ar3,r5
      001AA2 90 02 43         [24] 7223 	mov	dptr,#(_axradio_cb_receive + 0x0010)
      001AA5 EA               [12] 7224 	mov	a,r2
      001AA6 F0               [24] 7225 	movx	@dptr,a
      001AA7 EB               [12] 7226 	mov	a,r3
      001AA8 A3               [24] 7227 	inc	dptr
      001AA9 F0               [24] 7228 	movx	@dptr,a
                           000F47  7229 	C$easyax5043.c$992$1$319 ==.
                                   7230 ;	..\COMMON\easyax5043.c:992: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod)) {
      001AAA 90 00 15         [24] 7231 	mov	dptr,#_axradio_sync_periodcorr
      001AAD E0               [24] 7232 	movx	a,@dptr
      001AAE FA               [12] 7233 	mov	r2,a
      001AAF A3               [24] 7234 	inc	dptr
      001AB0 E0               [24] 7235 	movx	a,@dptr
      001AB1 FB               [12] 7236 	mov	r3,a
      001AB2 90 56 05         [24] 7237 	mov	dptr,#_axradio_sync_slave_maxperiod
      001AB5 E4               [12] 7238 	clr	a
      001AB6 93               [24] 7239 	movc	a,@a+dptr
      001AB7 C0 E0            [24] 7240 	push	acc
      001AB9 74 01            [12] 7241 	mov	a,#0x01
      001ABB 93               [24] 7242 	movc	a,@a+dptr
      001ABC C0 E0            [24] 7243 	push	acc
      001ABE 8A 82            [24] 7244 	mov	dpl,r2
      001AC0 8B 83            [24] 7245 	mov	dph,r3
      001AC2 12 4C 7C         [24] 7246 	lcall	_checksignedlimit16
      001AC5 AB 82            [24] 7247 	mov	r3,dpl
      001AC7 15 81            [12] 7248 	dec	sp
      001AC9 15 81            [12] 7249 	dec	sp
      001ACB EB               [12] 7250 	mov	a,r3
      001ACC 70 4B            [24] 7251 	jnz	00102$
                           000F6B  7252 	C$easyax5043.c$993$2$320 ==.
                                   7253 ;	..\COMMON\easyax5043.c:993: axradio_sync_addtime(dt);
      001ACE 8C 82            [24] 7254 	mov	dpl,r4
      001AD0 8D 83            [24] 7255 	mov	dph,r5
      001AD2 8E F0            [24] 7256 	mov	b,r6
      001AD4 EF               [12] 7257 	mov	a,r7
      001AD5 C0 07            [24] 7258 	push	ar7
      001AD7 C0 06            [24] 7259 	push	ar6
      001AD9 C0 05            [24] 7260 	push	ar5
      001ADB C0 04            [24] 7261 	push	ar4
      001ADD 12 19 D6         [24] 7262 	lcall	_axradio_sync_addtime
      001AE0 D0 04            [24] 7263 	pop	ar4
      001AE2 D0 05            [24] 7264 	pop	ar5
      001AE4 D0 06            [24] 7265 	pop	ar6
      001AE6 D0 07            [24] 7266 	pop	ar7
                           000F85  7267 	C$easyax5043.c$994$2$320 ==.
                                   7268 ;	..\COMMON\easyax5043.c:994: dt <<= SYNC_K1;
      001AE8 EF               [12] 7269 	mov	a,r7
      001AE9 C4               [12] 7270 	swap	a
      001AEA 23               [12] 7271 	rl	a
      001AEB 54 E0            [12] 7272 	anl	a,#0xe0
      001AED CE               [12] 7273 	xch	a,r6
      001AEE C4               [12] 7274 	swap	a
      001AEF 23               [12] 7275 	rl	a
      001AF0 CE               [12] 7276 	xch	a,r6
      001AF1 6E               [12] 7277 	xrl	a,r6
      001AF2 CE               [12] 7278 	xch	a,r6
      001AF3 54 E0            [12] 7279 	anl	a,#0xe0
      001AF5 CE               [12] 7280 	xch	a,r6
      001AF6 6E               [12] 7281 	xrl	a,r6
      001AF7 FF               [12] 7282 	mov	r7,a
      001AF8 ED               [12] 7283 	mov	a,r5
      001AF9 C4               [12] 7284 	swap	a
      001AFA 23               [12] 7285 	rl	a
      001AFB 54 1F            [12] 7286 	anl	a,#0x1f
      001AFD 4E               [12] 7287 	orl	a,r6
      001AFE FE               [12] 7288 	mov	r6,a
      001AFF ED               [12] 7289 	mov	a,r5
      001B00 C4               [12] 7290 	swap	a
      001B01 23               [12] 7291 	rl	a
      001B02 54 E0            [12] 7292 	anl	a,#0xe0
      001B04 CC               [12] 7293 	xch	a,r4
      001B05 C4               [12] 7294 	swap	a
      001B06 23               [12] 7295 	rl	a
      001B07 CC               [12] 7296 	xch	a,r4
      001B08 6C               [12] 7297 	xrl	a,r4
      001B09 CC               [12] 7298 	xch	a,r4
      001B0A 54 E0            [12] 7299 	anl	a,#0xe0
      001B0C CC               [12] 7300 	xch	a,r4
      001B0D 6C               [12] 7301 	xrl	a,r4
      001B0E FD               [12] 7302 	mov	r5,a
                           000FAC  7303 	C$easyax5043.c$995$2$320 ==.
                                   7304 ;	..\COMMON\easyax5043.c:995: axradio_sync_periodcorr = dt;
      001B0F 90 00 15         [24] 7305 	mov	dptr,#_axradio_sync_periodcorr
      001B12 EC               [12] 7306 	mov	a,r4
      001B13 F0               [24] 7307 	movx	@dptr,a
      001B14 ED               [12] 7308 	mov	a,r5
      001B15 A3               [24] 7309 	inc	dptr
      001B16 F0               [24] 7310 	movx	@dptr,a
      001B17 80 48            [24] 7311 	sjmp	00103$
      001B19                       7312 00102$:
                           000FB6  7313 	C$easyax5043.c$997$2$321 ==.
                                   7314 ;	..\COMMON\easyax5043.c:997: axradio_sync_periodcorr += dt;
      001B19 90 00 15         [24] 7315 	mov	dptr,#_axradio_sync_periodcorr
      001B1C E0               [24] 7316 	movx	a,@dptr
      001B1D FA               [12] 7317 	mov	r2,a
      001B1E A3               [24] 7318 	inc	dptr
      001B1F E0               [24] 7319 	movx	a,@dptr
      001B20 FB               [12] 7320 	mov	r3,a
      001B21 8A 00            [24] 7321 	mov	ar0,r2
      001B23 EB               [12] 7322 	mov	a,r3
      001B24 F9               [12] 7323 	mov	r1,a
      001B25 33               [12] 7324 	rlc	a
      001B26 95 E0            [12] 7325 	subb	a,acc
      001B28 FA               [12] 7326 	mov	r2,a
      001B29 FB               [12] 7327 	mov	r3,a
      001B2A EC               [12] 7328 	mov	a,r4
      001B2B 28               [12] 7329 	add	a,r0
      001B2C F8               [12] 7330 	mov	r0,a
      001B2D ED               [12] 7331 	mov	a,r5
      001B2E 39               [12] 7332 	addc	a,r1
      001B2F F9               [12] 7333 	mov	r1,a
      001B30 EE               [12] 7334 	mov	a,r6
      001B31 3A               [12] 7335 	addc	a,r2
      001B32 EF               [12] 7336 	mov	a,r7
      001B33 3B               [12] 7337 	addc	a,r3
      001B34 90 00 15         [24] 7338 	mov	dptr,#_axradio_sync_periodcorr
      001B37 E8               [12] 7339 	mov	a,r0
      001B38 F0               [24] 7340 	movx	@dptr,a
      001B39 E9               [12] 7341 	mov	a,r1
      001B3A A3               [24] 7342 	inc	dptr
      001B3B F0               [24] 7343 	movx	@dptr,a
                           000FD9  7344 	C$easyax5043.c$998$2$321 ==.
                                   7345 ;	..\COMMON\easyax5043.c:998: dt >>= SYNC_K0;
      001B3C EF               [12] 7346 	mov	a,r7
      001B3D A2 E7            [12] 7347 	mov	c,acc.7
      001B3F 13               [12] 7348 	rrc	a
      001B40 FF               [12] 7349 	mov	r7,a
      001B41 EE               [12] 7350 	mov	a,r6
      001B42 13               [12] 7351 	rrc	a
      001B43 FE               [12] 7352 	mov	r6,a
      001B44 ED               [12] 7353 	mov	a,r5
      001B45 13               [12] 7354 	rrc	a
      001B46 FD               [12] 7355 	mov	r5,a
      001B47 EC               [12] 7356 	mov	a,r4
      001B48 13               [12] 7357 	rrc	a
      001B49 FC               [12] 7358 	mov	r4,a
      001B4A EF               [12] 7359 	mov	a,r7
      001B4B A2 E7            [12] 7360 	mov	c,acc.7
      001B4D 13               [12] 7361 	rrc	a
      001B4E FF               [12] 7362 	mov	r7,a
      001B4F EE               [12] 7363 	mov	a,r6
      001B50 13               [12] 7364 	rrc	a
      001B51 FE               [12] 7365 	mov	r6,a
      001B52 ED               [12] 7366 	mov	a,r5
      001B53 13               [12] 7367 	rrc	a
      001B54 FD               [12] 7368 	mov	r5,a
      001B55 EC               [12] 7369 	mov	a,r4
      001B56 13               [12] 7370 	rrc	a
                           000FF4  7371 	C$easyax5043.c$999$2$321 ==.
                                   7372 ;	..\COMMON\easyax5043.c:999: axradio_sync_addtime(dt);
      001B57 F5 82            [12] 7373 	mov	dpl,a
      001B59 8D 83            [24] 7374 	mov	dph,r5
      001B5B 8E F0            [24] 7375 	mov	b,r6
      001B5D EF               [12] 7376 	mov	a,r7
      001B5E 12 19 D6         [24] 7377 	lcall	_axradio_sync_addtime
      001B61                       7378 00103$:
                           000FFE  7379 	C$easyax5043.c$1001$1$319 ==.
                                   7380 ;	..\COMMON\easyax5043.c:1001: axradio_sync_periodcorr = signedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod);
      001B61 90 00 15         [24] 7381 	mov	dptr,#_axradio_sync_periodcorr
      001B64 E0               [24] 7382 	movx	a,@dptr
      001B65 FE               [12] 7383 	mov	r6,a
      001B66 A3               [24] 7384 	inc	dptr
      001B67 E0               [24] 7385 	movx	a,@dptr
      001B68 FF               [12] 7386 	mov	r7,a
      001B69 90 56 05         [24] 7387 	mov	dptr,#_axradio_sync_slave_maxperiod
      001B6C E4               [12] 7388 	clr	a
      001B6D 93               [24] 7389 	movc	a,@a+dptr
      001B6E C0 E0            [24] 7390 	push	acc
      001B70 74 01            [12] 7391 	mov	a,#0x01
      001B72 93               [24] 7392 	movc	a,@a+dptr
      001B73 C0 E0            [24] 7393 	push	acc
      001B75 8E 82            [24] 7394 	mov	dpl,r6
      001B77 8F 83            [24] 7395 	mov	dph,r7
      001B79 12 4D 20         [24] 7396 	lcall	_signedlimit16
      001B7C AE 82            [24] 7397 	mov	r6,dpl
      001B7E AF 83            [24] 7398 	mov	r7,dph
      001B80 15 81            [12] 7399 	dec	sp
      001B82 15 81            [12] 7400 	dec	sp
      001B84 90 00 15         [24] 7401 	mov	dptr,#_axradio_sync_periodcorr
      001B87 EE               [12] 7402 	mov	a,r6
      001B88 F0               [24] 7403 	movx	@dptr,a
      001B89 EF               [12] 7404 	mov	a,r7
      001B8A A3               [24] 7405 	inc	dptr
      001B8B F0               [24] 7406 	movx	@dptr,a
                           001029  7407 	C$easyax5043.c$1002$1$319 ==.
                           001029  7408 	XFeasyax5043$axradio_sync_adjustperiodcorr$0$0 ==.
      001B8C 22               [24] 7409 	ret
                                   7410 ;------------------------------------------------------------
                                   7411 ;Allocation info for local variables in function 'axradio_sync_slave_nextperiod'
                                   7412 ;------------------------------------------------------------
                                   7413 ;c                         Allocated to registers r6 r7 
                                   7414 ;------------------------------------------------------------
                           00102A  7415 	Feasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
                           00102A  7416 	C$easyax5043.c$1004$1$319 ==.
                                   7417 ;	..\COMMON\easyax5043.c:1004: static void axradio_sync_slave_nextperiod()
                                   7418 ;	-----------------------------------------
                                   7419 ;	 function axradio_sync_slave_nextperiod
                                   7420 ;	-----------------------------------------
      001B8D                       7421 _axradio_sync_slave_nextperiod:
                           00102A  7422 	C$easyax5043.c$1006$1$322 ==.
                                   7423 ;	..\COMMON\easyax5043.c:1006: axradio_sync_addtime(axradio_sync_period);
      001B8D 90 55 F1         [24] 7424 	mov	dptr,#_axradio_sync_period
      001B90 E4               [12] 7425 	clr	a
      001B91 93               [24] 7426 	movc	a,@a+dptr
      001B92 FC               [12] 7427 	mov	r4,a
      001B93 74 01            [12] 7428 	mov	a,#0x01
      001B95 93               [24] 7429 	movc	a,@a+dptr
      001B96 FD               [12] 7430 	mov	r5,a
      001B97 74 02            [12] 7431 	mov	a,#0x02
      001B99 93               [24] 7432 	movc	a,@a+dptr
      001B9A FE               [12] 7433 	mov	r6,a
      001B9B 74 03            [12] 7434 	mov	a,#0x03
      001B9D 93               [24] 7435 	movc	a,@a+dptr
      001B9E 8C 82            [24] 7436 	mov	dpl,r4
      001BA0 8D 83            [24] 7437 	mov	dph,r5
      001BA2 8E F0            [24] 7438 	mov	b,r6
      001BA4 12 19 D6         [24] 7439 	lcall	_axradio_sync_addtime
                           001044  7440 	C$easyax5043.c$1007$1$322 ==.
                                   7441 ;	..\COMMON\easyax5043.c:1007: if (!checksignedlimit16(axradio_sync_periodcorr, axradio_sync_slave_maxperiod))
      001BA7 90 00 15         [24] 7442 	mov	dptr,#_axradio_sync_periodcorr
      001BAA E0               [24] 7443 	movx	a,@dptr
      001BAB FE               [12] 7444 	mov	r6,a
      001BAC A3               [24] 7445 	inc	dptr
      001BAD E0               [24] 7446 	movx	a,@dptr
      001BAE FF               [12] 7447 	mov	r7,a
      001BAF 90 56 05         [24] 7448 	mov	dptr,#_axradio_sync_slave_maxperiod
      001BB2 E4               [12] 7449 	clr	a
      001BB3 93               [24] 7450 	movc	a,@a+dptr
      001BB4 C0 E0            [24] 7451 	push	acc
      001BB6 74 01            [12] 7452 	mov	a,#0x01
      001BB8 93               [24] 7453 	movc	a,@a+dptr
      001BB9 C0 E0            [24] 7454 	push	acc
      001BBB 8E 82            [24] 7455 	mov	dpl,r6
      001BBD 8F 83            [24] 7456 	mov	dph,r7
      001BBF 12 4C 7C         [24] 7457 	lcall	_checksignedlimit16
      001BC2 AF 82            [24] 7458 	mov	r7,dpl
      001BC4 15 81            [12] 7459 	dec	sp
      001BC6 15 81            [12] 7460 	dec	sp
      001BC8 EF               [12] 7461 	mov	a,r7
      001BC9 70 02            [24] 7462 	jnz	00102$
                           001068  7463 	C$easyax5043.c$1008$1$322 ==.
                                   7464 ;	..\COMMON\easyax5043.c:1008: return;
      001BCB 80 29            [24] 7465 	sjmp	00103$
      001BCD                       7466 00102$:
                           00106A  7467 	C$easyax5043.c$1010$2$322 ==.
                                   7468 ;	..\COMMON\easyax5043.c:1010: int16_t __autodata c = axradio_sync_periodcorr;
      001BCD 90 00 15         [24] 7469 	mov	dptr,#_axradio_sync_periodcorr
      001BD0 E0               [24] 7470 	movx	a,@dptr
      001BD1 FE               [12] 7471 	mov	r6,a
      001BD2 A3               [24] 7472 	inc	dptr
      001BD3 E0               [24] 7473 	movx	a,@dptr
                           001071  7474 	C$easyax5043.c$1011$2$323 ==.
                                   7475 ;	..\COMMON\easyax5043.c:1011: axradio_sync_addtime(c >> SYNC_K1);
      001BD4 FF               [12] 7476 	mov	r7,a
      001BD5 C4               [12] 7477 	swap	a
      001BD6 03               [12] 7478 	rr	a
      001BD7 CE               [12] 7479 	xch	a,r6
      001BD8 C4               [12] 7480 	swap	a
      001BD9 03               [12] 7481 	rr	a
      001BDA 54 07            [12] 7482 	anl	a,#0x07
      001BDC 6E               [12] 7483 	xrl	a,r6
      001BDD CE               [12] 7484 	xch	a,r6
      001BDE 54 07            [12] 7485 	anl	a,#0x07
      001BE0 CE               [12] 7486 	xch	a,r6
      001BE1 6E               [12] 7487 	xrl	a,r6
      001BE2 CE               [12] 7488 	xch	a,r6
      001BE3 30 E2 02         [24] 7489 	jnb	acc.2,00109$
      001BE6 44 F8            [12] 7490 	orl	a,#0xf8
      001BE8                       7491 00109$:
      001BE8 FF               [12] 7492 	mov	r7,a
      001BE9 33               [12] 7493 	rlc	a
      001BEA 95 E0            [12] 7494 	subb	a,acc
      001BEC FD               [12] 7495 	mov	r5,a
      001BED 8E 82            [24] 7496 	mov	dpl,r6
      001BEF 8F 83            [24] 7497 	mov	dph,r7
      001BF1 8D F0            [24] 7498 	mov	b,r5
      001BF3 12 19 D6         [24] 7499 	lcall	_axradio_sync_addtime
      001BF6                       7500 00103$:
                           001093  7501 	C$easyax5043.c$1013$2$323 ==.
                           001093  7502 	XFeasyax5043$axradio_sync_slave_nextperiod$0$0 ==.
      001BF6 22               [24] 7503 	ret
                                   7504 ;------------------------------------------------------------
                                   7505 ;Allocation info for local variables in function 'axradio_timer_callback'
                                   7506 ;------------------------------------------------------------
                                   7507 ;desc                      Allocated to registers 
                                   7508 ;r                         Allocated to registers r7 
                                   7509 ;idx                       Allocated to registers r7 
                                   7510 ;rs                        Allocated to registers r6 
                                   7511 ;idx                       Allocated to registers r7 
                                   7512 ;------------------------------------------------------------
                           001094  7513 	Feasyax5043$axradio_timer_callback$0$0 ==.
                           001094  7514 	C$easyax5043.c$1017$2$323 ==.
                                   7515 ;	..\COMMON\easyax5043.c:1017: static void axradio_timer_callback(struct wtimer_desc __xdata *desc)
                                   7516 ;	-----------------------------------------
                                   7517 ;	 function axradio_timer_callback
                                   7518 ;	-----------------------------------------
      001BF7                       7519 _axradio_timer_callback:
                           001094  7520 	C$easyax5043.c$1020$1$325 ==.
                                   7521 ;	..\COMMON\easyax5043.c:1020: switch (axradio_mode) {
      001BF7 AF 08            [24] 7522 	mov	r7,_axradio_mode
      001BF9 BF 10 00         [24] 7523 	cjne	r7,#0x10,00266$
      001BFC                       7524 00266$:
      001BFC 50 03            [24] 7525 	jnc	00267$
      001BFE 02 24 4C         [24] 7526 	ljmp	00177$
      001C01                       7527 00267$:
      001C01 EF               [12] 7528 	mov	a,r7
      001C02 24 CC            [12] 7529 	add	a,#0xff - 0x33
      001C04 50 03            [24] 7530 	jnc	00268$
      001C06 02 24 4C         [24] 7531 	ljmp	00177$
      001C09                       7532 00268$:
      001C09 EF               [12] 7533 	mov	a,r7
      001C0A 24 F0            [12] 7534 	add	a,#0xf0
      001C0C FF               [12] 7535 	mov	r7,a
      001C0D 24 0A            [12] 7536 	add	a,#(00269$-3-.)
      001C0F 83               [24] 7537 	movc	a,@a+pc
      001C10 F5 82            [12] 7538 	mov	dpl,a
      001C12 EF               [12] 7539 	mov	a,r7
      001C13 24 28            [12] 7540 	add	a,#(00270$-3-.)
      001C15 83               [24] 7541 	movc	a,@a+pc
      001C16 F5 83            [12] 7542 	mov	dph,a
      001C18 E4               [12] 7543 	clr	a
      001C19 73               [24] 7544 	jmp	@a+dptr
      001C1A                       7545 00269$:
      001C1A 05                    7546 	.db	00112$
      001C1B 05                    7547 	.db	00113$
      001C1C 9E                    7548 	.db	00123$
      001C1D 9E                    7549 	.db	00124$
      001C1E 4C                    7550 	.db	00175$
      001C1F 4C                    7551 	.db	00175$
      001C20 4C                    7552 	.db	00175$
      001C21 4C                    7553 	.db	00175$
      001C22 4C                    7554 	.db	00175$
      001C23 4C                    7555 	.db	00175$
      001C24 4C                    7556 	.db	00175$
      001C25 4C                    7557 	.db	00175$
      001C26 4C                    7558 	.db	00175$
      001C27 4C                    7559 	.db	00175$
      001C28 4C                    7560 	.db	00175$
      001C29 4C                    7561 	.db	00175$
      001C2A 62                    7562 	.db	00106$
      001C2B 62                    7563 	.db	00107$
      001C2C 06                    7564 	.db	00129$
      001C2D 06                    7565 	.db	00130$
      001C2E 4C                    7566 	.db	00175$
      001C2F 4C                    7567 	.db	00175$
      001C30 4C                    7568 	.db	00175$
      001C31 4C                    7569 	.db	00175$
      001C32 62                    7570 	.db	00102$
      001C33 62                    7571 	.db	00103$
      001C34 62                    7572 	.db	00104$
      001C35 62                    7573 	.db	00105$
      001C36 62                    7574 	.db	00101$
      001C37 4C                    7575 	.db	00175$
      001C38 4C                    7576 	.db	00175$
      001C39 4C                    7577 	.db	00175$
      001C3A 9E                    7578 	.db	00139$
      001C3B 9E                    7579 	.db	00140$
      001C3C 43                    7580 	.db	00152$
      001C3D 43                    7581 	.db	00153$
      001C3E                       7582 00270$:
      001C3E 1D                    7583 	.db	00112$>>8
      001C3F 1D                    7584 	.db	00113$>>8
      001C40 1D                    7585 	.db	00123$>>8
      001C41 1D                    7586 	.db	00124$>>8
      001C42 24                    7587 	.db	00175$>>8
      001C43 24                    7588 	.db	00175$>>8
      001C44 24                    7589 	.db	00175$>>8
      001C45 24                    7590 	.db	00175$>>8
      001C46 24                    7591 	.db	00175$>>8
      001C47 24                    7592 	.db	00175$>>8
      001C48 24                    7593 	.db	00175$>>8
      001C49 24                    7594 	.db	00175$>>8
      001C4A 24                    7595 	.db	00175$>>8
      001C4B 24                    7596 	.db	00175$>>8
      001C4C 24                    7597 	.db	00175$>>8
      001C4D 24                    7598 	.db	00175$>>8
      001C4E 1C                    7599 	.db	00106$>>8
      001C4F 1C                    7600 	.db	00107$>>8
      001C50 1E                    7601 	.db	00129$>>8
      001C51 1E                    7602 	.db	00130$>>8
      001C52 24                    7603 	.db	00175$>>8
      001C53 24                    7604 	.db	00175$>>8
      001C54 24                    7605 	.db	00175$>>8
      001C55 24                    7606 	.db	00175$>>8
      001C56 1C                    7607 	.db	00102$>>8
      001C57 1C                    7608 	.db	00103$>>8
      001C58 1C                    7609 	.db	00104$>>8
      001C59 1C                    7610 	.db	00105$>>8
      001C5A 1C                    7611 	.db	00101$>>8
      001C5B 24                    7612 	.db	00175$>>8
      001C5C 24                    7613 	.db	00175$>>8
      001C5D 24                    7614 	.db	00175$>>8
      001C5E 1E                    7615 	.db	00139$>>8
      001C5F 1E                    7616 	.db	00140$>>8
      001C60 20                    7617 	.db	00152$>>8
      001C61 20                    7618 	.db	00153$>>8
                           0010FF  7619 	C$easyax5043.c$1021$2$326 ==.
                                   7620 ;	..\COMMON\easyax5043.c:1021: case AXRADIO_MODE_STREAM_RECEIVE:
      001C62                       7621 00101$:
                           0010FF  7622 	C$easyax5043.c$1022$2$326 ==.
                                   7623 ;	..\COMMON\easyax5043.c:1022: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
      001C62                       7624 00102$:
                           0010FF  7625 	C$easyax5043.c$1023$2$326 ==.
                                   7626 ;	..\COMMON\easyax5043.c:1023: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
      001C62                       7627 00103$:
                           0010FF  7628 	C$easyax5043.c$1024$2$326 ==.
                                   7629 ;	..\COMMON\easyax5043.c:1024: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
      001C62                       7630 00104$:
                           0010FF  7631 	C$easyax5043.c$1025$2$326 ==.
                                   7632 ;	..\COMMON\easyax5043.c:1025: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
      001C62                       7633 00105$:
                           0010FF  7634 	C$easyax5043.c$1026$2$326 ==.
                                   7635 ;	..\COMMON\easyax5043.c:1026: case AXRADIO_MODE_ASYNC_RECEIVE:
      001C62                       7636 00106$:
                           0010FF  7637 	C$easyax5043.c$1027$2$326 ==.
                                   7638 ;	..\COMMON\easyax5043.c:1027: case AXRADIO_MODE_WOR_RECEIVE:
      001C62                       7639 00107$:
                           0010FF  7640 	C$easyax5043.c$1028$2$326 ==.
                                   7641 ;	..\COMMON\easyax5043.c:1028: if (axradio_syncstate == syncstate_asynctx)
      001C62 90 00 05         [24] 7642 	mov	dptr,#_axradio_syncstate
      001C65 E0               [24] 7643 	movx	a,@dptr
      001C66 FF               [12] 7644 	mov	r7,a
      001C67 BF 02 03         [24] 7645 	cjne	r7,#0x02,00271$
      001C6A 02 1D 05         [24] 7646 	ljmp	00114$
      001C6D                       7647 00271$:
                           00110A  7648 	C$easyax5043.c$1030$2$326 ==.
                                   7649 ;	..\COMMON\easyax5043.c:1030: wtimer_remove(&axradio_timer);
      001C6D 90 02 8A         [24] 7650 	mov	dptr,#_axradio_timer
      001C70 12 4D D3         [24] 7651 	lcall	_wtimer_remove
                           001110  7652 	C$easyax5043.c$1031$2$326 ==.
                                   7653 ;	..\COMMON\easyax5043.c:1031: rearmcstimer:
      001C73                       7654 00110$:
                           001110  7655 	C$easyax5043.c$1032$2$326 ==.
                                   7656 ;	..\COMMON\easyax5043.c:1032: axradio_timer.time = axradio_phy_cs_period;
      001C73 90 55 C4         [24] 7657 	mov	dptr,#_axradio_phy_cs_period
      001C76 E4               [12] 7658 	clr	a
      001C77 93               [24] 7659 	movc	a,@a+dptr
      001C78 FE               [12] 7660 	mov	r6,a
      001C79 74 01            [12] 7661 	mov	a,#0x01
      001C7B 93               [24] 7662 	movc	a,@a+dptr
      001C7C FF               [12] 7663 	mov	r7,a
      001C7D 7D 00            [12] 7664 	mov	r5,#0x00
      001C7F 7C 00            [12] 7665 	mov	r4,#0x00
      001C81 90 02 8E         [24] 7666 	mov	dptr,#(_axradio_timer + 0x0004)
      001C84 EE               [12] 7667 	mov	a,r6
      001C85 F0               [24] 7668 	movx	@dptr,a
      001C86 EF               [12] 7669 	mov	a,r7
      001C87 A3               [24] 7670 	inc	dptr
      001C88 F0               [24] 7671 	movx	@dptr,a
      001C89 ED               [12] 7672 	mov	a,r5
      001C8A A3               [24] 7673 	inc	dptr
      001C8B F0               [24] 7674 	movx	@dptr,a
      001C8C EC               [12] 7675 	mov	a,r4
      001C8D A3               [24] 7676 	inc	dptr
      001C8E F0               [24] 7677 	movx	@dptr,a
                           00112C  7678 	C$easyax5043.c$1033$2$326 ==.
                                   7679 ;	..\COMMON\easyax5043.c:1033: wtimer0_addrelative(&axradio_timer);
      001C8F 90 02 8A         [24] 7680 	mov	dptr,#_axradio_timer
      001C92 12 46 BC         [24] 7681 	lcall	_wtimer0_addrelative
                           001132  7682 	C$easyax5043.c$1034$2$326 ==.
                                   7683 ;	..\COMMON\easyax5043.c:1034: chanstatecb:
      001C95                       7684 00111$:
                           001132  7685 	C$easyax5043.c$1035$2$326 ==.
                                   7686 ;	..\COMMON\easyax5043.c:1035: update_timeanchor();
      001C95 12 0B 63         [24] 7687 	lcall	_update_timeanchor
                           001135  7688 	C$easyax5043.c$1036$2$326 ==.
                                   7689 ;	..\COMMON\easyax5043.c:1036: wtimer_remove_callback(&axradio_cb_channelstate.cb);
      001C98 90 02 5F         [24] 7690 	mov	dptr,#_axradio_cb_channelstate
      001C9B 12 51 BE         [24] 7691 	lcall	_wtimer_remove_callback
                           00113B  7692 	C$easyax5043.c$1037$2$326 ==.
                                   7693 ;	..\COMMON\easyax5043.c:1037: axradio_cb_channelstate.st.error = AXRADIO_ERR_NOERROR;
      001C9E 90 02 64         [24] 7694 	mov	dptr,#(_axradio_cb_channelstate + 0x0005)
      001CA1 E4               [12] 7695 	clr	a
      001CA2 F0               [24] 7696 	movx	@dptr,a
                           001140  7697 	C$easyax5043.c$1039$3$326 ==.
                                   7698 ;	..\COMMON\easyax5043.c:1039: int8_t __autodata r = AX5043_RSSI;
      001CA3 90 40 40         [24] 7699 	mov	dptr,#_AX5043_RSSI
      001CA6 E0               [24] 7700 	movx	a,@dptr
                           001144  7701 	C$easyax5043.c$1040$3$327 ==.
                                   7702 ;	..\COMMON\easyax5043.c:1040: axradio_cb_channelstate.st.cs.rssi = r - (int16_t)axradio_phy_rssioffset;
      001CA7 FF               [12] 7703 	mov	r7,a
      001CA8 FD               [12] 7704 	mov	r5,a
      001CA9 33               [12] 7705 	rlc	a
      001CAA 95 E0            [12] 7706 	subb	a,acc
      001CAC FE               [12] 7707 	mov	r6,a
      001CAD 90 55 C1         [24] 7708 	mov	dptr,#_axradio_phy_rssioffset
      001CB0 E4               [12] 7709 	clr	a
      001CB1 93               [24] 7710 	movc	a,@a+dptr
      001CB2 FC               [12] 7711 	mov	r4,a
      001CB3 33               [12] 7712 	rlc	a
      001CB4 95 E0            [12] 7713 	subb	a,acc
      001CB6 FB               [12] 7714 	mov	r3,a
      001CB7 ED               [12] 7715 	mov	a,r5
      001CB8 C3               [12] 7716 	clr	c
      001CB9 9C               [12] 7717 	subb	a,r4
      001CBA FD               [12] 7718 	mov	r5,a
      001CBB EE               [12] 7719 	mov	a,r6
      001CBC 9B               [12] 7720 	subb	a,r3
      001CBD FE               [12] 7721 	mov	r6,a
      001CBE 90 02 69         [24] 7722 	mov	dptr,#(_axradio_cb_channelstate + 0x000a)
      001CC1 ED               [12] 7723 	mov	a,r5
      001CC2 F0               [24] 7724 	movx	@dptr,a
      001CC3 EE               [12] 7725 	mov	a,r6
      001CC4 A3               [24] 7726 	inc	dptr
      001CC5 F0               [24] 7727 	movx	@dptr,a
                           001163  7728 	C$easyax5043.c$1041$3$327 ==.
                                   7729 ;	..\COMMON\easyax5043.c:1041: axradio_cb_channelstate.st.cs.busy = r >= axradio_phy_channelbusy;
      001CC6 90 55 C3         [24] 7730 	mov	dptr,#_axradio_phy_channelbusy
      001CC9 E4               [12] 7731 	clr	a
      001CCA 93               [24] 7732 	movc	a,@a+dptr
      001CCB FE               [12] 7733 	mov	r6,a
      001CCC C3               [12] 7734 	clr	c
      001CCD EF               [12] 7735 	mov	a,r7
      001CCE 64 80            [12] 7736 	xrl	a,#0x80
      001CD0 8E F0            [24] 7737 	mov	b,r6
      001CD2 63 F0 80         [24] 7738 	xrl	b,#0x80
      001CD5 95 F0            [12] 7739 	subb	a,b
      001CD7 B3               [12] 7740 	cpl	c
      001CD8 92 00            [24] 7741 	mov	_axradio_timer_callback_sloc0_1_0,c
      001CDA E4               [12] 7742 	clr	a
      001CDB 33               [12] 7743 	rlc	a
      001CDC 90 02 6B         [24] 7744 	mov	dptr,#(_axradio_cb_channelstate + 0x000c)
      001CDF F0               [24] 7745 	movx	@dptr,a
                           00117D  7746 	C$easyax5043.c$1043$2$326 ==.
                                   7747 ;	..\COMMON\easyax5043.c:1043: axradio_cb_channelstate.st.time.t = axradio_timeanchor.radiotimer;
      001CE0 90 00 1B         [24] 7748 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001CE3 E0               [24] 7749 	movx	a,@dptr
      001CE4 FC               [12] 7750 	mov	r4,a
      001CE5 A3               [24] 7751 	inc	dptr
      001CE6 E0               [24] 7752 	movx	a,@dptr
      001CE7 FD               [12] 7753 	mov	r5,a
      001CE8 A3               [24] 7754 	inc	dptr
      001CE9 E0               [24] 7755 	movx	a,@dptr
      001CEA FE               [12] 7756 	mov	r6,a
      001CEB A3               [24] 7757 	inc	dptr
      001CEC E0               [24] 7758 	movx	a,@dptr
      001CED FF               [12] 7759 	mov	r7,a
      001CEE 90 02 65         [24] 7760 	mov	dptr,#(_axradio_cb_channelstate + 0x0006)
      001CF1 EC               [12] 7761 	mov	a,r4
      001CF2 F0               [24] 7762 	movx	@dptr,a
      001CF3 ED               [12] 7763 	mov	a,r5
      001CF4 A3               [24] 7764 	inc	dptr
      001CF5 F0               [24] 7765 	movx	@dptr,a
      001CF6 EE               [12] 7766 	mov	a,r6
      001CF7 A3               [24] 7767 	inc	dptr
      001CF8 F0               [24] 7768 	movx	@dptr,a
      001CF9 EF               [12] 7769 	mov	a,r7
      001CFA A3               [24] 7770 	inc	dptr
      001CFB F0               [24] 7771 	movx	@dptr,a
                           001199  7772 	C$easyax5043.c$1044$2$326 ==.
                                   7773 ;	..\COMMON\easyax5043.c:1044: wtimer_add_callback(&axradio_cb_channelstate.cb);
      001CFC 90 02 5F         [24] 7774 	mov	dptr,#_axradio_cb_channelstate
      001CFF 12 46 A2         [24] 7775 	lcall	_wtimer_add_callback
                           00119F  7776 	C$easyax5043.c$1045$2$326 ==.
                                   7777 ;	..\COMMON\easyax5043.c:1045: break;
      001D02 02 24 4C         [24] 7778 	ljmp	00177$
                           0011A2  7779 	C$easyax5043.c$1047$2$326 ==.
                                   7780 ;	..\COMMON\easyax5043.c:1047: case AXRADIO_MODE_ASYNC_TRANSMIT:
      001D05                       7781 00112$:
                           0011A2  7782 	C$easyax5043.c$1048$2$326 ==.
                                   7783 ;	..\COMMON\easyax5043.c:1048: case AXRADIO_MODE_WOR_TRANSMIT:
      001D05                       7784 00113$:
                           0011A2  7785 	C$easyax5043.c$1049$2$326 ==.
                                   7786 ;	..\COMMON\easyax5043.c:1049: transmitcs:
      001D05                       7787 00114$:
                           0011A2  7788 	C$easyax5043.c$1050$2$326 ==.
                                   7789 ;	..\COMMON\easyax5043.c:1050: if (axradio_ack_count)
      001D05 90 00 0F         [24] 7790 	mov	dptr,#_axradio_ack_count
      001D08 E0               [24] 7791 	movx	a,@dptr
      001D09 FF               [12] 7792 	mov	r7,a
      001D0A E0               [24] 7793 	movx	a,@dptr
      001D0B 60 06            [24] 7794 	jz	00116$
                           0011AA  7795 	C$easyax5043.c$1051$2$326 ==.
                                   7796 ;	..\COMMON\easyax5043.c:1051: --axradio_ack_count;
      001D0D EF               [12] 7797 	mov	a,r7
      001D0E 14               [12] 7798 	dec	a
      001D0F 90 00 0F         [24] 7799 	mov	dptr,#_axradio_ack_count
      001D12 F0               [24] 7800 	movx	@dptr,a
      001D13                       7801 00116$:
                           0011B0  7802 	C$easyax5043.c$1052$2$326 ==.
                                   7803 ;	..\COMMON\easyax5043.c:1052: wtimer_remove(&axradio_timer);
      001D13 90 02 8A         [24] 7804 	mov	dptr,#_axradio_timer
      001D16 12 4D D3         [24] 7805 	lcall	_wtimer_remove
                           0011B6  7806 	C$easyax5043.c$1053$2$326 ==.
                                   7807 ;	..\COMMON\easyax5043.c:1053: if ((int8_t)AX5043_RSSI < axradio_phy_channelbusy ||
      001D19 90 40 40         [24] 7808 	mov	dptr,#_AX5043_RSSI
      001D1C E0               [24] 7809 	movx	a,@dptr
      001D1D FF               [12] 7810 	mov	r7,a
      001D1E 90 55 C3         [24] 7811 	mov	dptr,#_axradio_phy_channelbusy
      001D21 E4               [12] 7812 	clr	a
      001D22 93               [24] 7813 	movc	a,@a+dptr
      001D23 FE               [12] 7814 	mov	r6,a
      001D24 C3               [12] 7815 	clr	c
      001D25 EF               [12] 7816 	mov	a,r7
      001D26 64 80            [12] 7817 	xrl	a,#0x80
      001D28 8E F0            [24] 7818 	mov	b,r6
      001D2A 63 F0 80         [24] 7819 	xrl	b,#0x80
      001D2D 95 F0            [12] 7820 	subb	a,b
      001D2F 40 0F            [24] 7821 	jc	00117$
                           0011CE  7822 	C$easyax5043.c$1054$2$326 ==.
                                   7823 ;	..\COMMON\easyax5043.c:1054: (!axradio_ack_count && axradio_phy_lbt_forcetx)) {
      001D31 90 00 0F         [24] 7824 	mov	dptr,#_axradio_ack_count
      001D34 E0               [24] 7825 	movx	a,@dptr
      001D35 FF               [12] 7826 	mov	r7,a
      001D36 E0               [24] 7827 	movx	a,@dptr
      001D37 70 23            [24] 7828 	jnz	00118$
      001D39 90 55 C8         [24] 7829 	mov	dptr,#_axradio_phy_lbt_forcetx
      001D3C E4               [12] 7830 	clr	a
      001D3D 93               [24] 7831 	movc	a,@a+dptr
      001D3E 60 1C            [24] 7832 	jz	00118$
      001D40                       7833 00117$:
                           0011DD  7834 	C$easyax5043.c$1055$3$328 ==.
                                   7835 ;	..\COMMON\easyax5043.c:1055: axradio_syncstate = syncstate_off;
      001D40 90 00 05         [24] 7836 	mov	dptr,#_axradio_syncstate
      001D43 E4               [12] 7837 	clr	a
      001D44 F0               [24] 7838 	movx	@dptr,a
                           0011E2  7839 	C$easyax5043.c$1056$3$328 ==.
                                   7840 ;	..\COMMON\easyax5043.c:1056: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001D45 90 55 CD         [24] 7841 	mov	dptr,#_axradio_phy_preamble_longlen
                                   7842 ;	genFromRTrack removed	clr	a
      001D48 93               [24] 7843 	movc	a,@a+dptr
      001D49 FD               [12] 7844 	mov	r5,a
      001D4A 74 01            [12] 7845 	mov	a,#0x01
      001D4C 93               [24] 7846 	movc	a,@a+dptr
      001D4D FE               [12] 7847 	mov	r6,a
      001D4E 90 00 08         [24] 7848 	mov	dptr,#_axradio_txbuffer_cnt
      001D51 ED               [12] 7849 	mov	a,r5
      001D52 F0               [24] 7850 	movx	@dptr,a
      001D53 EE               [12] 7851 	mov	a,r6
      001D54 A3               [24] 7852 	inc	dptr
      001D55 F0               [24] 7853 	movx	@dptr,a
                           0011F3  7854 	C$easyax5043.c$1057$3$328 ==.
                                   7855 ;	..\COMMON\easyax5043.c:1057: ax5043_prepare_tx();
      001D56 12 18 05         [24] 7856 	lcall	_ax5043_prepare_tx
                           0011F6  7857 	C$easyax5043.c$1058$3$328 ==.
                                   7858 ;	..\COMMON\easyax5043.c:1058: goto chanstatecb;
      001D59 02 1C 95         [24] 7859 	ljmp	00111$
      001D5C                       7860 00118$:
                           0011F9  7861 	C$easyax5043.c$1060$2$326 ==.
                                   7862 ;	..\COMMON\easyax5043.c:1060: if (axradio_ack_count)
      001D5C EF               [12] 7863 	mov	a,r7
      001D5D 60 03            [24] 7864 	jz	00276$
      001D5F 02 1C 73         [24] 7865 	ljmp	00110$
      001D62                       7866 00276$:
                           0011FF  7867 	C$easyax5043.c$1062$2$326 ==.
                                   7868 ;	..\COMMON\easyax5043.c:1062: update_timeanchor();
      001D62 12 0B 63         [24] 7869 	lcall	_update_timeanchor
                           001202  7870 	C$easyax5043.c$1063$2$326 ==.
                                   7871 ;	..\COMMON\easyax5043.c:1063: axradio_syncstate = syncstate_off;
      001D65 90 00 05         [24] 7872 	mov	dptr,#_axradio_syncstate
      001D68 E4               [12] 7873 	clr	a
      001D69 F0               [24] 7874 	movx	@dptr,a
                           001207  7875 	C$easyax5043.c$1064$2$326 ==.
                                   7876 ;	..\COMMON\easyax5043.c:1064: ax5043_off();
      001D6A 12 18 2E         [24] 7877 	lcall	_ax5043_off
                           00120A  7878 	C$easyax5043.c$1065$2$326 ==.
                                   7879 ;	..\COMMON\easyax5043.c:1065: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      001D6D 90 02 6C         [24] 7880 	mov	dptr,#_axradio_cb_transmitstart
      001D70 12 51 BE         [24] 7881 	lcall	_wtimer_remove_callback
                           001210  7882 	C$easyax5043.c$1066$2$326 ==.
                                   7883 ;	..\COMMON\easyax5043.c:1066: axradio_cb_transmitstart.st.error = AXRADIO_ERR_TIMEOUT;
      001D73 90 02 71         [24] 7884 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001D76 74 03            [12] 7885 	mov	a,#0x03
      001D78 F0               [24] 7886 	movx	@dptr,a
                           001216  7887 	C$easyax5043.c$1067$2$326 ==.
                                   7888 ;	..\COMMON\easyax5043.c:1067: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      001D79 90 00 1B         [24] 7889 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001D7C E0               [24] 7890 	movx	a,@dptr
      001D7D FC               [12] 7891 	mov	r4,a
      001D7E A3               [24] 7892 	inc	dptr
      001D7F E0               [24] 7893 	movx	a,@dptr
      001D80 FD               [12] 7894 	mov	r5,a
      001D81 A3               [24] 7895 	inc	dptr
      001D82 E0               [24] 7896 	movx	a,@dptr
      001D83 FE               [12] 7897 	mov	r6,a
      001D84 A3               [24] 7898 	inc	dptr
      001D85 E0               [24] 7899 	movx	a,@dptr
      001D86 FF               [12] 7900 	mov	r7,a
      001D87 90 02 72         [24] 7901 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001D8A EC               [12] 7902 	mov	a,r4
      001D8B F0               [24] 7903 	movx	@dptr,a
      001D8C ED               [12] 7904 	mov	a,r5
      001D8D A3               [24] 7905 	inc	dptr
      001D8E F0               [24] 7906 	movx	@dptr,a
      001D8F EE               [12] 7907 	mov	a,r6
      001D90 A3               [24] 7908 	inc	dptr
      001D91 F0               [24] 7909 	movx	@dptr,a
      001D92 EF               [12] 7910 	mov	a,r7
      001D93 A3               [24] 7911 	inc	dptr
      001D94 F0               [24] 7912 	movx	@dptr,a
                           001232  7913 	C$easyax5043.c$1068$2$326 ==.
                                   7914 ;	..\COMMON\easyax5043.c:1068: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001D95 90 02 6C         [24] 7915 	mov	dptr,#_axradio_cb_transmitstart
      001D98 12 46 A2         [24] 7916 	lcall	_wtimer_add_callback
                           001238  7917 	C$easyax5043.c$1069$2$326 ==.
                                   7918 ;	..\COMMON\easyax5043.c:1069: break;
      001D9B 02 24 4C         [24] 7919 	ljmp	00177$
                           00123B  7920 	C$easyax5043.c$1071$2$326 ==.
                                   7921 ;	..\COMMON\easyax5043.c:1071: case AXRADIO_MODE_ACK_TRANSMIT:
      001D9E                       7922 00123$:
                           00123B  7923 	C$easyax5043.c$1072$2$326 ==.
                                   7924 ;	..\COMMON\easyax5043.c:1072: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      001D9E                       7925 00124$:
                           00123B  7926 	C$easyax5043.c$1073$2$326 ==.
                                   7927 ;	..\COMMON\easyax5043.c:1073: if (axradio_syncstate == syncstate_lbt)
      001D9E 90 00 05         [24] 7928 	mov	dptr,#_axradio_syncstate
      001DA1 E0               [24] 7929 	movx	a,@dptr
      001DA2 FF               [12] 7930 	mov	r7,a
      001DA3 BF 01 03         [24] 7931 	cjne	r7,#0x01,00277$
      001DA6 02 1D 05         [24] 7932 	ljmp	00114$
      001DA9                       7933 00277$:
                           001246  7934 	C$easyax5043.c$1075$2$326 ==.
                                   7935 ;	..\COMMON\easyax5043.c:1075: ax5043_off();
      001DA9 12 18 2E         [24] 7936 	lcall	_ax5043_off
                           001249  7937 	C$easyax5043.c$1076$2$326 ==.
                                   7938 ;	..\COMMON\easyax5043.c:1076: if (!axradio_ack_count) {
      001DAC 90 00 0F         [24] 7939 	mov	dptr,#_axradio_ack_count
      001DAF E0               [24] 7940 	movx	a,@dptr
      001DB0 FF               [12] 7941 	mov	r7,a
      001DB1 E0               [24] 7942 	movx	a,@dptr
      001DB2 70 34            [24] 7943 	jnz	00128$
                           001251  7944 	C$easyax5043.c$1077$3$329 ==.
                                   7945 ;	..\COMMON\easyax5043.c:1077: update_timeanchor();
      001DB4 12 0B 63         [24] 7946 	lcall	_update_timeanchor
                           001254  7947 	C$easyax5043.c$1078$3$329 ==.
                                   7948 ;	..\COMMON\easyax5043.c:1078: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      001DB7 90 02 76         [24] 7949 	mov	dptr,#_axradio_cb_transmitend
      001DBA 12 51 BE         [24] 7950 	lcall	_wtimer_remove_callback
                           00125A  7951 	C$easyax5043.c$1079$3$329 ==.
                                   7952 ;	..\COMMON\easyax5043.c:1079: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
      001DBD 90 02 7B         [24] 7953 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      001DC0 74 03            [12] 7954 	mov	a,#0x03
      001DC2 F0               [24] 7955 	movx	@dptr,a
                           001260  7956 	C$easyax5043.c$1080$3$329 ==.
                                   7957 ;	..\COMMON\easyax5043.c:1080: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      001DC3 90 00 1B         [24] 7958 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001DC6 E0               [24] 7959 	movx	a,@dptr
      001DC7 FB               [12] 7960 	mov	r3,a
      001DC8 A3               [24] 7961 	inc	dptr
      001DC9 E0               [24] 7962 	movx	a,@dptr
      001DCA FC               [12] 7963 	mov	r4,a
      001DCB A3               [24] 7964 	inc	dptr
      001DCC E0               [24] 7965 	movx	a,@dptr
      001DCD FD               [12] 7966 	mov	r5,a
      001DCE A3               [24] 7967 	inc	dptr
      001DCF E0               [24] 7968 	movx	a,@dptr
      001DD0 FE               [12] 7969 	mov	r6,a
      001DD1 90 02 7C         [24] 7970 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      001DD4 EB               [12] 7971 	mov	a,r3
      001DD5 F0               [24] 7972 	movx	@dptr,a
      001DD6 EC               [12] 7973 	mov	a,r4
      001DD7 A3               [24] 7974 	inc	dptr
      001DD8 F0               [24] 7975 	movx	@dptr,a
      001DD9 ED               [12] 7976 	mov	a,r5
      001DDA A3               [24] 7977 	inc	dptr
      001DDB F0               [24] 7978 	movx	@dptr,a
      001DDC EE               [12] 7979 	mov	a,r6
      001DDD A3               [24] 7980 	inc	dptr
      001DDE F0               [24] 7981 	movx	@dptr,a
                           00127C  7982 	C$easyax5043.c$1081$3$329 ==.
                                   7983 ;	..\COMMON\easyax5043.c:1081: wtimer_add_callback(&axradio_cb_transmitend.cb);
      001DDF 90 02 76         [24] 7984 	mov	dptr,#_axradio_cb_transmitend
      001DE2 12 46 A2         [24] 7985 	lcall	_wtimer_add_callback
                           001282  7986 	C$easyax5043.c$1082$3$329 ==.
                                   7987 ;	..\COMMON\easyax5043.c:1082: break;
      001DE5 02 24 4C         [24] 7988 	ljmp	00177$
      001DE8                       7989 00128$:
                           001285  7990 	C$easyax5043.c$1084$2$326 ==.
                                   7991 ;	..\COMMON\easyax5043.c:1084: --axradio_ack_count;
      001DE8 EF               [12] 7992 	mov	a,r7
      001DE9 14               [12] 7993 	dec	a
      001DEA 90 00 0F         [24] 7994 	mov	dptr,#_axradio_ack_count
      001DED F0               [24] 7995 	movx	@dptr,a
                           00128B  7996 	C$easyax5043.c$1085$2$326 ==.
                                   7997 ;	..\COMMON\easyax5043.c:1085: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001DEE 90 55 CD         [24] 7998 	mov	dptr,#_axradio_phy_preamble_longlen
      001DF1 E4               [12] 7999 	clr	a
      001DF2 93               [24] 8000 	movc	a,@a+dptr
      001DF3 FE               [12] 8001 	mov	r6,a
      001DF4 74 01            [12] 8002 	mov	a,#0x01
      001DF6 93               [24] 8003 	movc	a,@a+dptr
      001DF7 FF               [12] 8004 	mov	r7,a
      001DF8 90 00 08         [24] 8005 	mov	dptr,#_axradio_txbuffer_cnt
      001DFB EE               [12] 8006 	mov	a,r6
      001DFC F0               [24] 8007 	movx	@dptr,a
      001DFD EF               [12] 8008 	mov	a,r7
      001DFE A3               [24] 8009 	inc	dptr
      001DFF F0               [24] 8010 	movx	@dptr,a
                           00129D  8011 	C$easyax5043.c$1086$2$326 ==.
                                   8012 ;	..\COMMON\easyax5043.c:1086: ax5043_prepare_tx();
      001E00 12 18 05         [24] 8013 	lcall	_ax5043_prepare_tx
                           0012A0  8014 	C$easyax5043.c$1087$2$326 ==.
                                   8015 ;	..\COMMON\easyax5043.c:1087: break;
      001E03 02 24 4C         [24] 8016 	ljmp	00177$
                           0012A3  8017 	C$easyax5043.c$1089$2$326 ==.
                                   8018 ;	..\COMMON\easyax5043.c:1089: case AXRADIO_MODE_ACK_RECEIVE:
      001E06                       8019 00129$:
                           0012A3  8020 	C$easyax5043.c$1090$2$326 ==.
                                   8021 ;	..\COMMON\easyax5043.c:1090: case AXRADIO_MODE_WOR_ACK_RECEIVE:
      001E06                       8022 00130$:
                           0012A3  8023 	C$easyax5043.c$1091$2$326 ==.
                                   8024 ;	..\COMMON\easyax5043.c:1091: if (axradio_syncstate == syncstate_lbt)
      001E06 90 00 05         [24] 8025 	mov	dptr,#_axradio_syncstate
      001E09 E0               [24] 8026 	movx	a,@dptr
      001E0A FF               [12] 8027 	mov	r7,a
      001E0B BF 01 03         [24] 8028 	cjne	r7,#0x01,00279$
      001E0E 02 1D 05         [24] 8029 	ljmp	00114$
      001E11                       8030 00279$:
                           0012AE  8031 	C$easyax5043.c$1093$2$326 ==.
                                   8032 ;	..\COMMON\easyax5043.c:1093: transmitack:
      001E11                       8033 00133$:
                           0012AE  8034 	C$easyax5043.c$1094$2$326 ==.
                                   8035 ;	..\COMMON\easyax5043.c:1094: AX5043_FIFOSTAT = 3;
      001E11 90 40 28         [24] 8036 	mov	dptr,#_AX5043_FIFOSTAT
      001E14 74 03            [12] 8037 	mov	a,#0x03
      001E16 F0               [24] 8038 	movx	@dptr,a
                           0012B4  8039 	C$easyax5043.c$1095$2$326 ==.
                                   8040 ;	..\COMMON\easyax5043.c:1095: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
      001E17 90 40 02         [24] 8041 	mov	dptr,#_AX5043_PWRMODE
      001E1A 74 0D            [12] 8042 	mov	a,#0x0d
      001E1C F0               [24] 8043 	movx	@dptr,a
                           0012BA  8044 	C$easyax5043.c$1096$2$326 ==.
                                   8045 ;	..\COMMON\easyax5043.c:1096: while (!(AX5043_POWSTAT & 0x08)); // wait for modem vdd so writing the FIFO is safe
      001E1D                       8046 00134$:
      001E1D 90 40 03         [24] 8047 	mov	dptr,#_AX5043_POWSTAT
      001E20 E0               [24] 8048 	movx	a,@dptr
      001E21 FF               [12] 8049 	mov	r7,a
      001E22 30 E3 F8         [24] 8050 	jnb	acc.3,00134$
                           0012C2  8051 	C$easyax5043.c$1097$2$326 ==.
                                   8052 ;	..\COMMON\easyax5043.c:1097: ax5043_init_registers_tx();
      001E25 12 0C 3C         [24] 8053 	lcall	_ax5043_init_registers_tx
                           0012C5  8054 	C$easyax5043.c$1098$2$326 ==.
                                   8055 ;	..\COMMON\easyax5043.c:1098: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      001E28 90 40 0F         [24] 8056 	mov	dptr,#_AX5043_RADIOEVENTREQ0
      001E2B E0               [24] 8057 	movx	a,@dptr
                           0012C9  8058 	C$easyax5043.c$1099$2$326 ==.
                                   8059 ;	..\COMMON\easyax5043.c:1099: AX5043_FIFOTHRESH1 = 0;
      001E2C 90 40 2E         [24] 8060 	mov	dptr,#_AX5043_FIFOTHRESH1
      001E2F E4               [12] 8061 	clr	a
      001E30 F0               [24] 8062 	movx	@dptr,a
                           0012CE  8063 	C$easyax5043.c$1100$2$326 ==.
                                   8064 ;	..\COMMON\easyax5043.c:1100: AX5043_FIFOTHRESH0 = 0x80;
      001E31 90 40 2F         [24] 8065 	mov	dptr,#_AX5043_FIFOTHRESH0
      001E34 74 80            [12] 8066 	mov	a,#0x80
      001E36 F0               [24] 8067 	movx	@dptr,a
                           0012D4  8068 	C$easyax5043.c$1101$2$326 ==.
                                   8069 ;	..\COMMON\easyax5043.c:1101: axradio_trxstate = trxstate_tx_longpreamble;
      001E37 75 09 0A         [24] 8070 	mov	_axradio_trxstate,#0x0a
                           0012D7  8071 	C$easyax5043.c$1102$2$326 ==.
                                   8072 ;	..\COMMON\easyax5043.c:1102: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001E3A 90 55 CD         [24] 8073 	mov	dptr,#_axradio_phy_preamble_longlen
      001E3D E4               [12] 8074 	clr	a
      001E3E 93               [24] 8075 	movc	a,@a+dptr
      001E3F FE               [12] 8076 	mov	r6,a
      001E40 74 01            [12] 8077 	mov	a,#0x01
      001E42 93               [24] 8078 	movc	a,@a+dptr
      001E43 FF               [12] 8079 	mov	r7,a
      001E44 90 00 08         [24] 8080 	mov	dptr,#_axradio_txbuffer_cnt
      001E47 EE               [12] 8081 	mov	a,r6
      001E48 F0               [24] 8082 	movx	@dptr,a
      001E49 EF               [12] 8083 	mov	a,r7
      001E4A A3               [24] 8084 	inc	dptr
      001E4B F0               [24] 8085 	movx	@dptr,a
                           0012E9  8086 	C$easyax5043.c$1104$2$326 ==.
                                   8087 ;	..\COMMON\easyax5043.c:1104: if ((AX5043_MODULATION & 0x0F) == 9) { // 4-FSK
      001E4C 90 40 10         [24] 8088 	mov	dptr,#_AX5043_MODULATION
      001E4F E0               [24] 8089 	movx	a,@dptr
      001E50 FF               [12] 8090 	mov	r7,a
      001E51 53 07 0F         [24] 8091 	anl	ar7,#0x0f
      001E54 BF 09 0E         [24] 8092 	cjne	r7,#0x09,00138$
                           0012F4  8093 	C$easyax5043.c$1105$3$330 ==.
                                   8094 ;	..\COMMON\easyax5043.c:1105: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
      001E57 90 40 29         [24] 8095 	mov	dptr,#_AX5043_FIFODATA
      001E5A 74 E1            [12] 8096 	mov	a,#0xe1
      001E5C F0               [24] 8097 	movx	@dptr,a
                           0012FA  8098 	C$easyax5043.c$1106$3$330 ==.
                                   8099 ;	..\COMMON\easyax5043.c:1106: AX5043_FIFODATA = 2;  // length (including flags)
      001E5D 74 02            [12] 8100 	mov	a,#0x02
      001E5F F0               [24] 8101 	movx	@dptr,a
                           0012FD  8102 	C$easyax5043.c$1107$3$330 ==.
                                   8103 ;	..\COMMON\easyax5043.c:1107: AX5043_FIFODATA = 0x01;  // flag PKTSTART -> dibit sync
      001E60 14               [12] 8104 	dec	a
      001E61 F0               [24] 8105 	movx	@dptr,a
                           0012FF  8106 	C$easyax5043.c$1108$3$330 ==.
                                   8107 ;	..\COMMON\easyax5043.c:1108: AX5043_FIFODATA = 0x11; // dummy byte for forcing dibit sync
      001E62 74 11            [12] 8108 	mov	a,#0x11
      001E64 F0               [24] 8109 	movx	@dptr,a
      001E65                       8110 00138$:
                           001302  8111 	C$easyax5043.c$1115$2$326 ==.
                                   8112 ;	..\COMMON\easyax5043.c:1115: AX5043_IRQMASK0 = 0x08; // enable fifo free threshold
      001E65 90 40 07         [24] 8113 	mov	dptr,#_AX5043_IRQMASK0
      001E68 74 08            [12] 8114 	mov	a,#0x08
      001E6A F0               [24] 8115 	movx	@dptr,a
                           001308  8116 	C$easyax5043.c$1116$2$326 ==.
                                   8117 ;	..\COMMON\easyax5043.c:1116: update_timeanchor();
      001E6B 12 0B 63         [24] 8118 	lcall	_update_timeanchor
                           00130B  8119 	C$easyax5043.c$1117$2$326 ==.
                                   8120 ;	..\COMMON\easyax5043.c:1117: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      001E6E 90 02 6C         [24] 8121 	mov	dptr,#_axradio_cb_transmitstart
      001E71 12 51 BE         [24] 8122 	lcall	_wtimer_remove_callback
                           001311  8123 	C$easyax5043.c$1118$2$326 ==.
                                   8124 ;	..\COMMON\easyax5043.c:1118: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      001E74 90 02 71         [24] 8125 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001E77 E4               [12] 8126 	clr	a
      001E78 F0               [24] 8127 	movx	@dptr,a
                           001316  8128 	C$easyax5043.c$1119$2$326 ==.
                                   8129 ;	..\COMMON\easyax5043.c:1119: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      001E79 90 00 1B         [24] 8130 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001E7C E0               [24] 8131 	movx	a,@dptr
      001E7D FC               [12] 8132 	mov	r4,a
      001E7E A3               [24] 8133 	inc	dptr
      001E7F E0               [24] 8134 	movx	a,@dptr
      001E80 FD               [12] 8135 	mov	r5,a
      001E81 A3               [24] 8136 	inc	dptr
      001E82 E0               [24] 8137 	movx	a,@dptr
      001E83 FE               [12] 8138 	mov	r6,a
      001E84 A3               [24] 8139 	inc	dptr
      001E85 E0               [24] 8140 	movx	a,@dptr
      001E86 FF               [12] 8141 	mov	r7,a
      001E87 90 02 72         [24] 8142 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001E8A EC               [12] 8143 	mov	a,r4
      001E8B F0               [24] 8144 	movx	@dptr,a
      001E8C ED               [12] 8145 	mov	a,r5
      001E8D A3               [24] 8146 	inc	dptr
      001E8E F0               [24] 8147 	movx	@dptr,a
      001E8F EE               [12] 8148 	mov	a,r6
      001E90 A3               [24] 8149 	inc	dptr
      001E91 F0               [24] 8150 	movx	@dptr,a
      001E92 EF               [12] 8151 	mov	a,r7
      001E93 A3               [24] 8152 	inc	dptr
      001E94 F0               [24] 8153 	movx	@dptr,a
                           001332  8154 	C$easyax5043.c$1120$2$326 ==.
                                   8155 ;	..\COMMON\easyax5043.c:1120: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001E95 90 02 6C         [24] 8156 	mov	dptr,#_axradio_cb_transmitstart
      001E98 12 46 A2         [24] 8157 	lcall	_wtimer_add_callback
                           001338  8158 	C$easyax5043.c$1121$2$326 ==.
                                   8159 ;	..\COMMON\easyax5043.c:1121: break;
      001E9B 02 24 4C         [24] 8160 	ljmp	00177$
                           00133B  8161 	C$easyax5043.c$1123$2$326 ==.
                                   8162 ;	..\COMMON\easyax5043.c:1123: case AXRADIO_MODE_SYNC_MASTER:
      001E9E                       8163 00139$:
                           00133B  8164 	C$easyax5043.c$1124$2$326 ==.
                                   8165 ;	..\COMMON\easyax5043.c:1124: case AXRADIO_MODE_SYNC_ACK_MASTER:
      001E9E                       8166 00140$:
                           00133B  8167 	C$easyax5043.c$1125$2$326 ==.
                                   8168 ;	..\COMMON\easyax5043.c:1125: switch (axradio_syncstate) {
      001E9E 90 00 05         [24] 8169 	mov	dptr,#_axradio_syncstate
      001EA1 E0               [24] 8170 	movx	a,@dptr
      001EA2 FF               [12] 8171 	mov	r7,a
      001EA3 BF 04 02         [24] 8172 	cjne	r7,#0x04,00283$
      001EA6 80 5B            [24] 8173 	sjmp	00142$
      001EA8                       8174 00283$:
      001EA8 BF 05 03         [24] 8175 	cjne	r7,#0x05,00284$
      001EAB 02 1F E0         [24] 8176 	ljmp	00150$
      001EAE                       8177 00284$:
                           00134B  8178 	C$easyax5043.c$1127$3$331 ==.
                                   8179 ;	..\COMMON\easyax5043.c:1127: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
      001EAE 90 40 02         [24] 8180 	mov	dptr,#_AX5043_PWRMODE
      001EB1 74 05            [12] 8181 	mov	a,#0x05
      001EB3 F0               [24] 8182 	movx	@dptr,a
                           001351  8183 	C$easyax5043.c$1128$3$331 ==.
                                   8184 ;	..\COMMON\easyax5043.c:1128: ax5043_init_registers_tx();
      001EB4 12 0C 3C         [24] 8185 	lcall	_ax5043_init_registers_tx
                           001354  8186 	C$easyax5043.c$1129$3$331 ==.
                                   8187 ;	..\COMMON\easyax5043.c:1129: axradio_syncstate = syncstate_master_xostartup;
      001EB7 90 00 05         [24] 8188 	mov	dptr,#_axradio_syncstate
      001EBA 74 04            [12] 8189 	mov	a,#0x04
      001EBC F0               [24] 8190 	movx	@dptr,a
                           00135A  8191 	C$easyax5043.c$1130$3$331 ==.
                                   8192 ;	..\COMMON\easyax5043.c:1130: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      001EBD 90 02 80         [24] 8193 	mov	dptr,#_axradio_cb_transmitdata
      001EC0 12 51 BE         [24] 8194 	lcall	_wtimer_remove_callback
                           001360  8195 	C$easyax5043.c$1131$3$331 ==.
                                   8196 ;	..\COMMON\easyax5043.c:1131: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
      001EC3 90 02 85         [24] 8197 	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
      001EC6 E4               [12] 8198 	clr	a
      001EC7 F0               [24] 8199 	movx	@dptr,a
                           001365  8200 	C$easyax5043.c$1132$3$331 ==.
                                   8201 ;	..\COMMON\easyax5043.c:1132: axradio_cb_transmitdata.st.time.t = 0;
      001EC8 90 02 86         [24] 8202 	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
      001ECB F0               [24] 8203 	movx	@dptr,a
      001ECC A3               [24] 8204 	inc	dptr
      001ECD F0               [24] 8205 	movx	@dptr,a
      001ECE A3               [24] 8206 	inc	dptr
      001ECF F0               [24] 8207 	movx	@dptr,a
      001ED0 A3               [24] 8208 	inc	dptr
      001ED1 F0               [24] 8209 	movx	@dptr,a
                           00136F  8210 	C$easyax5043.c$1133$3$331 ==.
                                   8211 ;	..\COMMON\easyax5043.c:1133: wtimer_add_callback(&axradio_cb_transmitdata.cb);
      001ED2 90 02 80         [24] 8212 	mov	dptr,#_axradio_cb_transmitdata
      001ED5 12 46 A2         [24] 8213 	lcall	_wtimer_add_callback
                           001375  8214 	C$easyax5043.c$1134$3$331 ==.
                                   8215 ;	..\COMMON\easyax5043.c:1134: wtimer_remove(&axradio_timer);
      001ED8 90 02 8A         [24] 8216 	mov	dptr,#_axradio_timer
      001EDB 12 4D D3         [24] 8217 	lcall	_wtimer_remove
                           00137B  8218 	C$easyax5043.c$1135$3$331 ==.
                                   8219 ;	..\COMMON\easyax5043.c:1135: axradio_timer.time = axradio_sync_time;
      001EDE 90 00 11         [24] 8220 	mov	dptr,#_axradio_sync_time
      001EE1 E0               [24] 8221 	movx	a,@dptr
      001EE2 FC               [12] 8222 	mov	r4,a
      001EE3 A3               [24] 8223 	inc	dptr
      001EE4 E0               [24] 8224 	movx	a,@dptr
      001EE5 FD               [12] 8225 	mov	r5,a
      001EE6 A3               [24] 8226 	inc	dptr
      001EE7 E0               [24] 8227 	movx	a,@dptr
      001EE8 FE               [12] 8228 	mov	r6,a
      001EE9 A3               [24] 8229 	inc	dptr
      001EEA E0               [24] 8230 	movx	a,@dptr
      001EEB FF               [12] 8231 	mov	r7,a
      001EEC 90 02 8E         [24] 8232 	mov	dptr,#(_axradio_timer + 0x0004)
      001EEF EC               [12] 8233 	mov	a,r4
      001EF0 F0               [24] 8234 	movx	@dptr,a
      001EF1 ED               [12] 8235 	mov	a,r5
      001EF2 A3               [24] 8236 	inc	dptr
      001EF3 F0               [24] 8237 	movx	@dptr,a
      001EF4 EE               [12] 8238 	mov	a,r6
      001EF5 A3               [24] 8239 	inc	dptr
      001EF6 F0               [24] 8240 	movx	@dptr,a
      001EF7 EF               [12] 8241 	mov	a,r7
      001EF8 A3               [24] 8242 	inc	dptr
      001EF9 F0               [24] 8243 	movx	@dptr,a
                           001397  8244 	C$easyax5043.c$1136$3$331 ==.
                                   8245 ;	..\COMMON\easyax5043.c:1136: wtimer0_addabsolute(&axradio_timer);
      001EFA 90 02 8A         [24] 8246 	mov	dptr,#_axradio_timer
      001EFD 12 47 98         [24] 8247 	lcall	_wtimer0_addabsolute
                           00139D  8248 	C$easyax5043.c$1137$3$331 ==.
                                   8249 ;	..\COMMON\easyax5043.c:1137: break;
      001F00 02 24 4C         [24] 8250 	ljmp	00177$
                           0013A0  8251 	C$easyax5043.c$1139$3$331 ==.
                                   8252 ;	..\COMMON\easyax5043.c:1139: case syncstate_master_xostartup:
      001F03                       8253 00142$:
                           0013A0  8254 	C$easyax5043.c$1140$3$331 ==.
                                   8255 ;	..\COMMON\easyax5043.c:1140: AX5043_FIFOSTAT = 3;
      001F03 90 40 28         [24] 8256 	mov	dptr,#_AX5043_FIFOSTAT
      001F06 74 03            [12] 8257 	mov	a,#0x03
      001F08 F0               [24] 8258 	movx	@dptr,a
                           0013A6  8259 	C$easyax5043.c$1141$3$331 ==.
                                   8260 ;	..\COMMON\easyax5043.c:1141: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_TX;
      001F09 90 40 02         [24] 8261 	mov	dptr,#_AX5043_PWRMODE
      001F0C 74 0D            [12] 8262 	mov	a,#0x0d
      001F0E F0               [24] 8263 	movx	@dptr,a
                           0013AC  8264 	C$easyax5043.c$1142$3$331 ==.
                                   8265 ;	..\COMMON\easyax5043.c:1142: while (!(AX5043_POWSTAT & 0x08)); // wait for modem vdd so writing the FIFO is safe
      001F0F                       8266 00143$:
      001F0F 90 40 03         [24] 8267 	mov	dptr,#_AX5043_POWSTAT
      001F12 E0               [24] 8268 	movx	a,@dptr
      001F13 FF               [12] 8269 	mov	r7,a
      001F14 30 E3 F8         [24] 8270 	jnb	acc.3,00143$
                           0013B4  8271 	C$easyax5043.c$1143$3$331 ==.
                                   8272 ;	..\COMMON\easyax5043.c:1143: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      001F17 90 40 0F         [24] 8273 	mov	dptr,#_AX5043_RADIOEVENTREQ0
      001F1A E0               [24] 8274 	movx	a,@dptr
                           0013B8  8275 	C$easyax5043.c$1144$3$331 ==.
                                   8276 ;	..\COMMON\easyax5043.c:1144: AX5043_FIFOTHRESH1 = 0;
      001F1B 90 40 2E         [24] 8277 	mov	dptr,#_AX5043_FIFOTHRESH1
      001F1E E4               [12] 8278 	clr	a
      001F1F F0               [24] 8279 	movx	@dptr,a
                           0013BD  8280 	C$easyax5043.c$1145$3$331 ==.
                                   8281 ;	..\COMMON\easyax5043.c:1145: AX5043_FIFOTHRESH0 = 0x80;
      001F20 90 40 2F         [24] 8282 	mov	dptr,#_AX5043_FIFOTHRESH0
      001F23 74 80            [12] 8283 	mov	a,#0x80
      001F25 F0               [24] 8284 	movx	@dptr,a
                           0013C3  8285 	C$easyax5043.c$1146$3$331 ==.
                                   8286 ;	..\COMMON\easyax5043.c:1146: axradio_trxstate = trxstate_tx_longpreamble;
      001F26 75 09 0A         [24] 8287 	mov	_axradio_trxstate,#0x0a
                           0013C6  8288 	C$easyax5043.c$1147$3$331 ==.
                                   8289 ;	..\COMMON\easyax5043.c:1147: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      001F29 90 55 CD         [24] 8290 	mov	dptr,#_axradio_phy_preamble_longlen
      001F2C E4               [12] 8291 	clr	a
      001F2D 93               [24] 8292 	movc	a,@a+dptr
      001F2E FE               [12] 8293 	mov	r6,a
      001F2F 74 01            [12] 8294 	mov	a,#0x01
      001F31 93               [24] 8295 	movc	a,@a+dptr
      001F32 FF               [12] 8296 	mov	r7,a
      001F33 90 00 08         [24] 8297 	mov	dptr,#_axradio_txbuffer_cnt
      001F36 EE               [12] 8298 	mov	a,r6
      001F37 F0               [24] 8299 	movx	@dptr,a
      001F38 EF               [12] 8300 	mov	a,r7
      001F39 A3               [24] 8301 	inc	dptr
      001F3A F0               [24] 8302 	movx	@dptr,a
                           0013D8  8303 	C$easyax5043.c$1149$3$331 ==.
                                   8304 ;	..\COMMON\easyax5043.c:1149: if ((AX5043_MODULATION & 0x0F) == 9) { // 4-FSK
      001F3B 90 40 10         [24] 8305 	mov	dptr,#_AX5043_MODULATION
      001F3E E0               [24] 8306 	movx	a,@dptr
      001F3F FF               [12] 8307 	mov	r7,a
      001F40 53 07 0F         [24] 8308 	anl	ar7,#0x0f
      001F43 BF 09 0E         [24] 8309 	cjne	r7,#0x09,00147$
                           0013E3  8310 	C$easyax5043.c$1150$4$332 ==.
                                   8311 ;	..\COMMON\easyax5043.c:1150: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
      001F46 90 40 29         [24] 8312 	mov	dptr,#_AX5043_FIFODATA
      001F49 74 E1            [12] 8313 	mov	a,#0xe1
      001F4B F0               [24] 8314 	movx	@dptr,a
                           0013E9  8315 	C$easyax5043.c$1151$4$332 ==.
                                   8316 ;	..\COMMON\easyax5043.c:1151: AX5043_FIFODATA = 2;  // length (including flags)
      001F4C 74 02            [12] 8317 	mov	a,#0x02
      001F4E F0               [24] 8318 	movx	@dptr,a
                           0013EC  8319 	C$easyax5043.c$1152$4$332 ==.
                                   8320 ;	..\COMMON\easyax5043.c:1152: AX5043_FIFODATA = 0x01;  // flag PKTSTART -> dibit sync
      001F4F 14               [12] 8321 	dec	a
      001F50 F0               [24] 8322 	movx	@dptr,a
                           0013EE  8323 	C$easyax5043.c$1153$4$332 ==.
                                   8324 ;	..\COMMON\easyax5043.c:1153: AX5043_FIFODATA = 0x11; // dummy byte for forcing dibit sync
      001F51 74 11            [12] 8325 	mov	a,#0x11
      001F53 F0               [24] 8326 	movx	@dptr,a
      001F54                       8327 00147$:
                           0013F1  8328 	C$easyax5043.c$1160$3$331 ==.
                                   8329 ;	..\COMMON\easyax5043.c:1160: wtimer_remove(&axradio_timer);
      001F54 90 02 8A         [24] 8330 	mov	dptr,#_axradio_timer
      001F57 12 4D D3         [24] 8331 	lcall	_wtimer_remove
                           0013F7  8332 	C$easyax5043.c$1161$3$331 ==.
                                   8333 ;	..\COMMON\easyax5043.c:1161: update_timeanchor();
      001F5A 12 0B 63         [24] 8334 	lcall	_update_timeanchor
                           0013FA  8335 	C$easyax5043.c$1162$3$331 ==.
                                   8336 ;	..\COMMON\easyax5043.c:1162: AX5043_IRQMASK0 = 0x08; // enable fifo free threshold
      001F5D 90 40 07         [24] 8337 	mov	dptr,#_AX5043_IRQMASK0
      001F60 74 08            [12] 8338 	mov	a,#0x08
      001F62 F0               [24] 8339 	movx	@dptr,a
                           001400  8340 	C$easyax5043.c$1163$3$331 ==.
                                   8341 ;	..\COMMON\easyax5043.c:1163: axradio_sync_addtime(axradio_sync_period);
      001F63 90 55 F1         [24] 8342 	mov	dptr,#_axradio_sync_period
      001F66 E4               [12] 8343 	clr	a
      001F67 93               [24] 8344 	movc	a,@a+dptr
      001F68 FC               [12] 8345 	mov	r4,a
      001F69 74 01            [12] 8346 	mov	a,#0x01
      001F6B 93               [24] 8347 	movc	a,@a+dptr
      001F6C FD               [12] 8348 	mov	r5,a
      001F6D 74 02            [12] 8349 	mov	a,#0x02
      001F6F 93               [24] 8350 	movc	a,@a+dptr
      001F70 FE               [12] 8351 	mov	r6,a
      001F71 74 03            [12] 8352 	mov	a,#0x03
      001F73 93               [24] 8353 	movc	a,@a+dptr
      001F74 8C 82            [24] 8354 	mov	dpl,r4
      001F76 8D 83            [24] 8355 	mov	dph,r5
      001F78 8E F0            [24] 8356 	mov	b,r6
      001F7A 12 19 D6         [24] 8357 	lcall	_axradio_sync_addtime
                           00141A  8358 	C$easyax5043.c$1164$3$331 ==.
                                   8359 ;	..\COMMON\easyax5043.c:1164: axradio_syncstate = syncstate_master_waitack;
      001F7D 90 00 05         [24] 8360 	mov	dptr,#_axradio_syncstate
      001F80 74 05            [12] 8361 	mov	a,#0x05
      001F82 F0               [24] 8362 	movx	@dptr,a
                           001420  8363 	C$easyax5043.c$1165$3$331 ==.
                                   8364 ;	..\COMMON\easyax5043.c:1165: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_MASTER) {
      001F83 74 31            [12] 8365 	mov	a,#0x31
      001F85 B5 08 02         [24] 8366 	cjne	a,_axradio_mode,00288$
      001F88 80 26            [24] 8367 	sjmp	00149$
      001F8A                       8368 00288$:
                           001427  8369 	C$easyax5043.c$1166$4$333 ==.
                                   8370 ;	..\COMMON\easyax5043.c:1166: axradio_syncstate = syncstate_master_normal;
      001F8A 90 00 05         [24] 8371 	mov	dptr,#_axradio_syncstate
      001F8D 74 03            [12] 8372 	mov	a,#0x03
      001F8F F0               [24] 8373 	movx	@dptr,a
                           00142D  8374 	C$easyax5043.c$1167$4$333 ==.
                                   8375 ;	..\COMMON\easyax5043.c:1167: axradio_sync_settimeradv(axradio_sync_xoscstartup);
      001F90 90 55 F5         [24] 8376 	mov	dptr,#_axradio_sync_xoscstartup
      001F93 E4               [12] 8377 	clr	a
      001F94 93               [24] 8378 	movc	a,@a+dptr
      001F95 FC               [12] 8379 	mov	r4,a
      001F96 74 01            [12] 8380 	mov	a,#0x01
      001F98 93               [24] 8381 	movc	a,@a+dptr
      001F99 FD               [12] 8382 	mov	r5,a
      001F9A 74 02            [12] 8383 	mov	a,#0x02
      001F9C 93               [24] 8384 	movc	a,@a+dptr
      001F9D FE               [12] 8385 	mov	r6,a
      001F9E 74 03            [12] 8386 	mov	a,#0x03
      001FA0 93               [24] 8387 	movc	a,@a+dptr
      001FA1 8C 82            [24] 8388 	mov	dpl,r4
      001FA3 8D 83            [24] 8389 	mov	dph,r5
      001FA5 8E F0            [24] 8390 	mov	b,r6
      001FA7 12 1A 27         [24] 8391 	lcall	_axradio_sync_settimeradv
                           001447  8392 	C$easyax5043.c$1168$4$333 ==.
                                   8393 ;	..\COMMON\easyax5043.c:1168: wtimer0_addabsolute(&axradio_timer);
      001FAA 90 02 8A         [24] 8394 	mov	dptr,#_axradio_timer
      001FAD 12 47 98         [24] 8395 	lcall	_wtimer0_addabsolute
      001FB0                       8396 00149$:
                           00144D  8397 	C$easyax5043.c$1170$3$331 ==.
                                   8398 ;	..\COMMON\easyax5043.c:1170: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      001FB0 90 02 6C         [24] 8399 	mov	dptr,#_axradio_cb_transmitstart
      001FB3 12 51 BE         [24] 8400 	lcall	_wtimer_remove_callback
                           001453  8401 	C$easyax5043.c$1171$3$331 ==.
                                   8402 ;	..\COMMON\easyax5043.c:1171: axradio_cb_transmitstart.st.error = AXRADIO_ERR_NOERROR;
      001FB6 90 02 71         [24] 8403 	mov	dptr,#(_axradio_cb_transmitstart + 0x0005)
      001FB9 E4               [12] 8404 	clr	a
      001FBA F0               [24] 8405 	movx	@dptr,a
                           001458  8406 	C$easyax5043.c$1172$3$331 ==.
                                   8407 ;	..\COMMON\easyax5043.c:1172: axradio_cb_transmitstart.st.time.t = axradio_timeanchor.radiotimer;
      001FBB 90 00 1B         [24] 8408 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      001FBE E0               [24] 8409 	movx	a,@dptr
      001FBF FC               [12] 8410 	mov	r4,a
      001FC0 A3               [24] 8411 	inc	dptr
      001FC1 E0               [24] 8412 	movx	a,@dptr
      001FC2 FD               [12] 8413 	mov	r5,a
      001FC3 A3               [24] 8414 	inc	dptr
      001FC4 E0               [24] 8415 	movx	a,@dptr
      001FC5 FE               [12] 8416 	mov	r6,a
      001FC6 A3               [24] 8417 	inc	dptr
      001FC7 E0               [24] 8418 	movx	a,@dptr
      001FC8 FF               [12] 8419 	mov	r7,a
      001FC9 90 02 72         [24] 8420 	mov	dptr,#(_axradio_cb_transmitstart + 0x0006)
      001FCC EC               [12] 8421 	mov	a,r4
      001FCD F0               [24] 8422 	movx	@dptr,a
      001FCE ED               [12] 8423 	mov	a,r5
      001FCF A3               [24] 8424 	inc	dptr
      001FD0 F0               [24] 8425 	movx	@dptr,a
      001FD1 EE               [12] 8426 	mov	a,r6
      001FD2 A3               [24] 8427 	inc	dptr
      001FD3 F0               [24] 8428 	movx	@dptr,a
      001FD4 EF               [12] 8429 	mov	a,r7
      001FD5 A3               [24] 8430 	inc	dptr
      001FD6 F0               [24] 8431 	movx	@dptr,a
                           001474  8432 	C$easyax5043.c$1173$3$331 ==.
                                   8433 ;	..\COMMON\easyax5043.c:1173: wtimer_add_callback(&axradio_cb_transmitstart.cb);
      001FD7 90 02 6C         [24] 8434 	mov	dptr,#_axradio_cb_transmitstart
      001FDA 12 46 A2         [24] 8435 	lcall	_wtimer_add_callback
                           00147A  8436 	C$easyax5043.c$1174$3$331 ==.
                                   8437 ;	..\COMMON\easyax5043.c:1174: break;
      001FDD 02 24 4C         [24] 8438 	ljmp	00177$
                           00147D  8439 	C$easyax5043.c$1176$3$331 ==.
                                   8440 ;	..\COMMON\easyax5043.c:1176: case syncstate_master_waitack:
      001FE0                       8441 00150$:
                           00147D  8442 	C$easyax5043.c$1177$3$331 ==.
                                   8443 ;	..\COMMON\easyax5043.c:1177: ax5043_off();
      001FE0 12 18 2E         [24] 8444 	lcall	_ax5043_off
                           001480  8445 	C$easyax5043.c$1178$3$331 ==.
                                   8446 ;	..\COMMON\easyax5043.c:1178: axradio_syncstate = syncstate_master_normal;
      001FE3 90 00 05         [24] 8447 	mov	dptr,#_axradio_syncstate
      001FE6 74 03            [12] 8448 	mov	a,#0x03
      001FE8 F0               [24] 8449 	movx	@dptr,a
                           001486  8450 	C$easyax5043.c$1179$3$331 ==.
                                   8451 ;	..\COMMON\easyax5043.c:1179: wtimer_remove(&axradio_timer);
      001FE9 90 02 8A         [24] 8452 	mov	dptr,#_axradio_timer
      001FEC 12 4D D3         [24] 8453 	lcall	_wtimer_remove
                           00148C  8454 	C$easyax5043.c$1180$3$331 ==.
                                   8455 ;	..\COMMON\easyax5043.c:1180: axradio_sync_settimeradv(axradio_sync_xoscstartup);
      001FEF 90 55 F5         [24] 8456 	mov	dptr,#_axradio_sync_xoscstartup
      001FF2 E4               [12] 8457 	clr	a
      001FF3 93               [24] 8458 	movc	a,@a+dptr
      001FF4 FC               [12] 8459 	mov	r4,a
      001FF5 74 01            [12] 8460 	mov	a,#0x01
      001FF7 93               [24] 8461 	movc	a,@a+dptr
      001FF8 FD               [12] 8462 	mov	r5,a
      001FF9 74 02            [12] 8463 	mov	a,#0x02
      001FFB 93               [24] 8464 	movc	a,@a+dptr
      001FFC FE               [12] 8465 	mov	r6,a
      001FFD 74 03            [12] 8466 	mov	a,#0x03
      001FFF 93               [24] 8467 	movc	a,@a+dptr
      002000 8C 82            [24] 8468 	mov	dpl,r4
      002002 8D 83            [24] 8469 	mov	dph,r5
      002004 8E F0            [24] 8470 	mov	b,r6
      002006 12 1A 27         [24] 8471 	lcall	_axradio_sync_settimeradv
                           0014A6  8472 	C$easyax5043.c$1181$3$331 ==.
                                   8473 ;	..\COMMON\easyax5043.c:1181: wtimer0_addabsolute(&axradio_timer);
      002009 90 02 8A         [24] 8474 	mov	dptr,#_axradio_timer
      00200C 12 47 98         [24] 8475 	lcall	_wtimer0_addabsolute
                           0014AC  8476 	C$easyax5043.c$1182$3$331 ==.
                                   8477 ;	..\COMMON\easyax5043.c:1182: update_timeanchor();
      00200F 12 0B 63         [24] 8478 	lcall	_update_timeanchor
                           0014AF  8479 	C$easyax5043.c$1183$3$331 ==.
                                   8480 ;	..\COMMON\easyax5043.c:1183: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      002012 90 02 76         [24] 8481 	mov	dptr,#_axradio_cb_transmitend
      002015 12 51 BE         [24] 8482 	lcall	_wtimer_remove_callback
                           0014B5  8483 	C$easyax5043.c$1184$3$331 ==.
                                   8484 ;	..\COMMON\easyax5043.c:1184: axradio_cb_transmitend.st.error = AXRADIO_ERR_TIMEOUT;
      002018 90 02 7B         [24] 8485 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      00201B 74 03            [12] 8486 	mov	a,#0x03
      00201D F0               [24] 8487 	movx	@dptr,a
                           0014BB  8488 	C$easyax5043.c$1185$3$331 ==.
                                   8489 ;	..\COMMON\easyax5043.c:1185: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      00201E 90 00 1B         [24] 8490 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      002021 E0               [24] 8491 	movx	a,@dptr
      002022 FC               [12] 8492 	mov	r4,a
      002023 A3               [24] 8493 	inc	dptr
      002024 E0               [24] 8494 	movx	a,@dptr
      002025 FD               [12] 8495 	mov	r5,a
      002026 A3               [24] 8496 	inc	dptr
      002027 E0               [24] 8497 	movx	a,@dptr
      002028 FE               [12] 8498 	mov	r6,a
      002029 A3               [24] 8499 	inc	dptr
      00202A E0               [24] 8500 	movx	a,@dptr
      00202B FF               [12] 8501 	mov	r7,a
      00202C 90 02 7C         [24] 8502 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      00202F EC               [12] 8503 	mov	a,r4
      002030 F0               [24] 8504 	movx	@dptr,a
      002031 ED               [12] 8505 	mov	a,r5
      002032 A3               [24] 8506 	inc	dptr
      002033 F0               [24] 8507 	movx	@dptr,a
      002034 EE               [12] 8508 	mov	a,r6
      002035 A3               [24] 8509 	inc	dptr
      002036 F0               [24] 8510 	movx	@dptr,a
      002037 EF               [12] 8511 	mov	a,r7
      002038 A3               [24] 8512 	inc	dptr
      002039 F0               [24] 8513 	movx	@dptr,a
                           0014D7  8514 	C$easyax5043.c$1186$3$331 ==.
                                   8515 ;	..\COMMON\easyax5043.c:1186: wtimer_add_callback(&axradio_cb_transmitend.cb);
      00203A 90 02 76         [24] 8516 	mov	dptr,#_axradio_cb_transmitend
      00203D 12 46 A2         [24] 8517 	lcall	_wtimer_add_callback
                           0014DD  8518 	C$easyax5043.c$1189$2$326 ==.
                                   8519 ;	..\COMMON\easyax5043.c:1189: break;
      002040 02 24 4C         [24] 8520 	ljmp	00177$
                           0014E0  8521 	C$easyax5043.c$1191$2$326 ==.
                                   8522 ;	..\COMMON\easyax5043.c:1191: case AXRADIO_MODE_SYNC_SLAVE:
      002043                       8523 00152$:
                           0014E0  8524 	C$easyax5043.c$1192$2$326 ==.
                                   8525 ;	..\COMMON\easyax5043.c:1192: case AXRADIO_MODE_SYNC_ACK_SLAVE:
      002043                       8526 00153$:
                           0014E0  8527 	C$easyax5043.c$1193$2$326 ==.
                                   8528 ;	..\COMMON\easyax5043.c:1193: switch (axradio_syncstate) {
      002043 90 00 05         [24] 8529 	mov	dptr,#_axradio_syncstate
      002046 E0               [24] 8530 	movx	a,@dptr
      002047 FF               [12] 8531 	mov  r7,a
      002048 24 F3            [12] 8532 	add	a,#0xff - 0x0c
      00204A 50 03            [24] 8533 	jnc	00289$
      00204C 02 20 7A         [24] 8534 	ljmp	00155$
      00204F                       8535 00289$:
      00204F EF               [12] 8536 	mov	a,r7
      002050 F5 F0            [12] 8537 	mov	b,a
      002052 24 0B            [12] 8538 	add	a,#(00290$-3-.)
      002054 83               [24] 8539 	movc	a,@a+pc
      002055 F5 82            [12] 8540 	mov	dpl,a
      002057 E5 F0            [12] 8541 	mov	a,b
      002059 24 11            [12] 8542 	add	a,#(00291$-3-.)
      00205B 83               [24] 8543 	movc	a,@a+pc
      00205C F5 83            [12] 8544 	mov	dph,a
      00205E E4               [12] 8545 	clr	a
      00205F 73               [24] 8546 	jmp	@a+dptr
      002060                       8547 00290$:
      002060 7A                    8548 	.db	00154$
      002061 7A                    8549 	.db	00154$
      002062 7A                    8550 	.db	00154$
      002063 7A                    8551 	.db	00154$
      002064 7A                    8552 	.db	00154$
      002065 7A                    8553 	.db	00154$
      002066 7A                    8554 	.db	00155$
      002067 08                    8555 	.db	00156$
      002068 99                    8556 	.db	00157$
      002069 EE                    8557 	.db	00158$
      00206A A2                    8558 	.db	00161$
      00206B 05                    8559 	.db	00166$
      00206C 1D                    8560 	.db	00173$
      00206D                       8561 00291$:
      00206D 20                    8562 	.db	00154$>>8
      00206E 20                    8563 	.db	00154$>>8
      00206F 20                    8564 	.db	00154$>>8
      002070 20                    8565 	.db	00154$>>8
      002071 20                    8566 	.db	00154$>>8
      002072 20                    8567 	.db	00154$>>8
      002073 20                    8568 	.db	00155$>>8
      002074 21                    8569 	.db	00156$>>8
      002075 21                    8570 	.db	00157$>>8
      002076 21                    8571 	.db	00158$>>8
      002077 22                    8572 	.db	00161$>>8
      002078 23                    8573 	.db	00166$>>8
      002079 24                    8574 	.db	00173$>>8
                           001517  8575 	C$easyax5043.c$1194$3$334 ==.
                                   8576 ;	..\COMMON\easyax5043.c:1194: default:
      00207A                       8577 00154$:
                           001517  8578 	C$easyax5043.c$1195$3$334 ==.
                                   8579 ;	..\COMMON\easyax5043.c:1195: case syncstate_slave_synchunt:
      00207A                       8580 00155$:
                           001517  8581 	C$easyax5043.c$1196$3$334 ==.
                                   8582 ;	..\COMMON\easyax5043.c:1196: ax5043_off();
      00207A 12 18 2E         [24] 8583 	lcall	_ax5043_off
                           00151A  8584 	C$easyax5043.c$1197$3$334 ==.
                                   8585 ;	..\COMMON\easyax5043.c:1197: axradio_syncstate = syncstate_slave_syncpause;
      00207D 90 00 05         [24] 8586 	mov	dptr,#_axradio_syncstate
      002080 74 07            [12] 8587 	mov	a,#0x07
      002082 F0               [24] 8588 	movx	@dptr,a
                           001520  8589 	C$easyax5043.c$1198$3$334 ==.
                                   8590 ;	..\COMMON\easyax5043.c:1198: axradio_sync_addtime(axradio_sync_slave_syncpause);
      002083 90 56 01         [24] 8591 	mov	dptr,#_axradio_sync_slave_syncpause
      002086 E4               [12] 8592 	clr	a
      002087 93               [24] 8593 	movc	a,@a+dptr
      002088 FC               [12] 8594 	mov	r4,a
      002089 74 01            [12] 8595 	mov	a,#0x01
      00208B 93               [24] 8596 	movc	a,@a+dptr
      00208C FD               [12] 8597 	mov	r5,a
      00208D 74 02            [12] 8598 	mov	a,#0x02
      00208F 93               [24] 8599 	movc	a,@a+dptr
      002090 FE               [12] 8600 	mov	r6,a
      002091 74 03            [12] 8601 	mov	a,#0x03
      002093 93               [24] 8602 	movc	a,@a+dptr
      002094 8C 82            [24] 8603 	mov	dpl,r4
      002096 8D 83            [24] 8604 	mov	dph,r5
      002098 8E F0            [24] 8605 	mov	b,r6
      00209A 12 19 D6         [24] 8606 	lcall	_axradio_sync_addtime
                           00153A  8607 	C$easyax5043.c$1199$3$334 ==.
                                   8608 ;	..\COMMON\easyax5043.c:1199: wtimer_remove(&axradio_timer);
      00209D 90 02 8A         [24] 8609 	mov	dptr,#_axradio_timer
      0020A0 12 4D D3         [24] 8610 	lcall	_wtimer_remove
                           001540  8611 	C$easyax5043.c$1200$3$334 ==.
                                   8612 ;	..\COMMON\easyax5043.c:1200: axradio_timer.time = axradio_sync_time;
      0020A3 90 00 11         [24] 8613 	mov	dptr,#_axradio_sync_time
      0020A6 E0               [24] 8614 	movx	a,@dptr
      0020A7 FC               [12] 8615 	mov	r4,a
      0020A8 A3               [24] 8616 	inc	dptr
      0020A9 E0               [24] 8617 	movx	a,@dptr
      0020AA FD               [12] 8618 	mov	r5,a
      0020AB A3               [24] 8619 	inc	dptr
      0020AC E0               [24] 8620 	movx	a,@dptr
      0020AD FE               [12] 8621 	mov	r6,a
      0020AE A3               [24] 8622 	inc	dptr
      0020AF E0               [24] 8623 	movx	a,@dptr
      0020B0 FF               [12] 8624 	mov	r7,a
      0020B1 90 02 8E         [24] 8625 	mov	dptr,#(_axradio_timer + 0x0004)
      0020B4 EC               [12] 8626 	mov	a,r4
      0020B5 F0               [24] 8627 	movx	@dptr,a
      0020B6 ED               [12] 8628 	mov	a,r5
      0020B7 A3               [24] 8629 	inc	dptr
      0020B8 F0               [24] 8630 	movx	@dptr,a
      0020B9 EE               [12] 8631 	mov	a,r6
      0020BA A3               [24] 8632 	inc	dptr
      0020BB F0               [24] 8633 	movx	@dptr,a
      0020BC EF               [12] 8634 	mov	a,r7
      0020BD A3               [24] 8635 	inc	dptr
      0020BE F0               [24] 8636 	movx	@dptr,a
                           00155C  8637 	C$easyax5043.c$1201$3$334 ==.
                                   8638 ;	..\COMMON\easyax5043.c:1201: wtimer0_addabsolute(&axradio_timer);
      0020BF 90 02 8A         [24] 8639 	mov	dptr,#_axradio_timer
      0020C2 12 47 98         [24] 8640 	lcall	_wtimer0_addabsolute
                           001562  8641 	C$easyax5043.c$1202$3$334 ==.
                                   8642 ;	..\COMMON\easyax5043.c:1202: wtimer_remove_callback(&axradio_cb_receive.cb);
      0020C5 90 02 33         [24] 8643 	mov	dptr,#_axradio_cb_receive
      0020C8 12 51 BE         [24] 8644 	lcall	_wtimer_remove_callback
                           001568  8645 	C$easyax5043.c$1203$3$334 ==.
                                   8646 ;	..\COMMON\easyax5043.c:1203: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      0020CB 75 23 00         [24] 8647 	mov	_memset_PARM_2,#0x00
      0020CE 75 24 1E         [24] 8648 	mov	_memset_PARM_3,#0x1e
      0020D1 75 25 00         [24] 8649 	mov	(_memset_PARM_3 + 1),#0x00
      0020D4 90 02 37         [24] 8650 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      0020D7 75 F0 00         [24] 8651 	mov	b,#0x00
      0020DA 12 46 2E         [24] 8652 	lcall	_memset
                           00157A  8653 	C$easyax5043.c$1204$3$334 ==.
                                   8654 ;	..\COMMON\easyax5043.c:1204: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      0020DD 90 00 1B         [24] 8655 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0020E0 E0               [24] 8656 	movx	a,@dptr
      0020E1 FC               [12] 8657 	mov	r4,a
      0020E2 A3               [24] 8658 	inc	dptr
      0020E3 E0               [24] 8659 	movx	a,@dptr
      0020E4 FD               [12] 8660 	mov	r5,a
      0020E5 A3               [24] 8661 	inc	dptr
      0020E6 E0               [24] 8662 	movx	a,@dptr
      0020E7 FE               [12] 8663 	mov	r6,a
      0020E8 A3               [24] 8664 	inc	dptr
      0020E9 E0               [24] 8665 	movx	a,@dptr
      0020EA FF               [12] 8666 	mov	r7,a
      0020EB 90 02 39         [24] 8667 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      0020EE EC               [12] 8668 	mov	a,r4
      0020EF F0               [24] 8669 	movx	@dptr,a
      0020F0 ED               [12] 8670 	mov	a,r5
      0020F1 A3               [24] 8671 	inc	dptr
      0020F2 F0               [24] 8672 	movx	@dptr,a
      0020F3 EE               [12] 8673 	mov	a,r6
      0020F4 A3               [24] 8674 	inc	dptr
      0020F5 F0               [24] 8675 	movx	@dptr,a
      0020F6 EF               [12] 8676 	mov	a,r7
      0020F7 A3               [24] 8677 	inc	dptr
      0020F8 F0               [24] 8678 	movx	@dptr,a
                           001596  8679 	C$easyax5043.c$1205$3$334 ==.
                                   8680 ;	..\COMMON\easyax5043.c:1205: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNCTIMEOUT;
      0020F9 90 02 38         [24] 8681 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      0020FC 74 0A            [12] 8682 	mov	a,#0x0a
      0020FE F0               [24] 8683 	movx	@dptr,a
                           00159C  8684 	C$easyax5043.c$1206$3$334 ==.
                                   8685 ;	..\COMMON\easyax5043.c:1206: wtimer_add_callback(&axradio_cb_receive.cb);
      0020FF 90 02 33         [24] 8686 	mov	dptr,#_axradio_cb_receive
      002102 12 46 A2         [24] 8687 	lcall	_wtimer_add_callback
                           0015A2  8688 	C$easyax5043.c$1207$3$334 ==.
                                   8689 ;	..\COMMON\easyax5043.c:1207: break;
      002105 02 24 4C         [24] 8690 	ljmp	00177$
                           0015A5  8691 	C$easyax5043.c$1209$3$334 ==.
                                   8692 ;	..\COMMON\easyax5043.c:1209: case syncstate_slave_syncpause:
      002108                       8693 00156$:
                           0015A5  8694 	C$easyax5043.c$1210$3$334 ==.
                                   8695 ;	..\COMMON\easyax5043.c:1210: ax5043_receiver_on_continuous();
      002108 12 16 DC         [24] 8696 	lcall	_ax5043_receiver_on_continuous
                           0015A8  8697 	C$easyax5043.c$1211$3$334 ==.
                                   8698 ;	..\COMMON\easyax5043.c:1211: axradio_syncstate = syncstate_slave_synchunt;
      00210B 90 00 05         [24] 8699 	mov	dptr,#_axradio_syncstate
      00210E 74 06            [12] 8700 	mov	a,#0x06
      002110 F0               [24] 8701 	movx	@dptr,a
                           0015AE  8702 	C$easyax5043.c$1212$3$334 ==.
                                   8703 ;	..\COMMON\easyax5043.c:1212: axradio_sync_addtime(axradio_sync_slave_syncwindow);
      002111 90 55 F9         [24] 8704 	mov	dptr,#_axradio_sync_slave_syncwindow
      002114 E4               [12] 8705 	clr	a
      002115 93               [24] 8706 	movc	a,@a+dptr
      002116 FC               [12] 8707 	mov	r4,a
      002117 74 01            [12] 8708 	mov	a,#0x01
      002119 93               [24] 8709 	movc	a,@a+dptr
      00211A FD               [12] 8710 	mov	r5,a
      00211B 74 02            [12] 8711 	mov	a,#0x02
      00211D 93               [24] 8712 	movc	a,@a+dptr
      00211E FE               [12] 8713 	mov	r6,a
      00211F 74 03            [12] 8714 	mov	a,#0x03
      002121 93               [24] 8715 	movc	a,@a+dptr
      002122 8C 82            [24] 8716 	mov	dpl,r4
      002124 8D 83            [24] 8717 	mov	dph,r5
      002126 8E F0            [24] 8718 	mov	b,r6
      002128 12 19 D6         [24] 8719 	lcall	_axradio_sync_addtime
                           0015C8  8720 	C$easyax5043.c$1213$3$334 ==.
                                   8721 ;	..\COMMON\easyax5043.c:1213: wtimer_remove(&axradio_timer);
      00212B 90 02 8A         [24] 8722 	mov	dptr,#_axradio_timer
      00212E 12 4D D3         [24] 8723 	lcall	_wtimer_remove
                           0015CE  8724 	C$easyax5043.c$1214$3$334 ==.
                                   8725 ;	..\COMMON\easyax5043.c:1214: axradio_timer.time = axradio_sync_time;
      002131 90 00 11         [24] 8726 	mov	dptr,#_axradio_sync_time
      002134 E0               [24] 8727 	movx	a,@dptr
      002135 FC               [12] 8728 	mov	r4,a
      002136 A3               [24] 8729 	inc	dptr
      002137 E0               [24] 8730 	movx	a,@dptr
      002138 FD               [12] 8731 	mov	r5,a
      002139 A3               [24] 8732 	inc	dptr
      00213A E0               [24] 8733 	movx	a,@dptr
      00213B FE               [12] 8734 	mov	r6,a
      00213C A3               [24] 8735 	inc	dptr
      00213D E0               [24] 8736 	movx	a,@dptr
      00213E FF               [12] 8737 	mov	r7,a
      00213F 90 02 8E         [24] 8738 	mov	dptr,#(_axradio_timer + 0x0004)
      002142 EC               [12] 8739 	mov	a,r4
      002143 F0               [24] 8740 	movx	@dptr,a
      002144 ED               [12] 8741 	mov	a,r5
      002145 A3               [24] 8742 	inc	dptr
      002146 F0               [24] 8743 	movx	@dptr,a
      002147 EE               [12] 8744 	mov	a,r6
      002148 A3               [24] 8745 	inc	dptr
      002149 F0               [24] 8746 	movx	@dptr,a
      00214A EF               [12] 8747 	mov	a,r7
      00214B A3               [24] 8748 	inc	dptr
      00214C F0               [24] 8749 	movx	@dptr,a
                           0015EA  8750 	C$easyax5043.c$1215$3$334 ==.
                                   8751 ;	..\COMMON\easyax5043.c:1215: wtimer0_addabsolute(&axradio_timer);
      00214D 90 02 8A         [24] 8752 	mov	dptr,#_axradio_timer
      002150 12 47 98         [24] 8753 	lcall	_wtimer0_addabsolute
                           0015F0  8754 	C$easyax5043.c$1216$3$334 ==.
                                   8755 ;	..\COMMON\easyax5043.c:1216: update_timeanchor();
      002153 12 0B 63         [24] 8756 	lcall	_update_timeanchor
                           0015F3  8757 	C$easyax5043.c$1217$3$334 ==.
                                   8758 ;	..\COMMON\easyax5043.c:1217: wtimer_remove_callback(&axradio_cb_receive.cb);
      002156 90 02 33         [24] 8759 	mov	dptr,#_axradio_cb_receive
      002159 12 51 BE         [24] 8760 	lcall	_wtimer_remove_callback
                           0015F9  8761 	C$easyax5043.c$1218$3$334 ==.
                                   8762 ;	..\COMMON\easyax5043.c:1218: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      00215C 75 23 00         [24] 8763 	mov	_memset_PARM_2,#0x00
      00215F 75 24 1E         [24] 8764 	mov	_memset_PARM_3,#0x1e
      002162 75 25 00         [24] 8765 	mov	(_memset_PARM_3 + 1),#0x00
      002165 90 02 37         [24] 8766 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002168 75 F0 00         [24] 8767 	mov	b,#0x00
      00216B 12 46 2E         [24] 8768 	lcall	_memset
                           00160B  8769 	C$easyax5043.c$1219$3$334 ==.
                                   8770 ;	..\COMMON\easyax5043.c:1219: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      00216E 90 00 1B         [24] 8771 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      002171 E0               [24] 8772 	movx	a,@dptr
      002172 FC               [12] 8773 	mov	r4,a
      002173 A3               [24] 8774 	inc	dptr
      002174 E0               [24] 8775 	movx	a,@dptr
      002175 FD               [12] 8776 	mov	r5,a
      002176 A3               [24] 8777 	inc	dptr
      002177 E0               [24] 8778 	movx	a,@dptr
      002178 FE               [12] 8779 	mov	r6,a
      002179 A3               [24] 8780 	inc	dptr
      00217A E0               [24] 8781 	movx	a,@dptr
      00217B FF               [12] 8782 	mov	r7,a
      00217C 90 02 39         [24] 8783 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      00217F EC               [12] 8784 	mov	a,r4
      002180 F0               [24] 8785 	movx	@dptr,a
      002181 ED               [12] 8786 	mov	a,r5
      002182 A3               [24] 8787 	inc	dptr
      002183 F0               [24] 8788 	movx	@dptr,a
      002184 EE               [12] 8789 	mov	a,r6
      002185 A3               [24] 8790 	inc	dptr
      002186 F0               [24] 8791 	movx	@dptr,a
      002187 EF               [12] 8792 	mov	a,r7
      002188 A3               [24] 8793 	inc	dptr
      002189 F0               [24] 8794 	movx	@dptr,a
                           001627  8795 	C$easyax5043.c$1220$3$334 ==.
                                   8796 ;	..\COMMON\easyax5043.c:1220: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
      00218A 90 02 38         [24] 8797 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      00218D 74 09            [12] 8798 	mov	a,#0x09
      00218F F0               [24] 8799 	movx	@dptr,a
                           00162D  8800 	C$easyax5043.c$1221$3$334 ==.
                                   8801 ;	..\COMMON\easyax5043.c:1221: wtimer_add_callback(&axradio_cb_receive.cb);
      002190 90 02 33         [24] 8802 	mov	dptr,#_axradio_cb_receive
      002193 12 46 A2         [24] 8803 	lcall	_wtimer_add_callback
                           001633  8804 	C$easyax5043.c$1222$3$334 ==.
                                   8805 ;	..\COMMON\easyax5043.c:1222: break;
      002196 02 24 4C         [24] 8806 	ljmp	00177$
                           001636  8807 	C$easyax5043.c$1224$3$334 ==.
                                   8808 ;	..\COMMON\easyax5043.c:1224: case syncstate_slave_rxidle:
      002199                       8809 00157$:
                           001636  8810 	C$easyax5043.c$1225$3$334 ==.
                                   8811 ;	..\COMMON\easyax5043.c:1225: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
      002199 90 40 02         [24] 8812 	mov	dptr,#_AX5043_PWRMODE
      00219C 74 05            [12] 8813 	mov	a,#0x05
      00219E F0               [24] 8814 	movx	@dptr,a
                           00163C  8815 	C$easyax5043.c$1226$3$334 ==.
                                   8816 ;	..\COMMON\easyax5043.c:1226: axradio_syncstate = syncstate_slave_rxxosc;
      00219F 90 00 05         [24] 8817 	mov	dptr,#_axradio_syncstate
      0021A2 74 09            [12] 8818 	mov	a,#0x09
      0021A4 F0               [24] 8819 	movx	@dptr,a
                           001642  8820 	C$easyax5043.c$1227$3$334 ==.
                                   8821 ;	..\COMMON\easyax5043.c:1227: wtimer_remove(&axradio_timer);
      0021A5 90 02 8A         [24] 8822 	mov	dptr,#_axradio_timer
      0021A8 12 4D D3         [24] 8823 	lcall	_wtimer_remove
                           001648  8824 	C$easyax5043.c$1228$3$334 ==.
                                   8825 ;	..\COMMON\easyax5043.c:1228: axradio_timer.time += axradio_sync_xoscstartup;
      0021AB 90 02 8E         [24] 8826 	mov	dptr,#(_axradio_timer + 0x0004)
      0021AE E0               [24] 8827 	movx	a,@dptr
      0021AF FC               [12] 8828 	mov	r4,a
      0021B0 A3               [24] 8829 	inc	dptr
      0021B1 E0               [24] 8830 	movx	a,@dptr
      0021B2 FD               [12] 8831 	mov	r5,a
      0021B3 A3               [24] 8832 	inc	dptr
      0021B4 E0               [24] 8833 	movx	a,@dptr
      0021B5 FE               [12] 8834 	mov	r6,a
      0021B6 A3               [24] 8835 	inc	dptr
      0021B7 E0               [24] 8836 	movx	a,@dptr
      0021B8 FF               [12] 8837 	mov	r7,a
      0021B9 90 55 F5         [24] 8838 	mov	dptr,#_axradio_sync_xoscstartup
      0021BC E4               [12] 8839 	clr	a
      0021BD 93               [24] 8840 	movc	a,@a+dptr
      0021BE F8               [12] 8841 	mov	r0,a
      0021BF 74 01            [12] 8842 	mov	a,#0x01
      0021C1 93               [24] 8843 	movc	a,@a+dptr
      0021C2 F9               [12] 8844 	mov	r1,a
      0021C3 74 02            [12] 8845 	mov	a,#0x02
      0021C5 93               [24] 8846 	movc	a,@a+dptr
      0021C6 FA               [12] 8847 	mov	r2,a
      0021C7 74 03            [12] 8848 	mov	a,#0x03
      0021C9 93               [24] 8849 	movc	a,@a+dptr
      0021CA FB               [12] 8850 	mov	r3,a
      0021CB E8               [12] 8851 	mov	a,r0
      0021CC 2C               [12] 8852 	add	a,r4
      0021CD FC               [12] 8853 	mov	r4,a
      0021CE E9               [12] 8854 	mov	a,r1
      0021CF 3D               [12] 8855 	addc	a,r5
      0021D0 FD               [12] 8856 	mov	r5,a
      0021D1 EA               [12] 8857 	mov	a,r2
      0021D2 3E               [12] 8858 	addc	a,r6
      0021D3 FE               [12] 8859 	mov	r6,a
      0021D4 EB               [12] 8860 	mov	a,r3
      0021D5 3F               [12] 8861 	addc	a,r7
      0021D6 FF               [12] 8862 	mov	r7,a
      0021D7 90 02 8E         [24] 8863 	mov	dptr,#(_axradio_timer + 0x0004)
      0021DA EC               [12] 8864 	mov	a,r4
      0021DB F0               [24] 8865 	movx	@dptr,a
      0021DC ED               [12] 8866 	mov	a,r5
      0021DD A3               [24] 8867 	inc	dptr
      0021DE F0               [24] 8868 	movx	@dptr,a
      0021DF EE               [12] 8869 	mov	a,r6
      0021E0 A3               [24] 8870 	inc	dptr
      0021E1 F0               [24] 8871 	movx	@dptr,a
      0021E2 EF               [12] 8872 	mov	a,r7
      0021E3 A3               [24] 8873 	inc	dptr
      0021E4 F0               [24] 8874 	movx	@dptr,a
                           001682  8875 	C$easyax5043.c$1229$3$334 ==.
                                   8876 ;	..\COMMON\easyax5043.c:1229: wtimer0_addabsolute(&axradio_timer);
      0021E5 90 02 8A         [24] 8877 	mov	dptr,#_axradio_timer
      0021E8 12 47 98         [24] 8878 	lcall	_wtimer0_addabsolute
                           001688  8879 	C$easyax5043.c$1230$3$334 ==.
                                   8880 ;	..\COMMON\easyax5043.c:1230: break;
      0021EB 02 24 4C         [24] 8881 	ljmp	00177$
                           00168B  8882 	C$easyax5043.c$1232$3$334 ==.
                                   8883 ;	..\COMMON\easyax5043.c:1232: case syncstate_slave_rxxosc:
      0021EE                       8884 00158$:
                           00168B  8885 	C$easyax5043.c$1233$3$334 ==.
                                   8886 ;	..\COMMON\easyax5043.c:1233: ax5043_receiver_on_continuous();
      0021EE 12 16 DC         [24] 8887 	lcall	_ax5043_receiver_on_continuous
                           00168E  8888 	C$easyax5043.c$1234$3$334 ==.
                                   8889 ;	..\COMMON\easyax5043.c:1234: axradio_syncstate = syncstate_slave_rxsfdwindow;
      0021F1 90 00 05         [24] 8890 	mov	dptr,#_axradio_syncstate
      0021F4 74 0A            [12] 8891 	mov	a,#0x0a
      0021F6 F0               [24] 8892 	movx	@dptr,a
                           001694  8893 	C$easyax5043.c$1235$3$334 ==.
                                   8894 ;	..\COMMON\easyax5043.c:1235: update_timeanchor();
      0021F7 12 0B 63         [24] 8895 	lcall	_update_timeanchor
                           001697  8896 	C$easyax5043.c$1236$3$334 ==.
                                   8897 ;	..\COMMON\easyax5043.c:1236: wtimer_remove_callback(&axradio_cb_receive.cb);
      0021FA 90 02 33         [24] 8898 	mov	dptr,#_axradio_cb_receive
      0021FD 12 51 BE         [24] 8899 	lcall	_wtimer_remove_callback
                           00169D  8900 	C$easyax5043.c$1237$3$334 ==.
                                   8901 ;	..\COMMON\easyax5043.c:1237: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      002200 75 23 00         [24] 8902 	mov	_memset_PARM_2,#0x00
      002203 75 24 1E         [24] 8903 	mov	_memset_PARM_3,#0x1e
      002206 75 25 00         [24] 8904 	mov	(_memset_PARM_3 + 1),#0x00
      002209 90 02 37         [24] 8905 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      00220C 75 F0 00         [24] 8906 	mov	b,#0x00
      00220F 12 46 2E         [24] 8907 	lcall	_memset
                           0016AF  8908 	C$easyax5043.c$1238$3$334 ==.
                                   8909 ;	..\COMMON\easyax5043.c:1238: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      002212 90 00 1B         [24] 8910 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      002215 E0               [24] 8911 	movx	a,@dptr
      002216 FC               [12] 8912 	mov	r4,a
      002217 A3               [24] 8913 	inc	dptr
      002218 E0               [24] 8914 	movx	a,@dptr
      002219 FD               [12] 8915 	mov	r5,a
      00221A A3               [24] 8916 	inc	dptr
      00221B E0               [24] 8917 	movx	a,@dptr
      00221C FE               [12] 8918 	mov	r6,a
      00221D A3               [24] 8919 	inc	dptr
      00221E E0               [24] 8920 	movx	a,@dptr
      00221F FF               [12] 8921 	mov	r7,a
      002220 90 02 39         [24] 8922 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      002223 EC               [12] 8923 	mov	a,r4
      002224 F0               [24] 8924 	movx	@dptr,a
      002225 ED               [12] 8925 	mov	a,r5
      002226 A3               [24] 8926 	inc	dptr
      002227 F0               [24] 8927 	movx	@dptr,a
      002228 EE               [12] 8928 	mov	a,r6
      002229 A3               [24] 8929 	inc	dptr
      00222A F0               [24] 8930 	movx	@dptr,a
      00222B EF               [12] 8931 	mov	a,r7
      00222C A3               [24] 8932 	inc	dptr
      00222D F0               [24] 8933 	movx	@dptr,a
                           0016CB  8934 	C$easyax5043.c$1239$3$334 ==.
                                   8935 ;	..\COMMON\easyax5043.c:1239: axradio_cb_receive.st.error = AXRADIO_ERR_RECEIVESTART;
      00222E 90 02 38         [24] 8936 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002231 74 0B            [12] 8937 	mov	a,#0x0b
      002233 F0               [24] 8938 	movx	@dptr,a
                           0016D1  8939 	C$easyax5043.c$1240$3$334 ==.
                                   8940 ;	..\COMMON\easyax5043.c:1240: wtimer_add_callback(&axradio_cb_receive.cb);
      002234 90 02 33         [24] 8941 	mov	dptr,#_axradio_cb_receive
      002237 12 46 A2         [24] 8942 	lcall	_wtimer_add_callback
                           0016D7  8943 	C$easyax5043.c$1241$3$334 ==.
                                   8944 ;	..\COMMON\easyax5043.c:1241: wtimer_remove(&axradio_timer);
      00223A 90 02 8A         [24] 8945 	mov	dptr,#_axradio_timer
      00223D 12 4D D3         [24] 8946 	lcall	_wtimer_remove
                           0016DD  8947 	C$easyax5043.c$1243$4$334 ==.
                                   8948 ;	..\COMMON\easyax5043.c:1243: uint8_t __autodata idx = axradio_sync_seqnr;
      002240 90 00 10         [24] 8949 	mov	dptr,#_axradio_ack_seqnr
      002243 E0               [24] 8950 	movx	a,@dptr
      002244 FF               [12] 8951 	mov	r7,a
                           0016E2  8952 	C$easyax5043.c$1244$4$335 ==.
                                   8953 ;	..\COMMON\easyax5043.c:1244: if (idx >= axradio_sync_slave_nrrx)
      002245 90 56 08         [24] 8954 	mov	dptr,#_axradio_sync_slave_nrrx
      002248 E4               [12] 8955 	clr	a
      002249 93               [24] 8956 	movc	a,@a+dptr
      00224A FE               [12] 8957 	mov	r6,a
      00224B C3               [12] 8958 	clr	c
      00224C EF               [12] 8959 	mov	a,r7
      00224D 9E               [12] 8960 	subb	a,r6
      00224E 40 03            [24] 8961 	jc	00160$
                           0016ED  8962 	C$easyax5043.c$1245$4$335 ==.
                                   8963 ;	..\COMMON\easyax5043.c:1245: idx = axradio_sync_slave_nrrx - 1;
      002250 EE               [12] 8964 	mov	a,r6
      002251 14               [12] 8965 	dec	a
      002252 FF               [12] 8966 	mov	r7,a
      002253                       8967 00160$:
                           0016F0  8968 	C$easyax5043.c$1246$4$335 ==.
                                   8969 ;	..\COMMON\easyax5043.c:1246: axradio_timer.time += axradio_sync_slave_rxwindow[idx];
      002253 90 02 8E         [24] 8970 	mov	dptr,#(_axradio_timer + 0x0004)
      002256 E0               [24] 8971 	movx	a,@dptr
      002257 FB               [12] 8972 	mov	r3,a
      002258 A3               [24] 8973 	inc	dptr
      002259 E0               [24] 8974 	movx	a,@dptr
      00225A FC               [12] 8975 	mov	r4,a
      00225B A3               [24] 8976 	inc	dptr
      00225C E0               [24] 8977 	movx	a,@dptr
      00225D FD               [12] 8978 	mov	r5,a
      00225E A3               [24] 8979 	inc	dptr
      00225F E0               [24] 8980 	movx	a,@dptr
      002260 FE               [12] 8981 	mov	r6,a
      002261 EF               [12] 8982 	mov	a,r7
      002262 75 F0 04         [24] 8983 	mov	b,#0x04
      002265 A4               [48] 8984 	mul	ab
      002266 24 15            [12] 8985 	add	a,#_axradio_sync_slave_rxwindow
      002268 F5 82            [12] 8986 	mov	dpl,a
      00226A 74 56            [12] 8987 	mov	a,#(_axradio_sync_slave_rxwindow >> 8)
      00226C 35 F0            [12] 8988 	addc	a,b
      00226E F5 83            [12] 8989 	mov	dph,a
      002270 E4               [12] 8990 	clr	a
      002271 93               [24] 8991 	movc	a,@a+dptr
      002272 F8               [12] 8992 	mov	r0,a
      002273 A3               [24] 8993 	inc	dptr
      002274 E4               [12] 8994 	clr	a
      002275 93               [24] 8995 	movc	a,@a+dptr
      002276 F9               [12] 8996 	mov	r1,a
      002277 A3               [24] 8997 	inc	dptr
      002278 E4               [12] 8998 	clr	a
      002279 93               [24] 8999 	movc	a,@a+dptr
      00227A FA               [12] 9000 	mov	r2,a
      00227B A3               [24] 9001 	inc	dptr
      00227C E4               [12] 9002 	clr	a
      00227D 93               [24] 9003 	movc	a,@a+dptr
      00227E FF               [12] 9004 	mov	r7,a
      00227F E8               [12] 9005 	mov	a,r0
      002280 2B               [12] 9006 	add	a,r3
      002281 FB               [12] 9007 	mov	r3,a
      002282 E9               [12] 9008 	mov	a,r1
      002283 3C               [12] 9009 	addc	a,r4
      002284 FC               [12] 9010 	mov	r4,a
      002285 EA               [12] 9011 	mov	a,r2
      002286 3D               [12] 9012 	addc	a,r5
      002287 FD               [12] 9013 	mov	r5,a
      002288 EF               [12] 9014 	mov	a,r7
      002289 3E               [12] 9015 	addc	a,r6
      00228A FE               [12] 9016 	mov	r6,a
      00228B 90 02 8E         [24] 9017 	mov	dptr,#(_axradio_timer + 0x0004)
      00228E EB               [12] 9018 	mov	a,r3
      00228F F0               [24] 9019 	movx	@dptr,a
      002290 EC               [12] 9020 	mov	a,r4
      002291 A3               [24] 9021 	inc	dptr
      002292 F0               [24] 9022 	movx	@dptr,a
      002293 ED               [12] 9023 	mov	a,r5
      002294 A3               [24] 9024 	inc	dptr
      002295 F0               [24] 9025 	movx	@dptr,a
      002296 EE               [12] 9026 	mov	a,r6
      002297 A3               [24] 9027 	inc	dptr
      002298 F0               [24] 9028 	movx	@dptr,a
                           001736  9029 	C$easyax5043.c$1248$3$334 ==.
                                   9030 ;	..\COMMON\easyax5043.c:1248: wtimer0_addabsolute(&axradio_timer);
      002299 90 02 8A         [24] 9031 	mov	dptr,#_axradio_timer
      00229C 12 47 98         [24] 9032 	lcall	_wtimer0_addabsolute
                           00173C  9033 	C$easyax5043.c$1249$3$334 ==.
                                   9034 ;	..\COMMON\easyax5043.c:1249: break;
      00229F 02 24 4C         [24] 9035 	ljmp	00177$
                           00173F  9036 	C$easyax5043.c$1251$3$334 ==.
                                   9037 ;	..\COMMON\easyax5043.c:1251: case syncstate_slave_rxsfdwindow:
      0022A2                       9038 00161$:
                           00173F  9039 	C$easyax5043.c$1253$4$334 ==.
                                   9040 ;	..\COMMON\easyax5043.c:1253: uint8_t __autodata rs = AX5043_RADIOSTATE;
      0022A2 90 40 1C         [24] 9041 	mov	dptr,#_AX5043_RADIOSTATE
      0022A5 E0               [24] 9042 	movx	a,@dptr
                           001743  9043 	C$easyax5043.c$1254$4$336 ==.
                                   9044 ;	..\COMMON\easyax5043.c:1254: if( !rs )
      0022A6 FF               [12] 9045 	mov	r7,a
      0022A7 FE               [12] 9046 	mov	r6,a
      0022A8 70 03            [24] 9047 	jnz	00293$
      0022AA 02 24 4C         [24] 9048 	ljmp	00177$
      0022AD                       9049 00293$:
                           00174A  9050 	C$easyax5043.c$1257$4$336 ==.
                                   9051 ;	..\COMMON\easyax5043.c:1257: if (!(0x0F & (uint8_t)~rs)) {
      0022AD EE               [12] 9052 	mov	a,r6
      0022AE F4               [12] 9053 	cpl	a
      0022AF FE               [12] 9054 	mov	r6,a
      0022B0 54 0F            [12] 9055 	anl	a,#0x0f
      0022B2 60 02            [24] 9056 	jz	00295$
      0022B4 80 4F            [24] 9057 	sjmp	00166$
      0022B6                       9058 00295$:
                           001753  9059 	C$easyax5043.c$1258$5$337 ==.
                                   9060 ;	..\COMMON\easyax5043.c:1258: axradio_syncstate = syncstate_slave_rxpacket;
      0022B6 90 00 05         [24] 9061 	mov	dptr,#_axradio_syncstate
      0022B9 74 0B            [12] 9062 	mov	a,#0x0b
      0022BB F0               [24] 9063 	movx	@dptr,a
                           001759  9064 	C$easyax5043.c$1259$5$337 ==.
                                   9065 ;	..\COMMON\easyax5043.c:1259: wtimer_remove(&axradio_timer);
      0022BC 90 02 8A         [24] 9066 	mov	dptr,#_axradio_timer
      0022BF 12 4D D3         [24] 9067 	lcall	_wtimer_remove
                           00175F  9068 	C$easyax5043.c$1260$5$337 ==.
                                   9069 ;	..\COMMON\easyax5043.c:1260: axradio_timer.time += axradio_sync_slave_rxtimeout;
      0022C2 90 02 8E         [24] 9070 	mov	dptr,#(_axradio_timer + 0x0004)
      0022C5 E0               [24] 9071 	movx	a,@dptr
      0022C6 FC               [12] 9072 	mov	r4,a
      0022C7 A3               [24] 9073 	inc	dptr
      0022C8 E0               [24] 9074 	movx	a,@dptr
      0022C9 FD               [12] 9075 	mov	r5,a
      0022CA A3               [24] 9076 	inc	dptr
      0022CB E0               [24] 9077 	movx	a,@dptr
      0022CC FE               [12] 9078 	mov	r6,a
      0022CD A3               [24] 9079 	inc	dptr
      0022CE E0               [24] 9080 	movx	a,@dptr
      0022CF FF               [12] 9081 	mov	r7,a
      0022D0 90 56 21         [24] 9082 	mov	dptr,#_axradio_sync_slave_rxtimeout
      0022D3 E4               [12] 9083 	clr	a
      0022D4 93               [24] 9084 	movc	a,@a+dptr
      0022D5 F8               [12] 9085 	mov	r0,a
      0022D6 74 01            [12] 9086 	mov	a,#0x01
      0022D8 93               [24] 9087 	movc	a,@a+dptr
      0022D9 F9               [12] 9088 	mov	r1,a
      0022DA 74 02            [12] 9089 	mov	a,#0x02
      0022DC 93               [24] 9090 	movc	a,@a+dptr
      0022DD FA               [12] 9091 	mov	r2,a
      0022DE 74 03            [12] 9092 	mov	a,#0x03
      0022E0 93               [24] 9093 	movc	a,@a+dptr
      0022E1 FB               [12] 9094 	mov	r3,a
      0022E2 E8               [12] 9095 	mov	a,r0
      0022E3 2C               [12] 9096 	add	a,r4
      0022E4 FC               [12] 9097 	mov	r4,a
      0022E5 E9               [12] 9098 	mov	a,r1
      0022E6 3D               [12] 9099 	addc	a,r5
      0022E7 FD               [12] 9100 	mov	r5,a
      0022E8 EA               [12] 9101 	mov	a,r2
      0022E9 3E               [12] 9102 	addc	a,r6
      0022EA FE               [12] 9103 	mov	r6,a
      0022EB EB               [12] 9104 	mov	a,r3
      0022EC 3F               [12] 9105 	addc	a,r7
      0022ED FF               [12] 9106 	mov	r7,a
      0022EE 90 02 8E         [24] 9107 	mov	dptr,#(_axradio_timer + 0x0004)
      0022F1 EC               [12] 9108 	mov	a,r4
      0022F2 F0               [24] 9109 	movx	@dptr,a
      0022F3 ED               [12] 9110 	mov	a,r5
      0022F4 A3               [24] 9111 	inc	dptr
      0022F5 F0               [24] 9112 	movx	@dptr,a
      0022F6 EE               [12] 9113 	mov	a,r6
      0022F7 A3               [24] 9114 	inc	dptr
      0022F8 F0               [24] 9115 	movx	@dptr,a
      0022F9 EF               [12] 9116 	mov	a,r7
      0022FA A3               [24] 9117 	inc	dptr
      0022FB F0               [24] 9118 	movx	@dptr,a
                           001799  9119 	C$easyax5043.c$1261$5$337 ==.
                                   9120 ;	..\COMMON\easyax5043.c:1261: wtimer0_addabsolute(&axradio_timer);
      0022FC 90 02 8A         [24] 9121 	mov	dptr,#_axradio_timer
      0022FF 12 47 98         [24] 9122 	lcall	_wtimer0_addabsolute
                           00179F  9123 	C$easyax5043.c$1262$5$337 ==.
                                   9124 ;	..\COMMON\easyax5043.c:1262: break;
      002302 02 24 4C         [24] 9125 	ljmp	00177$
                           0017A2  9126 	C$easyax5043.c$1267$3$334 ==.
                                   9127 ;	..\COMMON\easyax5043.c:1267: case syncstate_slave_rxpacket:
      002305                       9128 00166$:
                           0017A2  9129 	C$easyax5043.c$1268$3$334 ==.
                                   9130 ;	..\COMMON\easyax5043.c:1268: ax5043_off();
      002305 12 18 2E         [24] 9131 	lcall	_ax5043_off
                           0017A5  9132 	C$easyax5043.c$1269$3$334 ==.
                                   9133 ;	..\COMMON\easyax5043.c:1269: if (!axradio_sync_seqnr)
      002308 90 00 10         [24] 9134 	mov	dptr,#_axradio_ack_seqnr
      00230B E0               [24] 9135 	movx	a,@dptr
      00230C 70 06            [24] 9136 	jnz	00168$
                           0017AB  9137 	C$easyax5043.c$1270$3$334 ==.
                                   9138 ;	..\COMMON\easyax5043.c:1270: axradio_sync_seqnr = 1;
      00230E 90 00 10         [24] 9139 	mov	dptr,#_axradio_ack_seqnr
      002311 74 01            [12] 9140 	mov	a,#0x01
      002313 F0               [24] 9141 	movx	@dptr,a
      002314                       9142 00168$:
                           0017B1  9143 	C$easyax5043.c$1271$3$334 ==.
                                   9144 ;	..\COMMON\easyax5043.c:1271: ++axradio_sync_seqnr;
      002314 90 00 10         [24] 9145 	mov	dptr,#_axradio_ack_seqnr
      002317 E0               [24] 9146 	movx	a,@dptr
      002318 24 01            [12] 9147 	add	a,#0x01
      00231A F0               [24] 9148 	movx	@dptr,a
                           0017B8  9149 	C$easyax5043.c$1272$3$334 ==.
                                   9150 ;	..\COMMON\easyax5043.c:1272: update_timeanchor();
      00231B 12 0B 63         [24] 9151 	lcall	_update_timeanchor
                           0017BB  9152 	C$easyax5043.c$1273$3$334 ==.
                                   9153 ;	..\COMMON\easyax5043.c:1273: wtimer_remove_callback(&axradio_cb_receive.cb);
      00231E 90 02 33         [24] 9154 	mov	dptr,#_axradio_cb_receive
      002321 12 51 BE         [24] 9155 	lcall	_wtimer_remove_callback
                           0017C1  9156 	C$easyax5043.c$1274$3$334 ==.
                                   9157 ;	..\COMMON\easyax5043.c:1274: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      002324 75 23 00         [24] 9158 	mov	_memset_PARM_2,#0x00
      002327 75 24 1E         [24] 9159 	mov	_memset_PARM_3,#0x1e
      00232A 75 25 00         [24] 9160 	mov	(_memset_PARM_3 + 1),#0x00
      00232D 90 02 37         [24] 9161 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002330 75 F0 00         [24] 9162 	mov	b,#0x00
      002333 12 46 2E         [24] 9163 	lcall	_memset
                           0017D3  9164 	C$easyax5043.c$1275$3$334 ==.
                                   9165 ;	..\COMMON\easyax5043.c:1275: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      002336 90 00 1B         [24] 9166 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      002339 E0               [24] 9167 	movx	a,@dptr
      00233A FC               [12] 9168 	mov	r4,a
      00233B A3               [24] 9169 	inc	dptr
      00233C E0               [24] 9170 	movx	a,@dptr
      00233D FD               [12] 9171 	mov	r5,a
      00233E A3               [24] 9172 	inc	dptr
      00233F E0               [24] 9173 	movx	a,@dptr
      002340 FE               [12] 9174 	mov	r6,a
      002341 A3               [24] 9175 	inc	dptr
      002342 E0               [24] 9176 	movx	a,@dptr
      002343 FF               [12] 9177 	mov	r7,a
      002344 90 02 39         [24] 9178 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      002347 EC               [12] 9179 	mov	a,r4
      002348 F0               [24] 9180 	movx	@dptr,a
      002349 ED               [12] 9181 	mov	a,r5
      00234A A3               [24] 9182 	inc	dptr
      00234B F0               [24] 9183 	movx	@dptr,a
      00234C EE               [12] 9184 	mov	a,r6
      00234D A3               [24] 9185 	inc	dptr
      00234E F0               [24] 9186 	movx	@dptr,a
      00234F EF               [12] 9187 	mov	a,r7
      002350 A3               [24] 9188 	inc	dptr
      002351 F0               [24] 9189 	movx	@dptr,a
                           0017EF  9190 	C$easyax5043.c$1276$3$334 ==.
                                   9191 ;	..\COMMON\easyax5043.c:1276: axradio_cb_receive.st.error = AXRADIO_ERR_TIMEOUT;
      002352 90 02 38         [24] 9192 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002355 74 03            [12] 9193 	mov	a,#0x03
      002357 F0               [24] 9194 	movx	@dptr,a
                           0017F5  9195 	C$easyax5043.c$1277$3$334 ==.
                                   9196 ;	..\COMMON\easyax5043.c:1277: if (axradio_sync_seqnr <= axradio_sync_slave_resyncloss) {
      002358 90 00 10         [24] 9197 	mov	dptr,#_axradio_ack_seqnr
      00235B E0               [24] 9198 	movx	a,@dptr
      00235C FF               [12] 9199 	mov	r7,a
      00235D 90 56 07         [24] 9200 	mov	dptr,#_axradio_sync_slave_resyncloss
      002360 E4               [12] 9201 	clr	a
      002361 93               [24] 9202 	movc	a,@a+dptr
      002362 FE               [12] 9203 	mov	r6,a
      002363 C3               [12] 9204 	clr	c
      002364 9F               [12] 9205 	subb	a,r7
      002365 40 57            [24] 9206 	jc	00172$
                           001804  9207 	C$easyax5043.c$1278$4$338 ==.
                                   9208 ;	..\COMMON\easyax5043.c:1278: wtimer_add_callback(&axradio_cb_receive.cb);
      002367 90 02 33         [24] 9209 	mov	dptr,#_axradio_cb_receive
      00236A 12 46 A2         [24] 9210 	lcall	_wtimer_add_callback
                           00180A  9211 	C$easyax5043.c$1279$4$338 ==.
                                   9212 ;	..\COMMON\easyax5043.c:1279: axradio_sync_slave_nextperiod();
      00236D 12 1B 8D         [24] 9213 	lcall	_axradio_sync_slave_nextperiod
                           00180D  9214 	C$easyax5043.c$1280$4$338 ==.
                                   9215 ;	..\COMMON\easyax5043.c:1280: axradio_syncstate = syncstate_slave_rxidle;
      002370 90 00 05         [24] 9216 	mov	dptr,#_axradio_syncstate
      002373 74 08            [12] 9217 	mov	a,#0x08
      002375 F0               [24] 9218 	movx	@dptr,a
                           001813  9219 	C$easyax5043.c$1281$4$338 ==.
                                   9220 ;	..\COMMON\easyax5043.c:1281: wtimer_remove(&axradio_timer);
      002376 90 02 8A         [24] 9221 	mov	dptr,#_axradio_timer
      002379 12 4D D3         [24] 9222 	lcall	_wtimer_remove
                           001819  9223 	C$easyax5043.c$1283$5$338 ==.
                                   9224 ;	..\COMMON\easyax5043.c:1283: uint8_t __autodata idx = axradio_sync_seqnr;
      00237C 90 00 10         [24] 9225 	mov	dptr,#_axradio_ack_seqnr
      00237F E0               [24] 9226 	movx	a,@dptr
      002380 FF               [12] 9227 	mov	r7,a
                           00181E  9228 	C$easyax5043.c$1284$5$339 ==.
                                   9229 ;	..\COMMON\easyax5043.c:1284: if (idx >= axradio_sync_slave_nrrx)
      002381 90 56 08         [24] 9230 	mov	dptr,#_axradio_sync_slave_nrrx
      002384 E4               [12] 9231 	clr	a
      002385 93               [24] 9232 	movc	a,@a+dptr
      002386 FE               [12] 9233 	mov	r6,a
      002387 C3               [12] 9234 	clr	c
      002388 EF               [12] 9235 	mov	a,r7
      002389 9E               [12] 9236 	subb	a,r6
      00238A 40 03            [24] 9237 	jc	00170$
                           001829  9238 	C$easyax5043.c$1285$5$339 ==.
                                   9239 ;	..\COMMON\easyax5043.c:1285: idx = axradio_sync_slave_nrrx - 1;
      00238C EE               [12] 9240 	mov	a,r6
      00238D 14               [12] 9241 	dec	a
      00238E FF               [12] 9242 	mov	r7,a
      00238F                       9243 00170$:
                           00182C  9244 	C$easyax5043.c$1286$5$339 ==.
                                   9245 ;	..\COMMON\easyax5043.c:1286: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[idx]);
      00238F EF               [12] 9246 	mov	a,r7
      002390 75 F0 04         [24] 9247 	mov	b,#0x04
      002393 A4               [48] 9248 	mul	ab
      002394 24 09            [12] 9249 	add	a,#_axradio_sync_slave_rxadvance
      002396 F5 82            [12] 9250 	mov	dpl,a
      002398 74 56            [12] 9251 	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
      00239A 35 F0            [12] 9252 	addc	a,b
      00239C F5 83            [12] 9253 	mov	dph,a
      00239E E4               [12] 9254 	clr	a
      00239F 93               [24] 9255 	movc	a,@a+dptr
      0023A0 FC               [12] 9256 	mov	r4,a
      0023A1 A3               [24] 9257 	inc	dptr
      0023A2 E4               [12] 9258 	clr	a
      0023A3 93               [24] 9259 	movc	a,@a+dptr
      0023A4 FD               [12] 9260 	mov	r5,a
      0023A5 A3               [24] 9261 	inc	dptr
      0023A6 E4               [12] 9262 	clr	a
      0023A7 93               [24] 9263 	movc	a,@a+dptr
      0023A8 FE               [12] 9264 	mov	r6,a
      0023A9 A3               [24] 9265 	inc	dptr
      0023AA E4               [12] 9266 	clr	a
      0023AB 93               [24] 9267 	movc	a,@a+dptr
      0023AC 8C 82            [24] 9268 	mov	dpl,r4
      0023AE 8D 83            [24] 9269 	mov	dph,r5
      0023B0 8E F0            [24] 9270 	mov	b,r6
      0023B2 12 1A 27         [24] 9271 	lcall	_axradio_sync_settimeradv
                           001852  9272 	C$easyax5043.c$1288$4$338 ==.
                                   9273 ;	..\COMMON\easyax5043.c:1288: wtimer0_addabsolute(&axradio_timer);
      0023B5 90 02 8A         [24] 9274 	mov	dptr,#_axradio_timer
      0023B8 12 47 98         [24] 9275 	lcall	_wtimer0_addabsolute
                           001858  9276 	C$easyax5043.c$1289$4$338 ==.
                                   9277 ;	..\COMMON\easyax5043.c:1289: break;
      0023BB 02 24 4C         [24] 9278 	ljmp	00177$
      0023BE                       9279 00172$:
                           00185B  9280 	C$easyax5043.c$1291$3$334 ==.
                                   9281 ;	..\COMMON\easyax5043.c:1291: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
      0023BE 90 02 38         [24] 9282 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      0023C1 74 09            [12] 9283 	mov	a,#0x09
      0023C3 F0               [24] 9284 	movx	@dptr,a
                           001861  9285 	C$easyax5043.c$1292$3$334 ==.
                                   9286 ;	..\COMMON\easyax5043.c:1292: wtimer_add_callback(&axradio_cb_receive.cb);
      0023C4 90 02 33         [24] 9287 	mov	dptr,#_axradio_cb_receive
      0023C7 12 46 A2         [24] 9288 	lcall	_wtimer_add_callback
                           001867  9289 	C$easyax5043.c$1293$3$334 ==.
                                   9290 ;	..\COMMON\easyax5043.c:1293: ax5043_receiver_on_continuous();
      0023CA 12 16 DC         [24] 9291 	lcall	_ax5043_receiver_on_continuous
                           00186A  9292 	C$easyax5043.c$1294$3$334 ==.
                                   9293 ;	..\COMMON\easyax5043.c:1294: axradio_syncstate = syncstate_slave_synchunt;
      0023CD 90 00 05         [24] 9294 	mov	dptr,#_axradio_syncstate
      0023D0 74 06            [12] 9295 	mov	a,#0x06
      0023D2 F0               [24] 9296 	movx	@dptr,a
                           001870  9297 	C$easyax5043.c$1295$3$334 ==.
                                   9298 ;	..\COMMON\easyax5043.c:1295: wtimer_remove(&axradio_timer);
      0023D3 90 02 8A         [24] 9299 	mov	dptr,#_axradio_timer
      0023D6 12 4D D3         [24] 9300 	lcall	_wtimer_remove
                           001876  9301 	C$easyax5043.c$1296$3$334 ==.
                                   9302 ;	..\COMMON\easyax5043.c:1296: axradio_timer.time = axradio_sync_slave_syncwindow;
      0023D9 90 55 F9         [24] 9303 	mov	dptr,#_axradio_sync_slave_syncwindow
      0023DC E4               [12] 9304 	clr	a
      0023DD 93               [24] 9305 	movc	a,@a+dptr
      0023DE FC               [12] 9306 	mov	r4,a
      0023DF 74 01            [12] 9307 	mov	a,#0x01
      0023E1 93               [24] 9308 	movc	a,@a+dptr
      0023E2 FD               [12] 9309 	mov	r5,a
      0023E3 74 02            [12] 9310 	mov	a,#0x02
      0023E5 93               [24] 9311 	movc	a,@a+dptr
      0023E6 FE               [12] 9312 	mov	r6,a
      0023E7 74 03            [12] 9313 	mov	a,#0x03
      0023E9 93               [24] 9314 	movc	a,@a+dptr
      0023EA FF               [12] 9315 	mov	r7,a
      0023EB 90 02 8E         [24] 9316 	mov	dptr,#(_axradio_timer + 0x0004)
      0023EE EC               [12] 9317 	mov	a,r4
      0023EF F0               [24] 9318 	movx	@dptr,a
      0023F0 ED               [12] 9319 	mov	a,r5
      0023F1 A3               [24] 9320 	inc	dptr
      0023F2 F0               [24] 9321 	movx	@dptr,a
      0023F3 EE               [12] 9322 	mov	a,r6
      0023F4 A3               [24] 9323 	inc	dptr
      0023F5 F0               [24] 9324 	movx	@dptr,a
      0023F6 EF               [12] 9325 	mov	a,r7
      0023F7 A3               [24] 9326 	inc	dptr
      0023F8 F0               [24] 9327 	movx	@dptr,a
                           001896  9328 	C$easyax5043.c$1297$3$334 ==.
                                   9329 ;	..\COMMON\easyax5043.c:1297: wtimer0_addrelative(&axradio_timer);
      0023F9 90 02 8A         [24] 9330 	mov	dptr,#_axradio_timer
      0023FC 12 46 BC         [24] 9331 	lcall	_wtimer0_addrelative
                           00189C  9332 	C$easyax5043.c$1298$3$334 ==.
                                   9333 ;	..\COMMON\easyax5043.c:1298: axradio_sync_time = axradio_timer.time;
      0023FF 90 02 8E         [24] 9334 	mov	dptr,#(_axradio_timer + 0x0004)
      002402 E0               [24] 9335 	movx	a,@dptr
      002403 FC               [12] 9336 	mov	r4,a
      002404 A3               [24] 9337 	inc	dptr
      002405 E0               [24] 9338 	movx	a,@dptr
      002406 FD               [12] 9339 	mov	r5,a
      002407 A3               [24] 9340 	inc	dptr
      002408 E0               [24] 9341 	movx	a,@dptr
      002409 FE               [12] 9342 	mov	r6,a
      00240A A3               [24] 9343 	inc	dptr
      00240B E0               [24] 9344 	movx	a,@dptr
      00240C FF               [12] 9345 	mov	r7,a
      00240D 90 00 11         [24] 9346 	mov	dptr,#_axradio_sync_time
      002410 EC               [12] 9347 	mov	a,r4
      002411 F0               [24] 9348 	movx	@dptr,a
      002412 ED               [12] 9349 	mov	a,r5
      002413 A3               [24] 9350 	inc	dptr
      002414 F0               [24] 9351 	movx	@dptr,a
      002415 EE               [12] 9352 	mov	a,r6
      002416 A3               [24] 9353 	inc	dptr
      002417 F0               [24] 9354 	movx	@dptr,a
      002418 EF               [12] 9355 	mov	a,r7
      002419 A3               [24] 9356 	inc	dptr
      00241A F0               [24] 9357 	movx	@dptr,a
                           0018B8  9358 	C$easyax5043.c$1299$3$334 ==.
                                   9359 ;	..\COMMON\easyax5043.c:1299: break;
                           0018B8  9360 	C$easyax5043.c$1301$3$334 ==.
                                   9361 ;	..\COMMON\easyax5043.c:1301: case syncstate_slave_rxack:
      00241B 80 2F            [24] 9362 	sjmp	00177$
      00241D                       9363 00173$:
                           0018BA  9364 	C$easyax5043.c$1302$3$334 ==.
                                   9365 ;	..\COMMON\easyax5043.c:1302: axradio_syncstate = syncstate_slave_rxidle;
      00241D 90 00 05         [24] 9366 	mov	dptr,#_axradio_syncstate
      002420 74 08            [12] 9367 	mov	a,#0x08
      002422 F0               [24] 9368 	movx	@dptr,a
                           0018C0  9369 	C$easyax5043.c$1303$3$334 ==.
                                   9370 ;	..\COMMON\easyax5043.c:1303: wtimer_remove(&axradio_timer);
      002423 90 02 8A         [24] 9371 	mov	dptr,#_axradio_timer
      002426 12 4D D3         [24] 9372 	lcall	_wtimer_remove
                           0018C6  9373 	C$easyax5043.c$1304$3$334 ==.
                                   9374 ;	..\COMMON\easyax5043.c:1304: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[1]);
      002429 90 56 0D         [24] 9375 	mov	dptr,#(_axradio_sync_slave_rxadvance + 0x0004)
      00242C E4               [12] 9376 	clr	a
      00242D 93               [24] 9377 	movc	a,@a+dptr
      00242E FC               [12] 9378 	mov	r4,a
      00242F A3               [24] 9379 	inc	dptr
      002430 E4               [12] 9380 	clr	a
      002431 93               [24] 9381 	movc	a,@a+dptr
      002432 FD               [12] 9382 	mov	r5,a
      002433 A3               [24] 9383 	inc	dptr
      002434 E4               [12] 9384 	clr	a
      002435 93               [24] 9385 	movc	a,@a+dptr
      002436 FE               [12] 9386 	mov	r6,a
      002437 A3               [24] 9387 	inc	dptr
      002438 E4               [12] 9388 	clr	a
      002439 93               [24] 9389 	movc	a,@a+dptr
      00243A 8C 82            [24] 9390 	mov	dpl,r4
      00243C 8D 83            [24] 9391 	mov	dph,r5
      00243E 8E F0            [24] 9392 	mov	b,r6
      002440 12 1A 27         [24] 9393 	lcall	_axradio_sync_settimeradv
                           0018E0  9394 	C$easyax5043.c$1305$3$334 ==.
                                   9395 ;	..\COMMON\easyax5043.c:1305: wtimer0_addabsolute(&axradio_timer);
      002443 90 02 8A         [24] 9396 	mov	dptr,#_axradio_timer
      002446 12 47 98         [24] 9397 	lcall	_wtimer0_addabsolute
                           0018E6  9398 	C$easyax5043.c$1306$3$334 ==.
                                   9399 ;	..\COMMON\easyax5043.c:1306: goto transmitack;
      002449 02 1E 11         [24] 9400 	ljmp	00133$
                           0018E9  9401 	C$easyax5043.c$1310$2$326 ==.
                                   9402 ;	..\COMMON\easyax5043.c:1310: default:
      00244C                       9403 00175$:
                           0018E9  9404 	C$easyax5043.c$1312$1$325 ==.
                                   9405 ;	..\COMMON\easyax5043.c:1312: }
      00244C                       9406 00177$:
                           0018E9  9407 	C$easyax5043.c$1313$1$325 ==.
                           0018E9  9408 	XFeasyax5043$axradio_timer_callback$0$0 ==.
      00244C 22               [24] 9409 	ret
                                   9410 ;------------------------------------------------------------
                                   9411 ;Allocation info for local variables in function 'axradio_callback_fwd'
                                   9412 ;------------------------------------------------------------
                                   9413 ;desc                      Allocated to registers r6 r7 
                                   9414 ;------------------------------------------------------------
                           0018EA  9415 	Feasyax5043$axradio_callback_fwd$0$0 ==.
                           0018EA  9416 	C$easyax5043.c$1315$1$325 ==.
                                   9417 ;	..\COMMON\easyax5043.c:1315: static __reentrantb void axradio_callback_fwd(struct wtimer_callback __xdata *desc) __reentrant
                                   9418 ;	-----------------------------------------
                                   9419 ;	 function axradio_callback_fwd
                                   9420 ;	-----------------------------------------
      00244D                       9421 _axradio_callback_fwd:
      00244D AE 82            [24] 9422 	mov	r6,dpl
      00244F AF 83            [24] 9423 	mov	r7,dph
                           0018EE  9424 	C$easyax5043.c$1317$1$341 ==.
                                   9425 ;	..\COMMON\easyax5043.c:1317: axradio_statuschange((struct axradio_status __xdata *)(desc + 1));
      002451 74 04            [12] 9426 	mov	a,#0x04
      002453 2E               [12] 9427 	add	a,r6
      002454 FE               [12] 9428 	mov	r6,a
      002455 E4               [12] 9429 	clr	a
      002456 3F               [12] 9430 	addc	a,r7
      002457 FF               [12] 9431 	mov	r7,a
      002458 8E 82            [24] 9432 	mov	dpl,r6
      00245A 8F 83            [24] 9433 	mov	dph,r7
      00245C 12 3D EF         [24] 9434 	lcall	_axradio_statuschange
                           0018FC  9435 	C$easyax5043.c$1318$1$341 ==.
                           0018FC  9436 	XFeasyax5043$axradio_callback_fwd$0$0 ==.
      00245F 22               [24] 9437 	ret
                                   9438 ;------------------------------------------------------------
                                   9439 ;Allocation info for local variables in function 'axradio_receive_callback_fwd'
                                   9440 ;------------------------------------------------------------
                                   9441 ;desc                      Allocated to registers 
                                   9442 ;len                       Allocated to registers r6 r7 
                                   9443 ;len                       Allocated to registers r6 r7 
                                   9444 ;seqnr                     Allocated to registers r6 
                                   9445 ;len_byte                  Allocated to registers r6 
                                   9446 ;trxst                     Allocated to registers r6 
                                   9447 ;iesave                    Allocated to registers r7 
                                   9448 ;------------------------------------------------------------
                           0018FD  9449 	Feasyax5043$axradio_receive_callback_fwd$0$0 ==.
                           0018FD  9450 	C$easyax5043.c$1320$1$341 ==.
                                   9451 ;	..\COMMON\easyax5043.c:1320: static void axradio_receive_callback_fwd(struct wtimer_callback __xdata *desc)
                                   9452 ;	-----------------------------------------
                                   9453 ;	 function axradio_receive_callback_fwd
                                   9454 ;	-----------------------------------------
      002460                       9455 _axradio_receive_callback_fwd:
                           0018FD  9456 	C$easyax5043.c$1324$1$343 ==.
                                   9457 ;	..\COMMON\easyax5043.c:1324: if (axradio_cb_receive.st.error != AXRADIO_ERR_NOERROR) {
      002460 90 02 38         [24] 9458 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002463 E0               [24] 9459 	movx	a,@dptr
      002464 60 09            [24] 9460 	jz	00102$
                           001903  9461 	C$easyax5043.c$1325$2$344 ==.
                                   9462 ;	..\COMMON\easyax5043.c:1325: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
      002466 90 02 37         [24] 9463 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002469 12 3D EF         [24] 9464 	lcall	_axradio_statuschange
                           001909  9465 	C$easyax5043.c$1326$2$344 ==.
                                   9466 ;	..\COMMON\easyax5043.c:1326: return;
      00246C 02 29 4C         [24] 9467 	ljmp	00176$
      00246F                       9468 00102$:
                           00190C  9469 	C$easyax5043.c$1328$1$343 ==.
                                   9470 ;	..\COMMON\easyax5043.c:1328: if (axradio_phy_pn9 && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
      00246F 90 55 B4         [24] 9471 	mov	dptr,#_axradio_phy_pn9
      002472 E4               [12] 9472 	clr	a
      002473 93               [24] 9473 	movc	a,@a+dptr
      002474 60 51            [24] 9474 	jz	00104$
      002476 74 F8            [12] 9475 	mov	a,#0xf8
      002478 55 08            [12] 9476 	anl	a,_axradio_mode
      00247A FF               [12] 9477 	mov	r7,a
      00247B BF 28 02         [24] 9478 	cjne	r7,#0x28,00282$
      00247E 80 47            [24] 9479 	sjmp	00104$
      002480                       9480 00282$:
                           00191D  9481 	C$easyax5043.c$1329$2$345 ==.
                                   9482 ;	..\COMMON\easyax5043.c:1329: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
      002480 90 02 53         [24] 9483 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      002483 E0               [24] 9484 	movx	a,@dptr
      002484 FE               [12] 9485 	mov	r6,a
      002485 A3               [24] 9486 	inc	dptr
      002486 E0               [24] 9487 	movx	a,@dptr
      002487 FF               [12] 9488 	mov	r7,a
                           001925  9489 	C$easyax5043.c$1330$2$345 ==.
                                   9490 ;	..\COMMON\easyax5043.c:1330: len += axradio_framing_maclen;
      002488 90 55 D5         [24] 9491 	mov	dptr,#_axradio_framing_maclen
      00248B E4               [12] 9492 	clr	a
      00248C 93               [24] 9493 	movc	a,@a+dptr
      00248D 7C 00            [12] 9494 	mov	r4,#0x00
      00248F 2E               [12] 9495 	add	a,r6
      002490 FE               [12] 9496 	mov	r6,a
      002491 EC               [12] 9497 	mov	a,r4
      002492 3F               [12] 9498 	addc	a,r7
      002493 FF               [12] 9499 	mov	r7,a
                           001931  9500 	C$easyax5043.c$1331$2$345 ==.
                                   9501 ;	..\COMMON\easyax5043.c:1331: pn9_buffer((__xdata uint8_t *)axradio_cb_receive.st.rx.mac.raw, len, 0x1ff, -(AX5043_ENCODING & 0x01));
      002494 90 40 11         [24] 9502 	mov	dptr,#_AX5043_ENCODING
      002497 E0               [24] 9503 	movx	a,@dptr
      002498 FD               [12] 9504 	mov	r5,a
      002499 53 05 01         [24] 9505 	anl	ar5,#0x01
      00249C C3               [12] 9506 	clr	c
      00249D E4               [12] 9507 	clr	a
      00249E 9D               [12] 9508 	subb	a,r5
      00249F FD               [12] 9509 	mov	r5,a
      0024A0 90 02 4F         [24] 9510 	mov	dptr,#(_axradio_cb_receive + 0x001c)
      0024A3 E0               [24] 9511 	movx	a,@dptr
      0024A4 FB               [12] 9512 	mov	r3,a
      0024A5 A3               [24] 9513 	inc	dptr
      0024A6 E0               [24] 9514 	movx	a,@dptr
      0024A7 FC               [12] 9515 	mov	r4,a
      0024A8 7A 00            [12] 9516 	mov	r2,#0x00
      0024AA C0 05            [24] 9517 	push	ar5
      0024AC 74 FF            [12] 9518 	mov	a,#0xff
      0024AE C0 E0            [24] 9519 	push	acc
      0024B0 74 01            [12] 9520 	mov	a,#0x01
      0024B2 C0 E0            [24] 9521 	push	acc
      0024B4 C0 06            [24] 9522 	push	ar6
      0024B6 C0 07            [24] 9523 	push	ar7
      0024B8 8B 82            [24] 9524 	mov	dpl,r3
      0024BA 8C 83            [24] 9525 	mov	dph,r4
      0024BC 8A F0            [24] 9526 	mov	b,r2
      0024BE 12 47 EB         [24] 9527 	lcall	_pn9_buffer
      0024C1 E5 81            [12] 9528 	mov	a,sp
      0024C3 24 FB            [12] 9529 	add	a,#0xfb
      0024C5 F5 81            [12] 9530 	mov	sp,a
      0024C7                       9531 00104$:
                           001964  9532 	C$easyax5043.c$1333$1$343 ==.
                                   9533 ;	..\COMMON\easyax5043.c:1333: if (axradio_framing_swcrclen && !AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode)) {
      0024C7 90 55 DC         [24] 9534 	mov	dptr,#_axradio_framing_swcrclen
      0024CA E4               [12] 9535 	clr	a
      0024CB 93               [24] 9536 	movc	a,@a+dptr
      0024CC 60 66            [24] 9537 	jz	00109$
      0024CE 74 F8            [12] 9538 	mov	a,#0xf8
      0024D0 55 08            [12] 9539 	anl	a,_axradio_mode
      0024D2 FF               [12] 9540 	mov	r7,a
      0024D3 BF 28 02         [24] 9541 	cjne	r7,#0x28,00284$
      0024D6 80 5C            [24] 9542 	sjmp	00109$
      0024D8                       9543 00284$:
                           001975  9544 	C$easyax5043.c$1334$2$346 ==.
                                   9545 ;	..\COMMON\easyax5043.c:1334: uint16_t __autodata len = axradio_cb_receive.st.rx.pktlen;
      0024D8 90 02 53         [24] 9546 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      0024DB E0               [24] 9547 	movx	a,@dptr
      0024DC FE               [12] 9548 	mov	r6,a
      0024DD A3               [24] 9549 	inc	dptr
      0024DE E0               [24] 9550 	movx	a,@dptr
      0024DF FF               [12] 9551 	mov	r7,a
                           00197D  9552 	C$easyax5043.c$1335$2$346 ==.
                                   9553 ;	..\COMMON\easyax5043.c:1335: len += axradio_framing_maclen;
      0024E0 90 55 D5         [24] 9554 	mov	dptr,#_axradio_framing_maclen
      0024E3 E4               [12] 9555 	clr	a
      0024E4 93               [24] 9556 	movc	a,@a+dptr
      0024E5 7C 00            [12] 9557 	mov	r4,#0x00
      0024E7 2E               [12] 9558 	add	a,r6
      0024E8 FE               [12] 9559 	mov	r6,a
      0024E9 EC               [12] 9560 	mov	a,r4
      0024EA 3F               [12] 9561 	addc	a,r7
      0024EB FF               [12] 9562 	mov	r7,a
                           001989  9563 	C$easyax5043.c$1336$2$346 ==.
                                   9564 ;	..\COMMON\easyax5043.c:1336: len = axradio_framing_check_crc((uint8_t __xdata *)axradio_cb_receive.st.rx.mac.raw, len);
      0024EC 90 02 4F         [24] 9565 	mov	dptr,#(_axradio_cb_receive + 0x001c)
      0024EF E0               [24] 9566 	movx	a,@dptr
      0024F0 FC               [12] 9567 	mov	r4,a
      0024F1 A3               [24] 9568 	inc	dptr
      0024F2 E0               [24] 9569 	movx	a,@dptr
      0024F3 FD               [12] 9570 	mov	r5,a
      0024F4 C0 06            [24] 9571 	push	ar6
      0024F6 C0 07            [24] 9572 	push	ar7
      0024F8 8C 82            [24] 9573 	mov	dpl,r4
      0024FA 8D 83            [24] 9574 	mov	dph,r5
      0024FC 12 09 35         [24] 9575 	lcall	_axradio_framing_check_crc
      0024FF AE 82            [24] 9576 	mov	r6,dpl
      002501 AF 83            [24] 9577 	mov	r7,dph
      002503 15 81            [12] 9578 	dec	sp
      002505 15 81            [12] 9579 	dec	sp
                           0019A4  9580 	C$easyax5043.c$1337$2$346 ==.
                                   9581 ;	..\COMMON\easyax5043.c:1337: if (!len)
      002507 EE               [12] 9582 	mov	a,r6
      002508 4F               [12] 9583 	orl	a,r7
      002509 70 03            [24] 9584 	jnz	00285$
      00250B 02 28 FF         [24] 9585 	ljmp	00159$
      00250E                       9586 00285$:
                           0019AB  9587 	C$easyax5043.c$1340$2$346 ==.
                                   9588 ;	..\COMMON\easyax5043.c:1340: len -= axradio_framing_maclen;
      00250E 90 55 D5         [24] 9589 	mov	dptr,#_axradio_framing_maclen
      002511 E4               [12] 9590 	clr	a
      002512 93               [24] 9591 	movc	a,@a+dptr
      002513 FD               [12] 9592 	mov	r5,a
      002514 7C 00            [12] 9593 	mov	r4,#0x00
      002516 EE               [12] 9594 	mov	a,r6
      002517 C3               [12] 9595 	clr	c
      002518 9D               [12] 9596 	subb	a,r5
      002519 FE               [12] 9597 	mov	r6,a
      00251A EF               [12] 9598 	mov	a,r7
      00251B 9C               [12] 9599 	subb	a,r4
      00251C FF               [12] 9600 	mov	r7,a
                           0019BA  9601 	C$easyax5043.c$1341$2$346 ==.
                                   9602 ;	..\COMMON\easyax5043.c:1341: len -= axradio_framing_swcrclen; // drop crc
      00251D 90 55 DC         [24] 9603 	mov	dptr,#_axradio_framing_swcrclen
      002520 E4               [12] 9604 	clr	a
      002521 93               [24] 9605 	movc	a,@a+dptr
      002522 FD               [12] 9606 	mov	r5,a
      002523 7C 00            [12] 9607 	mov	r4,#0x00
      002525 EE               [12] 9608 	mov	a,r6
      002526 C3               [12] 9609 	clr	c
      002527 9D               [12] 9610 	subb	a,r5
      002528 FE               [12] 9611 	mov	r6,a
      002529 EF               [12] 9612 	mov	a,r7
      00252A 9C               [12] 9613 	subb	a,r4
      00252B FF               [12] 9614 	mov	r7,a
                           0019C9  9615 	C$easyax5043.c$1342$2$346 ==.
                                   9616 ;	..\COMMON\easyax5043.c:1342: axradio_cb_receive.st.rx.pktlen = len;
      00252C 90 02 53         [24] 9617 	mov	dptr,#(_axradio_cb_receive + 0x0020)
      00252F EE               [12] 9618 	mov	a,r6
      002530 F0               [24] 9619 	movx	@dptr,a
      002531 EF               [12] 9620 	mov	a,r7
      002532 A3               [24] 9621 	inc	dptr
      002533 F0               [24] 9622 	movx	@dptr,a
      002534                       9623 00109$:
                           0019D1  9624 	C$easyax5043.c$1346$1$343 ==.
                                   9625 ;	..\COMMON\easyax5043.c:1346: axradio_cb_receive.st.rx.phy.timeoffset = 0;
      002534 90 02 43         [24] 9626 	mov	dptr,#(_axradio_cb_receive + 0x0010)
      002537 E4               [12] 9627 	clr	a
      002538 F0               [24] 9628 	movx	@dptr,a
      002539 A3               [24] 9629 	inc	dptr
      00253A F0               [24] 9630 	movx	@dptr,a
                           0019D8  9631 	C$easyax5043.c$1347$1$343 ==.
                                   9632 ;	..\COMMON\easyax5043.c:1347: axradio_cb_receive.st.rx.phy.period = 0;
      00253B 90 02 45         [24] 9633 	mov	dptr,#(_axradio_cb_receive + 0x0012)
      00253E F0               [24] 9634 	movx	@dptr,a
      00253F A3               [24] 9635 	inc	dptr
      002540 F0               [24] 9636 	movx	@dptr,a
                           0019DE  9637 	C$easyax5043.c$1348$1$343 ==.
                                   9638 ;	..\COMMON\easyax5043.c:1348: if (axradio_mode == AXRADIO_MODE_ACK_TRANSMIT ||
      002541 74 12            [12] 9639 	mov	a,#0x12
      002543 B5 08 02         [24] 9640 	cjne	a,_axradio_mode,00286$
      002546 80 0C            [24] 9641 	sjmp	00113$
      002548                       9642 00286$:
                           0019E5  9643 	C$easyax5043.c$1349$1$343 ==.
                                   9644 ;	..\COMMON\easyax5043.c:1349: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT ||
      002548 74 13            [12] 9645 	mov	a,#0x13
      00254A B5 08 02         [24] 9646 	cjne	a,_axradio_mode,00287$
      00254D 80 05            [24] 9647 	sjmp	00113$
      00254F                       9648 00287$:
                           0019EC  9649 	C$easyax5043.c$1350$1$343 ==.
                                   9650 ;	..\COMMON\easyax5043.c:1350: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
      00254F 74 31            [12] 9651 	mov	a,#0x31
      002551 B5 08 60         [24] 9652 	cjne	a,_axradio_mode,00114$
      002554                       9653 00113$:
                           0019F1  9654 	C$easyax5043.c$1351$2$347 ==.
                                   9655 ;	..\COMMON\easyax5043.c:1351: ax5043_off();
      002554 12 18 2E         [24] 9656 	lcall	_ax5043_off
                           0019F4  9657 	C$easyax5043.c$1352$2$347 ==.
                                   9658 ;	..\COMMON\easyax5043.c:1352: wtimer_remove(&axradio_timer);
      002557 90 02 8A         [24] 9659 	mov	dptr,#_axradio_timer
      00255A 12 4D D3         [24] 9660 	lcall	_wtimer_remove
                           0019FA  9661 	C$easyax5043.c$1353$2$347 ==.
                                   9662 ;	..\COMMON\easyax5043.c:1353: if (axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER) {
      00255D 74 31            [12] 9663 	mov	a,#0x31
      00255F B5 08 26         [24] 9664 	cjne	a,_axradio_mode,00112$
                           0019FF  9665 	C$easyax5043.c$1354$3$348 ==.
                                   9666 ;	..\COMMON\easyax5043.c:1354: axradio_syncstate = syncstate_master_normal;
      002562 90 00 05         [24] 9667 	mov	dptr,#_axradio_syncstate
      002565 74 03            [12] 9668 	mov	a,#0x03
      002567 F0               [24] 9669 	movx	@dptr,a
                           001A05  9670 	C$easyax5043.c$1355$3$348 ==.
                                   9671 ;	..\COMMON\easyax5043.c:1355: axradio_sync_settimeradv(axradio_sync_xoscstartup);
      002568 90 55 F5         [24] 9672 	mov	dptr,#_axradio_sync_xoscstartup
      00256B E4               [12] 9673 	clr	a
      00256C 93               [24] 9674 	movc	a,@a+dptr
      00256D FC               [12] 9675 	mov	r4,a
      00256E 74 01            [12] 9676 	mov	a,#0x01
      002570 93               [24] 9677 	movc	a,@a+dptr
      002571 FD               [12] 9678 	mov	r5,a
      002572 74 02            [12] 9679 	mov	a,#0x02
      002574 93               [24] 9680 	movc	a,@a+dptr
      002575 FE               [12] 9681 	mov	r6,a
      002576 74 03            [12] 9682 	mov	a,#0x03
      002578 93               [24] 9683 	movc	a,@a+dptr
      002579 8C 82            [24] 9684 	mov	dpl,r4
      00257B 8D 83            [24] 9685 	mov	dph,r5
      00257D 8E F0            [24] 9686 	mov	b,r6
      00257F 12 1A 27         [24] 9687 	lcall	_axradio_sync_settimeradv
                           001A1F  9688 	C$easyax5043.c$1356$3$348 ==.
                                   9689 ;	..\COMMON\easyax5043.c:1356: wtimer0_addabsolute(&axradio_timer);
      002582 90 02 8A         [24] 9690 	mov	dptr,#_axradio_timer
      002585 12 47 98         [24] 9691 	lcall	_wtimer0_addabsolute
      002588                       9692 00112$:
                           001A25  9693 	C$easyax5043.c$1358$2$347 ==.
                                   9694 ;	..\COMMON\easyax5043.c:1358: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      002588 90 02 76         [24] 9695 	mov	dptr,#_axradio_cb_transmitend
      00258B 12 51 BE         [24] 9696 	lcall	_wtimer_remove_callback
                           001A2B  9697 	C$easyax5043.c$1359$2$347 ==.
                                   9698 ;	..\COMMON\easyax5043.c:1359: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      00258E 90 02 7B         [24] 9699 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      002591 E4               [12] 9700 	clr	a
      002592 F0               [24] 9701 	movx	@dptr,a
                           001A30  9702 	C$easyax5043.c$1360$2$347 ==.
                                   9703 ;	..\COMMON\easyax5043.c:1360: axradio_cb_transmitend.st.time.t = radio_read24((uint16_t)&AX5043_TIMER2);
      002593 90 40 59         [24] 9704 	mov	dptr,#_AX5043_TIMER2
      002596 12 47 C4         [24] 9705 	lcall	_radio_read24
      002599 AC 82            [24] 9706 	mov	r4,dpl
      00259B AD 83            [24] 9707 	mov	r5,dph
      00259D AE F0            [24] 9708 	mov	r6,b
      00259F FF               [12] 9709 	mov	r7,a
      0025A0 90 02 7C         [24] 9710 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      0025A3 EC               [12] 9711 	mov	a,r4
      0025A4 F0               [24] 9712 	movx	@dptr,a
      0025A5 ED               [12] 9713 	mov	a,r5
      0025A6 A3               [24] 9714 	inc	dptr
      0025A7 F0               [24] 9715 	movx	@dptr,a
      0025A8 EE               [12] 9716 	mov	a,r6
      0025A9 A3               [24] 9717 	inc	dptr
      0025AA F0               [24] 9718 	movx	@dptr,a
      0025AB EF               [12] 9719 	mov	a,r7
      0025AC A3               [24] 9720 	inc	dptr
      0025AD F0               [24] 9721 	movx	@dptr,a
                           001A4B  9722 	C$easyax5043.c$1361$2$347 ==.
                                   9723 ;	..\COMMON\easyax5043.c:1361: wtimer_add_callback(&axradio_cb_transmitend.cb);
      0025AE 90 02 76         [24] 9724 	mov	dptr,#_axradio_cb_transmitend
      0025B1 12 46 A2         [24] 9725 	lcall	_wtimer_add_callback
      0025B4                       9726 00114$:
                           001A51  9727 	C$easyax5043.c$1363$1$343 ==.
                                   9728 ;	..\COMMON\easyax5043.c:1363: if (axradio_framing_destaddrpos != 0xff)
      0025B4 90 55 D7         [24] 9729 	mov	dptr,#_axradio_framing_destaddrpos
      0025B7 E4               [12] 9730 	clr	a
      0025B8 93               [24] 9731 	movc	a,@a+dptr
      0025B9 FF               [12] 9732 	mov	r7,a
      0025BA BF FF 02         [24] 9733 	cjne	r7,#0xff,00292$
      0025BD 80 29            [24] 9734 	sjmp	00118$
      0025BF                       9735 00292$:
                           001A5C  9736 	C$easyax5043.c$1364$1$343 ==.
                                   9737 ;	..\COMMON\easyax5043.c:1364: memcpy_xdata(&axradio_cb_receive.st.rx.mac.localaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_destaddrpos], axradio_framing_addrlen);
      0025BF 90 02 4F         [24] 9738 	mov	dptr,#(_axradio_cb_receive + 0x001c)
      0025C2 E0               [24] 9739 	movx	a,@dptr
      0025C3 FD               [12] 9740 	mov	r5,a
      0025C4 A3               [24] 9741 	inc	dptr
      0025C5 E0               [24] 9742 	movx	a,@dptr
      0025C6 FE               [12] 9743 	mov	r6,a
      0025C7 EF               [12] 9744 	mov	a,r7
      0025C8 2D               [12] 9745 	add	a,r5
      0025C9 FF               [12] 9746 	mov	r7,a
      0025CA E4               [12] 9747 	clr	a
      0025CB 3E               [12] 9748 	addc	a,r6
      0025CC FC               [12] 9749 	mov	r4,a
      0025CD 8F 23            [24] 9750 	mov	_memcpy_PARM_2,r7
      0025CF 8C 24            [24] 9751 	mov	(_memcpy_PARM_2 + 1),r4
      0025D1 75 25 00         [24] 9752 	mov	(_memcpy_PARM_2 + 2),#0x00
      0025D4 90 55 D6         [24] 9753 	mov	dptr,#_axradio_framing_addrlen
      0025D7 E4               [12] 9754 	clr	a
      0025D8 93               [24] 9755 	movc	a,@a+dptr
      0025D9 FF               [12] 9756 	mov	r7,a
      0025DA 8F 26            [24] 9757 	mov	_memcpy_PARM_3,r7
      0025DC 75 27 00         [24] 9758 	mov	(_memcpy_PARM_3 + 1),#0x00
      0025DF 90 02 4B         [24] 9759 	mov	dptr,#(_axradio_cb_receive + 0x0018)
      0025E2 75 F0 00         [24] 9760 	mov	b,#0x00
      0025E5 12 46 4D         [24] 9761 	lcall	_memcpy
      0025E8                       9762 00118$:
                           001A85  9763 	C$easyax5043.c$1365$1$343 ==.
                                   9764 ;	..\COMMON\easyax5043.c:1365: if (axradio_framing_sourceaddrpos != 0xff)
      0025E8 90 55 D8         [24] 9765 	mov	dptr,#_axradio_framing_sourceaddrpos
      0025EB E4               [12] 9766 	clr	a
      0025EC 93               [24] 9767 	movc	a,@a+dptr
      0025ED FF               [12] 9768 	mov	r7,a
      0025EE BF FF 02         [24] 9769 	cjne	r7,#0xff,00293$
      0025F1 80 29            [24] 9770 	sjmp	00120$
      0025F3                       9771 00293$:
                           001A90  9772 	C$easyax5043.c$1366$1$343 ==.
                                   9773 ;	..\COMMON\easyax5043.c:1366: memcpy_xdata(&axradio_cb_receive.st.rx.mac.remoteaddr, &axradio_cb_receive.st.rx.mac.raw[axradio_framing_sourceaddrpos], axradio_framing_addrlen);
      0025F3 90 02 4F         [24] 9774 	mov	dptr,#(_axradio_cb_receive + 0x001c)
      0025F6 E0               [24] 9775 	movx	a,@dptr
      0025F7 FD               [12] 9776 	mov	r5,a
      0025F8 A3               [24] 9777 	inc	dptr
      0025F9 E0               [24] 9778 	movx	a,@dptr
      0025FA FE               [12] 9779 	mov	r6,a
      0025FB EF               [12] 9780 	mov	a,r7
      0025FC 2D               [12] 9781 	add	a,r5
      0025FD FF               [12] 9782 	mov	r7,a
      0025FE E4               [12] 9783 	clr	a
      0025FF 3E               [12] 9784 	addc	a,r6
      002600 FC               [12] 9785 	mov	r4,a
      002601 8F 23            [24] 9786 	mov	_memcpy_PARM_2,r7
      002603 8C 24            [24] 9787 	mov	(_memcpy_PARM_2 + 1),r4
      002605 75 25 00         [24] 9788 	mov	(_memcpy_PARM_2 + 2),#0x00
      002608 90 55 D6         [24] 9789 	mov	dptr,#_axradio_framing_addrlen
      00260B E4               [12] 9790 	clr	a
      00260C 93               [24] 9791 	movc	a,@a+dptr
      00260D FF               [12] 9792 	mov	r7,a
      00260E 8F 26            [24] 9793 	mov	_memcpy_PARM_3,r7
      002610 75 27 00         [24] 9794 	mov	(_memcpy_PARM_3 + 1),#0x00
      002613 90 02 47         [24] 9795 	mov	dptr,#(_axradio_cb_receive + 0x0014)
      002616 75 F0 00         [24] 9796 	mov	b,#0x00
      002619 12 46 4D         [24] 9797 	lcall	_memcpy
      00261C                       9798 00120$:
                           001AB9  9799 	C$easyax5043.c$1367$1$343 ==.
                                   9800 ;	..\COMMON\easyax5043.c:1367: if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
      00261C 74 22            [12] 9801 	mov	a,#0x22
      00261E B5 08 02         [24] 9802 	cjne	a,_axradio_mode,00294$
      002621 80 11            [24] 9803 	sjmp	00142$
      002623                       9804 00294$:
                           001AC0  9805 	C$easyax5043.c$1368$1$343 ==.
                                   9806 ;	..\COMMON\easyax5043.c:1368: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE ||
      002623 74 23            [12] 9807 	mov	a,#0x23
      002625 B5 08 02         [24] 9808 	cjne	a,_axradio_mode,00295$
      002628 80 0A            [24] 9809 	sjmp	00142$
      00262A                       9810 00295$:
                           001AC7  9811 	C$easyax5043.c$1369$1$343 ==.
                                   9812 ;	..\COMMON\easyax5043.c:1369: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
      00262A 74 33            [12] 9813 	mov	a,#0x33
      00262C B5 08 02         [24] 9814 	cjne	a,_axradio_mode,00296$
      00262F 80 03            [24] 9815 	sjmp	00297$
      002631                       9816 00296$:
      002631 02 28 15         [24] 9817 	ljmp	00143$
      002634                       9818 00297$:
      002634                       9819 00142$:
                           001AD1  9820 	C$easyax5043.c$1370$2$349 ==.
                                   9821 ;	..\COMMON\easyax5043.c:1370: axradio_ack_count = 0;
      002634 90 00 0F         [24] 9822 	mov	dptr,#_axradio_ack_count
      002637 E4               [12] 9823 	clr	a
      002638 F0               [24] 9824 	movx	@dptr,a
                           001AD6  9825 	C$easyax5043.c$1371$2$349 ==.
                                   9826 ;	..\COMMON\easyax5043.c:1371: axradio_txbuffer_len = axradio_framing_maclen + axradio_framing_minpayloadlen;
      002639 90 55 D5         [24] 9827 	mov	dptr,#_axradio_framing_maclen
                                   9828 ;	genFromRTrack removed	clr	a
      00263C 93               [24] 9829 	movc	a,@a+dptr
      00263D FF               [12] 9830 	mov	r7,a
      00263E FD               [12] 9831 	mov	r5,a
      00263F 7E 00            [12] 9832 	mov	r6,#0x00
      002641 90 55 EE         [24] 9833 	mov	dptr,#_axradio_framing_minpayloadlen
      002644 E4               [12] 9834 	clr	a
      002645 93               [24] 9835 	movc	a,@a+dptr
      002646 FC               [12] 9836 	mov	r4,a
      002647 7B 00            [12] 9837 	mov	r3,#0x00
      002649 90 00 06         [24] 9838 	mov	dptr,#_axradio_txbuffer_len
      00264C EC               [12] 9839 	mov	a,r4
      00264D 2D               [12] 9840 	add	a,r5
      00264E F0               [24] 9841 	movx	@dptr,a
      00264F EB               [12] 9842 	mov	a,r3
      002650 3E               [12] 9843 	addc	a,r6
      002651 A3               [24] 9844 	inc	dptr
      002652 F0               [24] 9845 	movx	@dptr,a
                           001AF0  9846 	C$easyax5043.c$1372$2$349 ==.
                                   9847 ;	..\COMMON\easyax5043.c:1372: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
      002653 8F 24            [24] 9848 	mov	_memset_PARM_3,r7
                                   9849 ;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
      002655 8E 25            [24] 9850 	mov	(_memset_PARM_3 + 1),r6
                                   9851 ;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
      002657 8E 23            [24] 9852 	mov	_memset_PARM_2,r6
      002659 90 00 2B         [24] 9853 	mov	dptr,#_axradio_txbuffer
      00265C 75 F0 00         [24] 9854 	mov	b,#0x00
      00265F 12 46 2E         [24] 9855 	lcall	_memset
                           001AFF  9856 	C$easyax5043.c$1373$2$349 ==.
                                   9857 ;	..\COMMON\easyax5043.c:1373: if (axradio_framing_ack_seqnrpos != 0xff) {
      002662 90 55 ED         [24] 9858 	mov	dptr,#_axradio_framing_ack_seqnrpos
      002665 E4               [12] 9859 	clr	a
      002666 93               [24] 9860 	movc	a,@a+dptr
      002667 FF               [12] 9861 	mov	r7,a
      002668 BF FF 02         [24] 9862 	cjne	r7,#0xff,00298$
      00266B 80 35            [24] 9863 	sjmp	00125$
      00266D                       9864 00298$:
                           001B0A  9865 	C$easyax5043.c$1374$3$350 ==.
                                   9866 ;	..\COMMON\easyax5043.c:1374: uint8_t seqnr = axradio_cb_receive.st.rx.mac.raw[axradio_framing_ack_seqnrpos];
      00266D 90 02 4F         [24] 9867 	mov	dptr,#(_axradio_cb_receive + 0x001c)
      002670 E0               [24] 9868 	movx	a,@dptr
      002671 FD               [12] 9869 	mov	r5,a
      002672 A3               [24] 9870 	inc	dptr
      002673 E0               [24] 9871 	movx	a,@dptr
      002674 FE               [12] 9872 	mov	r6,a
      002675 EF               [12] 9873 	mov	a,r7
      002676 2D               [12] 9874 	add	a,r5
      002677 F5 82            [12] 9875 	mov	dpl,a
      002679 E4               [12] 9876 	clr	a
      00267A 3E               [12] 9877 	addc	a,r6
      00267B F5 83            [12] 9878 	mov	dph,a
      00267D E0               [24] 9879 	movx	a,@dptr
      00267E FE               [12] 9880 	mov	r6,a
                           001B1C  9881 	C$easyax5043.c$1375$3$350 ==.
                                   9882 ;	..\COMMON\easyax5043.c:1375: axradio_txbuffer[axradio_framing_ack_seqnrpos] = seqnr;
      00267F EF               [12] 9883 	mov	a,r7
      002680 24 2B            [12] 9884 	add	a,#_axradio_txbuffer
      002682 F5 82            [12] 9885 	mov	dpl,a
      002684 E4               [12] 9886 	clr	a
      002685 34 00            [12] 9887 	addc	a,#(_axradio_txbuffer >> 8)
      002687 F5 83            [12] 9888 	mov	dph,a
      002689 EE               [12] 9889 	mov	a,r6
      00268A F0               [24] 9890 	movx	@dptr,a
                           001B28  9891 	C$easyax5043.c$1376$3$350 ==.
                                   9892 ;	..\COMMON\easyax5043.c:1376: if (axradio_ack_seqnr != seqnr)
      00268B 90 00 10         [24] 9893 	mov	dptr,#_axradio_ack_seqnr
      00268E E0               [24] 9894 	movx	a,@dptr
      00268F FF               [12] 9895 	mov	r7,a
      002690 B5 06 02         [24] 9896 	cjne	a,ar6,00299$
      002693 80 07            [24] 9897 	sjmp	00122$
      002695                       9898 00299$:
                           001B32  9899 	C$easyax5043.c$1377$3$350 ==.
                                   9900 ;	..\COMMON\easyax5043.c:1377: axradio_ack_seqnr = seqnr;
      002695 90 00 10         [24] 9901 	mov	dptr,#_axradio_ack_seqnr
      002698 EE               [12] 9902 	mov	a,r6
      002699 F0               [24] 9903 	movx	@dptr,a
      00269A 80 06            [24] 9904 	sjmp	00125$
      00269C                       9905 00122$:
                           001B39  9906 	C$easyax5043.c$1379$3$350 ==.
                                   9907 ;	..\COMMON\easyax5043.c:1379: axradio_cb_receive.st.error = AXRADIO_ERR_RETRANSMISSION;
      00269C 90 02 38         [24] 9908 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      00269F 74 08            [12] 9909 	mov	a,#0x08
      0026A1 F0               [24] 9910 	movx	@dptr,a
      0026A2                       9911 00125$:
                           001B3F  9912 	C$easyax5043.c$1381$2$349 ==.
                                   9913 ;	..\COMMON\easyax5043.c:1381: if (axradio_framing_destaddrpos != 0xff) {
      0026A2 90 55 D7         [24] 9914 	mov	dptr,#_axradio_framing_destaddrpos
      0026A5 E4               [12] 9915 	clr	a
      0026A6 93               [24] 9916 	movc	a,@a+dptr
      0026A7 FF               [12] 9917 	mov	r7,a
      0026A8 BF FF 02         [24] 9918 	cjne	r7,#0xff,00300$
      0026AB 80 57            [24] 9919 	sjmp	00130$
      0026AD                       9920 00300$:
                           001B4A  9921 	C$easyax5043.c$1382$3$351 ==.
                                   9922 ;	..\COMMON\easyax5043.c:1382: if (axradio_framing_sourceaddrpos != 0xff)
      0026AD 90 55 D8         [24] 9923 	mov	dptr,#_axradio_framing_sourceaddrpos
      0026B0 E4               [12] 9924 	clr	a
      0026B1 93               [24] 9925 	movc	a,@a+dptr
      0026B2 FE               [12] 9926 	mov	r6,a
      0026B3 BE FF 02         [24] 9927 	cjne	r6,#0xff,00301$
      0026B6 80 27            [24] 9928 	sjmp	00127$
      0026B8                       9929 00301$:
                           001B55  9930 	C$easyax5043.c$1383$3$351 ==.
                                   9931 ;	..\COMMON\easyax5043.c:1383: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_cb_receive.st.rx.mac.remoteaddr, axradio_framing_addrlen);
      0026B8 EF               [12] 9932 	mov	a,r7
      0026B9 24 2B            [12] 9933 	add	a,#_axradio_txbuffer
      0026BB FD               [12] 9934 	mov	r5,a
      0026BC E4               [12] 9935 	clr	a
      0026BD 34 00            [12] 9936 	addc	a,#(_axradio_txbuffer >> 8)
      0026BF FE               [12] 9937 	mov	r6,a
      0026C0 7C 00            [12] 9938 	mov	r4,#0x00
      0026C2 75 23 47         [24] 9939 	mov	_memcpy_PARM_2,#(_axradio_cb_receive + 0x0014)
      0026C5 75 24 02         [24] 9940 	mov	(_memcpy_PARM_2 + 1),#((_axradio_cb_receive + 0x0014) >> 8)
                                   9941 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      0026C8 8C 25            [24] 9942 	mov	(_memcpy_PARM_2 + 2),r4
      0026CA 90 55 D6         [24] 9943 	mov	dptr,#_axradio_framing_addrlen
      0026CD E4               [12] 9944 	clr	a
      0026CE 93               [24] 9945 	movc	a,@a+dptr
      0026CF FB               [12] 9946 	mov	r3,a
      0026D0 8B 26            [24] 9947 	mov	_memcpy_PARM_3,r3
                                   9948 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      0026D2 8C 27            [24] 9949 	mov	(_memcpy_PARM_3 + 1),r4
      0026D4 8D 82            [24] 9950 	mov	dpl,r5
      0026D6 8E 83            [24] 9951 	mov	dph,r6
      0026D8 8C F0            [24] 9952 	mov	b,r4
      0026DA 12 46 4D         [24] 9953 	lcall	_memcpy
      0026DD 80 25            [24] 9954 	sjmp	00130$
      0026DF                       9955 00127$:
                           001B7C  9956 	C$easyax5043.c$1385$3$351 ==.
                                   9957 ;	..\COMMON\easyax5043.c:1385: memcpy_xdata(&axradio_txbuffer[axradio_framing_destaddrpos], &axradio_default_remoteaddr, axradio_framing_addrlen);
      0026DF EF               [12] 9958 	mov	a,r7
      0026E0 24 2B            [12] 9959 	add	a,#_axradio_txbuffer
      0026E2 FF               [12] 9960 	mov	r7,a
      0026E3 E4               [12] 9961 	clr	a
      0026E4 34 00            [12] 9962 	addc	a,#(_axradio_txbuffer >> 8)
      0026E6 FE               [12] 9963 	mov	r6,a
      0026E7 7D 00            [12] 9964 	mov	r5,#0x00
      0026E9 75 23 27         [24] 9965 	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
      0026EC 75 24 00         [24] 9966 	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
                                   9967 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      0026EF 8D 25            [24] 9968 	mov	(_memcpy_PARM_2 + 2),r5
      0026F1 90 55 D6         [24] 9969 	mov	dptr,#_axradio_framing_addrlen
      0026F4 E4               [12] 9970 	clr	a
      0026F5 93               [24] 9971 	movc	a,@a+dptr
      0026F6 FC               [12] 9972 	mov	r4,a
      0026F7 8C 26            [24] 9973 	mov	_memcpy_PARM_3,r4
                                   9974 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      0026F9 8D 27            [24] 9975 	mov	(_memcpy_PARM_3 + 1),r5
      0026FB 8F 82            [24] 9976 	mov	dpl,r7
      0026FD 8E 83            [24] 9977 	mov	dph,r6
      0026FF 8D F0            [24] 9978 	mov	b,r5
      002701 12 46 4D         [24] 9979 	lcall	_memcpy
      002704                       9980 00130$:
                           001BA1  9981 	C$easyax5043.c$1387$2$349 ==.
                                   9982 ;	..\COMMON\easyax5043.c:1387: if (axradio_framing_sourceaddrpos != 0xff)
      002704 90 55 D8         [24] 9983 	mov	dptr,#_axradio_framing_sourceaddrpos
      002707 E4               [12] 9984 	clr	a
      002708 93               [24] 9985 	movc	a,@a+dptr
      002709 FF               [12] 9986 	mov	r7,a
      00270A BF FF 02         [24] 9987 	cjne	r7,#0xff,00302$
      00270D 80 25            [24] 9988 	sjmp	00132$
      00270F                       9989 00302$:
                           001BAC  9990 	C$easyax5043.c$1388$2$349 ==.
                                   9991 ;	..\COMMON\easyax5043.c:1388: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
      00270F EF               [12] 9992 	mov	a,r7
      002710 24 2B            [12] 9993 	add	a,#_axradio_txbuffer
      002712 FF               [12] 9994 	mov	r7,a
      002713 E4               [12] 9995 	clr	a
      002714 34 00            [12] 9996 	addc	a,#(_axradio_txbuffer >> 8)
      002716 FE               [12] 9997 	mov	r6,a
      002717 7D 00            [12] 9998 	mov	r5,#0x00
      002719 75 23 1F         [24] 9999 	mov	_memcpy_PARM_2,#_axradio_localaddr
      00271C 75 24 00         [24]10000 	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
                                  10001 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      00271F 8D 25            [24]10002 	mov	(_memcpy_PARM_2 + 2),r5
      002721 90 55 D6         [24]10003 	mov	dptr,#_axradio_framing_addrlen
      002724 E4               [12]10004 	clr	a
      002725 93               [24]10005 	movc	a,@a+dptr
      002726 FC               [12]10006 	mov	r4,a
      002727 8C 26            [24]10007 	mov	_memcpy_PARM_3,r4
                                  10008 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      002729 8D 27            [24]10009 	mov	(_memcpy_PARM_3 + 1),r5
      00272B 8F 82            [24]10010 	mov	dpl,r7
      00272D 8E 83            [24]10011 	mov	dph,r6
      00272F 8D F0            [24]10012 	mov	b,r5
      002731 12 46 4D         [24]10013 	lcall	_memcpy
      002734                      10014 00132$:
                           001BD1 10015 	C$easyax5043.c$1389$2$349 ==.
                                  10016 ;	..\COMMON\easyax5043.c:1389: if (axradio_framing_lenmask) {
      002734 90 55 DB         [24]10017 	mov	dptr,#_axradio_framing_lenmask
      002737 E4               [12]10018 	clr	a
      002738 93               [24]10019 	movc	a,@a+dptr
      002739 FF               [12]10020 	mov	r7,a
      00273A 60 30            [24]10021 	jz	00134$
                           001BD9 10022 	C$easyax5043.c$1390$3$352 ==.
                                  10023 ;	..\COMMON\easyax5043.c:1390: uint8_t len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
      00273C 90 00 06         [24]10024 	mov	dptr,#_axradio_txbuffer_len
      00273F E0               [24]10025 	movx	a,@dptr
      002740 FD               [12]10026 	mov	r5,a
      002741 A3               [24]10027 	inc	dptr
      002742 E0               [24]10028 	movx	a,@dptr
      002743 90 55 DA         [24]10029 	mov	dptr,#_axradio_framing_lenoffs
      002746 E4               [12]10030 	clr	a
      002747 93               [24]10031 	movc	a,@a+dptr
      002748 FE               [12]10032 	mov	r6,a
      002749 ED               [12]10033 	mov	a,r5
      00274A C3               [12]10034 	clr	c
      00274B 9E               [12]10035 	subb	a,r6
      00274C 5F               [12]10036 	anl	a,r7
      00274D FE               [12]10037 	mov	r6,a
                           001BEB 10038 	C$easyax5043.c$1391$3$352 ==.
                                  10039 ;	..\COMMON\easyax5043.c:1391: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
      00274E 90 55 D9         [24]10040 	mov	dptr,#_axradio_framing_lenpos
      002751 E4               [12]10041 	clr	a
      002752 93               [24]10042 	movc	a,@a+dptr
      002753 24 2B            [12]10043 	add	a,#_axradio_txbuffer
      002755 FD               [12]10044 	mov	r5,a
      002756 E4               [12]10045 	clr	a
      002757 34 00            [12]10046 	addc	a,#(_axradio_txbuffer >> 8)
      002759 FC               [12]10047 	mov	r4,a
      00275A 8D 82            [24]10048 	mov	dpl,r5
      00275C 8C 83            [24]10049 	mov	dph,r4
      00275E E0               [24]10050 	movx	a,@dptr
      00275F FB               [12]10051 	mov	r3,a
      002760 EF               [12]10052 	mov	a,r7
      002761 F4               [12]10053 	cpl	a
      002762 FF               [12]10054 	mov	r7,a
      002763 5B               [12]10055 	anl	a,r3
      002764 42 06            [12]10056 	orl	ar6,a
      002766 8D 82            [24]10057 	mov	dpl,r5
      002768 8C 83            [24]10058 	mov	dph,r4
      00276A EE               [12]10059 	mov	a,r6
      00276B F0               [24]10060 	movx	@dptr,a
      00276C                      10061 00134$:
                           001C09 10062 	C$easyax5043.c$1393$2$349 ==.
                                  10063 ;	..\COMMON\easyax5043.c:1393: if (axradio_framing_swcrclen)
      00276C 90 55 DC         [24]10064 	mov	dptr,#_axradio_framing_swcrclen
      00276F E4               [12]10065 	clr	a
      002770 93               [24]10066 	movc	a,@a+dptr
      002771 60 20            [24]10067 	jz	00136$
                           001C10 10068 	C$easyax5043.c$1394$2$349 ==.
                                  10069 ;	..\COMMON\easyax5043.c:1394: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
      002773 90 00 06         [24]10070 	mov	dptr,#_axradio_txbuffer_len
      002776 E0               [24]10071 	movx	a,@dptr
      002777 C0 E0            [24]10072 	push	acc
      002779 A3               [24]10073 	inc	dptr
      00277A E0               [24]10074 	movx	a,@dptr
      00277B C0 E0            [24]10075 	push	acc
      00277D 90 00 2B         [24]10076 	mov	dptr,#_axradio_txbuffer
      002780 12 09 7F         [24]10077 	lcall	_axradio_framing_append_crc
      002783 AE 82            [24]10078 	mov	r6,dpl
      002785 AF 83            [24]10079 	mov	r7,dph
      002787 15 81            [12]10080 	dec	sp
      002789 15 81            [12]10081 	dec	sp
      00278B 90 00 06         [24]10082 	mov	dptr,#_axradio_txbuffer_len
      00278E EE               [12]10083 	mov	a,r6
      00278F F0               [24]10084 	movx	@dptr,a
      002790 EF               [12]10085 	mov	a,r7
      002791 A3               [24]10086 	inc	dptr
      002792 F0               [24]10087 	movx	@dptr,a
      002793                      10088 00136$:
                           001C30 10089 	C$easyax5043.c$1395$2$349 ==.
                                  10090 ;	..\COMMON\easyax5043.c:1395: if (axradio_phy_pn9) {
      002793 90 55 B4         [24]10091 	mov	dptr,#_axradio_phy_pn9
      002796 E4               [12]10092 	clr	a
      002797 93               [24]10093 	movc	a,@a+dptr
      002798 60 2F            [24]10094 	jz	00138$
                           001C37 10095 	C$easyax5043.c$1396$3$353 ==.
                                  10096 ;	..\COMMON\easyax5043.c:1396: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -(AX5043_ENCODING & 0x01));
      00279A 90 40 11         [24]10097 	mov	dptr,#_AX5043_ENCODING
      00279D E0               [24]10098 	movx	a,@dptr
      00279E FF               [12]10099 	mov	r7,a
      00279F 53 07 01         [24]10100 	anl	ar7,#0x01
      0027A2 C3               [12]10101 	clr	c
      0027A3 E4               [12]10102 	clr	a
      0027A4 9F               [12]10103 	subb	a,r7
      0027A5 FF               [12]10104 	mov	r7,a
      0027A6 C0 07            [24]10105 	push	ar7
      0027A8 74 FF            [12]10106 	mov	a,#0xff
      0027AA C0 E0            [24]10107 	push	acc
      0027AC 74 01            [12]10108 	mov	a,#0x01
      0027AE C0 E0            [24]10109 	push	acc
      0027B0 90 00 06         [24]10110 	mov	dptr,#_axradio_txbuffer_len
      0027B3 E0               [24]10111 	movx	a,@dptr
      0027B4 C0 E0            [24]10112 	push	acc
      0027B6 A3               [24]10113 	inc	dptr
      0027B7 E0               [24]10114 	movx	a,@dptr
      0027B8 C0 E0            [24]10115 	push	acc
      0027BA 90 00 2B         [24]10116 	mov	dptr,#_axradio_txbuffer
      0027BD 75 F0 00         [24]10117 	mov	b,#0x00
      0027C0 12 47 EB         [24]10118 	lcall	_pn9_buffer
      0027C3 E5 81            [12]10119 	mov	a,sp
      0027C5 24 FB            [12]10120 	add	a,#0xfb
      0027C7 F5 81            [12]10121 	mov	sp,a
      0027C9                      10122 00138$:
                           001C66 10123 	C$easyax5043.c$1398$2$349 ==.
                                  10124 ;	..\COMMON\easyax5043.c:1398: AX5043_IRQMASK1 = 0x00;
      0027C9 90 40 06         [24]10125 	mov	dptr,#_AX5043_IRQMASK1
      0027CC E4               [12]10126 	clr	a
      0027CD F0               [24]10127 	movx	@dptr,a
                           001C6B 10128 	C$easyax5043.c$1399$2$349 ==.
                                  10129 ;	..\COMMON\easyax5043.c:1399: AX5043_IRQMASK0 = 0x00;
      0027CE 90 40 07         [24]10130 	mov	dptr,#_AX5043_IRQMASK0
      0027D1 F0               [24]10131 	movx	@dptr,a
                           001C6F 10132 	C$easyax5043.c$1400$2$349 ==.
                                  10133 ;	..\COMMON\easyax5043.c:1400: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
      0027D2 90 40 02         [24]10134 	mov	dptr,#_AX5043_PWRMODE
      0027D5 74 05            [12]10135 	mov	a,#0x05
      0027D7 F0               [24]10136 	movx	@dptr,a
                           001C75 10137 	C$easyax5043.c$1401$2$349 ==.
                                  10138 ;	..\COMMON\easyax5043.c:1401: AX5043_FIFOSTAT = 3;
      0027D8 90 40 28         [24]10139 	mov	dptr,#_AX5043_FIFOSTAT
      0027DB 74 03            [12]10140 	mov	a,#0x03
      0027DD F0               [24]10141 	movx	@dptr,a
                           001C7B 10142 	C$easyax5043.c$1402$2$349 ==.
                                  10143 ;	..\COMMON\easyax5043.c:1402: axradio_trxstate = trxstate_tx_longpreamble; // ensure that trxstate != off, otherwise we would prematurely enable the receiver, see below
      0027DE 75 09 0A         [24]10144 	mov	_axradio_trxstate,#0x0a
                           001C7E 10145 	C$easyax5043.c$1403$2$349 ==.
                                  10146 ;	..\COMMON\easyax5043.c:1403: while (AX5043_POWSTAT & 0x08);
      0027E1                      10147 00139$:
      0027E1 90 40 03         [24]10148 	mov	dptr,#_AX5043_POWSTAT
      0027E4 E0               [24]10149 	movx	a,@dptr
      0027E5 FF               [12]10150 	mov	r7,a
      0027E6 20 E3 F8         [24]10151 	jb	acc.3,00139$
                           001C86 10152 	C$easyax5043.c$1404$2$349 ==.
                                  10153 ;	..\COMMON\easyax5043.c:1404: wtimer_remove(&axradio_timer);
      0027E9 90 02 8A         [24]10154 	mov	dptr,#_axradio_timer
      0027EC 12 4D D3         [24]10155 	lcall	_wtimer_remove
                           001C8C 10156 	C$easyax5043.c$1405$2$349 ==.
                                  10157 ;	..\COMMON\easyax5043.c:1405: axradio_timer.time = axradio_framing_ack_delay;
      0027EF 90 55 E8         [24]10158 	mov	dptr,#_axradio_framing_ack_delay
      0027F2 E4               [12]10159 	clr	a
      0027F3 93               [24]10160 	movc	a,@a+dptr
      0027F4 FC               [12]10161 	mov	r4,a
      0027F5 74 01            [12]10162 	mov	a,#0x01
      0027F7 93               [24]10163 	movc	a,@a+dptr
      0027F8 FD               [12]10164 	mov	r5,a
      0027F9 74 02            [12]10165 	mov	a,#0x02
      0027FB 93               [24]10166 	movc	a,@a+dptr
      0027FC FE               [12]10167 	mov	r6,a
      0027FD 74 03            [12]10168 	mov	a,#0x03
      0027FF 93               [24]10169 	movc	a,@a+dptr
      002800 FF               [12]10170 	mov	r7,a
      002801 90 02 8E         [24]10171 	mov	dptr,#(_axradio_timer + 0x0004)
      002804 EC               [12]10172 	mov	a,r4
      002805 F0               [24]10173 	movx	@dptr,a
      002806 ED               [12]10174 	mov	a,r5
      002807 A3               [24]10175 	inc	dptr
      002808 F0               [24]10176 	movx	@dptr,a
      002809 EE               [12]10177 	mov	a,r6
      00280A A3               [24]10178 	inc	dptr
      00280B F0               [24]10179 	movx	@dptr,a
      00280C EF               [12]10180 	mov	a,r7
      00280D A3               [24]10181 	inc	dptr
      00280E F0               [24]10182 	movx	@dptr,a
                           001CAC 10183 	C$easyax5043.c$1406$2$349 ==.
                                  10184 ;	..\COMMON\easyax5043.c:1406: wtimer1_addrelative(&axradio_timer);
      00280F 90 02 8A         [24]10185 	mov	dptr,#_axradio_timer
      002812 12 47 03         [24]10186 	lcall	_wtimer1_addrelative
      002815                      10187 00143$:
                           001CB2 10188 	C$easyax5043.c$1408$1$343 ==.
                                  10189 ;	..\COMMON\easyax5043.c:1408: if (axradio_mode == AXRADIO_MODE_SYNC_SLAVE ||
      002815 74 32            [12]10190 	mov	a,#0x32
      002817 B5 08 02         [24]10191 	cjne	a,_axradio_mode,00307$
      00281A 80 0A            [24]10192 	sjmp	00156$
      00281C                      10193 00307$:
                           001CB9 10194 	C$easyax5043.c$1409$1$343 ==.
                                  10195 ;	..\COMMON\easyax5043.c:1409: axradio_mode == AXRADIO_MODE_SYNC_ACK_SLAVE) {
      00281C 74 33            [12]10196 	mov	a,#0x33
      00281E B5 08 02         [24]10197 	cjne	a,_axradio_mode,00308$
      002821 80 03            [24]10198 	sjmp	00309$
      002823                      10199 00308$:
      002823 02 28 F9         [24]10200 	ljmp	00157$
      002826                      10201 00309$:
      002826                      10202 00156$:
                           001CC3 10203 	C$easyax5043.c$1410$2$354 ==.
                                  10204 ;	..\COMMON\easyax5043.c:1410: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE)
      002826 74 33            [12]10205 	mov	a,#0x33
      002828 B5 08 02         [24]10206 	cjne	a,_axradio_mode,00310$
      00282B 80 03            [24]10207 	sjmp	00147$
      00282D                      10208 00310$:
                           001CCA 10209 	C$easyax5043.c$1411$2$354 ==.
                                  10210 ;	..\COMMON\easyax5043.c:1411: ax5043_off();
      00282D 12 18 2E         [24]10211 	lcall	_ax5043_off
      002830                      10212 00147$:
                           001CCD 10213 	C$easyax5043.c$1412$2$354 ==.
                                  10214 ;	..\COMMON\easyax5043.c:1412: switch (axradio_syncstate) {
      002830 90 00 05         [24]10215 	mov	dptr,#_axradio_syncstate
      002833 E0               [24]10216 	movx	a,@dptr
      002834 FF               [12]10217 	mov	r7,a
      002835 BF 08 02         [24]10218 	cjne	r7,#0x08,00311$
      002838 80 45            [24]10219 	sjmp	00151$
      00283A                      10220 00311$:
      00283A BF 0A 02         [24]10221 	cjne	r7,#0x0a,00312$
      00283D 80 40            [24]10222 	sjmp	00151$
      00283F                      10223 00312$:
      00283F BF 0B 02         [24]10224 	cjne	r7,#0x0b,00313$
      002842 80 3B            [24]10225 	sjmp	00151$
      002844                      10226 00313$:
                           001CE1 10227 	C$easyax5043.c$1416$3$355 ==.
                                  10228 ;	..\COMMON\easyax5043.c:1416: axradio_sync_time = axradio_conv_time_totimer0(axradio_cb_receive.st.time.t);
      002844 90 02 39         [24]10229 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      002847 E0               [24]10230 	movx	a,@dptr
      002848 FC               [12]10231 	mov	r4,a
      002849 A3               [24]10232 	inc	dptr
      00284A E0               [24]10233 	movx	a,@dptr
      00284B FD               [12]10234 	mov	r5,a
      00284C A3               [24]10235 	inc	dptr
      00284D E0               [24]10236 	movx	a,@dptr
      00284E FE               [12]10237 	mov	r6,a
      00284F A3               [24]10238 	inc	dptr
      002850 E0               [24]10239 	movx	a,@dptr
      002851 8C 82            [24]10240 	mov	dpl,r4
      002853 8D 83            [24]10241 	mov	dph,r5
      002855 8E F0            [24]10242 	mov	b,r6
      002857 12 0B A5         [24]10243 	lcall	_axradio_conv_time_totimer0
      00285A AC 82            [24]10244 	mov	r4,dpl
      00285C AD 83            [24]10245 	mov	r5,dph
      00285E AE F0            [24]10246 	mov	r6,b
      002860 FF               [12]10247 	mov	r7,a
      002861 90 00 11         [24]10248 	mov	dptr,#_axradio_sync_time
      002864 EC               [12]10249 	mov	a,r4
      002865 F0               [24]10250 	movx	@dptr,a
      002866 ED               [12]10251 	mov	a,r5
      002867 A3               [24]10252 	inc	dptr
      002868 F0               [24]10253 	movx	@dptr,a
      002869 EE               [12]10254 	mov	a,r6
      00286A A3               [24]10255 	inc	dptr
      00286B F0               [24]10256 	movx	@dptr,a
      00286C EF               [12]10257 	mov	a,r7
      00286D A3               [24]10258 	inc	dptr
      00286E F0               [24]10259 	movx	@dptr,a
                           001D0C 10260 	C$easyax5043.c$1417$3$355 ==.
                                  10261 ;	..\COMMON\easyax5043.c:1417: axradio_sync_periodcorr = -32768;
      00286F 90 00 15         [24]10262 	mov	dptr,#_axradio_sync_periodcorr
      002872 E4               [12]10263 	clr	a
      002873 F0               [24]10264 	movx	@dptr,a
      002874 74 80            [12]10265 	mov	a,#0x80
      002876 A3               [24]10266 	inc	dptr
      002877 F0               [24]10267 	movx	@dptr,a
                           001D15 10268 	C$easyax5043.c$1418$3$355 ==.
                                  10269 ;	..\COMMON\easyax5043.c:1418: axradio_sync_seqnr = 0;
      002878 90 00 10         [24]10270 	mov	dptr,#_axradio_ack_seqnr
      00287B E4               [12]10271 	clr	a
      00287C F0               [24]10272 	movx	@dptr,a
                           001D1A 10273 	C$easyax5043.c$1419$3$355 ==.
                                  10274 ;	..\COMMON\easyax5043.c:1419: break;
                           001D1A 10275 	C$easyax5043.c$1423$3$355 ==.
                                  10276 ;	..\COMMON\easyax5043.c:1423: case syncstate_slave_rxpacket:
      00287D 80 2D            [24]10277 	sjmp	00152$
      00287F                      10278 00151$:
                           001D1C 10279 	C$easyax5043.c$1424$3$355 ==.
                                  10280 ;	..\COMMON\easyax5043.c:1424: axradio_sync_adjustperiodcorr();
      00287F 12 1A 66         [24]10281 	lcall	_axradio_sync_adjustperiodcorr
                           001D1F 10282 	C$easyax5043.c$1425$3$355 ==.
                                  10283 ;	..\COMMON\easyax5043.c:1425: axradio_cb_receive.st.rx.phy.period = axradio_sync_periodcorr >> SYNC_K1;
      002882 90 00 15         [24]10284 	mov	dptr,#_axradio_sync_periodcorr
      002885 E0               [24]10285 	movx	a,@dptr
      002886 FE               [12]10286 	mov	r6,a
      002887 A3               [24]10287 	inc	dptr
      002888 E0               [24]10288 	movx	a,@dptr
      002889 FF               [12]10289 	mov	r7,a
      00288A C4               [12]10290 	swap	a
      00288B 03               [12]10291 	rr	a
      00288C CE               [12]10292 	xch	a,r6
      00288D C4               [12]10293 	swap	a
      00288E 03               [12]10294 	rr	a
      00288F 54 07            [12]10295 	anl	a,#0x07
      002891 6E               [12]10296 	xrl	a,r6
      002892 CE               [12]10297 	xch	a,r6
      002893 54 07            [12]10298 	anl	a,#0x07
      002895 CE               [12]10299 	xch	a,r6
      002896 6E               [12]10300 	xrl	a,r6
      002897 CE               [12]10301 	xch	a,r6
      002898 30 E2 02         [24]10302 	jnb	acc.2,00314$
      00289B 44 F8            [12]10303 	orl	a,#0xf8
      00289D                      10304 00314$:
      00289D FF               [12]10305 	mov	r7,a
      00289E 90 02 45         [24]10306 	mov	dptr,#(_axradio_cb_receive + 0x0012)
      0028A1 EE               [12]10307 	mov	a,r6
      0028A2 F0               [24]10308 	movx	@dptr,a
      0028A3 EF               [12]10309 	mov	a,r7
      0028A4 A3               [24]10310 	inc	dptr
      0028A5 F0               [24]10311 	movx	@dptr,a
                           001D43 10312 	C$easyax5043.c$1426$3$355 ==.
                                  10313 ;	..\COMMON\easyax5043.c:1426: axradio_sync_seqnr = 1;
      0028A6 90 00 10         [24]10314 	mov	dptr,#_axradio_ack_seqnr
      0028A9 74 01            [12]10315 	mov	a,#0x01
      0028AB F0               [24]10316 	movx	@dptr,a
                           001D49 10317 	C$easyax5043.c$1428$2$354 ==.
                                  10318 ;	..\COMMON\easyax5043.c:1428: };
      0028AC                      10319 00152$:
                           001D49 10320 	C$easyax5043.c$1429$2$354 ==.
                                  10321 ;	..\COMMON\easyax5043.c:1429: axradio_sync_slave_nextperiod();
      0028AC 12 1B 8D         [24]10322 	lcall	_axradio_sync_slave_nextperiod
                           001D4C 10323 	C$easyax5043.c$1430$2$354 ==.
                                  10324 ;	..\COMMON\easyax5043.c:1430: if (axradio_mode != AXRADIO_MODE_SYNC_ACK_SLAVE) {
      0028AF 74 33            [12]10325 	mov	a,#0x33
      0028B1 B5 08 02         [24]10326 	cjne	a,_axradio_mode,00315$
      0028B4 80 3D            [24]10327 	sjmp	00154$
      0028B6                      10328 00315$:
                           001D53 10329 	C$easyax5043.c$1431$3$356 ==.
                                  10330 ;	..\COMMON\easyax5043.c:1431: axradio_syncstate = syncstate_slave_rxidle;
      0028B6 90 00 05         [24]10331 	mov	dptr,#_axradio_syncstate
      0028B9 74 08            [12]10332 	mov	a,#0x08
      0028BB F0               [24]10333 	movx	@dptr,a
                           001D59 10334 	C$easyax5043.c$1432$3$356 ==.
                                  10335 ;	..\COMMON\easyax5043.c:1432: wtimer_remove(&axradio_timer);
      0028BC 90 02 8A         [24]10336 	mov	dptr,#_axradio_timer
      0028BF 12 4D D3         [24]10337 	lcall	_wtimer_remove
                           001D5F 10338 	C$easyax5043.c$1433$3$356 ==.
                                  10339 ;	..\COMMON\easyax5043.c:1433: axradio_sync_settimeradv(axradio_sync_slave_rxadvance[axradio_sync_seqnr]);
      0028C2 90 00 10         [24]10340 	mov	dptr,#_axradio_ack_seqnr
      0028C5 E0               [24]10341 	movx	a,@dptr
      0028C6 75 F0 04         [24]10342 	mov	b,#0x04
      0028C9 A4               [48]10343 	mul	ab
      0028CA 24 09            [12]10344 	add	a,#_axradio_sync_slave_rxadvance
      0028CC F5 82            [12]10345 	mov	dpl,a
      0028CE 74 56            [12]10346 	mov	a,#(_axradio_sync_slave_rxadvance >> 8)
      0028D0 35 F0            [12]10347 	addc	a,b
      0028D2 F5 83            [12]10348 	mov	dph,a
      0028D4 E4               [12]10349 	clr	a
      0028D5 93               [24]10350 	movc	a,@a+dptr
      0028D6 FC               [12]10351 	mov	r4,a
      0028D7 A3               [24]10352 	inc	dptr
      0028D8 E4               [12]10353 	clr	a
      0028D9 93               [24]10354 	movc	a,@a+dptr
      0028DA FD               [12]10355 	mov	r5,a
      0028DB A3               [24]10356 	inc	dptr
      0028DC E4               [12]10357 	clr	a
      0028DD 93               [24]10358 	movc	a,@a+dptr
      0028DE FE               [12]10359 	mov	r6,a
      0028DF A3               [24]10360 	inc	dptr
      0028E0 E4               [12]10361 	clr	a
      0028E1 93               [24]10362 	movc	a,@a+dptr
      0028E2 8C 82            [24]10363 	mov	dpl,r4
      0028E4 8D 83            [24]10364 	mov	dph,r5
      0028E6 8E F0            [24]10365 	mov	b,r6
      0028E8 12 1A 27         [24]10366 	lcall	_axradio_sync_settimeradv
                           001D88 10367 	C$easyax5043.c$1434$3$356 ==.
                                  10368 ;	..\COMMON\easyax5043.c:1434: wtimer0_addabsolute(&axradio_timer);
      0028EB 90 02 8A         [24]10369 	mov	dptr,#_axradio_timer
      0028EE 12 47 98         [24]10370 	lcall	_wtimer0_addabsolute
      0028F1 80 06            [24]10371 	sjmp	00157$
      0028F3                      10372 00154$:
                           001D90 10373 	C$easyax5043.c$1436$3$357 ==.
                                  10374 ;	..\COMMON\easyax5043.c:1436: axradio_syncstate = syncstate_slave_rxack;
      0028F3 90 00 05         [24]10375 	mov	dptr,#_axradio_syncstate
      0028F6 74 0C            [12]10376 	mov	a,#0x0c
      0028F8 F0               [24]10377 	movx	@dptr,a
      0028F9                      10378 00157$:
                           001D96 10379 	C$easyax5043.c$1439$1$343 ==.
                                  10380 ;	..\COMMON\easyax5043.c:1439: axradio_statuschange((struct axradio_status __xdata *)&axradio_cb_receive.st);
      0028F9 90 02 37         [24]10381 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      0028FC 12 3D EF         [24]10382 	lcall	_axradio_statuschange
                           001D9C 10383 	C$easyax5043.c$1440$1$343 ==.
                                  10384 ;	..\COMMON\easyax5043.c:1440: endcb:
      0028FF                      10385 00159$:
                           001D9C 10386 	C$easyax5043.c$1441$1$343 ==.
                                  10387 ;	..\COMMON\easyax5043.c:1441: if (axradio_mode == AXRADIO_MODE_WOR_RECEIVE) {
      0028FF 74 21            [12]10388 	mov	a,#0x21
      002901 B5 08 05         [24]10389 	cjne	a,_axradio_mode,00174$
                           001DA1 10390 	C$easyax5043.c$1442$2$358 ==.
                                  10391 ;	..\COMMON\easyax5043.c:1442: ax5043_receiver_on_wor();
      002904 12 17 44         [24]10392 	lcall	_ax5043_receiver_on_wor
      002907 80 43            [24]10393 	sjmp	00176$
      002909                      10394 00174$:
                           001DA6 10395 	C$easyax5043.c$1443$1$343 ==.
                                  10396 ;	..\COMMON\easyax5043.c:1443: } else if (axradio_mode == AXRADIO_MODE_ACK_RECEIVE ||
      002909 74 22            [12]10397 	mov	a,#0x22
      00290B B5 08 02         [24]10398 	cjne	a,_axradio_mode,00318$
      00290E 80 05            [24]10399 	sjmp	00169$
      002910                      10400 00318$:
                           001DAD 10401 	C$easyax5043.c$1444$1$343 ==.
                                  10402 ;	..\COMMON\easyax5043.c:1444: axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE) {
      002910 74 23            [12]10403 	mov	a,#0x23
      002912 B5 08 24         [24]10404 	cjne	a,_axradio_mode,00170$
      002915                      10405 00169$:
                           001DB2 10406 	C$easyax5043.c$1447$3$360 ==.
                                  10407 ;	..\COMMON\easyax5043.c:1447: uint8_t __autodata iesave = IE & 0x80;
      002915 74 80            [12]10408 	mov	a,#0x80
      002917 55 A8            [12]10409 	anl	a,_IE
      002919 FF               [12]10410 	mov	r7,a
                           001DB7 10411 	C$easyax5043.c$1448$3$360 ==.
                                  10412 ;	..\COMMON\easyax5043.c:1448: EA = 0;
      00291A C2 AF            [12]10413 	clr	_EA
                           001DB9 10414 	C$easyax5043.c$1449$3$360 ==.
                                  10415 ;	..\COMMON\easyax5043.c:1449: trxst = axradio_trxstate;
      00291C AE 09            [24]10416 	mov	r6,_axradio_trxstate
                           001DBB 10417 	C$easyax5043.c$1450$3$360 ==.
                                  10418 ;	..\COMMON\easyax5043.c:1450: axradio_cb_receive.st.error = AXRADIO_ERR_PACKETDONE;
      00291E 90 02 38         [24]10419 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      002921 74 F0            [12]10420 	mov	a,#0xf0
      002923 F0               [24]10421 	movx	@dptr,a
                           001DC1 10422 	C$easyax5043.c$1451$3$360 ==.
                                  10423 ;	..\COMMON\easyax5043.c:1451: IE |= iesave;
      002924 EF               [12]10424 	mov	a,r7
      002925 42 A8            [12]10425 	orl	_IE,a
                           001DC4 10426 	C$easyax5043.c$1453$2$359 ==.
                                  10427 ;	..\COMMON\easyax5043.c:1453: if (trxst == trxstate_off) {
      002927 EE               [12]10428 	mov	a,r6
      002928 70 22            [24]10429 	jnz	00176$
                           001DC7 10430 	C$easyax5043.c$1454$3$361 ==.
                                  10431 ;	..\COMMON\easyax5043.c:1454: if (axradio_mode == AXRADIO_MODE_WOR_ACK_RECEIVE)
      00292A 74 23            [12]10432 	mov	a,#0x23
      00292C B5 08 05         [24]10433 	cjne	a,_axradio_mode,00161$
                           001DCC 10434 	C$easyax5043.c$1455$3$361 ==.
                                  10435 ;	..\COMMON\easyax5043.c:1455: ax5043_receiver_on_wor();
      00292F 12 17 44         [24]10436 	lcall	_ax5043_receiver_on_wor
      002932 80 18            [24]10437 	sjmp	00176$
      002934                      10438 00161$:
                           001DD1 10439 	C$easyax5043.c$1457$3$361 ==.
                                  10440 ;	..\COMMON\easyax5043.c:1457: ax5043_receiver_on_continuous();
      002934 12 16 DC         [24]10441 	lcall	_ax5043_receiver_on_continuous
      002937 80 13            [24]10442 	sjmp	00176$
      002939                      10443 00170$:
                           001DD6 10444 	C$easyax5043.c$1460$2$362 ==.
                                  10445 ;	..\COMMON\easyax5043.c:1460: switch (axradio_trxstate) {
      002939 AF 09            [24]10446 	mov	r7,_axradio_trxstate
      00293B BF 01 02         [24]10447 	cjne	r7,#0x01,00324$
      00293E 80 03            [24]10448 	sjmp	00166$
      002940                      10449 00324$:
      002940 BF 02 09         [24]10450 	cjne	r7,#0x02,00176$
                           001DE0 10451 	C$easyax5043.c$1462$3$363 ==.
                                  10452 ;	..\COMMON\easyax5043.c:1462: case trxstate_rxwor:
      002943                      10453 00166$:
                           001DE0 10454 	C$easyax5043.c$1463$3$363 ==.
                                  10455 ;	..\COMMON\easyax5043.c:1463: AX5043_IRQMASK0 |= 0x01; // re-enable FIFO not empty irq
      002943 90 40 07         [24]10456 	mov	dptr,#_AX5043_IRQMASK0
      002946 E0               [24]10457 	movx	a,@dptr
      002947 FF               [12]10458 	mov	r7,a
      002948 74 01            [12]10459 	mov	a,#0x01
      00294A 4F               [12]10460 	orl	a,r7
      00294B F0               [24]10461 	movx	@dptr,a
                           001DE9 10462 	C$easyax5043.c$1468$1$343 ==.
                                  10463 ;	..\COMMON\easyax5043.c:1468: }
      00294C                      10464 00176$:
                           001DE9 10465 	C$easyax5043.c$1470$1$343 ==.
                           001DE9 10466 	XFeasyax5043$axradio_receive_callback_fwd$0$0 ==.
      00294C 22               [24]10467 	ret
                                  10468 ;------------------------------------------------------------
                                  10469 ;Allocation info for local variables in function 'axradio_killallcb'
                                  10470 ;------------------------------------------------------------
                           001DEA 10471 	Feasyax5043$axradio_killallcb$0$0 ==.
                           001DEA 10472 	C$easyax5043.c$1472$1$343 ==.
                                  10473 ;	..\COMMON\easyax5043.c:1472: static void axradio_killallcb(void)
                                  10474 ;	-----------------------------------------
                                  10475 ;	 function axradio_killallcb
                                  10476 ;	-----------------------------------------
      00294D                      10477 _axradio_killallcb:
                           001DEA 10478 	C$easyax5043.c$1474$1$365 ==.
                                  10479 ;	..\COMMON\easyax5043.c:1474: wtimer_remove_callback(&axradio_cb_receive.cb);
      00294D 90 02 33         [24]10480 	mov	dptr,#_axradio_cb_receive
      002950 12 51 BE         [24]10481 	lcall	_wtimer_remove_callback
                           001DF0 10482 	C$easyax5043.c$1475$1$365 ==.
                                  10483 ;	..\COMMON\easyax5043.c:1475: wtimer_remove_callback(&axradio_cb_receivesfd.cb);
      002953 90 02 55         [24]10484 	mov	dptr,#_axradio_cb_receivesfd
      002956 12 51 BE         [24]10485 	lcall	_wtimer_remove_callback
                           001DF6 10486 	C$easyax5043.c$1476$1$365 ==.
                                  10487 ;	..\COMMON\easyax5043.c:1476: wtimer_remove_callback(&axradio_cb_channelstate.cb);
      002959 90 02 5F         [24]10488 	mov	dptr,#_axradio_cb_channelstate
      00295C 12 51 BE         [24]10489 	lcall	_wtimer_remove_callback
                           001DFC 10490 	C$easyax5043.c$1477$1$365 ==.
                                  10491 ;	..\COMMON\easyax5043.c:1477: wtimer_remove_callback(&axradio_cb_transmitstart.cb);
      00295F 90 02 6C         [24]10492 	mov	dptr,#_axradio_cb_transmitstart
      002962 12 51 BE         [24]10493 	lcall	_wtimer_remove_callback
                           001E02 10494 	C$easyax5043.c$1478$1$365 ==.
                                  10495 ;	..\COMMON\easyax5043.c:1478: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      002965 90 02 76         [24]10496 	mov	dptr,#_axradio_cb_transmitend
      002968 12 51 BE         [24]10497 	lcall	_wtimer_remove_callback
                           001E08 10498 	C$easyax5043.c$1479$1$365 ==.
                                  10499 ;	..\COMMON\easyax5043.c:1479: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      00296B 90 02 80         [24]10500 	mov	dptr,#_axradio_cb_transmitdata
      00296E 12 51 BE         [24]10501 	lcall	_wtimer_remove_callback
                           001E0E 10502 	C$easyax5043.c$1480$1$365 ==.
                                  10503 ;	..\COMMON\easyax5043.c:1480: wtimer_remove(&axradio_timer);
      002971 90 02 8A         [24]10504 	mov	dptr,#_axradio_timer
      002974 12 4D D3         [24]10505 	lcall	_wtimer_remove
                           001E14 10506 	C$easyax5043.c$1481$1$365 ==.
                           001E14 10507 	XFeasyax5043$axradio_killallcb$0$0 ==.
      002977 22               [24]10508 	ret
                                  10509 ;------------------------------------------------------------
                                  10510 ;Allocation info for local variables in function 'axradio_tunevoltage'
                                  10511 ;------------------------------------------------------------
                                  10512 ;r                         Allocated to registers r6 r7 
                                  10513 ;cnt                       Allocated to registers r5 
                                  10514 ;x                         Allocated to registers r4 r3 
                                  10515 ;------------------------------------------------------------
                           001E15 10516 	Feasyax5043$axradio_tunevoltage$0$0 ==.
                           001E15 10517 	C$easyax5043.c$1507$1$365 ==.
                                  10518 ;	..\COMMON\easyax5043.c:1507: static int16_t axradio_tunevoltage(void)
                                  10519 ;	-----------------------------------------
                                  10520 ;	 function axradio_tunevoltage
                                  10521 ;	-----------------------------------------
      002978                      10522 _axradio_tunevoltage:
                           001E15 10523 	C$easyax5043.c$1509$1$365 ==.
                                  10524 ;	..\COMMON\easyax5043.c:1509: int16_t __autodata r = 0;
      002978 7E 00            [12]10525 	mov	r6,#0x00
      00297A 7F 00            [12]10526 	mov	r7,#0x00
                           001E19 10527 	C$easyax5043.c$1511$1$367 ==.
                                  10528 ;	..\COMMON\easyax5043.c:1511: do {
      00297C 7D 40            [12]10529 	mov	r5,#0x40
      00297E                      10530 00103$:
                           001E1B 10531 	C$easyax5043.c$1512$2$368 ==.
                                  10532 ;	..\COMMON\easyax5043.c:1512: AX5043_GPADCCTRL = 0x84;
      00297E 90 43 00         [24]10533 	mov	dptr,#_AX5043_GPADCCTRL
      002981 74 84            [12]10534 	mov	a,#0x84
      002983 F0               [24]10535 	movx	@dptr,a
                           001E21 10536 	C$easyax5043.c$1513$2$368 ==.
                                  10537 ;	..\COMMON\easyax5043.c:1513: do {} while (AX5043_GPADCCTRL & 0x80);
      002984                      10538 00101$:
      002984 90 43 00         [24]10539 	mov	dptr,#_AX5043_GPADCCTRL
      002987 E0               [24]10540 	movx	a,@dptr
      002988 FC               [12]10541 	mov	r4,a
      002989 20 E7 F8         [24]10542 	jb	acc.7,00101$
                           001E29 10543 	C$easyax5043.c$1514$1$367 ==.
                                  10544 ;	..\COMMON\easyax5043.c:1514: } while (--cnt);
      00298C DD F0            [24]10545 	djnz	r5,00103$
                           001E2B 10546 	C$easyax5043.c$1516$1$367 ==.
                                  10547 ;	..\COMMON\easyax5043.c:1516: do {
      00298E 7D 20            [12]10548 	mov	r5,#0x20
      002990                      10549 00108$:
                           001E2D 10550 	C$easyax5043.c$1517$2$370 ==.
                                  10551 ;	..\COMMON\easyax5043.c:1517: AX5043_GPADCCTRL = 0x84;
      002990 90 43 00         [24]10552 	mov	dptr,#_AX5043_GPADCCTRL
      002993 74 84            [12]10553 	mov	a,#0x84
      002995 F0               [24]10554 	movx	@dptr,a
                           001E33 10555 	C$easyax5043.c$1518$2$370 ==.
                                  10556 ;	..\COMMON\easyax5043.c:1518: do {} while (AX5043_GPADCCTRL & 0x80);
      002996                      10557 00106$:
      002996 90 43 00         [24]10558 	mov	dptr,#_AX5043_GPADCCTRL
      002999 E0               [24]10559 	movx	a,@dptr
      00299A FC               [12]10560 	mov	r4,a
      00299B 20 E7 F8         [24]10561 	jb	acc.7,00106$
                           001E3B 10562 	C$easyax5043.c$1520$3$372 ==.
                                  10563 ;	..\COMMON\easyax5043.c:1520: int16_t x = AX5043_GPADC13VALUE1 & 0x03;
      00299E 90 43 08         [24]10564 	mov	dptr,#_AX5043_GPADC13VALUE1
      0029A1 E0               [24]10565 	movx	a,@dptr
      0029A2 FC               [12]10566 	mov	r4,a
      0029A3 53 04 03         [24]10567 	anl	ar4,#0x03
                           001E43 10568 	C$easyax5043.c$1521$3$372 ==.
                                  10569 ;	..\COMMON\easyax5043.c:1521: x <<= 8;
      0029A6 8C 03            [24]10570 	mov	ar3,r4
      0029A8 7C 00            [12]10571 	mov	r4,#0x00
                           001E47 10572 	C$easyax5043.c$1522$3$372 ==.
                                  10573 ;	..\COMMON\easyax5043.c:1522: x |= AX5043_GPADC13VALUE0;
      0029AA 90 43 09         [24]10574 	mov	dptr,#_AX5043_GPADC13VALUE0
      0029AD E0               [24]10575 	movx	a,@dptr
      0029AE F9               [12]10576 	mov	r1,a
      0029AF 7A 00            [12]10577 	mov	r2,#0x00
      0029B1 E9               [12]10578 	mov	a,r1
      0029B2 42 04            [12]10579 	orl	ar4,a
      0029B4 EA               [12]10580 	mov	a,r2
      0029B5 42 03            [12]10581 	orl	ar3,a
                           001E54 10582 	C$easyax5043.c$1523$3$372 ==.
                                  10583 ;	..\COMMON\easyax5043.c:1523: r += x;
      0029B7 EC               [12]10584 	mov	a,r4
      0029B8 2E               [12]10585 	add	a,r6
      0029B9 FE               [12]10586 	mov	r6,a
      0029BA EB               [12]10587 	mov	a,r3
      0029BB 3F               [12]10588 	addc	a,r7
      0029BC FF               [12]10589 	mov	r7,a
                           001E5A 10590 	C$easyax5043.c$1525$1$367 ==.
                                  10591 ;	..\COMMON\easyax5043.c:1525: } while (--cnt);
      0029BD DD D1            [24]10592 	djnz	r5,00108$
                           001E5C 10593 	C$easyax5043.c$1526$1$367 ==.
                                  10594 ;	..\COMMON\easyax5043.c:1526: return r;
      0029BF 8E 82            [24]10595 	mov	dpl,r6
      0029C1 8F 83            [24]10596 	mov	dph,r7
                           001E60 10597 	C$easyax5043.c$1527$1$367 ==.
                           001E60 10598 	XFeasyax5043$axradio_tunevoltage$0$0 ==.
      0029C3 22               [24]10599 	ret
                                  10600 ;------------------------------------------------------------
                                  10601 ;Allocation info for local variables in function 'axradio_adjustvcoi'
                                  10602 ;------------------------------------------------------------
                                  10603 ;rng                       Allocated to registers r7 
                                  10604 ;offs                      Allocated to registers r3 
                                  10605 ;bestrng                   Allocated to registers r4 
                                  10606 ;bestval                   Allocated to registers r5 r6 
                                  10607 ;val                       Allocated to stack - _bp +1
                                  10608 ;------------------------------------------------------------
                           001E61 10609 	Feasyax5043$axradio_adjustvcoi$0$0 ==.
                           001E61 10610 	C$easyax5043.c$1531$1$367 ==.
                                  10611 ;	..\COMMON\easyax5043.c:1531: static __reentrantb uint8_t axradio_adjustvcoi(uint8_t rng) __reentrant
                                  10612 ;	-----------------------------------------
                                  10613 ;	 function axradio_adjustvcoi
                                  10614 ;	-----------------------------------------
      0029C4                      10615 _axradio_adjustvcoi:
      0029C4 C0 22            [24]10616 	push	_bp
      0029C6 85 81 22         [24]10617 	mov	_bp,sp
      0029C9 05 81            [12]10618 	inc	sp
      0029CB 05 81            [12]10619 	inc	sp
      0029CD AF 82            [24]10620 	mov	r7,dpl
                           001E6C 10621 	C$easyax5043.c$1535$1$367 ==.
                                  10622 ;	..\COMMON\easyax5043.c:1535: uint16_t bestval = ~0;
      0029CF 7D FF            [12]10623 	mov	r5,#0xff
      0029D1 7E FF            [12]10624 	mov	r6,#0xff
                           001E70 10625 	C$easyax5043.c$1536$1$374 ==.
                                  10626 ;	..\COMMON\easyax5043.c:1536: rng &= 0x7F;
      0029D3 53 07 7F         [24]10627 	anl	ar7,#0x7f
                           001E73 10628 	C$easyax5043.c$1537$1$374 ==.
                                  10629 ;	..\COMMON\easyax5043.c:1537: bestrng = rng;
      0029D6 8F 04            [24]10630 	mov	ar4,r7
                           001E75 10631 	C$easyax5043.c$1538$1$374 ==.
                                  10632 ;	..\COMMON\easyax5043.c:1538: for (offs = 0; offs != 16; ++offs) {
      0029D8 7B 00            [12]10633 	mov	r3,#0x00
      0029DA                      10634 00115$:
                           001E77 10635 	C$easyax5043.c$1540$2$375 ==.
                                  10636 ;	..\COMMON\easyax5043.c:1540: if (!((uint8_t)(rng + offs) & 0xC0)) {
      0029DA EB               [12]10637 	mov	a,r3
      0029DB 2F               [12]10638 	add	a,r7
      0029DC 54 C0            [12]10639 	anl	a,#0xc0
      0029DE 60 02            [24]10640 	jz	00144$
      0029E0 80 42            [24]10641 	sjmp	00104$
      0029E2                      10642 00144$:
                           001E7F 10643 	C$easyax5043.c$1541$1$374 ==.
                                  10644 ;	..\COMMON\easyax5043.c:1541: AX5043_PLLVCOI = 0x80 | (rng + offs);
      0029E2 C0 04            [24]10645 	push	ar4
      0029E4 EB               [12]10646 	mov	a,r3
      0029E5 2F               [12]10647 	add	a,r7
      0029E6 90 41 80         [24]10648 	mov	dptr,#_AX5043_PLLVCOI
      0029E9 44 80            [12]10649 	orl	a,#0x80
      0029EB F0               [24]10650 	movx	@dptr,a
                           001E89 10651 	C$easyax5043.c$1542$3$376 ==.
                                  10652 ;	..\COMMON\easyax5043.c:1542: val = axradio_tunevoltage();
      0029EC C0 07            [24]10653 	push	ar7
      0029EE C0 06            [24]10654 	push	ar6
      0029F0 C0 05            [24]10655 	push	ar5
      0029F2 C0 03            [24]10656 	push	ar3
      0029F4 12 29 78         [24]10657 	lcall	_axradio_tunevoltage
      0029F7 AA 82            [24]10658 	mov	r2,dpl
      0029F9 AC 83            [24]10659 	mov	r4,dph
      0029FB D0 03            [24]10660 	pop	ar3
      0029FD D0 05            [24]10661 	pop	ar5
      0029FF D0 06            [24]10662 	pop	ar6
      002A01 D0 07            [24]10663 	pop	ar7
      002A03 A8 22            [24]10664 	mov	r0,_bp
      002A05 08               [12]10665 	inc	r0
      002A06 A6 02            [24]10666 	mov	@r0,ar2
      002A08 08               [12]10667 	inc	r0
      002A09 A6 04            [24]10668 	mov	@r0,ar4
                           001EA8 10669 	C$easyax5043.c$1543$3$376 ==.
                                  10670 ;	..\COMMON\easyax5043.c:1543: if (val < bestval) {
      002A0B A8 22            [24]10671 	mov	r0,_bp
      002A0D 08               [12]10672 	inc	r0
      002A0E C3               [12]10673 	clr	c
      002A0F E6               [12]10674 	mov	a,@r0
      002A10 9D               [12]10675 	subb	a,r5
      002A11 08               [12]10676 	inc	r0
      002A12 E6               [12]10677 	mov	a,@r0
      002A13 9E               [12]10678 	subb	a,r6
      002A14 D0 04            [24]10679 	pop	ar4
      002A16 50 0C            [24]10680 	jnc	00104$
                           001EB5 10681 	C$easyax5043.c$1544$4$377 ==.
                                  10682 ;	..\COMMON\easyax5043.c:1544: bestval = val;
      002A18 A8 22            [24]10683 	mov	r0,_bp
      002A1A 08               [12]10684 	inc	r0
      002A1B 86 05            [24]10685 	mov	ar5,@r0
      002A1D 08               [12]10686 	inc	r0
      002A1E 86 06            [24]10687 	mov	ar6,@r0
                           001EBD 10688 	C$easyax5043.c$1545$4$377 ==.
                                  10689 ;	..\COMMON\easyax5043.c:1545: bestrng = rng + offs;
      002A20 EB               [12]10690 	mov	a,r3
      002A21 2F               [12]10691 	add	a,r7
      002A22 FA               [12]10692 	mov	r2,a
      002A23 FC               [12]10693 	mov	r4,a
      002A24                      10694 00104$:
                           001EC1 10695 	C$easyax5043.c$1548$2$375 ==.
                                  10696 ;	..\COMMON\easyax5043.c:1548: if (!offs)
      002A24 EB               [12]10697 	mov	a,r3
      002A25 60 4D            [24]10698 	jz	00111$
                           001EC4 10699 	C$easyax5043.c$1550$2$375 ==.
                                  10700 ;	..\COMMON\easyax5043.c:1550: if (!((uint8_t)(rng - offs) & 0xC0)) {
      002A27 EF               [12]10701 	mov	a,r7
      002A28 C3               [12]10702 	clr	c
      002A29 9B               [12]10703 	subb	a,r3
      002A2A 54 C0            [12]10704 	anl	a,#0xc0
      002A2C 60 02            [24]10705 	jz	00148$
      002A2E 80 44            [24]10706 	sjmp	00111$
      002A30                      10707 00148$:
                           001ECD 10708 	C$easyax5043.c$1551$1$374 ==.
                                  10709 ;	..\COMMON\easyax5043.c:1551: AX5043_PLLVCOI = 0x80 | (rng - offs);
      002A30 C0 04            [24]10710 	push	ar4
      002A32 EF               [12]10711 	mov	a,r7
      002A33 C3               [12]10712 	clr	c
      002A34 9B               [12]10713 	subb	a,r3
      002A35 90 41 80         [24]10714 	mov	dptr,#_AX5043_PLLVCOI
      002A38 44 80            [12]10715 	orl	a,#0x80
      002A3A F0               [24]10716 	movx	@dptr,a
                           001ED8 10717 	C$easyax5043.c$1552$3$378 ==.
                                  10718 ;	..\COMMON\easyax5043.c:1552: val = axradio_tunevoltage();
      002A3B C0 07            [24]10719 	push	ar7
      002A3D C0 06            [24]10720 	push	ar6
      002A3F C0 05            [24]10721 	push	ar5
      002A41 C0 03            [24]10722 	push	ar3
      002A43 12 29 78         [24]10723 	lcall	_axradio_tunevoltage
      002A46 AA 82            [24]10724 	mov	r2,dpl
      002A48 AC 83            [24]10725 	mov	r4,dph
      002A4A D0 03            [24]10726 	pop	ar3
      002A4C D0 05            [24]10727 	pop	ar5
      002A4E D0 06            [24]10728 	pop	ar6
      002A50 D0 07            [24]10729 	pop	ar7
      002A52 A8 22            [24]10730 	mov	r0,_bp
      002A54 08               [12]10731 	inc	r0
      002A55 A6 02            [24]10732 	mov	@r0,ar2
      002A57 08               [12]10733 	inc	r0
      002A58 A6 04            [24]10734 	mov	@r0,ar4
                           001EF7 10735 	C$easyax5043.c$1553$3$378 ==.
                                  10736 ;	..\COMMON\easyax5043.c:1553: if (val < bestval) {
      002A5A A8 22            [24]10737 	mov	r0,_bp
      002A5C 08               [12]10738 	inc	r0
      002A5D C3               [12]10739 	clr	c
      002A5E E6               [12]10740 	mov	a,@r0
      002A5F 9D               [12]10741 	subb	a,r5
      002A60 08               [12]10742 	inc	r0
      002A61 E6               [12]10743 	mov	a,@r0
      002A62 9E               [12]10744 	subb	a,r6
      002A63 D0 04            [24]10745 	pop	ar4
      002A65 50 0D            [24]10746 	jnc	00111$
                           001F04 10747 	C$easyax5043.c$1554$4$379 ==.
                                  10748 ;	..\COMMON\easyax5043.c:1554: bestval = val;
      002A67 A8 22            [24]10749 	mov	r0,_bp
      002A69 08               [12]10750 	inc	r0
      002A6A 86 05            [24]10751 	mov	ar5,@r0
      002A6C 08               [12]10752 	inc	r0
      002A6D 86 06            [24]10753 	mov	ar6,@r0
                           001F0C 10754 	C$easyax5043.c$1555$4$379 ==.
                                  10755 ;	..\COMMON\easyax5043.c:1555: bestrng = rng - offs;
      002A6F EF               [12]10756 	mov	a,r7
      002A70 C3               [12]10757 	clr	c
      002A71 9B               [12]10758 	subb	a,r3
      002A72 FA               [12]10759 	mov	r2,a
      002A73 FC               [12]10760 	mov	r4,a
      002A74                      10761 00111$:
                           001F11 10762 	C$easyax5043.c$1538$1$374 ==.
                                  10763 ;	..\COMMON\easyax5043.c:1538: for (offs = 0; offs != 16; ++offs) {
      002A74 0B               [12]10764 	inc	r3
      002A75 BB 10 02         [24]10765 	cjne	r3,#0x10,00150$
      002A78 80 03            [24]10766 	sjmp	00151$
      002A7A                      10767 00150$:
      002A7A 02 29 DA         [24]10768 	ljmp	00115$
      002A7D                      10769 00151$:
                           001F1A 10770 	C$easyax5043.c$1560$1$374 ==.
                                  10771 ;	..\COMMON\easyax5043.c:1560: if (bestval <= 0x0010)
      002A7D C3               [12]10772 	clr	c
      002A7E 74 10            [12]10773 	mov	a,#0x10
      002A80 9D               [12]10774 	subb	a,r5
      002A81 E4               [12]10775 	clr	a
      002A82 9E               [12]10776 	subb	a,r6
      002A83 40 07            [24]10777 	jc	00114$
                           001F22 10778 	C$easyax5043.c$1561$1$374 ==.
                                  10779 ;	..\COMMON\easyax5043.c:1561: return rng | 0x80;
      002A85 74 80            [12]10780 	mov	a,#0x80
      002A87 4F               [12]10781 	orl	a,r7
      002A88 F5 82            [12]10782 	mov	dpl,a
      002A8A 80 05            [24]10783 	sjmp	00116$
      002A8C                      10784 00114$:
                           001F29 10785 	C$easyax5043.c$1562$1$374 ==.
                                  10786 ;	..\COMMON\easyax5043.c:1562: return bestrng | 0x80;
      002A8C 74 80            [12]10787 	mov	a,#0x80
      002A8E 4C               [12]10788 	orl	a,r4
      002A8F F5 82            [12]10789 	mov	dpl,a
      002A91                      10790 00116$:
      002A91 85 22 81         [24]10791 	mov	sp,_bp
      002A94 D0 22            [24]10792 	pop	_bp
                           001F33 10793 	C$easyax5043.c$1563$1$374 ==.
                           001F33 10794 	XFeasyax5043$axradio_adjustvcoi$0$0 ==.
      002A96 22               [24]10795 	ret
                                  10796 ;------------------------------------------------------------
                                  10797 ;Allocation info for local variables in function 'axradio_calvcoi'
                                  10798 ;------------------------------------------------------------
                                  10799 ;i                         Allocated to registers r2 
                                  10800 ;r                         Allocated to registers r7 
                                  10801 ;vmin                      Allocated to registers r5 r6 
                                  10802 ;vmax                      Allocated to stack - _bp +1
                                  10803 ;curtune                   Allocated to registers r3 r4 
                                  10804 ;------------------------------------------------------------
                           001F34 10805 	Feasyax5043$axradio_calvcoi$0$0 ==.
                           001F34 10806 	C$easyax5043.c$1565$1$374 ==.
                                  10807 ;	..\COMMON\easyax5043.c:1565: static __reentrantb uint8_t axradio_calvcoi(void) __reentrant
                                  10808 ;	-----------------------------------------
                                  10809 ;	 function axradio_calvcoi
                                  10810 ;	-----------------------------------------
      002A97                      10811 _axradio_calvcoi:
      002A97 C0 22            [24]10812 	push	_bp
      002A99 85 81 22         [24]10813 	mov	_bp,sp
      002A9C 05 81            [12]10814 	inc	sp
      002A9E 05 81            [12]10815 	inc	sp
                           001F3D 10816 	C$easyax5043.c$1568$1$374 ==.
                                  10817 ;	..\COMMON\easyax5043.c:1568: uint8_t r = 0;
      002AA0 7F 00            [12]10818 	mov	r7,#0x00
                           001F3F 10819 	C$easyax5043.c$1569$1$374 ==.
                                  10820 ;	..\COMMON\easyax5043.c:1569: uint16_t vmin = 0xffff;
      002AA2 7D FF            [12]10821 	mov	r5,#0xff
      002AA4 7E FF            [12]10822 	mov	r6,#0xff
                           001F43 10823 	C$easyax5043.c$1570$1$374 ==.
                                  10824 ;	..\COMMON\easyax5043.c:1570: uint16_t vmax = 0x0000;
      002AA6 A8 22            [24]10825 	mov	r0,_bp
      002AA8 08               [12]10826 	inc	r0
      002AA9 E4               [12]10827 	clr	a
      002AAA F6               [12]10828 	mov	@r0,a
      002AAB 08               [12]10829 	inc	r0
      002AAC F6               [12]10830 	mov	@r0,a
                           001F4A 10831 	C$easyax5043.c$1571$2$382 ==.
                                  10832 ;	..\COMMON\easyax5043.c:1571: for (i = 0x40; i != 0;) {
      002AAD 7A 40            [12]10833 	mov	r2,#0x40
      002AAF                      10834 00113$:
                           001F4C 10835 	C$easyax5043.c$1573$1$381 ==.
                                  10836 ;	..\COMMON\easyax5043.c:1573: --i;
      002AAF C0 07            [24]10837 	push	ar7
      002AB1 1A               [12]10838 	dec	r2
                           001F4F 10839 	C$easyax5043.c$1574$2$382 ==.
                                  10840 ;	..\COMMON\easyax5043.c:1574: AX5043_PLLVCOI = 0x80 | i;
      002AB2 90 41 80         [24]10841 	mov	dptr,#_AX5043_PLLVCOI
      002AB5 74 80            [12]10842 	mov	a,#0x80
      002AB7 4A               [12]10843 	orl	a,r2
      002AB8 F0               [24]10844 	movx	@dptr,a
                           001F56 10845 	C$easyax5043.c$1575$2$382 ==.
                                  10846 ;	..\COMMON\easyax5043.c:1575: AX5043_PLLRANGINGA; // clear PLL lock loss
      002AB9 90 40 33         [24]10847 	mov	dptr,#_AX5043_PLLRANGINGA
      002ABC E0               [24]10848 	movx	a,@dptr
                           001F5A 10849 	C$easyax5043.c$1576$2$382 ==.
                                  10850 ;	..\COMMON\easyax5043.c:1576: curtune = axradio_tunevoltage();
      002ABD C0 06            [24]10851 	push	ar6
      002ABF C0 05            [24]10852 	push	ar5
      002AC1 C0 02            [24]10853 	push	ar2
      002AC3 12 29 78         [24]10854 	lcall	_axradio_tunevoltage
      002AC6 AF 82            [24]10855 	mov	r7,dpl
      002AC8 AC 83            [24]10856 	mov	r4,dph
      002ACA D0 02            [24]10857 	pop	ar2
      002ACC D0 05            [24]10858 	pop	ar5
      002ACE D0 06            [24]10859 	pop	ar6
      002AD0 8F 03            [24]10860 	mov	ar3,r7
                           001F6F 10861 	C$easyax5043.c$1577$2$382 ==.
                                  10862 ;	..\COMMON\easyax5043.c:1577: AX5043_PLLRANGINGA; // clear PLL lock loss
      002AD2 90 40 33         [24]10863 	mov	dptr,#_AX5043_PLLRANGINGA
      002AD5 E0               [24]10864 	movx	a,@dptr
                           001F73 10865 	C$easyax5043.c$1578$2$382 ==.
                                  10866 ;	..\COMMON\easyax5043.c:1578: ((uint16_t __xdata *)axradio_rxbuffer)[i] = curtune;
      002AD6 EA               [12]10867 	mov	a,r2
      002AD7 75 F0 02         [24]10868 	mov	b,#0x02
      002ADA A4               [48]10869 	mul	ab
      002ADB 24 2F            [12]10870 	add	a,#_axradio_rxbuffer
      002ADD F5 82            [12]10871 	mov	dpl,a
      002ADF 74 01            [12]10872 	mov	a,#(_axradio_rxbuffer >> 8)
      002AE1 35 F0            [12]10873 	addc	a,b
      002AE3 F5 83            [12]10874 	mov	dph,a
      002AE5 EB               [12]10875 	mov	a,r3
      002AE6 F0               [24]10876 	movx	@dptr,a
      002AE7 EC               [12]10877 	mov	a,r4
      002AE8 A3               [24]10878 	inc	dptr
      002AE9 F0               [24]10879 	movx	@dptr,a
                           001F87 10880 	C$easyax5043.c$1579$2$382 ==.
                                  10881 ;	..\COMMON\easyax5043.c:1579: if (curtune > vmax)
      002AEA A8 22            [24]10882 	mov	r0,_bp
      002AEC 08               [12]10883 	inc	r0
      002AED C3               [12]10884 	clr	c
      002AEE E6               [12]10885 	mov	a,@r0
      002AEF 9B               [12]10886 	subb	a,r3
      002AF0 08               [12]10887 	inc	r0
      002AF1 E6               [12]10888 	mov	a,@r0
      002AF2 9C               [12]10889 	subb	a,r4
      002AF3 D0 07            [24]10890 	pop	ar7
      002AF5 50 08            [24]10891 	jnc	00102$
                           001F94 10892 	C$easyax5043.c$1580$2$382 ==.
                                  10893 ;	..\COMMON\easyax5043.c:1580: vmax = curtune;
      002AF7 A8 22            [24]10894 	mov	r0,_bp
      002AF9 08               [12]10895 	inc	r0
      002AFA A6 03            [24]10896 	mov	@r0,ar3
      002AFC 08               [12]10897 	inc	r0
      002AFD A6 04            [24]10898 	mov	@r0,ar4
      002AFF                      10899 00102$:
                           001F9C 10900 	C$easyax5043.c$1581$2$382 ==.
                                  10901 ;	..\COMMON\easyax5043.c:1581: if (curtune < vmin) {
      002AFF C3               [12]10902 	clr	c
      002B00 EB               [12]10903 	mov	a,r3
      002B01 9D               [12]10904 	subb	a,r5
      002B02 EC               [12]10905 	mov	a,r4
      002B03 9E               [12]10906 	subb	a,r6
      002B04 50 14            [24]10907 	jnc	00114$
                           001FA3 10908 	C$easyax5043.c$1582$3$383 ==.
                                  10909 ;	..\COMMON\easyax5043.c:1582: vmin = curtune;
      002B06 8B 05            [24]10910 	mov	ar5,r3
      002B08 8C 06            [24]10911 	mov	ar6,r4
                           001FA7 10912 	C$easyax5043.c$1584$3$383 ==.
                                  10913 ;	..\COMMON\easyax5043.c:1584: if (!(0xC0 & (uint8_t)~AX5043_PLLRANGINGA))
      002B0A 90 40 33         [24]10914 	mov	dptr,#_AX5043_PLLRANGINGA
      002B0D E0               [24]10915 	movx	a,@dptr
      002B0E F4               [12]10916 	cpl	a
      002B0F FC               [12]10917 	mov	r4,a
      002B10 54 C0            [12]10918 	anl	a,#0xc0
      002B12 60 02            [24]10919 	jz	00147$
      002B14 80 04            [24]10920 	sjmp	00114$
      002B16                      10921 00147$:
                           001FB3 10922 	C$easyax5043.c$1585$3$383 ==.
                                  10923 ;	..\COMMON\easyax5043.c:1585: r = i | 0x80;
      002B16 74 80            [12]10924 	mov	a,#0x80
      002B18 4A               [12]10925 	orl	a,r2
      002B19 FF               [12]10926 	mov	r7,a
      002B1A                      10927 00114$:
                           001FB7 10928 	C$easyax5043.c$1571$1$381 ==.
                                  10929 ;	..\COMMON\easyax5043.c:1571: for (i = 0x40; i != 0;) {
      002B1A EA               [12]10930 	mov	a,r2
      002B1B 70 92            [24]10931 	jnz	00113$
                           001FBA 10932 	C$easyax5043.c$1588$1$381 ==.
                                  10933 ;	..\COMMON\easyax5043.c:1588: if (!(r & 0x80) || vmax >= 0xFF00 || vmin < 0x0100 || vmax - vmin < 0x6000)
      002B1D EF               [12]10934 	mov	a,r7
      002B1E 30 E7 1F         [24]10935 	jnb	acc.7,00108$
      002B21 A8 22            [24]10936 	mov	r0,_bp
      002B23 08               [12]10937 	inc	r0
      002B24 C3               [12]10938 	clr	c
      002B25 08               [12]10939 	inc	r0
      002B26 E6               [12]10940 	mov	a,@r0
      002B27 94 FF            [12]10941 	subb	a,#0xff
      002B29 50 15            [24]10942 	jnc	00108$
      002B2B 74 FF            [12]10943 	mov	a,#0x100 - 0x01
      002B2D 2E               [12]10944 	add	a,r6
      002B2E 50 10            [24]10945 	jnc	00108$
      002B30 A8 22            [24]10946 	mov	r0,_bp
      002B32 08               [12]10947 	inc	r0
      002B33 E6               [12]10948 	mov	a,@r0
      002B34 C3               [12]10949 	clr	c
      002B35 9D               [12]10950 	subb	a,r5
      002B36 FD               [12]10951 	mov	r5,a
      002B37 08               [12]10952 	inc	r0
      002B38 E6               [12]10953 	mov	a,@r0
      002B39 9E               [12]10954 	subb	a,r6
      002B3A FE               [12]10955 	mov	r6,a
      002B3B C3               [12]10956 	clr	c
      002B3C 94 60            [12]10957 	subb	a,#0x60
      002B3E 50 05            [24]10958 	jnc	00109$
      002B40                      10959 00108$:
                           001FDD 10960 	C$easyax5043.c$1589$1$381 ==.
                                  10961 ;	..\COMMON\easyax5043.c:1589: return 0;
      002B40 75 82 00         [24]10962 	mov	dpl,#0x00
      002B43 80 02            [24]10963 	sjmp	00115$
      002B45                      10964 00109$:
                           001FE2 10965 	C$easyax5043.c$1590$1$381 ==.
                                  10966 ;	..\COMMON\easyax5043.c:1590: return r;
      002B45 8F 82            [24]10967 	mov	dpl,r7
      002B47                      10968 00115$:
      002B47 85 22 81         [24]10969 	mov	sp,_bp
      002B4A D0 22            [24]10970 	pop	_bp
                           001FE9 10971 	C$easyax5043.c$1591$1$381 ==.
                           001FE9 10972 	XFeasyax5043$axradio_calvcoi$0$0 ==.
      002B4C 22               [24]10973 	ret
                                  10974 ;------------------------------------------------------------
                                  10975 ;Allocation info for local variables in function 'axradio_init'
                                  10976 ;------------------------------------------------------------
                                  10977 ;i                         Allocated to registers r7 
                                  10978 ;iesave                    Allocated to registers r6 
                                  10979 ;f                         Allocated to registers r3 r4 r5 r6 
                                  10980 ;r                         Allocated to registers r5 
                                  10981 ;x                         Allocated to registers r7 
                                  10982 ;vcoisave                  Allocated with name '_axradio_init_vcoisave_3_395'
                                  10983 ;j                         Allocated to registers r6 
                                  10984 ;f                         Allocated to registers r0 r1 r2 r7 
                                  10985 ;x                         Allocated to registers r7 
                                  10986 ;chg                       Allocated to registers r5 
                                  10987 ;f                         Allocated to registers r4 r5 r6 r7 
                                  10988 ;------------------------------------------------------------
                           001FEA 10989 	G$axradio_init$0$0 ==.
                           001FEA 10990 	C$easyax5043.c$1597$1$381 ==.
                                  10991 ;	..\COMMON\easyax5043.c:1597: uint8_t axradio_init(void)
                                  10992 ;	-----------------------------------------
                                  10993 ;	 function axradio_init
                                  10994 ;	-----------------------------------------
      002B4D                      10995 _axradio_init:
                           001FEA 10996 	C$easyax5043.c$1600$1$385 ==.
                                  10997 ;	..\COMMON\easyax5043.c:1600: axradio_mode = AXRADIO_MODE_UNINIT;
      002B4D 75 08 00         [24]10998 	mov	_axradio_mode,#0x00
                           001FED 10999 	C$easyax5043.c$1601$1$385 ==.
                                  11000 ;	..\COMMON\easyax5043.c:1601: axradio_killallcb();
      002B50 12 29 4D         [24]11001 	lcall	_axradio_killallcb
                           001FF0 11002 	C$easyax5043.c$1602$1$385 ==.
                                  11003 ;	..\COMMON\easyax5043.c:1602: axradio_cb_receive.cb.handler = axradio_receive_callback_fwd;
      002B53 90 02 35         [24]11004 	mov	dptr,#(_axradio_cb_receive + 0x0002)
      002B56 74 60            [12]11005 	mov	a,#_axradio_receive_callback_fwd
      002B58 F0               [24]11006 	movx	@dptr,a
      002B59 74 24            [12]11007 	mov	a,#(_axradio_receive_callback_fwd >> 8)
      002B5B A3               [24]11008 	inc	dptr
      002B5C F0               [24]11009 	movx	@dptr,a
                           001FFA 11010 	C$easyax5043.c$1603$1$385 ==.
                                  11011 ;	..\COMMON\easyax5043.c:1603: axradio_cb_receive.st.status = AXRADIO_STAT_RECEIVE;
      002B5D 90 02 37         [24]11012 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      002B60 E4               [12]11013 	clr	a
      002B61 F0               [24]11014 	movx	@dptr,a
                           001FFF 11015 	C$easyax5043.c$1604$1$385 ==.
                                  11016 ;	..\COMMON\easyax5043.c:1604: memset_xdata(axradio_cb_receive.st.rx.mac.remoteaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.remoteaddr));
                                  11017 ;	1-genFromRTrack replaced	mov	_memset_PARM_2,#0x00
      002B62 F5 23            [12]11018 	mov	_memset_PARM_2,a
      002B64 75 24 04         [24]11019 	mov	_memset_PARM_3,#0x04
                                  11020 ;	1-genFromRTrack replaced	mov	(_memset_PARM_3 + 1),#0x00
      002B67 F5 25            [12]11021 	mov	(_memset_PARM_3 + 1),a
      002B69 90 02 47         [24]11022 	mov	dptr,#(_axradio_cb_receive + 0x0014)
      002B6C 75 F0 00         [24]11023 	mov	b,#0x00
      002B6F 12 46 2E         [24]11024 	lcall	_memset
                           00200F 11025 	C$easyax5043.c$1605$1$385 ==.
                                  11026 ;	..\COMMON\easyax5043.c:1605: memset_xdata(axradio_cb_receive.st.rx.mac.localaddr, 0, sizeof(axradio_cb_receive.st.rx.mac.localaddr));
      002B72 75 23 00         [24]11027 	mov	_memset_PARM_2,#0x00
      002B75 75 24 04         [24]11028 	mov	_memset_PARM_3,#0x04
      002B78 75 25 00         [24]11029 	mov	(_memset_PARM_3 + 1),#0x00
      002B7B 90 02 4B         [24]11030 	mov	dptr,#(_axradio_cb_receive + 0x0018)
      002B7E 75 F0 00         [24]11031 	mov	b,#0x00
      002B81 12 46 2E         [24]11032 	lcall	_memset
                           002021 11033 	C$easyax5043.c$1606$1$385 ==.
                                  11034 ;	..\COMMON\easyax5043.c:1606: axradio_cb_receivesfd.cb.handler = axradio_callback_fwd;
      002B84 90 02 57         [24]11035 	mov	dptr,#(_axradio_cb_receivesfd + 0x0002)
      002B87 74 4D            [12]11036 	mov	a,#_axradio_callback_fwd
      002B89 F0               [24]11037 	movx	@dptr,a
      002B8A 74 24            [12]11038 	mov	a,#(_axradio_callback_fwd >> 8)
      002B8C A3               [24]11039 	inc	dptr
      002B8D F0               [24]11040 	movx	@dptr,a
                           00202B 11041 	C$easyax5043.c$1607$1$385 ==.
                                  11042 ;	..\COMMON\easyax5043.c:1607: axradio_cb_receivesfd.st.status = AXRADIO_STAT_RECEIVESFD;
      002B8E 90 02 59         [24]11043 	mov	dptr,#(_axradio_cb_receivesfd + 0x0004)
      002B91 74 01            [12]11044 	mov	a,#0x01
      002B93 F0               [24]11045 	movx	@dptr,a
                           002031 11046 	C$easyax5043.c$1608$1$385 ==.
                                  11047 ;	..\COMMON\easyax5043.c:1608: axradio_cb_channelstate.cb.handler = axradio_callback_fwd;
      002B94 90 02 61         [24]11048 	mov	dptr,#(_axradio_cb_channelstate + 0x0002)
      002B97 74 4D            [12]11049 	mov	a,#_axradio_callback_fwd
      002B99 F0               [24]11050 	movx	@dptr,a
      002B9A 74 24            [12]11051 	mov	a,#(_axradio_callback_fwd >> 8)
      002B9C A3               [24]11052 	inc	dptr
      002B9D F0               [24]11053 	movx	@dptr,a
                           00203B 11054 	C$easyax5043.c$1609$1$385 ==.
                                  11055 ;	..\COMMON\easyax5043.c:1609: axradio_cb_channelstate.st.status = AXRADIO_STAT_CHANNELSTATE;
      002B9E 90 02 63         [24]11056 	mov	dptr,#(_axradio_cb_channelstate + 0x0004)
      002BA1 74 02            [12]11057 	mov	a,#0x02
      002BA3 F0               [24]11058 	movx	@dptr,a
                           002041 11059 	C$easyax5043.c$1610$1$385 ==.
                                  11060 ;	..\COMMON\easyax5043.c:1610: axradio_cb_transmitstart.cb.handler = axradio_callback_fwd;
      002BA4 90 02 6E         [24]11061 	mov	dptr,#(_axradio_cb_transmitstart + 0x0002)
      002BA7 74 4D            [12]11062 	mov	a,#_axradio_callback_fwd
      002BA9 F0               [24]11063 	movx	@dptr,a
      002BAA 74 24            [12]11064 	mov	a,#(_axradio_callback_fwd >> 8)
      002BAC A3               [24]11065 	inc	dptr
      002BAD F0               [24]11066 	movx	@dptr,a
                           00204B 11067 	C$easyax5043.c$1611$1$385 ==.
                                  11068 ;	..\COMMON\easyax5043.c:1611: axradio_cb_transmitstart.st.status = AXRADIO_STAT_TRANSMITSTART;
      002BAE 90 02 70         [24]11069 	mov	dptr,#(_axradio_cb_transmitstart + 0x0004)
      002BB1 74 03            [12]11070 	mov	a,#0x03
      002BB3 F0               [24]11071 	movx	@dptr,a
                           002051 11072 	C$easyax5043.c$1612$1$385 ==.
                                  11073 ;	..\COMMON\easyax5043.c:1612: axradio_cb_transmitend.cb.handler = axradio_callback_fwd;
      002BB4 90 02 78         [24]11074 	mov	dptr,#(_axradio_cb_transmitend + 0x0002)
      002BB7 74 4D            [12]11075 	mov	a,#_axradio_callback_fwd
      002BB9 F0               [24]11076 	movx	@dptr,a
      002BBA 74 24            [12]11077 	mov	a,#(_axradio_callback_fwd >> 8)
      002BBC A3               [24]11078 	inc	dptr
      002BBD F0               [24]11079 	movx	@dptr,a
                           00205B 11080 	C$easyax5043.c$1613$1$385 ==.
                                  11081 ;	..\COMMON\easyax5043.c:1613: axradio_cb_transmitend.st.status = AXRADIO_STAT_TRANSMITEND;
      002BBE 90 02 7A         [24]11082 	mov	dptr,#(_axradio_cb_transmitend + 0x0004)
      002BC1 74 04            [12]11083 	mov	a,#0x04
      002BC3 F0               [24]11084 	movx	@dptr,a
                           002061 11085 	C$easyax5043.c$1614$1$385 ==.
                                  11086 ;	..\COMMON\easyax5043.c:1614: axradio_cb_transmitdata.cb.handler = axradio_callback_fwd;
      002BC4 90 02 82         [24]11087 	mov	dptr,#(_axradio_cb_transmitdata + 0x0002)
      002BC7 74 4D            [12]11088 	mov	a,#_axradio_callback_fwd
      002BC9 F0               [24]11089 	movx	@dptr,a
      002BCA 74 24            [12]11090 	mov	a,#(_axradio_callback_fwd >> 8)
      002BCC A3               [24]11091 	inc	dptr
      002BCD F0               [24]11092 	movx	@dptr,a
                           00206B 11093 	C$easyax5043.c$1615$1$385 ==.
                                  11094 ;	..\COMMON\easyax5043.c:1615: axradio_cb_transmitdata.st.status = AXRADIO_STAT_TRANSMITDATA;
      002BCE 90 02 84         [24]11095 	mov	dptr,#(_axradio_cb_transmitdata + 0x0004)
      002BD1 74 05            [12]11096 	mov	a,#0x05
      002BD3 F0               [24]11097 	movx	@dptr,a
                           002071 11098 	C$easyax5043.c$1616$1$385 ==.
                                  11099 ;	..\COMMON\easyax5043.c:1616: axradio_timer.handler = axradio_timer_callback;
      002BD4 90 02 8C         [24]11100 	mov	dptr,#(_axradio_timer + 0x0002)
      002BD7 74 F7            [12]11101 	mov	a,#_axradio_timer_callback
      002BD9 F0               [24]11102 	movx	@dptr,a
      002BDA 74 1B            [12]11103 	mov	a,#(_axradio_timer_callback >> 8)
      002BDC A3               [24]11104 	inc	dptr
      002BDD F0               [24]11105 	movx	@dptr,a
                           00207B 11106 	C$easyax5043.c$1617$1$385 ==.
                                  11107 ;	..\COMMON\easyax5043.c:1617: axradio_curchannel = 0;
      002BDE 90 00 0A         [24]11108 	mov	dptr,#_axradio_curchannel
      002BE1 E4               [12]11109 	clr	a
      002BE2 F0               [24]11110 	movx	@dptr,a
                           002080 11111 	C$easyax5043.c$1618$1$385 ==.
                                  11112 ;	..\COMMON\easyax5043.c:1618: axradio_curfreqoffset = 0;
      002BE3 90 00 0B         [24]11113 	mov	dptr,#_axradio_curfreqoffset
      002BE6 F0               [24]11114 	movx	@dptr,a
      002BE7 A3               [24]11115 	inc	dptr
      002BE8 F0               [24]11116 	movx	@dptr,a
      002BE9 A3               [24]11117 	inc	dptr
      002BEA F0               [24]11118 	movx	@dptr,a
      002BEB A3               [24]11119 	inc	dptr
      002BEC F0               [24]11120 	movx	@dptr,a
                           00208A 11121 	C$easyax5043.c$1619$1$385 ==.
                                  11122 ;	..\COMMON\easyax5043.c:1619: IE_4 = 0;
      002BED C2 AC            [12]11123 	clr	_IE_4
                           00208C 11124 	C$easyax5043.c$1620$1$385 ==.
                                  11125 ;	..\COMMON\easyax5043.c:1620: axradio_trxstate = trxstate_off;
      002BEF 75 09 00         [24]11126 	mov	_axradio_trxstate,#0x00
                           00208F 11127 	C$easyax5043.c$1621$1$385 ==.
                                  11128 ;	..\COMMON\easyax5043.c:1621: if (ax5043_reset())
      002BF2 12 40 C7         [24]11129 	lcall	_ax5043_reset
      002BF5 E5 82            [12]11130 	mov	a,dpl
      002BF7 60 06            [24]11131 	jz	00102$
                           002096 11132 	C$easyax5043.c$1622$1$385 ==.
                                  11133 ;	..\COMMON\easyax5043.c:1622: return AXRADIO_ERR_NOCHIP;
      002BF9 75 82 05         [24]11134 	mov	dpl,#0x05
      002BFC 02 30 30         [24]11135 	ljmp	00158$
      002BFF                      11136 00102$:
                           00209C 11137 	C$easyax5043.c$1623$1$385 ==.
                                  11138 ;	..\COMMON\easyax5043.c:1623: ax5043_init_registers();
      002BFF 12 19 A9         [24]11139 	lcall	_ax5043_init_registers
                           00209F 11140 	C$easyax5043.c$1624$1$385 ==.
                                  11141 ;	..\COMMON\easyax5043.c:1624: ax5043_set_registers_tx();
      002C02 12 06 0E         [24]11142 	lcall	_ax5043_set_registers_tx
                           0020A2 11143 	C$easyax5043.c$1625$1$385 ==.
                                  11144 ;	..\COMMON\easyax5043.c:1625: AX5043_PLLLOOP = 0x09; // default 100kHz loop BW for ranging
      002C05 90 40 30         [24]11145 	mov	dptr,#_AX5043_PLLLOOP
      002C08 74 09            [12]11146 	mov	a,#0x09
      002C0A F0               [24]11147 	movx	@dptr,a
                           0020A8 11148 	C$easyax5043.c$1626$1$385 ==.
                                  11149 ;	..\COMMON\easyax5043.c:1626: AX5043_PLLCPI = 0x08;
      002C0B 90 40 31         [24]11150 	mov	dptr,#_AX5043_PLLCPI
      002C0E 14               [12]11151 	dec	a
      002C0F F0               [24]11152 	movx	@dptr,a
                           0020AD 11153 	C$easyax5043.c$1628$1$385 ==.
                                  11154 ;	..\COMMON\easyax5043.c:1628: IE_4 = 1;
      002C10 D2 AC            [12]11155 	setb	_IE_4
                           0020AF 11156 	C$easyax5043.c$1630$1$385 ==.
                                  11157 ;	..\COMMON\easyax5043.c:1630: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
      002C12 90 40 02         [24]11158 	mov	dptr,#_AX5043_PWRMODE
      002C15 74 05            [12]11159 	mov	a,#0x05
      002C17 F0               [24]11160 	movx	@dptr,a
                           0020B5 11161 	C$easyax5043.c$1631$1$385 ==.
                                  11162 ;	..\COMMON\easyax5043.c:1631: AX5043_MODULATION = 0x08;
      002C18 90 40 10         [24]11163 	mov	dptr,#_AX5043_MODULATION
      002C1B 74 08            [12]11164 	mov	a,#0x08
      002C1D F0               [24]11165 	movx	@dptr,a
                           0020BB 11166 	C$easyax5043.c$1632$1$385 ==.
                                  11167 ;	..\COMMON\easyax5043.c:1632: AX5043_FSKDEV2 = 0x00;
      002C1E 90 41 61         [24]11168 	mov	dptr,#_AX5043_FSKDEV2
      002C21 E4               [12]11169 	clr	a
      002C22 F0               [24]11170 	movx	@dptr,a
                           0020C0 11171 	C$easyax5043.c$1633$1$385 ==.
                                  11172 ;	..\COMMON\easyax5043.c:1633: AX5043_FSKDEV1 = 0x00;
      002C23 90 41 62         [24]11173 	mov	dptr,#_AX5043_FSKDEV1
      002C26 F0               [24]11174 	movx	@dptr,a
                           0020C4 11175 	C$easyax5043.c$1634$1$385 ==.
                                  11176 ;	..\COMMON\easyax5043.c:1634: AX5043_FSKDEV0 = 0x00;
      002C27 90 41 63         [24]11177 	mov	dptr,#_AX5043_FSKDEV0
      002C2A F0               [24]11178 	movx	@dptr,a
                           0020C8 11179 	C$easyax5043.c$1635$1$385 ==.
                                  11180 ;	..\COMMON\easyax5043.c:1635: axradio_wait_for_xtal();
      002C2B 12 18 4E         [24]11181 	lcall	_axradio_wait_for_xtal
                           0020CB 11182 	C$easyax5043.c$1636$3$387 ==.
                                  11183 ;	..\COMMON\easyax5043.c:1636: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002C2E 7F 00            [12]11184 	mov	r7,#0x00
      002C30                      11185 00149$:
      002C30 90 55 B5         [24]11186 	mov	dptr,#_axradio_phy_nrchannels
      002C33 E4               [12]11187 	clr	a
      002C34 93               [24]11188 	movc	a,@a+dptr
      002C35 FE               [12]11189 	mov	r6,a
      002C36 C3               [12]11190 	clr	c
      002C37 EF               [12]11191 	mov	a,r7
      002C38 9E               [12]11192 	subb	a,r6
      002C39 40 03            [24]11193 	jc	00266$
      002C3B 02 2D 03         [24]11194 	ljmp	00113$
      002C3E                      11195 00266$:
                           0020DB 11196 	C$easyax5043.c$1639$3$387 ==.
                                  11197 ;	..\COMMON\easyax5043.c:1639: uint32_t __autodata f = axradio_phy_chanfreq[i];
      002C3E EF               [12]11198 	mov	a,r7
      002C3F 75 F0 04         [24]11199 	mov	b,#0x04
      002C42 A4               [48]11200 	mul	ab
      002C43 24 B6            [12]11201 	add	a,#_axradio_phy_chanfreq
      002C45 F5 82            [12]11202 	mov	dpl,a
      002C47 74 55            [12]11203 	mov	a,#(_axradio_phy_chanfreq >> 8)
      002C49 35 F0            [12]11204 	addc	a,b
      002C4B F5 83            [12]11205 	mov	dph,a
      002C4D E4               [12]11206 	clr	a
      002C4E 93               [24]11207 	movc	a,@a+dptr
      002C4F FB               [12]11208 	mov	r3,a
      002C50 A3               [24]11209 	inc	dptr
      002C51 E4               [12]11210 	clr	a
      002C52 93               [24]11211 	movc	a,@a+dptr
      002C53 FC               [12]11212 	mov	r4,a
      002C54 A3               [24]11213 	inc	dptr
      002C55 E4               [12]11214 	clr	a
      002C56 93               [24]11215 	movc	a,@a+dptr
      002C57 FD               [12]11216 	mov	r5,a
      002C58 A3               [24]11217 	inc	dptr
      002C59 E4               [12]11218 	clr	a
      002C5A 93               [24]11219 	movc	a,@a+dptr
      002C5B FE               [12]11220 	mov	r6,a
                           0020F9 11221 	C$easyax5043.c$1640$3$387 ==.
                                  11222 ;	..\COMMON\easyax5043.c:1640: AX5043_FREQA0 = f;
      002C5C 90 40 37         [24]11223 	mov	dptr,#_AX5043_FREQA0
      002C5F EB               [12]11224 	mov	a,r3
      002C60 F0               [24]11225 	movx	@dptr,a
                           0020FE 11226 	C$easyax5043.c$1641$3$387 ==.
                                  11227 ;	..\COMMON\easyax5043.c:1641: AX5043_FREQA1 = f >> 8;
      002C61 90 40 36         [24]11228 	mov	dptr,#_AX5043_FREQA1
      002C64 EC               [12]11229 	mov	a,r4
      002C65 F0               [24]11230 	movx	@dptr,a
                           002103 11231 	C$easyax5043.c$1642$3$387 ==.
                                  11232 ;	..\COMMON\easyax5043.c:1642: AX5043_FREQA2 = f >> 16;
      002C66 90 40 35         [24]11233 	mov	dptr,#_AX5043_FREQA2
      002C69 ED               [12]11234 	mov	a,r5
      002C6A F0               [24]11235 	movx	@dptr,a
                           002108 11236 	C$easyax5043.c$1643$3$387 ==.
                                  11237 ;	..\COMMON\easyax5043.c:1643: AX5043_FREQA3 = f >> 24;
      002C6B 90 40 34         [24]11238 	mov	dptr,#_AX5043_FREQA3
      002C6E EE               [12]11239 	mov	a,r6
      002C6F F0               [24]11240 	movx	@dptr,a
                           00210D 11241 	C$easyax5043.c$1645$2$386 ==.
                                  11242 ;	..\COMMON\easyax5043.c:1645: iesave = IE & 0x80;
      002C70 74 80            [12]11243 	mov	a,#0x80
      002C72 55 A8            [12]11244 	anl	a,_IE
      002C74 FE               [12]11245 	mov	r6,a
                           002112 11246 	C$easyax5043.c$1646$2$386 ==.
                                  11247 ;	..\COMMON\easyax5043.c:1646: EA = 0;
      002C75 C2 AF            [12]11248 	clr	_EA
                           002114 11249 	C$easyax5043.c$1647$2$386 ==.
                                  11250 ;	..\COMMON\easyax5043.c:1647: axradio_trxstate = trxstate_pll_ranging;
      002C77 75 09 05         [24]11251 	mov	_axradio_trxstate,#0x05
                           002117 11252 	C$easyax5043.c$1648$2$386 ==.
                                  11253 ;	..\COMMON\easyax5043.c:1648: AX5043_IRQMASK1 = 0x10; // enable pll autoranging done interrupt
      002C7A 90 40 06         [24]11254 	mov	dptr,#_AX5043_IRQMASK1
      002C7D 74 10            [12]11255 	mov	a,#0x10
      002C7F F0               [24]11256 	movx	@dptr,a
                           00211D 11257 	C$easyax5043.c$1651$3$388 ==.
                                  11258 ;	..\COMMON\easyax5043.c:1651: if( !(axradio_phy_chanpllrnginit[0] & 0xF0) ) { // start values for ranging available
      002C80 90 55 BA         [24]11259 	mov	dptr,#_axradio_phy_chanpllrnginit
      002C83 E4               [12]11260 	clr	a
      002C84 93               [24]11261 	movc	a,@a+dptr
      002C85 FD               [12]11262 	mov	r5,a
      002C86 54 F0            [12]11263 	anl	a,#0xf0
      002C88 70 0B            [24]11264 	jnz	00108$
                           002127 11265 	C$easyax5043.c$1652$4$389 ==.
                                  11266 ;	..\COMMON\easyax5043.c:1652: r = axradio_phy_chanpllrnginit[i] | 0x10;
      002C8A EF               [12]11267 	mov	a,r7
      002C8B 90 55 BA         [24]11268 	mov	dptr,#_axradio_phy_chanpllrnginit
      002C8E 93               [24]11269 	movc	a,@a+dptr
      002C8F FD               [12]11270 	mov	r5,a
      002C90 43 05 10         [24]11271 	orl	ar5,#0x10
      002C93 80 25            [24]11272 	sjmp	00109$
      002C95                      11273 00108$:
                           002132 11274 	C$easyax5043.c$1655$4$390 ==.
                                  11275 ;	..\COMMON\easyax5043.c:1655: r = 0x18;
      002C95 7D 18            [12]11276 	mov	r5,#0x18
                           002134 11277 	C$easyax5043.c$1656$4$390 ==.
                                  11278 ;	..\COMMON\easyax5043.c:1656: if (i) {
      002C97 EF               [12]11279 	mov	a,r7
      002C98 60 20            [24]11280 	jz	00109$
                           002137 11281 	C$easyax5043.c$1657$5$391 ==.
                                  11282 ;	..\COMMON\easyax5043.c:1657: r = axradio_phy_chanpllrng[i - 1];
      002C9A 8F 03            [24]11283 	mov	ar3,r7
      002C9C 7C 00            [12]11284 	mov	r4,#0x00
      002C9E 1B               [12]11285 	dec	r3
      002C9F BB FF 01         [24]11286 	cjne	r3,#0xff,00270$
      002CA2 1C               [12]11287 	dec	r4
      002CA3                      11288 00270$:
      002CA3 EB               [12]11289 	mov	a,r3
      002CA4 24 01            [12]11290 	add	a,#_axradio_phy_chanpllrng
      002CA6 F5 82            [12]11291 	mov	dpl,a
      002CA8 EC               [12]11292 	mov	a,r4
      002CA9 34 00            [12]11293 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      002CAB F5 83            [12]11294 	mov	dph,a
      002CAD E0               [24]11295 	movx	a,@dptr
                           00214B 11296 	C$easyax5043.c$1658$5$391 ==.
                                  11297 ;	..\COMMON\easyax5043.c:1658: if (r & 0x20)
      002CAE FD               [12]11298 	mov	r5,a
      002CAF 30 E5 02         [24]11299 	jnb	acc.5,00104$
                           00214F 11300 	C$easyax5043.c$1659$5$391 ==.
                                  11301 ;	..\COMMON\easyax5043.c:1659: r = 0x08;
      002CB2 7D 08            [12]11302 	mov	r5,#0x08
      002CB4                      11303 00104$:
                           002151 11304 	C$easyax5043.c$1660$5$391 ==.
                                  11305 ;	..\COMMON\easyax5043.c:1660: r &= 0x0F;
      002CB4 53 05 0F         [24]11306 	anl	ar5,#0x0f
                           002154 11307 	C$easyax5043.c$1661$5$391 ==.
                                  11308 ;	..\COMMON\easyax5043.c:1661: r |= 0x10;
      002CB7 43 05 10         [24]11309 	orl	ar5,#0x10
      002CBA                      11310 00109$:
                           002157 11311 	C$easyax5043.c$1664$3$388 ==.
                                  11312 ;	..\COMMON\easyax5043.c:1664: AX5043_PLLRANGINGA = r; // init ranging process starting from "range"
      002CBA 90 40 33         [24]11313 	mov	dptr,#_AX5043_PLLRANGINGA
      002CBD ED               [12]11314 	mov	a,r5
      002CBE F0               [24]11315 	movx	@dptr,a
      002CBF                      11316 00146$:
                           00215C 11317 	C$easyax5043.c$1667$3$392 ==.
                                  11318 ;	..\COMMON\easyax5043.c:1667: EA = 0;
      002CBF C2 AF            [12]11319 	clr	_EA
                           00215E 11320 	C$easyax5043.c$1668$3$392 ==.
                                  11321 ;	..\COMMON\easyax5043.c:1668: if (axradio_trxstate == trxstate_pll_ranging_done)
      002CC1 74 06            [12]11322 	mov	a,#0x06
      002CC3 B5 09 02         [24]11323 	cjne	a,_axradio_trxstate,00272$
      002CC6 80 1A            [24]11324 	sjmp	00112$
      002CC8                      11325 00272$:
                           002165 11326 	C$easyax5043.c$1670$3$392 ==.
                                  11327 ;	..\COMMON\easyax5043.c:1670: wtimer_idle(WTFLAG_CANSTANDBY);
      002CC8 75 82 02         [24]11328 	mov	dpl,#0x02
      002CCB C0 07            [24]11329 	push	ar7
      002CCD C0 06            [24]11330 	push	ar6
      002CCF 12 45 AA         [24]11331 	lcall	_wtimer_idle
      002CD2 D0 06            [24]11332 	pop	ar6
                           002171 11333 	C$easyax5043.c$1671$3$392 ==.
                                  11334 ;	..\COMMON\easyax5043.c:1671: IE |= iesave;
      002CD4 EE               [12]11335 	mov	a,r6
      002CD5 42 A8            [12]11336 	orl	_IE,a
                           002174 11337 	C$easyax5043.c$1672$3$392 ==.
                                  11338 ;	..\COMMON\easyax5043.c:1672: wtimer_runcallbacks();
      002CD7 C0 06            [24]11339 	push	ar6
      002CD9 12 45 29         [24]11340 	lcall	_wtimer_runcallbacks
      002CDC D0 06            [24]11341 	pop	ar6
      002CDE D0 07            [24]11342 	pop	ar7
      002CE0 80 DD            [24]11343 	sjmp	00146$
      002CE2                      11344 00112$:
                           00217F 11345 	C$easyax5043.c$1674$2$386 ==.
                                  11346 ;	..\COMMON\easyax5043.c:1674: axradio_trxstate = trxstate_off;
      002CE2 75 09 00         [24]11347 	mov	_axradio_trxstate,#0x00
                           002182 11348 	C$easyax5043.c$1675$2$386 ==.
                                  11349 ;	..\COMMON\easyax5043.c:1675: AX5043_IRQMASK1 = 0x00;
      002CE5 90 40 06         [24]11350 	mov	dptr,#_AX5043_IRQMASK1
      002CE8 E4               [12]11351 	clr	a
      002CE9 F0               [24]11352 	movx	@dptr,a
                           002187 11353 	C$easyax5043.c$1676$2$386 ==.
                                  11354 ;	..\COMMON\easyax5043.c:1676: axradio_phy_chanpllrng[i] = AX5043_PLLRANGINGA;
      002CEA EF               [12]11355 	mov	a,r7
      002CEB 24 01            [12]11356 	add	a,#_axradio_phy_chanpllrng
      002CED FC               [12]11357 	mov	r4,a
      002CEE E4               [12]11358 	clr	a
      002CEF 34 00            [12]11359 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      002CF1 FD               [12]11360 	mov	r5,a
      002CF2 90 40 33         [24]11361 	mov	dptr,#_AX5043_PLLRANGINGA
      002CF5 E0               [24]11362 	movx	a,@dptr
      002CF6 FB               [12]11363 	mov	r3,a
      002CF7 8C 82            [24]11364 	mov	dpl,r4
      002CF9 8D 83            [24]11365 	mov	dph,r5
      002CFB F0               [24]11366 	movx	@dptr,a
                           002199 11367 	C$easyax5043.c$1677$2$386 ==.
                                  11368 ;	..\COMMON\easyax5043.c:1677: IE |= iesave;
      002CFC EE               [12]11369 	mov	a,r6
      002CFD 42 A8            [12]11370 	orl	_IE,a
                           00219C 11371 	C$easyax5043.c$1636$1$385 ==.
                                  11372 ;	..\COMMON\easyax5043.c:1636: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002CFF 0F               [12]11373 	inc	r7
      002D00 02 2C 30         [24]11374 	ljmp	00149$
      002D03                      11375 00113$:
                           0021A0 11376 	C$easyax5043.c$1680$1$385 ==.
                                  11377 ;	..\COMMON\easyax5043.c:1680: if (axradio_phy_vcocalib) {
      002D03 90 55 BC         [24]11378 	mov	dptr,#_axradio_phy_vcocalib
      002D06 E4               [12]11379 	clr	a
      002D07 93               [24]11380 	movc	a,@a+dptr
      002D08 70 03            [24]11381 	jnz	00273$
      002D0A 02 2F C9         [24]11382 	ljmp	00142$
      002D0D                      11383 00273$:
                           0021AA 11384 	C$easyax5043.c$1681$2$393 ==.
                                  11385 ;	..\COMMON\easyax5043.c:1681: ax5043_set_registers_tx();
      002D0D 12 06 0E         [24]11386 	lcall	_ax5043_set_registers_tx
                           0021AD 11387 	C$easyax5043.c$1682$2$393 ==.
                                  11388 ;	..\COMMON\easyax5043.c:1682: AX5043_MODULATION = 0x08;
      002D10 90 40 10         [24]11389 	mov	dptr,#_AX5043_MODULATION
      002D13 74 08            [12]11390 	mov	a,#0x08
      002D15 F0               [24]11391 	movx	@dptr,a
                           0021B3 11392 	C$easyax5043.c$1683$2$393 ==.
                                  11393 ;	..\COMMON\easyax5043.c:1683: AX5043_FSKDEV2 = 0x00;
      002D16 90 41 61         [24]11394 	mov	dptr,#_AX5043_FSKDEV2
      002D19 E4               [12]11395 	clr	a
      002D1A F0               [24]11396 	movx	@dptr,a
                           0021B8 11397 	C$easyax5043.c$1684$2$393 ==.
                                  11398 ;	..\COMMON\easyax5043.c:1684: AX5043_FSKDEV1 = 0x00;
      002D1B 90 41 62         [24]11399 	mov	dptr,#_AX5043_FSKDEV1
      002D1E F0               [24]11400 	movx	@dptr,a
                           0021BC 11401 	C$easyax5043.c$1685$2$393 ==.
                                  11402 ;	..\COMMON\easyax5043.c:1685: AX5043_FSKDEV0 = 0x00;
      002D1F 90 41 63         [24]11403 	mov	dptr,#_AX5043_FSKDEV0
      002D22 F0               [24]11404 	movx	@dptr,a
                           0021C0 11405 	C$easyax5043.c$1686$2$393 ==.
                                  11406 ;	..\COMMON\easyax5043.c:1686: AX5043_PLLLOOP |= 0x04;
      002D23 90 40 30         [24]11407 	mov	dptr,#_AX5043_PLLLOOP
      002D26 E0               [24]11408 	movx	a,@dptr
      002D27 FF               [12]11409 	mov	r7,a
      002D28 74 04            [12]11410 	mov	a,#0x04
      002D2A 4F               [12]11411 	orl	a,r7
      002D2B F0               [24]11412 	movx	@dptr,a
                           0021C9 11413 	C$easyax5043.c$1688$3$393 ==.
                                  11414 ;	..\COMMON\easyax5043.c:1688: uint8_t x = AX5043_0xF35;
      002D2C 90 4F 35         [24]11415 	mov	dptr,#_AX5043_0xF35
      002D2F E0               [24]11416 	movx	a,@dptr
                           0021CD 11417 	C$easyax5043.c$1689$3$394 ==.
                                  11418 ;	..\COMMON\easyax5043.c:1689: x |= 0x80;
                           0021CD 11419 	C$easyax5043.c$1690$3$394 ==.
                                  11420 ;	..\COMMON\easyax5043.c:1690: if (2 & (uint8_t)~x)
      002D30 44 80            [12]11421 	orl	a,#0x80
      002D32 FF               [12]11422 	mov	r7,a
      002D33 F4               [12]11423 	cpl	a
      002D34 FE               [12]11424 	mov	r6,a
      002D35 30 E1 01         [24]11425 	jnb	acc.1,00115$
                           0021D5 11426 	C$easyax5043.c$1691$3$394 ==.
                                  11427 ;	..\COMMON\easyax5043.c:1691: ++x;
      002D38 0F               [12]11428 	inc	r7
      002D39                      11429 00115$:
                           0021D6 11430 	C$easyax5043.c$1692$3$394 ==.
                                  11431 ;	..\COMMON\easyax5043.c:1692: AX5043_0xF35 = x;
      002D39 90 4F 35         [24]11432 	mov	dptr,#_AX5043_0xF35
      002D3C EF               [12]11433 	mov	a,r7
      002D3D F0               [24]11434 	movx	@dptr,a
                           0021DB 11435 	C$easyax5043.c$1694$2$393 ==.
                                  11436 ;	..\COMMON\easyax5043.c:1694: AX5043_PWRMODE = AX5043_PWRSTATE_SYNTH_TX;
      002D3E 90 40 02         [24]11437 	mov	dptr,#_AX5043_PWRMODE
      002D41 74 0C            [12]11438 	mov	a,#0x0c
      002D43 F0               [24]11439 	movx	@dptr,a
                           0021E1 11440 	C$easyax5043.c$1696$3$393 ==.
                                  11441 ;	..\COMMON\easyax5043.c:1696: uint8_t __autodata vcoisave = AX5043_PLLVCOI;
      002D44 90 41 80         [24]11442 	mov	dptr,#_AX5043_PLLVCOI
      002D47 E0               [24]11443 	movx	a,@dptr
      002D48 F5 0C            [12]11444 	mov	_axradio_init_vcoisave_3_395,a
                           0021E7 11445 	C$easyax5043.c$1697$3$393 ==.
                                  11446 ;	..\COMMON\easyax5043.c:1697: uint8_t j = 2;
      002D4A 7E 02            [12]11447 	mov	r6,#0x02
                           0021E9 11448 	C$easyax5043.c$1698$5$398 ==.
                                  11449 ;	..\COMMON\easyax5043.c:1698: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002D4C 7D 00            [12]11450 	mov	r5,#0x00
      002D4E                      11451 00152$:
      002D4E 90 55 B5         [24]11452 	mov	dptr,#_axradio_phy_nrchannels
      002D51 E4               [12]11453 	clr	a
      002D52 93               [24]11454 	movc	a,@a+dptr
      002D53 FC               [12]11455 	mov	r4,a
      002D54 C3               [12]11456 	clr	c
      002D55 ED               [12]11457 	mov	a,r5
      002D56 9C               [12]11458 	subb	a,r4
      002D57 40 03            [24]11459 	jc	00275$
      002D59 02 2E 4C         [24]11460 	ljmp	00127$
      002D5C                      11461 00275$:
                           0021F9 11462 	C$easyax5043.c$1699$4$396 ==.
                                  11463 ;	..\COMMON\easyax5043.c:1699: axradio_phy_chanvcoi[i] = 0;
      002D5C ED               [12]11464 	mov	a,r5
      002D5D 24 02            [12]11465 	add	a,#_axradio_phy_chanvcoi
      002D5F F5 82            [12]11466 	mov	dpl,a
      002D61 E4               [12]11467 	clr	a
      002D62 34 00            [12]11468 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002D64 F5 83            [12]11469 	mov	dph,a
      002D66 E4               [12]11470 	clr	a
      002D67 F0               [24]11471 	movx	@dptr,a
                           002205 11472 	C$easyax5043.c$1700$4$396 ==.
                                  11473 ;	..\COMMON\easyax5043.c:1700: if (axradio_phy_chanpllrng[i] & 0x20)
      002D68 ED               [12]11474 	mov	a,r5
      002D69 24 01            [12]11475 	add	a,#_axradio_phy_chanpllrng
      002D6B FB               [12]11476 	mov	r3,a
      002D6C E4               [12]11477 	clr	a
      002D6D 34 00            [12]11478 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      002D6F FC               [12]11479 	mov	r4,a
      002D70 8B 82            [24]11480 	mov	dpl,r3
      002D72 8C 83            [24]11481 	mov	dph,r4
      002D74 E0               [24]11482 	movx	a,@dptr
      002D75 FA               [12]11483 	mov	r2,a
      002D76 30 E5 03         [24]11484 	jnb	acc.5,00276$
      002D79 02 2E 48         [24]11485 	ljmp	00126$
      002D7C                      11486 00276$:
                           002219 11487 	C$easyax5043.c$1702$4$396 ==.
                                  11488 ;	..\COMMON\easyax5043.c:1702: AX5043_PLLRANGINGA = axradio_phy_chanpllrng[i] & 0x0F;
      002D7C 90 40 33         [24]11489 	mov	dptr,#_AX5043_PLLRANGINGA
      002D7F 74 0F            [12]11490 	mov	a,#0x0f
      002D81 5A               [12]11491 	anl	a,r2
      002D82 F0               [24]11492 	movx	@dptr,a
                           002220 11493 	C$easyax5043.c$1704$5$397 ==.
                                  11494 ;	..\COMMON\easyax5043.c:1704: uint32_t __autodata f = axradio_phy_chanfreq[i];
      002D83 ED               [12]11495 	mov	a,r5
      002D84 75 F0 04         [24]11496 	mov	b,#0x04
      002D87 A4               [48]11497 	mul	ab
      002D88 24 B6            [12]11498 	add	a,#_axradio_phy_chanfreq
      002D8A F5 82            [12]11499 	mov	dpl,a
      002D8C 74 55            [12]11500 	mov	a,#(_axradio_phy_chanfreq >> 8)
      002D8E 35 F0            [12]11501 	addc	a,b
      002D90 F5 83            [12]11502 	mov	dph,a
      002D92 E4               [12]11503 	clr	a
      002D93 93               [24]11504 	movc	a,@a+dptr
      002D94 F8               [12]11505 	mov	r0,a
      002D95 A3               [24]11506 	inc	dptr
      002D96 E4               [12]11507 	clr	a
      002D97 93               [24]11508 	movc	a,@a+dptr
      002D98 F9               [12]11509 	mov	r1,a
      002D99 A3               [24]11510 	inc	dptr
      002D9A E4               [12]11511 	clr	a
      002D9B 93               [24]11512 	movc	a,@a+dptr
      002D9C FA               [12]11513 	mov	r2,a
      002D9D A3               [24]11514 	inc	dptr
      002D9E E4               [12]11515 	clr	a
      002D9F 93               [24]11516 	movc	a,@a+dptr
      002DA0 FF               [12]11517 	mov	r7,a
                           00223E 11518 	C$easyax5043.c$1705$5$397 ==.
                                  11519 ;	..\COMMON\easyax5043.c:1705: AX5043_FREQA0 = f;
      002DA1 90 40 37         [24]11520 	mov	dptr,#_AX5043_FREQA0
      002DA4 E8               [12]11521 	mov	a,r0
      002DA5 F0               [24]11522 	movx	@dptr,a
                           002243 11523 	C$easyax5043.c$1706$5$397 ==.
                                  11524 ;	..\COMMON\easyax5043.c:1706: AX5043_FREQA1 = f >> 8;
      002DA6 90 40 36         [24]11525 	mov	dptr,#_AX5043_FREQA1
      002DA9 E9               [12]11526 	mov	a,r1
      002DAA F0               [24]11527 	movx	@dptr,a
                           002248 11528 	C$easyax5043.c$1707$5$397 ==.
                                  11529 ;	..\COMMON\easyax5043.c:1707: AX5043_FREQA2 = f >> 16;
      002DAB 90 40 35         [24]11530 	mov	dptr,#_AX5043_FREQA2
      002DAE EA               [12]11531 	mov	a,r2
      002DAF F0               [24]11532 	movx	@dptr,a
                           00224D 11533 	C$easyax5043.c$1708$5$397 ==.
                                  11534 ;	..\COMMON\easyax5043.c:1708: AX5043_FREQA3 = f >> 24;
      002DB0 90 40 34         [24]11535 	mov	dptr,#_AX5043_FREQA3
      002DB3 EF               [12]11536 	mov	a,r7
      002DB4 F0               [24]11537 	movx	@dptr,a
                           002252 11538 	C$easyax5043.c$1710$4$396 ==.
                                  11539 ;	..\COMMON\easyax5043.c:1710: do {
      002DB5                      11540 00123$:
                           002252 11541 	C$easyax5043.c$1711$5$398 ==.
                                  11542 ;	..\COMMON\easyax5043.c:1711: if (axradio_phy_chanvcoiinit[0]) {
      002DB5 90 55 BB         [24]11543 	mov	dptr,#_axradio_phy_chanvcoiinit
      002DB8 E4               [12]11544 	clr	a
      002DB9 93               [24]11545 	movc	a,@a+dptr
      002DBA 60 56            [24]11546 	jz	00121$
                           002259 11547 	C$easyax5043.c$1712$6$399 ==.
                                  11548 ;	..\COMMON\easyax5043.c:1712: uint8_t x = axradio_phy_chanvcoiinit[i];
      002DBC ED               [12]11549 	mov	a,r5
      002DBD 90 55 BB         [24]11550 	mov	dptr,#_axradio_phy_chanvcoiinit
      002DC0 93               [24]11551 	movc	a,@a+dptr
      002DC1 FF               [12]11552 	mov	r7,a
                           00225F 11553 	C$easyax5043.c$1713$6$399 ==.
                                  11554 ;	..\COMMON\easyax5043.c:1713: if (!(axradio_phy_chanpllrnginit[0] & 0xF0))
      002DC2 90 55 BA         [24]11555 	mov	dptr,#_axradio_phy_chanpllrnginit
      002DC5 E4               [12]11556 	clr	a
      002DC6 93               [24]11557 	movc	a,@a+dptr
      002DC7 FA               [12]11558 	mov	r2,a
      002DC8 54 F0            [12]11559 	anl	a,#0xf0
      002DCA 70 17            [24]11560 	jnz	00119$
                           002269 11561 	C$easyax5043.c$1714$6$399 ==.
                                  11562 ;	..\COMMON\easyax5043.c:1714: x += (axradio_phy_chanpllrng[i] & 0x0F) - (axradio_phy_chanpllrnginit[i] & 0x0F);
      002DCC 8B 82            [24]11563 	mov	dpl,r3
      002DCE 8C 83            [24]11564 	mov	dph,r4
      002DD0 E0               [24]11565 	movx	a,@dptr
      002DD1 FA               [12]11566 	mov	r2,a
      002DD2 53 02 0F         [24]11567 	anl	ar2,#0x0f
      002DD5 ED               [12]11568 	mov	a,r5
      002DD6 90 55 BA         [24]11569 	mov	dptr,#_axradio_phy_chanpllrnginit
      002DD9 93               [24]11570 	movc	a,@a+dptr
      002DDA F9               [12]11571 	mov	r1,a
      002DDB 74 0F            [12]11572 	mov	a,#0x0f
      002DDD 59               [12]11573 	anl	a,r1
      002DDE D3               [12]11574 	setb	c
      002DDF 9A               [12]11575 	subb	a,r2
      002DE0 F4               [12]11576 	cpl	a
      002DE1 2F               [12]11577 	add	a,r7
      002DE2 FF               [12]11578 	mov	r7,a
      002DE3                      11579 00119$:
                           002280 11580 	C$easyax5043.c$1715$6$399 ==.
                                  11581 ;	..\COMMON\easyax5043.c:1715: axradio_phy_chanvcoi[i] = axradio_adjustvcoi(x);
      002DE3 ED               [12]11582 	mov	a,r5
      002DE4 24 02            [12]11583 	add	a,#_axradio_phy_chanvcoi
      002DE6 F9               [12]11584 	mov	r1,a
      002DE7 E4               [12]11585 	clr	a
      002DE8 34 00            [12]11586 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002DEA FA               [12]11587 	mov	r2,a
      002DEB 8F 82            [24]11588 	mov	dpl,r7
      002DED C0 06            [24]11589 	push	ar6
      002DEF C0 05            [24]11590 	push	ar5
      002DF1 C0 04            [24]11591 	push	ar4
      002DF3 C0 03            [24]11592 	push	ar3
      002DF5 C0 02            [24]11593 	push	ar2
      002DF7 C0 01            [24]11594 	push	ar1
      002DF9 12 29 C4         [24]11595 	lcall	_axradio_adjustvcoi
      002DFC AF 82            [24]11596 	mov	r7,dpl
      002DFE D0 01            [24]11597 	pop	ar1
      002E00 D0 02            [24]11598 	pop	ar2
      002E02 D0 03            [24]11599 	pop	ar3
      002E04 D0 04            [24]11600 	pop	ar4
      002E06 D0 05            [24]11601 	pop	ar5
      002E08 D0 06            [24]11602 	pop	ar6
      002E0A 89 82            [24]11603 	mov	dpl,r1
      002E0C 8A 83            [24]11604 	mov	dph,r2
      002E0E EF               [12]11605 	mov	a,r7
      002E0F F0               [24]11606 	movx	@dptr,a
      002E10 80 2B            [24]11607 	sjmp	00124$
      002E12                      11608 00121$:
                           0022AF 11609 	C$easyax5043.c$1717$6$400 ==.
                                  11610 ;	..\COMMON\easyax5043.c:1717: axradio_phy_chanvcoi[i] = axradio_calvcoi();
      002E12 ED               [12]11611 	mov	a,r5
      002E13 24 02            [12]11612 	add	a,#_axradio_phy_chanvcoi
      002E15 FA               [12]11613 	mov	r2,a
      002E16 E4               [12]11614 	clr	a
      002E17 34 00            [12]11615 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002E19 FF               [12]11616 	mov	r7,a
      002E1A C0 07            [24]11617 	push	ar7
      002E1C C0 06            [24]11618 	push	ar6
      002E1E C0 05            [24]11619 	push	ar5
      002E20 C0 04            [24]11620 	push	ar4
      002E22 C0 03            [24]11621 	push	ar3
      002E24 C0 02            [24]11622 	push	ar2
      002E26 12 2A 97         [24]11623 	lcall	_axradio_calvcoi
      002E29 A9 82            [24]11624 	mov	r1,dpl
      002E2B D0 02            [24]11625 	pop	ar2
      002E2D D0 03            [24]11626 	pop	ar3
      002E2F D0 04            [24]11627 	pop	ar4
      002E31 D0 05            [24]11628 	pop	ar5
      002E33 D0 06            [24]11629 	pop	ar6
      002E35 D0 07            [24]11630 	pop	ar7
      002E37 8A 82            [24]11631 	mov	dpl,r2
      002E39 8F 83            [24]11632 	mov	dph,r7
      002E3B E9               [12]11633 	mov	a,r1
      002E3C F0               [24]11634 	movx	@dptr,a
      002E3D                      11635 00124$:
                           0022DA 11636 	C$easyax5043.c$1719$4$396 ==.
                                  11637 ;	..\COMMON\easyax5043.c:1719: } while (--j);
      002E3D EE               [12]11638 	mov	a,r6
      002E3E 14               [12]11639 	dec	a
      002E3F FF               [12]11640 	mov	r7,a
      002E40 FE               [12]11641 	mov	r6,a
      002E41 60 03            [24]11642 	jz	00280$
      002E43 02 2D B5         [24]11643 	ljmp	00123$
      002E46                      11644 00280$:
                           0022E3 11645 	C$easyax5043.c$1720$4$396 ==.
                                  11646 ;	..\COMMON\easyax5043.c:1720: j = 1;
      002E46 7E 01            [12]11647 	mov	r6,#0x01
      002E48                      11648 00126$:
                           0022E5 11649 	C$easyax5043.c$1698$3$395 ==.
                                  11650 ;	..\COMMON\easyax5043.c:1698: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002E48 0D               [12]11651 	inc	r5
      002E49 02 2D 4E         [24]11652 	ljmp	00152$
      002E4C                      11653 00127$:
                           0022E9 11654 	C$easyax5043.c$1740$3$395 ==.
                                  11655 ;	..\COMMON\easyax5043.c:1740: AX5043_PLLVCOI = vcoisave;
      002E4C 90 41 80         [24]11656 	mov	dptr,#_AX5043_PLLVCOI
      002E4F E5 0C            [12]11657 	mov	a,_axradio_init_vcoisave_3_395
      002E51 F0               [24]11658 	movx	@dptr,a
                           0022EF 11659 	C$easyax5043.c$1743$2$393 ==.
                                  11660 ;	..\COMMON\easyax5043.c:1743: if (DBGLNKSTAT & 0x10) {
      002E52 E5 E2            [12]11661 	mov	a,_DBGLNKSTAT
      002E54 20 E4 03         [24]11662 	jb	acc.4,00281$
      002E57 02 2F C9         [24]11663 	ljmp	00142$
      002E5A                      11664 00281$:
                           0022F7 11665 	C$easyax5043.c$1744$4$402 ==.
                                  11666 ;	..\COMMON\easyax5043.c:1744: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002E5A 7F 00            [12]11667 	mov	r7,#0x00
      002E5C                      11668 00154$:
      002E5C 90 55 B5         [24]11669 	mov	dptr,#_axradio_phy_nrchannels
      002E5F E4               [12]11670 	clr	a
      002E60 93               [24]11671 	movc	a,@a+dptr
      002E61 FE               [12]11672 	mov	r6,a
      002E62 C3               [12]11673 	clr	c
      002E63 EF               [12]11674 	mov	a,r7
      002E64 9E               [12]11675 	subb	a,r6
      002E65 40 03            [24]11676 	jc	00282$
      002E67 02 2F C9         [24]11677 	ljmp	00142$
      002E6A                      11678 00282$:
                           002307 11679 	C$easyax5043.c$1745$4$402 ==.
                                  11680 ;	..\COMMON\easyax5043.c:1745: uint8_t chg = ((axradio_phy_chanpllrnginit[0] & 0xF0) || axradio_phy_chanpllrnginit[i] != axradio_phy_chanpllrng[i])
      002E6A 90 55 BA         [24]11681 	mov	dptr,#_axradio_phy_chanpllrnginit
      002E6D E4               [12]11682 	clr	a
      002E6E 93               [24]11683 	movc	a,@a+dptr
      002E6F FE               [12]11684 	mov	r6,a
      002E70 54 F0            [12]11685 	anl	a,#0xf0
      002E72 70 40            [24]11686 	jnz	00161$
      002E74 EF               [12]11687 	mov	a,r7
      002E75 90 55 BA         [24]11688 	mov	dptr,#_axradio_phy_chanpllrnginit
      002E78 93               [24]11689 	movc	a,@a+dptr
      002E79 FE               [12]11690 	mov	r6,a
      002E7A EF               [12]11691 	mov	a,r7
      002E7B 24 01            [12]11692 	add	a,#_axradio_phy_chanpllrng
      002E7D F5 82            [12]11693 	mov	dpl,a
      002E7F E4               [12]11694 	clr	a
      002E80 34 00            [12]11695 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      002E82 F5 83            [12]11696 	mov	dph,a
      002E84 E0               [24]11697 	movx	a,@dptr
      002E85 FD               [12]11698 	mov	r5,a
      002E86 EE               [12]11699 	mov	a,r6
      002E87 B5 05 03         [24]11700 	cjne	a,ar5,00285$
      002E8A D3               [12]11701 	setb	c
      002E8B 80 01            [24]11702 	sjmp	00286$
      002E8D                      11703 00285$:
      002E8D C3               [12]11704 	clr	c
      002E8E                      11705 00286$:
      002E8E 92 01            [24]11706 	mov	_axradio_init_sloc0_1_0,c
      002E90 50 22            [24]11707 	jnc	00161$
      002E92 90 55 BB         [24]11708 	mov	dptr,#_axradio_phy_chanvcoiinit
      002E95 E4               [12]11709 	clr	a
      002E96 93               [24]11710 	movc	a,@a+dptr
      002E97 60 1B            [24]11711 	jz	00161$
      002E99 EF               [12]11712 	mov	a,r7
      002E9A 90 55 BB         [24]11713 	mov	dptr,#_axradio_phy_chanvcoiinit
      002E9D 93               [24]11714 	movc	a,@a+dptr
      002E9E FE               [12]11715 	mov	r6,a
      002E9F EF               [12]11716 	mov	a,r7
      002EA0 24 02            [12]11717 	add	a,#_axradio_phy_chanvcoi
      002EA2 F5 82            [12]11718 	mov	dpl,a
      002EA4 E4               [12]11719 	clr	a
      002EA5 34 00            [12]11720 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002EA7 F5 83            [12]11721 	mov	dph,a
      002EA9 E0               [24]11722 	movx	a,@dptr
      002EAA FD               [12]11723 	mov	r5,a
      002EAB 6E               [12]11724 	xrl	a,r6
      002EAC 54 7F            [12]11725 	anl	a,#0x7f
      002EAE 70 04            [24]11726 	jnz	00161$
      002EB0 C2 01            [12]11727 	clr	_axradio_init_sloc0_1_0
      002EB2 80 02            [24]11728 	sjmp	00162$
      002EB4                      11729 00161$:
      002EB4 D2 01            [12]11730 	setb	_axradio_init_sloc0_1_0
      002EB6                      11731 00162$:
      002EB6 A2 01            [12]11732 	mov	c,_axradio_init_sloc0_1_0
      002EB8 E4               [12]11733 	clr	a
      002EB9 33               [12]11734 	rlc	a
                           002357 11735 	C$easyax5043.c$1747$4$402 ==.
                                  11736 ;	..\COMMON\easyax5043.c:1747: if (1 && !chg)
      002EBA FE               [12]11737 	mov	r6,a
      002EBB FD               [12]11738 	mov	r5,a
      002EBC 70 03            [24]11739 	jnz	00291$
      002EBE 02 2F C5         [24]11740 	ljmp	00137$
      002EC1                      11741 00291$:
                           00235E 11742 	C$easyax5043.c$1749$4$402 ==.
                                  11743 ;	..\COMMON\easyax5043.c:1749: dbglink_writestr("CH ");
      002EC1 90 56 B9         [24]11744 	mov	dptr,#___str_0
      002EC4 75 F0 80         [24]11745 	mov	b,#0x80
      002EC7 C0 07            [24]11746 	push	ar7
      002EC9 C0 05            [24]11747 	push	ar5
      002ECB 12 4C 05         [24]11748 	lcall	_dbglink_writestr
      002ECE D0 05            [24]11749 	pop	ar5
      002ED0 D0 07            [24]11750 	pop	ar7
                           00236F 11751 	C$easyax5043.c$1750$4$402 ==.
                                  11752 ;	..\COMMON\easyax5043.c:1750: dbglink_writenum16(i, 0, 0);
      002ED2 8F 04            [24]11753 	mov	ar4,r7
      002ED4 7E 00            [12]11754 	mov	r6,#0x00
      002ED6 C0 07            [24]11755 	push	ar7
      002ED8 C0 05            [24]11756 	push	ar5
      002EDA E4               [12]11757 	clr	a
      002EDB C0 E0            [24]11758 	push	acc
      002EDD C0 E0            [24]11759 	push	acc
      002EDF 8C 82            [24]11760 	mov	dpl,r4
      002EE1 8E 83            [24]11761 	mov	dph,r6
      002EE3 12 53 70         [24]11762 	lcall	_dbglink_writenum16
      002EE6 15 81            [12]11763 	dec	sp
      002EE8 15 81            [12]11764 	dec	sp
                           002387 11765 	C$easyax5043.c$1751$4$402 ==.
                                  11766 ;	..\COMMON\easyax5043.c:1751: dbglink_writestr(" RNG ");
      002EEA 90 56 BD         [24]11767 	mov	dptr,#___str_1
      002EED 75 F0 80         [24]11768 	mov	b,#0x80
      002EF0 12 4C 05         [24]11769 	lcall	_dbglink_writestr
      002EF3 D0 05            [24]11770 	pop	ar5
      002EF5 D0 07            [24]11771 	pop	ar7
                           002394 11772 	C$easyax5043.c$1752$4$402 ==.
                                  11773 ;	..\COMMON\easyax5043.c:1752: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
      002EF7 90 55 BA         [24]11774 	mov	dptr,#_axradio_phy_chanpllrnginit
      002EFA E4               [12]11775 	clr	a
      002EFB 93               [24]11776 	movc	a,@a+dptr
      002EFC FE               [12]11777 	mov	r6,a
      002EFD 54 F0            [12]11778 	anl	a,#0xf0
      002EFF 70 26            [24]11779 	jnz	00132$
                           00239E 11780 	C$easyax5043.c$1753$5$403 ==.
                                  11781 ;	..\COMMON\easyax5043.c:1753: dbglink_writenum16(axradio_phy_chanpllrnginit[i], 0, 0);
      002F01 EF               [12]11782 	mov	a,r7
      002F02 90 55 BA         [24]11783 	mov	dptr,#_axradio_phy_chanpllrnginit
      002F05 93               [24]11784 	movc	a,@a+dptr
      002F06 FE               [12]11785 	mov	r6,a
      002F07 7C 00            [12]11786 	mov	r4,#0x00
      002F09 C0 07            [24]11787 	push	ar7
      002F0B C0 05            [24]11788 	push	ar5
      002F0D E4               [12]11789 	clr	a
      002F0E C0 E0            [24]11790 	push	acc
      002F10 C0 E0            [24]11791 	push	acc
      002F12 8E 82            [24]11792 	mov	dpl,r6
      002F14 8C 83            [24]11793 	mov	dph,r4
      002F16 12 53 70         [24]11794 	lcall	_dbglink_writenum16
      002F19 15 81            [12]11795 	dec	sp
      002F1B 15 81            [12]11796 	dec	sp
      002F1D D0 05            [24]11797 	pop	ar5
      002F1F D0 07            [24]11798 	pop	ar7
                           0023BE 11799 	C$easyax5043.c$1754$5$403 ==.
                                  11800 ;	..\COMMON\easyax5043.c:1754: dbglink_tx('/');
      002F21 75 82 2F         [24]11801 	mov	dpl,#0x2f
      002F24 12 40 47         [24]11802 	lcall	_dbglink_tx
      002F27                      11803 00132$:
                           0023C4 11804 	C$easyax5043.c$1756$4$402 ==.
                                  11805 ;	..\COMMON\easyax5043.c:1756: dbglink_writenum16(axradio_phy_chanpllrng[i], 0, 0);
      002F27 EF               [12]11806 	mov	a,r7
      002F28 24 01            [12]11807 	add	a,#_axradio_phy_chanpllrng
      002F2A F5 82            [12]11808 	mov	dpl,a
      002F2C E4               [12]11809 	clr	a
      002F2D 34 00            [12]11810 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      002F2F F5 83            [12]11811 	mov	dph,a
      002F31 E0               [24]11812 	movx	a,@dptr
      002F32 FE               [12]11813 	mov	r6,a
      002F33 7C 00            [12]11814 	mov	r4,#0x00
      002F35 C0 07            [24]11815 	push	ar7
      002F37 C0 05            [24]11816 	push	ar5
      002F39 E4               [12]11817 	clr	a
      002F3A C0 E0            [24]11818 	push	acc
      002F3C C0 E0            [24]11819 	push	acc
      002F3E 8E 82            [24]11820 	mov	dpl,r6
      002F40 8C 83            [24]11821 	mov	dph,r4
      002F42 12 53 70         [24]11822 	lcall	_dbglink_writenum16
      002F45 15 81            [12]11823 	dec	sp
      002F47 15 81            [12]11824 	dec	sp
                           0023E6 11825 	C$easyax5043.c$1757$4$402 ==.
                                  11826 ;	..\COMMON\easyax5043.c:1757: dbglink_writestr(" VCOI ");
      002F49 90 56 C3         [24]11827 	mov	dptr,#___str_2
      002F4C 75 F0 80         [24]11828 	mov	b,#0x80
      002F4F 12 4C 05         [24]11829 	lcall	_dbglink_writestr
      002F52 D0 05            [24]11830 	pop	ar5
      002F54 D0 07            [24]11831 	pop	ar7
                           0023F3 11832 	C$easyax5043.c$1758$4$402 ==.
                                  11833 ;	..\COMMON\easyax5043.c:1758: if (axradio_phy_chanvcoiinit[0]) {
      002F56 90 55 BB         [24]11834 	mov	dptr,#_axradio_phy_chanvcoiinit
      002F59 E4               [12]11835 	clr	a
      002F5A 93               [24]11836 	movc	a,@a+dptr
      002F5B 60 29            [24]11837 	jz	00134$
                           0023FA 11838 	C$easyax5043.c$1759$5$404 ==.
                                  11839 ;	..\COMMON\easyax5043.c:1759: dbglink_writenum16(axradio_phy_chanvcoiinit[i] & 0x7F, 0, 0);
      002F5D EF               [12]11840 	mov	a,r7
      002F5E 90 55 BB         [24]11841 	mov	dptr,#_axradio_phy_chanvcoiinit
      002F61 93               [24]11842 	movc	a,@a+dptr
      002F62 FE               [12]11843 	mov	r6,a
      002F63 53 06 7F         [24]11844 	anl	ar6,#0x7f
      002F66 7C 00            [12]11845 	mov	r4,#0x00
      002F68 C0 07            [24]11846 	push	ar7
      002F6A C0 05            [24]11847 	push	ar5
      002F6C E4               [12]11848 	clr	a
      002F6D C0 E0            [24]11849 	push	acc
      002F6F C0 E0            [24]11850 	push	acc
      002F71 8E 82            [24]11851 	mov	dpl,r6
      002F73 8C 83            [24]11852 	mov	dph,r4
      002F75 12 53 70         [24]11853 	lcall	_dbglink_writenum16
      002F78 15 81            [12]11854 	dec	sp
      002F7A 15 81            [12]11855 	dec	sp
      002F7C D0 05            [24]11856 	pop	ar5
      002F7E D0 07            [24]11857 	pop	ar7
                           00241D 11858 	C$easyax5043.c$1760$5$404 ==.
                                  11859 ;	..\COMMON\easyax5043.c:1760: dbglink_tx('/');
      002F80 75 82 2F         [24]11860 	mov	dpl,#0x2f
      002F83 12 40 47         [24]11861 	lcall	_dbglink_tx
      002F86                      11862 00134$:
                           002423 11863 	C$easyax5043.c$1762$4$402 ==.
                                  11864 ;	..\COMMON\easyax5043.c:1762: dbglink_writenum16(axradio_phy_chanvcoi[i] & 0x7F, 0, 0);
      002F86 EF               [12]11865 	mov	a,r7
      002F87 24 02            [12]11866 	add	a,#_axradio_phy_chanvcoi
      002F89 F5 82            [12]11867 	mov	dpl,a
      002F8B E4               [12]11868 	clr	a
      002F8C 34 00            [12]11869 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      002F8E F5 83            [12]11870 	mov	dph,a
      002F90 E0               [24]11871 	movx	a,@dptr
      002F91 FE               [12]11872 	mov	r6,a
      002F92 53 06 7F         [24]11873 	anl	ar6,#0x7f
      002F95 7C 00            [12]11874 	mov	r4,#0x00
      002F97 C0 07            [24]11875 	push	ar7
      002F99 C0 05            [24]11876 	push	ar5
      002F9B E4               [12]11877 	clr	a
      002F9C C0 E0            [24]11878 	push	acc
      002F9E C0 E0            [24]11879 	push	acc
      002FA0 8E 82            [24]11880 	mov	dpl,r6
      002FA2 8C 83            [24]11881 	mov	dph,r4
      002FA4 12 53 70         [24]11882 	lcall	_dbglink_writenum16
      002FA7 15 81            [12]11883 	dec	sp
      002FA9 15 81            [12]11884 	dec	sp
      002FAB D0 05            [24]11885 	pop	ar5
      002FAD D0 07            [24]11886 	pop	ar7
                           00244C 11887 	C$easyax5043.c$1763$4$402 ==.
                                  11888 ;	..\COMMON\easyax5043.c:1763: if (chg)
      002FAF ED               [12]11889 	mov	a,r5
      002FB0 60 0D            [24]11890 	jz	00136$
                           00244F 11891 	C$easyax5043.c$1764$4$402 ==.
                                  11892 ;	..\COMMON\easyax5043.c:1764: dbglink_writestr(" *");
      002FB2 90 56 CA         [24]11893 	mov	dptr,#___str_3
      002FB5 75 F0 80         [24]11894 	mov	b,#0x80
      002FB8 C0 07            [24]11895 	push	ar7
      002FBA 12 4C 05         [24]11896 	lcall	_dbglink_writestr
      002FBD D0 07            [24]11897 	pop	ar7
      002FBF                      11898 00136$:
                           00245C 11899 	C$easyax5043.c$1765$4$402 ==.
                                  11900 ;	..\COMMON\easyax5043.c:1765: dbglink_tx('\n');
      002FBF 75 82 0A         [24]11901 	mov	dpl,#0x0a
      002FC2 12 40 47         [24]11902 	lcall	_dbglink_tx
      002FC5                      11903 00137$:
                           002462 11904 	C$easyax5043.c$1744$3$401 ==.
                                  11905 ;	..\COMMON\easyax5043.c:1744: for (i = 0; i < axradio_phy_nrchannels; ++i) {
      002FC5 0F               [12]11906 	inc	r7
      002FC6 02 2E 5C         [24]11907 	ljmp	00154$
      002FC9                      11908 00142$:
                           002466 11909 	C$easyax5043.c$1770$1$385 ==.
                                  11910 ;	..\COMMON\easyax5043.c:1770: AX5043_PWRMODE = AX5043_PWRSTATE_POWERDOWN;
      002FC9 90 40 02         [24]11911 	mov	dptr,#_AX5043_PWRMODE
      002FCC E4               [12]11912 	clr	a
      002FCD F0               [24]11913 	movx	@dptr,a
                           00246B 11914 	C$easyax5043.c$1771$1$385 ==.
                                  11915 ;	..\COMMON\easyax5043.c:1771: ax5043_init_registers();
      002FCE 12 19 A9         [24]11916 	lcall	_ax5043_init_registers
                           00246E 11917 	C$easyax5043.c$1772$1$385 ==.
                                  11918 ;	..\COMMON\easyax5043.c:1772: ax5043_set_registers_rx();
      002FD1 12 06 32         [24]11919 	lcall	_ax5043_set_registers_rx
                           002471 11920 	C$easyax5043.c$1773$1$385 ==.
                                  11921 ;	..\COMMON\easyax5043.c:1773: AX5043_PLLRANGINGA = axradio_phy_chanpllrng[0] & 0x0F;
      002FD4 90 00 01         [24]11922 	mov	dptr,#_axradio_phy_chanpllrng
      002FD7 E0               [24]11923 	movx	a,@dptr
      002FD8 FF               [12]11924 	mov	r7,a
      002FD9 90 40 33         [24]11925 	mov	dptr,#_AX5043_PLLRANGINGA
      002FDC 74 0F            [12]11926 	mov	a,#0x0f
      002FDE 5F               [12]11927 	anl	a,r7
      002FDF F0               [24]11928 	movx	@dptr,a
                           00247D 11929 	C$easyax5043.c$1775$2$405 ==.
                                  11930 ;	..\COMMON\easyax5043.c:1775: uint32_t __autodata f = axradio_phy_chanfreq[0];
      002FE0 90 55 B6         [24]11931 	mov	dptr,#_axradio_phy_chanfreq
      002FE3 E4               [12]11932 	clr	a
      002FE4 93               [24]11933 	movc	a,@a+dptr
      002FE5 FC               [12]11934 	mov	r4,a
      002FE6 A3               [24]11935 	inc	dptr
      002FE7 E4               [12]11936 	clr	a
      002FE8 93               [24]11937 	movc	a,@a+dptr
      002FE9 FD               [12]11938 	mov	r5,a
      002FEA A3               [24]11939 	inc	dptr
      002FEB E4               [12]11940 	clr	a
      002FEC 93               [24]11941 	movc	a,@a+dptr
      002FED FE               [12]11942 	mov	r6,a
      002FEE A3               [24]11943 	inc	dptr
      002FEF E4               [12]11944 	clr	a
      002FF0 93               [24]11945 	movc	a,@a+dptr
      002FF1 FF               [12]11946 	mov	r7,a
                           00248F 11947 	C$easyax5043.c$1776$2$405 ==.
                                  11948 ;	..\COMMON\easyax5043.c:1776: AX5043_FREQA0 = f;
      002FF2 90 40 37         [24]11949 	mov	dptr,#_AX5043_FREQA0
      002FF5 EC               [12]11950 	mov	a,r4
      002FF6 F0               [24]11951 	movx	@dptr,a
                           002494 11952 	C$easyax5043.c$1777$2$405 ==.
                                  11953 ;	..\COMMON\easyax5043.c:1777: AX5043_FREQA1 = f >> 8;
      002FF7 90 40 36         [24]11954 	mov	dptr,#_AX5043_FREQA1
      002FFA ED               [12]11955 	mov	a,r5
      002FFB F0               [24]11956 	movx	@dptr,a
                           002499 11957 	C$easyax5043.c$1778$2$405 ==.
                                  11958 ;	..\COMMON\easyax5043.c:1778: AX5043_FREQA2 = f >> 16;
      002FFC 90 40 35         [24]11959 	mov	dptr,#_AX5043_FREQA2
      002FFF EE               [12]11960 	mov	a,r6
      003000 F0               [24]11961 	movx	@dptr,a
                           00249E 11962 	C$easyax5043.c$1779$2$405 ==.
                                  11963 ;	..\COMMON\easyax5043.c:1779: AX5043_FREQA3 = f >> 24;
      003001 90 40 34         [24]11964 	mov	dptr,#_AX5043_FREQA3
      003004 EF               [12]11965 	mov	a,r7
      003005 F0               [24]11966 	movx	@dptr,a
                           0024A3 11967 	C$easyax5043.c$1782$1$385 ==.
                                  11968 ;	..\COMMON\easyax5043.c:1782: axradio_mode = AXRADIO_MODE_OFF;
      003006 75 08 01         [24]11969 	mov	_axradio_mode,#0x01
                           0024A6 11970 	C$easyax5043.c$1783$1$385 ==.
                                  11971 ;	..\COMMON\easyax5043.c:1783: for (i = 0; i < axradio_phy_nrchannels; ++i)
      003009 7F 00            [12]11972 	mov	r7,#0x00
      00300B                      11973 00156$:
      00300B 90 55 B5         [24]11974 	mov	dptr,#_axradio_phy_nrchannels
      00300E E4               [12]11975 	clr	a
      00300F 93               [24]11976 	movc	a,@a+dptr
      003010 FE               [12]11977 	mov	r6,a
      003011 C3               [12]11978 	clr	c
      003012 EF               [12]11979 	mov	a,r7
      003013 9E               [12]11980 	subb	a,r6
      003014 50 17            [24]11981 	jnc	00145$
                           0024B3 11982 	C$easyax5043.c$1784$1$385 ==.
                                  11983 ;	..\COMMON\easyax5043.c:1784: if (axradio_phy_chanpllrng[i] & 0x20)
      003016 EF               [12]11984 	mov	a,r7
      003017 24 01            [12]11985 	add	a,#_axradio_phy_chanpllrng
      003019 F5 82            [12]11986 	mov	dpl,a
      00301B E4               [12]11987 	clr	a
      00301C 34 00            [12]11988 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      00301E F5 83            [12]11989 	mov	dph,a
      003020 E0               [24]11990 	movx	a,@dptr
      003021 FE               [12]11991 	mov	r6,a
      003022 30 E5 05         [24]11992 	jnb	acc.5,00157$
                           0024C2 11993 	C$easyax5043.c$1785$1$385 ==.
                                  11994 ;	..\COMMON\easyax5043.c:1785: return AXRADIO_ERR_RANGING;
      003025 75 82 06         [24]11995 	mov	dpl,#0x06
      003028 80 06            [24]11996 	sjmp	00158$
      00302A                      11997 00157$:
                           0024C7 11998 	C$easyax5043.c$1783$1$385 ==.
                                  11999 ;	..\COMMON\easyax5043.c:1783: for (i = 0; i < axradio_phy_nrchannels; ++i)
      00302A 0F               [12]12000 	inc	r7
      00302B 80 DE            [24]12001 	sjmp	00156$
      00302D                      12002 00145$:
                           0024CA 12003 	C$easyax5043.c$1786$1$385 ==.
                                  12004 ;	..\COMMON\easyax5043.c:1786: return AXRADIO_ERR_NOERROR;
      00302D 75 82 00         [24]12005 	mov	dpl,#0x00
      003030                      12006 00158$:
                           0024CD 12007 	C$easyax5043.c$1787$1$385 ==.
                           0024CD 12008 	XG$axradio_init$0$0 ==.
      003030 22               [24]12009 	ret
                                  12010 ;------------------------------------------------------------
                                  12011 ;Allocation info for local variables in function 'axradio_cansleep'
                                  12012 ;------------------------------------------------------------
                           0024CE 12013 	G$axradio_cansleep$0$0 ==.
                           0024CE 12014 	C$easyax5043.c$1789$1$385 ==.
                                  12015 ;	..\COMMON\easyax5043.c:1789: __reentrantb uint8_t axradio_cansleep(void) __reentrant
                                  12016 ;	-----------------------------------------
                                  12017 ;	 function axradio_cansleep
                                  12018 ;	-----------------------------------------
      003031                      12019 _axradio_cansleep:
                           0024CE 12020 	C$easyax5043.c$1791$1$407 ==.
                                  12021 ;	..\COMMON\easyax5043.c:1791: if (axradio_trxstate == trxstate_off || axradio_trxstate == trxstate_rxwor)
      003031 E5 09            [12]12022 	mov	a,_axradio_trxstate
      003033 60 05            [24]12023 	jz	00101$
      003035 74 02            [12]12024 	mov	a,#0x02
      003037 B5 09 05         [24]12025 	cjne	a,_axradio_trxstate,00102$
      00303A                      12026 00101$:
                           0024D7 12027 	C$easyax5043.c$1792$1$407 ==.
                                  12028 ;	..\COMMON\easyax5043.c:1792: return 1;
      00303A 75 82 01         [24]12029 	mov	dpl,#0x01
      00303D 80 03            [24]12030 	sjmp	00104$
      00303F                      12031 00102$:
                           0024DC 12032 	C$easyax5043.c$1793$1$407 ==.
                                  12033 ;	..\COMMON\easyax5043.c:1793: return 0;
      00303F 75 82 00         [24]12034 	mov	dpl,#0x00
      003042                      12035 00104$:
                           0024DF 12036 	C$easyax5043.c$1794$1$407 ==.
                           0024DF 12037 	XG$axradio_cansleep$0$0 ==.
      003042 22               [24]12038 	ret
                                  12039 ;------------------------------------------------------------
                                  12040 ;Allocation info for local variables in function 'wtimer_cansleep_dummy'
                                  12041 ;------------------------------------------------------------
                           0024E0 12042 	Feasyax5043$wtimer_cansleep_dummy$0$0 ==.
                           0024E0 12043 	C$easyax5043.c$1797$1$407 ==.
                                  12044 ;	..\COMMON\easyax5043.c:1797: static void wtimer_cansleep_dummy(void) __naked
                                  12045 ;	-----------------------------------------
                                  12046 ;	 function wtimer_cansleep_dummy
                                  12047 ;	-----------------------------------------
      003043                      12048 _wtimer_cansleep_dummy:
                                  12049 ;	naked function: no prologue.
                           0024E0 12050 	C$easyax5043.c$1811$1$409 ==.
                                  12051 ;	..\COMMON\easyax5043.c:1811: __endasm;
                                  12052 	.area	WTCANSLP0 (CODE)
                                  12053 	.area	WTCANSLP1 (CODE)
                                  12054 	.area	WTCANSLP2 (CODE)
                                  12055 	.area	WTCANSLP1 (CODE)
      005AD2 12 30 31         [24]12056 	lcall	_axradio_cansleep
      005AD5 E5 82            [12]12057 	mov	a,dpl
      005AD7 70 01            [24]12058 	jnz	00000$
      005AD9 22               [24]12059 	ret
      005ADA                      12060 	00000$:
                                  12061 	.area	CSEG (CODE)
                                  12062 ;	naked function: no epilogue.
                           0024E0 12063 	C$easyax5043.c$1812$1$409 ==.
                           0024E0 12064 	XFeasyax5043$wtimer_cansleep_dummy$0$0 ==.
                                  12065 ;------------------------------------------------------------
                                  12066 ;Allocation info for local variables in function 'axradio_set_mode'
                                  12067 ;------------------------------------------------------------
                                  12068 ;mode                      Allocated to registers r7 
                                  12069 ;r                         Allocated to registers r5 
                                  12070 ;r                         Allocated to registers r6 
                                  12071 ;iesave                    Allocated to registers r6 
                                  12072 ;------------------------------------------------------------
                           0024E0 12073 	G$axradio_set_mode$0$0 ==.
                           0024E0 12074 	C$easyax5043.c$1815$1$409 ==.
                                  12075 ;	..\COMMON\easyax5043.c:1815: uint8_t axradio_set_mode(uint8_t mode)
                                  12076 ;	-----------------------------------------
                                  12077 ;	 function axradio_set_mode
                                  12078 ;	-----------------------------------------
      003043                      12079 _axradio_set_mode:
                           0024E0 12080 	C$easyax5043.c$1817$1$411 ==.
                                  12081 ;	..\COMMON\easyax5043.c:1817: if (mode == axradio_mode)
      003043 E5 82            [12]12082 	mov	a,dpl
      003045 FF               [12]12083 	mov	r7,a
      003046 B5 08 06         [24]12084 	cjne	a,_axradio_mode,00102$
                           0024E6 12085 	C$easyax5043.c$1818$1$411 ==.
                                  12086 ;	..\COMMON\easyax5043.c:1818: return AXRADIO_ERR_NOERROR;
      003049 75 82 00         [24]12087 	mov	dpl,#0x00
      00304C 02 34 AF         [24]12088 	ljmp	00183$
      00304F                      12089 00102$:
                           0024EC 12090 	C$easyax5043.c$1819$1$411 ==.
                                  12091 ;	..\COMMON\easyax5043.c:1819: switch (axradio_mode) {
      00304F AE 08            [24]12092 	mov	r6,_axradio_mode
      003051 BE 00 02         [24]12093 	cjne	r6,#0x00,00283$
      003054 80 4D            [24]12094 	sjmp	00103$
      003056                      12095 00283$:
      003056 BE 02 02         [24]12096 	cjne	r6,#0x02,00284$
      003059 80 5D            [24]12097 	sjmp	00106$
      00305B                      12098 00284$:
      00305B BE 03 03         [24]12099 	cjne	r6,#0x03,00285$
      00305E 02 30 EC         [24]12100 	ljmp	00116$
      003061                      12101 00285$:
      003061 BE 18 03         [24]12102 	cjne	r6,#0x18,00286$
      003064 02 30 EC         [24]12103 	ljmp	00116$
      003067                      12104 00286$:
      003067 BE 19 03         [24]12105 	cjne	r6,#0x19,00287$
      00306A 02 30 EC         [24]12106 	ljmp	00116$
      00306D                      12107 00287$:
      00306D BE 1A 02         [24]12108 	cjne	r6,#0x1a,00288$
      003070 80 7A            [24]12109 	sjmp	00116$
      003072                      12110 00288$:
      003072 BE 1B 02         [24]12111 	cjne	r6,#0x1b,00289$
      003075 80 75            [24]12112 	sjmp	00116$
      003077                      12113 00289$:
      003077 BE 1C 02         [24]12114 	cjne	r6,#0x1c,00290$
      00307A 80 70            [24]12115 	sjmp	00116$
      00307C                      12116 00290$:
      00307C BE 28 03         [24]12117 	cjne	r6,#0x28,00291$
      00307F 02 31 45         [24]12118 	ljmp	00124$
      003082                      12119 00291$:
      003082 BE 29 03         [24]12120 	cjne	r6,#0x29,00292$
      003085 02 31 45         [24]12121 	ljmp	00124$
      003088                      12122 00292$:
      003088 BE 2A 03         [24]12123 	cjne	r6,#0x2a,00293$
      00308B 02 31 45         [24]12124 	ljmp	00124$
      00308E                      12125 00293$:
      00308E BE 2B 03         [24]12126 	cjne	r6,#0x2b,00294$
      003091 02 31 45         [24]12127 	ljmp	00124$
      003094                      12128 00294$:
      003094 BE 2C 03         [24]12129 	cjne	r6,#0x2c,00295$
      003097 02 31 45         [24]12130 	ljmp	00124$
      00309A                      12131 00295$:
      00309A BE 2D 03         [24]12132 	cjne	r6,#0x2d,00296$
      00309D 02 31 45         [24]12133 	ljmp	00124$
      0030A0                      12134 00296$:
      0030A0 02 31 52         [24]12135 	ljmp	00125$
                           002540 12136 	C$easyax5043.c$1820$2$412 ==.
                                  12137 ;	..\COMMON\easyax5043.c:1820: case AXRADIO_MODE_UNINIT:
      0030A3                      12138 00103$:
                           002540 12139 	C$easyax5043.c$1822$3$413 ==.
                                  12140 ;	..\COMMON\easyax5043.c:1822: uint8_t __autodata r = axradio_init();
      0030A3 C0 07            [24]12141 	push	ar7
      0030A5 12 2B 4D         [24]12142 	lcall	_axradio_init
      0030A8 AE 82            [24]12143 	mov	r6,dpl
      0030AA D0 07            [24]12144 	pop	ar7
                           002549 12145 	C$easyax5043.c$1823$3$413 ==.
                                  12146 ;	..\COMMON\easyax5043.c:1823: if (r != AXRADIO_ERR_NOERROR)
      0030AC EE               [12]12147 	mov	a,r6
      0030AD FD               [12]12148 	mov	r5,a
      0030AE 70 03            [24]12149 	jnz	00297$
      0030B0 02 31 5C         [24]12150 	ljmp	00126$
      0030B3                      12151 00297$:
                           002550 12152 	C$easyax5043.c$1824$3$413 ==.
                                  12153 ;	..\COMMON\easyax5043.c:1824: return r;
      0030B3 8D 82            [24]12154 	mov	dpl,r5
      0030B5 02 34 AF         [24]12155 	ljmp	00183$
                           002555 12156 	C$easyax5043.c$1828$2$412 ==.
                                  12157 ;	..\COMMON\easyax5043.c:1828: case AXRADIO_MODE_DEEPSLEEP:
      0030B8                      12158 00106$:
                           002555 12159 	C$easyax5043.c$1830$3$414 ==.
                                  12160 ;	..\COMMON\easyax5043.c:1830: uint8_t __autodata r = ax5043_wakeup_deepsleep();
      0030B8 C0 07            [24]12161 	push	ar7
      0030BA 12 40 84         [24]12162 	lcall	_ax5043_wakeup_deepsleep
      0030BD AE 82            [24]12163 	mov	r6,dpl
      0030BF D0 07            [24]12164 	pop	ar7
                           00255E 12165 	C$easyax5043.c$1831$3$414 ==.
                                  12166 ;	..\COMMON\easyax5043.c:1831: if (r)
      0030C1 EE               [12]12167 	mov	a,r6
      0030C2 60 06            [24]12168 	jz	00108$
                           002561 12169 	C$easyax5043.c$1832$3$414 ==.
                                  12170 ;	..\COMMON\easyax5043.c:1832: return AXRADIO_ERR_NOCHIP;
      0030C4 75 82 05         [24]12171 	mov	dpl,#0x05
      0030C7 02 34 AF         [24]12172 	ljmp	00183$
      0030CA                      12173 00108$:
                           002567 12174 	C$easyax5043.c$1833$3$414 ==.
                                  12175 ;	..\COMMON\easyax5043.c:1833: ax5043_init_registers();
      0030CA C0 07            [24]12176 	push	ar7
      0030CC 12 19 A9         [24]12177 	lcall	_ax5043_init_registers
                           00256C 12178 	C$easyax5043.c$1834$3$414 ==.
                                  12179 ;	..\COMMON\easyax5043.c:1834: r = axradio_set_channel(axradio_curchannel);
      0030CF 90 00 0A         [24]12180 	mov	dptr,#_axradio_curchannel
      0030D2 E0               [24]12181 	movx	a,@dptr
      0030D3 F5 82            [12]12182 	mov	dpl,a
      0030D5 12 34 B4         [24]12183 	lcall	_axradio_set_channel
      0030D8 AE 82            [24]12184 	mov	r6,dpl
      0030DA D0 07            [24]12185 	pop	ar7
                           002579 12186 	C$easyax5043.c$1835$3$414 ==.
                                  12187 ;	..\COMMON\easyax5043.c:1835: if (r != AXRADIO_ERR_NOERROR)
      0030DC EE               [12]12188 	mov	a,r6
      0030DD 60 05            [24]12189 	jz	00110$
                           00257C 12190 	C$easyax5043.c$1836$3$414 ==.
                                  12191 ;	..\COMMON\easyax5043.c:1836: return r;
      0030DF 8E 82            [24]12192 	mov	dpl,r6
      0030E1 02 34 AF         [24]12193 	ljmp	00183$
      0030E4                      12194 00110$:
                           002581 12195 	C$easyax5043.c$1837$3$414 ==.
                                  12196 ;	..\COMMON\easyax5043.c:1837: axradio_trxstate = trxstate_off;
      0030E4 75 09 00         [24]12197 	mov	_axradio_trxstate,#0x00
                           002584 12198 	C$easyax5043.c$1838$3$414 ==.
                                  12199 ;	..\COMMON\easyax5043.c:1838: axradio_mode = AXRADIO_MODE_OFF;
      0030E7 75 08 01         [24]12200 	mov	_axradio_mode,#0x01
                           002587 12201 	C$easyax5043.c$1839$3$414 ==.
                                  12202 ;	..\COMMON\easyax5043.c:1839: break;
                           002587 12203 	C$easyax5043.c$1847$2$412 ==.
                                  12204 ;	..\COMMON\easyax5043.c:1847: case AXRADIO_MODE_CW_TRANSMIT:
      0030EA 80 70            [24]12205 	sjmp	00126$
      0030EC                      12206 00116$:
                           002589 12207 	C$easyax5043.c$1849$3$415 ==.
                                  12208 ;	..\COMMON\easyax5043.c:1849: uint8_t __autodata iesave = IE & 0x80;
      0030EC 74 80            [12]12209 	mov	a,#0x80
      0030EE 55 A8            [12]12210 	anl	a,_IE
      0030F0 FE               [12]12211 	mov	r6,a
                           00258E 12212 	C$easyax5043.c$1850$3$415 ==.
                                  12213 ;	..\COMMON\easyax5043.c:1850: EA = 0;
      0030F1 C2 AF            [12]12214 	clr	_EA
                           002590 12215 	C$easyax5043.c$1851$3$415 ==.
                                  12216 ;	..\COMMON\easyax5043.c:1851: if (axradio_trxstate == trxstate_off) {
      0030F3 E5 09            [12]12217 	mov	a,_axradio_trxstate
      0030F5 70 38            [24]12218 	jnz	00118$
                           002594 12219 	C$easyax5043.c$1852$4$416 ==.
                                  12220 ;	..\COMMON\easyax5043.c:1852: update_timeanchor();
      0030F7 C0 07            [24]12221 	push	ar7
      0030F9 C0 06            [24]12222 	push	ar6
      0030FB 12 0B 63         [24]12223 	lcall	_update_timeanchor
                           00259B 12224 	C$easyax5043.c$1853$4$416 ==.
                                  12225 ;	..\COMMON\easyax5043.c:1853: wtimer_remove_callback(&axradio_cb_transmitend.cb);
      0030FE 90 02 76         [24]12226 	mov	dptr,#_axradio_cb_transmitend
      003101 12 51 BE         [24]12227 	lcall	_wtimer_remove_callback
                           0025A1 12228 	C$easyax5043.c$1854$4$416 ==.
                                  12229 ;	..\COMMON\easyax5043.c:1854: axradio_cb_transmitend.st.error = AXRADIO_ERR_NOERROR;
      003104 90 02 7B         [24]12230 	mov	dptr,#(_axradio_cb_transmitend + 0x0005)
      003107 E4               [12]12231 	clr	a
      003108 F0               [24]12232 	movx	@dptr,a
                           0025A6 12233 	C$easyax5043.c$1855$4$416 ==.
                                  12234 ;	..\COMMON\easyax5043.c:1855: axradio_cb_transmitend.st.time.t = axradio_timeanchor.radiotimer;
      003109 90 00 1B         [24]12235 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      00310C E0               [24]12236 	movx	a,@dptr
      00310D FA               [12]12237 	mov	r2,a
      00310E A3               [24]12238 	inc	dptr
      00310F E0               [24]12239 	movx	a,@dptr
      003110 FB               [12]12240 	mov	r3,a
      003111 A3               [24]12241 	inc	dptr
      003112 E0               [24]12242 	movx	a,@dptr
      003113 FC               [12]12243 	mov	r4,a
      003114 A3               [24]12244 	inc	dptr
      003115 E0               [24]12245 	movx	a,@dptr
      003116 FD               [12]12246 	mov	r5,a
      003117 90 02 7C         [24]12247 	mov	dptr,#(_axradio_cb_transmitend + 0x0006)
      00311A EA               [12]12248 	mov	a,r2
      00311B F0               [24]12249 	movx	@dptr,a
      00311C EB               [12]12250 	mov	a,r3
      00311D A3               [24]12251 	inc	dptr
      00311E F0               [24]12252 	movx	@dptr,a
      00311F EC               [12]12253 	mov	a,r4
      003120 A3               [24]12254 	inc	dptr
      003121 F0               [24]12255 	movx	@dptr,a
      003122 ED               [12]12256 	mov	a,r5
      003123 A3               [24]12257 	inc	dptr
      003124 F0               [24]12258 	movx	@dptr,a
                           0025C2 12259 	C$easyax5043.c$1856$4$416 ==.
                                  12260 ;	..\COMMON\easyax5043.c:1856: wtimer_add_callback(&axradio_cb_transmitend.cb);
      003125 90 02 76         [24]12261 	mov	dptr,#_axradio_cb_transmitend
      003128 12 46 A2         [24]12262 	lcall	_wtimer_add_callback
      00312B D0 06            [24]12263 	pop	ar6
      00312D D0 07            [24]12264 	pop	ar7
      00312F                      12265 00118$:
                           0025CC 12266 	C$easyax5043.c$1858$3$415 ==.
                                  12267 ;	..\COMMON\easyax5043.c:1858: ax5043_off();
      00312F C0 07            [24]12268 	push	ar7
      003131 C0 06            [24]12269 	push	ar6
      003133 12 18 2E         [24]12270 	lcall	_ax5043_off
      003136 D0 06            [24]12271 	pop	ar6
                           0025D5 12272 	C$easyax5043.c$1859$3$415 ==.
                                  12273 ;	..\COMMON\easyax5043.c:1859: IE |= iesave;
      003138 EE               [12]12274 	mov	a,r6
      003139 42 A8            [12]12275 	orl	_IE,a
                           0025D8 12276 	C$easyax5043.c$1861$3$415 ==.
                                  12277 ;	..\COMMON\easyax5043.c:1861: ax5043_init_registers();
      00313B 12 19 A9         [24]12278 	lcall	_ax5043_init_registers
      00313E D0 07            [24]12279 	pop	ar7
                           0025DD 12280 	C$easyax5043.c$1862$3$415 ==.
                                  12281 ;	..\COMMON\easyax5043.c:1862: axradio_mode = AXRADIO_MODE_OFF;
      003140 75 08 01         [24]12282 	mov	_axradio_mode,#0x01
                           0025E0 12283 	C$easyax5043.c$1863$3$415 ==.
                                  12284 ;	..\COMMON\easyax5043.c:1863: break;
                           0025E0 12285 	C$easyax5043.c$1871$2$412 ==.
                                  12286 ;	..\COMMON\easyax5043.c:1871: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
      003143 80 17            [24]12287 	sjmp	00126$
      003145                      12288 00124$:
                           0025E2 12289 	C$easyax5043.c$1872$2$412 ==.
                                  12290 ;	..\COMMON\easyax5043.c:1872: ax5043_off();
      003145 C0 07            [24]12291 	push	ar7
      003147 12 18 2E         [24]12292 	lcall	_ax5043_off
                           0025E7 12293 	C$easyax5043.c$1873$2$412 ==.
                                  12294 ;	..\COMMON\easyax5043.c:1873: ax5043_init_registers();
      00314A 12 19 A9         [24]12295 	lcall	_ax5043_init_registers
      00314D D0 07            [24]12296 	pop	ar7
                           0025EC 12297 	C$easyax5043.c$1874$2$412 ==.
                                  12298 ;	..\COMMON\easyax5043.c:1874: axradio_mode = AXRADIO_MODE_OFF;
      00314F 75 08 01         [24]12299 	mov	_axradio_mode,#0x01
                           0025EF 12300 	C$easyax5043.c$1876$2$412 ==.
                                  12301 ;	..\COMMON\easyax5043.c:1876: default:
      003152                      12302 00125$:
                           0025EF 12303 	C$easyax5043.c$1877$2$412 ==.
                                  12304 ;	..\COMMON\easyax5043.c:1877: ax5043_off();
      003152 C0 07            [24]12305 	push	ar7
      003154 12 18 2E         [24]12306 	lcall	_ax5043_off
      003157 D0 07            [24]12307 	pop	ar7
                           0025F6 12308 	C$easyax5043.c$1878$2$412 ==.
                                  12309 ;	..\COMMON\easyax5043.c:1878: axradio_mode = AXRADIO_MODE_OFF;
      003159 75 08 01         [24]12310 	mov	_axradio_mode,#0x01
                           0025F9 12311 	C$easyax5043.c$1880$1$411 ==.
                                  12312 ;	..\COMMON\easyax5043.c:1880: }
      00315C                      12313 00126$:
                           0025F9 12314 	C$easyax5043.c$1881$1$411 ==.
                                  12315 ;	..\COMMON\easyax5043.c:1881: axradio_killallcb();
      00315C C0 07            [24]12316 	push	ar7
      00315E 12 29 4D         [24]12317 	lcall	_axradio_killallcb
      003161 D0 07            [24]12318 	pop	ar7
                           002600 12319 	C$easyax5043.c$1882$1$411 ==.
                                  12320 ;	..\COMMON\easyax5043.c:1882: if (mode == AXRADIO_MODE_UNINIT)
      003163 EF               [12]12321 	mov	a,r7
      003164 70 06            [24]12322 	jnz	00128$
                           002603 12323 	C$easyax5043.c$1883$1$411 ==.
                                  12324 ;	..\COMMON\easyax5043.c:1883: return AXRADIO_ERR_NOTSUPPORTED;
      003166 75 82 01         [24]12325 	mov	dpl,#0x01
      003169 02 34 AF         [24]12326 	ljmp	00183$
      00316C                      12327 00128$:
                           002609 12328 	C$easyax5043.c$1884$1$411 ==.
                                  12329 ;	..\COMMON\easyax5043.c:1884: axradio_syncstate = syncstate_off;
      00316C 90 00 05         [24]12330 	mov	dptr,#_axradio_syncstate
      00316F E4               [12]12331 	clr	a
      003170 F0               [24]12332 	movx	@dptr,a
                           00260E 12333 	C$easyax5043.c$1885$1$411 ==.
                                  12334 ;	..\COMMON\easyax5043.c:1885: switch (mode) {
      003171 EF               [12]12335 	mov	a,r7
      003172 24 CC            [12]12336 	add	a,#0xff - 0x33
      003174 50 03            [24]12337 	jnc	00302$
      003176 02 34 AC         [24]12338 	ljmp	00181$
      003179                      12339 00302$:
      003179 EF               [12]12340 	mov	a,r7
      00317A 24 0A            [12]12341 	add	a,#(00303$-3-.)
      00317C 83               [24]12342 	movc	a,@a+pc
      00317D F5 82            [12]12343 	mov	dpl,a
      00317F EF               [12]12344 	mov	a,r7
      003180 24 38            [12]12345 	add	a,#(00304$-3-.)
      003182 83               [24]12346 	movc	a,@a+pc
      003183 F5 83            [12]12347 	mov	dph,a
      003185 E4               [12]12348 	clr	a
      003186 73               [24]12349 	jmp	@a+dptr
      003187                      12350 00303$:
      003187 AC                   12351 	.db	00181$
      003188 EF                   12352 	.db	00129$
      003189 F5                   12353 	.db	00130$
      00318A 6F                   12354 	.db	00176$
      00318B AC                   12355 	.db	00181$
      00318C AC                   12356 	.db	00181$
      00318D AC                   12357 	.db	00181$
      00318E AC                   12358 	.db	00181$
      00318F AC                   12359 	.db	00181$
      003190 AC                   12360 	.db	00181$
      003191 AC                   12361 	.db	00181$
      003192 AC                   12362 	.db	00181$
      003193 AC                   12363 	.db	00181$
      003194 AC                   12364 	.db	00181$
      003195 AC                   12365 	.db	00181$
      003196 AC                   12366 	.db	00181$
      003197 01                   12367 	.db	00131$
      003198 12                   12368 	.db	00133$
      003199 01                   12369 	.db	00132$
      00319A 12                   12370 	.db	00134$
      00319B AC                   12371 	.db	00181$
      00319C AC                   12372 	.db	00181$
      00319D AC                   12373 	.db	00181$
      00319E AC                   12374 	.db	00181$
      00319F 7A                   12375 	.db	00143$
      0031A0 7A                   12376 	.db	00144$
      0031A1 7A                   12377 	.db	00145$
      0031A2 7A                   12378 	.db	00146$
      0031A3 7A                   12379 	.db	00142$
      0031A4 AC                   12380 	.db	00181$
      0031A5 AC                   12381 	.db	00181$
      0031A6 AC                   12382 	.db	00181$
      0031A7 23                   12383 	.db	00135$
      0031A8 66                   12384 	.db	00140$
      0031A9 23                   12385 	.db	00136$
      0031AA 66                   12386 	.db	00141$
      0031AB AC                   12387 	.db	00181$
      0031AC AC                   12388 	.db	00181$
      0031AD AC                   12389 	.db	00181$
      0031AE AC                   12390 	.db	00181$
      0031AF 0A                   12391 	.db	00160$
      0031B0 0A                   12392 	.db	00161$
      0031B1 0A                   12393 	.db	00162$
      0031B2 0A                   12394 	.db	00163$
      0031B3 0A                   12395 	.db	00159$
      0031B4 0A                   12396 	.db	00164$
      0031B5 AC                   12397 	.db	00181$
      0031B6 AC                   12398 	.db	00181$
      0031B7 B4                   12399 	.db	00177$
      0031B8 B4                   12400 	.db	00178$
      0031B9 11                   12401 	.db	00179$
      0031BA 11                   12402 	.db	00180$
      0031BB                      12403 00304$:
      0031BB 34                   12404 	.db	00181$>>8
      0031BC 31                   12405 	.db	00129$>>8
      0031BD 31                   12406 	.db	00130$>>8
      0031BE 33                   12407 	.db	00176$>>8
      0031BF 34                   12408 	.db	00181$>>8
      0031C0 34                   12409 	.db	00181$>>8
      0031C1 34                   12410 	.db	00181$>>8
      0031C2 34                   12411 	.db	00181$>>8
      0031C3 34                   12412 	.db	00181$>>8
      0031C4 34                   12413 	.db	00181$>>8
      0031C5 34                   12414 	.db	00181$>>8
      0031C6 34                   12415 	.db	00181$>>8
      0031C7 34                   12416 	.db	00181$>>8
      0031C8 34                   12417 	.db	00181$>>8
      0031C9 34                   12418 	.db	00181$>>8
      0031CA 34                   12419 	.db	00181$>>8
      0031CB 32                   12420 	.db	00131$>>8
      0031CC 32                   12421 	.db	00133$>>8
      0031CD 32                   12422 	.db	00132$>>8
      0031CE 32                   12423 	.db	00134$>>8
      0031CF 34                   12424 	.db	00181$>>8
      0031D0 34                   12425 	.db	00181$>>8
      0031D1 34                   12426 	.db	00181$>>8
      0031D2 34                   12427 	.db	00181$>>8
      0031D3 32                   12428 	.db	00143$>>8
      0031D4 32                   12429 	.db	00144$>>8
      0031D5 32                   12430 	.db	00145$>>8
      0031D6 32                   12431 	.db	00146$>>8
      0031D7 32                   12432 	.db	00142$>>8
      0031D8 34                   12433 	.db	00181$>>8
      0031D9 34                   12434 	.db	00181$>>8
      0031DA 34                   12435 	.db	00181$>>8
      0031DB 32                   12436 	.db	00135$>>8
      0031DC 32                   12437 	.db	00140$>>8
      0031DD 32                   12438 	.db	00136$>>8
      0031DE 32                   12439 	.db	00141$>>8
      0031DF 34                   12440 	.db	00181$>>8
      0031E0 34                   12441 	.db	00181$>>8
      0031E1 34                   12442 	.db	00181$>>8
      0031E2 34                   12443 	.db	00181$>>8
      0031E3 33                   12444 	.db	00160$>>8
      0031E4 33                   12445 	.db	00161$>>8
      0031E5 33                   12446 	.db	00162$>>8
      0031E6 33                   12447 	.db	00163$>>8
      0031E7 33                   12448 	.db	00159$>>8
      0031E8 33                   12449 	.db	00164$>>8
      0031E9 34                   12450 	.db	00181$>>8
      0031EA 34                   12451 	.db	00181$>>8
      0031EB 33                   12452 	.db	00177$>>8
      0031EC 33                   12453 	.db	00178$>>8
      0031ED 34                   12454 	.db	00179$>>8
      0031EE 34                   12455 	.db	00180$>>8
                           00268C 12456 	C$easyax5043.c$1886$2$417 ==.
                                  12457 ;	..\COMMON\easyax5043.c:1886: case AXRADIO_MODE_OFF:
      0031EF                      12458 00129$:
                           00268C 12459 	C$easyax5043.c$1887$2$417 ==.
                                  12460 ;	..\COMMON\easyax5043.c:1887: return AXRADIO_ERR_NOERROR;
      0031EF 75 82 00         [24]12461 	mov	dpl,#0x00
      0031F2 02 34 AF         [24]12462 	ljmp	00183$
                           002692 12463 	C$easyax5043.c$1889$2$417 ==.
                                  12464 ;	..\COMMON\easyax5043.c:1889: case AXRADIO_MODE_DEEPSLEEP:
      0031F5                      12465 00130$:
                           002692 12466 	C$easyax5043.c$1890$2$417 ==.
                                  12467 ;	..\COMMON\easyax5043.c:1890: ax5043_enter_deepsleep();
      0031F5 12 40 64         [24]12468 	lcall	_ax5043_enter_deepsleep
                           002695 12469 	C$easyax5043.c$1891$2$417 ==.
                                  12470 ;	..\COMMON\easyax5043.c:1891: axradio_mode = AXRADIO_MODE_DEEPSLEEP;
      0031F8 75 08 02         [24]12471 	mov	_axradio_mode,#0x02
                           002698 12472 	C$easyax5043.c$1892$2$417 ==.
                                  12473 ;	..\COMMON\easyax5043.c:1892: return AXRADIO_ERR_NOERROR;
      0031FB 75 82 00         [24]12474 	mov	dpl,#0x00
      0031FE 02 34 AF         [24]12475 	ljmp	00183$
                           00269E 12476 	C$easyax5043.c$1894$2$417 ==.
                                  12477 ;	..\COMMON\easyax5043.c:1894: case AXRADIO_MODE_ASYNC_TRANSMIT:
      003201                      12478 00131$:
                           00269E 12479 	C$easyax5043.c$1895$2$417 ==.
                                  12480 ;	..\COMMON\easyax5043.c:1895: case AXRADIO_MODE_ACK_TRANSMIT:
      003201                      12481 00132$:
                           00269E 12482 	C$easyax5043.c$1896$2$417 ==.
                                  12483 ;	..\COMMON\easyax5043.c:1896: axradio_mode = mode;
      003201 8F 08            [24]12484 	mov	_axradio_mode,r7
                           0026A0 12485 	C$easyax5043.c$1897$2$417 ==.
                                  12486 ;	..\COMMON\easyax5043.c:1897: axradio_ack_seqnr = 0xff;
      003203 90 00 10         [24]12487 	mov	dptr,#_axradio_ack_seqnr
      003206 74 FF            [12]12488 	mov	a,#0xff
      003208 F0               [24]12489 	movx	@dptr,a
                           0026A6 12490 	C$easyax5043.c$1898$2$417 ==.
                                  12491 ;	..\COMMON\easyax5043.c:1898: ax5043_init_registers_tx();
      003209 12 0C 3C         [24]12492 	lcall	_ax5043_init_registers_tx
                           0026A9 12493 	C$easyax5043.c$1899$2$417 ==.
                                  12494 ;	..\COMMON\easyax5043.c:1899: return AXRADIO_ERR_NOERROR;
      00320C 75 82 00         [24]12495 	mov	dpl,#0x00
      00320F 02 34 AF         [24]12496 	ljmp	00183$
                           0026AF 12497 	C$easyax5043.c$1901$2$417 ==.
                                  12498 ;	..\COMMON\easyax5043.c:1901: case AXRADIO_MODE_WOR_TRANSMIT:
      003212                      12499 00133$:
                           0026AF 12500 	C$easyax5043.c$1902$2$417 ==.
                                  12501 ;	..\COMMON\easyax5043.c:1902: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      003212                      12502 00134$:
                           0026AF 12503 	C$easyax5043.c$1903$2$417 ==.
                                  12504 ;	..\COMMON\easyax5043.c:1903: axradio_mode = mode;
      003212 8F 08            [24]12505 	mov	_axradio_mode,r7
                           0026B1 12506 	C$easyax5043.c$1904$2$417 ==.
                                  12507 ;	..\COMMON\easyax5043.c:1904: axradio_ack_seqnr = 0xff;
      003214 90 00 10         [24]12508 	mov	dptr,#_axradio_ack_seqnr
      003217 74 FF            [12]12509 	mov	a,#0xff
      003219 F0               [24]12510 	movx	@dptr,a
                           0026B7 12511 	C$easyax5043.c$1905$2$417 ==.
                                  12512 ;	..\COMMON\easyax5043.c:1905: ax5043_init_registers_tx();
      00321A 12 0C 3C         [24]12513 	lcall	_ax5043_init_registers_tx
                           0026BA 12514 	C$easyax5043.c$1906$2$417 ==.
                                  12515 ;	..\COMMON\easyax5043.c:1906: return AXRADIO_ERR_NOERROR;
      00321D 75 82 00         [24]12516 	mov	dpl,#0x00
      003220 02 34 AF         [24]12517 	ljmp	00183$
                           0026C0 12518 	C$easyax5043.c$1908$2$417 ==.
                                  12519 ;	..\COMMON\easyax5043.c:1908: case AXRADIO_MODE_ASYNC_RECEIVE:
      003223                      12520 00135$:
                           0026C0 12521 	C$easyax5043.c$1909$2$417 ==.
                                  12522 ;	..\COMMON\easyax5043.c:1909: case AXRADIO_MODE_ACK_RECEIVE:
      003223                      12523 00136$:
                           0026C0 12524 	C$easyax5043.c$1910$2$417 ==.
                                  12525 ;	..\COMMON\easyax5043.c:1910: axradio_mode = mode;
      003223 8F 08            [24]12526 	mov	_axradio_mode,r7
                           0026C2 12527 	C$easyax5043.c$1911$2$417 ==.
                                  12528 ;	..\COMMON\easyax5043.c:1911: axradio_ack_seqnr = 0xff;
      003225 90 00 10         [24]12529 	mov	dptr,#_axradio_ack_seqnr
      003228 74 FF            [12]12530 	mov	a,#0xff
      00322A F0               [24]12531 	movx	@dptr,a
                           0026C8 12532 	C$easyax5043.c$1912$2$417 ==.
                                  12533 ;	..\COMMON\easyax5043.c:1912: ax5043_init_registers_rx();
      00322B 12 0C 43         [24]12534 	lcall	_ax5043_init_registers_rx
                           0026CB 12535 	C$easyax5043.c$1913$2$417 ==.
                                  12536 ;	..\COMMON\easyax5043.c:1913: ax5043_receiver_on_continuous();
      00322E 12 16 DC         [24]12537 	lcall	_ax5043_receiver_on_continuous
                           0026CE 12538 	C$easyax5043.c$1914$2$417 ==.
                                  12539 ;	..\COMMON\easyax5043.c:1914: enablecs:
      003231                      12540 00137$:
                           0026CE 12541 	C$easyax5043.c$1915$2$417 ==.
                                  12542 ;	..\COMMON\easyax5043.c:1915: if (axradio_phy_cs_enabled) {
      003231 90 55 C6         [24]12543 	mov	dptr,#_axradio_phy_cs_enabled
      003234 E4               [12]12544 	clr	a
      003235 93               [24]12545 	movc	a,@a+dptr
      003236 60 28            [24]12546 	jz	00139$
                           0026D5 12547 	C$easyax5043.c$1916$3$418 ==.
                                  12548 ;	..\COMMON\easyax5043.c:1916: wtimer_remove(&axradio_timer);
      003238 90 02 8A         [24]12549 	mov	dptr,#_axradio_timer
      00323B 12 4D D3         [24]12550 	lcall	_wtimer_remove
                           0026DB 12551 	C$easyax5043.c$1917$3$418 ==.
                                  12552 ;	..\COMMON\easyax5043.c:1917: axradio_timer.time = axradio_phy_cs_period;
      00323E 90 55 C4         [24]12553 	mov	dptr,#_axradio_phy_cs_period
      003241 E4               [12]12554 	clr	a
      003242 93               [24]12555 	movc	a,@a+dptr
      003243 FD               [12]12556 	mov	r5,a
      003244 74 01            [12]12557 	mov	a,#0x01
      003246 93               [24]12558 	movc	a,@a+dptr
      003247 FE               [12]12559 	mov	r6,a
      003248 7C 00            [12]12560 	mov	r4,#0x00
      00324A 7B 00            [12]12561 	mov	r3,#0x00
      00324C 90 02 8E         [24]12562 	mov	dptr,#(_axradio_timer + 0x0004)
      00324F ED               [12]12563 	mov	a,r5
      003250 F0               [24]12564 	movx	@dptr,a
      003251 EE               [12]12565 	mov	a,r6
      003252 A3               [24]12566 	inc	dptr
      003253 F0               [24]12567 	movx	@dptr,a
      003254 EC               [12]12568 	mov	a,r4
      003255 A3               [24]12569 	inc	dptr
      003256 F0               [24]12570 	movx	@dptr,a
      003257 EB               [12]12571 	mov	a,r3
      003258 A3               [24]12572 	inc	dptr
      003259 F0               [24]12573 	movx	@dptr,a
                           0026F7 12574 	C$easyax5043.c$1918$3$418 ==.
                                  12575 ;	..\COMMON\easyax5043.c:1918: wtimer0_addrelative(&axradio_timer);
      00325A 90 02 8A         [24]12576 	mov	dptr,#_axradio_timer
      00325D 12 46 BC         [24]12577 	lcall	_wtimer0_addrelative
      003260                      12578 00139$:
                           0026FD 12579 	C$easyax5043.c$1920$2$417 ==.
                                  12580 ;	..\COMMON\easyax5043.c:1920: return AXRADIO_ERR_NOERROR;
      003260 75 82 00         [24]12581 	mov	dpl,#0x00
      003263 02 34 AF         [24]12582 	ljmp	00183$
                           002703 12583 	C$easyax5043.c$1922$2$417 ==.
                                  12584 ;	..\COMMON\easyax5043.c:1922: case AXRADIO_MODE_WOR_RECEIVE:
      003266                      12585 00140$:
                           002703 12586 	C$easyax5043.c$1923$2$417 ==.
                                  12587 ;	..\COMMON\easyax5043.c:1923: case AXRADIO_MODE_WOR_ACK_RECEIVE:
      003266                      12588 00141$:
                           002703 12589 	C$easyax5043.c$1924$2$417 ==.
                                  12590 ;	..\COMMON\easyax5043.c:1924: axradio_ack_seqnr = 0xff;
      003266 90 00 10         [24]12591 	mov	dptr,#_axradio_ack_seqnr
      003269 74 FF            [12]12592 	mov	a,#0xff
      00326B F0               [24]12593 	movx	@dptr,a
                           002709 12594 	C$easyax5043.c$1925$2$417 ==.
                                  12595 ;	..\COMMON\easyax5043.c:1925: axradio_mode = mode;
      00326C 8F 08            [24]12596 	mov	_axradio_mode,r7
                           00270B 12597 	C$easyax5043.c$1926$2$417 ==.
                                  12598 ;	..\COMMON\easyax5043.c:1926: ax5043_init_registers_rx();
      00326E 12 0C 43         [24]12599 	lcall	_ax5043_init_registers_rx
                           00270E 12600 	C$easyax5043.c$1927$2$417 ==.
                                  12601 ;	..\COMMON\easyax5043.c:1927: ax5043_receiver_on_wor();
      003271 12 17 44         [24]12602 	lcall	_ax5043_receiver_on_wor
                           002711 12603 	C$easyax5043.c$1928$2$417 ==.
                                  12604 ;	..\COMMON\easyax5043.c:1928: return AXRADIO_ERR_NOERROR;
      003274 75 82 00         [24]12605 	mov	dpl,#0x00
      003277 02 34 AF         [24]12606 	ljmp	00183$
                           002717 12607 	C$easyax5043.c$1930$2$417 ==.
                                  12608 ;	..\COMMON\easyax5043.c:1930: case AXRADIO_MODE_STREAM_TRANSMIT:
      00327A                      12609 00142$:
                           002717 12610 	C$easyax5043.c$1931$2$417 ==.
                                  12611 ;	..\COMMON\easyax5043.c:1931: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC:
      00327A                      12612 00143$:
                           002717 12613 	C$easyax5043.c$1932$2$417 ==.
                                  12614 ;	..\COMMON\easyax5043.c:1932: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM:
      00327A                      12615 00144$:
                           002717 12616 	C$easyax5043.c$1933$2$417 ==.
                                  12617 ;	..\COMMON\easyax5043.c:1933: case AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB:
      00327A                      12618 00145$:
                           002717 12619 	C$easyax5043.c$1934$2$417 ==.
                                  12620 ;	..\COMMON\easyax5043.c:1934: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
      00327A                      12621 00146$:
                           002717 12622 	C$easyax5043.c$1935$2$417 ==.
                                  12623 ;	..\COMMON\easyax5043.c:1935: axradio_mode = mode;
      00327A 8F 08            [24]12624 	mov	_axradio_mode,r7
                           002719 12625 	C$easyax5043.c$1936$2$417 ==.
                                  12626 ;	..\COMMON\easyax5043.c:1936: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC ||
      00327C 74 18            [12]12627 	mov	a,#0x18
      00327E B5 08 02         [24]12628 	cjne	a,_axradio_mode,00306$
      003281 80 05            [24]12629 	sjmp	00147$
      003283                      12630 00306$:
                           002720 12631 	C$easyax5043.c$1937$2$417 ==.
                                  12632 ;	..\COMMON\easyax5043.c:1937: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB)
      003283 74 1A            [12]12633 	mov	a,#0x1a
      003285 B5 08 05         [24]12634 	cjne	a,_axradio_mode,00148$
      003288                      12635 00147$:
                           002725 12636 	C$easyax5043.c$1938$2$417 ==.
                                  12637 ;	..\COMMON\easyax5043.c:1938: AX5043_ENCODING = 0;
      003288 90 40 11         [24]12638 	mov	dptr,#_AX5043_ENCODING
      00328B E4               [12]12639 	clr	a
      00328C F0               [24]12640 	movx	@dptr,a
      00328D                      12641 00148$:
                           00272A 12642 	C$easyax5043.c$1939$2$417 ==.
                                  12643 ;	..\COMMON\easyax5043.c:1939: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM ||
      00328D 74 19            [12]12644 	mov	a,#0x19
      00328F B5 08 02         [24]12645 	cjne	a,_axradio_mode,00309$
      003292 80 05            [24]12646 	sjmp	00150$
      003294                      12647 00309$:
                           002731 12648 	C$easyax5043.c$1940$2$417 ==.
                                  12649 ;	..\COMMON\easyax5043.c:1940: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
      003294 74 1B            [12]12650 	mov	a,#0x1b
      003296 B5 08 06         [24]12651 	cjne	a,_axradio_mode,00151$
      003299                      12652 00150$:
                           002736 12653 	C$easyax5043.c$1941$2$417 ==.
                                  12654 ;	..\COMMON\easyax5043.c:1941: AX5043_ENCODING = 4;
      003299 90 40 11         [24]12655 	mov	dptr,#_AX5043_ENCODING
      00329C 74 04            [12]12656 	mov	a,#0x04
      00329E F0               [24]12657 	movx	@dptr,a
      00329F                      12658 00151$:
                           00273C 12659 	C$easyax5043.c$1942$2$417 ==.
                                  12660 ;	..\COMMON\easyax5043.c:1942: if (axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_UNENC_LSB ||
      00329F 74 1A            [12]12661 	mov	a,#0x1a
      0032A1 B5 08 02         [24]12662 	cjne	a,_axradio_mode,00312$
      0032A4 80 05            [24]12663 	sjmp	00153$
      0032A6                      12664 00312$:
                           002743 12665 	C$easyax5043.c$1943$2$417 ==.
                                  12666 ;	..\COMMON\easyax5043.c:1943: axradio_mode == AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB)
      0032A6 74 1B            [12]12667 	mov	a,#0x1b
      0032A8 B5 08 09         [24]12668 	cjne	a,_axradio_mode,00154$
      0032AB                      12669 00153$:
                           002748 12670 	C$easyax5043.c$1944$2$417 ==.
                                  12671 ;	..\COMMON\easyax5043.c:1944: AX5043_PKTADDRCFG &= 0x7F;
      0032AB 90 42 00         [24]12672 	mov	dptr,#_AX5043_PKTADDRCFG
      0032AE E0               [24]12673 	movx	a,@dptr
      0032AF FE               [12]12674 	mov	r6,a
      0032B0 74 7F            [12]12675 	mov	a,#0x7f
      0032B2 5E               [12]12676 	anl	a,r6
      0032B3 F0               [24]12677 	movx	@dptr,a
      0032B4                      12678 00154$:
                           002751 12679 	C$easyax5043.c$1945$2$417 ==.
                                  12680 ;	..\COMMON\easyax5043.c:1945: ax5043_init_registers_tx();
      0032B4 12 0C 3C         [24]12681 	lcall	_ax5043_init_registers_tx
                           002754 12682 	C$easyax5043.c$1946$2$417 ==.
                                  12683 ;	..\COMMON\easyax5043.c:1946: AX5043_FRAMING = 0;
      0032B7 90 40 12         [24]12684 	mov	dptr,#_AX5043_FRAMING
      0032BA E4               [12]12685 	clr	a
      0032BB F0               [24]12686 	movx	@dptr,a
                           002759 12687 	C$easyax5043.c$1947$2$417 ==.
                                  12688 ;	..\COMMON\easyax5043.c:1947: ax5043_prepare_tx();
      0032BC 12 18 05         [24]12689 	lcall	_ax5043_prepare_tx
                           00275C 12690 	C$easyax5043.c$1948$2$417 ==.
                                  12691 ;	..\COMMON\easyax5043.c:1948: axradio_trxstate = trxstate_txstream_xtalwait;
      0032BF 75 09 0F         [24]12692 	mov	_axradio_trxstate,#0x0f
                           00275F 12693 	C$easyax5043.c$1949$2$417 ==.
                                  12694 ;	..\COMMON\easyax5043.c:1949: while (!(AX5043_POWSTAT & 0x08)) {}; // wait for modem vdd so writing the FIFO is safe
      0032C2                      12695 00156$:
      0032C2 90 40 03         [24]12696 	mov	dptr,#_AX5043_POWSTAT
      0032C5 E0               [24]12697 	movx	a,@dptr
      0032C6 FE               [12]12698 	mov	r6,a
      0032C7 30 E3 F8         [24]12699 	jnb	acc.3,00156$
                           002767 12700 	C$easyax5043.c$1950$2$417 ==.
                                  12701 ;	..\COMMON\easyax5043.c:1950: AX5043_FIFOSTAT = 3; // clear FIFO data & flags (prevent transmitting anything left over in the FIFO, this has no effect if the FIFO is not powerered, in this case it is reset any way)
      0032CA 90 40 28         [24]12702 	mov	dptr,#_AX5043_FIFOSTAT
      0032CD 74 03            [12]12703 	mov	a,#0x03
      0032CF F0               [24]12704 	movx	@dptr,a
                           00276D 12705 	C$easyax5043.c$1951$2$417 ==.
                                  12706 ;	..\COMMON\easyax5043.c:1951: AX5043_RADIOEVENTREQ0; // make sure REVRDONE bit is cleared, so it is a reliable indicator that the packet is out
      0032D0 90 40 0F         [24]12707 	mov	dptr,#_AX5043_RADIOEVENTREQ0
      0032D3 E0               [24]12708 	movx	a,@dptr
                           002771 12709 	C$easyax5043.c$1952$2$417 ==.
                                  12710 ;	..\COMMON\easyax5043.c:1952: update_timeanchor();
      0032D4 12 0B 63         [24]12711 	lcall	_update_timeanchor
                           002774 12712 	C$easyax5043.c$1953$2$417 ==.
                                  12713 ;	..\COMMON\easyax5043.c:1953: wtimer_remove_callback(&axradio_cb_transmitdata.cb);
      0032D7 90 02 80         [24]12714 	mov	dptr,#_axradio_cb_transmitdata
      0032DA 12 51 BE         [24]12715 	lcall	_wtimer_remove_callback
                           00277A 12716 	C$easyax5043.c$1954$2$417 ==.
                                  12717 ;	..\COMMON\easyax5043.c:1954: axradio_cb_transmitdata.st.error = AXRADIO_ERR_NOERROR;
      0032DD 90 02 85         [24]12718 	mov	dptr,#(_axradio_cb_transmitdata + 0x0005)
      0032E0 E4               [12]12719 	clr	a
      0032E1 F0               [24]12720 	movx	@dptr,a
                           00277F 12721 	C$easyax5043.c$1955$2$417 ==.
                                  12722 ;	..\COMMON\easyax5043.c:1955: axradio_cb_transmitdata.st.time.t = axradio_timeanchor.radiotimer;
      0032E2 90 00 1B         [24]12723 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      0032E5 E0               [24]12724 	movx	a,@dptr
      0032E6 FB               [12]12725 	mov	r3,a
      0032E7 A3               [24]12726 	inc	dptr
      0032E8 E0               [24]12727 	movx	a,@dptr
      0032E9 FC               [12]12728 	mov	r4,a
      0032EA A3               [24]12729 	inc	dptr
      0032EB E0               [24]12730 	movx	a,@dptr
      0032EC FD               [12]12731 	mov	r5,a
      0032ED A3               [24]12732 	inc	dptr
      0032EE E0               [24]12733 	movx	a,@dptr
      0032EF FE               [12]12734 	mov	r6,a
      0032F0 90 02 86         [24]12735 	mov	dptr,#(_axradio_cb_transmitdata + 0x0006)
      0032F3 EB               [12]12736 	mov	a,r3
      0032F4 F0               [24]12737 	movx	@dptr,a
      0032F5 EC               [12]12738 	mov	a,r4
      0032F6 A3               [24]12739 	inc	dptr
      0032F7 F0               [24]12740 	movx	@dptr,a
      0032F8 ED               [12]12741 	mov	a,r5
      0032F9 A3               [24]12742 	inc	dptr
      0032FA F0               [24]12743 	movx	@dptr,a
      0032FB EE               [12]12744 	mov	a,r6
      0032FC A3               [24]12745 	inc	dptr
      0032FD F0               [24]12746 	movx	@dptr,a
                           00279B 12747 	C$easyax5043.c$1956$2$417 ==.
                                  12748 ;	..\COMMON\easyax5043.c:1956: wtimer_add_callback(&axradio_cb_transmitdata.cb);
      0032FE 90 02 80         [24]12749 	mov	dptr,#_axradio_cb_transmitdata
      003301 12 46 A2         [24]12750 	lcall	_wtimer_add_callback
                           0027A1 12751 	C$easyax5043.c$1957$2$417 ==.
                                  12752 ;	..\COMMON\easyax5043.c:1957: return AXRADIO_ERR_NOERROR;
      003304 75 82 00         [24]12753 	mov	dpl,#0x00
      003307 02 34 AF         [24]12754 	ljmp	00183$
                           0027A7 12755 	C$easyax5043.c$1959$2$417 ==.
                                  12756 ;	..\COMMON\easyax5043.c:1959: case AXRADIO_MODE_STREAM_RECEIVE:
      00330A                      12757 00159$:
                           0027A7 12758 	C$easyax5043.c$1960$2$417 ==.
                                  12759 ;	..\COMMON\easyax5043.c:1960: case AXRADIO_MODE_STREAM_RECEIVE_UNENC:
      00330A                      12760 00160$:
                           0027A7 12761 	C$easyax5043.c$1961$2$417 ==.
                                  12762 ;	..\COMMON\easyax5043.c:1961: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM:
      00330A                      12763 00161$:
                           0027A7 12764 	C$easyax5043.c$1962$2$417 ==.
                                  12765 ;	..\COMMON\easyax5043.c:1962: case AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB:
      00330A                      12766 00162$:
                           0027A7 12767 	C$easyax5043.c$1963$2$417 ==.
                                  12768 ;	..\COMMON\easyax5043.c:1963: case AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB:
      00330A                      12769 00163$:
                           0027A7 12770 	C$easyax5043.c$1964$2$417 ==.
                                  12771 ;	..\COMMON\easyax5043.c:1964: case AXRADIO_MODE_STREAM_RECEIVE_DATAPIN:
      00330A                      12772 00164$:
                           0027A7 12773 	C$easyax5043.c$1965$2$417 ==.
                                  12774 ;	..\COMMON\easyax5043.c:1965: axradio_mode = mode;
      00330A 8F 08            [24]12775 	mov	_axradio_mode,r7
                           0027A9 12776 	C$easyax5043.c$1966$2$417 ==.
                                  12777 ;	..\COMMON\easyax5043.c:1966: ax5043_init_registers_rx();
      00330C 12 0C 43         [24]12778 	lcall	_ax5043_init_registers_rx
                           0027AC 12779 	C$easyax5043.c$1967$2$417 ==.
                                  12780 ;	..\COMMON\easyax5043.c:1967: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC ||
      00330F 74 28            [12]12781 	mov	a,#0x28
      003311 B5 08 02         [24]12782 	cjne	a,_axradio_mode,00316$
      003314 80 05            [24]12783 	sjmp	00165$
      003316                      12784 00316$:
                           0027B3 12785 	C$easyax5043.c$1968$2$417 ==.
                                  12786 ;	..\COMMON\easyax5043.c:1968: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB)
      003316 74 2A            [12]12787 	mov	a,#0x2a
      003318 B5 08 05         [24]12788 	cjne	a,_axradio_mode,00166$
      00331B                      12789 00165$:
                           0027B8 12790 	C$easyax5043.c$1969$2$417 ==.
                                  12791 ;	..\COMMON\easyax5043.c:1969: AX5043_ENCODING = 0;
      00331B 90 40 11         [24]12792 	mov	dptr,#_AX5043_ENCODING
      00331E E4               [12]12793 	clr	a
      00331F F0               [24]12794 	movx	@dptr,a
      003320                      12795 00166$:
                           0027BD 12796 	C$easyax5043.c$1970$2$417 ==.
                                  12797 ;	..\COMMON\easyax5043.c:1970: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM ||
      003320 74 29            [12]12798 	mov	a,#0x29
      003322 B5 08 02         [24]12799 	cjne	a,_axradio_mode,00319$
      003325 80 05            [24]12800 	sjmp	00168$
      003327                      12801 00319$:
                           0027C4 12802 	C$easyax5043.c$1971$2$417 ==.
                                  12803 ;	..\COMMON\easyax5043.c:1971: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
      003327 74 2B            [12]12804 	mov	a,#0x2b
      003329 B5 08 06         [24]12805 	cjne	a,_axradio_mode,00169$
      00332C                      12806 00168$:
                           0027C9 12807 	C$easyax5043.c$1972$2$417 ==.
                                  12808 ;	..\COMMON\easyax5043.c:1972: AX5043_ENCODING = 4;
      00332C 90 40 11         [24]12809 	mov	dptr,#_AX5043_ENCODING
      00332F 74 04            [12]12810 	mov	a,#0x04
      003331 F0               [24]12811 	movx	@dptr,a
      003332                      12812 00169$:
                           0027CF 12813 	C$easyax5043.c$1973$2$417 ==.
                                  12814 ;	..\COMMON\easyax5043.c:1973: if (axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_UNENC_LSB ||
      003332 74 2A            [12]12815 	mov	a,#0x2a
      003334 B5 08 02         [24]12816 	cjne	a,_axradio_mode,00322$
      003337 80 05            [24]12817 	sjmp	00171$
      003339                      12818 00322$:
                           0027D6 12819 	C$easyax5043.c$1974$2$417 ==.
                                  12820 ;	..\COMMON\easyax5043.c:1974: axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_SCRAM_LSB)
      003339 74 2B            [12]12821 	mov	a,#0x2b
      00333B B5 08 09         [24]12822 	cjne	a,_axradio_mode,00172$
      00333E                      12823 00171$:
                           0027DB 12824 	C$easyax5043.c$1975$2$417 ==.
                                  12825 ;	..\COMMON\easyax5043.c:1975: AX5043_PKTADDRCFG &= 0x7F;
      00333E 90 42 00         [24]12826 	mov	dptr,#_AX5043_PKTADDRCFG
      003341 E0               [24]12827 	movx	a,@dptr
      003342 FE               [12]12828 	mov	r6,a
      003343 74 7F            [12]12829 	mov	a,#0x7f
      003345 5E               [12]12830 	anl	a,r6
      003346 F0               [24]12831 	movx	@dptr,a
      003347                      12832 00172$:
                           0027E4 12833 	C$easyax5043.c$1976$2$417 ==.
                                  12834 ;	..\COMMON\easyax5043.c:1976: AX5043_FRAMING = 0;
      003347 90 40 12         [24]12835 	mov	dptr,#_AX5043_FRAMING
      00334A E4               [12]12836 	clr	a
      00334B F0               [24]12837 	movx	@dptr,a
                           0027E9 12838 	C$easyax5043.c$1977$2$417 ==.
                                  12839 ;	..\COMMON\easyax5043.c:1977: AX5043_PKTCHUNKSIZE = 8; // 64 byte
      00334C 90 42 30         [24]12840 	mov	dptr,#_AX5043_PKTCHUNKSIZE
      00334F 74 08            [12]12841 	mov	a,#0x08
      003351 F0               [24]12842 	movx	@dptr,a
                           0027EF 12843 	C$easyax5043.c$1978$2$417 ==.
                                  12844 ;	..\COMMON\easyax5043.c:1978: AX5043_RXPARAMSETS = 0x00;
      003352 90 41 17         [24]12845 	mov	dptr,#_AX5043_RXPARAMSETS
      003355 E4               [12]12846 	clr	a
      003356 F0               [24]12847 	movx	@dptr,a
                           0027F4 12848 	C$easyax5043.c$1979$2$417 ==.
                                  12849 ;	..\COMMON\easyax5043.c:1979: if( axradio_mode == AXRADIO_MODE_STREAM_RECEIVE_DATAPIN )
      003357 74 2D            [12]12850 	mov	a,#0x2d
      003359 B5 08 0D         [24]12851 	cjne	a,_axradio_mode,00175$
                           0027F9 12852 	C$easyax5043.c$1981$3$420 ==.
                                  12853 ;	..\COMMON\easyax5043.c:1981: ax5043_set_registers_rxcont_singleparamset();
      00335C 12 06 77         [24]12854 	lcall	_ax5043_set_registers_rxcont_singleparamset
                           0027FC 12855 	C$easyax5043.c$1982$3$420 ==.
                                  12856 ;	..\COMMON\easyax5043.c:1982: AX5043_PINFUNCDATA = 0x04;
      00335F 90 40 23         [24]12857 	mov	dptr,#_AX5043_PINFUNCDATA
      003362 74 04            [12]12858 	mov	a,#0x04
      003364 F0               [24]12859 	movx	@dptr,a
                           002802 12860 	C$easyax5043.c$1983$3$420 ==.
                                  12861 ;	..\COMMON\easyax5043.c:1983: AX5043_PINFUNCDCLK = 0x04;
      003365 90 40 22         [24]12862 	mov	dptr,#_AX5043_PINFUNCDCLK
      003368 F0               [24]12863 	movx	@dptr,a
      003369                      12864 00175$:
                           002806 12865 	C$easyax5043.c$1985$2$417 ==.
                                  12866 ;	..\COMMON\easyax5043.c:1985: ax5043_receiver_on_continuous();
      003369 12 16 DC         [24]12867 	lcall	_ax5043_receiver_on_continuous
                           002809 12868 	C$easyax5043.c$1986$2$417 ==.
                                  12869 ;	..\COMMON\easyax5043.c:1986: goto enablecs;
      00336C 02 32 31         [24]12870 	ljmp	00137$
                           00280C 12871 	C$easyax5043.c$1988$2$417 ==.
                                  12872 ;	..\COMMON\easyax5043.c:1988: case AXRADIO_MODE_CW_TRANSMIT:
      00336F                      12873 00176$:
                           00280C 12874 	C$easyax5043.c$1989$2$417 ==.
                                  12875 ;	..\COMMON\easyax5043.c:1989: axradio_mode = AXRADIO_MODE_CW_TRANSMIT;
      00336F 75 08 03         [24]12876 	mov	_axradio_mode,#0x03
                           00280F 12877 	C$easyax5043.c$1990$2$417 ==.
                                  12878 ;	..\COMMON\easyax5043.c:1990: ax5043_init_registers_tx();
      003372 12 0C 3C         [24]12879 	lcall	_ax5043_init_registers_tx
                           002812 12880 	C$easyax5043.c$1991$2$417 ==.
                                  12881 ;	..\COMMON\easyax5043.c:1991: AX5043_MODULATION = 8;   // Set an FSK mode
      003375 90 40 10         [24]12882 	mov	dptr,#_AX5043_MODULATION
      003378 74 08            [12]12883 	mov	a,#0x08
      00337A F0               [24]12884 	movx	@dptr,a
                           002818 12885 	C$easyax5043.c$1992$2$417 ==.
                                  12886 ;	..\COMMON\easyax5043.c:1992: AX5043_FSKDEV2 = 0x00;
      00337B 90 41 61         [24]12887 	mov	dptr,#_AX5043_FSKDEV2
      00337E E4               [12]12888 	clr	a
      00337F F0               [24]12889 	movx	@dptr,a
                           00281D 12890 	C$easyax5043.c$1993$2$417 ==.
                                  12891 ;	..\COMMON\easyax5043.c:1993: AX5043_FSKDEV1 = 0x00;
      003380 90 41 62         [24]12892 	mov	dptr,#_AX5043_FSKDEV1
      003383 F0               [24]12893 	movx	@dptr,a
                           002821 12894 	C$easyax5043.c$1994$2$417 ==.
                                  12895 ;	..\COMMON\easyax5043.c:1994: AX5043_FSKDEV0 = 0x00;
      003384 90 41 63         [24]12896 	mov	dptr,#_AX5043_FSKDEV0
      003387 F0               [24]12897 	movx	@dptr,a
                           002825 12898 	C$easyax5043.c$1995$2$417 ==.
                                  12899 ;	..\COMMON\easyax5043.c:1995: AX5043_TXRATE2 = 0x00;
      003388 90 41 65         [24]12900 	mov	dptr,#_AX5043_TXRATE2
      00338B F0               [24]12901 	movx	@dptr,a
                           002829 12902 	C$easyax5043.c$1996$2$417 ==.
                                  12903 ;	..\COMMON\easyax5043.c:1996: AX5043_TXRATE1 = 0x00;
      00338C 90 41 66         [24]12904 	mov	dptr,#_AX5043_TXRATE1
      00338F F0               [24]12905 	movx	@dptr,a
                           00282D 12906 	C$easyax5043.c$1997$2$417 ==.
                                  12907 ;	..\COMMON\easyax5043.c:1997: AX5043_TXRATE0 = 0x01;
      003390 90 41 67         [24]12908 	mov	dptr,#_AX5043_TXRATE0
      003393 04               [12]12909 	inc	a
      003394 F0               [24]12910 	movx	@dptr,a
                           002832 12911 	C$easyax5043.c$1998$2$417 ==.
                                  12912 ;	..\COMMON\easyax5043.c:1998: AX5043_PINFUNCDATA = 0x04;
      003395 90 40 23         [24]12913 	mov	dptr,#_AX5043_PINFUNCDATA
      003398 74 04            [12]12914 	mov	a,#0x04
      00339A F0               [24]12915 	movx	@dptr,a
                           002838 12916 	C$easyax5043.c$1999$2$417 ==.
                                  12917 ;	..\COMMON\easyax5043.c:1999: AX5043_PWRMODE = AX5043_PWRSTATE_FIFO_ON;
      00339B 90 40 02         [24]12918 	mov	dptr,#_AX5043_PWRMODE
      00339E 74 07            [12]12919 	mov	a,#0x07
      0033A0 F0               [24]12920 	movx	@dptr,a
                           00283E 12921 	C$easyax5043.c$2000$2$417 ==.
                                  12922 ;	..\COMMON\easyax5043.c:2000: axradio_trxstate = trxstate_txcw_xtalwait;
      0033A1 75 09 0E         [24]12923 	mov	_axradio_trxstate,#0x0e
                           002841 12924 	C$easyax5043.c$2001$2$417 ==.
                                  12925 ;	..\COMMON\easyax5043.c:2001: AX5043_IRQMASK0 = 0x00;
      0033A4 90 40 07         [24]12926 	mov	dptr,#_AX5043_IRQMASK0
      0033A7 E4               [12]12927 	clr	a
      0033A8 F0               [24]12928 	movx	@dptr,a
                           002846 12929 	C$easyax5043.c$2002$2$417 ==.
                                  12930 ;	..\COMMON\easyax5043.c:2002: AX5043_IRQMASK1 = 0x01; // enable xtal ready interrupt
      0033A9 90 40 06         [24]12931 	mov	dptr,#_AX5043_IRQMASK1
      0033AC 04               [12]12932 	inc	a
      0033AD F0               [24]12933 	movx	@dptr,a
                           00284B 12934 	C$easyax5043.c$2003$2$417 ==.
                                  12935 ;	..\COMMON\easyax5043.c:2003: return AXRADIO_ERR_NOERROR;
      0033AE 75 82 00         [24]12936 	mov	dpl,#0x00
      0033B1 02 34 AF         [24]12937 	ljmp	00183$
                           002851 12938 	C$easyax5043.c$2005$2$417 ==.
                                  12939 ;	..\COMMON\easyax5043.c:2005: case AXRADIO_MODE_SYNC_MASTER:
      0033B4                      12940 00177$:
                           002851 12941 	C$easyax5043.c$2006$2$417 ==.
                                  12942 ;	..\COMMON\easyax5043.c:2006: case AXRADIO_MODE_SYNC_ACK_MASTER:
      0033B4                      12943 00178$:
                           002851 12944 	C$easyax5043.c$2007$2$417 ==.
                                  12945 ;	..\COMMON\easyax5043.c:2007: axradio_mode = mode;
      0033B4 8F 08            [24]12946 	mov	_axradio_mode,r7
                           002853 12947 	C$easyax5043.c$2008$2$417 ==.
                                  12948 ;	..\COMMON\easyax5043.c:2008: axradio_syncstate = syncstate_master_normal;
      0033B6 90 00 05         [24]12949 	mov	dptr,#_axradio_syncstate
      0033B9 74 03            [12]12950 	mov	a,#0x03
      0033BB F0               [24]12951 	movx	@dptr,a
                           002859 12952 	C$easyax5043.c$2010$2$417 ==.
                                  12953 ;	..\COMMON\easyax5043.c:2010: wtimer_remove(&axradio_timer);
      0033BC 90 02 8A         [24]12954 	mov	dptr,#_axradio_timer
      0033BF 12 4D D3         [24]12955 	lcall	_wtimer_remove
                           00285F 12956 	C$easyax5043.c$2011$2$417 ==.
                                  12957 ;	..\COMMON\easyax5043.c:2011: axradio_timer.time = 2;
      0033C2 90 02 8E         [24]12958 	mov	dptr,#(_axradio_timer + 0x0004)
      0033C5 74 02            [12]12959 	mov	a,#0x02
      0033C7 F0               [24]12960 	movx	@dptr,a
      0033C8 E4               [12]12961 	clr	a
      0033C9 A3               [24]12962 	inc	dptr
      0033CA F0               [24]12963 	movx	@dptr,a
      0033CB A3               [24]12964 	inc	dptr
      0033CC F0               [24]12965 	movx	@dptr,a
      0033CD A3               [24]12966 	inc	dptr
      0033CE F0               [24]12967 	movx	@dptr,a
                           00286C 12968 	C$easyax5043.c$2012$2$417 ==.
                                  12969 ;	..\COMMON\easyax5043.c:2012: wtimer0_addrelative(&axradio_timer);
      0033CF 90 02 8A         [24]12970 	mov	dptr,#_axradio_timer
      0033D2 12 46 BC         [24]12971 	lcall	_wtimer0_addrelative
                           002872 12972 	C$easyax5043.c$2013$2$417 ==.
                                  12973 ;	..\COMMON\easyax5043.c:2013: axradio_sync_time = axradio_timer.time;
      0033D5 90 02 8E         [24]12974 	mov	dptr,#(_axradio_timer + 0x0004)
      0033D8 E0               [24]12975 	movx	a,@dptr
      0033D9 FB               [12]12976 	mov	r3,a
      0033DA A3               [24]12977 	inc	dptr
      0033DB E0               [24]12978 	movx	a,@dptr
      0033DC FC               [12]12979 	mov	r4,a
      0033DD A3               [24]12980 	inc	dptr
      0033DE E0               [24]12981 	movx	a,@dptr
      0033DF FD               [12]12982 	mov	r5,a
      0033E0 A3               [24]12983 	inc	dptr
      0033E1 E0               [24]12984 	movx	a,@dptr
      0033E2 FE               [12]12985 	mov	r6,a
      0033E3 90 00 11         [24]12986 	mov	dptr,#_axradio_sync_time
      0033E6 EB               [12]12987 	mov	a,r3
      0033E7 F0               [24]12988 	movx	@dptr,a
      0033E8 EC               [12]12989 	mov	a,r4
      0033E9 A3               [24]12990 	inc	dptr
      0033EA F0               [24]12991 	movx	@dptr,a
      0033EB ED               [12]12992 	mov	a,r5
      0033EC A3               [24]12993 	inc	dptr
      0033ED F0               [24]12994 	movx	@dptr,a
      0033EE EE               [12]12995 	mov	a,r6
      0033EF A3               [24]12996 	inc	dptr
      0033F0 F0               [24]12997 	movx	@dptr,a
                           00288E 12998 	C$easyax5043.c$2014$2$417 ==.
                                  12999 ;	..\COMMON\easyax5043.c:2014: axradio_sync_addtime(axradio_sync_xoscstartup);
      0033F1 90 55 F5         [24]13000 	mov	dptr,#_axradio_sync_xoscstartup
      0033F4 E4               [12]13001 	clr	a
      0033F5 93               [24]13002 	movc	a,@a+dptr
      0033F6 FB               [12]13003 	mov	r3,a
      0033F7 74 01            [12]13004 	mov	a,#0x01
      0033F9 93               [24]13005 	movc	a,@a+dptr
      0033FA FC               [12]13006 	mov	r4,a
      0033FB 74 02            [12]13007 	mov	a,#0x02
      0033FD 93               [24]13008 	movc	a,@a+dptr
      0033FE FD               [12]13009 	mov	r5,a
      0033FF 74 03            [12]13010 	mov	a,#0x03
      003401 93               [24]13011 	movc	a,@a+dptr
      003402 8B 82            [24]13012 	mov	dpl,r3
      003404 8C 83            [24]13013 	mov	dph,r4
      003406 8D F0            [24]13014 	mov	b,r5
      003408 12 19 D6         [24]13015 	lcall	_axradio_sync_addtime
                           0028A8 13016 	C$easyax5043.c$2015$2$417 ==.
                                  13017 ;	..\COMMON\easyax5043.c:2015: return AXRADIO_ERR_NOERROR;
      00340B 75 82 00         [24]13018 	mov	dpl,#0x00
      00340E 02 34 AF         [24]13019 	ljmp	00183$
                           0028AE 13020 	C$easyax5043.c$2017$2$417 ==.
                                  13021 ;	..\COMMON\easyax5043.c:2017: case AXRADIO_MODE_SYNC_SLAVE:
      003411                      13022 00179$:
                           0028AE 13023 	C$easyax5043.c$2018$2$417 ==.
                                  13024 ;	..\COMMON\easyax5043.c:2018: case AXRADIO_MODE_SYNC_ACK_SLAVE:
      003411                      13025 00180$:
                           0028AE 13026 	C$easyax5043.c$2019$2$417 ==.
                                  13027 ;	..\COMMON\easyax5043.c:2019: axradio_mode = mode;
      003411 8F 08            [24]13028 	mov	_axradio_mode,r7
                           0028B0 13029 	C$easyax5043.c$2020$2$417 ==.
                                  13030 ;	..\COMMON\easyax5043.c:2020: ax5043_init_registers_rx();
      003413 12 0C 43         [24]13031 	lcall	_ax5043_init_registers_rx
                           0028B3 13032 	C$easyax5043.c$2021$2$417 ==.
                                  13033 ;	..\COMMON\easyax5043.c:2021: ax5043_receiver_on_continuous();
      003416 12 16 DC         [24]13034 	lcall	_ax5043_receiver_on_continuous
                           0028B6 13035 	C$easyax5043.c$2022$2$417 ==.
                                  13036 ;	..\COMMON\easyax5043.c:2022: axradio_syncstate = syncstate_slave_synchunt;
      003419 90 00 05         [24]13037 	mov	dptr,#_axradio_syncstate
      00341C 74 06            [12]13038 	mov	a,#0x06
      00341E F0               [24]13039 	movx	@dptr,a
                           0028BC 13040 	C$easyax5043.c$2023$2$417 ==.
                                  13041 ;	..\COMMON\easyax5043.c:2023: wtimer_remove(&axradio_timer);
      00341F 90 02 8A         [24]13042 	mov	dptr,#_axradio_timer
      003422 12 4D D3         [24]13043 	lcall	_wtimer_remove
                           0028C2 13044 	C$easyax5043.c$2024$2$417 ==.
                                  13045 ;	..\COMMON\easyax5043.c:2024: axradio_timer.time = axradio_sync_slave_initialsyncwindow;
      003425 90 55 FD         [24]13046 	mov	dptr,#_axradio_sync_slave_initialsyncwindow
      003428 E4               [12]13047 	clr	a
      003429 93               [24]13048 	movc	a,@a+dptr
      00342A FC               [12]13049 	mov	r4,a
      00342B 74 01            [12]13050 	mov	a,#0x01
      00342D 93               [24]13051 	movc	a,@a+dptr
      00342E FD               [12]13052 	mov	r5,a
      00342F 74 02            [12]13053 	mov	a,#0x02
      003431 93               [24]13054 	movc	a,@a+dptr
      003432 FE               [12]13055 	mov	r6,a
      003433 74 03            [12]13056 	mov	a,#0x03
      003435 93               [24]13057 	movc	a,@a+dptr
      003436 FF               [12]13058 	mov	r7,a
      003437 90 02 8E         [24]13059 	mov	dptr,#(_axradio_timer + 0x0004)
      00343A EC               [12]13060 	mov	a,r4
      00343B F0               [24]13061 	movx	@dptr,a
      00343C ED               [12]13062 	mov	a,r5
      00343D A3               [24]13063 	inc	dptr
      00343E F0               [24]13064 	movx	@dptr,a
      00343F EE               [12]13065 	mov	a,r6
      003440 A3               [24]13066 	inc	dptr
      003441 F0               [24]13067 	movx	@dptr,a
      003442 EF               [12]13068 	mov	a,r7
      003443 A3               [24]13069 	inc	dptr
      003444 F0               [24]13070 	movx	@dptr,a
                           0028E2 13071 	C$easyax5043.c$2025$2$417 ==.
                                  13072 ;	..\COMMON\easyax5043.c:2025: wtimer0_addrelative(&axradio_timer);
      003445 90 02 8A         [24]13073 	mov	dptr,#_axradio_timer
      003448 12 46 BC         [24]13074 	lcall	_wtimer0_addrelative
                           0028E8 13075 	C$easyax5043.c$2026$2$417 ==.
                                  13076 ;	..\COMMON\easyax5043.c:2026: axradio_sync_time = axradio_timer.time;
      00344B 90 02 8E         [24]13077 	mov	dptr,#(_axradio_timer + 0x0004)
      00344E E0               [24]13078 	movx	a,@dptr
      00344F FC               [12]13079 	mov	r4,a
      003450 A3               [24]13080 	inc	dptr
      003451 E0               [24]13081 	movx	a,@dptr
      003452 FD               [12]13082 	mov	r5,a
      003453 A3               [24]13083 	inc	dptr
      003454 E0               [24]13084 	movx	a,@dptr
      003455 FE               [12]13085 	mov	r6,a
      003456 A3               [24]13086 	inc	dptr
      003457 E0               [24]13087 	movx	a,@dptr
      003458 FF               [12]13088 	mov	r7,a
      003459 90 00 11         [24]13089 	mov	dptr,#_axradio_sync_time
      00345C EC               [12]13090 	mov	a,r4
      00345D F0               [24]13091 	movx	@dptr,a
      00345E ED               [12]13092 	mov	a,r5
      00345F A3               [24]13093 	inc	dptr
      003460 F0               [24]13094 	movx	@dptr,a
      003461 EE               [12]13095 	mov	a,r6
      003462 A3               [24]13096 	inc	dptr
      003463 F0               [24]13097 	movx	@dptr,a
      003464 EF               [12]13098 	mov	a,r7
      003465 A3               [24]13099 	inc	dptr
      003466 F0               [24]13100 	movx	@dptr,a
                           002904 13101 	C$easyax5043.c$2027$2$417 ==.
                                  13102 ;	..\COMMON\easyax5043.c:2027: wtimer_remove_callback(&axradio_cb_receive.cb);
      003467 90 02 33         [24]13103 	mov	dptr,#_axradio_cb_receive
      00346A 12 51 BE         [24]13104 	lcall	_wtimer_remove_callback
                           00290A 13105 	C$easyax5043.c$2028$2$417 ==.
                                  13106 ;	..\COMMON\easyax5043.c:2028: memset_xdata(&axradio_cb_receive.st, 0, sizeof(axradio_cb_receive.st));
      00346D 75 23 00         [24]13107 	mov	_memset_PARM_2,#0x00
      003470 75 24 1E         [24]13108 	mov	_memset_PARM_3,#0x1e
      003473 75 25 00         [24]13109 	mov	(_memset_PARM_3 + 1),#0x00
      003476 90 02 37         [24]13110 	mov	dptr,#(_axradio_cb_receive + 0x0004)
      003479 75 F0 00         [24]13111 	mov	b,#0x00
      00347C 12 46 2E         [24]13112 	lcall	_memset
                           00291C 13113 	C$easyax5043.c$2029$2$417 ==.
                                  13114 ;	..\COMMON\easyax5043.c:2029: axradio_cb_receive.st.time.t = axradio_timeanchor.radiotimer;
      00347F 90 00 1B         [24]13115 	mov	dptr,#(_axradio_timeanchor + 0x0004)
      003482 E0               [24]13116 	movx	a,@dptr
      003483 FC               [12]13117 	mov	r4,a
      003484 A3               [24]13118 	inc	dptr
      003485 E0               [24]13119 	movx	a,@dptr
      003486 FD               [12]13120 	mov	r5,a
      003487 A3               [24]13121 	inc	dptr
      003488 E0               [24]13122 	movx	a,@dptr
      003489 FE               [12]13123 	mov	r6,a
      00348A A3               [24]13124 	inc	dptr
      00348B E0               [24]13125 	movx	a,@dptr
      00348C FF               [12]13126 	mov	r7,a
      00348D 90 02 39         [24]13127 	mov	dptr,#(_axradio_cb_receive + 0x0006)
      003490 EC               [12]13128 	mov	a,r4
      003491 F0               [24]13129 	movx	@dptr,a
      003492 ED               [12]13130 	mov	a,r5
      003493 A3               [24]13131 	inc	dptr
      003494 F0               [24]13132 	movx	@dptr,a
      003495 EE               [12]13133 	mov	a,r6
      003496 A3               [24]13134 	inc	dptr
      003497 F0               [24]13135 	movx	@dptr,a
      003498 EF               [12]13136 	mov	a,r7
      003499 A3               [24]13137 	inc	dptr
      00349A F0               [24]13138 	movx	@dptr,a
                           002938 13139 	C$easyax5043.c$2030$2$417 ==.
                                  13140 ;	..\COMMON\easyax5043.c:2030: axradio_cb_receive.st.error = AXRADIO_ERR_RESYNC;
      00349B 90 02 38         [24]13141 	mov	dptr,#(_axradio_cb_receive + 0x0005)
      00349E 74 09            [12]13142 	mov	a,#0x09
      0034A0 F0               [24]13143 	movx	@dptr,a
                           00293E 13144 	C$easyax5043.c$2031$2$417 ==.
                                  13145 ;	..\COMMON\easyax5043.c:2031: wtimer_add_callback(&axradio_cb_receive.cb);
      0034A1 90 02 33         [24]13146 	mov	dptr,#_axradio_cb_receive
      0034A4 12 46 A2         [24]13147 	lcall	_wtimer_add_callback
                           002944 13148 	C$easyax5043.c$2032$2$417 ==.
                                  13149 ;	..\COMMON\easyax5043.c:2032: return AXRADIO_ERR_NOERROR;
      0034A7 75 82 00         [24]13150 	mov	dpl,#0x00
                           002947 13151 	C$easyax5043.c$2034$2$417 ==.
                                  13152 ;	..\COMMON\easyax5043.c:2034: default:
      0034AA 80 03            [24]13153 	sjmp	00183$
      0034AC                      13154 00181$:
                           002949 13155 	C$easyax5043.c$2035$2$417 ==.
                                  13156 ;	..\COMMON\easyax5043.c:2035: return AXRADIO_ERR_NOTSUPPORTED;
      0034AC 75 82 01         [24]13157 	mov	dpl,#0x01
                           00294C 13158 	C$easyax5043.c$2036$1$411 ==.
                                  13159 ;	..\COMMON\easyax5043.c:2036: }
      0034AF                      13160 00183$:
                           00294C 13161 	C$easyax5043.c$2037$1$411 ==.
                           00294C 13162 	XG$axradio_set_mode$0$0 ==.
      0034AF 22               [24]13163 	ret
                                  13164 ;------------------------------------------------------------
                                  13165 ;Allocation info for local variables in function 'axradio_get_mode'
                                  13166 ;------------------------------------------------------------
                           00294D 13167 	G$axradio_get_mode$0$0 ==.
                           00294D 13168 	C$easyax5043.c$2039$1$411 ==.
                                  13169 ;	..\COMMON\easyax5043.c:2039: uint8_t axradio_get_mode(void)
                                  13170 ;	-----------------------------------------
                                  13171 ;	 function axradio_get_mode
                                  13172 ;	-----------------------------------------
      0034B0                      13173 _axradio_get_mode:
                           00294D 13174 	C$easyax5043.c$2041$1$422 ==.
                                  13175 ;	..\COMMON\easyax5043.c:2041: return axradio_mode;
      0034B0 85 08 82         [24]13176 	mov	dpl,_axradio_mode
                           002950 13177 	C$easyax5043.c$2042$1$422 ==.
                           002950 13178 	XG$axradio_get_mode$0$0 ==.
      0034B3 22               [24]13179 	ret
                                  13180 ;------------------------------------------------------------
                                  13181 ;Allocation info for local variables in function 'axradio_set_channel'
                                  13182 ;------------------------------------------------------------
                                  13183 ;chnum                     Allocated to registers r7 
                                  13184 ;rng                       Allocated with name '_axradio_set_channel_rng_1_424'
                                  13185 ;f                         Allocated to registers r3 r4 r5 r7 
                                  13186 ;------------------------------------------------------------
                           002951 13187 	G$axradio_set_channel$0$0 ==.
                           002951 13188 	C$easyax5043.c$2044$1$422 ==.
                                  13189 ;	..\COMMON\easyax5043.c:2044: uint8_t axradio_set_channel(uint8_t chnum)
                                  13190 ;	-----------------------------------------
                                  13191 ;	 function axradio_set_channel
                                  13192 ;	-----------------------------------------
      0034B4                      13193 _axradio_set_channel:
      0034B4 AF 82            [24]13194 	mov	r7,dpl
                           002953 13195 	C$easyax5043.c$2047$1$424 ==.
                                  13196 ;	..\COMMON\easyax5043.c:2047: if (chnum >= axradio_phy_nrchannels)
      0034B6 90 55 B5         [24]13197 	mov	dptr,#_axradio_phy_nrchannels
      0034B9 E4               [12]13198 	clr	a
      0034BA 93               [24]13199 	movc	a,@a+dptr
      0034BB FE               [12]13200 	mov	r6,a
      0034BC C3               [12]13201 	clr	c
      0034BD EF               [12]13202 	mov	a,r7
      0034BE 9E               [12]13203 	subb	a,r6
      0034BF 40 06            [24]13204 	jc	00102$
                           00295E 13205 	C$easyax5043.c$2048$1$424 ==.
                                  13206 ;	..\COMMON\easyax5043.c:2048: return AXRADIO_ERR_INVALID;
      0034C1 75 82 04         [24]13207 	mov	dpl,#0x04
      0034C4 02 35 68         [24]13208 	ljmp	00108$
      0034C7                      13209 00102$:
                           002964 13210 	C$easyax5043.c$2049$1$424 ==.
                                  13211 ;	..\COMMON\easyax5043.c:2049: axradio_curchannel = chnum;
      0034C7 90 00 0A         [24]13212 	mov	dptr,#_axradio_curchannel
      0034CA EF               [12]13213 	mov	a,r7
      0034CB F0               [24]13214 	movx	@dptr,a
                           002969 13215 	C$easyax5043.c$2050$1$424 ==.
                                  13216 ;	..\COMMON\easyax5043.c:2050: rng = axradio_phy_chanpllrng[chnum];
      0034CC EF               [12]13217 	mov	a,r7
      0034CD 24 01            [12]13218 	add	a,#_axradio_phy_chanpllrng
      0034CF F5 82            [12]13219 	mov	dpl,a
      0034D1 E4               [12]13220 	clr	a
      0034D2 34 00            [12]13221 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      0034D4 F5 83            [12]13222 	mov	dph,a
      0034D6 E0               [24]13223 	movx	a,@dptr
                           002974 13224 	C$easyax5043.c$2051$1$424 ==.
                                  13225 ;	..\COMMON\easyax5043.c:2051: if (rng & 0x20)
      0034D7 F5 23            [12]13226 	mov	_axradio_set_channel_rng_1_424,a
      0034D9 30 E5 06         [24]13227 	jnb	acc.5,00104$
                           002979 13228 	C$easyax5043.c$2052$1$424 ==.
                                  13229 ;	..\COMMON\easyax5043.c:2052: return AXRADIO_ERR_RANGING;
      0034DC 75 82 06         [24]13230 	mov	dpl,#0x06
      0034DF 02 35 68         [24]13231 	ljmp	00108$
      0034E2                      13232 00104$:
                           00297F 13233 	C$easyax5043.c$2054$2$425 ==.
                                  13234 ;	..\COMMON\easyax5043.c:2054: uint32_t __autodata f = axradio_phy_chanfreq[chnum];
      0034E2 EF               [12]13235 	mov	a,r7
      0034E3 75 F0 04         [24]13236 	mov	b,#0x04
      0034E6 A4               [48]13237 	mul	ab
      0034E7 24 B6            [12]13238 	add	a,#_axradio_phy_chanfreq
      0034E9 F5 82            [12]13239 	mov	dpl,a
      0034EB 74 55            [12]13240 	mov	a,#(_axradio_phy_chanfreq >> 8)
      0034ED 35 F0            [12]13241 	addc	a,b
      0034EF F5 83            [12]13242 	mov	dph,a
      0034F1 E4               [12]13243 	clr	a
      0034F2 93               [24]13244 	movc	a,@a+dptr
      0034F3 FB               [12]13245 	mov	r3,a
      0034F4 A3               [24]13246 	inc	dptr
      0034F5 E4               [12]13247 	clr	a
      0034F6 93               [24]13248 	movc	a,@a+dptr
      0034F7 FC               [12]13249 	mov	r4,a
      0034F8 A3               [24]13250 	inc	dptr
      0034F9 E4               [12]13251 	clr	a
      0034FA 93               [24]13252 	movc	a,@a+dptr
      0034FB FD               [12]13253 	mov	r5,a
      0034FC A3               [24]13254 	inc	dptr
      0034FD E4               [12]13255 	clr	a
      0034FE 93               [24]13256 	movc	a,@a+dptr
      0034FF FF               [12]13257 	mov	r7,a
                           00299D 13258 	C$easyax5043.c$2055$2$425 ==.
                                  13259 ;	..\COMMON\easyax5043.c:2055: f += axradio_curfreqoffset;
      003500 90 00 0B         [24]13260 	mov	dptr,#_axradio_curfreqoffset
      003503 E0               [24]13261 	movx	a,@dptr
      003504 F8               [12]13262 	mov	r0,a
      003505 A3               [24]13263 	inc	dptr
      003506 E0               [24]13264 	movx	a,@dptr
      003507 F9               [12]13265 	mov	r1,a
      003508 A3               [24]13266 	inc	dptr
      003509 E0               [24]13267 	movx	a,@dptr
      00350A FA               [12]13268 	mov	r2,a
      00350B A3               [24]13269 	inc	dptr
      00350C E0               [24]13270 	movx	a,@dptr
      00350D FE               [12]13271 	mov	r6,a
      00350E E8               [12]13272 	mov	a,r0
      00350F 2B               [12]13273 	add	a,r3
      003510 FB               [12]13274 	mov	r3,a
      003511 E9               [12]13275 	mov	a,r1
      003512 3C               [12]13276 	addc	a,r4
      003513 FC               [12]13277 	mov	r4,a
      003514 EA               [12]13278 	mov	a,r2
      003515 3D               [12]13279 	addc	a,r5
      003516 FD               [12]13280 	mov	r5,a
      003517 EE               [12]13281 	mov	a,r6
      003518 3F               [12]13282 	addc	a,r7
      003519 FF               [12]13283 	mov	r7,a
                           0029B7 13284 	C$easyax5043.c$2056$2$425 ==.
                                  13285 ;	..\COMMON\easyax5043.c:2056: if (AX5043_PLLLOOP & 0x80) {
      00351A 90 40 30         [24]13286 	mov	dptr,#_AX5043_PLLLOOP
      00351D E0               [24]13287 	movx	a,@dptr
      00351E FE               [12]13288 	mov	r6,a
      00351F 30 E7 1E         [24]13289 	jnb	acc.7,00106$
                           0029BF 13290 	C$easyax5043.c$2057$3$426 ==.
                                  13291 ;	..\COMMON\easyax5043.c:2057: AX5043_PLLRANGINGA = rng & 0x0F;
      003522 90 40 33         [24]13292 	mov	dptr,#_AX5043_PLLRANGINGA
      003525 74 0F            [12]13293 	mov	a,#0x0f
      003527 55 23            [12]13294 	anl	a,_axradio_set_channel_rng_1_424
      003529 F0               [24]13295 	movx	@dptr,a
                           0029C7 13296 	C$easyax5043.c$2058$3$426 ==.
                                  13297 ;	..\COMMON\easyax5043.c:2058: AX5043_FREQA0 = f;
      00352A 90 40 37         [24]13298 	mov	dptr,#_AX5043_FREQA0
      00352D EB               [12]13299 	mov	a,r3
      00352E F0               [24]13300 	movx	@dptr,a
                           0029CC 13301 	C$easyax5043.c$2059$3$426 ==.
                                  13302 ;	..\COMMON\easyax5043.c:2059: AX5043_FREQA1 = f >> 8;
      00352F 90 40 36         [24]13303 	mov	dptr,#_AX5043_FREQA1
      003532 EC               [12]13304 	mov	a,r4
      003533 F0               [24]13305 	movx	@dptr,a
                           0029D1 13306 	C$easyax5043.c$2060$3$426 ==.
                                  13307 ;	..\COMMON\easyax5043.c:2060: AX5043_FREQA2 = f >> 16;
      003534 90 40 35         [24]13308 	mov	dptr,#_AX5043_FREQA2
      003537 ED               [12]13309 	mov	a,r5
      003538 F0               [24]13310 	movx	@dptr,a
                           0029D6 13311 	C$easyax5043.c$2061$3$426 ==.
                                  13312 ;	..\COMMON\easyax5043.c:2061: AX5043_FREQA3 = f >> 24;
      003539 90 40 34         [24]13313 	mov	dptr,#_AX5043_FREQA3
      00353C EF               [12]13314 	mov	a,r7
      00353D F0               [24]13315 	movx	@dptr,a
      00353E 80 1C            [24]13316 	sjmp	00107$
      003540                      13317 00106$:
                           0029DD 13318 	C$easyax5043.c$2063$3$427 ==.
                                  13319 ;	..\COMMON\easyax5043.c:2063: AX5043_PLLRANGINGB = rng & 0x0F;
      003540 90 40 3B         [24]13320 	mov	dptr,#_AX5043_PLLRANGINGB
      003543 74 0F            [12]13321 	mov	a,#0x0f
      003545 55 23            [12]13322 	anl	a,_axradio_set_channel_rng_1_424
      003547 F0               [24]13323 	movx	@dptr,a
                           0029E5 13324 	C$easyax5043.c$2064$3$427 ==.
                                  13325 ;	..\COMMON\easyax5043.c:2064: AX5043_FREQB0 = f;
      003548 90 40 3F         [24]13326 	mov	dptr,#_AX5043_FREQB0
      00354B EB               [12]13327 	mov	a,r3
      00354C F0               [24]13328 	movx	@dptr,a
                           0029EA 13329 	C$easyax5043.c$2065$3$427 ==.
                                  13330 ;	..\COMMON\easyax5043.c:2065: AX5043_FREQB1 = f >> 8;
      00354D 90 40 3E         [24]13331 	mov	dptr,#_AX5043_FREQB1
      003550 EC               [12]13332 	mov	a,r4
      003551 F0               [24]13333 	movx	@dptr,a
                           0029EF 13334 	C$easyax5043.c$2066$3$427 ==.
                                  13335 ;	..\COMMON\easyax5043.c:2066: AX5043_FREQB2 = f >> 16;
      003552 90 40 3D         [24]13336 	mov	dptr,#_AX5043_FREQB2
      003555 ED               [12]13337 	mov	a,r5
      003556 F0               [24]13338 	movx	@dptr,a
                           0029F4 13339 	C$easyax5043.c$2067$3$427 ==.
                                  13340 ;	..\COMMON\easyax5043.c:2067: AX5043_FREQB3 = f >> 24;
      003557 90 40 3C         [24]13341 	mov	dptr,#_AX5043_FREQB3
      00355A EF               [12]13342 	mov	a,r7
      00355B F0               [24]13343 	movx	@dptr,a
      00355C                      13344 00107$:
                           0029F9 13345 	C$easyax5043.c$2070$1$424 ==.
                                  13346 ;	..\COMMON\easyax5043.c:2070: AX5043_PLLLOOP ^= 0x80;
      00355C 90 40 30         [24]13347 	mov	dptr,#_AX5043_PLLLOOP
      00355F E0               [24]13348 	movx	a,@dptr
      003560 FF               [12]13349 	mov	r7,a
      003561 74 80            [12]13350 	mov	a,#0x80
      003563 6F               [12]13351 	xrl	a,r7
      003564 F0               [24]13352 	movx	@dptr,a
                           002A02 13353 	C$easyax5043.c$2071$1$424 ==.
                                  13354 ;	..\COMMON\easyax5043.c:2071: return AXRADIO_ERR_NOERROR;
      003565 75 82 00         [24]13355 	mov	dpl,#0x00
      003568                      13356 00108$:
                           002A05 13357 	C$easyax5043.c$2072$1$424 ==.
                           002A05 13358 	XG$axradio_set_channel$0$0 ==.
      003568 22               [24]13359 	ret
                                  13360 ;------------------------------------------------------------
                                  13361 ;Allocation info for local variables in function 'axradio_get_channel'
                                  13362 ;------------------------------------------------------------
                           002A06 13363 	G$axradio_get_channel$0$0 ==.
                           002A06 13364 	C$easyax5043.c$2074$1$424 ==.
                                  13365 ;	..\COMMON\easyax5043.c:2074: uint8_t axradio_get_channel(void)
                                  13366 ;	-----------------------------------------
                                  13367 ;	 function axradio_get_channel
                                  13368 ;	-----------------------------------------
      003569                      13369 _axradio_get_channel:
                           002A06 13370 	C$easyax5043.c$2076$1$429 ==.
                                  13371 ;	..\COMMON\easyax5043.c:2076: return axradio_curchannel;
      003569 90 00 0A         [24]13372 	mov	dptr,#_axradio_curchannel
      00356C E0               [24]13373 	movx	a,@dptr
                           002A0A 13374 	C$easyax5043.c$2077$1$429 ==.
                           002A0A 13375 	XG$axradio_get_channel$0$0 ==.
      00356D F5 82            [12]13376 	mov	dpl,a
      00356F 22               [24]13377 	ret
                                  13378 ;------------------------------------------------------------
                                  13379 ;Allocation info for local variables in function 'axradio_get_pllrange'
                                  13380 ;------------------------------------------------------------
                           002A0D 13381 	G$axradio_get_pllrange$0$0 ==.
                           002A0D 13382 	C$easyax5043.c$2079$1$429 ==.
                                  13383 ;	..\COMMON\easyax5043.c:2079: uint8_t axradio_get_pllrange(void)
                                  13384 ;	-----------------------------------------
                                  13385 ;	 function axradio_get_pllrange
                                  13386 ;	-----------------------------------------
      003570                      13387 _axradio_get_pllrange:
                           002A0D 13388 	C$easyax5043.c$2081$1$431 ==.
                                  13389 ;	..\COMMON\easyax5043.c:2081: return axradio_phy_chanpllrng[axradio_curchannel] & 0x0F;
      003570 90 00 0A         [24]13390 	mov	dptr,#_axradio_curchannel
      003573 E0               [24]13391 	movx	a,@dptr
      003574 24 01            [12]13392 	add	a,#_axradio_phy_chanpllrng
      003576 F5 82            [12]13393 	mov	dpl,a
      003578 E4               [12]13394 	clr	a
      003579 34 00            [12]13395 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      00357B F5 83            [12]13396 	mov	dph,a
      00357D E0               [24]13397 	movx	a,@dptr
      00357E FF               [12]13398 	mov	r7,a
      00357F 74 0F            [12]13399 	mov	a,#0x0f
      003581 5F               [12]13400 	anl	a,r7
      003582 F5 82            [12]13401 	mov	dpl,a
                           002A21 13402 	C$easyax5043.c$2082$1$431 ==.
                           002A21 13403 	XG$axradio_get_pllrange$0$0 ==.
      003584 22               [24]13404 	ret
                                  13405 ;------------------------------------------------------------
                                  13406 ;Allocation info for local variables in function 'axradio_get_pllvcoi'
                                  13407 ;------------------------------------------------------------
                                  13408 ;x                         Allocated to registers r7 
                                  13409 ;x                         Allocated to registers r6 
                                  13410 ;------------------------------------------------------------
                           002A22 13411 	G$axradio_get_pllvcoi$0$0 ==.
                           002A22 13412 	C$easyax5043.c$2084$1$431 ==.
                                  13413 ;	..\COMMON\easyax5043.c:2084: uint8_t axradio_get_pllvcoi(void)
                                  13414 ;	-----------------------------------------
                                  13415 ;	 function axradio_get_pllvcoi
                                  13416 ;	-----------------------------------------
      003585                      13417 _axradio_get_pllvcoi:
                           002A22 13418 	C$easyax5043.c$2086$1$433 ==.
                                  13419 ;	..\COMMON\easyax5043.c:2086: if (axradio_phy_vcocalib) {
      003585 90 55 BC         [24]13420 	mov	dptr,#_axradio_phy_vcocalib
      003588 E4               [12]13421 	clr	a
      003589 93               [24]13422 	movc	a,@a+dptr
      00358A 60 16            [24]13423 	jz	00104$
                           002A29 13424 	C$easyax5043.c$2087$2$434 ==.
                                  13425 ;	..\COMMON\easyax5043.c:2087: uint8_t x = axradio_phy_chanvcoi[axradio_curchannel];
      00358C 90 00 0A         [24]13426 	mov	dptr,#_axradio_curchannel
      00358F E0               [24]13427 	movx	a,@dptr
      003590 24 02            [12]13428 	add	a,#_axradio_phy_chanvcoi
      003592 F5 82            [12]13429 	mov	dpl,a
      003594 E4               [12]13430 	clr	a
      003595 34 00            [12]13431 	addc	a,#(_axradio_phy_chanvcoi >> 8)
      003597 F5 83            [12]13432 	mov	dph,a
      003599 E0               [24]13433 	movx	a,@dptr
                           002A37 13434 	C$easyax5043.c$2088$2$434 ==.
                                  13435 ;	..\COMMON\easyax5043.c:2088: if (x & 0x80)
      00359A FF               [12]13436 	mov	r7,a
      00359B 30 E7 04         [24]13437 	jnb	acc.7,00104$
                           002A3B 13438 	C$easyax5043.c$2089$2$434 ==.
                                  13439 ;	..\COMMON\easyax5043.c:2089: return x;
      00359E 8F 82            [24]13440 	mov	dpl,r7
      0035A0 80 46            [24]13441 	sjmp	00109$
      0035A2                      13442 00104$:
                           002A3F 13443 	C$easyax5043.c$2092$2$435 ==.
                                  13444 ;	..\COMMON\easyax5043.c:2092: uint8_t x = axradio_phy_chanvcoiinit[axradio_curchannel];
      0035A2 90 00 0A         [24]13445 	mov	dptr,#_axradio_curchannel
      0035A5 E0               [24]13446 	movx	a,@dptr
      0035A6 FF               [12]13447 	mov	r7,a
      0035A7 90 55 BB         [24]13448 	mov	dptr,#_axradio_phy_chanvcoiinit
      0035AA 93               [24]13449 	movc	a,@a+dptr
                           002A48 13450 	C$easyax5043.c$2093$2$435 ==.
                                  13451 ;	..\COMMON\easyax5043.c:2093: if (x & 0x80) {
      0035AB FE               [12]13452 	mov	r6,a
      0035AC 30 E7 33         [24]13453 	jnb	acc.7,00108$
                           002A4C 13454 	C$easyax5043.c$2094$3$436 ==.
                                  13455 ;	..\COMMON\easyax5043.c:2094: if (!(axradio_phy_chanpllrnginit[0] & 0xF0)) {
      0035AF 90 55 BA         [24]13456 	mov	dptr,#_axradio_phy_chanpllrnginit
      0035B2 E4               [12]13457 	clr	a
      0035B3 93               [24]13458 	movc	a,@a+dptr
      0035B4 FD               [12]13459 	mov	r5,a
      0035B5 54 F0            [12]13460 	anl	a,#0xf0
      0035B7 60 02            [24]13461 	jz	00127$
      0035B9 80 23            [24]13462 	sjmp	00106$
      0035BB                      13463 00127$:
                           002A58 13464 	C$easyax5043.c$2095$4$437 ==.
                                  13465 ;	..\COMMON\easyax5043.c:2095: x += (axradio_phy_chanpllrng[axradio_curchannel] & 0x0F) - (axradio_phy_chanpllrnginit[axradio_curchannel] & 0x0F);
      0035BB EF               [12]13466 	mov	a,r7
      0035BC 24 01            [12]13467 	add	a,#_axradio_phy_chanpllrng
      0035BE F5 82            [12]13468 	mov	dpl,a
      0035C0 E4               [12]13469 	clr	a
      0035C1 34 00            [12]13470 	addc	a,#(_axradio_phy_chanpllrng >> 8)
      0035C3 F5 83            [12]13471 	mov	dph,a
      0035C5 E0               [24]13472 	movx	a,@dptr
      0035C6 FD               [12]13473 	mov	r5,a
      0035C7 53 05 0F         [24]13474 	anl	ar5,#0x0f
      0035CA EF               [12]13475 	mov	a,r7
      0035CB 90 55 BA         [24]13476 	mov	dptr,#_axradio_phy_chanpllrnginit
      0035CE 93               [24]13477 	movc	a,@a+dptr
      0035CF FF               [12]13478 	mov	r7,a
      0035D0 74 0F            [12]13479 	mov	a,#0x0f
      0035D2 5F               [12]13480 	anl	a,r7
      0035D3 D3               [12]13481 	setb	c
      0035D4 9D               [12]13482 	subb	a,r5
      0035D5 F4               [12]13483 	cpl	a
      0035D6 2E               [12]13484 	add	a,r6
      0035D7 FE               [12]13485 	mov	r6,a
                           002A75 13486 	C$easyax5043.c$2096$4$437 ==.
                                  13487 ;	..\COMMON\easyax5043.c:2096: x &= 0x3f;
      0035D8 53 06 3F         [24]13488 	anl	ar6,#0x3f
                           002A78 13489 	C$easyax5043.c$2097$4$437 ==.
                                  13490 ;	..\COMMON\easyax5043.c:2097: x |= 0x80;
      0035DB 43 06 80         [24]13491 	orl	ar6,#0x80
      0035DE                      13492 00106$:
                           002A7B 13493 	C$easyax5043.c$2099$3$436 ==.
                                  13494 ;	..\COMMON\easyax5043.c:2099: return x;
      0035DE 8E 82            [24]13495 	mov	dpl,r6
      0035E0 80 06            [24]13496 	sjmp	00109$
      0035E2                      13497 00108$:
                           002A7F 13498 	C$easyax5043.c$2102$1$433 ==.
                                  13499 ;	..\COMMON\easyax5043.c:2102: return AX5043_PLLVCOI;
      0035E2 90 41 80         [24]13500 	mov	dptr,#_AX5043_PLLVCOI
      0035E5 E0               [24]13501 	movx	a,@dptr
                           002A83 13502 	C$easyax5043.c$2103$1$433 ==.
                           002A83 13503 	XG$axradio_get_pllvcoi$0$0 ==.
      0035E6 F5 82            [12]13504 	mov	dpl,a
      0035E8                      13505 00109$:
      0035E8 22               [24]13506 	ret
                                  13507 ;------------------------------------------------------------
                                  13508 ;Allocation info for local variables in function 'axradio_set_curfreqoffset'
                                  13509 ;------------------------------------------------------------
                                  13510 ;offs                      Allocated to registers r4 r5 r6 r7 
                                  13511 ;------------------------------------------------------------
                           002A86 13512 	Feasyax5043$axradio_set_curfreqoffset$0$0 ==.
                           002A86 13513 	C$easyax5043.c$2105$1$433 ==.
                                  13514 ;	..\COMMON\easyax5043.c:2105: static uint8_t axradio_set_curfreqoffset(int32_t offs)
                                  13515 ;	-----------------------------------------
                                  13516 ;	 function axradio_set_curfreqoffset
                                  13517 ;	-----------------------------------------
      0035E9                      13518 _axradio_set_curfreqoffset:
      0035E9 AC 82            [24]13519 	mov	r4,dpl
      0035EB AD 83            [24]13520 	mov	r5,dph
      0035ED AE F0            [24]13521 	mov	r6,b
      0035EF FF               [12]13522 	mov	r7,a
                           002A8D 13523 	C$easyax5043.c$2107$1$439 ==.
                                  13524 ;	..\COMMON\easyax5043.c:2107: axradio_curfreqoffset = offs;
      0035F0 90 00 0B         [24]13525 	mov	dptr,#_axradio_curfreqoffset
      0035F3 EC               [12]13526 	mov	a,r4
      0035F4 F0               [24]13527 	movx	@dptr,a
      0035F5 ED               [12]13528 	mov	a,r5
      0035F6 A3               [24]13529 	inc	dptr
      0035F7 F0               [24]13530 	movx	@dptr,a
      0035F8 EE               [12]13531 	mov	a,r6
      0035F9 A3               [24]13532 	inc	dptr
      0035FA F0               [24]13533 	movx	@dptr,a
      0035FB EF               [12]13534 	mov	a,r7
      0035FC A3               [24]13535 	inc	dptr
      0035FD F0               [24]13536 	movx	@dptr,a
                           002A9B 13537 	C$easyax5043.c$2108$1$439 ==.
                                  13538 ;	..\COMMON\easyax5043.c:2108: if (checksignedlimit32(offs, axradio_phy_maxfreqoffset))
      0035FE 90 55 BD         [24]13539 	mov	dptr,#_axradio_phy_maxfreqoffset
      003601 E4               [12]13540 	clr	a
      003602 93               [24]13541 	movc	a,@a+dptr
      003603 C0 E0            [24]13542 	push	acc
      003605 74 01            [12]13543 	mov	a,#0x01
      003607 93               [24]13544 	movc	a,@a+dptr
      003608 C0 E0            [24]13545 	push	acc
      00360A 74 02            [12]13546 	mov	a,#0x02
      00360C 93               [24]13547 	movc	a,@a+dptr
      00360D C0 E0            [24]13548 	push	acc
      00360F 74 03            [12]13549 	mov	a,#0x03
      003611 93               [24]13550 	movc	a,@a+dptr
      003612 C0 E0            [24]13551 	push	acc
      003614 8C 82            [24]13552 	mov	dpl,r4
      003616 8D 83            [24]13553 	mov	dph,r5
      003618 8E F0            [24]13554 	mov	b,r6
      00361A EF               [12]13555 	mov	a,r7
      00361B 12 4B CC         [24]13556 	lcall	_checksignedlimit32
      00361E AF 82            [24]13557 	mov	r7,dpl
      003620 E5 81            [12]13558 	mov	a,sp
      003622 24 FC            [12]13559 	add	a,#0xfc
      003624 F5 81            [12]13560 	mov	sp,a
      003626 EF               [12]13561 	mov	a,r7
      003627 60 05            [24]13562 	jz	00102$
                           002AC6 13563 	C$easyax5043.c$2109$1$439 ==.
                                  13564 ;	..\COMMON\easyax5043.c:2109: return AXRADIO_ERR_NOERROR;
      003629 75 82 00         [24]13565 	mov	dpl,#0x00
      00362C 80 5B            [24]13566 	sjmp	00106$
      00362E                      13567 00102$:
                           002ACB 13568 	C$easyax5043.c$2110$1$439 ==.
                                  13569 ;	..\COMMON\easyax5043.c:2110: if (axradio_curfreqoffset < 0)
      00362E 90 00 0B         [24]13570 	mov	dptr,#_axradio_curfreqoffset
      003631 E0               [24]13571 	movx	a,@dptr
      003632 FC               [12]13572 	mov	r4,a
      003633 A3               [24]13573 	inc	dptr
      003634 E0               [24]13574 	movx	a,@dptr
      003635 FD               [12]13575 	mov	r5,a
      003636 A3               [24]13576 	inc	dptr
      003637 E0               [24]13577 	movx	a,@dptr
      003638 FE               [12]13578 	mov	r6,a
      003639 A3               [24]13579 	inc	dptr
      00363A E0               [24]13580 	movx	a,@dptr
      00363B FF               [12]13581 	mov	r7,a
      00363C 30 E7 27         [24]13582 	jnb	acc.7,00104$
                           002ADC 13583 	C$easyax5043.c$2111$1$439 ==.
                                  13584 ;	..\COMMON\easyax5043.c:2111: axradio_curfreqoffset = -axradio_phy_maxfreqoffset;
      00363F 90 55 BD         [24]13585 	mov	dptr,#_axradio_phy_maxfreqoffset
      003642 E4               [12]13586 	clr	a
      003643 93               [24]13587 	movc	a,@a+dptr
      003644 FC               [12]13588 	mov	r4,a
      003645 74 01            [12]13589 	mov	a,#0x01
      003647 93               [24]13590 	movc	a,@a+dptr
      003648 FD               [12]13591 	mov	r5,a
      003649 74 02            [12]13592 	mov	a,#0x02
      00364B 93               [24]13593 	movc	a,@a+dptr
      00364C FE               [12]13594 	mov	r6,a
      00364D 74 03            [12]13595 	mov	a,#0x03
      00364F 93               [24]13596 	movc	a,@a+dptr
      003650 FF               [12]13597 	mov	r7,a
      003651 90 00 0B         [24]13598 	mov	dptr,#_axradio_curfreqoffset
      003654 C3               [12]13599 	clr	c
      003655 E4               [12]13600 	clr	a
      003656 9C               [12]13601 	subb	a,r4
      003657 F0               [24]13602 	movx	@dptr,a
      003658 E4               [12]13603 	clr	a
      003659 9D               [12]13604 	subb	a,r5
      00365A A3               [24]13605 	inc	dptr
      00365B F0               [24]13606 	movx	@dptr,a
      00365C E4               [12]13607 	clr	a
      00365D 9E               [12]13608 	subb	a,r6
      00365E A3               [24]13609 	inc	dptr
      00365F F0               [24]13610 	movx	@dptr,a
      003660 E4               [12]13611 	clr	a
      003661 9F               [12]13612 	subb	a,r7
      003662 A3               [24]13613 	inc	dptr
      003663 F0               [24]13614 	movx	@dptr,a
      003664 80 20            [24]13615 	sjmp	00105$
      003666                      13616 00104$:
                           002B03 13617 	C$easyax5043.c$2113$1$439 ==.
                                  13618 ;	..\COMMON\easyax5043.c:2113: axradio_curfreqoffset = axradio_phy_maxfreqoffset;
      003666 90 55 BD         [24]13619 	mov	dptr,#_axradio_phy_maxfreqoffset
      003669 E4               [12]13620 	clr	a
      00366A 93               [24]13621 	movc	a,@a+dptr
      00366B FC               [12]13622 	mov	r4,a
      00366C 74 01            [12]13623 	mov	a,#0x01
      00366E 93               [24]13624 	movc	a,@a+dptr
      00366F FD               [12]13625 	mov	r5,a
      003670 74 02            [12]13626 	mov	a,#0x02
      003672 93               [24]13627 	movc	a,@a+dptr
      003673 FE               [12]13628 	mov	r6,a
      003674 74 03            [12]13629 	mov	a,#0x03
      003676 93               [24]13630 	movc	a,@a+dptr
      003677 FF               [12]13631 	mov	r7,a
      003678 90 00 0B         [24]13632 	mov	dptr,#_axradio_curfreqoffset
      00367B EC               [12]13633 	mov	a,r4
      00367C F0               [24]13634 	movx	@dptr,a
      00367D ED               [12]13635 	mov	a,r5
      00367E A3               [24]13636 	inc	dptr
      00367F F0               [24]13637 	movx	@dptr,a
      003680 EE               [12]13638 	mov	a,r6
      003681 A3               [24]13639 	inc	dptr
      003682 F0               [24]13640 	movx	@dptr,a
      003683 EF               [12]13641 	mov	a,r7
      003684 A3               [24]13642 	inc	dptr
      003685 F0               [24]13643 	movx	@dptr,a
      003686                      13644 00105$:
                           002B23 13645 	C$easyax5043.c$2114$1$439 ==.
                                  13646 ;	..\COMMON\easyax5043.c:2114: return AXRADIO_ERR_INVALID;
      003686 75 82 04         [24]13647 	mov	dpl,#0x04
      003689                      13648 00106$:
                           002B26 13649 	C$easyax5043.c$2115$1$439 ==.
                           002B26 13650 	XFeasyax5043$axradio_set_curfreqoffset$0$0 ==.
      003689 22               [24]13651 	ret
                                  13652 ;------------------------------------------------------------
                                  13653 ;Allocation info for local variables in function 'axradio_set_freqoffset'
                                  13654 ;------------------------------------------------------------
                                  13655 ;offs                      Allocated to registers r4 r5 r6 r7 
                                  13656 ;ret                       Allocated to registers r7 
                                  13657 ;ret2                      Allocated to registers r6 
                                  13658 ;------------------------------------------------------------
                           002B27 13659 	G$axradio_set_freqoffset$0$0 ==.
                           002B27 13660 	C$easyax5043.c$2117$1$439 ==.
                                  13661 ;	..\COMMON\easyax5043.c:2117: uint8_t axradio_set_freqoffset(int32_t offs)
                                  13662 ;	-----------------------------------------
                                  13663 ;	 function axradio_set_freqoffset
                                  13664 ;	-----------------------------------------
      00368A                      13665 _axradio_set_freqoffset:
                           002B27 13666 	C$easyax5043.c$2119$1$441 ==.
                                  13667 ;	..\COMMON\easyax5043.c:2119: uint8_t __autodata ret = axradio_set_curfreqoffset(offs);
      00368A 12 35 E9         [24]13668 	lcall	_axradio_set_curfreqoffset
      00368D AF 82            [24]13669 	mov	r7,dpl
                           002B2C 13670 	C$easyax5043.c$2121$2$442 ==.
                                  13671 ;	..\COMMON\easyax5043.c:2121: uint8_t __autodata ret2 = axradio_set_channel(axradio_curchannel);
      00368F 90 00 0A         [24]13672 	mov	dptr,#_axradio_curchannel
      003692 E0               [24]13673 	movx	a,@dptr
      003693 F5 82            [12]13674 	mov	dpl,a
      003695 C0 07            [24]13675 	push	ar7
      003697 12 34 B4         [24]13676 	lcall	_axradio_set_channel
      00369A AE 82            [24]13677 	mov	r6,dpl
      00369C D0 07            [24]13678 	pop	ar7
                           002B3B 13679 	C$easyax5043.c$2122$2$442 ==.
                                  13680 ;	..\COMMON\easyax5043.c:2122: if (ret == AXRADIO_ERR_NOERROR)
      00369E EF               [12]13681 	mov	a,r7
      00369F 70 02            [24]13682 	jnz	00102$
                           002B3E 13683 	C$easyax5043.c$2123$2$442 ==.
                                  13684 ;	..\COMMON\easyax5043.c:2123: ret = ret2;
      0036A1 8E 07            [24]13685 	mov	ar7,r6
      0036A3                      13686 00102$:
                           002B40 13687 	C$easyax5043.c$2125$1$441 ==.
                                  13688 ;	..\COMMON\easyax5043.c:2125: return ret;
      0036A3 8F 82            [24]13689 	mov	dpl,r7
                           002B42 13690 	C$easyax5043.c$2126$1$441 ==.
                           002B42 13691 	XG$axradio_set_freqoffset$0$0 ==.
      0036A5 22               [24]13692 	ret
                                  13693 ;------------------------------------------------------------
                                  13694 ;Allocation info for local variables in function 'axradio_get_freqoffset'
                                  13695 ;------------------------------------------------------------
                           002B43 13696 	G$axradio_get_freqoffset$0$0 ==.
                           002B43 13697 	C$easyax5043.c$2128$1$441 ==.
                                  13698 ;	..\COMMON\easyax5043.c:2128: int32_t axradio_get_freqoffset(void)
                                  13699 ;	-----------------------------------------
                                  13700 ;	 function axradio_get_freqoffset
                                  13701 ;	-----------------------------------------
      0036A6                      13702 _axradio_get_freqoffset:
                           002B43 13703 	C$easyax5043.c$2130$1$444 ==.
                                  13704 ;	..\COMMON\easyax5043.c:2130: return axradio_curfreqoffset;
      0036A6 90 00 0B         [24]13705 	mov	dptr,#_axradio_curfreqoffset
      0036A9 E0               [24]13706 	movx	a,@dptr
      0036AA FC               [12]13707 	mov	r4,a
      0036AB A3               [24]13708 	inc	dptr
      0036AC E0               [24]13709 	movx	a,@dptr
      0036AD FD               [12]13710 	mov	r5,a
      0036AE A3               [24]13711 	inc	dptr
      0036AF E0               [24]13712 	movx	a,@dptr
      0036B0 FE               [12]13713 	mov	r6,a
      0036B1 A3               [24]13714 	inc	dptr
      0036B2 E0               [24]13715 	movx	a,@dptr
      0036B3 8C 82            [24]13716 	mov	dpl,r4
      0036B5 8D 83            [24]13717 	mov	dph,r5
      0036B7 8E F0            [24]13718 	mov	b,r6
                           002B56 13719 	C$easyax5043.c$2131$1$444 ==.
                           002B56 13720 	XG$axradio_get_freqoffset$0$0 ==.
      0036B9 22               [24]13721 	ret
                                  13722 ;------------------------------------------------------------
                                  13723 ;Allocation info for local variables in function 'axradio_set_local_address'
                                  13724 ;------------------------------------------------------------
                                  13725 ;addr                      Allocated to registers r5 r6 r7 
                                  13726 ;------------------------------------------------------------
                           002B57 13727 	G$axradio_set_local_address$0$0 ==.
                           002B57 13728 	C$easyax5043.c$2133$1$444 ==.
                                  13729 ;	..\COMMON\easyax5043.c:2133: void axradio_set_local_address(const struct axradio_address_mask __generic *addr)
                                  13730 ;	-----------------------------------------
                                  13731 ;	 function axradio_set_local_address
                                  13732 ;	-----------------------------------------
      0036BA                      13733 _axradio_set_local_address:
      0036BA AD 82            [24]13734 	mov	r5,dpl
      0036BC AE 83            [24]13735 	mov	r6,dph
      0036BE AF F0            [24]13736 	mov	r7,b
                           002B5D 13737 	C$easyax5043.c$2135$1$446 ==.
                                  13738 ;	..\COMMON\easyax5043.c:2135: memcpy_xdatageneric(&axradio_localaddr, addr, sizeof(axradio_localaddr));
      0036C0 8D 23            [24]13739 	mov	_memcpy_PARM_2,r5
      0036C2 8E 24            [24]13740 	mov	(_memcpy_PARM_2 + 1),r6
      0036C4 8F 25            [24]13741 	mov	(_memcpy_PARM_2 + 2),r7
      0036C6 75 26 08         [24]13742 	mov	_memcpy_PARM_3,#0x08
      0036C9 75 27 00         [24]13743 	mov	(_memcpy_PARM_3 + 1),#0x00
      0036CC 90 00 1F         [24]13744 	mov	dptr,#_axradio_localaddr
      0036CF 75 F0 00         [24]13745 	mov	b,#0x00
      0036D2 12 46 4D         [24]13746 	lcall	_memcpy
                           002B72 13747 	C$easyax5043.c$2136$1$446 ==.
                                  13748 ;	..\COMMON\easyax5043.c:2136: axradio_setaddrregs();
      0036D5 12 18 7F         [24]13749 	lcall	_axradio_setaddrregs
                           002B75 13750 	C$easyax5043.c$2137$1$446 ==.
                           002B75 13751 	XG$axradio_set_local_address$0$0 ==.
      0036D8 22               [24]13752 	ret
                                  13753 ;------------------------------------------------------------
                                  13754 ;Allocation info for local variables in function 'axradio_get_local_address'
                                  13755 ;------------------------------------------------------------
                                  13756 ;addr                      Allocated to registers r5 r6 r7 
                                  13757 ;------------------------------------------------------------
                           002B76 13758 	G$axradio_get_local_address$0$0 ==.
                           002B76 13759 	C$easyax5043.c$2139$1$446 ==.
                                  13760 ;	..\COMMON\easyax5043.c:2139: void axradio_get_local_address(struct axradio_address_mask __generic *addr)
                                  13761 ;	-----------------------------------------
                                  13762 ;	 function axradio_get_local_address
                                  13763 ;	-----------------------------------------
      0036D9                      13764 _axradio_get_local_address:
      0036D9 AD 82            [24]13765 	mov	r5,dpl
      0036DB AE 83            [24]13766 	mov	r6,dph
      0036DD AF F0            [24]13767 	mov	r7,b
                           002B7C 13768 	C$easyax5043.c$2141$1$448 ==.
                                  13769 ;	..\COMMON\easyax5043.c:2141: memcpy_genericxdata(addr, &axradio_localaddr, sizeof(axradio_localaddr));
      0036DF 75 23 1F         [24]13770 	mov	_memcpy_PARM_2,#_axradio_localaddr
      0036E2 75 24 00         [24]13771 	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
      0036E5 75 25 00         [24]13772 	mov	(_memcpy_PARM_2 + 2),#0x00
      0036E8 75 26 08         [24]13773 	mov	_memcpy_PARM_3,#0x08
      0036EB 75 27 00         [24]13774 	mov	(_memcpy_PARM_3 + 1),#0x00
      0036EE 8D 82            [24]13775 	mov	dpl,r5
      0036F0 8E 83            [24]13776 	mov	dph,r6
      0036F2 8F F0            [24]13777 	mov	b,r7
      0036F4 12 46 4D         [24]13778 	lcall	_memcpy
                           002B94 13779 	C$easyax5043.c$2142$1$448 ==.
                           002B94 13780 	XG$axradio_get_local_address$0$0 ==.
      0036F7 22               [24]13781 	ret
                                  13782 ;------------------------------------------------------------
                                  13783 ;Allocation info for local variables in function 'axradio_set_default_remote_address'
                                  13784 ;------------------------------------------------------------
                                  13785 ;addr                      Allocated to registers r5 r6 r7 
                                  13786 ;------------------------------------------------------------
                           002B95 13787 	G$axradio_set_default_remote_address$0$0 ==.
                           002B95 13788 	C$easyax5043.c$2144$1$448 ==.
                                  13789 ;	..\COMMON\easyax5043.c:2144: void axradio_set_default_remote_address(const struct axradio_address __generic *addr)
                                  13790 ;	-----------------------------------------
                                  13791 ;	 function axradio_set_default_remote_address
                                  13792 ;	-----------------------------------------
      0036F8                      13793 _axradio_set_default_remote_address:
      0036F8 AD 82            [24]13794 	mov	r5,dpl
      0036FA AE 83            [24]13795 	mov	r6,dph
      0036FC AF F0            [24]13796 	mov	r7,b
                           002B9B 13797 	C$easyax5043.c$2146$1$450 ==.
                                  13798 ;	..\COMMON\easyax5043.c:2146: memcpy_xdatageneric(&axradio_default_remoteaddr, addr, sizeof(axradio_default_remoteaddr));
      0036FE 8D 23            [24]13799 	mov	_memcpy_PARM_2,r5
      003700 8E 24            [24]13800 	mov	(_memcpy_PARM_2 + 1),r6
      003702 8F 25            [24]13801 	mov	(_memcpy_PARM_2 + 2),r7
      003704 75 26 04         [24]13802 	mov	_memcpy_PARM_3,#0x04
      003707 75 27 00         [24]13803 	mov	(_memcpy_PARM_3 + 1),#0x00
      00370A 90 00 27         [24]13804 	mov	dptr,#_axradio_default_remoteaddr
      00370D 75 F0 00         [24]13805 	mov	b,#0x00
      003710 12 46 4D         [24]13806 	lcall	_memcpy
                           002BB0 13807 	C$easyax5043.c$2147$1$450 ==.
                           002BB0 13808 	XG$axradio_set_default_remote_address$0$0 ==.
      003713 22               [24]13809 	ret
                                  13810 ;------------------------------------------------------------
                                  13811 ;Allocation info for local variables in function 'axradio_get_default_remote_address'
                                  13812 ;------------------------------------------------------------
                                  13813 ;addr                      Allocated to registers r5 r6 r7 
                                  13814 ;------------------------------------------------------------
                           002BB1 13815 	G$axradio_get_default_remote_address$0$0 ==.
                           002BB1 13816 	C$easyax5043.c$2149$1$450 ==.
                                  13817 ;	..\COMMON\easyax5043.c:2149: void axradio_get_default_remote_address(struct axradio_address __generic *addr)
                                  13818 ;	-----------------------------------------
                                  13819 ;	 function axradio_get_default_remote_address
                                  13820 ;	-----------------------------------------
      003714                      13821 _axradio_get_default_remote_address:
      003714 AD 82            [24]13822 	mov	r5,dpl
      003716 AE 83            [24]13823 	mov	r6,dph
      003718 AF F0            [24]13824 	mov	r7,b
                           002BB7 13825 	C$easyax5043.c$2151$1$452 ==.
                                  13826 ;	..\COMMON\easyax5043.c:2151: memcpy_genericxdata(addr, &axradio_default_remoteaddr, sizeof(axradio_default_remoteaddr));
      00371A 75 23 27         [24]13827 	mov	_memcpy_PARM_2,#_axradio_default_remoteaddr
      00371D 75 24 00         [24]13828 	mov	(_memcpy_PARM_2 + 1),#(_axradio_default_remoteaddr >> 8)
      003720 75 25 00         [24]13829 	mov	(_memcpy_PARM_2 + 2),#0x00
      003723 75 26 04         [24]13830 	mov	_memcpy_PARM_3,#0x04
      003726 75 27 00         [24]13831 	mov	(_memcpy_PARM_3 + 1),#0x00
      003729 8D 82            [24]13832 	mov	dpl,r5
      00372B 8E 83            [24]13833 	mov	dph,r6
      00372D 8F F0            [24]13834 	mov	b,r7
      00372F 12 46 4D         [24]13835 	lcall	_memcpy
                           002BCF 13836 	C$easyax5043.c$2152$1$452 ==.
                           002BCF 13837 	XG$axradio_get_default_remote_address$0$0 ==.
      003732 22               [24]13838 	ret
                                  13839 ;------------------------------------------------------------
                                  13840 ;Allocation info for local variables in function 'axradio_transmit'
                                  13841 ;------------------------------------------------------------
                                  13842 ;pkt                       Allocated with name '_axradio_transmit_PARM_2'
                                  13843 ;pktlen                    Allocated with name '_axradio_transmit_PARM_3'
                                  13844 ;addr                      Allocated to registers r5 r6 r7 
                                  13845 ;fifofree                  Allocated to registers r3 r4 
                                  13846 ;i                         Allocated to registers r4 
                                  13847 ;iesave                    Allocated to registers r4 
                                  13848 ;len_byte                  Allocated to registers r6 
                                  13849 ;------------------------------------------------------------
                           002BD0 13850 	G$axradio_transmit$0$0 ==.
                           002BD0 13851 	C$easyax5043.c$2154$1$452 ==.
                                  13852 ;	..\COMMON\easyax5043.c:2154: uint8_t axradio_transmit(const struct axradio_address __generic *addr, const uint8_t __generic *pkt, uint16_t pktlen)
                                  13853 ;	-----------------------------------------
                                  13854 ;	 function axradio_transmit
                                  13855 ;	-----------------------------------------
      003733                      13856 _axradio_transmit:
      003733 AD 82            [24]13857 	mov	r5,dpl
      003735 AE 83            [24]13858 	mov	r6,dph
      003737 AF F0            [24]13859 	mov	r7,b
                           002BD6 13860 	C$easyax5043.c$2156$1$454 ==.
                                  13861 ;	..\COMMON\easyax5043.c:2156: switch (axradio_mode) {
      003739 AC 08            [24]13862 	mov	r4,_axradio_mode
      00373B BC 10 03         [24]13863 	cjne	r4,#0x10,00278$
      00373E 02 38 31         [24]13864 	ljmp	00125$
      003741                      13865 00278$:
      003741 BC 11 03         [24]13866 	cjne	r4,#0x11,00279$
      003744 02 38 31         [24]13867 	ljmp	00125$
      003747                      13868 00279$:
      003747 BC 12 03         [24]13869 	cjne	r4,#0x12,00280$
      00374A 02 38 31         [24]13870 	ljmp	00125$
      00374D                      13871 00280$:
      00374D BC 13 03         [24]13872 	cjne	r4,#0x13,00281$
      003750 02 38 31         [24]13873 	ljmp	00125$
      003753                      13874 00281$:
      003753 BC 18 02         [24]13875 	cjne	r4,#0x18,00282$
      003756 80 2F            [24]13876 	sjmp	00105$
      003758                      13877 00282$:
      003758 BC 19 02         [24]13878 	cjne	r4,#0x19,00283$
      00375B 80 2A            [24]13879 	sjmp	00105$
      00375D                      13880 00283$:
      00375D BC 1A 02         [24]13881 	cjne	r4,#0x1a,00284$
      003760 80 25            [24]13882 	sjmp	00105$
      003762                      13883 00284$:
      003762 BC 1B 02         [24]13884 	cjne	r4,#0x1b,00285$
      003765 80 20            [24]13885 	sjmp	00105$
      003767                      13886 00285$:
      003767 BC 1C 02         [24]13887 	cjne	r4,#0x1c,00286$
      00376A 80 1B            [24]13888 	sjmp	00105$
      00376C                      13889 00286$:
      00376C BC 20 03         [24]13890 	cjne	r4,#0x20,00287$
      00376F 02 37 F6         [24]13891 	ljmp	00116$
      003772                      13892 00287$:
      003772 BC 21 03         [24]13893 	cjne	r4,#0x21,00288$
      003775 02 37 F6         [24]13894 	ljmp	00116$
      003778                      13895 00288$:
      003778 BC 30 03         [24]13896 	cjne	r4,#0x30,00289$
      00377B 02 38 3E         [24]13897 	ljmp	00128$
      00377E                      13898 00289$:
      00377E BC 31 03         [24]13899 	cjne	r4,#0x31,00290$
      003781 02 38 3E         [24]13900 	ljmp	00128$
      003784                      13901 00290$:
      003784 02 3A 99         [24]13902 	ljmp	00162$
                           002C24 13903 	C$easyax5043.c$2161$2$455 ==.
                                  13904 ;	..\COMMON\easyax5043.c:2161: case AXRADIO_MODE_STREAM_TRANSMIT_SCRAM_LSB:
      003787                      13905 00105$:
                           002C24 13906 	C$easyax5043.c$2163$3$456 ==.
                                  13907 ;	..\COMMON\easyax5043.c:2163: uint16_t __autodata fifofree = radio_read16((uint16_t)&AX5043_FIFOFREE1);
      003787 90 40 2C         [24]13908 	mov	dptr,#_AX5043_FIFOFREE1
      00378A 12 48 FD         [24]13909 	lcall	_radio_read16
      00378D AB 82            [24]13910 	mov	r3,dpl
      00378F AC 83            [24]13911 	mov	r4,dph
                           002C2E 13912 	C$easyax5043.c$2164$3$456 ==.
                                  13913 ;	..\COMMON\easyax5043.c:2164: if (fifofree < pktlen + 3)
      003791 74 03            [12]13914 	mov	a,#0x03
      003793 25 10            [12]13915 	add	a,_axradio_transmit_PARM_3
      003795 F9               [12]13916 	mov	r1,a
      003796 E4               [12]13917 	clr	a
      003797 35 11            [12]13918 	addc	a,(_axradio_transmit_PARM_3 + 1)
      003799 FA               [12]13919 	mov	r2,a
      00379A C3               [12]13920 	clr	c
      00379B EB               [12]13921 	mov	a,r3
      00379C 99               [12]13922 	subb	a,r1
      00379D EC               [12]13923 	mov	a,r4
      00379E 9A               [12]13924 	subb	a,r2
      00379F 50 06            [24]13925 	jnc	00107$
                           002C3E 13926 	C$easyax5043.c$2165$3$456 ==.
                                  13927 ;	..\COMMON\easyax5043.c:2165: return AXRADIO_ERR_INVALID;
      0037A1 75 82 04         [24]13928 	mov	dpl,#0x04
      0037A4 02 3A 9C         [24]13929 	ljmp	00164$
      0037A7                      13930 00107$:
                           002C44 13931 	C$easyax5043.c$2167$2$455 ==.
                                  13932 ;	..\COMMON\easyax5043.c:2167: if (pktlen) {
      0037A7 E5 10            [12]13933 	mov	a,_axradio_transmit_PARM_3
      0037A9 45 11            [12]13934 	orl	a,(_axradio_transmit_PARM_3 + 1)
      0037AB 60 2A            [24]13935 	jz	00112$
                           002C4A 13936 	C$easyax5043.c$2168$3$455 ==.
                                  13937 ;	..\COMMON\easyax5043.c:2168: uint8_t __autodata i = pktlen;
      0037AD AC 10            [24]13938 	mov	r4,_axradio_transmit_PARM_3
                           002C4C 13939 	C$easyax5043.c$2169$3$457 ==.
                                  13940 ;	..\COMMON\easyax5043.c:2169: AX5043_FIFODATA = AX5043_FIFOCMD_DATA | (7 << 5);
      0037AF 90 40 29         [24]13941 	mov	dptr,#_AX5043_FIFODATA
      0037B2 74 E1            [12]13942 	mov	a,#0xe1
      0037B4 F0               [24]13943 	movx	@dptr,a
                           002C52 13944 	C$easyax5043.c$2170$3$457 ==.
                                  13945 ;	..\COMMON\easyax5043.c:2170: AX5043_FIFODATA = i + 1;
      0037B5 EC               [12]13946 	mov	a,r4
      0037B6 04               [12]13947 	inc	a
      0037B7 F0               [24]13948 	movx	@dptr,a
                           002C55 13949 	C$easyax5043.c$2171$3$457 ==.
                                  13950 ;	..\COMMON\easyax5043.c:2171: AX5043_FIFODATA = 0x08;
      0037B8 74 08            [12]13951 	mov	a,#0x08
      0037BA F0               [24]13952 	movx	@dptr,a
                           002C58 13953 	C$easyax5043.c$2172$1$454 ==.
                                  13954 ;	..\COMMON\easyax5043.c:2172: do {
      0037BB A9 0D            [24]13955 	mov	r1,_axradio_transmit_PARM_2
      0037BD AA 0E            [24]13956 	mov	r2,(_axradio_transmit_PARM_2 + 1)
      0037BF AB 0F            [24]13957 	mov	r3,(_axradio_transmit_PARM_2 + 2)
      0037C1                      13958 00108$:
                           002C5E 13959 	C$easyax5043.c$2173$4$458 ==.
                                  13960 ;	..\COMMON\easyax5043.c:2173: AX5043_FIFODATA = *pkt++;
      0037C1 89 82            [24]13961 	mov	dpl,r1
      0037C3 8A 83            [24]13962 	mov	dph,r2
      0037C5 8B F0            [24]13963 	mov	b,r3
      0037C7 12 54 66         [24]13964 	lcall	__gptrget
      0037CA F8               [12]13965 	mov	r0,a
      0037CB A3               [24]13966 	inc	dptr
      0037CC A9 82            [24]13967 	mov	r1,dpl
      0037CE AA 83            [24]13968 	mov	r2,dph
      0037D0 90 40 29         [24]13969 	mov	dptr,#_AX5043_FIFODATA
      0037D3 E8               [12]13970 	mov	a,r0
      0037D4 F0               [24]13971 	movx	@dptr,a
                           002C72 13972 	C$easyax5043.c$2174$3$457 ==.
                                  13973 ;	..\COMMON\easyax5043.c:2174: } while (--i);
      0037D5 DC EA            [24]13974 	djnz	r4,00108$
      0037D7                      13975 00112$:
                           002C74 13976 	C$easyax5043.c$2176$2$455 ==.
                                  13977 ;	..\COMMON\easyax5043.c:2176: AX5043_FIFOSTAT =  4; // FIFO commit
      0037D7 90 40 28         [24]13978 	mov	dptr,#_AX5043_FIFOSTAT
      0037DA 74 04            [12]13979 	mov	a,#0x04
      0037DC F0               [24]13980 	movx	@dptr,a
                           002C7A 13981 	C$easyax5043.c$2178$3$459 ==.
                                  13982 ;	..\COMMON\easyax5043.c:2178: uint8_t __autodata iesave = IE & 0x80;
      0037DD 74 80            [12]13983 	mov	a,#0x80
      0037DF 55 A8            [12]13984 	anl	a,_IE
      0037E1 FC               [12]13985 	mov	r4,a
                           002C7F 13986 	C$easyax5043.c$2179$3$459 ==.
                                  13987 ;	..\COMMON\easyax5043.c:2179: EA = 0;
      0037E2 C2 AF            [12]13988 	clr	_EA
                           002C81 13989 	C$easyax5043.c$2180$3$459 ==.
                                  13990 ;	..\COMMON\easyax5043.c:2180: AX5043_IRQMASK0 |= 0x08;
      0037E4 90 40 07         [24]13991 	mov	dptr,#_AX5043_IRQMASK0
      0037E7 E0               [24]13992 	movx	a,@dptr
      0037E8 FB               [12]13993 	mov	r3,a
      0037E9 74 08            [12]13994 	mov	a,#0x08
      0037EB 4B               [12]13995 	orl	a,r3
      0037EC F0               [24]13996 	movx	@dptr,a
                           002C8A 13997 	C$easyax5043.c$2181$3$459 ==.
                                  13998 ;	..\COMMON\easyax5043.c:2181: IE |= iesave;
      0037ED EC               [12]13999 	mov	a,r4
      0037EE 42 A8            [12]14000 	orl	_IE,a
                           002C8D 14001 	C$easyax5043.c$2183$2$455 ==.
                                  14002 ;	..\COMMON\easyax5043.c:2183: return AXRADIO_ERR_NOERROR;
      0037F0 75 82 00         [24]14003 	mov	dpl,#0x00
      0037F3 02 3A 9C         [24]14004 	ljmp	00164$
                           002C93 14005 	C$easyax5043.c$2190$2$455 ==.
                                  14006 ;	..\COMMON\easyax5043.c:2190: case AXRADIO_MODE_WOR_RECEIVE:
      0037F6                      14007 00116$:
                           002C93 14008 	C$easyax5043.c$2191$2$455 ==.
                                  14009 ;	..\COMMON\easyax5043.c:2191: if (axradio_syncstate != syncstate_off)
      0037F6 90 00 05         [24]14010 	mov	dptr,#_axradio_syncstate
      0037F9 E0               [24]14011 	movx	a,@dptr
      0037FA E0               [24]14012 	movx	a,@dptr
      0037FB 60 06            [24]14013 	jz	00118$
                           002C9A 14014 	C$easyax5043.c$2192$2$455 ==.
                                  14015 ;	..\COMMON\easyax5043.c:2192: return AXRADIO_ERR_BUSY;
      0037FD 75 82 02         [24]14016 	mov	dpl,#0x02
      003800 02 3A 9C         [24]14017 	ljmp	00164$
      003803                      14018 00118$:
                           002CA0 14019 	C$easyax5043.c$2193$2$455 ==.
                                  14020 ;	..\COMMON\easyax5043.c:2193: AX5043_IRQMASK1 = 0x00;
      003803 90 40 06         [24]14021 	mov	dptr,#_AX5043_IRQMASK1
      003806 E4               [12]14022 	clr	a
      003807 F0               [24]14023 	movx	@dptr,a
                           002CA5 14024 	C$easyax5043.c$2194$2$455 ==.
                                  14025 ;	..\COMMON\easyax5043.c:2194: AX5043_IRQMASK0 = 0x00;
      003808 90 40 07         [24]14026 	mov	dptr,#_AX5043_IRQMASK0
      00380B F0               [24]14027 	movx	@dptr,a
                           002CA9 14028 	C$easyax5043.c$2195$2$455 ==.
                                  14029 ;	..\COMMON\easyax5043.c:2195: AX5043_PWRMODE = AX5043_PWRSTATE_XTAL_ON;
      00380C 90 40 02         [24]14030 	mov	dptr,#_AX5043_PWRMODE
      00380F 74 05            [12]14031 	mov	a,#0x05
      003811 F0               [24]14032 	movx	@dptr,a
                           002CAF 14033 	C$easyax5043.c$2196$2$455 ==.
                                  14034 ;	..\COMMON\easyax5043.c:2196: AX5043_FIFOSTAT = 3;
      003812 90 40 28         [24]14035 	mov	dptr,#_AX5043_FIFOSTAT
      003815 74 03            [12]14036 	mov	a,#0x03
      003817 F0               [24]14037 	movx	@dptr,a
                           002CB5 14038 	C$easyax5043.c$2197$2$455 ==.
                                  14039 ;	..\COMMON\easyax5043.c:2197: while (AX5043_POWSTAT & 0x08);
      003818                      14040 00119$:
      003818 90 40 03         [24]14041 	mov	dptr,#_AX5043_POWSTAT
      00381B E0               [24]14042 	movx	a,@dptr
      00381C FC               [12]14043 	mov	r4,a
      00381D 20 E3 F8         [24]14044 	jb	acc.3,00119$
                           002CBD 14045 	C$easyax5043.c$2198$2$455 ==.
                                  14046 ;	..\COMMON\easyax5043.c:2198: ax5043_init_registers_tx();
      003820 C0 07            [24]14047 	push	ar7
      003822 C0 06            [24]14048 	push	ar6
      003824 C0 05            [24]14049 	push	ar5
      003826 12 0C 3C         [24]14050 	lcall	_ax5043_init_registers_tx
      003829 D0 05            [24]14051 	pop	ar5
      00382B D0 06            [24]14052 	pop	ar6
      00382D D0 07            [24]14053 	pop	ar7
                           002CCC 14054 	C$easyax5043.c$2199$2$455 ==.
                                  14055 ;	..\COMMON\easyax5043.c:2199: goto dotx;
                           002CCC 14056 	C$easyax5043.c$2204$2$455 ==.
                                  14057 ;	..\COMMON\easyax5043.c:2204: case AXRADIO_MODE_WOR_ACK_TRANSMIT:
      00382F 80 0D            [24]14058 	sjmp	00128$
      003831                      14059 00125$:
                           002CCE 14060 	C$easyax5043.c$2205$2$455 ==.
                                  14061 ;	..\COMMON\easyax5043.c:2205: if (axradio_syncstate != syncstate_off)
      003831 90 00 05         [24]14062 	mov	dptr,#_axradio_syncstate
      003834 E0               [24]14063 	movx	a,@dptr
      003835 E0               [24]14064 	movx	a,@dptr
      003836 60 06            [24]14065 	jz	00128$
                           002CD5 14066 	C$easyax5043.c$2206$2$455 ==.
                                  14067 ;	..\COMMON\easyax5043.c:2206: return AXRADIO_ERR_BUSY;
      003838 75 82 02         [24]14068 	mov	dpl,#0x02
      00383B 02 3A 9C         [24]14069 	ljmp	00164$
                           002CDB 14070 	C$easyax5043.c$2207$2$455 ==.
                                  14071 ;	..\COMMON\easyax5043.c:2207: dotx:
      00383E                      14072 00128$:
                           002CDB 14073 	C$easyax5043.c$2208$2$455 ==.
                                  14074 ;	..\COMMON\easyax5043.c:2208: axradio_ack_count = axradio_framing_ack_retransmissions;
      00383E 90 55 EC         [24]14075 	mov	dptr,#_axradio_framing_ack_retransmissions
      003841 E4               [12]14076 	clr	a
      003842 93               [24]14077 	movc	a,@a+dptr
      003843 90 00 0F         [24]14078 	mov	dptr,#_axradio_ack_count
      003846 F0               [24]14079 	movx	@dptr,a
                           002CE4 14080 	C$easyax5043.c$2209$2$455 ==.
                                  14081 ;	..\COMMON\easyax5043.c:2209: ++axradio_ack_seqnr;
      003847 90 00 10         [24]14082 	mov	dptr,#_axradio_ack_seqnr
      00384A E0               [24]14083 	movx	a,@dptr
      00384B 24 01            [12]14084 	add	a,#0x01
      00384D F0               [24]14085 	movx	@dptr,a
                           002CEB 14086 	C$easyax5043.c$2210$2$455 ==.
                                  14087 ;	..\COMMON\easyax5043.c:2210: axradio_txbuffer_len = pktlen + axradio_framing_maclen;
      00384E 90 55 D5         [24]14088 	mov	dptr,#_axradio_framing_maclen
      003851 E4               [12]14089 	clr	a
      003852 93               [24]14090 	movc	a,@a+dptr
      003853 FC               [12]14091 	mov	r4,a
      003854 7B 00            [12]14092 	mov	r3,#0x00
      003856 25 10            [12]14093 	add	a,_axradio_transmit_PARM_3
      003858 FA               [12]14094 	mov	r2,a
      003859 EB               [12]14095 	mov	a,r3
      00385A 35 11            [12]14096 	addc	a,(_axradio_transmit_PARM_3 + 1)
      00385C FB               [12]14097 	mov	r3,a
      00385D 90 00 06         [24]14098 	mov	dptr,#_axradio_txbuffer_len
      003860 EA               [12]14099 	mov	a,r2
      003861 F0               [24]14100 	movx	@dptr,a
      003862 EB               [12]14101 	mov	a,r3
      003863 A3               [24]14102 	inc	dptr
      003864 F0               [24]14103 	movx	@dptr,a
                           002D02 14104 	C$easyax5043.c$2211$2$455 ==.
                                  14105 ;	..\COMMON\easyax5043.c:2211: if (axradio_txbuffer_len > sizeof(axradio_txbuffer))
      003865 C3               [12]14106 	clr	c
      003866 74 04            [12]14107 	mov	a,#0x04
      003868 9A               [12]14108 	subb	a,r2
      003869 74 01            [12]14109 	mov	a,#0x01
      00386B 9B               [12]14110 	subb	a,r3
      00386C 50 06            [24]14111 	jnc	00130$
                           002D0B 14112 	C$easyax5043.c$2212$2$455 ==.
                                  14113 ;	..\COMMON\easyax5043.c:2212: return AXRADIO_ERR_INVALID;
      00386E 75 82 04         [24]14114 	mov	dpl,#0x04
      003871 02 3A 9C         [24]14115 	ljmp	00164$
      003874                      14116 00130$:
                           002D11 14117 	C$easyax5043.c$2213$2$455 ==.
                                  14118 ;	..\COMMON\easyax5043.c:2213: memset_xdata(axradio_txbuffer, 0, axradio_framing_maclen);
      003874 8C 24            [24]14119 	mov	_memset_PARM_3,r4
      003876 75 25 00         [24]14120 	mov	(_memset_PARM_3 + 1),#0x00
      003879 75 23 00         [24]14121 	mov	_memset_PARM_2,#0x00
      00387C 90 00 2B         [24]14122 	mov	dptr,#_axradio_txbuffer
      00387F 75 F0 00         [24]14123 	mov	b,#0x00
      003882 C0 07            [24]14124 	push	ar7
      003884 C0 06            [24]14125 	push	ar6
      003886 C0 05            [24]14126 	push	ar5
      003888 12 46 2E         [24]14127 	lcall	_memset
                           002D28 14128 	C$easyax5043.c$2214$2$455 ==.
                                  14129 ;	..\COMMON\easyax5043.c:2214: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_maclen], pkt, pktlen);
      00388B 90 55 D5         [24]14130 	mov	dptr,#_axradio_framing_maclen
      00388E E4               [12]14131 	clr	a
      00388F 93               [24]14132 	movc	a,@a+dptr
      003890 24 2B            [12]14133 	add	a,#_axradio_txbuffer
      003892 FC               [12]14134 	mov	r4,a
      003893 E4               [12]14135 	clr	a
      003894 34 00            [12]14136 	addc	a,#(_axradio_txbuffer >> 8)
      003896 FB               [12]14137 	mov	r3,a
      003897 7A 00            [12]14138 	mov	r2,#0x00
      003899 85 0D 23         [24]14139 	mov	_memcpy_PARM_2,_axradio_transmit_PARM_2
      00389C 85 0E 24         [24]14140 	mov	(_memcpy_PARM_2 + 1),(_axradio_transmit_PARM_2 + 1)
      00389F 85 0F 25         [24]14141 	mov	(_memcpy_PARM_2 + 2),(_axradio_transmit_PARM_2 + 2)
      0038A2 85 10 26         [24]14142 	mov	_memcpy_PARM_3,_axradio_transmit_PARM_3
      0038A5 85 11 27         [24]14143 	mov	(_memcpy_PARM_3 + 1),(_axradio_transmit_PARM_3 + 1)
      0038A8 8C 82            [24]14144 	mov	dpl,r4
      0038AA 8B 83            [24]14145 	mov	dph,r3
      0038AC 8A F0            [24]14146 	mov	b,r2
      0038AE 12 46 4D         [24]14147 	lcall	_memcpy
      0038B1 D0 05            [24]14148 	pop	ar5
      0038B3 D0 06            [24]14149 	pop	ar6
      0038B5 D0 07            [24]14150 	pop	ar7
                           002D54 14151 	C$easyax5043.c$2215$2$455 ==.
                                  14152 ;	..\COMMON\easyax5043.c:2215: if (axradio_framing_ack_seqnrpos != 0xff)
      0038B7 90 55 ED         [24]14153 	mov	dptr,#_axradio_framing_ack_seqnrpos
      0038BA E4               [12]14154 	clr	a
      0038BB 93               [24]14155 	movc	a,@a+dptr
      0038BC FC               [12]14156 	mov	r4,a
      0038BD BC FF 02         [24]14157 	cjne	r4,#0xff,00299$
      0038C0 80 12            [24]14158 	sjmp	00132$
      0038C2                      14159 00299$:
                           002D5F 14160 	C$easyax5043.c$2216$2$455 ==.
                                  14161 ;	..\COMMON\easyax5043.c:2216: axradio_txbuffer[axradio_framing_ack_seqnrpos] = axradio_ack_seqnr;
      0038C2 EC               [12]14162 	mov	a,r4
      0038C3 24 2B            [12]14163 	add	a,#_axradio_txbuffer
      0038C5 FC               [12]14164 	mov	r4,a
      0038C6 E4               [12]14165 	clr	a
      0038C7 34 00            [12]14166 	addc	a,#(_axradio_txbuffer >> 8)
      0038C9 FB               [12]14167 	mov	r3,a
      0038CA 90 00 10         [24]14168 	mov	dptr,#_axradio_ack_seqnr
      0038CD E0               [24]14169 	movx	a,@dptr
      0038CE FA               [12]14170 	mov	r2,a
      0038CF 8C 82            [24]14171 	mov	dpl,r4
      0038D1 8B 83            [24]14172 	mov	dph,r3
      0038D3 F0               [24]14173 	movx	@dptr,a
      0038D4                      14174 00132$:
                           002D71 14175 	C$easyax5043.c$2217$2$455 ==.
                                  14176 ;	..\COMMON\easyax5043.c:2217: if (axradio_framing_destaddrpos != 0xff)
      0038D4 90 55 D7         [24]14177 	mov	dptr,#_axradio_framing_destaddrpos
      0038D7 E4               [12]14178 	clr	a
      0038D8 93               [24]14179 	movc	a,@a+dptr
      0038D9 FC               [12]14180 	mov	r4,a
      0038DA BC FF 02         [24]14181 	cjne	r4,#0xff,00300$
      0038DD 80 23            [24]14182 	sjmp	00134$
      0038DF                      14183 00300$:
                           002D7C 14184 	C$easyax5043.c$2218$2$455 ==.
                                  14185 ;	..\COMMON\easyax5043.c:2218: memcpy_xdatageneric(&axradio_txbuffer[axradio_framing_destaddrpos], &addr->addr, axradio_framing_addrlen);
      0038DF EC               [12]14186 	mov	a,r4
      0038E0 24 2B            [12]14187 	add	a,#_axradio_txbuffer
      0038E2 FC               [12]14188 	mov	r4,a
      0038E3 E4               [12]14189 	clr	a
      0038E4 34 00            [12]14190 	addc	a,#(_axradio_txbuffer >> 8)
      0038E6 FB               [12]14191 	mov	r3,a
      0038E7 7A 00            [12]14192 	mov	r2,#0x00
      0038E9 8D 23            [24]14193 	mov	_memcpy_PARM_2,r5
      0038EB 8E 24            [24]14194 	mov	(_memcpy_PARM_2 + 1),r6
      0038ED 8F 25            [24]14195 	mov	(_memcpy_PARM_2 + 2),r7
      0038EF 90 55 D6         [24]14196 	mov	dptr,#_axradio_framing_addrlen
      0038F2 E4               [12]14197 	clr	a
      0038F3 93               [24]14198 	movc	a,@a+dptr
      0038F4 FF               [12]14199 	mov	r7,a
      0038F5 8F 26            [24]14200 	mov	_memcpy_PARM_3,r7
                                  14201 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      0038F7 8A 27            [24]14202 	mov	(_memcpy_PARM_3 + 1),r2
      0038F9 8C 82            [24]14203 	mov	dpl,r4
      0038FB 8B 83            [24]14204 	mov	dph,r3
      0038FD 8A F0            [24]14205 	mov	b,r2
      0038FF 12 46 4D         [24]14206 	lcall	_memcpy
      003902                      14207 00134$:
                           002D9F 14208 	C$easyax5043.c$2219$2$455 ==.
                                  14209 ;	..\COMMON\easyax5043.c:2219: if (axradio_framing_sourceaddrpos != 0xff)
      003902 90 55 D8         [24]14210 	mov	dptr,#_axradio_framing_sourceaddrpos
      003905 E4               [12]14211 	clr	a
      003906 93               [24]14212 	movc	a,@a+dptr
      003907 FF               [12]14213 	mov	r7,a
      003908 BF FF 02         [24]14214 	cjne	r7,#0xff,00301$
      00390B 80 25            [24]14215 	sjmp	00136$
      00390D                      14216 00301$:
                           002DAA 14217 	C$easyax5043.c$2220$2$455 ==.
                                  14218 ;	..\COMMON\easyax5043.c:2220: memcpy_xdata(&axradio_txbuffer[axradio_framing_sourceaddrpos], &axradio_localaddr.addr, axradio_framing_addrlen);
      00390D EF               [12]14219 	mov	a,r7
      00390E 24 2B            [12]14220 	add	a,#_axradio_txbuffer
      003910 FF               [12]14221 	mov	r7,a
      003911 E4               [12]14222 	clr	a
      003912 34 00            [12]14223 	addc	a,#(_axradio_txbuffer >> 8)
      003914 FE               [12]14224 	mov	r6,a
      003915 7D 00            [12]14225 	mov	r5,#0x00
      003917 75 23 1F         [24]14226 	mov	_memcpy_PARM_2,#_axradio_localaddr
      00391A 75 24 00         [24]14227 	mov	(_memcpy_PARM_2 + 1),#(_axradio_localaddr >> 8)
                                  14228 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_2 + 2),#0x00
      00391D 8D 25            [24]14229 	mov	(_memcpy_PARM_2 + 2),r5
      00391F 90 55 D6         [24]14230 	mov	dptr,#_axradio_framing_addrlen
      003922 E4               [12]14231 	clr	a
      003923 93               [24]14232 	movc	a,@a+dptr
      003924 FC               [12]14233 	mov	r4,a
      003925 8C 26            [24]14234 	mov	_memcpy_PARM_3,r4
                                  14235 ;	1-genFromRTrack replaced	mov	(_memcpy_PARM_3 + 1),#0x00
      003927 8D 27            [24]14236 	mov	(_memcpy_PARM_3 + 1),r5
      003929 8F 82            [24]14237 	mov	dpl,r7
      00392B 8E 83            [24]14238 	mov	dph,r6
      00392D 8D F0            [24]14239 	mov	b,r5
      00392F 12 46 4D         [24]14240 	lcall	_memcpy
      003932                      14241 00136$:
                           002DCF 14242 	C$easyax5043.c$2221$2$455 ==.
                                  14243 ;	..\COMMON\easyax5043.c:2221: if (axradio_framing_lenmask) {
      003932 90 55 DB         [24]14244 	mov	dptr,#_axradio_framing_lenmask
      003935 E4               [12]14245 	clr	a
      003936 93               [24]14246 	movc	a,@a+dptr
      003937 FF               [12]14247 	mov	r7,a
      003938 60 30            [24]14248 	jz	00138$
                           002DD7 14249 	C$easyax5043.c$2222$3$460 ==.
                                  14250 ;	..\COMMON\easyax5043.c:2222: uint8_t __autodata len_byte = (uint8_t)(axradio_txbuffer_len - axradio_framing_lenoffs) & axradio_framing_lenmask; // if you prefer not counting the len byte itself, set LENOFFS = 1
      00393A 90 00 06         [24]14251 	mov	dptr,#_axradio_txbuffer_len
      00393D E0               [24]14252 	movx	a,@dptr
      00393E FD               [12]14253 	mov	r5,a
      00393F A3               [24]14254 	inc	dptr
      003940 E0               [24]14255 	movx	a,@dptr
      003941 90 55 DA         [24]14256 	mov	dptr,#_axradio_framing_lenoffs
      003944 E4               [12]14257 	clr	a
      003945 93               [24]14258 	movc	a,@a+dptr
      003946 FE               [12]14259 	mov	r6,a
      003947 ED               [12]14260 	mov	a,r5
      003948 C3               [12]14261 	clr	c
      003949 9E               [12]14262 	subb	a,r6
      00394A 5F               [12]14263 	anl	a,r7
      00394B FE               [12]14264 	mov	r6,a
                           002DE9 14265 	C$easyax5043.c$2223$3$460 ==.
                                  14266 ;	..\COMMON\easyax5043.c:2223: axradio_txbuffer[axradio_framing_lenpos] = (axradio_txbuffer[axradio_framing_lenpos] & (uint8_t)~axradio_framing_lenmask) | len_byte;
      00394C 90 55 D9         [24]14267 	mov	dptr,#_axradio_framing_lenpos
      00394F E4               [12]14268 	clr	a
      003950 93               [24]14269 	movc	a,@a+dptr
      003951 24 2B            [12]14270 	add	a,#_axradio_txbuffer
      003953 FD               [12]14271 	mov	r5,a
      003954 E4               [12]14272 	clr	a
      003955 34 00            [12]14273 	addc	a,#(_axradio_txbuffer >> 8)
      003957 FC               [12]14274 	mov	r4,a
      003958 8D 82            [24]14275 	mov	dpl,r5
      00395A 8C 83            [24]14276 	mov	dph,r4
      00395C E0               [24]14277 	movx	a,@dptr
      00395D FB               [12]14278 	mov	r3,a
      00395E EF               [12]14279 	mov	a,r7
      00395F F4               [12]14280 	cpl	a
      003960 FF               [12]14281 	mov	r7,a
      003961 5B               [12]14282 	anl	a,r3
      003962 42 06            [12]14283 	orl	ar6,a
      003964 8D 82            [24]14284 	mov	dpl,r5
      003966 8C 83            [24]14285 	mov	dph,r4
      003968 EE               [12]14286 	mov	a,r6
      003969 F0               [24]14287 	movx	@dptr,a
      00396A                      14288 00138$:
                           002E07 14289 	C$easyax5043.c$2225$2$455 ==.
                                  14290 ;	..\COMMON\easyax5043.c:2225: if (axradio_framing_swcrclen)
      00396A 90 55 DC         [24]14291 	mov	dptr,#_axradio_framing_swcrclen
      00396D E4               [12]14292 	clr	a
      00396E 93               [24]14293 	movc	a,@a+dptr
      00396F 60 20            [24]14294 	jz	00140$
                           002E0E 14295 	C$easyax5043.c$2226$2$455 ==.
                                  14296 ;	..\COMMON\easyax5043.c:2226: axradio_txbuffer_len = axradio_framing_append_crc(axradio_txbuffer, axradio_txbuffer_len);
      003971 90 00 06         [24]14297 	mov	dptr,#_axradio_txbuffer_len
      003974 E0               [24]14298 	movx	a,@dptr
      003975 C0 E0            [24]14299 	push	acc
      003977 A3               [24]14300 	inc	dptr
      003978 E0               [24]14301 	movx	a,@dptr
      003979 C0 E0            [24]14302 	push	acc
      00397B 90 00 2B         [24]14303 	mov	dptr,#_axradio_txbuffer
      00397E 12 09 7F         [24]14304 	lcall	_axradio_framing_append_crc
      003981 AE 82            [24]14305 	mov	r6,dpl
      003983 AF 83            [24]14306 	mov	r7,dph
      003985 15 81            [12]14307 	dec	sp
      003987 15 81            [12]14308 	dec	sp
      003989 90 00 06         [24]14309 	mov	dptr,#_axradio_txbuffer_len
      00398C EE               [12]14310 	mov	a,r6
      00398D F0               [24]14311 	movx	@dptr,a
      00398E EF               [12]14312 	mov	a,r7
      00398F A3               [24]14313 	inc	dptr
      003990 F0               [24]14314 	movx	@dptr,a
      003991                      14315 00140$:
                           002E2E 14316 	C$easyax5043.c$2227$2$455 ==.
                                  14317 ;	..\COMMON\easyax5043.c:2227: if (axradio_phy_pn9)
      003991 90 55 B4         [24]14318 	mov	dptr,#_axradio_phy_pn9
      003994 E4               [12]14319 	clr	a
      003995 93               [24]14320 	movc	a,@a+dptr
      003996 60 2F            [24]14321 	jz	00142$
                           002E35 14322 	C$easyax5043.c$2228$2$455 ==.
                                  14323 ;	..\COMMON\easyax5043.c:2228: pn9_buffer(axradio_txbuffer, axradio_txbuffer_len, 0x1ff, -(AX5043_ENCODING & 0x01));
      003998 90 40 11         [24]14324 	mov	dptr,#_AX5043_ENCODING
      00399B E0               [24]14325 	movx	a,@dptr
      00399C FF               [12]14326 	mov	r7,a
      00399D 53 07 01         [24]14327 	anl	ar7,#0x01
      0039A0 C3               [12]14328 	clr	c
      0039A1 E4               [12]14329 	clr	a
      0039A2 9F               [12]14330 	subb	a,r7
      0039A3 FF               [12]14331 	mov	r7,a
      0039A4 C0 07            [24]14332 	push	ar7
      0039A6 74 FF            [12]14333 	mov	a,#0xff
      0039A8 C0 E0            [24]14334 	push	acc
      0039AA 74 01            [12]14335 	mov	a,#0x01
      0039AC C0 E0            [24]14336 	push	acc
      0039AE 90 00 06         [24]14337 	mov	dptr,#_axradio_txbuffer_len
      0039B1 E0               [24]14338 	movx	a,@dptr
      0039B2 C0 E0            [24]14339 	push	acc
      0039B4 A3               [24]14340 	inc	dptr
      0039B5 E0               [24]14341 	movx	a,@dptr
      0039B6 C0 E0            [24]14342 	push	acc
      0039B8 90 00 2B         [24]14343 	mov	dptr,#_axradio_txbuffer
      0039BB 75 F0 00         [24]14344 	mov	b,#0x00
      0039BE 12 47 EB         [24]14345 	lcall	_pn9_buffer
      0039C1 E5 81            [12]14346 	mov	a,sp
      0039C3 24 FB            [12]14347 	add	a,#0xfb
      0039C5 F5 81            [12]14348 	mov	sp,a
      0039C7                      14349 00142$:
                           002E64 14350 	C$easyax5043.c$2229$2$455 ==.
                                  14351 ;	..\COMMON\easyax5043.c:2229: if (axradio_mode == AXRADIO_MODE_SYNC_MASTER ||
      0039C7 74 30            [12]14352 	mov	a,#0x30
      0039C9 B5 08 02         [24]14353 	cjne	a,_axradio_mode,00305$
      0039CC 80 05            [24]14354 	sjmp	00143$
      0039CE                      14355 00305$:
                           002E6B 14356 	C$easyax5043.c$2230$2$455 ==.
                                  14357 ;	..\COMMON\easyax5043.c:2230: axradio_mode == AXRADIO_MODE_SYNC_ACK_MASTER)
      0039CE 74 31            [12]14358 	mov	a,#0x31
      0039D0 B5 08 06         [24]14359 	cjne	a,_axradio_mode,00144$
      0039D3                      14360 00143$:
                           002E70 14361 	C$easyax5043.c$2231$2$455 ==.
                                  14362 ;	..\COMMON\easyax5043.c:2231: return AXRADIO_ERR_NOERROR;
      0039D3 75 82 00         [24]14363 	mov	dpl,#0x00
      0039D6 02 3A 9C         [24]14364 	ljmp	00164$
      0039D9                      14365 00144$:
                           002E76 14366 	C$easyax5043.c$2232$2$455 ==.
                                  14367 ;	..\COMMON\easyax5043.c:2232: if (axradio_mode == AXRADIO_MODE_WOR_TRANSMIT ||
      0039D9 74 11            [12]14368 	mov	a,#0x11
      0039DB B5 08 02         [24]14369 	cjne	a,_axradio_mode,00308$
      0039DE 80 05            [24]14370 	sjmp	00146$
      0039E0                      14371 00308$:
                           002E7D 14372 	C$easyax5043.c$2233$2$455 ==.
                                  14373 ;	..\COMMON\easyax5043.c:2233: axradio_mode == AXRADIO_MODE_WOR_ACK_TRANSMIT)
      0039E0 74 13            [12]14374 	mov	a,#0x13
      0039E2 B5 08 14         [24]14375 	cjne	a,_axradio_mode,00147$
      0039E5                      14376 00146$:
                           002E82 14377 	C$easyax5043.c$2234$2$455 ==.
                                  14378 ;	..\COMMON\easyax5043.c:2234: axradio_txbuffer_cnt = axradio_phy_preamble_wor_longlen;
      0039E5 90 55 C9         [24]14379 	mov	dptr,#_axradio_phy_preamble_wor_longlen
      0039E8 E4               [12]14380 	clr	a
      0039E9 93               [24]14381 	movc	a,@a+dptr
      0039EA FE               [12]14382 	mov	r6,a
      0039EB 74 01            [12]14383 	mov	a,#0x01
      0039ED 93               [24]14384 	movc	a,@a+dptr
      0039EE FF               [12]14385 	mov	r7,a
      0039EF 90 00 08         [24]14386 	mov	dptr,#_axradio_txbuffer_cnt
      0039F2 EE               [12]14387 	mov	a,r6
      0039F3 F0               [24]14388 	movx	@dptr,a
      0039F4 EF               [12]14389 	mov	a,r7
      0039F5 A3               [24]14390 	inc	dptr
      0039F6 F0               [24]14391 	movx	@dptr,a
      0039F7 80 12            [24]14392 	sjmp	00148$
      0039F9                      14393 00147$:
                           002E96 14394 	C$easyax5043.c$2236$2$455 ==.
                                  14395 ;	..\COMMON\easyax5043.c:2236: axradio_txbuffer_cnt = axradio_phy_preamble_longlen;
      0039F9 90 55 CD         [24]14396 	mov	dptr,#_axradio_phy_preamble_longlen
      0039FC E4               [12]14397 	clr	a
      0039FD 93               [24]14398 	movc	a,@a+dptr
      0039FE FE               [12]14399 	mov	r6,a
      0039FF 74 01            [12]14400 	mov	a,#0x01
      003A01 93               [24]14401 	movc	a,@a+dptr
      003A02 FF               [12]14402 	mov	r7,a
      003A03 90 00 08         [24]14403 	mov	dptr,#_axradio_txbuffer_cnt
      003A06 EE               [12]14404 	mov	a,r6
      003A07 F0               [24]14405 	movx	@dptr,a
      003A08 EF               [12]14406 	mov	a,r7
      003A09 A3               [24]14407 	inc	dptr
      003A0A F0               [24]14408 	movx	@dptr,a
      003A0B                      14409 00148$:
                           002EA8 14410 	C$easyax5043.c$2237$2$455 ==.
                                  14411 ;	..\COMMON\easyax5043.c:2237: if (axradio_phy_lbt_retries) {
      003A0B 90 55 C7         [24]14412 	mov	dptr,#_axradio_phy_lbt_retries
      003A0E E4               [12]14413 	clr	a
      003A0F 93               [24]14414 	movc	a,@a+dptr
      003A10 60 79            [24]14415 	jz	00161$
                           002EAF 14416 	C$easyax5043.c$2238$3$461 ==.
                                  14417 ;	..\COMMON\easyax5043.c:2238: switch (axradio_mode) {
      003A12 AF 08            [24]14418 	mov	r7,_axradio_mode
      003A14 BF 10 02         [24]14419 	cjne	r7,#0x10,00312$
      003A17 80 21            [24]14420 	sjmp	00157$
      003A19                      14421 00312$:
      003A19 BF 11 02         [24]14422 	cjne	r7,#0x11,00313$
      003A1C 80 1C            [24]14423 	sjmp	00157$
      003A1E                      14424 00313$:
      003A1E BF 12 02         [24]14425 	cjne	r7,#0x12,00314$
      003A21 80 17            [24]14426 	sjmp	00157$
      003A23                      14427 00314$:
      003A23 BF 13 02         [24]14428 	cjne	r7,#0x13,00315$
      003A26 80 12            [24]14429 	sjmp	00157$
      003A28                      14430 00315$:
      003A28 BF 20 02         [24]14431 	cjne	r7,#0x20,00316$
      003A2B 80 0D            [24]14432 	sjmp	00157$
      003A2D                      14433 00316$:
      003A2D BF 21 02         [24]14434 	cjne	r7,#0x21,00317$
      003A30 80 08            [24]14435 	sjmp	00157$
      003A32                      14436 00317$:
      003A32 BF 22 02         [24]14437 	cjne	r7,#0x22,00318$
      003A35 80 03            [24]14438 	sjmp	00157$
      003A37                      14439 00318$:
      003A37 BF 23 51         [24]14440 	cjne	r7,#0x23,00161$
                           002ED7 14441 	C$easyax5043.c$2246$4$462 ==.
                                  14442 ;	..\COMMON\easyax5043.c:2246: case AXRADIO_MODE_ACK_RECEIVE:
      003A3A                      14443 00157$:
                           002ED7 14444 	C$easyax5043.c$2247$4$462 ==.
                                  14445 ;	..\COMMON\easyax5043.c:2247: ax5043_off_xtal();
      003A3A 12 18 37         [24]14446 	lcall	_ax5043_off_xtal
                           002EDA 14447 	C$easyax5043.c$2248$4$462 ==.
                                  14448 ;	..\COMMON\easyax5043.c:2248: ax5043_init_registers_rx();
      003A3D 12 0C 43         [24]14449 	lcall	_ax5043_init_registers_rx
                           002EDD 14450 	C$easyax5043.c$2249$4$462 ==.
                                  14451 ;	..\COMMON\easyax5043.c:2249: AX5043_RSSIREFERENCE = axradio_phy_rssireference;
      003A40 90 55 C2         [24]14452 	mov	dptr,#_axradio_phy_rssireference
      003A43 E4               [12]14453 	clr	a
      003A44 93               [24]14454 	movc	a,@a+dptr
      003A45 90 42 2C         [24]14455 	mov	dptr,#_AX5043_RSSIREFERENCE
      003A48 F0               [24]14456 	movx	@dptr,a
                           002EE6 14457 	C$easyax5043.c$2250$4$462 ==.
                                  14458 ;	..\COMMON\easyax5043.c:2250: AX5043_PWRMODE = AX5043_PWRSTATE_FULL_RX;
      003A49 90 40 02         [24]14459 	mov	dptr,#_AX5043_PWRMODE
      003A4C 74 09            [12]14460 	mov	a,#0x09
      003A4E F0               [24]14461 	movx	@dptr,a
                           002EEC 14462 	C$easyax5043.c$2251$4$462 ==.
                                  14463 ;	..\COMMON\easyax5043.c:2251: axradio_ack_count = axradio_phy_lbt_retries;
      003A4F 90 55 C7         [24]14464 	mov	dptr,#_axradio_phy_lbt_retries
      003A52 E4               [12]14465 	clr	a
      003A53 93               [24]14466 	movc	a,@a+dptr
      003A54 90 00 0F         [24]14467 	mov	dptr,#_axradio_ack_count
      003A57 F0               [24]14468 	movx	@dptr,a
                           002EF5 14469 	C$easyax5043.c$2252$4$462 ==.
                                  14470 ;	..\COMMON\easyax5043.c:2252: axradio_syncstate = syncstate_lbt;
      003A58 90 00 05         [24]14471 	mov	dptr,#_axradio_syncstate
      003A5B 74 01            [12]14472 	mov	a,#0x01
      003A5D F0               [24]14473 	movx	@dptr,a
                           002EFB 14474 	C$easyax5043.c$2253$4$462 ==.
                                  14475 ;	..\COMMON\easyax5043.c:2253: wtimer_remove(&axradio_timer);
      003A5E 90 02 8A         [24]14476 	mov	dptr,#_axradio_timer
      003A61 12 4D D3         [24]14477 	lcall	_wtimer_remove
                           002F01 14478 	C$easyax5043.c$2254$4$462 ==.
                                  14479 ;	..\COMMON\easyax5043.c:2254: axradio_timer.time = axradio_phy_cs_period;
      003A64 90 55 C4         [24]14480 	mov	dptr,#_axradio_phy_cs_period
      003A67 E4               [12]14481 	clr	a
      003A68 93               [24]14482 	movc	a,@a+dptr
      003A69 FE               [12]14483 	mov	r6,a
      003A6A 74 01            [12]14484 	mov	a,#0x01
      003A6C 93               [24]14485 	movc	a,@a+dptr
      003A6D FF               [12]14486 	mov	r7,a
      003A6E 7D 00            [12]14487 	mov	r5,#0x00
      003A70 7C 00            [12]14488 	mov	r4,#0x00
      003A72 90 02 8E         [24]14489 	mov	dptr,#(_axradio_timer + 0x0004)
      003A75 EE               [12]14490 	mov	a,r6
      003A76 F0               [24]14491 	movx	@dptr,a
      003A77 EF               [12]14492 	mov	a,r7
      003A78 A3               [24]14493 	inc	dptr
      003A79 F0               [24]14494 	movx	@dptr,a
      003A7A ED               [12]14495 	mov	a,r5
      003A7B A3               [24]14496 	inc	dptr
      003A7C F0               [24]14497 	movx	@dptr,a
      003A7D EC               [12]14498 	mov	a,r4
      003A7E A3               [24]14499 	inc	dptr
      003A7F F0               [24]14500 	movx	@dptr,a
                           002F1D 14501 	C$easyax5043.c$2255$4$462 ==.
                                  14502 ;	..\COMMON\easyax5043.c:2255: wtimer0_addrelative(&axradio_timer);
      003A80 90 02 8A         [24]14503 	mov	dptr,#_axradio_timer
      003A83 12 46 BC         [24]14504 	lcall	_wtimer0_addrelative
                           002F23 14505 	C$easyax5043.c$2256$4$462 ==.
                                  14506 ;	..\COMMON\easyax5043.c:2256: return AXRADIO_ERR_NOERROR;
      003A86 75 82 00         [24]14507 	mov	dpl,#0x00
                           002F26 14508 	C$easyax5043.c$2260$2$455 ==.
                                  14509 ;	..\COMMON\easyax5043.c:2260: }
      003A89 80 11            [24]14510 	sjmp	00164$
      003A8B                      14511 00161$:
                           002F28 14512 	C$easyax5043.c$2262$2$455 ==.
                                  14513 ;	..\COMMON\easyax5043.c:2262: axradio_syncstate = syncstate_asynctx;
      003A8B 90 00 05         [24]14514 	mov	dptr,#_axradio_syncstate
      003A8E 74 02            [12]14515 	mov	a,#0x02
      003A90 F0               [24]14516 	movx	@dptr,a
                           002F2E 14517 	C$easyax5043.c$2263$2$455 ==.
                                  14518 ;	..\COMMON\easyax5043.c:2263: ax5043_prepare_tx();
      003A91 12 18 05         [24]14519 	lcall	_ax5043_prepare_tx
                           002F31 14520 	C$easyax5043.c$2264$2$455 ==.
                                  14521 ;	..\COMMON\easyax5043.c:2264: return AXRADIO_ERR_NOERROR;
      003A94 75 82 00         [24]14522 	mov	dpl,#0x00
                           002F34 14523 	C$easyax5043.c$2266$2$455 ==.
                                  14524 ;	..\COMMON\easyax5043.c:2266: default:
      003A97 80 03            [24]14525 	sjmp	00164$
      003A99                      14526 00162$:
                           002F36 14527 	C$easyax5043.c$2267$2$455 ==.
                                  14528 ;	..\COMMON\easyax5043.c:2267: return AXRADIO_ERR_NOTSUPPORTED;
      003A99 75 82 01         [24]14529 	mov	dpl,#0x01
                           002F39 14530 	C$easyax5043.c$2268$1$454 ==.
                                  14531 ;	..\COMMON\easyax5043.c:2268: }
      003A9C                      14532 00164$:
                           002F39 14533 	C$easyax5043.c$2269$1$454 ==.
                           002F39 14534 	XG$axradio_transmit$0$0 ==.
      003A9C 22               [24]14535 	ret
                                  14536 ;------------------------------------------------------------
                                  14537 ;Allocation info for local variables in function 'axradio_set_paramsets'
                                  14538 ;------------------------------------------------------------
                                  14539 ;val                       Allocated to registers r7 
                                  14540 ;------------------------------------------------------------
                           002F3A 14541 	Feasyax5043$axradio_set_paramsets$0$0 ==.
                           002F3A 14542 	C$easyax5043.c$2271$1$454 ==.
                                  14543 ;	..\COMMON\easyax5043.c:2271: static __reentrantb uint8_t axradio_set_paramsets(uint8_t val) __reentrant
                                  14544 ;	-----------------------------------------
                                  14545 ;	 function axradio_set_paramsets
                                  14546 ;	-----------------------------------------
      003A9D                      14547 _axradio_set_paramsets:
      003A9D AF 82            [24]14548 	mov	r7,dpl
                           002F3C 14549 	C$easyax5043.c$2273$1$464 ==.
                                  14550 ;	..\COMMON\easyax5043.c:2273: if (!AXRADIO_MODE_IS_STREAM_RECEIVE(axradio_mode))
      003A9F 74 F8            [12]14551 	mov	a,#0xf8
      003AA1 55 08            [12]14552 	anl	a,_axradio_mode
      003AA3 FE               [12]14553 	mov	r6,a
      003AA4 BE 28 02         [24]14554 	cjne	r6,#0x28,00108$
      003AA7 80 05            [24]14555 	sjmp	00102$
      003AA9                      14556 00108$:
                           002F46 14557 	C$easyax5043.c$2274$1$464 ==.
                                  14558 ;	..\COMMON\easyax5043.c:2274: return AXRADIO_ERR_NOTSUPPORTED;
      003AA9 75 82 01         [24]14559 	mov	dpl,#0x01
      003AAC 80 08            [24]14560 	sjmp	00103$
      003AAE                      14561 00102$:
                           002F4B 14562 	C$easyax5043.c$2275$1$464 ==.
                                  14563 ;	..\COMMON\easyax5043.c:2275: AX5043_RXPARAMSETS = val;
      003AAE 90 41 17         [24]14564 	mov	dptr,#_AX5043_RXPARAMSETS
      003AB1 EF               [12]14565 	mov	a,r7
      003AB2 F0               [24]14566 	movx	@dptr,a
                           002F50 14567 	C$easyax5043.c$2276$1$464 ==.
                                  14568 ;	..\COMMON\easyax5043.c:2276: return AXRADIO_ERR_NOERROR;
      003AB3 75 82 00         [24]14569 	mov	dpl,#0x00
      003AB6                      14570 00103$:
                           002F53 14571 	C$easyax5043.c$2277$1$464 ==.
                           002F53 14572 	XFeasyax5043$axradio_set_paramsets$0$0 ==.
      003AB6 22               [24]14573 	ret
                                  14574 ;------------------------------------------------------------
                                  14575 ;Allocation info for local variables in function 'axradio_agc_freeze'
                                  14576 ;------------------------------------------------------------
                           002F54 14577 	G$axradio_agc_freeze$0$0 ==.
                           002F54 14578 	C$easyax5043.c$2279$1$464 ==.
                                  14579 ;	..\COMMON\easyax5043.c:2279: uint8_t axradio_agc_freeze(void)
                                  14580 ;	-----------------------------------------
                                  14581 ;	 function axradio_agc_freeze
                                  14582 ;	-----------------------------------------
      003AB7                      14583 _axradio_agc_freeze:
                           002F54 14584 	C$easyax5043.c$2281$1$466 ==.
                                  14585 ;	..\COMMON\easyax5043.c:2281: return axradio_set_paramsets(0xff);
      003AB7 75 82 FF         [24]14586 	mov	dpl,#0xff
      003ABA 12 3A 9D         [24]14587 	lcall	_axradio_set_paramsets
                           002F5A 14588 	C$easyax5043.c$2282$1$466 ==.
                           002F5A 14589 	XG$axradio_agc_freeze$0$0 ==.
      003ABD 22               [24]14590 	ret
                                  14591 ;------------------------------------------------------------
                                  14592 ;Allocation info for local variables in function 'axradio_agc_thaw'
                                  14593 ;------------------------------------------------------------
                           002F5B 14594 	G$axradio_agc_thaw$0$0 ==.
                           002F5B 14595 	C$easyax5043.c$2284$1$466 ==.
                                  14596 ;	..\COMMON\easyax5043.c:2284: uint8_t axradio_agc_thaw(void)
                                  14597 ;	-----------------------------------------
                                  14598 ;	 function axradio_agc_thaw
                                  14599 ;	-----------------------------------------
      003ABE                      14600 _axradio_agc_thaw:
                           002F5B 14601 	C$easyax5043.c$2286$1$468 ==.
                                  14602 ;	..\COMMON\easyax5043.c:2286: return axradio_set_paramsets(0x00);
      003ABE 75 82 00         [24]14603 	mov	dpl,#0x00
      003AC1 12 3A 9D         [24]14604 	lcall	_axradio_set_paramsets
                           002F61 14605 	C$easyax5043.c$2287$1$468 ==.
                           002F61 14606 	XG$axradio_agc_thaw$0$0 ==.
      003AC4 22               [24]14607 	ret
                                  14608 	.area CSEG    (CODE)
                                  14609 	.area CONST   (CODE)
                           000000 14610 Feasyax5043$__str_0$0$0 == .
      0056B9                      14611 ___str_0:
      0056B9 43 48 20             14612 	.ascii "CH "
      0056BC 00                   14613 	.db 0x00
                           000004 14614 Feasyax5043$__str_1$0$0 == .
      0056BD                      14615 ___str_1:
      0056BD 20 52 4E 47 20       14616 	.ascii " RNG "
      0056C2 00                   14617 	.db 0x00
                           00000A 14618 Feasyax5043$__str_2$0$0 == .
      0056C3                      14619 ___str_2:
      0056C3 20 56 43 4F 49 20    14620 	.ascii " VCOI "
      0056C9 00                   14621 	.db 0x00
                           000011 14622 Feasyax5043$__str_3$0$0 == .
      0056CA                      14623 ___str_3:
      0056CA 20 2A                14624 	.ascii " *"
      0056CC 00                   14625 	.db 0x00
                                  14626 	.area XINIT   (CODE)
                           000000 14627 Feasyax5043$__xinit_f30_saved$0$0 == .
      005ABE                      14628 __xinit__f30_saved:
      005ABE 3F                   14629 	.db #0x3f	; 63
                           000001 14630 Feasyax5043$__xinit_f31_saved$0$0 == .
      005ABF                      14631 __xinit__f31_saved:
      005ABF F0                   14632 	.db #0xf0	; 240
                           000002 14633 Feasyax5043$__xinit_f32_saved$0$0 == .
      005AC0                      14634 __xinit__f32_saved:
      005AC0 3F                   14635 	.db #0x3f	; 63
                           000003 14636 Feasyax5043$__xinit_f33_saved$0$0 == .
      005AC1                      14637 __xinit__f33_saved:
      005AC1 F0                   14638 	.db #0xf0	; 240
                                  14639 	.area CABS    (ABS,CODE)
