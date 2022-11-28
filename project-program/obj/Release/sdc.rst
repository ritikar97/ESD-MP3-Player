                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module sdc
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _spi_enable_cs
                                     12 	.globl _spi_disable_cs
                                     13 	.globl _spi_byte
                                     14 	.globl _max_spi_clock_freq
                                     15 	.globl _TF1
                                     16 	.globl _TR1
                                     17 	.globl _TF0
                                     18 	.globl _TR0
                                     19 	.globl _IE1
                                     20 	.globl _IT1
                                     21 	.globl _IE0
                                     22 	.globl _IT0
                                     23 	.globl _SM0
                                     24 	.globl _SM1
                                     25 	.globl _SM2
                                     26 	.globl _REN
                                     27 	.globl _TB8
                                     28 	.globl _RB8
                                     29 	.globl _TI
                                     30 	.globl _RI
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _RD
                                     40 	.globl _WR
                                     41 	.globl _T1
                                     42 	.globl _T0
                                     43 	.globl _INT1
                                     44 	.globl _INT0
                                     45 	.globl _TXD0
                                     46 	.globl _TXD
                                     47 	.globl _RXD0
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _P0_7
                                     74 	.globl _P0_6
                                     75 	.globl _P0_5
                                     76 	.globl _P0_4
                                     77 	.globl _P0_3
                                     78 	.globl _P0_2
                                     79 	.globl _P0_1
                                     80 	.globl _P0_0
                                     81 	.globl _PS
                                     82 	.globl _PT1
                                     83 	.globl _PX1
                                     84 	.globl _PT0
                                     85 	.globl _PX0
                                     86 	.globl _EA
                                     87 	.globl _ES
                                     88 	.globl _ET1
                                     89 	.globl _EX1
                                     90 	.globl _ET0
                                     91 	.globl _EX0
                                     92 	.globl _BREG_F7
                                     93 	.globl _BREG_F6
                                     94 	.globl _BREG_F5
                                     95 	.globl _BREG_F4
                                     96 	.globl _BREG_F3
                                     97 	.globl _BREG_F2
                                     98 	.globl _BREG_F1
                                     99 	.globl _BREG_F0
                                    100 	.globl _P5_7
                                    101 	.globl _P5_6
                                    102 	.globl _P5_5
                                    103 	.globl _P5_4
                                    104 	.globl _P5_3
                                    105 	.globl _P5_2
                                    106 	.globl _P5_1
                                    107 	.globl _P5_0
                                    108 	.globl _P4_7
                                    109 	.globl _P4_6
                                    110 	.globl _P4_5
                                    111 	.globl _P4_4
                                    112 	.globl _P4_3
                                    113 	.globl _P4_2
                                    114 	.globl _P4_1
                                    115 	.globl _P4_0
                                    116 	.globl _PX0L
                                    117 	.globl _PT0L
                                    118 	.globl _PX1L
                                    119 	.globl _PT1L
                                    120 	.globl _PSL
                                    121 	.globl _PT2L
                                    122 	.globl _PPCL
                                    123 	.globl _EC
                                    124 	.globl _CCF0
                                    125 	.globl _CCF1
                                    126 	.globl _CCF2
                                    127 	.globl _CCF3
                                    128 	.globl _CCF4
                                    129 	.globl _CR
                                    130 	.globl _CF
                                    131 	.globl _TF2
                                    132 	.globl _EXF2
                                    133 	.globl _RCLK
                                    134 	.globl _TCLK
                                    135 	.globl _EXEN2
                                    136 	.globl _TR2
                                    137 	.globl _C_T2
                                    138 	.globl _CP_RL2
                                    139 	.globl _T2CON_7
                                    140 	.globl _T2CON_6
                                    141 	.globl _T2CON_5
                                    142 	.globl _T2CON_4
                                    143 	.globl _T2CON_3
                                    144 	.globl _T2CON_2
                                    145 	.globl _T2CON_1
                                    146 	.globl _T2CON_0
                                    147 	.globl _PT2
                                    148 	.globl _ET2
                                    149 	.globl _TMOD
                                    150 	.globl _TL1
                                    151 	.globl _TL0
                                    152 	.globl _TH1
                                    153 	.globl _TH0
                                    154 	.globl _TCON
                                    155 	.globl _SP
                                    156 	.globl _SCON
                                    157 	.globl _SBUF0
                                    158 	.globl _SBUF
                                    159 	.globl _PSW
                                    160 	.globl _PCON
                                    161 	.globl _P3
                                    162 	.globl _P2
                                    163 	.globl _P1
                                    164 	.globl _P0
                                    165 	.globl _IP
                                    166 	.globl _IE
                                    167 	.globl _DP0L
                                    168 	.globl _DPL
                                    169 	.globl _DP0H
                                    170 	.globl _DPH
                                    171 	.globl _B
                                    172 	.globl _ACC
                                    173 	.globl _EECON
                                    174 	.globl _KBF
                                    175 	.globl _KBE
                                    176 	.globl _KBLS
                                    177 	.globl _BRL
                                    178 	.globl _BDRCON
                                    179 	.globl _T2MOD
                                    180 	.globl _SPDAT
                                    181 	.globl _SPSTA
                                    182 	.globl _SPCON
                                    183 	.globl _SADEN
                                    184 	.globl _SADDR
                                    185 	.globl _WDTPRG
                                    186 	.globl _WDTRST
                                    187 	.globl _P5
                                    188 	.globl _P4
                                    189 	.globl _IPH1
                                    190 	.globl _IPL1
                                    191 	.globl _IPH0
                                    192 	.globl _IPL0
                                    193 	.globl _IEN1
                                    194 	.globl _IEN0
                                    195 	.globl _CMOD
                                    196 	.globl _CL
                                    197 	.globl _CH
                                    198 	.globl _CCON
                                    199 	.globl _CCAPM4
                                    200 	.globl _CCAPM3
                                    201 	.globl _CCAPM2
                                    202 	.globl _CCAPM1
                                    203 	.globl _CCAPM0
                                    204 	.globl _CCAP4L
                                    205 	.globl _CCAP3L
                                    206 	.globl _CCAP2L
                                    207 	.globl _CCAP1L
                                    208 	.globl _CCAP0L
                                    209 	.globl _CCAP4H
                                    210 	.globl _CCAP3H
                                    211 	.globl _CCAP2H
                                    212 	.globl _CCAP1H
                                    213 	.globl _CCAP0H
                                    214 	.globl _CKCON1
                                    215 	.globl _CKCON0
                                    216 	.globl _CKRL
                                    217 	.globl _AUXR1
                                    218 	.globl _AUXR
                                    219 	.globl _TH2
                                    220 	.globl _TL2
                                    221 	.globl _RCAP2H
                                    222 	.globl _RCAP2L
                                    223 	.globl _T2CON
                                    224 	.globl _card_type
                                    225 	.globl _get_card_type
                                    226 	.globl _sd_init
                                    227 	.globl _sd_read_sector
                                    228 	.globl _sd_write_sector
                                    229 	.globl _sd_wait_for_ready
                                    230 ;--------------------------------------------------------
                                    231 ; special function registers
                                    232 ;--------------------------------------------------------
                                    233 	.area RSEG    (ABS,DATA)
      000000                        234 	.org 0x0000
                           0000C8   235 _T2CON	=	0x00c8
                           0000CA   236 _RCAP2L	=	0x00ca
                           0000CB   237 _RCAP2H	=	0x00cb
                           0000CC   238 _TL2	=	0x00cc
                           0000CD   239 _TH2	=	0x00cd
                           00008E   240 _AUXR	=	0x008e
                           0000A2   241 _AUXR1	=	0x00a2
                           000097   242 _CKRL	=	0x0097
                           00008F   243 _CKCON0	=	0x008f
                           0000AF   244 _CKCON1	=	0x00af
                           0000FA   245 _CCAP0H	=	0x00fa
                           0000FB   246 _CCAP1H	=	0x00fb
                           0000FC   247 _CCAP2H	=	0x00fc
                           0000FD   248 _CCAP3H	=	0x00fd
                           0000FE   249 _CCAP4H	=	0x00fe
                           0000EA   250 _CCAP0L	=	0x00ea
                           0000EB   251 _CCAP1L	=	0x00eb
                           0000EC   252 _CCAP2L	=	0x00ec
                           0000ED   253 _CCAP3L	=	0x00ed
                           0000EE   254 _CCAP4L	=	0x00ee
                           0000DA   255 _CCAPM0	=	0x00da
                           0000DB   256 _CCAPM1	=	0x00db
                           0000DC   257 _CCAPM2	=	0x00dc
                           0000DD   258 _CCAPM3	=	0x00dd
                           0000DE   259 _CCAPM4	=	0x00de
                           0000D8   260 _CCON	=	0x00d8
                           0000F9   261 _CH	=	0x00f9
                           0000E9   262 _CL	=	0x00e9
                           0000D9   263 _CMOD	=	0x00d9
                           0000A8   264 _IEN0	=	0x00a8
                           0000B1   265 _IEN1	=	0x00b1
                           0000B8   266 _IPL0	=	0x00b8
                           0000B7   267 _IPH0	=	0x00b7
                           0000B2   268 _IPL1	=	0x00b2
                           0000B3   269 _IPH1	=	0x00b3
                           0000C0   270 _P4	=	0x00c0
                           0000E8   271 _P5	=	0x00e8
                           0000A6   272 _WDTRST	=	0x00a6
                           0000A7   273 _WDTPRG	=	0x00a7
                           0000A9   274 _SADDR	=	0x00a9
                           0000B9   275 _SADEN	=	0x00b9
                           0000C3   276 _SPCON	=	0x00c3
                           0000C4   277 _SPSTA	=	0x00c4
                           0000C5   278 _SPDAT	=	0x00c5
                           0000C9   279 _T2MOD	=	0x00c9
                           00009B   280 _BDRCON	=	0x009b
                           00009A   281 _BRL	=	0x009a
                           00009C   282 _KBLS	=	0x009c
                           00009D   283 _KBE	=	0x009d
                           00009E   284 _KBF	=	0x009e
                           0000D2   285 _EECON	=	0x00d2
                           0000E0   286 _ACC	=	0x00e0
                           0000F0   287 _B	=	0x00f0
                           000083   288 _DPH	=	0x0083
                           000083   289 _DP0H	=	0x0083
                           000082   290 _DPL	=	0x0082
                           000082   291 _DP0L	=	0x0082
                           0000A8   292 _IE	=	0x00a8
                           0000B8   293 _IP	=	0x00b8
                           000080   294 _P0	=	0x0080
                           000090   295 _P1	=	0x0090
                           0000A0   296 _P2	=	0x00a0
                           0000B0   297 _P3	=	0x00b0
                           000087   298 _PCON	=	0x0087
                           0000D0   299 _PSW	=	0x00d0
                           000099   300 _SBUF	=	0x0099
                           000099   301 _SBUF0	=	0x0099
                           000098   302 _SCON	=	0x0098
                           000081   303 _SP	=	0x0081
                           000088   304 _TCON	=	0x0088
                           00008C   305 _TH0	=	0x008c
                           00008D   306 _TH1	=	0x008d
                           00008A   307 _TL0	=	0x008a
                           00008B   308 _TL1	=	0x008b
                           000089   309 _TMOD	=	0x0089
                                    310 ;--------------------------------------------------------
                                    311 ; special function bits
                                    312 ;--------------------------------------------------------
                                    313 	.area RSEG    (ABS,DATA)
      000000                        314 	.org 0x0000
                           0000AD   315 _ET2	=	0x00ad
                           0000BD   316 _PT2	=	0x00bd
                           0000C8   317 _T2CON_0	=	0x00c8
                           0000C9   318 _T2CON_1	=	0x00c9
                           0000CA   319 _T2CON_2	=	0x00ca
                           0000CB   320 _T2CON_3	=	0x00cb
                           0000CC   321 _T2CON_4	=	0x00cc
                           0000CD   322 _T2CON_5	=	0x00cd
                           0000CE   323 _T2CON_6	=	0x00ce
                           0000CF   324 _T2CON_7	=	0x00cf
                           0000C8   325 _CP_RL2	=	0x00c8
                           0000C9   326 _C_T2	=	0x00c9
                           0000CA   327 _TR2	=	0x00ca
                           0000CB   328 _EXEN2	=	0x00cb
                           0000CC   329 _TCLK	=	0x00cc
                           0000CD   330 _RCLK	=	0x00cd
                           0000CE   331 _EXF2	=	0x00ce
                           0000CF   332 _TF2	=	0x00cf
                           0000DF   333 _CF	=	0x00df
                           0000DE   334 _CR	=	0x00de
                           0000DC   335 _CCF4	=	0x00dc
                           0000DB   336 _CCF3	=	0x00db
                           0000DA   337 _CCF2	=	0x00da
                           0000D9   338 _CCF1	=	0x00d9
                           0000D8   339 _CCF0	=	0x00d8
                           0000AE   340 _EC	=	0x00ae
                           0000BE   341 _PPCL	=	0x00be
                           0000BD   342 _PT2L	=	0x00bd
                           0000BC   343 _PSL	=	0x00bc
                           0000BB   344 _PT1L	=	0x00bb
                           0000BA   345 _PX1L	=	0x00ba
                           0000B9   346 _PT0L	=	0x00b9
                           0000B8   347 _PX0L	=	0x00b8
                           0000C0   348 _P4_0	=	0x00c0
                           0000C1   349 _P4_1	=	0x00c1
                           0000C2   350 _P4_2	=	0x00c2
                           0000C3   351 _P4_3	=	0x00c3
                           0000C4   352 _P4_4	=	0x00c4
                           0000C5   353 _P4_5	=	0x00c5
                           0000C6   354 _P4_6	=	0x00c6
                           0000C7   355 _P4_7	=	0x00c7
                           0000E8   356 _P5_0	=	0x00e8
                           0000E9   357 _P5_1	=	0x00e9
                           0000EA   358 _P5_2	=	0x00ea
                           0000EB   359 _P5_3	=	0x00eb
                           0000EC   360 _P5_4	=	0x00ec
                           0000ED   361 _P5_5	=	0x00ed
                           0000EE   362 _P5_6	=	0x00ee
                           0000EF   363 _P5_7	=	0x00ef
                           0000F0   364 _BREG_F0	=	0x00f0
                           0000F1   365 _BREG_F1	=	0x00f1
                           0000F2   366 _BREG_F2	=	0x00f2
                           0000F3   367 _BREG_F3	=	0x00f3
                           0000F4   368 _BREG_F4	=	0x00f4
                           0000F5   369 _BREG_F5	=	0x00f5
                           0000F6   370 _BREG_F6	=	0x00f6
                           0000F7   371 _BREG_F7	=	0x00f7
                           0000A8   372 _EX0	=	0x00a8
                           0000A9   373 _ET0	=	0x00a9
                           0000AA   374 _EX1	=	0x00aa
                           0000AB   375 _ET1	=	0x00ab
                           0000AC   376 _ES	=	0x00ac
                           0000AF   377 _EA	=	0x00af
                           0000B8   378 _PX0	=	0x00b8
                           0000B9   379 _PT0	=	0x00b9
                           0000BA   380 _PX1	=	0x00ba
                           0000BB   381 _PT1	=	0x00bb
                           0000BC   382 _PS	=	0x00bc
                           000080   383 _P0_0	=	0x0080
                           000081   384 _P0_1	=	0x0081
                           000082   385 _P0_2	=	0x0082
                           000083   386 _P0_3	=	0x0083
                           000084   387 _P0_4	=	0x0084
                           000085   388 _P0_5	=	0x0085
                           000086   389 _P0_6	=	0x0086
                           000087   390 _P0_7	=	0x0087
                           000090   391 _P1_0	=	0x0090
                           000091   392 _P1_1	=	0x0091
                           000092   393 _P1_2	=	0x0092
                           000093   394 _P1_3	=	0x0093
                           000094   395 _P1_4	=	0x0094
                           000095   396 _P1_5	=	0x0095
                           000096   397 _P1_6	=	0x0096
                           000097   398 _P1_7	=	0x0097
                           0000A0   399 _P2_0	=	0x00a0
                           0000A1   400 _P2_1	=	0x00a1
                           0000A2   401 _P2_2	=	0x00a2
                           0000A3   402 _P2_3	=	0x00a3
                           0000A4   403 _P2_4	=	0x00a4
                           0000A5   404 _P2_5	=	0x00a5
                           0000A6   405 _P2_6	=	0x00a6
                           0000A7   406 _P2_7	=	0x00a7
                           0000B0   407 _P3_0	=	0x00b0
                           0000B1   408 _P3_1	=	0x00b1
                           0000B2   409 _P3_2	=	0x00b2
                           0000B3   410 _P3_3	=	0x00b3
                           0000B4   411 _P3_4	=	0x00b4
                           0000B5   412 _P3_5	=	0x00b5
                           0000B6   413 _P3_6	=	0x00b6
                           0000B7   414 _P3_7	=	0x00b7
                           0000B0   415 _RXD	=	0x00b0
                           0000B0   416 _RXD0	=	0x00b0
                           0000B1   417 _TXD	=	0x00b1
                           0000B1   418 _TXD0	=	0x00b1
                           0000B2   419 _INT0	=	0x00b2
                           0000B3   420 _INT1	=	0x00b3
                           0000B4   421 _T0	=	0x00b4
                           0000B5   422 _T1	=	0x00b5
                           0000B6   423 _WR	=	0x00b6
                           0000B7   424 _RD	=	0x00b7
                           0000D0   425 _P	=	0x00d0
                           0000D1   426 _F1	=	0x00d1
                           0000D2   427 _OV	=	0x00d2
                           0000D3   428 _RS0	=	0x00d3
                           0000D4   429 _RS1	=	0x00d4
                           0000D5   430 _F0	=	0x00d5
                           0000D6   431 _AC	=	0x00d6
                           0000D7   432 _CY	=	0x00d7
                           000098   433 _RI	=	0x0098
                           000099   434 _TI	=	0x0099
                           00009A   435 _RB8	=	0x009a
                           00009B   436 _TB8	=	0x009b
                           00009C   437 _REN	=	0x009c
                           00009D   438 _SM2	=	0x009d
                           00009E   439 _SM1	=	0x009e
                           00009F   440 _SM0	=	0x009f
                           000088   441 _IT0	=	0x0088
                           000089   442 _IE0	=	0x0089
                           00008A   443 _IT1	=	0x008a
                           00008B   444 _IE1	=	0x008b
                           00008C   445 _TR0	=	0x008c
                           00008D   446 _TF0	=	0x008d
                           00008E   447 _TR1	=	0x008e
                           00008F   448 _TF1	=	0x008f
                                    449 ;--------------------------------------------------------
                                    450 ; overlayable register banks
                                    451 ;--------------------------------------------------------
                                    452 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        453 	.ds 8
                                    454 ;--------------------------------------------------------
                                    455 ; internal ram data
                                    456 ;--------------------------------------------------------
                                    457 	.area DSEG    (DATA)
                                    458 ;--------------------------------------------------------
                                    459 ; overlayable items in internal ram
                                    460 ;--------------------------------------------------------
                                    461 ;--------------------------------------------------------
                                    462 ; indirectly addressable internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area ISEG    (DATA)
                                    465 ;--------------------------------------------------------
                                    466 ; absolute internal ram data
                                    467 ;--------------------------------------------------------
                                    468 	.area IABS    (ABS,DATA)
                                    469 	.area IABS    (ABS,DATA)
                                    470 ;--------------------------------------------------------
                                    471 ; bit data
                                    472 ;--------------------------------------------------------
                                    473 	.area BSEG    (BIT)
                                    474 ;--------------------------------------------------------
                                    475 ; paged external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area PSEG    (PAG,XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XSEG    (XDATA)
      00002E                        482 _card_type::
      00002E                        483 	.ds 2
                                    484 ;--------------------------------------------------------
                                    485 ; absolute external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XABS    (ABS,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external initialized ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XISEG   (XDATA)
                                    492 	.area HOME    (CODE)
                                    493 	.area GSINIT0 (CODE)
                                    494 	.area GSINIT1 (CODE)
                                    495 	.area GSINIT2 (CODE)
                                    496 	.area GSINIT3 (CODE)
                                    497 	.area GSINIT4 (CODE)
                                    498 	.area GSINIT5 (CODE)
                                    499 	.area GSINIT  (CODE)
                                    500 	.area GSFINAL (CODE)
                                    501 	.area CSEG    (CODE)
                                    502 ;--------------------------------------------------------
                                    503 ; global & static initialisations
                                    504 ;--------------------------------------------------------
                                    505 	.area HOME    (CODE)
                                    506 	.area GSINIT  (CODE)
                                    507 	.area GSFINAL (CODE)
                                    508 	.area GSINIT  (CODE)
                                    509 ;--------------------------------------------------------
                                    510 ; Home
                                    511 ;--------------------------------------------------------
                                    512 	.area HOME    (CODE)
                                    513 	.area HOME    (CODE)
                                    514 ;--------------------------------------------------------
                                    515 ; code
                                    516 ;--------------------------------------------------------
                                    517 	.area CSEG    (CODE)
                                    518 ;------------------------------------------------------------
                                    519 ;Allocation info for local variables in function 'get_card_type'
                                    520 ;------------------------------------------------------------
                                    521 ;	sdc.c:83: int get_card_type(void)
                                    522 ;	-----------------------------------------
                                    523 ;	 function get_card_type
                                    524 ;	-----------------------------------------
      002D29                        525 _get_card_type:
                           000007   526 	ar7 = 0x07
                           000006   527 	ar6 = 0x06
                           000005   528 	ar5 = 0x05
                           000004   529 	ar4 = 0x04
                           000003   530 	ar3 = 0x03
                           000002   531 	ar2 = 0x02
                           000001   532 	ar1 = 0x01
                           000000   533 	ar0 = 0x00
                                    534 ;	sdc.c:85: return card_type;
      002D29 90 00 2E         [24]  535 	mov	dptr,#_card_type
      002D2C E0               [24]  536 	movx	a,@dptr
      002D2D FE               [12]  537 	mov	r6,a
      002D2E A3               [24]  538 	inc	dptr
      002D2F E0               [24]  539 	movx	a,@dptr
                                    540 ;	sdc.c:86: }
      002D30 8E 82            [24]  541 	mov	dpl,r6
      002D32 F5 83            [12]  542 	mov	dph,a
      002D34 22               [24]  543 	ret
                                    544 ;------------------------------------------------------------
                                    545 ;Allocation info for local variables in function 'sd_init'
                                    546 ;------------------------------------------------------------
                                    547 ;card_status               Allocated to registers 
                                    548 ;i                         Allocated to registers r6 r7 
                                    549 ;------------------------------------------------------------
                                    550 ;	sdc.c:99: int sd_init(void)
                                    551 ;	-----------------------------------------
                                    552 ;	 function sd_init
                                    553 ;	-----------------------------------------
      002D35                        554 _sd_init:
                                    555 ;	sdc.c:106: spi_disable_cs();
      002D35 12 33 49         [24]  556 	lcall	_spi_disable_cs
                                    557 ;	sdc.c:109: for(i=0;i<10;i++)
      002D38 7E 00            [12]  558 	mov	r6,#0x00
      002D3A 7F 00            [12]  559 	mov	r7,#0x00
      002D3C                        560 00124$:
                                    561 ;	sdc.c:110: spi_byte( 0xFF );
      002D3C 75 82 FF         [24]  562 	mov	dpl,#0xff
      002D3F C0 07            [24]  563 	push	ar7
      002D41 C0 06            [24]  564 	push	ar6
      002D43 12 33 71         [24]  565 	lcall	_spi_byte
      002D46 D0 06            [24]  566 	pop	ar6
      002D48 D0 07            [24]  567 	pop	ar7
                                    568 ;	sdc.c:109: for(i=0;i<10;i++)
      002D4A 0E               [12]  569 	inc	r6
      002D4B BE 00 01         [24]  570 	cjne	r6,#0x00,00179$
      002D4E 0F               [12]  571 	inc	r7
      002D4F                        572 00179$:
      002D4F C3               [12]  573 	clr	c
      002D50 EE               [12]  574 	mov	a,r6
      002D51 94 0A            [12]  575 	subb	a,#0x0a
      002D53 EF               [12]  576 	mov	a,r7
      002D54 64 80            [12]  577 	xrl	a,#0x80
      002D56 94 80            [12]  578 	subb	a,#0x80
      002D58 40 E2            [24]  579 	jc	00124$
                                    580 ;	sdc.c:112: spi_enable_cs();
      002D5A 12 33 46         [24]  581 	lcall	_spi_enable_cs
                                    582 ;	sdc.c:118: card_type = 0;
      002D5D 90 00 2E         [24]  583 	mov	dptr,#_card_type
      002D60 E4               [12]  584 	clr	a
      002D61 F0               [24]  585 	movx	@dptr,a
      002D62 A3               [24]  586 	inc	dptr
      002D63 F0               [24]  587 	movx	@dptr,a
                                    588 ;	sdc.c:121: do
      002D64 7E E8            [12]  589 	mov	r6,#0xe8
      002D66 7F 03            [12]  590 	mov	r7,#0x03
      002D68                        591 00103$:
                                    592 ;	sdc.c:123: delay(1);
      002D68 75 82 01         [24]  593 	mov	dpl,#0x01
      002D6B C0 07            [24]  594 	push	ar7
      002D6D C0 06            [24]  595 	push	ar6
      002D6F 12 31 6A         [24]  596 	lcall	_delay
                                    597 ;	sdc.c:124: sd_command(CMD_GO_IDLE_STATE, 0);
      002D72 E4               [12]  598 	clr	a
      002D73 C0 E0            [24]  599 	push	acc
      002D75 C0 E0            [24]  600 	push	acc
      002D77 C0 E0            [24]  601 	push	acc
      002D79 C0 E0            [24]  602 	push	acc
      002D7B 75 82 00         [24]  603 	mov	dpl,#0x00
      002D7E 12 30 DB         [24]  604 	lcall	_sd_command
      002D81 E5 81            [12]  605 	mov	a,sp
      002D83 24 FC            [12]  606 	add	a,#0xfc
      002D85 F5 81            [12]  607 	mov	sp,a
                                    608 ;	sdc.c:125: } while((sd_get_R1() != IDLE_STATE) && (--i));
      002D87 12 30 82         [24]  609 	lcall	_sd_get_R1
      002D8A AD 82            [24]  610 	mov	r5,dpl
      002D8C D0 06            [24]  611 	pop	ar6
      002D8E D0 07            [24]  612 	pop	ar7
      002D90 BD 01 02         [24]  613 	cjne	r5,#0x01,00181$
      002D93 80 09            [24]  614 	sjmp	00105$
      002D95                        615 00181$:
      002D95 1E               [12]  616 	dec	r6
      002D96 BE FF 01         [24]  617 	cjne	r6,#0xff,00182$
      002D99 1F               [12]  618 	dec	r7
      002D9A                        619 00182$:
      002D9A EE               [12]  620 	mov	a,r6
      002D9B 4F               [12]  621 	orl	a,r7
      002D9C 70 CA            [24]  622 	jnz	00103$
      002D9E                        623 00105$:
                                    624 ;	sdc.c:128: if( !i )
      002D9E EE               [12]  625 	mov	a,r6
      002D9F 4F               [12]  626 	orl	a,r7
      002DA0 70 04            [24]  627 	jnz	00107$
                                    628 ;	sdc.c:129: return( SD_TIME_OUT );
      002DA2 90 00 02         [24]  629 	mov	dptr,#0x0002
      002DA5 22               [24]  630 	ret
      002DA6                        631 00107$:
                                    632 ;	sdc.c:138: sd_command(CMD_APP_CMD, 0);
      002DA6 E4               [12]  633 	clr	a
      002DA7 C0 E0            [24]  634 	push	acc
      002DA9 C0 E0            [24]  635 	push	acc
      002DAB C0 E0            [24]  636 	push	acc
      002DAD C0 E0            [24]  637 	push	acc
      002DAF 75 82 37         [24]  638 	mov	dpl,#0x37
      002DB2 12 30 DB         [24]  639 	lcall	_sd_command
      002DB5 E5 81            [12]  640 	mov	a,sp
      002DB7 24 FC            [12]  641 	add	a,#0xfc
      002DB9 F5 81            [12]  642 	mov	sp,a
                                    643 ;	sdc.c:140: sd_command( ACMD_SEND_OP_COND, 0 );
      002DBB E4               [12]  644 	clr	a
      002DBC C0 E0            [24]  645 	push	acc
      002DBE C0 E0            [24]  646 	push	acc
      002DC0 C0 E0            [24]  647 	push	acc
      002DC2 C0 E0            [24]  648 	push	acc
      002DC4 75 82 29         [24]  649 	mov	dpl,#0x29
      002DC7 12 30 DB         [24]  650 	lcall	_sd_command
      002DCA E5 81            [12]  651 	mov	a,sp
      002DCC 24 FC            [12]  652 	add	a,#0xfc
      002DCE F5 81            [12]  653 	mov	sp,a
                                    654 ;	sdc.c:142: if( sd_get_R1() <= 1 )
      002DD0 12 30 82         [24]  655 	lcall	_sd_get_R1
      002DD3 E5 82            [12]  656 	mov	a,dpl
      002DD5 24 FE            [12]  657 	add	a,#0xff - 0x01
      002DD7 40 0B            [24]  658 	jc	00109$
                                    659 ;	sdc.c:144: card_type = 2;
      002DD9 90 00 2E         [24]  660 	mov	dptr,#_card_type
      002DDC 74 02            [12]  661 	mov	a,#0x02
      002DDE F0               [24]  662 	movx	@dptr,a
      002DDF E4               [12]  663 	clr	a
      002DE0 A3               [24]  664 	inc	dptr
      002DE1 F0               [24]  665 	movx	@dptr,a
      002DE2 80 09            [24]  666 	sjmp	00136$
      002DE4                        667 00109$:
                                    668 ;	sdc.c:148: card_type = 1;
      002DE4 90 00 2E         [24]  669 	mov	dptr,#_card_type
      002DE7 74 01            [12]  670 	mov	a,#0x01
      002DE9 F0               [24]  671 	movx	@dptr,a
      002DEA E4               [12]  672 	clr	a
      002DEB A3               [24]  673 	inc	dptr
      002DEC F0               [24]  674 	movx	@dptr,a
                                    675 ;	sdc.c:152: do
      002DED                        676 00136$:
      002DED 7E D0            [12]  677 	mov	r6,#0xd0
      002DEF 7F 07            [12]  678 	mov	r7,#0x07
      002DF1                        679 00115$:
                                    680 ;	sdc.c:154: delay(1);
      002DF1 75 82 01         [24]  681 	mov	dpl,#0x01
      002DF4 C0 07            [24]  682 	push	ar7
      002DF6 C0 06            [24]  683 	push	ar6
      002DF8 12 31 6A         [24]  684 	lcall	_delay
      002DFB D0 06            [24]  685 	pop	ar6
      002DFD D0 07            [24]  686 	pop	ar7
                                    687 ;	sdc.c:157: if( card_type == 2 )
      002DFF 90 00 2E         [24]  688 	mov	dptr,#_card_type
      002E02 E0               [24]  689 	movx	a,@dptr
      002E03 FC               [12]  690 	mov	r4,a
      002E04 A3               [24]  691 	inc	dptr
      002E05 E0               [24]  692 	movx	a,@dptr
      002E06 FD               [12]  693 	mov	r5,a
      002E07 BC 02 37         [24]  694 	cjne	r4,#0x02,00112$
      002E0A BD 00 34         [24]  695 	cjne	r5,#0x00,00112$
                                    696 ;	sdc.c:159: sd_command( CMD_APP_CMD, 0 );
      002E0D C0 07            [24]  697 	push	ar7
      002E0F C0 06            [24]  698 	push	ar6
      002E11 E4               [12]  699 	clr	a
      002E12 C0 E0            [24]  700 	push	acc
      002E14 C0 E0            [24]  701 	push	acc
      002E16 C0 E0            [24]  702 	push	acc
      002E18 C0 E0            [24]  703 	push	acc
      002E1A 75 82 37         [24]  704 	mov	dpl,#0x37
      002E1D 12 30 DB         [24]  705 	lcall	_sd_command
      002E20 E5 81            [12]  706 	mov	a,sp
      002E22 24 FC            [12]  707 	add	a,#0xfc
      002E24 F5 81            [12]  708 	mov	sp,a
                                    709 ;	sdc.c:160: sd_command( ACMD_SEND_OP_COND, 0 );
      002E26 E4               [12]  710 	clr	a
      002E27 C0 E0            [24]  711 	push	acc
      002E29 C0 E0            [24]  712 	push	acc
      002E2B C0 E0            [24]  713 	push	acc
      002E2D C0 E0            [24]  714 	push	acc
      002E2F 75 82 29         [24]  715 	mov	dpl,#0x29
      002E32 12 30 DB         [24]  716 	lcall	_sd_command
      002E35 E5 81            [12]  717 	mov	a,sp
      002E37 24 FC            [12]  718 	add	a,#0xfc
      002E39 F5 81            [12]  719 	mov	sp,a
      002E3B D0 06            [24]  720 	pop	ar6
      002E3D D0 07            [24]  721 	pop	ar7
      002E3F 80 1D            [24]  722 	sjmp	00116$
      002E41                        723 00112$:
                                    724 ;	sdc.c:165: sd_command( CMD_SEND_OP_COND, 0 );
      002E41 C0 07            [24]  725 	push	ar7
      002E43 C0 06            [24]  726 	push	ar6
      002E45 E4               [12]  727 	clr	a
      002E46 C0 E0            [24]  728 	push	acc
      002E48 C0 E0            [24]  729 	push	acc
      002E4A C0 E0            [24]  730 	push	acc
      002E4C C0 E0            [24]  731 	push	acc
      002E4E 75 82 01         [24]  732 	mov	dpl,#0x01
      002E51 12 30 DB         [24]  733 	lcall	_sd_command
      002E54 E5 81            [12]  734 	mov	a,sp
      002E56 24 FC            [12]  735 	add	a,#0xfc
      002E58 F5 81            [12]  736 	mov	sp,a
      002E5A D0 06            [24]  737 	pop	ar6
      002E5C D0 07            [24]  738 	pop	ar7
      002E5E                        739 00116$:
                                    740 ;	sdc.c:167: } while(sd_get_R1() && --i); //only when the response is 0x00 means the initialization succeed
      002E5E C0 07            [24]  741 	push	ar7
      002E60 C0 06            [24]  742 	push	ar6
      002E62 12 30 82         [24]  743 	lcall	_sd_get_R1
      002E65 E5 82            [12]  744 	mov	a,dpl
      002E67 D0 06            [24]  745 	pop	ar6
      002E69 D0 07            [24]  746 	pop	ar7
      002E6B 60 0C            [24]  747 	jz	00117$
      002E6D 1E               [12]  748 	dec	r6
      002E6E BE FF 01         [24]  749 	cjne	r6,#0xff,00189$
      002E71 1F               [12]  750 	dec	r7
      002E72                        751 00189$:
      002E72 EE               [12]  752 	mov	a,r6
      002E73 4F               [12]  753 	orl	a,r7
      002E74 60 03            [24]  754 	jz	00190$
      002E76 02 2D F1         [24]  755 	ljmp	00115$
      002E79                        756 00190$:
      002E79                        757 00117$:
                                    758 ;	sdc.c:169: if( !i )
      002E79 EE               [12]  759 	mov	a,r6
      002E7A 4F               [12]  760 	orl	a,r7
      002E7B 70 04            [24]  761 	jnz	00119$
                                    762 ;	sdc.c:170: return( SD_TIME_OUT );
      002E7D 90 00 02         [24]  763 	mov	dptr,#0x0002
      002E80 22               [24]  764 	ret
      002E81                        765 00119$:
                                    766 ;	sdc.c:175: sd_command( CMD_SEND_STATUS, 0 );
      002E81 E4               [12]  767 	clr	a
      002E82 C0 E0            [24]  768 	push	acc
      002E84 C0 E0            [24]  769 	push	acc
      002E86 C0 E0            [24]  770 	push	acc
      002E88 C0 E0            [24]  771 	push	acc
      002E8A 75 82 0D         [24]  772 	mov	dpl,#0x0d
      002E8D 12 30 DB         [24]  773 	lcall	_sd_command
      002E90 E5 81            [12]  774 	mov	a,sp
      002E92 24 FC            [12]  775 	add	a,#0xfc
      002E94 F5 81            [12]  776 	mov	sp,a
                                    777 ;	sdc.c:176: card_status = sd_get_R2();
      002E96 12 30 B7         [24]  778 	lcall	_sd_get_R2
      002E99 E5 82            [12]  779 	mov	a,dpl
      002E9B 85 83 F0         [24]  780 	mov	b,dph
                                    781 ;	sdc.c:177: if( card_status )
      002E9E 45 F0            [12]  782 	orl	a,b
      002EA0 60 04            [24]  783 	jz	00121$
                                    784 ;	sdc.c:178: return( SD_ERROR );
      002EA2 90 00 01         [24]  785 	mov	dptr,#0x0001
      002EA5 22               [24]  786 	ret
      002EA6                        787 00121$:
                                    788 ;	sdc.c:183: sd_command( CMD_SET_BLOCKLEN, 512 );
      002EA6 E4               [12]  789 	clr	a
      002EA7 C0 E0            [24]  790 	push	acc
      002EA9 74 02            [12]  791 	mov	a,#0x02
      002EAB C0 E0            [24]  792 	push	acc
      002EAD E4               [12]  793 	clr	a
      002EAE C0 E0            [24]  794 	push	acc
      002EB0 C0 E0            [24]  795 	push	acc
      002EB2 75 82 10         [24]  796 	mov	dpl,#0x10
      002EB5 12 30 DB         [24]  797 	lcall	_sd_command
      002EB8 E5 81            [12]  798 	mov	a,sp
      002EBA 24 FC            [12]  799 	add	a,#0xfc
      002EBC F5 81            [12]  800 	mov	sp,a
                                    801 ;	sdc.c:184: if( sd_get_R1() )
      002EBE 12 30 82         [24]  802 	lcall	_sd_get_R1
      002EC1 E5 82            [12]  803 	mov	a,dpl
      002EC3 60 0B            [24]  804 	jz	00123$
                                    805 ;	sdc.c:186: card_type = 0;
      002EC5 90 00 2E         [24]  806 	mov	dptr,#_card_type
      002EC8 E4               [12]  807 	clr	a
      002EC9 F0               [24]  808 	movx	@dptr,a
      002ECA A3               [24]  809 	inc	dptr
      002ECB F0               [24]  810 	movx	@dptr,a
                                    811 ;	sdc.c:187: return( SD_ERROR );
      002ECC 90 00 01         [24]  812 	mov	dptr,#0x0001
      002ECF 22               [24]  813 	ret
      002ED0                        814 00123$:
                                    815 ;	sdc.c:192: max_spi_clock_freq();
      002ED0 12 33 4C         [24]  816 	lcall	_max_spi_clock_freq
                                    817 ;	sdc.c:194: spi_disable_cs();
      002ED3 12 33 49         [24]  818 	lcall	_spi_disable_cs
                                    819 ;	sdc.c:196: return SD_SUCCESS;
      002ED6 90 00 00         [24]  820 	mov	dptr,#0x0000
                                    821 ;	sdc.c:197: }
      002ED9 22               [24]  822 	ret
                                    823 ;------------------------------------------------------------
                                    824 ;Allocation info for local variables in function 'sd_read_sector'
                                    825 ;------------------------------------------------------------
                                    826 ;buffer                    Allocated to stack - _bp -5
                                    827 ;sector_number             Allocated to registers r6 r7 
                                    828 ;count                     Allocated to stack - _bp +1
                                    829 ;------------------------------------------------------------
                                    830 ;	sdc.c:205: int sd_read_sector( uint16_t sector_number, uint8_t *buffer )
                                    831 ;	-----------------------------------------
                                    832 ;	 function sd_read_sector
                                    833 ;	-----------------------------------------
      002EDA                        834 _sd_read_sector:
      002EDA C0 08            [24]  835 	push	_bp
      002EDC 85 81 08         [24]  836 	mov	_bp,sp
      002EDF 05 81            [12]  837 	inc	sp
      002EE1 05 81            [12]  838 	inc	sp
      002EE3 AE 82            [24]  839 	mov	r6,dpl
      002EE5 AF 83            [24]  840 	mov	r7,dph
                                    841 ;	sdc.c:210: sd_command( CMD_READ_SINGLE_BLOCK, sector_number << 9 );
      002EE7 EE               [12]  842 	mov	a,r6
      002EE8 2E               [12]  843 	add	a,r6
      002EE9 CF               [12]  844 	xch	a,r7
      002EEA 7E 00            [12]  845 	mov	r6,#0x00
      002EEC 7D 00            [12]  846 	mov	r5,#0x00
      002EEE 7C 00            [12]  847 	mov	r4,#0x00
      002EF0 C0 06            [24]  848 	push	ar6
      002EF2 C0 07            [24]  849 	push	ar7
      002EF4 C0 05            [24]  850 	push	ar5
      002EF6 C0 04            [24]  851 	push	ar4
      002EF8 75 82 11         [24]  852 	mov	dpl,#0x11
      002EFB 12 30 DB         [24]  853 	lcall	_sd_command
      002EFE E5 81            [12]  854 	mov	a,sp
      002F00 24 FC            [12]  855 	add	a,#0xfc
      002F02 F5 81            [12]  856 	mov	sp,a
                                    857 ;	sdc.c:212: if(sd_get_R1() != 0){
      002F04 12 30 82         [24]  858 	lcall	_sd_get_R1
      002F07 E5 82            [12]  859 	mov	a,dpl
      002F09 60 06            [24]  860 	jz	00116$
                                    861 ;	sdc.c:213: return SD_ERROR;
      002F0B 90 00 01         [24]  862 	mov	dptr,#0x0001
      002F0E 02 2F 9A         [24]  863 	ljmp	00112$
                                    864 ;	sdc.c:218: while( (sd_get_R1() == 0xff) && --count);
      002F11                        865 00116$:
      002F11 7E FF            [12]  866 	mov	r6,#0xff
      002F13 7F FF            [12]  867 	mov	r7,#0xff
      002F15                        868 00104$:
      002F15 C0 07            [24]  869 	push	ar7
      002F17 C0 06            [24]  870 	push	ar6
      002F19 12 30 82         [24]  871 	lcall	_sd_get_R1
      002F1C AD 82            [24]  872 	mov	r5,dpl
      002F1E D0 06            [24]  873 	pop	ar6
      002F20 D0 07            [24]  874 	pop	ar7
      002F22 BD FF 09         [24]  875 	cjne	r5,#0xff,00106$
      002F25 1E               [12]  876 	dec	r6
      002F26 BE FF 01         [24]  877 	cjne	r6,#0xff,00143$
      002F29 1F               [12]  878 	dec	r7
      002F2A                        879 00143$:
      002F2A EE               [12]  880 	mov	a,r6
      002F2B 4F               [12]  881 	orl	a,r7
      002F2C 70 E7            [24]  882 	jnz	00104$
      002F2E                        883 00106$:
                                    884 ;	sdc.c:221: if(count == 0){
      002F2E EE               [12]  885 	mov	a,r6
      002F2F 4F               [12]  886 	orl	a,r7
      002F30 70 05            [24]  887 	jnz	00118$
                                    888 ;	sdc.c:222: return SD_ERROR;
      002F32 90 00 01         [24]  889 	mov	dptr,#0x0001
                                    890 ;	sdc.c:226: for( count=0; count<SD_DATA_SIZE; count++){
      002F35 80 63            [24]  891 	sjmp	00112$
      002F37                        892 00118$:
      002F37 E5 08            [12]  893 	mov	a,_bp
      002F39 24 FB            [12]  894 	add	a,#0xfb
      002F3B F8               [12]  895 	mov	r0,a
      002F3C 86 05            [24]  896 	mov	ar5,@r0
      002F3E 08               [12]  897 	inc	r0
      002F3F 86 06            [24]  898 	mov	ar6,@r0
      002F41 08               [12]  899 	inc	r0
      002F42 86 07            [24]  900 	mov	ar7,@r0
      002F44 A8 08            [24]  901 	mov	r0,_bp
      002F46 08               [12]  902 	inc	r0
      002F47 E4               [12]  903 	clr	a
      002F48 F6               [12]  904 	mov	@r0,a
      002F49 08               [12]  905 	inc	r0
      002F4A F6               [12]  906 	mov	@r0,a
      002F4B                        907 00110$:
                                    908 ;	sdc.c:227: *buffer++ = spi_byte(0xFF);
      002F4B 75 82 FF         [24]  909 	mov	dpl,#0xff
      002F4E C0 07            [24]  910 	push	ar7
      002F50 C0 06            [24]  911 	push	ar6
      002F52 C0 05            [24]  912 	push	ar5
      002F54 12 33 71         [24]  913 	lcall	_spi_byte
      002F57 AA 82            [24]  914 	mov	r2,dpl
      002F59 D0 05            [24]  915 	pop	ar5
      002F5B D0 06            [24]  916 	pop	ar6
      002F5D D0 07            [24]  917 	pop	ar7
      002F5F 8D 82            [24]  918 	mov	dpl,r5
      002F61 8E 83            [24]  919 	mov	dph,r6
      002F63 8F F0            [24]  920 	mov	b,r7
      002F65 EA               [12]  921 	mov	a,r2
      002F66 12 38 59         [24]  922 	lcall	__gptrput
      002F69 A3               [24]  923 	inc	dptr
      002F6A AD 82            [24]  924 	mov	r5,dpl
      002F6C AE 83            [24]  925 	mov	r6,dph
                                    926 ;	sdc.c:226: for( count=0; count<SD_DATA_SIZE; count++){
      002F6E A8 08            [24]  927 	mov	r0,_bp
      002F70 08               [12]  928 	inc	r0
      002F71 06               [12]  929 	inc	@r0
      002F72 B6 00 02         [24]  930 	cjne	@r0,#0x00,00146$
      002F75 08               [12]  931 	inc	r0
      002F76 06               [12]  932 	inc	@r0
      002F77                        933 00146$:
      002F77 A8 08            [24]  934 	mov	r0,_bp
      002F79 08               [12]  935 	inc	r0
      002F7A 08               [12]  936 	inc	r0
      002F7B 86 04            [24]  937 	mov	ar4,@r0
      002F7D 74 FF            [12]  938 	mov	a,#0x100 - 0x01
      002F7F 2C               [12]  939 	add	a,r4
      002F80 50 C9            [24]  940 	jnc	00110$
                                    941 ;	sdc.c:231: spi_byte(0xFF);
      002F82 75 82 FF         [24]  942 	mov	dpl,#0xff
      002F85 12 33 71         [24]  943 	lcall	_spi_byte
                                    944 ;	sdc.c:232: spi_byte(0xFF);
      002F88 75 82 FF         [24]  945 	mov	dpl,#0xff
      002F8B 12 33 71         [24]  946 	lcall	_spi_byte
                                    947 ;	sdc.c:235: spi_disable_cs();
      002F8E 12 33 49         [24]  948 	lcall	_spi_disable_cs
                                    949 ;	sdc.c:237: spi_byte(0xFF);
      002F91 75 82 FF         [24]  950 	mov	dpl,#0xff
      002F94 12 33 71         [24]  951 	lcall	_spi_byte
                                    952 ;	sdc.c:239: return SD_SUCCESS;
      002F97 90 00 00         [24]  953 	mov	dptr,#0x0000
      002F9A                        954 00112$:
                                    955 ;	sdc.c:240: }
      002F9A 85 08 81         [24]  956 	mov	sp,_bp
      002F9D D0 08            [24]  957 	pop	_bp
      002F9F 22               [24]  958 	ret
                                    959 ;------------------------------------------------------------
                                    960 ;Allocation info for local variables in function 'sd_write_sector'
                                    961 ;------------------------------------------------------------
                                    962 ;buffer                    Allocated to stack - _bp -5
                                    963 ;sector_number             Allocated to registers r6 r7 
                                    964 ;i                         Allocated to registers r3 r4 
                                    965 ;------------------------------------------------------------
                                    966 ;	sdc.c:248: int sd_write_sector( uint16_t sector_number, const uint8_t *buffer )
                                    967 ;	-----------------------------------------
                                    968 ;	 function sd_write_sector
                                    969 ;	-----------------------------------------
      002FA0                        970 _sd_write_sector:
      002FA0 C0 08            [24]  971 	push	_bp
      002FA2 85 81 08         [24]  972 	mov	_bp,sp
      002FA5 AE 82            [24]  973 	mov	r6,dpl
      002FA7 AF 83            [24]  974 	mov	r7,dph
                                    975 ;	sdc.c:251: sd_command( CMD_WRITE_SINGLE_BLOCK, sector_number << 9 );
      002FA9 EE               [12]  976 	mov	a,r6
      002FAA 2E               [12]  977 	add	a,r6
      002FAB CF               [12]  978 	xch	a,r7
      002FAC 7E 00            [12]  979 	mov	r6,#0x00
      002FAE 7D 00            [12]  980 	mov	r5,#0x00
      002FB0 7C 00            [12]  981 	mov	r4,#0x00
      002FB2 C0 06            [24]  982 	push	ar6
      002FB4 C0 07            [24]  983 	push	ar7
      002FB6 C0 05            [24]  984 	push	ar5
      002FB8 C0 04            [24]  985 	push	ar4
      002FBA 75 82 18         [24]  986 	mov	dpl,#0x18
      002FBD 12 30 DB         [24]  987 	lcall	_sd_command
      002FC0 E5 81            [12]  988 	mov	a,sp
      002FC2 24 FC            [12]  989 	add	a,#0xfc
      002FC4 F5 81            [12]  990 	mov	sp,a
                                    991 ;	sdc.c:253: if(sd_get_R1() != 0){
      002FC6 12 30 82         [24]  992 	lcall	_sd_get_R1
      002FC9 E5 82            [12]  993 	mov	a,dpl
      002FCB 60 06            [24]  994 	jz	00102$
                                    995 ;	sdc.c:254: return SD_ERROR;
      002FCD 90 00 01         [24]  996 	mov	dptr,#0x0001
      002FD0 02 30 4A         [24]  997 	ljmp	00110$
      002FD3                        998 00102$:
                                    999 ;	sdc.c:258: spi_byte( 0xFE );
      002FD3 75 82 FE         [24] 1000 	mov	dpl,#0xfe
      002FD6 12 33 71         [24] 1001 	lcall	_spi_byte
                                   1002 ;	sdc.c:260: for(int i= 0; i< 512; i++ )
      002FD9 E5 08            [12] 1003 	mov	a,_bp
      002FDB 24 FB            [12] 1004 	add	a,#0xfb
      002FDD F8               [12] 1005 	mov	r0,a
      002FDE 86 05            [24] 1006 	mov	ar5,@r0
      002FE0 08               [12] 1007 	inc	r0
      002FE1 86 06            [24] 1008 	mov	ar6,@r0
      002FE3 08               [12] 1009 	inc	r0
      002FE4 86 07            [24] 1010 	mov	ar7,@r0
      002FE6 7B 00            [12] 1011 	mov	r3,#0x00
      002FE8 7C 00            [12] 1012 	mov	r4,#0x00
      002FEA                       1013 00108$:
      002FEA C3               [12] 1014 	clr	c
      002FEB EC               [12] 1015 	mov	a,r4
      002FEC 64 80            [12] 1016 	xrl	a,#0x80
      002FEE 94 82            [12] 1017 	subb	a,#0x82
      002FF0 50 2F            [24] 1018 	jnc	00103$
                                   1019 ;	sdc.c:262: spi_byte(*buffer++);
      002FF2 8D 82            [24] 1020 	mov	dpl,r5
      002FF4 8E 83            [24] 1021 	mov	dph,r6
      002FF6 8F F0            [24] 1022 	mov	b,r7
      002FF8 12 3A A5         [24] 1023 	lcall	__gptrget
      002FFB FA               [12] 1024 	mov	r2,a
      002FFC A3               [24] 1025 	inc	dptr
      002FFD AD 82            [24] 1026 	mov	r5,dpl
      002FFF AE 83            [24] 1027 	mov	r6,dph
      003001 8A 82            [24] 1028 	mov	dpl,r2
      003003 C0 07            [24] 1029 	push	ar7
      003005 C0 06            [24] 1030 	push	ar6
      003007 C0 05            [24] 1031 	push	ar5
      003009 C0 04            [24] 1032 	push	ar4
      00300B C0 03            [24] 1033 	push	ar3
      00300D 12 33 71         [24] 1034 	lcall	_spi_byte
      003010 D0 03            [24] 1035 	pop	ar3
      003012 D0 04            [24] 1036 	pop	ar4
      003014 D0 05            [24] 1037 	pop	ar5
      003016 D0 06            [24] 1038 	pop	ar6
      003018 D0 07            [24] 1039 	pop	ar7
                                   1040 ;	sdc.c:260: for(int i= 0; i< 512; i++ )
      00301A 0B               [12] 1041 	inc	r3
      00301B BB 00 CC         [24] 1042 	cjne	r3,#0x00,00108$
      00301E 0C               [12] 1043 	inc	r4
      00301F 80 C9            [24] 1044 	sjmp	00108$
      003021                       1045 00103$:
                                   1046 ;	sdc.c:266: spi_byte(0xFF);
      003021 75 82 FF         [24] 1047 	mov	dpl,#0xff
      003024 12 33 71         [24] 1048 	lcall	_spi_byte
                                   1049 ;	sdc.c:267: spi_byte(0xFF);
      003027 75 82 FF         [24] 1050 	mov	dpl,#0xff
      00302A 12 33 71         [24] 1051 	lcall	_spi_byte
                                   1052 ;	sdc.c:270: while( spi_byte( 0xFF ) != 0xFF);
      00302D                       1053 00104$:
      00302D 75 82 FF         [24] 1054 	mov	dpl,#0xff
      003030 12 33 71         [24] 1055 	lcall	_spi_byte
      003033 AF 82            [24] 1056 	mov	r7,dpl
      003035 BF FF F5         [24] 1057 	cjne	r7,#0xff,00104$
                                   1058 ;	sdc.c:274: spi_byte( 0xFF );
      003038 75 82 FF         [24] 1059 	mov	dpl,#0xff
      00303B 12 33 71         [24] 1060 	lcall	_spi_byte
                                   1061 ;	sdc.c:277: spi_disable_cs();
      00303E 12 33 49         [24] 1062 	lcall	_spi_disable_cs
                                   1063 ;	sdc.c:278: spi_byte( 0xFF );
      003041 75 82 FF         [24] 1064 	mov	dpl,#0xff
      003044 12 33 71         [24] 1065 	lcall	_spi_byte
                                   1066 ;	sdc.c:280: return SD_SUCCESS;
      003047 90 00 00         [24] 1067 	mov	dptr,#0x0000
      00304A                       1068 00110$:
                                   1069 ;	sdc.c:281: }
      00304A D0 08            [24] 1070 	pop	_bp
      00304C 22               [24] 1071 	ret
                                   1072 ;------------------------------------------------------------
                                   1073 ;Allocation info for local variables in function 'sd_wait_for_ready'
                                   1074 ;------------------------------------------------------------
                                   1075 ;i                         Allocated to registers r5 
                                   1076 ;j                         Allocated to registers r6 r7 
                                   1077 ;------------------------------------------------------------
                                   1078 ;	sdc.c:287: uint8_t sd_wait_for_ready()
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function sd_wait_for_ready
                                   1081 ;	-----------------------------------------
      00304D                       1082 _sd_wait_for_ready:
                                   1083 ;	sdc.c:291: spi_byte( 0xFF );
      00304D 75 82 FF         [24] 1084 	mov	dpl,#0xff
      003050 12 33 71         [24] 1085 	lcall	_spi_byte
                                   1086 ;	sdc.c:294: do
      003053 7E F4            [12] 1087 	mov	r6,#0xf4
      003055 7F 01            [12] 1088 	mov	r7,#0x01
      003057                       1089 00102$:
                                   1090 ;	sdc.c:296: i = spi_byte( 0xFF );
      003057 75 82 FF         [24] 1091 	mov	dpl,#0xff
      00305A C0 07            [24] 1092 	push	ar7
      00305C C0 06            [24] 1093 	push	ar6
      00305E 12 33 71         [24] 1094 	lcall	_spi_byte
      003061 AD 82            [24] 1095 	mov	r5,dpl
                                   1096 ;	sdc.c:297: delay( 1 );
      003063 75 82 01         [24] 1097 	mov	dpl,#0x01
      003066 C0 05            [24] 1098 	push	ar5
      003068 12 31 6A         [24] 1099 	lcall	_delay
      00306B D0 05            [24] 1100 	pop	ar5
      00306D D0 06            [24] 1101 	pop	ar6
      00306F D0 07            [24] 1102 	pop	ar7
                                   1103 ;	sdc.c:298: } while ((i != 0xFF) && --j);
      003071 BD FF 02         [24] 1104 	cjne	r5,#0xff,00116$
      003074 80 09            [24] 1105 	sjmp	00104$
      003076                       1106 00116$:
      003076 1E               [12] 1107 	dec	r6
      003077 BE FF 01         [24] 1108 	cjne	r6,#0xff,00117$
      00307A 1F               [12] 1109 	dec	r7
      00307B                       1110 00117$:
      00307B EE               [12] 1111 	mov	a,r6
      00307C 4F               [12] 1112 	orl	a,r7
      00307D 70 D8            [24] 1113 	jnz	00102$
      00307F                       1114 00104$:
                                   1115 ;	sdc.c:300: return i;
      00307F 8D 82            [24] 1116 	mov	dpl,r5
                                   1117 ;	sdc.c:301: }
      003081 22               [24] 1118 	ret
                                   1119 ;------------------------------------------------------------
                                   1120 ;Allocation info for local variables in function 'sd_get_R1'
                                   1121 ;------------------------------------------------------------
                                   1122 ;ret                       Allocated to registers r7 
                                   1123 ;i                         Allocated to registers r5 r6 
                                   1124 ;------------------------------------------------------------
                                   1125 ;	sdc.c:309: static uint8_t sd_get_R1(void)
                                   1126 ;	-----------------------------------------
                                   1127 ;	 function sd_get_R1
                                   1128 ;	-----------------------------------------
      003082                       1129 _sd_get_R1:
                                   1130 ;	sdc.c:311: uint8_t ret = 0;
      003082 7F 00            [12] 1131 	mov	r7,#0x00
                                   1132 ;	sdc.c:313: for(int i=0; i<8; i++ ) {
      003084 7D 00            [12] 1133 	mov	r5,#0x00
      003086 7E 00            [12] 1134 	mov	r6,#0x00
      003088                       1135 00105$:
      003088 C3               [12] 1136 	clr	c
      003089 ED               [12] 1137 	mov	a,r5
      00308A 94 08            [12] 1138 	subb	a,#0x08
      00308C EE               [12] 1139 	mov	a,r6
      00308D 64 80            [12] 1140 	xrl	a,#0x80
      00308F 94 80            [12] 1141 	subb	a,#0x80
      003091 50 21            [24] 1142 	jnc	00103$
                                   1143 ;	sdc.c:315: ret = spi_byte( 0xff );
      003093 75 82 FF         [24] 1144 	mov	dpl,#0xff
      003096 C0 06            [24] 1145 	push	ar6
      003098 C0 05            [24] 1146 	push	ar5
      00309A 12 33 71         [24] 1147 	lcall	_spi_byte
      00309D AC 82            [24] 1148 	mov	r4,dpl
      00309F D0 05            [24] 1149 	pop	ar5
      0030A1 D0 06            [24] 1150 	pop	ar6
      0030A3 8C 07            [24] 1151 	mov	ar7,r4
                                   1152 ;	sdc.c:316: if(ret != 0xff) {
      0030A5 BF FF 02         [24] 1153 	cjne	r7,#0xff,00122$
      0030A8 80 03            [24] 1154 	sjmp	00106$
      0030AA                       1155 00122$:
                                   1156 ;	sdc.c:318: return ret;
      0030AA 8F 82            [24] 1157 	mov	dpl,r7
      0030AC 22               [24] 1158 	ret
      0030AD                       1159 00106$:
                                   1160 ;	sdc.c:313: for(int i=0; i<8; i++ ) {
      0030AD 0D               [12] 1161 	inc	r5
      0030AE BD 00 D7         [24] 1162 	cjne	r5,#0x00,00105$
      0030B1 0E               [12] 1163 	inc	r6
      0030B2 80 D4            [24] 1164 	sjmp	00105$
      0030B4                       1165 00103$:
                                   1166 ;	sdc.c:321: return ret;
      0030B4 8F 82            [24] 1167 	mov	dpl,r7
                                   1168 ;	sdc.c:322: }
      0030B6 22               [24] 1169 	ret
                                   1170 ;------------------------------------------------------------
                                   1171 ;Allocation info for local variables in function 'sd_get_R2'
                                   1172 ;------------------------------------------------------------
                                   1173 ;r2                        Allocated to registers r5 r4 
                                   1174 ;------------------------------------------------------------
                                   1175 ;	sdc.c:327: static uint16_t sd_get_R2(void)
                                   1176 ;	-----------------------------------------
                                   1177 ;	 function sd_get_R2
                                   1178 ;	-----------------------------------------
      0030B7                       1179 _sd_get_R2:
                                   1180 ;	sdc.c:331: r2 = ((sd_get_R1())<< 8) & 0xff00;
      0030B7 12 30 82         [24] 1181 	lcall	_sd_get_R1
      0030BA AE 82            [24] 1182 	mov	r6,dpl
      0030BC 7F 00            [12] 1183 	mov	r7,#0x00
                                   1184 ;	sdc.c:332: r2 |= spi_byte( 0xff );
      0030BE 75 82 FF         [24] 1185 	mov	dpl,#0xff
      0030C1 C0 07            [24] 1186 	push	ar7
      0030C3 C0 06            [24] 1187 	push	ar6
      0030C5 12 33 71         [24] 1188 	lcall	_spi_byte
      0030C8 AD 82            [24] 1189 	mov	r5,dpl
      0030CA D0 06            [24] 1190 	pop	ar6
      0030CC D0 07            [24] 1191 	pop	ar7
      0030CE 7C 00            [12] 1192 	mov	r4,#0x00
      0030D0 EF               [12] 1193 	mov	a,r7
      0030D1 42 05            [12] 1194 	orl	ar5,a
      0030D3 EE               [12] 1195 	mov	a,r6
      0030D4 42 04            [12] 1196 	orl	ar4,a
                                   1197 ;	sdc.c:333: return( r2 );
      0030D6 8D 82            [24] 1198 	mov	dpl,r5
      0030D8 8C 83            [24] 1199 	mov	dph,r4
                                   1200 ;	sdc.c:334: }
      0030DA 22               [24] 1201 	ret
                                   1202 ;------------------------------------------------------------
                                   1203 ;Allocation info for local variables in function 'sd_command'
                                   1204 ;------------------------------------------------------------
                                   1205 ;arg                       Allocated to stack - _bp -6
                                   1206 ;cmd                       Allocated to registers r7 
                                   1207 ;temp                      Allocated to registers r2 
                                   1208 ;i                         Allocated to registers r5 r6 
                                   1209 ;------------------------------------------------------------
                                   1210 ;	sdc.c:342: static int sd_command(uint8_t cmd, uint32_t arg)
                                   1211 ;	-----------------------------------------
                                   1212 ;	 function sd_command
                                   1213 ;	-----------------------------------------
      0030DB                       1214 _sd_command:
      0030DB C0 08            [24] 1215 	push	_bp
      0030DD 85 81 08         [24] 1216 	mov	_bp,sp
      0030E0 AF 82            [24] 1217 	mov	r7,dpl
                                   1218 ;	sdc.c:347: spi_enable_cs();
      0030E2 C0 07            [24] 1219 	push	ar7
      0030E4 12 33 46         [24] 1220 	lcall	_spi_enable_cs
                                   1221 ;	sdc.c:349: spi_byte( 0xFF );
      0030E7 75 82 FF         [24] 1222 	mov	dpl,#0xff
      0030EA 12 33 71         [24] 1223 	lcall	_spi_byte
      0030ED D0 07            [24] 1224 	pop	ar7
                                   1225 ;	sdc.c:351: spi_byte(0x40 | cmd);
      0030EF 74 40            [12] 1226 	mov	a,#0x40
      0030F1 4F               [12] 1227 	orl	a,r7
      0030F2 F5 82            [12] 1228 	mov	dpl,a
      0030F4 C0 07            [24] 1229 	push	ar7
      0030F6 12 33 71         [24] 1230 	lcall	_spi_byte
      0030F9 D0 07            [24] 1231 	pop	ar7
                                   1232 ;	sdc.c:353: for(int i=3;i>=0;i--){
      0030FB 7D 03            [12] 1233 	mov	r5,#0x03
      0030FD 7E 00            [12] 1234 	mov	r6,#0x00
      0030FF                       1235 00103$:
      0030FF EE               [12] 1236 	mov	a,r6
      003100 20 E7 4A         [24] 1237 	jb	acc.7,00101$
                                   1238 ;	sdc.c:354: temp = (arg >> (i * 8)) & 0xFF;
      003103 C0 07            [24] 1239 	push	ar7
      003105 8D 04            [24] 1240 	mov	ar4,r5
      003107 EC               [12] 1241 	mov	a,r4
      003108 C4               [12] 1242 	swap	a
      003109 03               [12] 1243 	rr	a
      00310A 54 F8            [12] 1244 	anl	a,#0xf8
      00310C FC               [12] 1245 	mov	r4,a
      00310D 8C F0            [24] 1246 	mov	b,r4
      00310F 05 F0            [12] 1247 	inc	b
      003111 E5 08            [12] 1248 	mov	a,_bp
      003113 24 FA            [12] 1249 	add	a,#0xfa
      003115 F8               [12] 1250 	mov	r0,a
      003116 86 02            [24] 1251 	mov	ar2,@r0
      003118 08               [12] 1252 	inc	r0
      003119 86 03            [24] 1253 	mov	ar3,@r0
      00311B 08               [12] 1254 	inc	r0
      00311C 86 04            [24] 1255 	mov	ar4,@r0
      00311E 08               [12] 1256 	inc	r0
      00311F 86 07            [24] 1257 	mov	ar7,@r0
      003121 80 0D            [24] 1258 	sjmp	00124$
      003123                       1259 00123$:
      003123 C3               [12] 1260 	clr	c
      003124 EF               [12] 1261 	mov	a,r7
      003125 13               [12] 1262 	rrc	a
      003126 FF               [12] 1263 	mov	r7,a
      003127 EC               [12] 1264 	mov	a,r4
      003128 13               [12] 1265 	rrc	a
      003129 FC               [12] 1266 	mov	r4,a
      00312A EB               [12] 1267 	mov	a,r3
      00312B 13               [12] 1268 	rrc	a
      00312C FB               [12] 1269 	mov	r3,a
      00312D EA               [12] 1270 	mov	a,r2
      00312E 13               [12] 1271 	rrc	a
      00312F FA               [12] 1272 	mov	r2,a
      003130                       1273 00124$:
      003130 D5 F0 F0         [24] 1274 	djnz	b,00123$
                                   1275 ;	sdc.c:355: spi_byte(temp);
      003133 8A 82            [24] 1276 	mov	dpl,r2
      003135 C0 07            [24] 1277 	push	ar7
      003137 C0 06            [24] 1278 	push	ar6
      003139 C0 05            [24] 1279 	push	ar5
      00313B 12 33 71         [24] 1280 	lcall	_spi_byte
      00313E D0 05            [24] 1281 	pop	ar5
      003140 D0 06            [24] 1282 	pop	ar6
      003142 D0 07            [24] 1283 	pop	ar7
                                   1284 ;	sdc.c:353: for(int i=3;i>=0;i--){
      003144 1D               [12] 1285 	dec	r5
      003145 BD FF 01         [24] 1286 	cjne	r5,#0xff,00125$
      003148 1E               [12] 1287 	dec	r6
      003149                       1288 00125$:
      003149 D0 07            [24] 1289 	pop	ar7
      00314B 80 B2            [24] 1290 	sjmp	00103$
      00314D                       1291 00101$:
                                   1292 ;	sdc.c:359: spi_byte((cmd == CMD_GO_IDLE_STATE)? 0x95:0xFF);
      00314D EF               [12] 1293 	mov	a,r7
      00314E 70 05            [24] 1294 	jnz	00107$
      003150 7E 95            [12] 1295 	mov	r6,#0x95
      003152 FF               [12] 1296 	mov	r7,a
      003153 80 04            [24] 1297 	sjmp	00108$
      003155                       1298 00107$:
      003155 7E FF            [12] 1299 	mov	r6,#0xff
      003157 7F 00            [12] 1300 	mov	r7,#0x00
      003159                       1301 00108$:
      003159 8E 82            [24] 1302 	mov	dpl,r6
      00315B 12 33 71         [24] 1303 	lcall	_spi_byte
                                   1304 ;	sdc.c:361: spi_byte( 0xFF );
      00315E 75 82 FF         [24] 1305 	mov	dpl,#0xff
      003161 12 33 71         [24] 1306 	lcall	_spi_byte
                                   1307 ;	sdc.c:363: return 0;
      003164 90 00 00         [24] 1308 	mov	dptr,#0x0000
                                   1309 ;	sdc.c:364: }
      003167 D0 08            [24] 1310 	pop	_bp
      003169 22               [24] 1311 	ret
                                   1312 ;------------------------------------------------------------
                                   1313 ;Allocation info for local variables in function 'delay'
                                   1314 ;------------------------------------------------------------
                                   1315 ;count                     Allocated to registers r7 
                                   1316 ;i                         Allocated to registers r5 r6 
                                   1317 ;------------------------------------------------------------
                                   1318 ;	sdc.c:370: static void delay(uint8_t count)
                                   1319 ;	-----------------------------------------
                                   1320 ;	 function delay
                                   1321 ;	-----------------------------------------
      00316A                       1322 _delay:
      00316A AF 82            [24] 1323 	mov	r7,dpl
                                   1324 ;	sdc.c:372: for(int i=0;i<count * 1000;i++){
      00316C 7D 00            [12] 1325 	mov	r5,#0x00
      00316E 7E 00            [12] 1326 	mov	r6,#0x00
      003170                       1327 00103$:
      003170 8F 03            [24] 1328 	mov	ar3,r7
      003172 7C 00            [12] 1329 	mov	r4,#0x00
      003174 C0 07            [24] 1330 	push	ar7
      003176 C0 06            [24] 1331 	push	ar6
      003178 C0 05            [24] 1332 	push	ar5
      00317A C0 03            [24] 1333 	push	ar3
      00317C C0 04            [24] 1334 	push	ar4
      00317E 90 03 E8         [24] 1335 	mov	dptr,#0x03e8
      003181 12 39 7D         [24] 1336 	lcall	__mulint
      003184 AB 82            [24] 1337 	mov	r3,dpl
      003186 AC 83            [24] 1338 	mov	r4,dph
      003188 15 81            [12] 1339 	dec	sp
      00318A 15 81            [12] 1340 	dec	sp
      00318C D0 05            [24] 1341 	pop	ar5
      00318E D0 06            [24] 1342 	pop	ar6
      003190 D0 07            [24] 1343 	pop	ar7
      003192 C3               [12] 1344 	clr	c
      003193 ED               [12] 1345 	mov	a,r5
      003194 9B               [12] 1346 	subb	a,r3
      003195 EE               [12] 1347 	mov	a,r6
      003196 64 80            [12] 1348 	xrl	a,#0x80
      003198 8C F0            [24] 1349 	mov	b,r4
      00319A 63 F0 80         [24] 1350 	xrl	b,#0x80
      00319D 95 F0            [12] 1351 	subb	a,b
      00319F 50 07            [24] 1352 	jnc	00105$
      0031A1 0D               [12] 1353 	inc	r5
      0031A2 BD 00 CB         [24] 1354 	cjne	r5,#0x00,00103$
      0031A5 0E               [12] 1355 	inc	r6
      0031A6 80 C8            [24] 1356 	sjmp	00103$
      0031A8                       1357 00105$:
                                   1358 ;	sdc.c:375: }
      0031A8 22               [24] 1359 	ret
                                   1360 	.area CSEG    (CODE)
                                   1361 	.area CONST   (CODE)
                                   1362 	.area XINIT   (CODE)
                                   1363 	.area CABS    (ABS,CODE)
