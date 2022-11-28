                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module timer
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Timer0_IRQHandler
                                     12 	.globl _get_fattime
                                     13 	.globl _itoa
                                     14 	.globl _stop_timer0
                                     15 	.globl _start_timer0
                                     16 	.globl _init_timer0
                                     17 	.globl _reset_timer0
                                     18 	.globl _get_cursor_pos
                                     19 	.globl _lcdputstr
                                     20 	.globl _lcdputch
                                     21 	.globl _lcdgotoxy
                                     22 	.globl _lcdgotoaddr
                                     23 	.globl _TF1
                                     24 	.globl _TR1
                                     25 	.globl _TF0
                                     26 	.globl _TR0
                                     27 	.globl _IE1
                                     28 	.globl _IT1
                                     29 	.globl _IE0
                                     30 	.globl _IT0
                                     31 	.globl _SM0
                                     32 	.globl _SM1
                                     33 	.globl _SM2
                                     34 	.globl _REN
                                     35 	.globl _TB8
                                     36 	.globl _RB8
                                     37 	.globl _TI
                                     38 	.globl _RI
                                     39 	.globl _CY
                                     40 	.globl _AC
                                     41 	.globl _F0
                                     42 	.globl _RS1
                                     43 	.globl _RS0
                                     44 	.globl _OV
                                     45 	.globl _F1
                                     46 	.globl _P
                                     47 	.globl _RD
                                     48 	.globl _WR
                                     49 	.globl _T1
                                     50 	.globl _T0
                                     51 	.globl _INT1
                                     52 	.globl _INT0
                                     53 	.globl _TXD0
                                     54 	.globl _TXD
                                     55 	.globl _RXD0
                                     56 	.globl _RXD
                                     57 	.globl _P3_7
                                     58 	.globl _P3_6
                                     59 	.globl _P3_5
                                     60 	.globl _P3_4
                                     61 	.globl _P3_3
                                     62 	.globl _P3_2
                                     63 	.globl _P3_1
                                     64 	.globl _P3_0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _PS
                                     90 	.globl _PT1
                                     91 	.globl _PX1
                                     92 	.globl _PT0
                                     93 	.globl _PX0
                                     94 	.globl _EA
                                     95 	.globl _ES
                                     96 	.globl _ET1
                                     97 	.globl _EX1
                                     98 	.globl _ET0
                                     99 	.globl _EX0
                                    100 	.globl _BREG_F7
                                    101 	.globl _BREG_F6
                                    102 	.globl _BREG_F5
                                    103 	.globl _BREG_F4
                                    104 	.globl _BREG_F3
                                    105 	.globl _BREG_F2
                                    106 	.globl _BREG_F1
                                    107 	.globl _BREG_F0
                                    108 	.globl _P5_7
                                    109 	.globl _P5_6
                                    110 	.globl _P5_5
                                    111 	.globl _P5_4
                                    112 	.globl _P5_3
                                    113 	.globl _P5_2
                                    114 	.globl _P5_1
                                    115 	.globl _P5_0
                                    116 	.globl _P4_7
                                    117 	.globl _P4_6
                                    118 	.globl _P4_5
                                    119 	.globl _P4_4
                                    120 	.globl _P4_3
                                    121 	.globl _P4_2
                                    122 	.globl _P4_1
                                    123 	.globl _P4_0
                                    124 	.globl _PX0L
                                    125 	.globl _PT0L
                                    126 	.globl _PX1L
                                    127 	.globl _PT1L
                                    128 	.globl _PSL
                                    129 	.globl _PT2L
                                    130 	.globl _PPCL
                                    131 	.globl _EC
                                    132 	.globl _CCF0
                                    133 	.globl _CCF1
                                    134 	.globl _CCF2
                                    135 	.globl _CCF3
                                    136 	.globl _CCF4
                                    137 	.globl _CR
                                    138 	.globl _CF
                                    139 	.globl _TF2
                                    140 	.globl _EXF2
                                    141 	.globl _RCLK
                                    142 	.globl _TCLK
                                    143 	.globl _EXEN2
                                    144 	.globl _TR2
                                    145 	.globl _C_T2
                                    146 	.globl _CP_RL2
                                    147 	.globl _T2CON_7
                                    148 	.globl _T2CON_6
                                    149 	.globl _T2CON_5
                                    150 	.globl _T2CON_4
                                    151 	.globl _T2CON_3
                                    152 	.globl _T2CON_2
                                    153 	.globl _T2CON_1
                                    154 	.globl _T2CON_0
                                    155 	.globl _PT2
                                    156 	.globl _ET2
                                    157 	.globl _TMOD
                                    158 	.globl _TL1
                                    159 	.globl _TL0
                                    160 	.globl _TH1
                                    161 	.globl _TH0
                                    162 	.globl _TCON
                                    163 	.globl _SP
                                    164 	.globl _SCON
                                    165 	.globl _SBUF0
                                    166 	.globl _SBUF
                                    167 	.globl _PSW
                                    168 	.globl _PCON
                                    169 	.globl _P3
                                    170 	.globl _P2
                                    171 	.globl _P1
                                    172 	.globl _P0
                                    173 	.globl _IP
                                    174 	.globl _IE
                                    175 	.globl _DP0L
                                    176 	.globl _DPL
                                    177 	.globl _DP0H
                                    178 	.globl _DPH
                                    179 	.globl _B
                                    180 	.globl _ACC
                                    181 	.globl _EECON
                                    182 	.globl _KBF
                                    183 	.globl _KBE
                                    184 	.globl _KBLS
                                    185 	.globl _BRL
                                    186 	.globl _BDRCON
                                    187 	.globl _T2MOD
                                    188 	.globl _SPDAT
                                    189 	.globl _SPSTA
                                    190 	.globl _SPCON
                                    191 	.globl _SADEN
                                    192 	.globl _SADDR
                                    193 	.globl _WDTPRG
                                    194 	.globl _WDTRST
                                    195 	.globl _P5
                                    196 	.globl _P4
                                    197 	.globl _IPH1
                                    198 	.globl _IPL1
                                    199 	.globl _IPH0
                                    200 	.globl _IPL0
                                    201 	.globl _IEN1
                                    202 	.globl _IEN0
                                    203 	.globl _CMOD
                                    204 	.globl _CL
                                    205 	.globl _CH
                                    206 	.globl _CCON
                                    207 	.globl _CCAPM4
                                    208 	.globl _CCAPM3
                                    209 	.globl _CCAPM2
                                    210 	.globl _CCAPM1
                                    211 	.globl _CCAPM0
                                    212 	.globl _CCAP4L
                                    213 	.globl _CCAP3L
                                    214 	.globl _CCAP2L
                                    215 	.globl _CCAP1L
                                    216 	.globl _CCAP0L
                                    217 	.globl _CCAP4H
                                    218 	.globl _CCAP3H
                                    219 	.globl _CCAP2H
                                    220 	.globl _CCAP1H
                                    221 	.globl _CCAP0H
                                    222 	.globl _CKCON1
                                    223 	.globl _CKCON0
                                    224 	.globl _CKRL
                                    225 	.globl _AUXR1
                                    226 	.globl _AUXR
                                    227 	.globl _TH2
                                    228 	.globl _TL2
                                    229 	.globl _RCAP2H
                                    230 	.globl _RCAP2L
                                    231 	.globl _T2CON
                                    232 ;--------------------------------------------------------
                                    233 ; special function registers
                                    234 ;--------------------------------------------------------
                                    235 	.area RSEG    (ABS,DATA)
      000000                        236 	.org 0x0000
                           0000C8   237 _T2CON	=	0x00c8
                           0000CA   238 _RCAP2L	=	0x00ca
                           0000CB   239 _RCAP2H	=	0x00cb
                           0000CC   240 _TL2	=	0x00cc
                           0000CD   241 _TH2	=	0x00cd
                           00008E   242 _AUXR	=	0x008e
                           0000A2   243 _AUXR1	=	0x00a2
                           000097   244 _CKRL	=	0x0097
                           00008F   245 _CKCON0	=	0x008f
                           0000AF   246 _CKCON1	=	0x00af
                           0000FA   247 _CCAP0H	=	0x00fa
                           0000FB   248 _CCAP1H	=	0x00fb
                           0000FC   249 _CCAP2H	=	0x00fc
                           0000FD   250 _CCAP3H	=	0x00fd
                           0000FE   251 _CCAP4H	=	0x00fe
                           0000EA   252 _CCAP0L	=	0x00ea
                           0000EB   253 _CCAP1L	=	0x00eb
                           0000EC   254 _CCAP2L	=	0x00ec
                           0000ED   255 _CCAP3L	=	0x00ed
                           0000EE   256 _CCAP4L	=	0x00ee
                           0000DA   257 _CCAPM0	=	0x00da
                           0000DB   258 _CCAPM1	=	0x00db
                           0000DC   259 _CCAPM2	=	0x00dc
                           0000DD   260 _CCAPM3	=	0x00dd
                           0000DE   261 _CCAPM4	=	0x00de
                           0000D8   262 _CCON	=	0x00d8
                           0000F9   263 _CH	=	0x00f9
                           0000E9   264 _CL	=	0x00e9
                           0000D9   265 _CMOD	=	0x00d9
                           0000A8   266 _IEN0	=	0x00a8
                           0000B1   267 _IEN1	=	0x00b1
                           0000B8   268 _IPL0	=	0x00b8
                           0000B7   269 _IPH0	=	0x00b7
                           0000B2   270 _IPL1	=	0x00b2
                           0000B3   271 _IPH1	=	0x00b3
                           0000C0   272 _P4	=	0x00c0
                           0000E8   273 _P5	=	0x00e8
                           0000A6   274 _WDTRST	=	0x00a6
                           0000A7   275 _WDTPRG	=	0x00a7
                           0000A9   276 _SADDR	=	0x00a9
                           0000B9   277 _SADEN	=	0x00b9
                           0000C3   278 _SPCON	=	0x00c3
                           0000C4   279 _SPSTA	=	0x00c4
                           0000C5   280 _SPDAT	=	0x00c5
                           0000C9   281 _T2MOD	=	0x00c9
                           00009B   282 _BDRCON	=	0x009b
                           00009A   283 _BRL	=	0x009a
                           00009C   284 _KBLS	=	0x009c
                           00009D   285 _KBE	=	0x009d
                           00009E   286 _KBF	=	0x009e
                           0000D2   287 _EECON	=	0x00d2
                           0000E0   288 _ACC	=	0x00e0
                           0000F0   289 _B	=	0x00f0
                           000083   290 _DPH	=	0x0083
                           000083   291 _DP0H	=	0x0083
                           000082   292 _DPL	=	0x0082
                           000082   293 _DP0L	=	0x0082
                           0000A8   294 _IE	=	0x00a8
                           0000B8   295 _IP	=	0x00b8
                           000080   296 _P0	=	0x0080
                           000090   297 _P1	=	0x0090
                           0000A0   298 _P2	=	0x00a0
                           0000B0   299 _P3	=	0x00b0
                           000087   300 _PCON	=	0x0087
                           0000D0   301 _PSW	=	0x00d0
                           000099   302 _SBUF	=	0x0099
                           000099   303 _SBUF0	=	0x0099
                           000098   304 _SCON	=	0x0098
                           000081   305 _SP	=	0x0081
                           000088   306 _TCON	=	0x0088
                           00008C   307 _TH0	=	0x008c
                           00008D   308 _TH1	=	0x008d
                           00008A   309 _TL0	=	0x008a
                           00008B   310 _TL1	=	0x008b
                           000089   311 _TMOD	=	0x0089
                                    312 ;--------------------------------------------------------
                                    313 ; special function bits
                                    314 ;--------------------------------------------------------
                                    315 	.area RSEG    (ABS,DATA)
      000000                        316 	.org 0x0000
                           0000AD   317 _ET2	=	0x00ad
                           0000BD   318 _PT2	=	0x00bd
                           0000C8   319 _T2CON_0	=	0x00c8
                           0000C9   320 _T2CON_1	=	0x00c9
                           0000CA   321 _T2CON_2	=	0x00ca
                           0000CB   322 _T2CON_3	=	0x00cb
                           0000CC   323 _T2CON_4	=	0x00cc
                           0000CD   324 _T2CON_5	=	0x00cd
                           0000CE   325 _T2CON_6	=	0x00ce
                           0000CF   326 _T2CON_7	=	0x00cf
                           0000C8   327 _CP_RL2	=	0x00c8
                           0000C9   328 _C_T2	=	0x00c9
                           0000CA   329 _TR2	=	0x00ca
                           0000CB   330 _EXEN2	=	0x00cb
                           0000CC   331 _TCLK	=	0x00cc
                           0000CD   332 _RCLK	=	0x00cd
                           0000CE   333 _EXF2	=	0x00ce
                           0000CF   334 _TF2	=	0x00cf
                           0000DF   335 _CF	=	0x00df
                           0000DE   336 _CR	=	0x00de
                           0000DC   337 _CCF4	=	0x00dc
                           0000DB   338 _CCF3	=	0x00db
                           0000DA   339 _CCF2	=	0x00da
                           0000D9   340 _CCF1	=	0x00d9
                           0000D8   341 _CCF0	=	0x00d8
                           0000AE   342 _EC	=	0x00ae
                           0000BE   343 _PPCL	=	0x00be
                           0000BD   344 _PT2L	=	0x00bd
                           0000BC   345 _PSL	=	0x00bc
                           0000BB   346 _PT1L	=	0x00bb
                           0000BA   347 _PX1L	=	0x00ba
                           0000B9   348 _PT0L	=	0x00b9
                           0000B8   349 _PX0L	=	0x00b8
                           0000C0   350 _P4_0	=	0x00c0
                           0000C1   351 _P4_1	=	0x00c1
                           0000C2   352 _P4_2	=	0x00c2
                           0000C3   353 _P4_3	=	0x00c3
                           0000C4   354 _P4_4	=	0x00c4
                           0000C5   355 _P4_5	=	0x00c5
                           0000C6   356 _P4_6	=	0x00c6
                           0000C7   357 _P4_7	=	0x00c7
                           0000E8   358 _P5_0	=	0x00e8
                           0000E9   359 _P5_1	=	0x00e9
                           0000EA   360 _P5_2	=	0x00ea
                           0000EB   361 _P5_3	=	0x00eb
                           0000EC   362 _P5_4	=	0x00ec
                           0000ED   363 _P5_5	=	0x00ed
                           0000EE   364 _P5_6	=	0x00ee
                           0000EF   365 _P5_7	=	0x00ef
                           0000F0   366 _BREG_F0	=	0x00f0
                           0000F1   367 _BREG_F1	=	0x00f1
                           0000F2   368 _BREG_F2	=	0x00f2
                           0000F3   369 _BREG_F3	=	0x00f3
                           0000F4   370 _BREG_F4	=	0x00f4
                           0000F5   371 _BREG_F5	=	0x00f5
                           0000F6   372 _BREG_F6	=	0x00f6
                           0000F7   373 _BREG_F7	=	0x00f7
                           0000A8   374 _EX0	=	0x00a8
                           0000A9   375 _ET0	=	0x00a9
                           0000AA   376 _EX1	=	0x00aa
                           0000AB   377 _ET1	=	0x00ab
                           0000AC   378 _ES	=	0x00ac
                           0000AF   379 _EA	=	0x00af
                           0000B8   380 _PX0	=	0x00b8
                           0000B9   381 _PT0	=	0x00b9
                           0000BA   382 _PX1	=	0x00ba
                           0000BB   383 _PT1	=	0x00bb
                           0000BC   384 _PS	=	0x00bc
                           000080   385 _P0_0	=	0x0080
                           000081   386 _P0_1	=	0x0081
                           000082   387 _P0_2	=	0x0082
                           000083   388 _P0_3	=	0x0083
                           000084   389 _P0_4	=	0x0084
                           000085   390 _P0_5	=	0x0085
                           000086   391 _P0_6	=	0x0086
                           000087   392 _P0_7	=	0x0087
                           000090   393 _P1_0	=	0x0090
                           000091   394 _P1_1	=	0x0091
                           000092   395 _P1_2	=	0x0092
                           000093   396 _P1_3	=	0x0093
                           000094   397 _P1_4	=	0x0094
                           000095   398 _P1_5	=	0x0095
                           000096   399 _P1_6	=	0x0096
                           000097   400 _P1_7	=	0x0097
                           0000A0   401 _P2_0	=	0x00a0
                           0000A1   402 _P2_1	=	0x00a1
                           0000A2   403 _P2_2	=	0x00a2
                           0000A3   404 _P2_3	=	0x00a3
                           0000A4   405 _P2_4	=	0x00a4
                           0000A5   406 _P2_5	=	0x00a5
                           0000A6   407 _P2_6	=	0x00a6
                           0000A7   408 _P2_7	=	0x00a7
                           0000B0   409 _P3_0	=	0x00b0
                           0000B1   410 _P3_1	=	0x00b1
                           0000B2   411 _P3_2	=	0x00b2
                           0000B3   412 _P3_3	=	0x00b3
                           0000B4   413 _P3_4	=	0x00b4
                           0000B5   414 _P3_5	=	0x00b5
                           0000B6   415 _P3_6	=	0x00b6
                           0000B7   416 _P3_7	=	0x00b7
                           0000B0   417 _RXD	=	0x00b0
                           0000B0   418 _RXD0	=	0x00b0
                           0000B1   419 _TXD	=	0x00b1
                           0000B1   420 _TXD0	=	0x00b1
                           0000B2   421 _INT0	=	0x00b2
                           0000B3   422 _INT1	=	0x00b3
                           0000B4   423 _T0	=	0x00b4
                           0000B5   424 _T1	=	0x00b5
                           0000B6   425 _WR	=	0x00b6
                           0000B7   426 _RD	=	0x00b7
                           0000D0   427 _P	=	0x00d0
                           0000D1   428 _F1	=	0x00d1
                           0000D2   429 _OV	=	0x00d2
                           0000D3   430 _RS0	=	0x00d3
                           0000D4   431 _RS1	=	0x00d4
                           0000D5   432 _F0	=	0x00d5
                           0000D6   433 _AC	=	0x00d6
                           0000D7   434 _CY	=	0x00d7
                           000098   435 _RI	=	0x0098
                           000099   436 _TI	=	0x0099
                           00009A   437 _RB8	=	0x009a
                           00009B   438 _TB8	=	0x009b
                           00009C   439 _REN	=	0x009c
                           00009D   440 _SM2	=	0x009d
                           00009E   441 _SM1	=	0x009e
                           00009F   442 _SM0	=	0x009f
                           000088   443 _IT0	=	0x0088
                           000089   444 _IE0	=	0x0089
                           00008A   445 _IT1	=	0x008a
                           00008B   446 _IE1	=	0x008b
                           00008C   447 _TR0	=	0x008c
                           00008D   448 _TF0	=	0x008d
                           00008E   449 _TR1	=	0x008e
                           00008F   450 _TF1	=	0x008f
                                    451 ;--------------------------------------------------------
                                    452 ; overlayable register banks
                                    453 ;--------------------------------------------------------
                                    454 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        455 	.ds 8
                                    456 ;--------------------------------------------------------
                                    457 ; overlayable bit register bank
                                    458 ;--------------------------------------------------------
                                    459 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        460 bits:
      000020                        461 	.ds 1
                           008000   462 	b0 = bits[0]
                           008100   463 	b1 = bits[1]
                           008200   464 	b2 = bits[2]
                           008300   465 	b3 = bits[3]
                           008400   466 	b4 = bits[4]
                           008500   467 	b5 = bits[5]
                           008600   468 	b6 = bits[6]
                           008700   469 	b7 = bits[7]
                                    470 ;--------------------------------------------------------
                                    471 ; internal ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area DSEG    (DATA)
                                    474 ;--------------------------------------------------------
                                    475 ; overlayable items in internal ram
                                    476 ;--------------------------------------------------------
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
                                    498 ;--------------------------------------------------------
                                    499 ; absolute external ram data
                                    500 ;--------------------------------------------------------
                                    501 	.area XABS    (ABS,XDATA)
                                    502 ;--------------------------------------------------------
                                    503 ; external initialized ram data
                                    504 ;--------------------------------------------------------
                                    505 	.area XISEG   (XDATA)
      000033                        506 _hrs:
      000033                        507 	.ds 1
      000034                        508 _mins:
      000034                        509 	.ds 1
      000035                        510 _seconds:
      000035                        511 	.ds 1
      000036                        512 _ms:
      000036                        513 	.ds 1
      000037                        514 _timer0_int_cnt:
      000037                        515 	.ds 1
      000038                        516 _cursor_pos:
      000038                        517 	.ds 1
                                    518 	.area HOME    (CODE)
                                    519 	.area GSINIT0 (CODE)
                                    520 	.area GSINIT1 (CODE)
                                    521 	.area GSINIT2 (CODE)
                                    522 	.area GSINIT3 (CODE)
                                    523 	.area GSINIT4 (CODE)
                                    524 	.area GSINIT5 (CODE)
                                    525 	.area GSINIT  (CODE)
                                    526 	.area GSFINAL (CODE)
                                    527 	.area CSEG    (CODE)
                                    528 ;--------------------------------------------------------
                                    529 ; global & static initialisations
                                    530 ;--------------------------------------------------------
                                    531 	.area HOME    (CODE)
                                    532 	.area GSINIT  (CODE)
                                    533 	.area GSFINAL (CODE)
                                    534 	.area GSINIT  (CODE)
                                    535 ;--------------------------------------------------------
                                    536 ; Home
                                    537 ;--------------------------------------------------------
                                    538 	.area HOME    (CODE)
                                    539 	.area HOME    (CODE)
                                    540 ;--------------------------------------------------------
                                    541 ; code
                                    542 ;--------------------------------------------------------
                                    543 	.area CSEG    (CODE)
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'reset_timer0'
                                    546 ;------------------------------------------------------------
                                    547 ;	timer.c:15: void reset_timer0(void)
                                    548 ;	-----------------------------------------
                                    549 ;	 function reset_timer0
                                    550 ;	-----------------------------------------
      003380                        551 _reset_timer0:
                           000007   552 	ar7 = 0x07
                           000006   553 	ar6 = 0x06
                           000005   554 	ar5 = 0x05
                           000004   555 	ar4 = 0x04
                           000003   556 	ar3 = 0x03
                           000002   557 	ar2 = 0x02
                           000001   558 	ar1 = 0x01
                           000000   559 	ar0 = 0x00
                                    560 ;	timer.c:17: timer0_int_cnt = 0;
      003380 90 00 37         [24]  561 	mov	dptr,#_timer0_int_cnt
      003383 E4               [12]  562 	clr	a
      003384 F0               [24]  563 	movx	@dptr,a
                                    564 ;	timer.c:18: mins = 0;
      003385 90 00 34         [24]  565 	mov	dptr,#_mins
      003388 F0               [24]  566 	movx	@dptr,a
                                    567 ;	timer.c:19: seconds = 0;
      003389 90 00 35         [24]  568 	mov	dptr,#_seconds
      00338C F0               [24]  569 	movx	@dptr,a
                                    570 ;	timer.c:20: ms = 0;
      00338D 90 00 36         [24]  571 	mov	dptr,#_ms
      003390 F0               [24]  572 	movx	@dptr,a
                                    573 ;	timer.c:21: }
      003391 22               [24]  574 	ret
                                    575 ;------------------------------------------------------------
                                    576 ;Allocation info for local variables in function 'init_timer0'
                                    577 ;------------------------------------------------------------
                                    578 ;	timer.c:23: void init_timer0(void)
                                    579 ;	-----------------------------------------
                                    580 ;	 function init_timer0
                                    581 ;	-----------------------------------------
      003392                        582 _init_timer0:
                                    583 ;	timer.c:25: reset_timer0();
      003392 12 33 80         [24]  584 	lcall	_reset_timer0
                                    585 ;	timer.c:27: TMOD |= 0x01;
      003395 43 89 01         [24]  586 	orl	_TMOD,#0x01
                                    587 ;	timer.c:30: TH0 = 0x4C;
      003398 75 8C 4C         [24]  588 	mov	_TH0,#0x4c
                                    589 ;	timer.c:31: TL0 = 0x00;
      00339B 75 8A 00         [24]  590 	mov	_TL0,#0x00
                                    591 ;	timer.c:33: IE |= 0x82;
      00339E 43 A8 82         [24]  592 	orl	_IE,#0x82
                                    593 ;	timer.c:35: TR0=1;
                                    594 ;	assignBit
      0033A1 D2 8C            [12]  595 	setb	_TR0
                                    596 ;	timer.c:36: }
      0033A3 22               [24]  597 	ret
                                    598 ;------------------------------------------------------------
                                    599 ;Allocation info for local variables in function 'start_timer0'
                                    600 ;------------------------------------------------------------
                                    601 ;	timer.c:38: void start_timer0(void)
                                    602 ;	-----------------------------------------
                                    603 ;	 function start_timer0
                                    604 ;	-----------------------------------------
      0033A4                        605 _start_timer0:
                                    606 ;	timer.c:40: TR0=1;
                                    607 ;	assignBit
      0033A4 D2 8C            [12]  608 	setb	_TR0
                                    609 ;	timer.c:41: }
      0033A6 22               [24]  610 	ret
                                    611 ;------------------------------------------------------------
                                    612 ;Allocation info for local variables in function 'stop_timer0'
                                    613 ;------------------------------------------------------------
                                    614 ;	timer.c:43: void stop_timer0(void)
                                    615 ;	-----------------------------------------
                                    616 ;	 function stop_timer0
                                    617 ;	-----------------------------------------
      0033A7                        618 _stop_timer0:
                                    619 ;	timer.c:45: TR0=0;
                                    620 ;	assignBit
      0033A7 C2 8C            [12]  621 	clr	_TR0
                                    622 ;	timer.c:46: }
      0033A9 22               [24]  623 	ret
                                    624 ;------------------------------------------------------------
                                    625 ;Allocation info for local variables in function 'itoa'
                                    626 ;------------------------------------------------------------
                                    627 ;b                         Allocated to stack - _bp -5
                                    628 ;i                         Allocated to stack - _bp +1
                                    629 ;digit                     Allocated to stack - _bp +6
                                    630 ;p                         Allocated to registers r3 r4 r5 
                                    631 ;shifter                   Allocated to registers r2 r7 
                                    632 ;sloc0                     Allocated to stack - _bp +3
                                    633 ;------------------------------------------------------------
                                    634 ;	timer.c:53: void itoa(int i, char* b){
                                    635 ;	-----------------------------------------
                                    636 ;	 function itoa
                                    637 ;	-----------------------------------------
      0033AA                        638 _itoa:
      0033AA C0 08            [24]  639 	push	_bp
      0033AC 85 81 08         [24]  640 	mov	_bp,sp
      0033AF C0 82            [24]  641 	push	dpl
      0033B1 C0 83            [24]  642 	push	dph
      0033B3 E5 81            [12]  643 	mov	a,sp
      0033B5 24 0E            [12]  644 	add	a,#0x0e
      0033B7 F5 81            [12]  645 	mov	sp,a
                                    646 ;	timer.c:54: char const digit[] = "0123456789";
      0033B9 E5 08            [12]  647 	mov	a,_bp
      0033BB 24 06            [12]  648 	add	a,#0x06
      0033BD F9               [12]  649 	mov	r1,a
      0033BE 77 30            [12]  650 	mov	@r1,#0x30
      0033C0 E9               [12]  651 	mov	a,r1
      0033C1 04               [12]  652 	inc	a
      0033C2 F8               [12]  653 	mov	r0,a
      0033C3 76 31            [12]  654 	mov	@r0,#0x31
      0033C5 74 02            [12]  655 	mov	a,#0x02
      0033C7 29               [12]  656 	add	a,r1
      0033C8 F8               [12]  657 	mov	r0,a
      0033C9 76 32            [12]  658 	mov	@r0,#0x32
      0033CB 74 03            [12]  659 	mov	a,#0x03
      0033CD 29               [12]  660 	add	a,r1
      0033CE F8               [12]  661 	mov	r0,a
      0033CF 76 33            [12]  662 	mov	@r0,#0x33
      0033D1 74 04            [12]  663 	mov	a,#0x04
      0033D3 29               [12]  664 	add	a,r1
      0033D4 F8               [12]  665 	mov	r0,a
      0033D5 76 34            [12]  666 	mov	@r0,#0x34
      0033D7 74 05            [12]  667 	mov	a,#0x05
      0033D9 29               [12]  668 	add	a,r1
      0033DA F8               [12]  669 	mov	r0,a
      0033DB 76 35            [12]  670 	mov	@r0,#0x35
      0033DD 74 06            [12]  671 	mov	a,#0x06
      0033DF 29               [12]  672 	add	a,r1
      0033E0 F8               [12]  673 	mov	r0,a
      0033E1 76 36            [12]  674 	mov	@r0,#0x36
      0033E3 74 07            [12]  675 	mov	a,#0x07
      0033E5 29               [12]  676 	add	a,r1
      0033E6 F8               [12]  677 	mov	r0,a
      0033E7 76 37            [12]  678 	mov	@r0,#0x37
      0033E9 74 08            [12]  679 	mov	a,#0x08
      0033EB 29               [12]  680 	add	a,r1
      0033EC F8               [12]  681 	mov	r0,a
      0033ED 76 38            [12]  682 	mov	@r0,#0x38
      0033EF 74 09            [12]  683 	mov	a,#0x09
      0033F1 29               [12]  684 	add	a,r1
      0033F2 F8               [12]  685 	mov	r0,a
      0033F3 76 39            [12]  686 	mov	@r0,#0x39
      0033F5 74 0A            [12]  687 	mov	a,#0x0a
      0033F7 29               [12]  688 	add	a,r1
      0033F8 F8               [12]  689 	mov	r0,a
      0033F9 76 00            [12]  690 	mov	@r0,#0x00
                                    691 ;	timer.c:55: char* p = b;
      0033FB E5 08            [12]  692 	mov	a,_bp
      0033FD 24 FB            [12]  693 	add	a,#0xfb
      0033FF F8               [12]  694 	mov	r0,a
      003400 86 03            [24]  695 	mov	ar3,@r0
      003402 08               [12]  696 	inc	r0
      003403 86 04            [24]  697 	mov	ar4,@r0
      003405 08               [12]  698 	inc	r0
      003406 86 05            [24]  699 	mov	ar5,@r0
                                    700 ;	timer.c:56: if(i<0){
      003408 A8 08            [24]  701 	mov	r0,_bp
      00340A 08               [12]  702 	inc	r0
      00340B 08               [12]  703 	inc	r0
      00340C E6               [12]  704 	mov	a,@r0
      00340D 30 E7 1B         [24]  705 	jnb	acc.7,00102$
                                    706 ;	timer.c:57: *p++ = '-';
      003410 8B 82            [24]  707 	mov	dpl,r3
      003412 8C 83            [24]  708 	mov	dph,r4
      003414 8D F0            [24]  709 	mov	b,r5
      003416 74 2D            [12]  710 	mov	a,#0x2d
      003418 12 38 59         [24]  711 	lcall	__gptrput
      00341B A3               [24]  712 	inc	dptr
      00341C AB 82            [24]  713 	mov	r3,dpl
      00341E AC 83            [24]  714 	mov	r4,dph
                                    715 ;	timer.c:58: i *= -1;
      003420 A8 08            [24]  716 	mov	r0,_bp
      003422 08               [12]  717 	inc	r0
      003423 C3               [12]  718 	clr	c
      003424 E4               [12]  719 	clr	a
      003425 96               [12]  720 	subb	a,@r0
      003426 F6               [12]  721 	mov	@r0,a
      003427 08               [12]  722 	inc	r0
      003428 E4               [12]  723 	clr	a
      003429 96               [12]  724 	subb	a,@r0
      00342A F6               [12]  725 	mov	@r0,a
      00342B                        726 00102$:
                                    727 ;	timer.c:60: int shifter = i;
      00342B A8 08            [24]  728 	mov	r0,_bp
      00342D 08               [12]  729 	inc	r0
      00342E 86 02            [24]  730 	mov	ar2,@r0
      003430 08               [12]  731 	inc	r0
      003431 86 07            [24]  732 	mov	ar7,@r0
                                    733 ;	timer.c:61: do{
      003433 E5 08            [12]  734 	mov	a,_bp
      003435 24 03            [12]  735 	add	a,#0x03
      003437 F8               [12]  736 	mov	r0,a
      003438 A6 03            [24]  737 	mov	@r0,ar3
      00343A 08               [12]  738 	inc	r0
      00343B A6 04            [24]  739 	mov	@r0,ar4
      00343D 08               [12]  740 	inc	r0
      00343E A6 05            [24]  741 	mov	@r0,ar5
      003440                        742 00103$:
                                    743 ;	timer.c:63: ++p;
      003440 E5 08            [12]  744 	mov	a,_bp
      003442 24 03            [12]  745 	add	a,#0x03
      003444 F8               [12]  746 	mov	r0,a
      003445 06               [12]  747 	inc	@r0
      003446 B6 00 02         [24]  748 	cjne	@r0,#0x00,00134$
      003449 08               [12]  749 	inc	r0
      00344A 06               [12]  750 	inc	@r0
      00344B                        751 00134$:
                                    752 ;	timer.c:64: shifter = shifter/10;
      00344B C0 01            [24]  753 	push	ar1
      00344D 74 0A            [12]  754 	mov	a,#0x0a
      00344F C0 E0            [24]  755 	push	acc
      003451 E4               [12]  756 	clr	a
      003452 C0 E0            [24]  757 	push	acc
      003454 8A 82            [24]  758 	mov	dpl,r2
      003456 8F 83            [24]  759 	mov	dph,r7
      003458 12 3D 83         [24]  760 	lcall	__divsint
      00345B AB 82            [24]  761 	mov	r3,dpl
      00345D AE 83            [24]  762 	mov	r6,dph
      00345F 15 81            [12]  763 	dec	sp
      003461 15 81            [12]  764 	dec	sp
      003463 D0 01            [24]  765 	pop	ar1
      003465 8B 02            [24]  766 	mov	ar2,r3
      003467 8E 07            [24]  767 	mov	ar7,r6
                                    768 ;	timer.c:65: }while(shifter);
      003469 EB               [12]  769 	mov	a,r3
      00346A 4E               [12]  770 	orl	a,r6
      00346B 70 D3            [24]  771 	jnz	00103$
                                    772 ;	timer.c:66: *p = '\0';
      00346D E5 08            [12]  773 	mov	a,_bp
      00346F 24 03            [12]  774 	add	a,#0x03
      003471 F8               [12]  775 	mov	r0,a
      003472 86 82            [24]  776 	mov	dpl,@r0
      003474 08               [12]  777 	inc	r0
      003475 86 83            [24]  778 	mov	dph,@r0
      003477 08               [12]  779 	inc	r0
      003478 86 F0            [24]  780 	mov	b,@r0
      00347A E4               [12]  781 	clr	a
      00347B 12 38 59         [24]  782 	lcall	__gptrput
                                    783 ;	timer.c:67: do{
      00347E E5 08            [12]  784 	mov	a,_bp
      003480 24 03            [12]  785 	add	a,#0x03
      003482 F8               [12]  786 	mov	r0,a
      003483 86 05            [24]  787 	mov	ar5,@r0
      003485 08               [12]  788 	inc	r0
      003486 86 06            [24]  789 	mov	ar6,@r0
      003488 08               [12]  790 	inc	r0
      003489 86 07            [24]  791 	mov	ar7,@r0
      00348B                        792 00106$:
                                    793 ;	timer.c:69: *--p = digit[i%10];
      00348B 1D               [12]  794 	dec	r5
      00348C BD FF 01         [24]  795 	cjne	r5,#0xff,00136$
      00348F 1E               [12]  796 	dec	r6
      003490                        797 00136$:
      003490 C0 07            [24]  798 	push	ar7
      003492 C0 06            [24]  799 	push	ar6
      003494 C0 05            [24]  800 	push	ar5
      003496 C0 01            [24]  801 	push	ar1
      003498 74 0A            [12]  802 	mov	a,#0x0a
      00349A C0 E0            [24]  803 	push	acc
      00349C E4               [12]  804 	clr	a
      00349D C0 E0            [24]  805 	push	acc
      00349F A8 08            [24]  806 	mov	r0,_bp
      0034A1 08               [12]  807 	inc	r0
      0034A2 86 82            [24]  808 	mov	dpl,@r0
      0034A4 08               [12]  809 	inc	r0
      0034A5 86 83            [24]  810 	mov	dph,@r0
      0034A7 12 3A C1         [24]  811 	lcall	__modsint
      0034AA AB 82            [24]  812 	mov	r3,dpl
      0034AC 15 81            [12]  813 	dec	sp
      0034AE 15 81            [12]  814 	dec	sp
      0034B0 D0 01            [24]  815 	pop	ar1
      0034B2 D0 05            [24]  816 	pop	ar5
      0034B4 D0 06            [24]  817 	pop	ar6
      0034B6 D0 07            [24]  818 	pop	ar7
      0034B8 EB               [12]  819 	mov	a,r3
      0034B9 29               [12]  820 	add	a,r1
      0034BA F8               [12]  821 	mov	r0,a
      0034BB 86 04            [24]  822 	mov	ar4,@r0
      0034BD 8D 82            [24]  823 	mov	dpl,r5
      0034BF 8E 83            [24]  824 	mov	dph,r6
      0034C1 8F F0            [24]  825 	mov	b,r7
      0034C3 EC               [12]  826 	mov	a,r4
      0034C4 12 38 59         [24]  827 	lcall	__gptrput
                                    828 ;	timer.c:70: i = i/10;
      0034C7 C0 07            [24]  829 	push	ar7
      0034C9 C0 06            [24]  830 	push	ar6
      0034CB C0 05            [24]  831 	push	ar5
      0034CD C0 01            [24]  832 	push	ar1
      0034CF 74 0A            [12]  833 	mov	a,#0x0a
      0034D1 C0 E0            [24]  834 	push	acc
      0034D3 E4               [12]  835 	clr	a
      0034D4 C0 E0            [24]  836 	push	acc
      0034D6 A8 08            [24]  837 	mov	r0,_bp
      0034D8 08               [12]  838 	inc	r0
      0034D9 86 82            [24]  839 	mov	dpl,@r0
      0034DB 08               [12]  840 	inc	r0
      0034DC 86 83            [24]  841 	mov	dph,@r0
      0034DE 12 3D 83         [24]  842 	lcall	__divsint
      0034E1 A8 08            [24]  843 	mov	r0,_bp
      0034E3 08               [12]  844 	inc	r0
      0034E4 A6 82            [24]  845 	mov	@r0,dpl
      0034E6 08               [12]  846 	inc	r0
      0034E7 A6 83            [24]  847 	mov	@r0,dph
      0034E9 15 81            [12]  848 	dec	sp
      0034EB 15 81            [12]  849 	dec	sp
      0034ED D0 01            [24]  850 	pop	ar1
      0034EF D0 05            [24]  851 	pop	ar5
      0034F1 D0 06            [24]  852 	pop	ar6
      0034F3 D0 07            [24]  853 	pop	ar7
                                    854 ;	timer.c:71: }while(i);
      0034F5 A8 08            [24]  855 	mov	r0,_bp
      0034F7 08               [12]  856 	inc	r0
      0034F8 E6               [12]  857 	mov	a,@r0
      0034F9 08               [12]  858 	inc	r0
      0034FA 46               [12]  859 	orl	a,@r0
      0034FB 70 8E            [24]  860 	jnz	00106$
                                    861 ;	timer.c:72: return;
                                    862 ;	timer.c:73: }
      0034FD 85 08 81         [24]  863 	mov	sp,_bp
      003500 D0 08            [24]  864 	pop	_bp
      003502 22               [24]  865 	ret
                                    866 ;------------------------------------------------------------
                                    867 ;Allocation info for local variables in function 'update_timer_display'
                                    868 ;------------------------------------------------------------
                                    869 ;min_str                   Allocated to stack - _bp +8
                                    870 ;sec_str                   Allocated to stack - _bp +4
                                    871 ;ms_str                    Allocated to stack - _bp +12
                                    872 ;sloc0                     Allocated to stack - _bp +1
                                    873 ;------------------------------------------------------------
                                    874 ;	timer.c:77: static inline void update_timer_display(void)
                                    875 ;	-----------------------------------------
                                    876 ;	 function update_timer_display
                                    877 ;	-----------------------------------------
      003503                        878 _update_timer_display:
      003503 C0 08            [24]  879 	push	_bp
      003505 E5 81            [12]  880 	mov	a,sp
      003507 F5 08            [12]  881 	mov	_bp,a
      003509 24 0F            [12]  882 	add	a,#0x0f
      00350B F5 81            [12]  883 	mov	sp,a
                                    884 ;	timer.c:80: ms++;
      00350D 90 00 36         [24]  885 	mov	dptr,#_ms
      003510 E0               [24]  886 	movx	a,@dptr
      003511 24 01            [12]  887 	add	a,#0x01
      003513 F0               [24]  888 	movx	@dptr,a
                                    889 ;	timer.c:82: if(ms >= 10){
      003514 E0               [24]  890 	movx	a,@dptr
      003515 FF               [12]  891 	mov	r7,a
      003516 BF 0A 00         [24]  892 	cjne	r7,#0x0a,00121$
      003519                        893 00121$:
      003519 40 0C            [24]  894 	jc	00102$
                                    895 ;	timer.c:83: ms = 0;
      00351B 90 00 36         [24]  896 	mov	dptr,#_ms
      00351E E4               [12]  897 	clr	a
      00351F F0               [24]  898 	movx	@dptr,a
                                    899 ;	timer.c:84: seconds++;
      003520 90 00 35         [24]  900 	mov	dptr,#_seconds
      003523 E0               [24]  901 	movx	a,@dptr
      003524 24 01            [12]  902 	add	a,#0x01
      003526 F0               [24]  903 	movx	@dptr,a
      003527                        904 00102$:
                                    905 ;	timer.c:86: if(seconds >= 60){
      003527 90 00 35         [24]  906 	mov	dptr,#_seconds
      00352A E0               [24]  907 	movx	a,@dptr
      00352B FF               [12]  908 	mov	r7,a
      00352C BF 3C 00         [24]  909 	cjne	r7,#0x3c,00123$
      00352F                        910 00123$:
      00352F 40 0C            [24]  911 	jc	00104$
                                    912 ;	timer.c:87: mins++;
      003531 90 00 34         [24]  913 	mov	dptr,#_mins
      003534 E0               [24]  914 	movx	a,@dptr
      003535 24 01            [12]  915 	add	a,#0x01
      003537 F0               [24]  916 	movx	@dptr,a
                                    917 ;	timer.c:88: seconds = 0;
      003538 90 00 35         [24]  918 	mov	dptr,#_seconds
      00353B E4               [12]  919 	clr	a
      00353C F0               [24]  920 	movx	@dptr,a
      00353D                        921 00104$:
                                    922 ;	timer.c:91: if(mins >= 60){
      00353D 90 00 34         [24]  923 	mov	dptr,#_mins
      003540 E0               [24]  924 	movx	a,@dptr
      003541 FF               [12]  925 	mov	r7,a
      003542 BF 3C 00         [24]  926 	cjne	r7,#0x3c,00125$
      003545                        927 00125$:
      003545 40 0C            [24]  928 	jc	00106$
                                    929 ;	timer.c:92: hrs++;
      003547 90 00 33         [24]  930 	mov	dptr,#_hrs
      00354A E0               [24]  931 	movx	a,@dptr
      00354B 24 01            [12]  932 	add	a,#0x01
      00354D F0               [24]  933 	movx	@dptr,a
                                    934 ;	timer.c:93: mins = 0;
      00354E 90 00 34         [24]  935 	mov	dptr,#_mins
      003551 E4               [12]  936 	clr	a
      003552 F0               [24]  937 	movx	@dptr,a
      003553                        938 00106$:
                                    939 ;	timer.c:100: itoa(mins, min_str);
      003553 E5 08            [12]  940 	mov	a,_bp
      003555 24 08            [12]  941 	add	a,#0x08
      003557 FF               [12]  942 	mov	r7,a
      003558 FC               [12]  943 	mov	r4,a
      003559 7D 00            [12]  944 	mov	r5,#0x00
      00355B 7E 40            [12]  945 	mov	r6,#0x40
      00355D 90 00 34         [24]  946 	mov	dptr,#_mins
      003560 E0               [24]  947 	movx	a,@dptr
      003561 FB               [12]  948 	mov	r3,a
      003562 7A 00            [12]  949 	mov	r2,#0x00
      003564 C0 07            [24]  950 	push	ar7
      003566 C0 04            [24]  951 	push	ar4
      003568 C0 05            [24]  952 	push	ar5
      00356A C0 06            [24]  953 	push	ar6
      00356C 8B 82            [24]  954 	mov	dpl,r3
      00356E 8A 83            [24]  955 	mov	dph,r2
      003570 12 33 AA         [24]  956 	lcall	_itoa
      003573 15 81            [12]  957 	dec	sp
      003575 15 81            [12]  958 	dec	sp
      003577 15 81            [12]  959 	dec	sp
                                    960 ;	timer.c:101: itoa(seconds, sec_str);
      003579 E5 08            [12]  961 	mov	a,_bp
      00357B 24 04            [12]  962 	add	a,#0x04
      00357D FE               [12]  963 	mov	r6,a
      00357E A8 08            [24]  964 	mov	r0,_bp
      003580 08               [12]  965 	inc	r0
      003581 A6 06            [24]  966 	mov	@r0,ar6
      003583 08               [12]  967 	inc	r0
      003584 76 00            [12]  968 	mov	@r0,#0x00
      003586 08               [12]  969 	inc	r0
      003587 76 40            [12]  970 	mov	@r0,#0x40
      003589 90 00 35         [24]  971 	mov	dptr,#_seconds
      00358C E0               [24]  972 	movx	a,@dptr
      00358D FA               [12]  973 	mov	r2,a
      00358E 7D 00            [12]  974 	mov	r5,#0x00
      003590 C0 06            [24]  975 	push	ar6
      003592 A8 08            [24]  976 	mov	r0,_bp
      003594 08               [12]  977 	inc	r0
      003595 E6               [12]  978 	mov	a,@r0
      003596 C0 E0            [24]  979 	push	acc
      003598 08               [12]  980 	inc	r0
      003599 E6               [12]  981 	mov	a,@r0
      00359A C0 E0            [24]  982 	push	acc
      00359C 08               [12]  983 	inc	r0
      00359D E6               [12]  984 	mov	a,@r0
      00359E C0 E0            [24]  985 	push	acc
      0035A0 8A 82            [24]  986 	mov	dpl,r2
      0035A2 8D 83            [24]  987 	mov	dph,r5
      0035A4 12 33 AA         [24]  988 	lcall	_itoa
      0035A7 15 81            [12]  989 	dec	sp
      0035A9 15 81            [12]  990 	dec	sp
      0035AB 15 81            [12]  991 	dec	sp
                                    992 ;	timer.c:102: itoa(ms, ms_str);
      0035AD E5 08            [12]  993 	mov	a,_bp
      0035AF 24 0C            [12]  994 	add	a,#0x0c
      0035B1 FD               [12]  995 	mov	r5,a
      0035B2 A8 08            [24]  996 	mov	r0,_bp
      0035B4 08               [12]  997 	inc	r0
      0035B5 A6 05            [24]  998 	mov	@r0,ar5
      0035B7 08               [12]  999 	inc	r0
      0035B8 76 00            [12] 1000 	mov	@r0,#0x00
      0035BA 08               [12] 1001 	inc	r0
      0035BB 76 40            [12] 1002 	mov	@r0,#0x40
      0035BD 90 00 36         [24] 1003 	mov	dptr,#_ms
      0035C0 E0               [24] 1004 	movx	a,@dptr
      0035C1 FC               [12] 1005 	mov	r4,a
      0035C2 7B 00            [12] 1006 	mov	r3,#0x00
      0035C4 C0 05            [24] 1007 	push	ar5
      0035C6 A8 08            [24] 1008 	mov	r0,_bp
      0035C8 08               [12] 1009 	inc	r0
      0035C9 E6               [12] 1010 	mov	a,@r0
      0035CA C0 E0            [24] 1011 	push	acc
      0035CC 08               [12] 1012 	inc	r0
      0035CD E6               [12] 1013 	mov	a,@r0
      0035CE C0 E0            [24] 1014 	push	acc
      0035D0 08               [12] 1015 	inc	r0
      0035D1 E6               [12] 1016 	mov	a,@r0
      0035D2 C0 E0            [24] 1017 	push	acc
      0035D4 8C 82            [24] 1018 	mov	dpl,r4
      0035D6 8B 83            [24] 1019 	mov	dph,r3
      0035D8 12 33 AA         [24] 1020 	lcall	_itoa
      0035DB 15 81            [12] 1021 	dec	sp
      0035DD 15 81            [12] 1022 	dec	sp
      0035DF 15 81            [12] 1023 	dec	sp
                                   1024 ;	timer.c:105: lcdgotoxy(3,10);
      0035E1 74 0A            [12] 1025 	mov	a,#0x0a
      0035E3 C0 E0            [24] 1026 	push	acc
      0035E5 75 82 03         [24] 1027 	mov	dpl,#0x03
      0035E8 12 02 C4         [24] 1028 	lcall	_lcdgotoxy
      0035EB 15 81            [12] 1029 	dec	sp
      0035ED D0 05            [24] 1030 	pop	ar5
      0035EF D0 06            [24] 1031 	pop	ar6
      0035F1 D0 07            [24] 1032 	pop	ar7
                                   1033 ;	timer.c:107: lcdputstr(min_str);
      0035F3 7C 00            [12] 1034 	mov	r4,#0x00
      0035F5 7B 40            [12] 1035 	mov	r3,#0x40
      0035F7 8F 82            [24] 1036 	mov	dpl,r7
      0035F9 8C 83            [24] 1037 	mov	dph,r4
      0035FB 8B F0            [24] 1038 	mov	b,r3
      0035FD C0 06            [24] 1039 	push	ar6
      0035FF C0 05            [24] 1040 	push	ar5
      003601 12 03 3A         [24] 1041 	lcall	_lcdputstr
                                   1042 ;	timer.c:108: lcdputch(':');
      003604 75 82 3A         [24] 1043 	mov	dpl,#0x3a
      003607 12 03 1E         [24] 1044 	lcall	_lcdputch
      00360A D0 05            [24] 1045 	pop	ar5
      00360C D0 06            [24] 1046 	pop	ar6
                                   1047 ;	timer.c:109: lcdputstr(sec_str);
      00360E 7F 00            [12] 1048 	mov	r7,#0x00
      003610 7C 40            [12] 1049 	mov	r4,#0x40
      003612 8E 82            [24] 1050 	mov	dpl,r6
      003614 8F 83            [24] 1051 	mov	dph,r7
      003616 8C F0            [24] 1052 	mov	b,r4
      003618 C0 05            [24] 1053 	push	ar5
      00361A 12 03 3A         [24] 1054 	lcall	_lcdputstr
                                   1055 ;	timer.c:110: lcdputch('.');
      00361D 75 82 2E         [24] 1056 	mov	dpl,#0x2e
      003620 12 03 1E         [24] 1057 	lcall	_lcdputch
      003623 D0 05            [24] 1058 	pop	ar5
                                   1059 ;	timer.c:111: lcdputstr(ms_str);
      003625 7F 00            [12] 1060 	mov	r7,#0x00
      003627 7E 40            [12] 1061 	mov	r6,#0x40
      003629 8D 82            [24] 1062 	mov	dpl,r5
      00362B 8F 83            [24] 1063 	mov	dph,r7
      00362D 8E F0            [24] 1064 	mov	b,r6
      00362F 12 03 3A         [24] 1065 	lcall	_lcdputstr
                                   1066 ;	timer.c:113: }
      003632 85 08 81         [24] 1067 	mov	sp,_bp
      003635 D0 08            [24] 1068 	pop	_bp
      003637 22               [24] 1069 	ret
                                   1070 ;------------------------------------------------------------
                                   1071 ;Allocation info for local variables in function 'get_fattime'
                                   1072 ;------------------------------------------------------------
                                   1073 ;	timer.c:115: uint32_t get_fattime(void)
                                   1074 ;	-----------------------------------------
                                   1075 ;	 function get_fattime
                                   1076 ;	-----------------------------------------
      003638                       1077 _get_fattime:
                                   1078 ;	timer.c:120: | (((uint32_t)hrs) << 11)
      003638 90 00 33         [24] 1079 	mov	dptr,#_hrs
      00363B E0               [24] 1080 	movx	a,@dptr
      00363C FF               [12] 1081 	mov	r7,a
      00363D E4               [12] 1082 	clr	a
      00363E FD               [12] 1083 	mov	r5,a
      00363F CD               [12] 1084 	xch	a,r5
      003640 C4               [12] 1085 	swap	a
      003641 03               [12] 1086 	rr	a
      003642 54 F8            [12] 1087 	anl	a,#0xf8
      003644 CD               [12] 1088 	xch	a,r5
      003645 C4               [12] 1089 	swap	a
      003646 03               [12] 1090 	rr	a
      003647 CD               [12] 1091 	xch	a,r5
      003648 6D               [12] 1092 	xrl	a,r5
      003649 CD               [12] 1093 	xch	a,r5
      00364A 54 F8            [12] 1094 	anl	a,#0xf8
      00364C CD               [12] 1095 	xch	a,r5
      00364D 6D               [12] 1096 	xrl	a,r5
      00364E FC               [12] 1097 	mov	r4,a
      00364F EF               [12] 1098 	mov	a,r7
      003650 C4               [12] 1099 	swap	a
      003651 03               [12] 1100 	rr	a
      003652 54 07            [12] 1101 	anl	a,#0x07
      003654 4D               [12] 1102 	orl	a,r5
      003655 FD               [12] 1103 	mov	r5,a
      003656 EF               [12] 1104 	mov	a,r7
      003657 C4               [12] 1105 	swap	a
      003658 03               [12] 1106 	rr	a
      003659 54 F8            [12] 1107 	anl	a,#0xf8
      00365B FE               [12] 1108 	mov	r6,a
      00365C 7F 00            [12] 1109 	mov	r7,#0x00
      00365E 43 05 85         [24] 1110 	orl	ar5,#0x85
      003661 43 04 55         [24] 1111 	orl	ar4,#0x55
                                   1112 ;	timer.c:121: | (((uint32_t)mins) << 5)
      003664 90 00 34         [24] 1113 	mov	dptr,#_mins
      003667 E0               [24] 1114 	movx	a,@dptr
      003668 F8               [12] 1115 	mov	r0,a
      003669 E4               [12] 1116 	clr	a
      00366A F9               [12] 1117 	mov	r1,a
      00366B FA               [12] 1118 	mov	r2,a
      00366C C4               [12] 1119 	swap	a
      00366D 23               [12] 1120 	rl	a
      00366E 54 E0            [12] 1121 	anl	a,#0xe0
      003670 CA               [12] 1122 	xch	a,r2
      003671 C4               [12] 1123 	swap	a
      003672 23               [12] 1124 	rl	a
      003673 CA               [12] 1125 	xch	a,r2
      003674 6A               [12] 1126 	xrl	a,r2
      003675 CA               [12] 1127 	xch	a,r2
      003676 54 E0            [12] 1128 	anl	a,#0xe0
      003678 CA               [12] 1129 	xch	a,r2
      003679 6A               [12] 1130 	xrl	a,r2
      00367A FB               [12] 1131 	mov	r3,a
      00367B E9               [12] 1132 	mov	a,r1
      00367C C4               [12] 1133 	swap	a
      00367D 23               [12] 1134 	rl	a
      00367E 54 1F            [12] 1135 	anl	a,#0x1f
      003680 4A               [12] 1136 	orl	a,r2
      003681 FA               [12] 1137 	mov	r2,a
      003682 E9               [12] 1138 	mov	a,r1
      003683 C4               [12] 1139 	swap	a
      003684 23               [12] 1140 	rl	a
      003685 54 E0            [12] 1141 	anl	a,#0xe0
      003687 C8               [12] 1142 	xch	a,r0
      003688 C4               [12] 1143 	swap	a
      003689 23               [12] 1144 	rl	a
      00368A C8               [12] 1145 	xch	a,r0
      00368B 68               [12] 1146 	xrl	a,r0
      00368C C8               [12] 1147 	xch	a,r0
      00368D 54 E0            [12] 1148 	anl	a,#0xe0
      00368F C8               [12] 1149 	xch	a,r0
      003690 68               [12] 1150 	xrl	a,r0
      003691 F9               [12] 1151 	mov	r1,a
      003692 E8               [12] 1152 	mov	a,r0
      003693 42 07            [12] 1153 	orl	ar7,a
      003695 E9               [12] 1154 	mov	a,r1
      003696 42 06            [12] 1155 	orl	ar6,a
      003698 EA               [12] 1156 	mov	a,r2
      003699 42 05            [12] 1157 	orl	ar5,a
      00369B EB               [12] 1158 	mov	a,r3
      00369C 42 04            [12] 1159 	orl	ar4,a
                                   1160 ;	timer.c:122: | (((uint32_t)seconds) >> 1));
      00369E 90 00 35         [24] 1161 	mov	dptr,#_seconds
      0036A1 E0               [24] 1162 	movx	a,@dptr
      0036A2 F8               [12] 1163 	mov	r0,a
      0036A3 E4               [12] 1164 	clr	a
      0036A4 F9               [12] 1165 	mov	r1,a
      0036A5 FA               [12] 1166 	mov	r2,a
      0036A6 C3               [12] 1167 	clr	c
      0036A7 13               [12] 1168 	rrc	a
      0036A8 FB               [12] 1169 	mov	r3,a
      0036A9 EA               [12] 1170 	mov	a,r2
      0036AA 13               [12] 1171 	rrc	a
      0036AB FA               [12] 1172 	mov	r2,a
      0036AC E9               [12] 1173 	mov	a,r1
      0036AD 13               [12] 1174 	rrc	a
      0036AE F9               [12] 1175 	mov	r1,a
      0036AF E8               [12] 1176 	mov	a,r0
      0036B0 13               [12] 1177 	rrc	a
      0036B1 42 07            [12] 1178 	orl	ar7,a
      0036B3 E9               [12] 1179 	mov	a,r1
      0036B4 42 06            [12] 1180 	orl	ar6,a
      0036B6 EA               [12] 1181 	mov	a,r2
      0036B7 42 05            [12] 1182 	orl	ar5,a
      0036B9 EB               [12] 1183 	mov	a,r3
      0036BA 42 04            [12] 1184 	orl	ar4,a
      0036BC 8F 82            [24] 1185 	mov	dpl,r7
      0036BE 8E 83            [24] 1186 	mov	dph,r6
      0036C0 8D F0            [24] 1187 	mov	b,r5
      0036C2 EC               [12] 1188 	mov	a,r4
                                   1189 ;	timer.c:123: }
      0036C3 22               [24] 1190 	ret
                                   1191 ;------------------------------------------------------------
                                   1192 ;Allocation info for local variables in function 'Timer0_IRQHandler'
                                   1193 ;------------------------------------------------------------
                                   1194 ;min_str                   Allocated to stack - _bp +8
                                   1195 ;sec_str                   Allocated to stack - _bp +4
                                   1196 ;ms_str                    Allocated to stack - _bp +12
                                   1197 ;sloc0                     Allocated to stack - _bp +1
                                   1198 ;------------------------------------------------------------
                                   1199 ;	timer.c:130: void Timer0_IRQHandler(void) __interrupt(1)
                                   1200 ;	-----------------------------------------
                                   1201 ;	 function Timer0_IRQHandler
                                   1202 ;	-----------------------------------------
      0036C4                       1203 _Timer0_IRQHandler:
      0036C4 C0 20            [24] 1204 	push	bits
      0036C6 C0 E0            [24] 1205 	push	acc
      0036C8 C0 F0            [24] 1206 	push	b
      0036CA C0 82            [24] 1207 	push	dpl
      0036CC C0 83            [24] 1208 	push	dph
      0036CE C0 07            [24] 1209 	push	(0+7)
      0036D0 C0 06            [24] 1210 	push	(0+6)
      0036D2 C0 05            [24] 1211 	push	(0+5)
      0036D4 C0 04            [24] 1212 	push	(0+4)
      0036D6 C0 03            [24] 1213 	push	(0+3)
      0036D8 C0 02            [24] 1214 	push	(0+2)
      0036DA C0 01            [24] 1215 	push	(0+1)
      0036DC C0 00            [24] 1216 	push	(0+0)
      0036DE C0 D0            [24] 1217 	push	psw
      0036E0 75 D0 00         [24] 1218 	mov	psw,#0x00
      0036E3 C0 08            [24] 1219 	push	_bp
      0036E5 E5 81            [12] 1220 	mov	a,sp
      0036E7 F5 08            [12] 1221 	mov	_bp,a
      0036E9 24 0F            [12] 1222 	add	a,#0x0f
      0036EB F5 81            [12] 1223 	mov	sp,a
                                   1224 ;	timer.c:132: timer0_int_cnt++;
      0036ED 90 00 37         [24] 1225 	mov	dptr,#_timer0_int_cnt
      0036F0 E0               [24] 1226 	movx	a,@dptr
      0036F1 24 01            [12] 1227 	add	a,#0x01
      0036F3 F0               [24] 1228 	movx	@dptr,a
                                   1229 ;	timer.c:135: if((timer0_int_cnt & 0x1) == 0){
      0036F4 E0               [24] 1230 	movx	a,@dptr
      0036F5 30 E0 03         [24] 1231 	jnb	acc.0,00128$
      0036F8 02 38 37         [24] 1232 	ljmp	00110$
      0036FB                       1233 00128$:
                                   1234 ;	timer.c:136: timer0_int_cnt = 0;
      0036FB 90 00 37         [24] 1235 	mov	dptr,#_timer0_int_cnt
      0036FE E4               [12] 1236 	clr	a
      0036FF F0               [24] 1237 	movx	@dptr,a
                                   1238 ;	timer.c:139: cursor_pos = get_cursor_pos();
      003700 12 04 1F         [24] 1239 	lcall	_get_cursor_pos
      003703 E5 82            [12] 1240 	mov	a,dpl
      003705 90 00 38         [24] 1241 	mov	dptr,#_cursor_pos
      003708 F0               [24] 1242 	movx	@dptr,a
                                   1243 ;	timer.c:80: ms++;
      003709 90 00 36         [24] 1244 	mov	dptr,#_ms
      00370C E0               [24] 1245 	movx	a,@dptr
      00370D 24 01            [12] 1246 	add	a,#0x01
      00370F F0               [24] 1247 	movx	@dptr,a
                                   1248 ;	timer.c:82: if(ms >= 10){
      003710 E0               [24] 1249 	movx	a,@dptr
      003711 FF               [12] 1250 	mov	r7,a
      003712 BF 0A 00         [24] 1251 	cjne	r7,#0x0a,00129$
      003715                       1252 00129$:
      003715 40 0C            [24] 1253 	jc	00104$
                                   1254 ;	timer.c:83: ms = 0;
      003717 90 00 36         [24] 1255 	mov	dptr,#_ms
      00371A E4               [12] 1256 	clr	a
      00371B F0               [24] 1257 	movx	@dptr,a
                                   1258 ;	timer.c:84: seconds++;
      00371C 90 00 35         [24] 1259 	mov	dptr,#_seconds
      00371F E0               [24] 1260 	movx	a,@dptr
      003720 24 01            [12] 1261 	add	a,#0x01
      003722 F0               [24] 1262 	movx	@dptr,a
      003723                       1263 00104$:
                                   1264 ;	timer.c:86: if(seconds >= 60){
      003723 90 00 35         [24] 1265 	mov	dptr,#_seconds
      003726 E0               [24] 1266 	movx	a,@dptr
      003727 FF               [12] 1267 	mov	r7,a
      003728 BF 3C 00         [24] 1268 	cjne	r7,#0x3c,00131$
      00372B                       1269 00131$:
      00372B 40 0C            [24] 1270 	jc	00106$
                                   1271 ;	timer.c:87: mins++;
      00372D 90 00 34         [24] 1272 	mov	dptr,#_mins
      003730 E0               [24] 1273 	movx	a,@dptr
      003731 24 01            [12] 1274 	add	a,#0x01
      003733 F0               [24] 1275 	movx	@dptr,a
                                   1276 ;	timer.c:88: seconds = 0;
      003734 90 00 35         [24] 1277 	mov	dptr,#_seconds
      003737 E4               [12] 1278 	clr	a
      003738 F0               [24] 1279 	movx	@dptr,a
      003739                       1280 00106$:
                                   1281 ;	timer.c:91: if(mins >= 60){
      003739 90 00 34         [24] 1282 	mov	dptr,#_mins
      00373C E0               [24] 1283 	movx	a,@dptr
      00373D FF               [12] 1284 	mov	r7,a
      00373E BF 3C 00         [24] 1285 	cjne	r7,#0x3c,00133$
      003741                       1286 00133$:
      003741 40 0C            [24] 1287 	jc	00108$
                                   1288 ;	timer.c:92: hrs++;
      003743 90 00 33         [24] 1289 	mov	dptr,#_hrs
      003746 E0               [24] 1290 	movx	a,@dptr
      003747 24 01            [12] 1291 	add	a,#0x01
      003749 F0               [24] 1292 	movx	@dptr,a
                                   1293 ;	timer.c:93: mins = 0;
      00374A 90 00 34         [24] 1294 	mov	dptr,#_mins
      00374D E4               [12] 1295 	clr	a
      00374E F0               [24] 1296 	movx	@dptr,a
      00374F                       1297 00108$:
                                   1298 ;	timer.c:100: itoa(mins, min_str);
      00374F E5 08            [12] 1299 	mov	a,_bp
      003751 24 08            [12] 1300 	add	a,#0x08
      003753 FF               [12] 1301 	mov	r7,a
      003754 FC               [12] 1302 	mov	r4,a
      003755 7D 00            [12] 1303 	mov	r5,#0x00
      003757 7E 40            [12] 1304 	mov	r6,#0x40
      003759 90 00 34         [24] 1305 	mov	dptr,#_mins
      00375C E0               [24] 1306 	movx	a,@dptr
      00375D FB               [12] 1307 	mov	r3,a
      00375E 7A 00            [12] 1308 	mov	r2,#0x00
      003760 C0 07            [24] 1309 	push	ar7
      003762 C0 04            [24] 1310 	push	ar4
      003764 C0 05            [24] 1311 	push	ar5
      003766 C0 06            [24] 1312 	push	ar6
      003768 8B 82            [24] 1313 	mov	dpl,r3
      00376A 8A 83            [24] 1314 	mov	dph,r2
      00376C 12 33 AA         [24] 1315 	lcall	_itoa
      00376F 15 81            [12] 1316 	dec	sp
      003771 15 81            [12] 1317 	dec	sp
      003773 15 81            [12] 1318 	dec	sp
                                   1319 ;	timer.c:101: itoa(seconds, sec_str);
      003775 E5 08            [12] 1320 	mov	a,_bp
      003777 24 04            [12] 1321 	add	a,#0x04
      003779 FE               [12] 1322 	mov	r6,a
      00377A A8 08            [24] 1323 	mov	r0,_bp
      00377C 08               [12] 1324 	inc	r0
      00377D A6 06            [24] 1325 	mov	@r0,ar6
      00377F 08               [12] 1326 	inc	r0
      003780 76 00            [12] 1327 	mov	@r0,#0x00
      003782 08               [12] 1328 	inc	r0
      003783 76 40            [12] 1329 	mov	@r0,#0x40
      003785 90 00 35         [24] 1330 	mov	dptr,#_seconds
      003788 E0               [24] 1331 	movx	a,@dptr
      003789 FA               [12] 1332 	mov	r2,a
      00378A 7D 00            [12] 1333 	mov	r5,#0x00
      00378C C0 06            [24] 1334 	push	ar6
      00378E A8 08            [24] 1335 	mov	r0,_bp
      003790 08               [12] 1336 	inc	r0
      003791 E6               [12] 1337 	mov	a,@r0
      003792 C0 E0            [24] 1338 	push	acc
      003794 08               [12] 1339 	inc	r0
      003795 E6               [12] 1340 	mov	a,@r0
      003796 C0 E0            [24] 1341 	push	acc
      003798 08               [12] 1342 	inc	r0
      003799 E6               [12] 1343 	mov	a,@r0
      00379A C0 E0            [24] 1344 	push	acc
      00379C 8A 82            [24] 1345 	mov	dpl,r2
      00379E 8D 83            [24] 1346 	mov	dph,r5
      0037A0 12 33 AA         [24] 1347 	lcall	_itoa
      0037A3 15 81            [12] 1348 	dec	sp
      0037A5 15 81            [12] 1349 	dec	sp
      0037A7 15 81            [12] 1350 	dec	sp
                                   1351 ;	timer.c:102: itoa(ms, ms_str);
      0037A9 E5 08            [12] 1352 	mov	a,_bp
      0037AB 24 0C            [12] 1353 	add	a,#0x0c
      0037AD FD               [12] 1354 	mov	r5,a
      0037AE A8 08            [24] 1355 	mov	r0,_bp
      0037B0 08               [12] 1356 	inc	r0
      0037B1 A6 05            [24] 1357 	mov	@r0,ar5
      0037B3 08               [12] 1358 	inc	r0
      0037B4 76 00            [12] 1359 	mov	@r0,#0x00
      0037B6 08               [12] 1360 	inc	r0
      0037B7 76 40            [12] 1361 	mov	@r0,#0x40
      0037B9 90 00 36         [24] 1362 	mov	dptr,#_ms
      0037BC E0               [24] 1363 	movx	a,@dptr
      0037BD FC               [12] 1364 	mov	r4,a
      0037BE 7B 00            [12] 1365 	mov	r3,#0x00
      0037C0 C0 05            [24] 1366 	push	ar5
      0037C2 A8 08            [24] 1367 	mov	r0,_bp
      0037C4 08               [12] 1368 	inc	r0
      0037C5 E6               [12] 1369 	mov	a,@r0
      0037C6 C0 E0            [24] 1370 	push	acc
      0037C8 08               [12] 1371 	inc	r0
      0037C9 E6               [12] 1372 	mov	a,@r0
      0037CA C0 E0            [24] 1373 	push	acc
      0037CC 08               [12] 1374 	inc	r0
      0037CD E6               [12] 1375 	mov	a,@r0
      0037CE C0 E0            [24] 1376 	push	acc
      0037D0 8C 82            [24] 1377 	mov	dpl,r4
      0037D2 8B 83            [24] 1378 	mov	dph,r3
      0037D4 12 33 AA         [24] 1379 	lcall	_itoa
      0037D7 15 81            [12] 1380 	dec	sp
      0037D9 15 81            [12] 1381 	dec	sp
      0037DB 15 81            [12] 1382 	dec	sp
                                   1383 ;	timer.c:105: lcdgotoxy(3,10);
      0037DD 74 0A            [12] 1384 	mov	a,#0x0a
      0037DF C0 E0            [24] 1385 	push	acc
      0037E1 75 82 03         [24] 1386 	mov	dpl,#0x03
      0037E4 12 02 C4         [24] 1387 	lcall	_lcdgotoxy
      0037E7 15 81            [12] 1388 	dec	sp
      0037E9 D0 05            [24] 1389 	pop	ar5
      0037EB D0 06            [24] 1390 	pop	ar6
      0037ED D0 07            [24] 1391 	pop	ar7
                                   1392 ;	timer.c:107: lcdputstr(min_str);
      0037EF 7C 00            [12] 1393 	mov	r4,#0x00
      0037F1 7B 40            [12] 1394 	mov	r3,#0x40
      0037F3 8F 82            [24] 1395 	mov	dpl,r7
      0037F5 8C 83            [24] 1396 	mov	dph,r4
      0037F7 8B F0            [24] 1397 	mov	b,r3
      0037F9 C0 06            [24] 1398 	push	ar6
      0037FB C0 05            [24] 1399 	push	ar5
      0037FD 12 03 3A         [24] 1400 	lcall	_lcdputstr
                                   1401 ;	timer.c:108: lcdputch(':');
      003800 75 82 3A         [24] 1402 	mov	dpl,#0x3a
      003803 12 03 1E         [24] 1403 	lcall	_lcdputch
      003806 D0 05            [24] 1404 	pop	ar5
      003808 D0 06            [24] 1405 	pop	ar6
                                   1406 ;	timer.c:109: lcdputstr(sec_str);
      00380A 7F 00            [12] 1407 	mov	r7,#0x00
      00380C 7C 40            [12] 1408 	mov	r4,#0x40
      00380E 8E 82            [24] 1409 	mov	dpl,r6
      003810 8F 83            [24] 1410 	mov	dph,r7
      003812 8C F0            [24] 1411 	mov	b,r4
      003814 C0 05            [24] 1412 	push	ar5
      003816 12 03 3A         [24] 1413 	lcall	_lcdputstr
                                   1414 ;	timer.c:110: lcdputch('.');
      003819 75 82 2E         [24] 1415 	mov	dpl,#0x2e
      00381C 12 03 1E         [24] 1416 	lcall	_lcdputch
      00381F D0 05            [24] 1417 	pop	ar5
                                   1418 ;	timer.c:111: lcdputstr(ms_str);
      003821 7F 00            [12] 1419 	mov	r7,#0x00
      003823 7E 40            [12] 1420 	mov	r6,#0x40
      003825 8D 82            [24] 1421 	mov	dpl,r5
      003827 8F 83            [24] 1422 	mov	dph,r7
      003829 8E F0            [24] 1423 	mov	b,r6
      00382B 12 03 3A         [24] 1424 	lcall	_lcdputstr
                                   1425 ;	timer.c:142: lcdgotoaddr(cursor_pos);
      00382E 90 00 38         [24] 1426 	mov	dptr,#_cursor_pos
      003831 E0               [24] 1427 	movx	a,@dptr
      003832 F5 82            [12] 1428 	mov	dpl,a
      003834 12 02 A5         [24] 1429 	lcall	_lcdgotoaddr
      003837                       1430 00110$:
                                   1431 ;	timer.c:144: }
      003837 85 08 81         [24] 1432 	mov	sp,_bp
      00383A D0 08            [24] 1433 	pop	_bp
      00383C D0 D0            [24] 1434 	pop	psw
      00383E D0 00            [24] 1435 	pop	(0+0)
      003840 D0 01            [24] 1436 	pop	(0+1)
      003842 D0 02            [24] 1437 	pop	(0+2)
      003844 D0 03            [24] 1438 	pop	(0+3)
      003846 D0 04            [24] 1439 	pop	(0+4)
      003848 D0 05            [24] 1440 	pop	(0+5)
      00384A D0 06            [24] 1441 	pop	(0+6)
      00384C D0 07            [24] 1442 	pop	(0+7)
      00384E D0 83            [24] 1443 	pop	dph
      003850 D0 82            [24] 1444 	pop	dpl
      003852 D0 F0            [24] 1445 	pop	b
      003854 D0 E0            [24] 1446 	pop	acc
      003856 D0 20            [24] 1447 	pop	bits
      003858 32               [24] 1448 	reti
                                   1449 	.area CSEG    (CODE)
                                   1450 	.area CONST   (CODE)
                                   1451 	.area XINIT   (CODE)
      003F94                       1452 __xinit__hrs:
      003F94 00                    1453 	.db #0x00	; 0
      003F95                       1454 __xinit__mins:
      003F95 00                    1455 	.db #0x00	; 0
      003F96                       1456 __xinit__seconds:
      003F96 00                    1457 	.db #0x00	; 0
      003F97                       1458 __xinit__ms:
      003F97 00                    1459 	.db #0x00	; 0
      003F98                       1460 __xinit__timer0_int_cnt:
      003F98 00                    1461 	.db #0x00	; 0
      003F99                       1462 __xinit__cursor_pos:
      003F99 00                    1463 	.db #0x00	; 0
                                   1464 	.area CABS    (ABS,CODE)
