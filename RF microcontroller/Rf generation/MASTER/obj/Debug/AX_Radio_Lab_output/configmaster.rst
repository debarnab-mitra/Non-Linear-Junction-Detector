                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module configmaster
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _lpxosc_settlingtime
                                     12 	.globl _demo_packet
                                     13 	.globl _framing_counter_pos
                                     14 	.globl _framing_insert_counter
                                     15 	.globl _localaddr
                                     16 	.globl _remoteaddr
                                     17 ;--------------------------------------------------------
                                     18 ; special function registers
                                     19 ;--------------------------------------------------------
                                     20 	.area RSEG    (ABS,DATA)
      000000                         21 	.org 0x0000
                                     22 ;--------------------------------------------------------
                                     23 ; special function bits
                                     24 ;--------------------------------------------------------
                                     25 	.area RSEG    (ABS,DATA)
      000000                         26 	.org 0x0000
                                     27 ;--------------------------------------------------------
                                     28 ; overlayable register banks
                                     29 ;--------------------------------------------------------
                                     30 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         31 	.ds 8
                                     32 ;--------------------------------------------------------
                                     33 ; internal ram data
                                     34 ;--------------------------------------------------------
                                     35 	.area DSEG    (DATA)
                                     36 ;--------------------------------------------------------
                                     37 ; overlayable items in internal ram 
                                     38 ;--------------------------------------------------------
                                     39 ;--------------------------------------------------------
                                     40 ; indirectly addressable internal ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area ISEG    (DATA)
                                     43 ;--------------------------------------------------------
                                     44 ; absolute internal ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area IABS    (ABS,DATA)
                                     47 	.area IABS    (ABS,DATA)
                                     48 ;--------------------------------------------------------
                                     49 ; bit data
                                     50 ;--------------------------------------------------------
                                     51 	.area BSEG    (BIT)
                                     52 ;--------------------------------------------------------
                                     53 ; paged external ram data
                                     54 ;--------------------------------------------------------
                                     55 	.area PSEG    (PAG,XDATA)
                                     56 ;--------------------------------------------------------
                                     57 ; external ram data
                                     58 ;--------------------------------------------------------
                                     59 	.area XSEG    (XDATA)
                                     60 ;--------------------------------------------------------
                                     61 ; absolute external ram data
                                     62 ;--------------------------------------------------------
                                     63 	.area XABS    (ABS,XDATA)
                                     64 ;--------------------------------------------------------
                                     65 ; external initialized ram data
                                     66 ;--------------------------------------------------------
                                     67 	.area XISEG   (XDATA)
                                     68 	.area HOME    (CODE)
                                     69 	.area GSINIT0 (CODE)
                                     70 	.area GSINIT1 (CODE)
                                     71 	.area GSINIT2 (CODE)
                                     72 	.area GSINIT3 (CODE)
                                     73 	.area GSINIT4 (CODE)
                                     74 	.area GSINIT5 (CODE)
                                     75 	.area GSINIT  (CODE)
                                     76 	.area GSFINAL (CODE)
                                     77 	.area CSEG    (CODE)
                                     78 ;--------------------------------------------------------
                                     79 ; global & static initialisations
                                     80 ;--------------------------------------------------------
                                     81 	.area HOME    (CODE)
                                     82 	.area GSINIT  (CODE)
                                     83 	.area GSFINAL (CODE)
                                     84 	.area GSINIT  (CODE)
                                     85 ;--------------------------------------------------------
                                     86 ; Home
                                     87 ;--------------------------------------------------------
                                     88 	.area HOME    (CODE)
                                     89 	.area HOME    (CODE)
                                     90 ;--------------------------------------------------------
                                     91 ; code
                                     92 ;--------------------------------------------------------
                                     93 	.area CSEG    (CODE)
                                     94 	.area CSEG    (CODE)
                                     95 	.area CONST   (CODE)
                           000000    96 G$remoteaddr$0$0 == .
      005625                         97 _remoteaddr:
      005625 33                      98 	.db #0x33	; 51	'3'
      005626 34                      99 	.db #0x34	; 52	'4'
      005627 00                     100 	.db #0x00	; 0
      005628 00                     101 	.db #0x00	; 0
                           000004   102 G$localaddr$0$0 == .
      005629                        103 _localaddr:
      005629 32                     104 	.db #0x32	; 50	'2'
      00562A 34                     105 	.db #0x34	; 52	'4'
      00562B 00                     106 	.db #0x00	; 0
      00562C 00                     107 	.db #0x00	; 0
      00562D 00                     108 	.db #0x00	; 0
      00562E 00                     109 	.db #0x00	; 0
      00562F 00                     110 	.db #0x00	; 0
      005630 00                     111 	.db #0x00	; 0
                           00000C   112 G$framing_insert_counter$0$0 == .
      005631                        113 _framing_insert_counter:
      005631 00                     114 	.db #0x00	; 0
                           00000D   115 G$framing_counter_pos$0$0 == .
      005632                        116 _framing_counter_pos:
      005632 00                     117 	.db #0x00	; 0
                           00000E   118 G$demo_packet$0$0 == .
      005633                        119 _demo_packet:
      005633 00                     120 	.db #0x00	; 0
      005634 00                     121 	.db #0x00	; 0
      005635 55                     122 	.db #0x55	; 85	'U'
      005636 66                     123 	.db #0x66	; 102	'f'
      005637 77                     124 	.db #0x77	; 119	'w'
      005638 88                     125 	.db #0x88	; 136
                           000014   126 G$lpxosc_settlingtime$0$0 == .
      005639                        127 _lpxosc_settlingtime:
      005639 B8 0B                  128 	.byte #0xb8,#0x0b	; 3000
                                    129 	.area XINIT   (CODE)
                                    130 	.area CABS    (ABS,CODE)
