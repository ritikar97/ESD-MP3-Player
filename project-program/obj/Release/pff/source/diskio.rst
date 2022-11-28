                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module diskio
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sd_write_sector
                                     12 	.globl _sd_read_sector
                                     13 	.globl _sd_init
                                     14 	.globl _TF1
                                     15 	.globl _TR1
                                     16 	.globl _TF0
                                     17 	.globl _TR0
                                     18 	.globl _IE1
                                     19 	.globl _IT1
                                     20 	.globl _IE0
                                     21 	.globl _IT0
                                     22 	.globl _SM0
                                     23 	.globl _SM1
                                     24 	.globl _SM2
                                     25 	.globl _REN
                                     26 	.globl _TB8
                                     27 	.globl _RB8
                                     28 	.globl _TI
                                     29 	.globl _RI
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD0
                                     45 	.globl _TXD
                                     46 	.globl _RXD0
                                     47 	.globl _RXD
                                     48 	.globl _P3_7
                                     49 	.globl _P3_6
                                     50 	.globl _P3_5
                                     51 	.globl _P3_4
                                     52 	.globl _P3_3
                                     53 	.globl _P3_2
                                     54 	.globl _P3_1
                                     55 	.globl _P3_0
                                     56 	.globl _P2_7
                                     57 	.globl _P2_6
                                     58 	.globl _P2_5
                                     59 	.globl _P2_4
                                     60 	.globl _P2_3
                                     61 	.globl _P2_2
                                     62 	.globl _P2_1
                                     63 	.globl _P2_0
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _P0_7
                                     73 	.globl _P0_6
                                     74 	.globl _P0_5
                                     75 	.globl _P0_4
                                     76 	.globl _P0_3
                                     77 	.globl _P0_2
                                     78 	.globl _P0_1
                                     79 	.globl _P0_0
                                     80 	.globl _PS
                                     81 	.globl _PT1
                                     82 	.globl _PX1
                                     83 	.globl _PT0
                                     84 	.globl _PX0
                                     85 	.globl _EA
                                     86 	.globl _ES
                                     87 	.globl _ET1
                                     88 	.globl _EX1
                                     89 	.globl _ET0
                                     90 	.globl _EX0
                                     91 	.globl _BREG_F7
                                     92 	.globl _BREG_F6
                                     93 	.globl _BREG_F5
                                     94 	.globl _BREG_F4
                                     95 	.globl _BREG_F3
                                     96 	.globl _BREG_F2
                                     97 	.globl _BREG_F1
                                     98 	.globl _BREG_F0
                                     99 	.globl _P5_7
                                    100 	.globl _P5_6
                                    101 	.globl _P5_5
                                    102 	.globl _P5_4
                                    103 	.globl _P5_3
                                    104 	.globl _P5_2
                                    105 	.globl _P5_1
                                    106 	.globl _P5_0
                                    107 	.globl _P4_7
                                    108 	.globl _P4_6
                                    109 	.globl _P4_5
                                    110 	.globl _P4_4
                                    111 	.globl _P4_3
                                    112 	.globl _P4_2
                                    113 	.globl _P4_1
                                    114 	.globl _P4_0
                                    115 	.globl _PX0L
                                    116 	.globl _PT0L
                                    117 	.globl _PX1L
                                    118 	.globl _PT1L
                                    119 	.globl _PSL
                                    120 	.globl _PT2L
                                    121 	.globl _PPCL
                                    122 	.globl _EC
                                    123 	.globl _CCF0
                                    124 	.globl _CCF1
                                    125 	.globl _CCF2
                                    126 	.globl _CCF3
                                    127 	.globl _CCF4
                                    128 	.globl _CR
                                    129 	.globl _CF
                                    130 	.globl _TF2
                                    131 	.globl _EXF2
                                    132 	.globl _RCLK
                                    133 	.globl _TCLK
                                    134 	.globl _EXEN2
                                    135 	.globl _TR2
                                    136 	.globl _C_T2
                                    137 	.globl _CP_RL2
                                    138 	.globl _T2CON_7
                                    139 	.globl _T2CON_6
                                    140 	.globl _T2CON_5
                                    141 	.globl _T2CON_4
                                    142 	.globl _T2CON_3
                                    143 	.globl _T2CON_2
                                    144 	.globl _T2CON_1
                                    145 	.globl _T2CON_0
                                    146 	.globl _PT2
                                    147 	.globl _ET2
                                    148 	.globl _TMOD
                                    149 	.globl _TL1
                                    150 	.globl _TL0
                                    151 	.globl _TH1
                                    152 	.globl _TH0
                                    153 	.globl _TCON
                                    154 	.globl _SP
                                    155 	.globl _SCON
                                    156 	.globl _SBUF0
                                    157 	.globl _SBUF
                                    158 	.globl _PSW
                                    159 	.globl _PCON
                                    160 	.globl _P3
                                    161 	.globl _P2
                                    162 	.globl _P1
                                    163 	.globl _P0
                                    164 	.globl _IP
                                    165 	.globl _IE
                                    166 	.globl _DP0L
                                    167 	.globl _DPL
                                    168 	.globl _DP0H
                                    169 	.globl _DPH
                                    170 	.globl _B
                                    171 	.globl _ACC
                                    172 	.globl _EECON
                                    173 	.globl _KBF
                                    174 	.globl _KBE
                                    175 	.globl _KBLS
                                    176 	.globl _BRL
                                    177 	.globl _BDRCON
                                    178 	.globl _T2MOD
                                    179 	.globl _SPDAT
                                    180 	.globl _SPSTA
                                    181 	.globl _SPCON
                                    182 	.globl _SADEN
                                    183 	.globl _SADDR
                                    184 	.globl _WDTPRG
                                    185 	.globl _WDTRST
                                    186 	.globl _P5
                                    187 	.globl _P4
                                    188 	.globl _IPH1
                                    189 	.globl _IPL1
                                    190 	.globl _IPH0
                                    191 	.globl _IPL0
                                    192 	.globl _IEN1
                                    193 	.globl _IEN0
                                    194 	.globl _CMOD
                                    195 	.globl _CL
                                    196 	.globl _CH
                                    197 	.globl _CCON
                                    198 	.globl _CCAPM4
                                    199 	.globl _CCAPM3
                                    200 	.globl _CCAPM2
                                    201 	.globl _CCAPM1
                                    202 	.globl _CCAPM0
                                    203 	.globl _CCAP4L
                                    204 	.globl _CCAP3L
                                    205 	.globl _CCAP2L
                                    206 	.globl _CCAP1L
                                    207 	.globl _CCAP0L
                                    208 	.globl _CCAP4H
                                    209 	.globl _CCAP3H
                                    210 	.globl _CCAP2H
                                    211 	.globl _CCAP1H
                                    212 	.globl _CCAP0H
                                    213 	.globl _CKCON1
                                    214 	.globl _CKCON0
                                    215 	.globl _CKRL
                                    216 	.globl _AUXR1
                                    217 	.globl _AUXR
                                    218 	.globl _TH2
                                    219 	.globl _TL2
                                    220 	.globl _RCAP2H
                                    221 	.globl _RCAP2L
                                    222 	.globl _T2CON
                                    223 	.globl _disk_initialize
                                    224 	.globl _disk_readp
                                    225 	.globl _disk_writep
                                    226 ;--------------------------------------------------------
                                    227 ; special function registers
                                    228 ;--------------------------------------------------------
                                    229 	.area RSEG    (ABS,DATA)
      000000                        230 	.org 0x0000
                           0000C8   231 _T2CON	=	0x00c8
                           0000CA   232 _RCAP2L	=	0x00ca
                           0000CB   233 _RCAP2H	=	0x00cb
                           0000CC   234 _TL2	=	0x00cc
                           0000CD   235 _TH2	=	0x00cd
                           00008E   236 _AUXR	=	0x008e
                           0000A2   237 _AUXR1	=	0x00a2
                           000097   238 _CKRL	=	0x0097
                           00008F   239 _CKCON0	=	0x008f
                           0000AF   240 _CKCON1	=	0x00af
                           0000FA   241 _CCAP0H	=	0x00fa
                           0000FB   242 _CCAP1H	=	0x00fb
                           0000FC   243 _CCAP2H	=	0x00fc
                           0000FD   244 _CCAP3H	=	0x00fd
                           0000FE   245 _CCAP4H	=	0x00fe
                           0000EA   246 _CCAP0L	=	0x00ea
                           0000EB   247 _CCAP1L	=	0x00eb
                           0000EC   248 _CCAP2L	=	0x00ec
                           0000ED   249 _CCAP3L	=	0x00ed
                           0000EE   250 _CCAP4L	=	0x00ee
                           0000DA   251 _CCAPM0	=	0x00da
                           0000DB   252 _CCAPM1	=	0x00db
                           0000DC   253 _CCAPM2	=	0x00dc
                           0000DD   254 _CCAPM3	=	0x00dd
                           0000DE   255 _CCAPM4	=	0x00de
                           0000D8   256 _CCON	=	0x00d8
                           0000F9   257 _CH	=	0x00f9
                           0000E9   258 _CL	=	0x00e9
                           0000D9   259 _CMOD	=	0x00d9
                           0000A8   260 _IEN0	=	0x00a8
                           0000B1   261 _IEN1	=	0x00b1
                           0000B8   262 _IPL0	=	0x00b8
                           0000B7   263 _IPH0	=	0x00b7
                           0000B2   264 _IPL1	=	0x00b2
                           0000B3   265 _IPH1	=	0x00b3
                           0000C0   266 _P4	=	0x00c0
                           0000E8   267 _P5	=	0x00e8
                           0000A6   268 _WDTRST	=	0x00a6
                           0000A7   269 _WDTPRG	=	0x00a7
                           0000A9   270 _SADDR	=	0x00a9
                           0000B9   271 _SADEN	=	0x00b9
                           0000C3   272 _SPCON	=	0x00c3
                           0000C4   273 _SPSTA	=	0x00c4
                           0000C5   274 _SPDAT	=	0x00c5
                           0000C9   275 _T2MOD	=	0x00c9
                           00009B   276 _BDRCON	=	0x009b
                           00009A   277 _BRL	=	0x009a
                           00009C   278 _KBLS	=	0x009c
                           00009D   279 _KBE	=	0x009d
                           00009E   280 _KBF	=	0x009e
                           0000D2   281 _EECON	=	0x00d2
                           0000E0   282 _ACC	=	0x00e0
                           0000F0   283 _B	=	0x00f0
                           000083   284 _DPH	=	0x0083
                           000083   285 _DP0H	=	0x0083
                           000082   286 _DPL	=	0x0082
                           000082   287 _DP0L	=	0x0082
                           0000A8   288 _IE	=	0x00a8
                           0000B8   289 _IP	=	0x00b8
                           000080   290 _P0	=	0x0080
                           000090   291 _P1	=	0x0090
                           0000A0   292 _P2	=	0x00a0
                           0000B0   293 _P3	=	0x00b0
                           000087   294 _PCON	=	0x0087
                           0000D0   295 _PSW	=	0x00d0
                           000099   296 _SBUF	=	0x0099
                           000099   297 _SBUF0	=	0x0099
                           000098   298 _SCON	=	0x0098
                           000081   299 _SP	=	0x0081
                           000088   300 _TCON	=	0x0088
                           00008C   301 _TH0	=	0x008c
                           00008D   302 _TH1	=	0x008d
                           00008A   303 _TL0	=	0x008a
                           00008B   304 _TL1	=	0x008b
                           000089   305 _TMOD	=	0x0089
                                    306 ;--------------------------------------------------------
                                    307 ; special function bits
                                    308 ;--------------------------------------------------------
                                    309 	.area RSEG    (ABS,DATA)
      000000                        310 	.org 0x0000
                           0000AD   311 _ET2	=	0x00ad
                           0000BD   312 _PT2	=	0x00bd
                           0000C8   313 _T2CON_0	=	0x00c8
                           0000C9   314 _T2CON_1	=	0x00c9
                           0000CA   315 _T2CON_2	=	0x00ca
                           0000CB   316 _T2CON_3	=	0x00cb
                           0000CC   317 _T2CON_4	=	0x00cc
                           0000CD   318 _T2CON_5	=	0x00cd
                           0000CE   319 _T2CON_6	=	0x00ce
                           0000CF   320 _T2CON_7	=	0x00cf
                           0000C8   321 _CP_RL2	=	0x00c8
                           0000C9   322 _C_T2	=	0x00c9
                           0000CA   323 _TR2	=	0x00ca
                           0000CB   324 _EXEN2	=	0x00cb
                           0000CC   325 _TCLK	=	0x00cc
                           0000CD   326 _RCLK	=	0x00cd
                           0000CE   327 _EXF2	=	0x00ce
                           0000CF   328 _TF2	=	0x00cf
                           0000DF   329 _CF	=	0x00df
                           0000DE   330 _CR	=	0x00de
                           0000DC   331 _CCF4	=	0x00dc
                           0000DB   332 _CCF3	=	0x00db
                           0000DA   333 _CCF2	=	0x00da
                           0000D9   334 _CCF1	=	0x00d9
                           0000D8   335 _CCF0	=	0x00d8
                           0000AE   336 _EC	=	0x00ae
                           0000BE   337 _PPCL	=	0x00be
                           0000BD   338 _PT2L	=	0x00bd
                           0000BC   339 _PSL	=	0x00bc
                           0000BB   340 _PT1L	=	0x00bb
                           0000BA   341 _PX1L	=	0x00ba
                           0000B9   342 _PT0L	=	0x00b9
                           0000B8   343 _PX0L	=	0x00b8
                           0000C0   344 _P4_0	=	0x00c0
                           0000C1   345 _P4_1	=	0x00c1
                           0000C2   346 _P4_2	=	0x00c2
                           0000C3   347 _P4_3	=	0x00c3
                           0000C4   348 _P4_4	=	0x00c4
                           0000C5   349 _P4_5	=	0x00c5
                           0000C6   350 _P4_6	=	0x00c6
                           0000C7   351 _P4_7	=	0x00c7
                           0000E8   352 _P5_0	=	0x00e8
                           0000E9   353 _P5_1	=	0x00e9
                           0000EA   354 _P5_2	=	0x00ea
                           0000EB   355 _P5_3	=	0x00eb
                           0000EC   356 _P5_4	=	0x00ec
                           0000ED   357 _P5_5	=	0x00ed
                           0000EE   358 _P5_6	=	0x00ee
                           0000EF   359 _P5_7	=	0x00ef
                           0000F0   360 _BREG_F0	=	0x00f0
                           0000F1   361 _BREG_F1	=	0x00f1
                           0000F2   362 _BREG_F2	=	0x00f2
                           0000F3   363 _BREG_F3	=	0x00f3
                           0000F4   364 _BREG_F4	=	0x00f4
                           0000F5   365 _BREG_F5	=	0x00f5
                           0000F6   366 _BREG_F6	=	0x00f6
                           0000F7   367 _BREG_F7	=	0x00f7
                           0000A8   368 _EX0	=	0x00a8
                           0000A9   369 _ET0	=	0x00a9
                           0000AA   370 _EX1	=	0x00aa
                           0000AB   371 _ET1	=	0x00ab
                           0000AC   372 _ES	=	0x00ac
                           0000AF   373 _EA	=	0x00af
                           0000B8   374 _PX0	=	0x00b8
                           0000B9   375 _PT0	=	0x00b9
                           0000BA   376 _PX1	=	0x00ba
                           0000BB   377 _PT1	=	0x00bb
                           0000BC   378 _PS	=	0x00bc
                           000080   379 _P0_0	=	0x0080
                           000081   380 _P0_1	=	0x0081
                           000082   381 _P0_2	=	0x0082
                           000083   382 _P0_3	=	0x0083
                           000084   383 _P0_4	=	0x0084
                           000085   384 _P0_5	=	0x0085
                           000086   385 _P0_6	=	0x0086
                           000087   386 _P0_7	=	0x0087
                           000090   387 _P1_0	=	0x0090
                           000091   388 _P1_1	=	0x0091
                           000092   389 _P1_2	=	0x0092
                           000093   390 _P1_3	=	0x0093
                           000094   391 _P1_4	=	0x0094
                           000095   392 _P1_5	=	0x0095
                           000096   393 _P1_6	=	0x0096
                           000097   394 _P1_7	=	0x0097
                           0000A0   395 _P2_0	=	0x00a0
                           0000A1   396 _P2_1	=	0x00a1
                           0000A2   397 _P2_2	=	0x00a2
                           0000A3   398 _P2_3	=	0x00a3
                           0000A4   399 _P2_4	=	0x00a4
                           0000A5   400 _P2_5	=	0x00a5
                           0000A6   401 _P2_6	=	0x00a6
                           0000A7   402 _P2_7	=	0x00a7
                           0000B0   403 _P3_0	=	0x00b0
                           0000B1   404 _P3_1	=	0x00b1
                           0000B2   405 _P3_2	=	0x00b2
                           0000B3   406 _P3_3	=	0x00b3
                           0000B4   407 _P3_4	=	0x00b4
                           0000B5   408 _P3_5	=	0x00b5
                           0000B6   409 _P3_6	=	0x00b6
                           0000B7   410 _P3_7	=	0x00b7
                           0000B0   411 _RXD	=	0x00b0
                           0000B0   412 _RXD0	=	0x00b0
                           0000B1   413 _TXD	=	0x00b1
                           0000B1   414 _TXD0	=	0x00b1
                           0000B2   415 _INT0	=	0x00b2
                           0000B3   416 _INT1	=	0x00b3
                           0000B4   417 _T0	=	0x00b4
                           0000B5   418 _T1	=	0x00b5
                           0000B6   419 _WR	=	0x00b6
                           0000B7   420 _RD	=	0x00b7
                           0000D0   421 _P	=	0x00d0
                           0000D1   422 _F1	=	0x00d1
                           0000D2   423 _OV	=	0x00d2
                           0000D3   424 _RS0	=	0x00d3
                           0000D4   425 _RS1	=	0x00d4
                           0000D5   426 _F0	=	0x00d5
                           0000D6   427 _AC	=	0x00d6
                           0000D7   428 _CY	=	0x00d7
                           000098   429 _RI	=	0x0098
                           000099   430 _TI	=	0x0099
                           00009A   431 _RB8	=	0x009a
                           00009B   432 _TB8	=	0x009b
                           00009C   433 _REN	=	0x009c
                           00009D   434 _SM2	=	0x009d
                           00009E   435 _SM1	=	0x009e
                           00009F   436 _SM0	=	0x009f
                           000088   437 _IT0	=	0x0088
                           000089   438 _IE0	=	0x0089
                           00008A   439 _IT1	=	0x008a
                           00008B   440 _IE1	=	0x008b
                           00008C   441 _TR0	=	0x008c
                           00008D   442 _TF0	=	0x008d
                           00008E   443 _TR1	=	0x008e
                           00008F   444 _TF1	=	0x008f
                                    445 ;--------------------------------------------------------
                                    446 ; overlayable register banks
                                    447 ;--------------------------------------------------------
                                    448 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        449 	.ds 8
                                    450 ;--------------------------------------------------------
                                    451 ; internal ram data
                                    452 ;--------------------------------------------------------
                                    453 	.area DSEG    (DATA)
                                    454 ;--------------------------------------------------------
                                    455 ; overlayable items in internal ram
                                    456 ;--------------------------------------------------------
                                    457 ;--------------------------------------------------------
                                    458 ; indirectly addressable internal ram data
                                    459 ;--------------------------------------------------------
                                    460 	.area ISEG    (DATA)
                                    461 ;--------------------------------------------------------
                                    462 ; absolute internal ram data
                                    463 ;--------------------------------------------------------
                                    464 	.area IABS    (ABS,DATA)
                                    465 	.area IABS    (ABS,DATA)
                                    466 ;--------------------------------------------------------
                                    467 ; bit data
                                    468 ;--------------------------------------------------------
                                    469 	.area BSEG    (BIT)
                                    470 ;--------------------------------------------------------
                                    471 ; paged external ram data
                                    472 ;--------------------------------------------------------
                                    473 	.area PSEG    (PAG,XDATA)
                                    474 ;--------------------------------------------------------
                                    475 ; external ram data
                                    476 ;--------------------------------------------------------
                                    477 	.area XSEG    (XDATA)
                                    478 ;--------------------------------------------------------
                                    479 ; absolute external ram data
                                    480 ;--------------------------------------------------------
                                    481 	.area XABS    (ABS,XDATA)
                                    482 ;--------------------------------------------------------
                                    483 ; external initialized ram data
                                    484 ;--------------------------------------------------------
                                    485 	.area XISEG   (XDATA)
      000032                        486 _Stat:
      000032                        487 	.ds 1
                                    488 	.area HOME    (CODE)
                                    489 	.area GSINIT0 (CODE)
                                    490 	.area GSINIT1 (CODE)
                                    491 	.area GSINIT2 (CODE)
                                    492 	.area GSINIT3 (CODE)
                                    493 	.area GSINIT4 (CODE)
                                    494 	.area GSINIT5 (CODE)
                                    495 	.area GSINIT  (CODE)
                                    496 	.area GSFINAL (CODE)
                                    497 	.area CSEG    (CODE)
                                    498 ;--------------------------------------------------------
                                    499 ; global & static initialisations
                                    500 ;--------------------------------------------------------
                                    501 	.area HOME    (CODE)
                                    502 	.area GSINIT  (CODE)
                                    503 	.area GSFINAL (CODE)
                                    504 	.area GSINIT  (CODE)
                                    505 ;--------------------------------------------------------
                                    506 ; Home
                                    507 ;--------------------------------------------------------
                                    508 	.area HOME    (CODE)
                                    509 	.area HOME    (CODE)
                                    510 ;--------------------------------------------------------
                                    511 ; code
                                    512 ;--------------------------------------------------------
                                    513 	.area CSEG    (CODE)
                                    514 ;------------------------------------------------------------
                                    515 ;Allocation info for local variables in function 'disk_initialize'
                                    516 ;------------------------------------------------------------
                                    517 ;	pff\source\diskio.c:14: DSTATUS disk_initialize (void)
                                    518 ;	-----------------------------------------
                                    519 ;	 function disk_initialize
                                    520 ;	-----------------------------------------
      00097C                        521 _disk_initialize:
                           000007   522 	ar7 = 0x07
                           000006   523 	ar6 = 0x06
                           000005   524 	ar5 = 0x05
                           000004   525 	ar4 = 0x04
                           000003   526 	ar3 = 0x03
                           000002   527 	ar2 = 0x02
                           000001   528 	ar1 = 0x01
                           000000   529 	ar0 = 0x00
                                    530 ;	pff\source\diskio.c:17: if( !sd_init() )
      00097C 12 2D 35         [24]  531 	lcall	_sd_init
      00097F E5 82            [12]  532 	mov	a,dpl
      000981 85 83 F0         [24]  533 	mov	b,dph
      000984 45 F0            [12]  534 	orl	a,b
      000986 70 08            [24]  535 	jnz	00102$
                                    536 ;	pff\source\diskio.c:20: Stat &= ~STA_NOINIT;
      000988 90 00 32         [24]  537 	mov	dptr,#_Stat
      00098B E0               [24]  538 	movx	a,@dptr
      00098C 53 E0 FE         [24]  539 	anl	acc,#0xfe
      00098F F0               [24]  540 	movx	@dptr,a
      000990                        541 00102$:
                                    542 ;	pff\source\diskio.c:24: return( Stat );
      000990 90 00 32         [24]  543 	mov	dptr,#_Stat
      000993 E0               [24]  544 	movx	a,@dptr
                                    545 ;	pff\source\diskio.c:25: }
      000994 F5 82            [12]  546 	mov	dpl,a
      000996 22               [24]  547 	ret
                                    548 ;------------------------------------------------------------
                                    549 ;Allocation info for local variables in function 'disk_readp'
                                    550 ;------------------------------------------------------------
                                    551 ;sector                    Allocated to stack - _bp -6
                                    552 ;offset                    Allocated to stack - _bp -8
                                    553 ;count                     Allocated to stack - _bp -10
                                    554 ;buff                      Allocated to stack - _bp +1
                                    555 ;------------------------------------------------------------
                                    556 ;	pff\source\diskio.c:33: DRESULT disk_readp (
                                    557 ;	-----------------------------------------
                                    558 ;	 function disk_readp
                                    559 ;	-----------------------------------------
      000997                        560 _disk_readp:
      000997 C0 08            [24]  561 	push	_bp
      000999 85 81 08         [24]  562 	mov	_bp,sp
      00099C C0 82            [24]  563 	push	dpl
      00099E C0 83            [24]  564 	push	dph
      0009A0 C0 F0            [24]  565 	push	b
                                    566 ;	pff\source\diskio.c:41: if(count != 512){
      0009A2 E5 08            [12]  567 	mov	a,_bp
      0009A4 24 F6            [12]  568 	add	a,#0xf6
      0009A6 F8               [12]  569 	mov	r0,a
      0009A7 B6 00 06         [24]  570 	cjne	@r0,#0x00,00121$
      0009AA 08               [12]  571 	inc	r0
      0009AB B6 02 02         [24]  572 	cjne	@r0,#0x02,00121$
      0009AE 80 05            [24]  573 	sjmp	00102$
      0009B0                        574 00121$:
                                    575 ;	pff\source\diskio.c:42: return RES_PARERR;
      0009B0 75 82 03         [24]  576 	mov	dpl,#0x03
      0009B3 80 51            [24]  577 	sjmp	00107$
      0009B5                        578 00102$:
                                    579 ;	pff\source\diskio.c:46: if( Stat & STA_NOINIT ){
      0009B5 90 00 32         [24]  580 	mov	dptr,#_Stat
      0009B8 E0               [24]  581 	movx	a,@dptr
      0009B9 30 E0 05         [24]  582 	jnb	acc.0,00104$
                                    583 ;	pff\source\diskio.c:47: return( RES_NOTRDY );
      0009BC 75 82 02         [24]  584 	mov	dpl,#0x02
      0009BF 80 45            [24]  585 	sjmp	00107$
      0009C1                        586 00104$:
                                    587 ;	pff\source\diskio.c:51: if( sd_read_sector( sector + offset, buff ) ){
      0009C1 E5 08            [12]  588 	mov	a,_bp
      0009C3 24 F8            [12]  589 	add	a,#0xf8
      0009C5 F8               [12]  590 	mov	r0,a
      0009C6 86 03            [24]  591 	mov	ar3,@r0
      0009C8 08               [12]  592 	inc	r0
      0009C9 86 04            [24]  593 	mov	ar4,@r0
      0009CB E5 08            [12]  594 	mov	a,_bp
      0009CD 24 FA            [12]  595 	add	a,#0xfa
      0009CF F8               [12]  596 	mov	r0,a
      0009D0 86 02            [24]  597 	mov	ar2,@r0
      0009D2 08               [12]  598 	inc	r0
      0009D3 86 07            [24]  599 	mov	ar7,@r0
      0009D5 EB               [12]  600 	mov	a,r3
      0009D6 2A               [12]  601 	add	a,r2
      0009D7 FA               [12]  602 	mov	r2,a
      0009D8 EC               [12]  603 	mov	a,r4
      0009D9 3F               [12]  604 	addc	a,r7
      0009DA FF               [12]  605 	mov	r7,a
      0009DB A8 08            [24]  606 	mov	r0,_bp
      0009DD 08               [12]  607 	inc	r0
      0009DE E6               [12]  608 	mov	a,@r0
      0009DF C0 E0            [24]  609 	push	acc
      0009E1 08               [12]  610 	inc	r0
      0009E2 E6               [12]  611 	mov	a,@r0
      0009E3 C0 E0            [24]  612 	push	acc
      0009E5 08               [12]  613 	inc	r0
      0009E6 E6               [12]  614 	mov	a,@r0
      0009E7 C0 E0            [24]  615 	push	acc
      0009E9 8A 82            [24]  616 	mov	dpl,r2
      0009EB 8F 83            [24]  617 	mov	dph,r7
      0009ED 12 2E DA         [24]  618 	lcall	_sd_read_sector
      0009F0 AE 82            [24]  619 	mov	r6,dpl
      0009F2 AF 83            [24]  620 	mov	r7,dph
      0009F4 15 81            [12]  621 	dec	sp
      0009F6 15 81            [12]  622 	dec	sp
      0009F8 15 81            [12]  623 	dec	sp
      0009FA EE               [12]  624 	mov	a,r6
      0009FB 4F               [12]  625 	orl	a,r7
      0009FC 60 05            [24]  626 	jz	00106$
                                    627 ;	pff\source\diskio.c:52: return( RES_ERROR );
      0009FE 75 82 01         [24]  628 	mov	dpl,#0x01
      000A01 80 03            [24]  629 	sjmp	00107$
      000A03                        630 00106$:
                                    631 ;	pff\source\diskio.c:56: return( RES_OK );
      000A03 75 82 00         [24]  632 	mov	dpl,#0x00
      000A06                        633 00107$:
                                    634 ;	pff\source\diskio.c:57: }
      000A06 85 08 81         [24]  635 	mov	sp,_bp
      000A09 D0 08            [24]  636 	pop	_bp
      000A0B 22               [24]  637 	ret
                                    638 ;------------------------------------------------------------
                                    639 ;Allocation info for local variables in function 'disk_writep'
                                    640 ;------------------------------------------------------------
                                    641 ;sc                        Allocated to stack - _bp -6
                                    642 ;buff                      Allocated to registers r5 r6 r7 
                                    643 ;------------------------------------------------------------
                                    644 ;	pff\source\diskio.c:65: DRESULT disk_writep (
                                    645 ;	-----------------------------------------
                                    646 ;	 function disk_writep
                                    647 ;	-----------------------------------------
      000A0C                        648 _disk_writep:
      000A0C C0 08            [24]  649 	push	_bp
      000A0E 85 81 08         [24]  650 	mov	_bp,sp
      000A11 AD 82            [24]  651 	mov	r5,dpl
      000A13 AE 83            [24]  652 	mov	r6,dph
      000A15 AF F0            [24]  653 	mov	r7,b
                                    654 ;	pff\source\diskio.c:71: if( Stat & STA_NOINIT ){
      000A17 90 00 32         [24]  655 	mov	dptr,#_Stat
      000A1A E0               [24]  656 	movx	a,@dptr
      000A1B 30 E0 05         [24]  657 	jnb	acc.0,00102$
                                    658 ;	pff\source\diskio.c:72: return( RES_NOTRDY );
      000A1E 75 82 02         [24]  659 	mov	dpl,#0x02
      000A21 80 2D            [24]  660 	sjmp	00105$
      000A23                        661 00102$:
                                    662 ;	pff\source\diskio.c:76: if( sd_write_sector( sc, buff ) ){
      000A23 E5 08            [12]  663 	mov	a,_bp
      000A25 24 FA            [12]  664 	add	a,#0xfa
      000A27 F8               [12]  665 	mov	r0,a
      000A28 86 03            [24]  666 	mov	ar3,@r0
      000A2A 08               [12]  667 	inc	r0
      000A2B 86 04            [24]  668 	mov	ar4,@r0
      000A2D C0 05            [24]  669 	push	ar5
      000A2F C0 06            [24]  670 	push	ar6
      000A31 C0 07            [24]  671 	push	ar7
      000A33 8B 82            [24]  672 	mov	dpl,r3
      000A35 8C 83            [24]  673 	mov	dph,r4
      000A37 12 2F A0         [24]  674 	lcall	_sd_write_sector
      000A3A AE 82            [24]  675 	mov	r6,dpl
      000A3C AF 83            [24]  676 	mov	r7,dph
      000A3E 15 81            [12]  677 	dec	sp
      000A40 15 81            [12]  678 	dec	sp
      000A42 15 81            [12]  679 	dec	sp
      000A44 EE               [12]  680 	mov	a,r6
      000A45 4F               [12]  681 	orl	a,r7
      000A46 60 05            [24]  682 	jz	00104$
                                    683 ;	pff\source\diskio.c:77: return( RES_ERROR );
      000A48 75 82 01         [24]  684 	mov	dpl,#0x01
      000A4B 80 03            [24]  685 	sjmp	00105$
      000A4D                        686 00104$:
                                    687 ;	pff\source\diskio.c:81: return( RES_OK );
      000A4D 75 82 00         [24]  688 	mov	dpl,#0x00
      000A50                        689 00105$:
                                    690 ;	pff\source\diskio.c:82: }
      000A50 D0 08            [24]  691 	pop	_bp
      000A52 22               [24]  692 	ret
                                    693 	.area CSEG    (CODE)
                                    694 	.area CONST   (CODE)
                                    695 	.area XINIT   (CODE)
      003F93                        696 __xinit__Stat:
      003F93 01                     697 	.db #0x01	; 1
                                    698 	.area CABS    (ABS,CODE)
