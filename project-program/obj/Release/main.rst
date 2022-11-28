                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _read_mp3_files
                                     13 	.globl _print_buffer
                                     14 	.globl __sdcc_external_startup
                                     15 	.globl _disk_initialize
                                     16 	.globl _pf_readdir
                                     17 	.globl _pf_opendir
                                     18 	.globl _pf_read
                                     19 	.globl _pf_open
                                     20 	.globl _pf_mount
                                     21 	.globl _write_to_DAC_and_EEPROM
                                     22 	.globl _reset_DAC
                                     23 	.globl _init_timer0
                                     24 	.globl _lcdinit
                                     25 	.globl _get_card_type
                                     26 	.globl _spi_init
                                     27 	.globl _init_serial
                                     28 	.globl _printf_tiny
                                     29 	.globl _TF1
                                     30 	.globl _TR1
                                     31 	.globl _TF0
                                     32 	.globl _TR0
                                     33 	.globl _IE1
                                     34 	.globl _IT1
                                     35 	.globl _IE0
                                     36 	.globl _IT0
                                     37 	.globl _SM0
                                     38 	.globl _SM1
                                     39 	.globl _SM2
                                     40 	.globl _REN
                                     41 	.globl _TB8
                                     42 	.globl _RB8
                                     43 	.globl _TI
                                     44 	.globl _RI
                                     45 	.globl _CY
                                     46 	.globl _AC
                                     47 	.globl _F0
                                     48 	.globl _RS1
                                     49 	.globl _RS0
                                     50 	.globl _OV
                                     51 	.globl _F1
                                     52 	.globl _P
                                     53 	.globl _RD
                                     54 	.globl _WR
                                     55 	.globl _T1
                                     56 	.globl _T0
                                     57 	.globl _INT1
                                     58 	.globl _INT0
                                     59 	.globl _TXD0
                                     60 	.globl _TXD
                                     61 	.globl _RXD0
                                     62 	.globl _RXD
                                     63 	.globl _P3_7
                                     64 	.globl _P3_6
                                     65 	.globl _P3_5
                                     66 	.globl _P3_4
                                     67 	.globl _P3_3
                                     68 	.globl _P3_2
                                     69 	.globl _P3_1
                                     70 	.globl _P3_0
                                     71 	.globl _P2_7
                                     72 	.globl _P2_6
                                     73 	.globl _P2_5
                                     74 	.globl _P2_4
                                     75 	.globl _P2_3
                                     76 	.globl _P2_2
                                     77 	.globl _P2_1
                                     78 	.globl _P2_0
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _P0_7
                                     88 	.globl _P0_6
                                     89 	.globl _P0_5
                                     90 	.globl _P0_4
                                     91 	.globl _P0_3
                                     92 	.globl _P0_2
                                     93 	.globl _P0_1
                                     94 	.globl _P0_0
                                     95 	.globl _PS
                                     96 	.globl _PT1
                                     97 	.globl _PX1
                                     98 	.globl _PT0
                                     99 	.globl _PX0
                                    100 	.globl _EA
                                    101 	.globl _ES
                                    102 	.globl _ET1
                                    103 	.globl _EX1
                                    104 	.globl _ET0
                                    105 	.globl _EX0
                                    106 	.globl _BREG_F7
                                    107 	.globl _BREG_F6
                                    108 	.globl _BREG_F5
                                    109 	.globl _BREG_F4
                                    110 	.globl _BREG_F3
                                    111 	.globl _BREG_F2
                                    112 	.globl _BREG_F1
                                    113 	.globl _BREG_F0
                                    114 	.globl _P5_7
                                    115 	.globl _P5_6
                                    116 	.globl _P5_5
                                    117 	.globl _P5_4
                                    118 	.globl _P5_3
                                    119 	.globl _P5_2
                                    120 	.globl _P5_1
                                    121 	.globl _P5_0
                                    122 	.globl _P4_7
                                    123 	.globl _P4_6
                                    124 	.globl _P4_5
                                    125 	.globl _P4_4
                                    126 	.globl _P4_3
                                    127 	.globl _P4_2
                                    128 	.globl _P4_1
                                    129 	.globl _P4_0
                                    130 	.globl _PX0L
                                    131 	.globl _PT0L
                                    132 	.globl _PX1L
                                    133 	.globl _PT1L
                                    134 	.globl _PSL
                                    135 	.globl _PT2L
                                    136 	.globl _PPCL
                                    137 	.globl _EC
                                    138 	.globl _CCF0
                                    139 	.globl _CCF1
                                    140 	.globl _CCF2
                                    141 	.globl _CCF3
                                    142 	.globl _CCF4
                                    143 	.globl _CR
                                    144 	.globl _CF
                                    145 	.globl _TF2
                                    146 	.globl _EXF2
                                    147 	.globl _RCLK
                                    148 	.globl _TCLK
                                    149 	.globl _EXEN2
                                    150 	.globl _TR2
                                    151 	.globl _C_T2
                                    152 	.globl _CP_RL2
                                    153 	.globl _T2CON_7
                                    154 	.globl _T2CON_6
                                    155 	.globl _T2CON_5
                                    156 	.globl _T2CON_4
                                    157 	.globl _T2CON_3
                                    158 	.globl _T2CON_2
                                    159 	.globl _T2CON_1
                                    160 	.globl _T2CON_0
                                    161 	.globl _PT2
                                    162 	.globl _ET2
                                    163 	.globl _TMOD
                                    164 	.globl _TL1
                                    165 	.globl _TL0
                                    166 	.globl _TH1
                                    167 	.globl _TH0
                                    168 	.globl _TCON
                                    169 	.globl _SP
                                    170 	.globl _SCON
                                    171 	.globl _SBUF0
                                    172 	.globl _SBUF
                                    173 	.globl _PSW
                                    174 	.globl _PCON
                                    175 	.globl _P3
                                    176 	.globl _P2
                                    177 	.globl _P1
                                    178 	.globl _P0
                                    179 	.globl _IP
                                    180 	.globl _IE
                                    181 	.globl _DP0L
                                    182 	.globl _DPL
                                    183 	.globl _DP0H
                                    184 	.globl _DPH
                                    185 	.globl _B
                                    186 	.globl _ACC
                                    187 	.globl _EECON
                                    188 	.globl _KBF
                                    189 	.globl _KBE
                                    190 	.globl _KBLS
                                    191 	.globl _BRL
                                    192 	.globl _BDRCON
                                    193 	.globl _T2MOD
                                    194 	.globl _SPDAT
                                    195 	.globl _SPSTA
                                    196 	.globl _SPCON
                                    197 	.globl _SADEN
                                    198 	.globl _SADDR
                                    199 	.globl _WDTPRG
                                    200 	.globl _WDTRST
                                    201 	.globl _P5
                                    202 	.globl _P4
                                    203 	.globl _IPH1
                                    204 	.globl _IPL1
                                    205 	.globl _IPH0
                                    206 	.globl _IPL0
                                    207 	.globl _IEN1
                                    208 	.globl _IEN0
                                    209 	.globl _CMOD
                                    210 	.globl _CL
                                    211 	.globl _CH
                                    212 	.globl _CCON
                                    213 	.globl _CCAPM4
                                    214 	.globl _CCAPM3
                                    215 	.globl _CCAPM2
                                    216 	.globl _CCAPM1
                                    217 	.globl _CCAPM0
                                    218 	.globl _CCAP4L
                                    219 	.globl _CCAP3L
                                    220 	.globl _CCAP2L
                                    221 	.globl _CCAP1L
                                    222 	.globl _CCAP0L
                                    223 	.globl _CCAP4H
                                    224 	.globl _CCAP3H
                                    225 	.globl _CCAP2H
                                    226 	.globl _CCAP1H
                                    227 	.globl _CCAP0H
                                    228 	.globl _CKCON1
                                    229 	.globl _CKCON0
                                    230 	.globl _CKRL
                                    231 	.globl _AUXR1
                                    232 	.globl _AUXR
                                    233 	.globl _TH2
                                    234 	.globl _TL2
                                    235 	.globl _RCAP2H
                                    236 	.globl _RCAP2L
                                    237 	.globl _T2CON
                                    238 	.globl _SDCard
                                    239 ;--------------------------------------------------------
                                    240 ; special function registers
                                    241 ;--------------------------------------------------------
                                    242 	.area RSEG    (ABS,DATA)
      000000                        243 	.org 0x0000
                           0000C8   244 _T2CON	=	0x00c8
                           0000CA   245 _RCAP2L	=	0x00ca
                           0000CB   246 _RCAP2H	=	0x00cb
                           0000CC   247 _TL2	=	0x00cc
                           0000CD   248 _TH2	=	0x00cd
                           00008E   249 _AUXR	=	0x008e
                           0000A2   250 _AUXR1	=	0x00a2
                           000097   251 _CKRL	=	0x0097
                           00008F   252 _CKCON0	=	0x008f
                           0000AF   253 _CKCON1	=	0x00af
                           0000FA   254 _CCAP0H	=	0x00fa
                           0000FB   255 _CCAP1H	=	0x00fb
                           0000FC   256 _CCAP2H	=	0x00fc
                           0000FD   257 _CCAP3H	=	0x00fd
                           0000FE   258 _CCAP4H	=	0x00fe
                           0000EA   259 _CCAP0L	=	0x00ea
                           0000EB   260 _CCAP1L	=	0x00eb
                           0000EC   261 _CCAP2L	=	0x00ec
                           0000ED   262 _CCAP3L	=	0x00ed
                           0000EE   263 _CCAP4L	=	0x00ee
                           0000DA   264 _CCAPM0	=	0x00da
                           0000DB   265 _CCAPM1	=	0x00db
                           0000DC   266 _CCAPM2	=	0x00dc
                           0000DD   267 _CCAPM3	=	0x00dd
                           0000DE   268 _CCAPM4	=	0x00de
                           0000D8   269 _CCON	=	0x00d8
                           0000F9   270 _CH	=	0x00f9
                           0000E9   271 _CL	=	0x00e9
                           0000D9   272 _CMOD	=	0x00d9
                           0000A8   273 _IEN0	=	0x00a8
                           0000B1   274 _IEN1	=	0x00b1
                           0000B8   275 _IPL0	=	0x00b8
                           0000B7   276 _IPH0	=	0x00b7
                           0000B2   277 _IPL1	=	0x00b2
                           0000B3   278 _IPH1	=	0x00b3
                           0000C0   279 _P4	=	0x00c0
                           0000E8   280 _P5	=	0x00e8
                           0000A6   281 _WDTRST	=	0x00a6
                           0000A7   282 _WDTPRG	=	0x00a7
                           0000A9   283 _SADDR	=	0x00a9
                           0000B9   284 _SADEN	=	0x00b9
                           0000C3   285 _SPCON	=	0x00c3
                           0000C4   286 _SPSTA	=	0x00c4
                           0000C5   287 _SPDAT	=	0x00c5
                           0000C9   288 _T2MOD	=	0x00c9
                           00009B   289 _BDRCON	=	0x009b
                           00009A   290 _BRL	=	0x009a
                           00009C   291 _KBLS	=	0x009c
                           00009D   292 _KBE	=	0x009d
                           00009E   293 _KBF	=	0x009e
                           0000D2   294 _EECON	=	0x00d2
                           0000E0   295 _ACC	=	0x00e0
                           0000F0   296 _B	=	0x00f0
                           000083   297 _DPH	=	0x0083
                           000083   298 _DP0H	=	0x0083
                           000082   299 _DPL	=	0x0082
                           000082   300 _DP0L	=	0x0082
                           0000A8   301 _IE	=	0x00a8
                           0000B8   302 _IP	=	0x00b8
                           000080   303 _P0	=	0x0080
                           000090   304 _P1	=	0x0090
                           0000A0   305 _P2	=	0x00a0
                           0000B0   306 _P3	=	0x00b0
                           000087   307 _PCON	=	0x0087
                           0000D0   308 _PSW	=	0x00d0
                           000099   309 _SBUF	=	0x0099
                           000099   310 _SBUF0	=	0x0099
                           000098   311 _SCON	=	0x0098
                           000081   312 _SP	=	0x0081
                           000088   313 _TCON	=	0x0088
                           00008C   314 _TH0	=	0x008c
                           00008D   315 _TH1	=	0x008d
                           00008A   316 _TL0	=	0x008a
                           00008B   317 _TL1	=	0x008b
                           000089   318 _TMOD	=	0x0089
                                    319 ;--------------------------------------------------------
                                    320 ; special function bits
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           0000AD   324 _ET2	=	0x00ad
                           0000BD   325 _PT2	=	0x00bd
                           0000C8   326 _T2CON_0	=	0x00c8
                           0000C9   327 _T2CON_1	=	0x00c9
                           0000CA   328 _T2CON_2	=	0x00ca
                           0000CB   329 _T2CON_3	=	0x00cb
                           0000CC   330 _T2CON_4	=	0x00cc
                           0000CD   331 _T2CON_5	=	0x00cd
                           0000CE   332 _T2CON_6	=	0x00ce
                           0000CF   333 _T2CON_7	=	0x00cf
                           0000C8   334 _CP_RL2	=	0x00c8
                           0000C9   335 _C_T2	=	0x00c9
                           0000CA   336 _TR2	=	0x00ca
                           0000CB   337 _EXEN2	=	0x00cb
                           0000CC   338 _TCLK	=	0x00cc
                           0000CD   339 _RCLK	=	0x00cd
                           0000CE   340 _EXF2	=	0x00ce
                           0000CF   341 _TF2	=	0x00cf
                           0000DF   342 _CF	=	0x00df
                           0000DE   343 _CR	=	0x00de
                           0000DC   344 _CCF4	=	0x00dc
                           0000DB   345 _CCF3	=	0x00db
                           0000DA   346 _CCF2	=	0x00da
                           0000D9   347 _CCF1	=	0x00d9
                           0000D8   348 _CCF0	=	0x00d8
                           0000AE   349 _EC	=	0x00ae
                           0000BE   350 _PPCL	=	0x00be
                           0000BD   351 _PT2L	=	0x00bd
                           0000BC   352 _PSL	=	0x00bc
                           0000BB   353 _PT1L	=	0x00bb
                           0000BA   354 _PX1L	=	0x00ba
                           0000B9   355 _PT0L	=	0x00b9
                           0000B8   356 _PX0L	=	0x00b8
                           0000C0   357 _P4_0	=	0x00c0
                           0000C1   358 _P4_1	=	0x00c1
                           0000C2   359 _P4_2	=	0x00c2
                           0000C3   360 _P4_3	=	0x00c3
                           0000C4   361 _P4_4	=	0x00c4
                           0000C5   362 _P4_5	=	0x00c5
                           0000C6   363 _P4_6	=	0x00c6
                           0000C7   364 _P4_7	=	0x00c7
                           0000E8   365 _P5_0	=	0x00e8
                           0000E9   366 _P5_1	=	0x00e9
                           0000EA   367 _P5_2	=	0x00ea
                           0000EB   368 _P5_3	=	0x00eb
                           0000EC   369 _P5_4	=	0x00ec
                           0000ED   370 _P5_5	=	0x00ed
                           0000EE   371 _P5_6	=	0x00ee
                           0000EF   372 _P5_7	=	0x00ef
                           0000F0   373 _BREG_F0	=	0x00f0
                           0000F1   374 _BREG_F1	=	0x00f1
                           0000F2   375 _BREG_F2	=	0x00f2
                           0000F3   376 _BREG_F3	=	0x00f3
                           0000F4   377 _BREG_F4	=	0x00f4
                           0000F5   378 _BREG_F5	=	0x00f5
                           0000F6   379 _BREG_F6	=	0x00f6
                           0000F7   380 _BREG_F7	=	0x00f7
                           0000A8   381 _EX0	=	0x00a8
                           0000A9   382 _ET0	=	0x00a9
                           0000AA   383 _EX1	=	0x00aa
                           0000AB   384 _ET1	=	0x00ab
                           0000AC   385 _ES	=	0x00ac
                           0000AF   386 _EA	=	0x00af
                           0000B8   387 _PX0	=	0x00b8
                           0000B9   388 _PT0	=	0x00b9
                           0000BA   389 _PX1	=	0x00ba
                           0000BB   390 _PT1	=	0x00bb
                           0000BC   391 _PS	=	0x00bc
                           000080   392 _P0_0	=	0x0080
                           000081   393 _P0_1	=	0x0081
                           000082   394 _P0_2	=	0x0082
                           000083   395 _P0_3	=	0x0083
                           000084   396 _P0_4	=	0x0084
                           000085   397 _P0_5	=	0x0085
                           000086   398 _P0_6	=	0x0086
                           000087   399 _P0_7	=	0x0087
                           000090   400 _P1_0	=	0x0090
                           000091   401 _P1_1	=	0x0091
                           000092   402 _P1_2	=	0x0092
                           000093   403 _P1_3	=	0x0093
                           000094   404 _P1_4	=	0x0094
                           000095   405 _P1_5	=	0x0095
                           000096   406 _P1_6	=	0x0096
                           000097   407 _P1_7	=	0x0097
                           0000A0   408 _P2_0	=	0x00a0
                           0000A1   409 _P2_1	=	0x00a1
                           0000A2   410 _P2_2	=	0x00a2
                           0000A3   411 _P2_3	=	0x00a3
                           0000A4   412 _P2_4	=	0x00a4
                           0000A5   413 _P2_5	=	0x00a5
                           0000A6   414 _P2_6	=	0x00a6
                           0000A7   415 _P2_7	=	0x00a7
                           0000B0   416 _P3_0	=	0x00b0
                           0000B1   417 _P3_1	=	0x00b1
                           0000B2   418 _P3_2	=	0x00b2
                           0000B3   419 _P3_3	=	0x00b3
                           0000B4   420 _P3_4	=	0x00b4
                           0000B5   421 _P3_5	=	0x00b5
                           0000B6   422 _P3_6	=	0x00b6
                           0000B7   423 _P3_7	=	0x00b7
                           0000B0   424 _RXD	=	0x00b0
                           0000B0   425 _RXD0	=	0x00b0
                           0000B1   426 _TXD	=	0x00b1
                           0000B1   427 _TXD0	=	0x00b1
                           0000B2   428 _INT0	=	0x00b2
                           0000B3   429 _INT1	=	0x00b3
                           0000B4   430 _T0	=	0x00b4
                           0000B5   431 _T1	=	0x00b5
                           0000B6   432 _WR	=	0x00b6
                           0000B7   433 _RD	=	0x00b7
                           0000D0   434 _P	=	0x00d0
                           0000D1   435 _F1	=	0x00d1
                           0000D2   436 _OV	=	0x00d2
                           0000D3   437 _RS0	=	0x00d3
                           0000D4   438 _RS1	=	0x00d4
                           0000D5   439 _F0	=	0x00d5
                           0000D6   440 _AC	=	0x00d6
                           0000D7   441 _CY	=	0x00d7
                           000098   442 _RI	=	0x0098
                           000099   443 _TI	=	0x0099
                           00009A   444 _RB8	=	0x009a
                           00009B   445 _TB8	=	0x009b
                           00009C   446 _REN	=	0x009c
                           00009D   447 _SM2	=	0x009d
                           00009E   448 _SM1	=	0x009e
                           00009F   449 _SM0	=	0x009f
                           000088   450 _IT0	=	0x0088
                           000089   451 _IE0	=	0x0089
                           00008A   452 _IT1	=	0x008a
                           00008B   453 _IE1	=	0x008b
                           00008C   454 _TR0	=	0x008c
                           00008D   455 _TF0	=	0x008d
                           00008E   456 _TR1	=	0x008e
                           00008F   457 _TF1	=	0x008f
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable register banks
                                    460 ;--------------------------------------------------------
                                    461 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        462 	.ds 8
                                    463 ;--------------------------------------------------------
                                    464 ; internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area DSEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; overlayable items in internal ram
                                    469 ;--------------------------------------------------------
                                    470 ;--------------------------------------------------------
                                    471 ; Stack segment in internal ram
                                    472 ;--------------------------------------------------------
                                    473 	.area	SSEG
      000021                        474 __start__stack:
      000021                        475 	.ds	1
                                    476 
                                    477 ;--------------------------------------------------------
                                    478 ; indirectly addressable internal ram data
                                    479 ;--------------------------------------------------------
                                    480 	.area ISEG    (DATA)
                                    481 ;--------------------------------------------------------
                                    482 ; absolute internal ram data
                                    483 ;--------------------------------------------------------
                                    484 	.area IABS    (ABS,DATA)
                                    485 	.area IABS    (ABS,DATA)
                                    486 ;--------------------------------------------------------
                                    487 ; bit data
                                    488 ;--------------------------------------------------------
                                    489 	.area BSEG    (BIT)
                                    490 ;--------------------------------------------------------
                                    491 ; paged external ram data
                                    492 ;--------------------------------------------------------
                                    493 	.area PSEG    (PAG,XDATA)
                                    494 ;--------------------------------------------------------
                                    495 ; external ram data
                                    496 ;--------------------------------------------------------
                                    497 	.area XSEG    (XDATA)
      000001                        498 _SDCard::
      000001                        499 	.ds 42
                                    500 ;--------------------------------------------------------
                                    501 ; absolute external ram data
                                    502 ;--------------------------------------------------------
                                    503 	.area XABS    (ABS,XDATA)
                                    504 ;--------------------------------------------------------
                                    505 ; external initialized ram data
                                    506 ;--------------------------------------------------------
                                    507 	.area XISEG   (XDATA)
                                    508 	.area HOME    (CODE)
                                    509 	.area GSINIT0 (CODE)
                                    510 	.area GSINIT1 (CODE)
                                    511 	.area GSINIT2 (CODE)
                                    512 	.area GSINIT3 (CODE)
                                    513 	.area GSINIT4 (CODE)
                                    514 	.area GSINIT5 (CODE)
                                    515 	.area GSINIT  (CODE)
                                    516 	.area GSFINAL (CODE)
                                    517 	.area CSEG    (CODE)
                                    518 ;--------------------------------------------------------
                                    519 ; interrupt vector
                                    520 ;--------------------------------------------------------
                                    521 	.area HOME    (CODE)
      000000                        522 __interrupt_vect:
      000000 02 00 11         [24]  523 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  524 	reti
      000004                        525 	.ds	7
      00000B 02 36 C4         [24]  526 	ljmp	_Timer0_IRQHandler
                                    527 ;--------------------------------------------------------
                                    528 ; global & static initialisations
                                    529 ;--------------------------------------------------------
                                    530 	.area HOME    (CODE)
                                    531 	.area GSINIT  (CODE)
                                    532 	.area GSFINAL (CODE)
                                    533 	.area GSINIT  (CODE)
                                    534 	.globl __sdcc_gsinit_startup
                                    535 	.globl __sdcc_program_startup
                                    536 	.globl __start__stack
                                    537 	.globl __mcs51_genXINIT
                                    538 	.globl __mcs51_genXRAMCLEAR
                                    539 	.globl __mcs51_genRAMCLEAR
                                    540 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  541 	ljmp	__sdcc_program_startup
                                    542 ;--------------------------------------------------------
                                    543 ; Home
                                    544 ;--------------------------------------------------------
                                    545 	.area HOME    (CODE)
                                    546 	.area HOME    (CODE)
      00000E                        547 __sdcc_program_startup:
      00000E 02 07 A1         [24]  548 	ljmp	_main
                                    549 ;	return from main will return to caller
                                    550 ;--------------------------------------------------------
                                    551 ; code
                                    552 ;--------------------------------------------------------
                                    553 	.area CSEG    (CODE)
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function '_sdcc_external_startup'
                                    556 ;------------------------------------------------------------
                                    557 ;	main.c:30: _sdcc_external_startup()
                                    558 ;	-----------------------------------------
                                    559 ;	 function _sdcc_external_startup
                                    560 ;	-----------------------------------------
      00051C                        561 __sdcc_external_startup:
                           000007   562 	ar7 = 0x07
                           000006   563 	ar6 = 0x06
                           000005   564 	ar5 = 0x05
                           000004   565 	ar4 = 0x04
                           000003   566 	ar3 = 0x03
                           000002   567 	ar2 = 0x02
                           000001   568 	ar1 = 0x01
                           000000   569 	ar0 = 0x00
                                    570 ;	main.c:33: AUXR |= (XRS1 | XRS0);
      00051C 43 8E 0C         [24]  571 	orl	_AUXR,#0x0c
                                    572 ;	main.c:34: AUXR &= ~(XRS2);
      00051F 53 8E EF         [24]  573 	anl	_AUXR,#0xef
                                    574 ;	main.c:36: init_serial();
      000522 12 31 A9         [24]  575 	lcall	_init_serial
                                    576 ;	main.c:37: return 0;
      000525 90 00 00         [24]  577 	mov	dptr,#0x0000
                                    578 ;	main.c:38: }
      000528 22               [24]  579 	ret
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'print_buffer'
                                    582 ;------------------------------------------------------------
                                    583 ;buff                      Allocated to registers r5 r6 r7 
                                    584 ;i                         Allocated to registers r3 r4 
                                    585 ;------------------------------------------------------------
                                    586 ;	main.c:40: void print_buffer(const BYTE *buff)
                                    587 ;	-----------------------------------------
                                    588 ;	 function print_buffer
                                    589 ;	-----------------------------------------
      000529                        590 _print_buffer:
      000529 AD 82            [24]  591 	mov	r5,dpl
      00052B AE 83            [24]  592 	mov	r6,dph
      00052D AF F0            [24]  593 	mov	r7,b
                                    594 ;	main.c:42: for(int i=0;i<RD_BLOCK_SIZE;i++){
      00052F 7B 00            [12]  595 	mov	r3,#0x00
      000531 7C 00            [12]  596 	mov	r4,#0x00
      000533                        597 00105$:
      000533 C3               [12]  598 	clr	c
      000534 EB               [12]  599 	mov	a,r3
      000535 94 40            [12]  600 	subb	a,#0x40
      000537 EC               [12]  601 	mov	a,r4
      000538 64 80            [12]  602 	xrl	a,#0x80
      00053A 94 80            [12]  603 	subb	a,#0x80
      00053C 40 01            [24]  604 	jc	00122$
      00053E 22               [24]  605 	ret
      00053F                        606 00122$:
                                    607 ;	main.c:43: if(((i + 1) >> 4) == 0){
      00053F 74 01            [12]  608 	mov	a,#0x01
      000541 2B               [12]  609 	add	a,r3
      000542 F9               [12]  610 	mov	r1,a
      000543 E4               [12]  611 	clr	a
      000544 3C               [12]  612 	addc	a,r4
      000545 C4               [12]  613 	swap	a
      000546 C9               [12]  614 	xch	a,r1
      000547 C4               [12]  615 	swap	a
      000548 54 0F            [12]  616 	anl	a,#0x0f
      00054A 69               [12]  617 	xrl	a,r1
      00054B C9               [12]  618 	xch	a,r1
      00054C 54 0F            [12]  619 	anl	a,#0x0f
      00054E C9               [12]  620 	xch	a,r1
      00054F 69               [12]  621 	xrl	a,r1
      000550 C9               [12]  622 	xch	a,r1
      000551 30 E3 02         [24]  623 	jnb	acc.3,00123$
      000554 44 F0            [12]  624 	orl	a,#0xf0
      000556                        625 00123$:
      000556 49               [12]  626 	orl	a,r1
      000557 70 23            [24]  627 	jnz	00102$
                                    628 ;	main.c:44: printf_tiny("\r\n");
      000559 C0 07            [24]  629 	push	ar7
      00055B C0 06            [24]  630 	push	ar6
      00055D C0 05            [24]  631 	push	ar5
      00055F C0 04            [24]  632 	push	ar4
      000561 C0 03            [24]  633 	push	ar3
      000563 74 45            [12]  634 	mov	a,#___str_0
      000565 C0 E0            [24]  635 	push	acc
      000567 74 3E            [12]  636 	mov	a,#(___str_0 >> 8)
      000569 C0 E0            [24]  637 	push	acc
      00056B 12 38 74         [24]  638 	lcall	_printf_tiny
      00056E 15 81            [12]  639 	dec	sp
      000570 15 81            [12]  640 	dec	sp
      000572 D0 03            [24]  641 	pop	ar3
      000574 D0 04            [24]  642 	pop	ar4
      000576 D0 05            [24]  643 	pop	ar5
      000578 D0 06            [24]  644 	pop	ar6
      00057A D0 07            [24]  645 	pop	ar7
      00057C                        646 00102$:
                                    647 ;	main.c:46: printf_tiny("%x ", buff[i]);
      00057C EB               [12]  648 	mov	a,r3
      00057D 2D               [12]  649 	add	a,r5
      00057E F8               [12]  650 	mov	r0,a
      00057F EC               [12]  651 	mov	a,r4
      000580 3E               [12]  652 	addc	a,r6
      000581 F9               [12]  653 	mov	r1,a
      000582 8F 02            [24]  654 	mov	ar2,r7
      000584 88 82            [24]  655 	mov	dpl,r0
      000586 89 83            [24]  656 	mov	dph,r1
      000588 8A F0            [24]  657 	mov	b,r2
      00058A 12 3A A5         [24]  658 	lcall	__gptrget
      00058D F8               [12]  659 	mov	r0,a
      00058E 7A 00            [12]  660 	mov	r2,#0x00
      000590 C0 07            [24]  661 	push	ar7
      000592 C0 06            [24]  662 	push	ar6
      000594 C0 05            [24]  663 	push	ar5
      000596 C0 04            [24]  664 	push	ar4
      000598 C0 03            [24]  665 	push	ar3
      00059A C0 00            [24]  666 	push	ar0
      00059C C0 02            [24]  667 	push	ar2
      00059E 74 48            [12]  668 	mov	a,#___str_1
      0005A0 C0 E0            [24]  669 	push	acc
      0005A2 74 3E            [12]  670 	mov	a,#(___str_1 >> 8)
      0005A4 C0 E0            [24]  671 	push	acc
      0005A6 12 38 74         [24]  672 	lcall	_printf_tiny
      0005A9 E5 81            [12]  673 	mov	a,sp
      0005AB 24 FC            [12]  674 	add	a,#0xfc
      0005AD F5 81            [12]  675 	mov	sp,a
      0005AF D0 03            [24]  676 	pop	ar3
      0005B1 D0 04            [24]  677 	pop	ar4
      0005B3 D0 05            [24]  678 	pop	ar5
      0005B5 D0 06            [24]  679 	pop	ar6
      0005B7 D0 07            [24]  680 	pop	ar7
                                    681 ;	main.c:42: for(int i=0;i<RD_BLOCK_SIZE;i++){
      0005B9 0B               [12]  682 	inc	r3
      0005BA BB 00 01         [24]  683 	cjne	r3,#0x00,00125$
      0005BD 0C               [12]  684 	inc	r4
      0005BE                        685 00125$:
                                    686 ;	main.c:48: }
      0005BE 02 05 33         [24]  687 	ljmp	00105$
                                    688 ;------------------------------------------------------------
                                    689 ;Allocation info for local variables in function 'read_mp3_files'
                                    690 ;------------------------------------------------------------
                                    691 ;res                       Allocated to registers 
                                    692 ;fno                       Allocated to stack - _bp +5
                                    693 ;dir                       Allocated to stack - _bp +29
                                    694 ;buff                      Allocated to stack - _bp +46
                                    695 ;br                        Allocated to stack - _bp +27
                                    696 ;sloc0                     Allocated to stack - _bp +1
                                    697 ;sloc1                     Allocated to stack - _bp +2
                                    698 ;------------------------------------------------------------
                                    699 ;	main.c:50: void read_mp3_files(void)
                                    700 ;	-----------------------------------------
                                    701 ;	 function read_mp3_files
                                    702 ;	-----------------------------------------
      0005C1                        703 _read_mp3_files:
      0005C1 C0 08            [24]  704 	push	_bp
      0005C3 E5 81            [12]  705 	mov	a,sp
      0005C5 F5 08            [12]  706 	mov	_bp,a
      0005C7 24 6D            [12]  707 	add	a,#0x6d
      0005C9 F5 81            [12]  708 	mov	sp,a
                                    709 ;	main.c:58: res = pf_opendir(&dir, "/");
      0005CB E5 08            [12]  710 	mov	a,_bp
      0005CD 24 1D            [12]  711 	add	a,#0x1d
      0005CF FF               [12]  712 	mov	r7,a
      0005D0 FC               [12]  713 	mov	r4,a
      0005D1 7D 00            [12]  714 	mov	r5,#0x00
      0005D3 7E 40            [12]  715 	mov	r6,#0x40
      0005D5 C0 07            [24]  716 	push	ar7
      0005D7 74 4C            [12]  717 	mov	a,#___str_2
      0005D9 C0 E0            [24]  718 	push	acc
      0005DB 74 3E            [12]  719 	mov	a,#(___str_2 >> 8)
      0005DD C0 E0            [24]  720 	push	acc
      0005DF 74 80            [12]  721 	mov	a,#0x80
      0005E1 C0 E0            [24]  722 	push	acc
      0005E3 8C 82            [24]  723 	mov	dpl,r4
      0005E5 8D 83            [24]  724 	mov	dph,r5
      0005E7 8E F0            [24]  725 	mov	b,r6
      0005E9 12 2B 2C         [24]  726 	lcall	_pf_opendir
      0005EC AE 82            [24]  727 	mov	r6,dpl
      0005EE 15 81            [12]  728 	dec	sp
      0005F0 15 81            [12]  729 	dec	sp
      0005F2 15 81            [12]  730 	dec	sp
      0005F4 D0 07            [24]  731 	pop	ar7
                                    732 ;	main.c:59: if (res == FR_OK) {
      0005F6 EE               [12]  733 	mov	a,r6
      0005F7 60 03            [24]  734 	jz	00152$
      0005F9 02 07 9B         [24]  735 	ljmp	00113$
      0005FC                        736 00152$:
      0005FC E5 08            [12]  737 	mov	a,_bp
      0005FE 24 2E            [12]  738 	add	a,#0x2e
      000600 FE               [12]  739 	mov	r6,a
      000601 E5 08            [12]  740 	mov	a,_bp
      000603 24 05            [12]  741 	add	a,#0x05
      000605 FD               [12]  742 	mov	r5,a
      000606 A8 08            [24]  743 	mov	r0,_bp
      000608 08               [12]  744 	inc	r0
      000609 A6 07            [24]  745 	mov	@r0,ar7
      00060B 8E 04            [24]  746 	mov	ar4,r6
      00060D                        747 00114$:
                                    748 ;	main.c:62: res = pf_readdir(&dir, &fno);
      00060D C0 04            [24]  749 	push	ar4
      00060F A8 08            [24]  750 	mov	r0,_bp
      000611 08               [12]  751 	inc	r0
      000612 08               [12]  752 	inc	r0
      000613 A6 05            [24]  753 	mov	@r0,ar5
      000615 08               [12]  754 	inc	r0
      000616 76 00            [12]  755 	mov	@r0,#0x00
      000618 08               [12]  756 	inc	r0
      000619 76 40            [12]  757 	mov	@r0,#0x40
      00061B A8 08            [24]  758 	mov	r0,_bp
      00061D 08               [12]  759 	inc	r0
      00061E 86 03            [24]  760 	mov	ar3,@r0
      000620 7C 00            [12]  761 	mov	r4,#0x00
      000622 7F 40            [12]  762 	mov	r7,#0x40
      000624 C0 06            [24]  763 	push	ar6
      000626 C0 05            [24]  764 	push	ar5
      000628 C0 04            [24]  765 	push	ar4
      00062A A8 08            [24]  766 	mov	r0,_bp
      00062C 08               [12]  767 	inc	r0
      00062D 08               [12]  768 	inc	r0
      00062E E6               [12]  769 	mov	a,@r0
      00062F C0 E0            [24]  770 	push	acc
      000631 08               [12]  771 	inc	r0
      000632 E6               [12]  772 	mov	a,@r0
      000633 C0 E0            [24]  773 	push	acc
      000635 08               [12]  774 	inc	r0
      000636 E6               [12]  775 	mov	a,@r0
      000637 C0 E0            [24]  776 	push	acc
      000639 8B 82            [24]  777 	mov	dpl,r3
      00063B 8C 83            [24]  778 	mov	dph,r4
      00063D 8F F0            [24]  779 	mov	b,r7
      00063F 12 2C 3D         [24]  780 	lcall	_pf_readdir
      000642 AF 82            [24]  781 	mov	r7,dpl
      000644 15 81            [12]  782 	dec	sp
      000646 15 81            [12]  783 	dec	sp
      000648 15 81            [12]  784 	dec	sp
      00064A D0 04            [24]  785 	pop	ar4
      00064C D0 05            [24]  786 	pop	ar5
      00064E D0 06            [24]  787 	pop	ar6
                                    788 ;	main.c:63: if (res != FR_OK || fno.fname[0] == 0){
      000650 D0 04            [24]  789 	pop	ar4
      000652 EF               [12]  790 	mov	a,r7
      000653 70 07            [24]  791 	jnz	00101$
      000655 74 09            [12]  792 	mov	a,#0x09
      000657 2D               [12]  793 	add	a,r5
      000658 F9               [12]  794 	mov	r1,a
      000659 E7               [12]  795 	mov	a,@r1
      00065A 70 12            [24]  796 	jnz	00102$
      00065C                        797 00101$:
                                    798 ;	main.c:64: printf_tiny("No more files found\r\n");
      00065C 74 4E            [12]  799 	mov	a,#___str_3
      00065E C0 E0            [24]  800 	push	acc
      000660 74 3E            [12]  801 	mov	a,#(___str_3 >> 8)
      000662 C0 E0            [24]  802 	push	acc
      000664 12 38 74         [24]  803 	lcall	_printf_tiny
      000667 15 81            [12]  804 	dec	sp
      000669 15 81            [12]  805 	dec	sp
                                    806 ;	main.c:65: break;
      00066B 02 07 9B         [24]  807 	ljmp	00113$
      00066E                        808 00102$:
                                    809 ;	main.c:67: printf_tiny("reading file /%s ...\r\n",fno.fname);
      00066E C0 04            [24]  810 	push	ar4
      000670 74 09            [12]  811 	mov	a,#0x09
      000672 2D               [12]  812 	add	a,r5
      000673 FF               [12]  813 	mov	r7,a
      000674 FA               [12]  814 	mov	r2,a
      000675 7B 00            [12]  815 	mov	r3,#0x00
      000677 7C 40            [12]  816 	mov	r4,#0x40
      000679 C0 07            [24]  817 	push	ar7
      00067B C0 06            [24]  818 	push	ar6
      00067D C0 05            [24]  819 	push	ar5
      00067F C0 04            [24]  820 	push	ar4
      000681 C0 02            [24]  821 	push	ar2
      000683 C0 03            [24]  822 	push	ar3
      000685 C0 04            [24]  823 	push	ar4
      000687 74 64            [12]  824 	mov	a,#___str_4
      000689 C0 E0            [24]  825 	push	acc
      00068B 74 3E            [12]  826 	mov	a,#(___str_4 >> 8)
      00068D C0 E0            [24]  827 	push	acc
      00068F 12 38 74         [24]  828 	lcall	_printf_tiny
      000692 E5 81            [12]  829 	mov	a,sp
      000694 24 FB            [12]  830 	add	a,#0xfb
      000696 F5 81            [12]  831 	mov	sp,a
      000698 D0 04            [24]  832 	pop	ar4
      00069A D0 05            [24]  833 	pop	ar5
      00069C D0 06            [24]  834 	pop	ar6
      00069E D0 07            [24]  835 	pop	ar7
                                    836 ;	main.c:70: res = pf_open(fno.fname);
      0006A0 8F 04            [24]  837 	mov	ar4,r7
      0006A2 7B 00            [12]  838 	mov	r3,#0x00
      0006A4 7A 40            [12]  839 	mov	r2,#0x40
      0006A6 8C 82            [24]  840 	mov	dpl,r4
      0006A8 8B 83            [24]  841 	mov	dph,r3
      0006AA 8A F0            [24]  842 	mov	b,r2
      0006AC C0 07            [24]  843 	push	ar7
      0006AE C0 06            [24]  844 	push	ar6
      0006B0 C0 05            [24]  845 	push	ar5
      0006B2 12 24 48         [24]  846 	lcall	_pf_open
      0006B5 AC 82            [24]  847 	mov	r4,dpl
      0006B7 D0 05            [24]  848 	pop	ar5
      0006B9 D0 06            [24]  849 	pop	ar6
      0006BB D0 07            [24]  850 	pop	ar7
      0006BD EC               [12]  851 	mov	a,r4
                                    852 ;	main.c:71: if (res != FR_OK){
      0006BE D0 04            [24]  853 	pop	ar4
      0006C0 60 20            [24]  854 	jz	00108$
                                    855 ;	main.c:72: printf_tiny("Error: failed to open %s\r\n", fno.fname);
      0006C2 8F 03            [24]  856 	mov	ar3,r7
      0006C4 7F 00            [12]  857 	mov	r7,#0x00
      0006C6 7E 40            [12]  858 	mov	r6,#0x40
      0006C8 C0 03            [24]  859 	push	ar3
      0006CA C0 07            [24]  860 	push	ar7
      0006CC C0 06            [24]  861 	push	ar6
      0006CE 74 7B            [12]  862 	mov	a,#___str_5
      0006D0 C0 E0            [24]  863 	push	acc
      0006D2 74 3E            [12]  864 	mov	a,#(___str_5 >> 8)
      0006D4 C0 E0            [24]  865 	push	acc
      0006D6 12 38 74         [24]  866 	lcall	_printf_tiny
      0006D9 E5 81            [12]  867 	mov	a,sp
      0006DB 24 FB            [12]  868 	add	a,#0xfb
      0006DD F5 81            [12]  869 	mov	sp,a
                                    870 ;	main.c:73: break;
      0006DF 02 07 9B         [24]  871 	ljmp	00113$
                                    872 ;	main.c:77: do{
      0006E2                        873 00108$:
                                    874 ;	main.c:79: res = pf_read(buff, RD_BLOCK_SIZE, &br);
      0006E2 C0 04            [24]  875 	push	ar4
      0006E4 E5 08            [12]  876 	mov	a,_bp
      0006E6 24 1B            [12]  877 	add	a,#0x1b
      0006E8 FB               [12]  878 	mov	r3,a
      0006E9 A8 08            [24]  879 	mov	r0,_bp
      0006EB 08               [12]  880 	inc	r0
      0006EC 08               [12]  881 	inc	r0
      0006ED A6 03            [24]  882 	mov	@r0,ar3
      0006EF 08               [12]  883 	inc	r0
      0006F0 76 00            [12]  884 	mov	@r0,#0x00
      0006F2 08               [12]  885 	inc	r0
      0006F3 76 40            [12]  886 	mov	@r0,#0x40
      0006F5 8E 02            [24]  887 	mov	ar2,r6
      0006F7 7B 00            [12]  888 	mov	r3,#0x00
      0006F9 7C 40            [12]  889 	mov	r4,#0x40
      0006FB C0 07            [24]  890 	push	ar7
      0006FD C0 06            [24]  891 	push	ar6
      0006FF C0 05            [24]  892 	push	ar5
      000701 A8 08            [24]  893 	mov	r0,_bp
      000703 08               [12]  894 	inc	r0
      000704 08               [12]  895 	inc	r0
      000705 E6               [12]  896 	mov	a,@r0
      000706 C0 E0            [24]  897 	push	acc
      000708 08               [12]  898 	inc	r0
      000709 E6               [12]  899 	mov	a,@r0
      00070A C0 E0            [24]  900 	push	acc
      00070C 08               [12]  901 	inc	r0
      00070D E6               [12]  902 	mov	a,@r0
      00070E C0 E0            [24]  903 	push	acc
      000710 EC               [12]  904 	mov	a,r4
      000711 C0 E0            [24]  905 	push	acc
      000713 E4               [12]  906 	clr	a
      000714 C0 E0            [24]  907 	push	acc
      000716 8A 82            [24]  908 	mov	dpl,r2
      000718 8B 83            [24]  909 	mov	dph,r3
      00071A 8C F0            [24]  910 	mov	b,r4
      00071C 12 25 F4         [24]  911 	lcall	_pf_read
      00071F AC 82            [24]  912 	mov	r4,dpl
      000721 E5 81            [12]  913 	mov	a,sp
      000723 24 FB            [12]  914 	add	a,#0xfb
      000725 F5 81            [12]  915 	mov	sp,a
      000727 D0 05            [24]  916 	pop	ar5
      000729 D0 06            [24]  917 	pop	ar6
      00072B D0 07            [24]  918 	pop	ar7
                                    919 ;	main.c:81: if(res != FR_OK){
      00072D EC               [12]  920 	mov	a,r4
      00072E D0 04            [24]  921 	pop	ar4
      000730 60 32            [24]  922 	jz	00107$
                                    923 ;	main.c:82: printf_tiny("Error: failed to read %s\r\n", fno.fname);
      000732 C0 04            [24]  924 	push	ar4
      000734 8F 03            [24]  925 	mov	ar3,r7
      000736 8B 02            [24]  926 	mov	ar2,r3
      000738 7B 00            [12]  927 	mov	r3,#0x00
      00073A 7C 40            [12]  928 	mov	r4,#0x40
      00073C C0 06            [24]  929 	push	ar6
      00073E C0 05            [24]  930 	push	ar5
      000740 C0 04            [24]  931 	push	ar4
      000742 C0 02            [24]  932 	push	ar2
      000744 C0 03            [24]  933 	push	ar3
      000746 C0 04            [24]  934 	push	ar4
      000748 74 96            [12]  935 	mov	a,#___str_6
      00074A C0 E0            [24]  936 	push	acc
      00074C 74 3E            [12]  937 	mov	a,#(___str_6 >> 8)
      00074E C0 E0            [24]  938 	push	acc
      000750 12 38 74         [24]  939 	lcall	_printf_tiny
      000753 E5 81            [12]  940 	mov	a,sp
      000755 24 FB            [12]  941 	add	a,#0xfb
      000757 F5 81            [12]  942 	mov	sp,a
      000759 D0 04            [24]  943 	pop	ar4
      00075B D0 05            [24]  944 	pop	ar5
      00075D D0 06            [24]  945 	pop	ar6
                                    946 ;	main.c:83: break;
      00075F D0 04            [24]  947 	pop	ar4
      000761 02 06 0D         [24]  948 	ljmp	00114$
      000764                        949 00107$:
                                    950 ;	main.c:86: print_buffer((const BYTE *)buff);
      000764 C0 06            [24]  951 	push	ar6
      000766 8C 02            [24]  952 	mov	ar2,r4
      000768 7B 00            [12]  953 	mov	r3,#0x00
      00076A 7E 40            [12]  954 	mov	r6,#0x40
      00076C 8A 82            [24]  955 	mov	dpl,r2
      00076E 8B 83            [24]  956 	mov	dph,r3
      000770 8E F0            [24]  957 	mov	b,r6
      000772 C0 07            [24]  958 	push	ar7
      000774 C0 06            [24]  959 	push	ar6
      000776 C0 05            [24]  960 	push	ar5
      000778 C0 04            [24]  961 	push	ar4
      00077A 12 05 29         [24]  962 	lcall	_print_buffer
      00077D D0 04            [24]  963 	pop	ar4
      00077F D0 05            [24]  964 	pop	ar5
      000781 D0 06            [24]  965 	pop	ar6
      000783 D0 07            [24]  966 	pop	ar7
                                    967 ;	main.c:88: }while(br == RD_BLOCK_SIZE); //exit when reached EOF
      000785 E5 08            [12]  968 	mov	a,_bp
      000787 24 1B            [12]  969 	add	a,#0x1b
      000789 F8               [12]  970 	mov	r0,a
      00078A B6 40 09         [24]  971 	cjne	@r0,#0x40,00157$
      00078D 08               [12]  972 	inc	r0
      00078E B6 00 05         [24]  973 	cjne	@r0,#0x00,00157$
      000791 D0 06            [24]  974 	pop	ar6
      000793 02 06 E2         [24]  975 	ljmp	00108$
      000796                        976 00157$:
      000796 D0 06            [24]  977 	pop	ar6
      000798 02 06 0D         [24]  978 	ljmp	00114$
      00079B                        979 00113$:
                                    980 ;	main.c:92: return;
                                    981 ;	main.c:93: }
      00079B 85 08 81         [24]  982 	mov	sp,_bp
      00079E D0 08            [24]  983 	pop	_bp
      0007A0 22               [24]  984 	ret
                                    985 ;------------------------------------------------------------
                                    986 ;Allocation info for local variables in function 'main'
                                    987 ;------------------------------------------------------------
                                    988 ;	main.c:96: void main(void)
                                    989 ;	-----------------------------------------
                                    990 ;	 function main
                                    991 ;	-----------------------------------------
      0007A1                        992 _main:
                                    993 ;	main.c:99: init_timer0();
      0007A1 12 33 92         [24]  994 	lcall	_init_timer0
                                    995 ;	main.c:100: lcdinit();
      0007A4 12 02 00         [24]  996 	lcall	_lcdinit
                                    997 ;	main.c:101: spi_init();
      0007A7 12 33 50         [24]  998 	lcall	_spi_init
                                    999 ;	main.c:102: reset_DAC();
      0007AA 12 08 6E         [24] 1000 	lcall	_reset_DAC
                                   1001 ;	main.c:104: write_to_DAC_and_EEPROM(0);
      0007AD 90 00 00         [24] 1002 	mov	dptr,#0x0000
      0007B0 12 08 AB         [24] 1003 	lcall	_write_to_DAC_and_EEPROM
                                   1004 ;	main.c:107: if( pf_mount(&SDCard))
      0007B3 90 00 01         [24] 1005 	mov	dptr,#_SDCard
      0007B6 75 F0 00         [24] 1006 	mov	b,#0x00
      0007B9 12 1E 94         [24] 1007 	lcall	_pf_mount
      0007BC E5 82            [12] 1008 	mov	a,dpl
      0007BE 60 11            [24] 1009 	jz	00105$
                                   1010 ;	main.c:109: printf_tiny("Couldn't mount drive...\r\n");
      0007C0 74 B1            [12] 1011 	mov	a,#___str_7
      0007C2 C0 E0            [24] 1012 	push	acc
      0007C4 74 3E            [12] 1013 	mov	a,#(___str_7 >> 8)
      0007C6 C0 E0            [24] 1014 	push	acc
      0007C8 12 38 74         [24] 1015 	lcall	_printf_tiny
      0007CB 15 81            [12] 1016 	dec	sp
      0007CD 15 81            [12] 1017 	dec	sp
                                   1018 ;	main.c:110: while( 1 );
      0007CF                       1019 00102$:
      0007CF 80 FE            [24] 1020 	sjmp	00102$
      0007D1                       1021 00105$:
                                   1022 ;	main.c:113: printf_tiny("SD card mounted\r\n");
      0007D1 74 CB            [12] 1023 	mov	a,#___str_8
      0007D3 C0 E0            [24] 1024 	push	acc
      0007D5 74 3E            [12] 1025 	mov	a,#(___str_8 >> 8)
      0007D7 C0 E0            [24] 1026 	push	acc
      0007D9 12 38 74         [24] 1027 	lcall	_printf_tiny
      0007DC 15 81            [12] 1028 	dec	sp
      0007DE 15 81            [12] 1029 	dec	sp
                                   1030 ;	main.c:116: if( disk_initialize( ) & STA_NOINIT )
      0007E0 12 09 7C         [24] 1031 	lcall	_disk_initialize
      0007E3 E5 82            [12] 1032 	mov	a,dpl
      0007E5 30 E0 63         [24] 1033 	jnb	acc.0,00115$
                                   1034 ;	main.c:118: switch( get_card_type() )
      0007E8 12 2D 29         [24] 1035 	lcall	_get_card_type
      0007EB AE 82            [24] 1036 	mov	r6,dpl
      0007ED AF 83            [24] 1037 	mov	r7,dph
      0007EF BE 00 05         [24] 1038 	cjne	r6,#0x00,00155$
      0007F2 BF 00 02         [24] 1039 	cjne	r7,#0x00,00155$
      0007F5 80 10            [24] 1040 	sjmp	00106$
      0007F7                       1041 00155$:
      0007F7 BE 01 05         [24] 1042 	cjne	r6,#0x01,00156$
      0007FA BF 00 02         [24] 1043 	cjne	r7,#0x00,00156$
      0007FD 80 19            [24] 1044 	sjmp	00107$
      0007FF                       1045 00156$:
                                   1046 ;	main.c:120: case 0 :
      0007FF BE 02 38         [24] 1047 	cjne	r6,#0x02,00109$
      000802 BF 00 35         [24] 1048 	cjne	r7,#0x00,00109$
      000805 80 22            [24] 1049 	sjmp	00108$
      000807                       1050 00106$:
                                   1051 ;	main.c:121: printf_tiny("Couldn't find SD card\r\n");
      000807 74 DD            [12] 1052 	mov	a,#___str_9
      000809 C0 E0            [24] 1053 	push	acc
      00080B 74 3E            [12] 1054 	mov	a,#(___str_9 >> 8)
      00080D C0 E0            [24] 1055 	push	acc
      00080F 12 38 74         [24] 1056 	lcall	_printf_tiny
      000812 15 81            [12] 1057 	dec	sp
      000814 15 81            [12] 1058 	dec	sp
                                   1059 ;	main.c:122: break;
                                   1060 ;	main.c:123: case 1 :
      000816 80 31            [24] 1061 	sjmp	00112$
      000818                       1062 00107$:
                                   1063 ;	main.c:124: printf_tiny("Card type is MMC - Can't use this type\r\n");
      000818 74 F5            [12] 1064 	mov	a,#___str_10
      00081A C0 E0            [24] 1065 	push	acc
      00081C 74 3E            [12] 1066 	mov	a,#(___str_10 >> 8)
      00081E C0 E0            [24] 1067 	push	acc
      000820 12 38 74         [24] 1068 	lcall	_printf_tiny
      000823 15 81            [12] 1069 	dec	sp
      000825 15 81            [12] 1070 	dec	sp
                                   1071 ;	main.c:125: break;
                                   1072 ;	main.c:126: case 2 :
      000827 80 20            [24] 1073 	sjmp	00112$
      000829                       1074 00108$:
                                   1075 ;	main.c:127: printf_tiny("Couldn't initialize SD Card drive...\r\n");
      000829 74 1E            [12] 1076 	mov	a,#___str_11
      00082B C0 E0            [24] 1077 	push	acc
      00082D 74 3F            [12] 1078 	mov	a,#(___str_11 >> 8)
      00082F C0 E0            [24] 1079 	push	acc
      000831 12 38 74         [24] 1080 	lcall	_printf_tiny
      000834 15 81            [12] 1081 	dec	sp
      000836 15 81            [12] 1082 	dec	sp
                                   1083 ;	main.c:128: break;
                                   1084 ;	main.c:129: default :
      000838 80 0F            [24] 1085 	sjmp	00112$
      00083A                       1086 00109$:
                                   1087 ;	main.c:130: printf_tiny("Unknown Card Type error...\r\n");
      00083A 74 45            [12] 1088 	mov	a,#___str_12
      00083C C0 E0            [24] 1089 	push	acc
      00083E 74 3F            [12] 1090 	mov	a,#(___str_12 >> 8)
      000840 C0 E0            [24] 1091 	push	acc
      000842 12 38 74         [24] 1092 	lcall	_printf_tiny
      000845 15 81            [12] 1093 	dec	sp
      000847 15 81            [12] 1094 	dec	sp
                                   1095 ;	main.c:133: while( 1 );
      000849                       1096 00112$:
      000849 80 FE            [24] 1097 	sjmp	00112$
      00084B                       1098 00115$:
                                   1099 ;	main.c:136: printf_tiny("SD card initialized\r\n");
      00084B 74 62            [12] 1100 	mov	a,#___str_13
      00084D C0 E0            [24] 1101 	push	acc
      00084F 74 3F            [12] 1102 	mov	a,#(___str_13 >> 8)
      000851 C0 E0            [24] 1103 	push	acc
      000853 12 38 74         [24] 1104 	lcall	_printf_tiny
      000856 15 81            [12] 1105 	dec	sp
      000858 15 81            [12] 1106 	dec	sp
                                   1107 ;	main.c:139: printf_tiny("Finished reading files\r\n");
      00085A 74 78            [12] 1108 	mov	a,#___str_14
      00085C C0 E0            [24] 1109 	push	acc
      00085E 74 3F            [12] 1110 	mov	a,#(___str_14 >> 8)
      000860 C0 E0            [24] 1111 	push	acc
      000862 12 38 74         [24] 1112 	lcall	_printf_tiny
      000865 15 81            [12] 1113 	dec	sp
      000867 15 81            [12] 1114 	dec	sp
                                   1115 ;	main.c:140: read_mp3_files();
      000869 12 05 C1         [24] 1116 	lcall	_read_mp3_files
                                   1117 ;	main.c:141: while( 1 );
      00086C                       1118 00117$:
                                   1119 ;	main.c:142: }
      00086C 80 FE            [24] 1120 	sjmp	00117$
                                   1121 	.area CSEG    (CODE)
                                   1122 	.area CONST   (CODE)
                                   1123 	.area CONST   (CODE)
      003E45                       1124 ___str_0:
      003E45 0D                    1125 	.db 0x0d
      003E46 0A                    1126 	.db 0x0a
      003E47 00                    1127 	.db 0x00
                                   1128 	.area CSEG    (CODE)
                                   1129 	.area CONST   (CODE)
      003E48                       1130 ___str_1:
      003E48 25 78 20              1131 	.ascii "%x "
      003E4B 00                    1132 	.db 0x00
                                   1133 	.area CSEG    (CODE)
                                   1134 	.area CONST   (CODE)
      003E4C                       1135 ___str_2:
      003E4C 2F                    1136 	.ascii "/"
      003E4D 00                    1137 	.db 0x00
                                   1138 	.area CSEG    (CODE)
                                   1139 	.area CONST   (CODE)
      003E4E                       1140 ___str_3:
      003E4E 4E 6F 20 6D 6F 72 65  1141 	.ascii "No more files found"
             20 66 69 6C 65 73 20
             66 6F 75 6E 64
      003E61 0D                    1142 	.db 0x0d
      003E62 0A                    1143 	.db 0x0a
      003E63 00                    1144 	.db 0x00
                                   1145 	.area CSEG    (CODE)
                                   1146 	.area CONST   (CODE)
      003E64                       1147 ___str_4:
      003E64 72 65 61 64 69 6E 67  1148 	.ascii "reading file /%s ..."
             20 66 69 6C 65 20 2F
             25 73 20 2E 2E 2E
      003E78 0D                    1149 	.db 0x0d
      003E79 0A                    1150 	.db 0x0a
      003E7A 00                    1151 	.db 0x00
                                   1152 	.area CSEG    (CODE)
                                   1153 	.area CONST   (CODE)
      003E7B                       1154 ___str_5:
      003E7B 45 72 72 6F 72 3A 20  1155 	.ascii "Error: failed to open %s"
             66 61 69 6C 65 64 20
             74 6F 20 6F 70 65 6E
             20 25 73
      003E93 0D                    1156 	.db 0x0d
      003E94 0A                    1157 	.db 0x0a
      003E95 00                    1158 	.db 0x00
                                   1159 	.area CSEG    (CODE)
                                   1160 	.area CONST   (CODE)
      003E96                       1161 ___str_6:
      003E96 45 72 72 6F 72 3A 20  1162 	.ascii "Error: failed to read %s"
             66 61 69 6C 65 64 20
             74 6F 20 72 65 61 64
             20 25 73
      003EAE 0D                    1163 	.db 0x0d
      003EAF 0A                    1164 	.db 0x0a
      003EB0 00                    1165 	.db 0x00
                                   1166 	.area CSEG    (CODE)
                                   1167 	.area CONST   (CODE)
      003EB1                       1168 ___str_7:
      003EB1 43 6F 75 6C 64 6E 27  1169 	.ascii "Couldn't mount drive..."
             74 20 6D 6F 75 6E 74
             20 64 72 69 76 65 2E
             2E 2E
      003EC8 0D                    1170 	.db 0x0d
      003EC9 0A                    1171 	.db 0x0a
      003ECA 00                    1172 	.db 0x00
                                   1173 	.area CSEG    (CODE)
                                   1174 	.area CONST   (CODE)
      003ECB                       1175 ___str_8:
      003ECB 53 44 20 63 61 72 64  1176 	.ascii "SD card mounted"
             20 6D 6F 75 6E 74 65
             64
      003EDA 0D                    1177 	.db 0x0d
      003EDB 0A                    1178 	.db 0x0a
      003EDC 00                    1179 	.db 0x00
                                   1180 	.area CSEG    (CODE)
                                   1181 	.area CONST   (CODE)
      003EDD                       1182 ___str_9:
      003EDD 43 6F 75 6C 64 6E 27  1183 	.ascii "Couldn't find SD card"
             74 20 66 69 6E 64 20
             53 44 20 63 61 72 64
      003EF2 0D                    1184 	.db 0x0d
      003EF3 0A                    1185 	.db 0x0a
      003EF4 00                    1186 	.db 0x00
                                   1187 	.area CSEG    (CODE)
                                   1188 	.area CONST   (CODE)
      003EF5                       1189 ___str_10:
      003EF5 43 61 72 64 20 74 79  1190 	.ascii "Card type is MMC - Can't use this type"
             70 65 20 69 73 20 4D
             4D 43 20 2D 20 43 61
             6E 27 74 20 75 73 65
             20 74 68 69 73 20 74
             79 70 65
      003F1B 0D                    1191 	.db 0x0d
      003F1C 0A                    1192 	.db 0x0a
      003F1D 00                    1193 	.db 0x00
                                   1194 	.area CSEG    (CODE)
                                   1195 	.area CONST   (CODE)
      003F1E                       1196 ___str_11:
      003F1E 43 6F 75 6C 64 6E 27  1197 	.ascii "Couldn't initialize SD Card drive..."
             74 20 69 6E 69 74 69
             61 6C 69 7A 65 20 53
             44 20 43 61 72 64 20
             64 72 69 76 65 2E 2E
             2E
      003F42 0D                    1198 	.db 0x0d
      003F43 0A                    1199 	.db 0x0a
      003F44 00                    1200 	.db 0x00
                                   1201 	.area CSEG    (CODE)
                                   1202 	.area CONST   (CODE)
      003F45                       1203 ___str_12:
      003F45 55 6E 6B 6E 6F 77 6E  1204 	.ascii "Unknown Card Type error..."
             20 43 61 72 64 20 54
             79 70 65 20 65 72 72
             6F 72 2E 2E 2E
      003F5F 0D                    1205 	.db 0x0d
      003F60 0A                    1206 	.db 0x0a
      003F61 00                    1207 	.db 0x00
                                   1208 	.area CSEG    (CODE)
                                   1209 	.area CONST   (CODE)
      003F62                       1210 ___str_13:
      003F62 53 44 20 63 61 72 64  1211 	.ascii "SD card initialized"
             20 69 6E 69 74 69 61
             6C 69 7A 65 64
      003F75 0D                    1212 	.db 0x0d
      003F76 0A                    1213 	.db 0x0a
      003F77 00                    1214 	.db 0x00
                                   1215 	.area CSEG    (CODE)
                                   1216 	.area CONST   (CODE)
      003F78                       1217 ___str_14:
      003F78 46 69 6E 69 73 68 65  1218 	.ascii "Finished reading files"
             64 20 72 65 61 64 69
             6E 67 20 66 69 6C 65
             73
      003F8E 0D                    1219 	.db 0x0d
      003F8F 0A                    1220 	.db 0x0a
      003F90 00                    1221 	.db 0x00
                                   1222 	.area CSEG    (CODE)
                                   1223 	.area XINIT   (CODE)
                                   1224 	.area CABS    (ABS,CODE)
