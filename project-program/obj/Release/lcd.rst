                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module lcd
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TF1
                                     12 	.globl _TR1
                                     13 	.globl _TF0
                                     14 	.globl _TR0
                                     15 	.globl _IE1
                                     16 	.globl _IT1
                                     17 	.globl _IE0
                                     18 	.globl _IT0
                                     19 	.globl _SM0
                                     20 	.globl _SM1
                                     21 	.globl _SM2
                                     22 	.globl _REN
                                     23 	.globl _TB8
                                     24 	.globl _RB8
                                     25 	.globl _TI
                                     26 	.globl _RI
                                     27 	.globl _CY
                                     28 	.globl _AC
                                     29 	.globl _F0
                                     30 	.globl _RS1
                                     31 	.globl _RS0
                                     32 	.globl _OV
                                     33 	.globl _F1
                                     34 	.globl _P
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD0
                                     42 	.globl _TXD
                                     43 	.globl _RXD0
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _P2_7
                                     54 	.globl _P2_6
                                     55 	.globl _P2_5
                                     56 	.globl _P2_4
                                     57 	.globl _P2_3
                                     58 	.globl _P2_2
                                     59 	.globl _P2_1
                                     60 	.globl _P2_0
                                     61 	.globl _P1_7
                                     62 	.globl _P1_6
                                     63 	.globl _P1_5
                                     64 	.globl _P1_4
                                     65 	.globl _P1_3
                                     66 	.globl _P1_2
                                     67 	.globl _P1_1
                                     68 	.globl _P1_0
                                     69 	.globl _P0_7
                                     70 	.globl _P0_6
                                     71 	.globl _P0_5
                                     72 	.globl _P0_4
                                     73 	.globl _P0_3
                                     74 	.globl _P0_2
                                     75 	.globl _P0_1
                                     76 	.globl _P0_0
                                     77 	.globl _PS
                                     78 	.globl _PT1
                                     79 	.globl _PX1
                                     80 	.globl _PT0
                                     81 	.globl _PX0
                                     82 	.globl _EA
                                     83 	.globl _ES
                                     84 	.globl _ET1
                                     85 	.globl _EX1
                                     86 	.globl _ET0
                                     87 	.globl _EX0
                                     88 	.globl _BREG_F7
                                     89 	.globl _BREG_F6
                                     90 	.globl _BREG_F5
                                     91 	.globl _BREG_F4
                                     92 	.globl _BREG_F3
                                     93 	.globl _BREG_F2
                                     94 	.globl _BREG_F1
                                     95 	.globl _BREG_F0
                                     96 	.globl _P5_7
                                     97 	.globl _P5_6
                                     98 	.globl _P5_5
                                     99 	.globl _P5_4
                                    100 	.globl _P5_3
                                    101 	.globl _P5_2
                                    102 	.globl _P5_1
                                    103 	.globl _P5_0
                                    104 	.globl _P4_7
                                    105 	.globl _P4_6
                                    106 	.globl _P4_5
                                    107 	.globl _P4_4
                                    108 	.globl _P4_3
                                    109 	.globl _P4_2
                                    110 	.globl _P4_1
                                    111 	.globl _P4_0
                                    112 	.globl _PX0L
                                    113 	.globl _PT0L
                                    114 	.globl _PX1L
                                    115 	.globl _PT1L
                                    116 	.globl _PSL
                                    117 	.globl _PT2L
                                    118 	.globl _PPCL
                                    119 	.globl _EC
                                    120 	.globl _CCF0
                                    121 	.globl _CCF1
                                    122 	.globl _CCF2
                                    123 	.globl _CCF3
                                    124 	.globl _CCF4
                                    125 	.globl _CR
                                    126 	.globl _CF
                                    127 	.globl _TF2
                                    128 	.globl _EXF2
                                    129 	.globl _RCLK
                                    130 	.globl _TCLK
                                    131 	.globl _EXEN2
                                    132 	.globl _TR2
                                    133 	.globl _C_T2
                                    134 	.globl _CP_RL2
                                    135 	.globl _T2CON_7
                                    136 	.globl _T2CON_6
                                    137 	.globl _T2CON_5
                                    138 	.globl _T2CON_4
                                    139 	.globl _T2CON_3
                                    140 	.globl _T2CON_2
                                    141 	.globl _T2CON_1
                                    142 	.globl _T2CON_0
                                    143 	.globl _PT2
                                    144 	.globl _ET2
                                    145 	.globl _TMOD
                                    146 	.globl _TL1
                                    147 	.globl _TL0
                                    148 	.globl _TH1
                                    149 	.globl _TH0
                                    150 	.globl _TCON
                                    151 	.globl _SP
                                    152 	.globl _SCON
                                    153 	.globl _SBUF0
                                    154 	.globl _SBUF
                                    155 	.globl _PSW
                                    156 	.globl _PCON
                                    157 	.globl _P3
                                    158 	.globl _P2
                                    159 	.globl _P1
                                    160 	.globl _P0
                                    161 	.globl _IP
                                    162 	.globl _IE
                                    163 	.globl _DP0L
                                    164 	.globl _DPL
                                    165 	.globl _DP0H
                                    166 	.globl _DPH
                                    167 	.globl _B
                                    168 	.globl _ACC
                                    169 	.globl _EECON
                                    170 	.globl _KBF
                                    171 	.globl _KBE
                                    172 	.globl _KBLS
                                    173 	.globl _BRL
                                    174 	.globl _BDRCON
                                    175 	.globl _T2MOD
                                    176 	.globl _SPDAT
                                    177 	.globl _SPSTA
                                    178 	.globl _SPCON
                                    179 	.globl _SADEN
                                    180 	.globl _SADDR
                                    181 	.globl _WDTPRG
                                    182 	.globl _WDTRST
                                    183 	.globl _P5
                                    184 	.globl _P4
                                    185 	.globl _IPH1
                                    186 	.globl _IPL1
                                    187 	.globl _IPH0
                                    188 	.globl _IPL0
                                    189 	.globl _IEN1
                                    190 	.globl _IEN0
                                    191 	.globl _CMOD
                                    192 	.globl _CL
                                    193 	.globl _CH
                                    194 	.globl _CCON
                                    195 	.globl _CCAPM4
                                    196 	.globl _CCAPM3
                                    197 	.globl _CCAPM2
                                    198 	.globl _CCAPM1
                                    199 	.globl _CCAPM0
                                    200 	.globl _CCAP4L
                                    201 	.globl _CCAP3L
                                    202 	.globl _CCAP2L
                                    203 	.globl _CCAP1L
                                    204 	.globl _CCAP0L
                                    205 	.globl _CCAP4H
                                    206 	.globl _CCAP3H
                                    207 	.globl _CCAP2H
                                    208 	.globl _CCAP1H
                                    209 	.globl _CCAP0H
                                    210 	.globl _CKCON1
                                    211 	.globl _CKCON0
                                    212 	.globl _CKRL
                                    213 	.globl _AUXR1
                                    214 	.globl _AUXR
                                    215 	.globl _TH2
                                    216 	.globl _TL2
                                    217 	.globl _RCAP2H
                                    218 	.globl _RCAP2L
                                    219 	.globl _T2CON
                                    220 	.globl _lcd_set_ram_addr
                                    221 	.globl _lcd_read_data_from_ram
                                    222 	.globl _lcdinit
                                    223 	.globl _lcdbusywait
                                    224 	.globl _lcdgotoaddr
                                    225 	.globl _lcdgotoxy
                                    226 	.globl _lcdputch
                                    227 	.globl _lcdputstr
                                    228 	.globl _get_cursor_pos
                                    229 	.globl _lcdclear
                                    230 	.globl _lcdcreatechar
                                    231 	.globl _display_lcd_char
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
                                    457 ; internal ram data
                                    458 ;--------------------------------------------------------
                                    459 	.area DSEG    (DATA)
                                    460 ;--------------------------------------------------------
                                    461 ; overlayable items in internal ram
                                    462 ;--------------------------------------------------------
                                    463 ;--------------------------------------------------------
                                    464 ; indirectly addressable internal ram data
                                    465 ;--------------------------------------------------------
                                    466 	.area ISEG    (DATA)
                                    467 ;--------------------------------------------------------
                                    468 ; absolute internal ram data
                                    469 ;--------------------------------------------------------
                                    470 	.area IABS    (ABS,DATA)
                                    471 	.area IABS    (ABS,DATA)
                                    472 ;--------------------------------------------------------
                                    473 ; bit data
                                    474 ;--------------------------------------------------------
                                    475 	.area BSEG    (BIT)
                                    476 ;--------------------------------------------------------
                                    477 ; paged external ram data
                                    478 ;--------------------------------------------------------
                                    479 	.area PSEG    (PAG,XDATA)
                                    480 ;--------------------------------------------------------
                                    481 ; external ram data
                                    482 ;--------------------------------------------------------
                                    483 	.area XSEG    (XDATA)
                                    484 ;--------------------------------------------------------
                                    485 ; absolute external ram data
                                    486 ;--------------------------------------------------------
                                    487 	.area XABS    (ABS,XDATA)
                                    488 ;--------------------------------------------------------
                                    489 ; external initialized ram data
                                    490 ;--------------------------------------------------------
                                    491 	.area XISEG   (XDATA)
      000030                        492 _ptr:
      000030                        493 	.ds 2
                                    494 	.area HOME    (CODE)
                                    495 	.area GSINIT0 (CODE)
                                    496 	.area GSINIT1 (CODE)
                                    497 	.area GSINIT2 (CODE)
                                    498 	.area GSINIT3 (CODE)
                                    499 	.area GSINIT4 (CODE)
                                    500 	.area GSINIT5 (CODE)
                                    501 	.area GSINIT  (CODE)
                                    502 	.area GSFINAL (CODE)
                                    503 	.area CSEG    (CODE)
                                    504 ;--------------------------------------------------------
                                    505 ; global & static initialisations
                                    506 ;--------------------------------------------------------
                                    507 	.area HOME    (CODE)
                                    508 	.area GSINIT  (CODE)
                                    509 	.area GSFINAL (CODE)
                                    510 	.area GSINIT  (CODE)
                                    511 ;--------------------------------------------------------
                                    512 ; Home
                                    513 ;--------------------------------------------------------
                                    514 	.area HOME    (CODE)
                                    515 	.area HOME    (CODE)
                                    516 ;--------------------------------------------------------
                                    517 ; code
                                    518 ;--------------------------------------------------------
                                    519 	.area CSEG    (CODE)
                                    520 ;------------------------------------------------------------
                                    521 ;Allocation info for local variables in function 'lcd_set_ram_addr'
                                    522 ;------------------------------------------------------------
                                    523 ;addr                      Allocated to registers r7 
                                    524 ;------------------------------------------------------------
                                    525 ;	lcd.c:32: void lcd_set_ram_addr(uint8_t addr)
                                    526 ;	-----------------------------------------
                                    527 ;	 function lcd_set_ram_addr
                                    528 ;	-----------------------------------------
      000162                        529 _lcd_set_ram_addr:
                           000007   530 	ar7 = 0x07
                           000006   531 	ar6 = 0x06
                           000005   532 	ar5 = 0x05
                           000004   533 	ar4 = 0x04
                           000003   534 	ar3 = 0x03
                           000002   535 	ar2 = 0x02
                           000001   536 	ar1 = 0x01
                           000000   537 	ar0 = 0x00
      000162 AF 82            [24]  538 	mov	r7,dpl
                                    539 ;	lcd.c:35: lcdbusywait();
      000164 C0 07            [24]  540 	push	ar7
      000166 12 02 8C         [24]  541 	lcall	_lcdbusywait
      000169 D0 07            [24]  542 	pop	ar7
                                    543 ;	lcd.c:37: RS = 0;
                                    544 ;	assignBit
      00016B C2 94            [12]  545 	clr	_P1_4
                                    546 ;	lcd.c:38: RW = 0;
                                    547 ;	assignBit
      00016D C2 95            [12]  548 	clr	_P1_5
                                    549 ;	lcd.c:40: *ptr = addr;
      00016F 90 00 30         [24]  550 	mov	dptr,#_ptr
      000172 E0               [24]  551 	movx	a,@dptr
      000173 FD               [12]  552 	mov	r5,a
      000174 A3               [24]  553 	inc	dptr
      000175 E0               [24]  554 	movx	a,@dptr
      000176 FE               [12]  555 	mov	r6,a
      000177 7C 00            [12]  556 	mov	r4,#0x00
      000179 8D 82            [24]  557 	mov	dpl,r5
      00017B 8E 83            [24]  558 	mov	dph,r6
      00017D EF               [12]  559 	mov	a,r7
      00017E F0               [24]  560 	movx	@dptr,a
      00017F EC               [12]  561 	mov	a,r4
      000180 A3               [24]  562 	inc	dptr
      000181 F0               [24]  563 	movx	@dptr,a
                                    564 ;	lcd.c:41: }
      000182 22               [24]  565 	ret
                                    566 ;------------------------------------------------------------
                                    567 ;Allocation info for local variables in function 'lcd_read_data_from_ram'
                                    568 ;------------------------------------------------------------
                                    569 ;	lcd.c:45: uint8_t lcd_read_data_from_ram(void)
                                    570 ;	-----------------------------------------
                                    571 ;	 function lcd_read_data_from_ram
                                    572 ;	-----------------------------------------
      000183                        573 _lcd_read_data_from_ram:
                                    574 ;	lcd.c:47: RS = 0;
                                    575 ;	assignBit
      000183 C2 94            [12]  576 	clr	_P1_4
                                    577 ;	lcd.c:48: RW = 1;
                                    578 ;	assignBit
      000185 D2 95            [12]  579 	setb	_P1_5
                                    580 ;	lcd.c:50: lcdbusywait();
      000187 12 02 8C         [24]  581 	lcall	_lcdbusywait
                                    582 ;	lcd.c:52: RS = 1;
                                    583 ;	assignBit
      00018A D2 94            [12]  584 	setb	_P1_4
                                    585 ;	lcd.c:53: RW = 1;
                                    586 ;	assignBit
      00018C D2 95            [12]  587 	setb	_P1_5
                                    588 ;	lcd.c:55: return (uint8_t)*ptr;
      00018E 90 00 30         [24]  589 	mov	dptr,#_ptr
      000191 E0               [24]  590 	movx	a,@dptr
      000192 FE               [12]  591 	mov	r6,a
      000193 A3               [24]  592 	inc	dptr
      000194 E0               [24]  593 	movx	a,@dptr
      000195 FF               [12]  594 	mov	r7,a
      000196 8E 82            [24]  595 	mov	dpl,r6
      000198 8F 83            [24]  596 	mov	dph,r7
      00019A E0               [24]  597 	movx	a,@dptr
      00019B FE               [12]  598 	mov	r6,a
      00019C A3               [24]  599 	inc	dptr
      00019D E0               [24]  600 	movx	a,@dptr
      00019E 8E 82            [24]  601 	mov	dpl,r6
                                    602 ;	lcd.c:56: }
      0001A0 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'read_lcd'
                                    606 ;------------------------------------------------------------
                                    607 ;data                      Allocated to registers r5 r6 r7 
                                    608 ;------------------------------------------------------------
                                    609 ;	lcd.c:60: static inline void read_lcd(unsigned char *data)
                                    610 ;	-----------------------------------------
                                    611 ;	 function read_lcd
                                    612 ;	-----------------------------------------
      0001A1                        613 _read_lcd:
      0001A1 AD 82            [24]  614 	mov	r5,dpl
      0001A3 AE 83            [24]  615 	mov	r6,dph
      0001A5 AF F0            [24]  616 	mov	r7,b
                                    617 ;	lcd.c:62: RS = 0;
                                    618 ;	assignBit
      0001A7 C2 94            [12]  619 	clr	_P1_4
                                    620 ;	lcd.c:63: RW = 1;
                                    621 ;	assignBit
      0001A9 D2 95            [12]  622 	setb	_P1_5
                                    623 ;	lcd.c:64: *data = *ptr;
      0001AB 90 00 30         [24]  624 	mov	dptr,#_ptr
      0001AE E0               [24]  625 	movx	a,@dptr
      0001AF FB               [12]  626 	mov	r3,a
      0001B0 A3               [24]  627 	inc	dptr
      0001B1 E0               [24]  628 	movx	a,@dptr
      0001B2 FC               [12]  629 	mov	r4,a
      0001B3 8B 82            [24]  630 	mov	dpl,r3
      0001B5 8C 83            [24]  631 	mov	dph,r4
      0001B7 E0               [24]  632 	movx	a,@dptr
      0001B8 FB               [12]  633 	mov	r3,a
      0001B9 A3               [24]  634 	inc	dptr
      0001BA E0               [24]  635 	movx	a,@dptr
      0001BB 8D 82            [24]  636 	mov	dpl,r5
      0001BD 8E 83            [24]  637 	mov	dph,r6
      0001BF 8F F0            [24]  638 	mov	b,r7
      0001C1 EB               [12]  639 	mov	a,r3
      0001C2 12 38 59         [24]  640 	lcall	__gptrput
                                    641 ;	lcd.c:66: lcdbusywait();
                                    642 ;	lcd.c:67: }
      0001C5 02 02 8C         [24]  643 	ljmp	_lcdbusywait
                                    644 ;------------------------------------------------------------
                                    645 ;Allocation info for local variables in function 'write_data_lcd'
                                    646 ;------------------------------------------------------------
                                    647 ;data                      Allocated to registers r7 
                                    648 ;------------------------------------------------------------
                                    649 ;	lcd.c:71: static inline void write_data_lcd(unsigned char data)
                                    650 ;	-----------------------------------------
                                    651 ;	 function write_data_lcd
                                    652 ;	-----------------------------------------
      0001C8                        653 _write_data_lcd:
      0001C8 AF 82            [24]  654 	mov	r7,dpl
                                    655 ;	lcd.c:73: RS = 1;
                                    656 ;	assignBit
      0001CA D2 94            [12]  657 	setb	_P1_4
                                    658 ;	lcd.c:74: RW = 0;
                                    659 ;	assignBit
      0001CC C2 95            [12]  660 	clr	_P1_5
                                    661 ;	lcd.c:75: *ptr=data;
      0001CE 90 00 30         [24]  662 	mov	dptr,#_ptr
      0001D1 E0               [24]  663 	movx	a,@dptr
      0001D2 FD               [12]  664 	mov	r5,a
      0001D3 A3               [24]  665 	inc	dptr
      0001D4 E0               [24]  666 	movx	a,@dptr
      0001D5 FE               [12]  667 	mov	r6,a
      0001D6 7C 00            [12]  668 	mov	r4,#0x00
      0001D8 8D 82            [24]  669 	mov	dpl,r5
      0001DA 8E 83            [24]  670 	mov	dph,r6
      0001DC EF               [12]  671 	mov	a,r7
      0001DD F0               [24]  672 	movx	@dptr,a
      0001DE EC               [12]  673 	mov	a,r4
      0001DF A3               [24]  674 	inc	dptr
      0001E0 F0               [24]  675 	movx	@dptr,a
                                    676 ;	lcd.c:77: lcdbusywait();
                                    677 ;	lcd.c:78: }
      0001E1 02 02 8C         [24]  678 	ljmp	_lcdbusywait
                                    679 ;------------------------------------------------------------
                                    680 ;Allocation info for local variables in function 'write_cmd_lcd'
                                    681 ;------------------------------------------------------------
                                    682 ;data                      Allocated to registers r7 
                                    683 ;------------------------------------------------------------
                                    684 ;	lcd.c:82: static inline void write_cmd_lcd(unsigned char data)
                                    685 ;	-----------------------------------------
                                    686 ;	 function write_cmd_lcd
                                    687 ;	-----------------------------------------
      0001E4                        688 _write_cmd_lcd:
      0001E4 AF 82            [24]  689 	mov	r7,dpl
                                    690 ;	lcd.c:84: RS = 0;
                                    691 ;	assignBit
      0001E6 C2 94            [12]  692 	clr	_P1_4
                                    693 ;	lcd.c:85: RW = 0;
                                    694 ;	assignBit
      0001E8 C2 95            [12]  695 	clr	_P1_5
                                    696 ;	lcd.c:86: *ptr=data;
      0001EA 90 00 30         [24]  697 	mov	dptr,#_ptr
      0001ED E0               [24]  698 	movx	a,@dptr
      0001EE FD               [12]  699 	mov	r5,a
      0001EF A3               [24]  700 	inc	dptr
      0001F0 E0               [24]  701 	movx	a,@dptr
      0001F1 FE               [12]  702 	mov	r6,a
      0001F2 7C 00            [12]  703 	mov	r4,#0x00
      0001F4 8D 82            [24]  704 	mov	dpl,r5
      0001F6 8E 83            [24]  705 	mov	dph,r6
      0001F8 EF               [12]  706 	mov	a,r7
      0001F9 F0               [24]  707 	movx	@dptr,a
      0001FA EC               [12]  708 	mov	a,r4
      0001FB A3               [24]  709 	inc	dptr
      0001FC F0               [24]  710 	movx	@dptr,a
                                    711 ;	lcd.c:88: lcdbusywait();
                                    712 ;	lcd.c:89: }
      0001FD 02 02 8C         [24]  713 	ljmp	_lcdbusywait
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'lcdinit'
                                    716 ;------------------------------------------------------------
                                    717 ;__1310720001              Allocated to registers 
                                    718 ;data                      Allocated to registers 
                                    719 ;__1310720003              Allocated to registers 
                                    720 ;data                      Allocated to registers 
                                    721 ;__1310720005              Allocated to registers 
                                    722 ;data                      Allocated to registers 
                                    723 ;__1310720007              Allocated to registers 
                                    724 ;data                      Allocated to registers 
                                    725 ;__1310720009              Allocated to registers 
                                    726 ;data                      Allocated to registers 
                                    727 ;------------------------------------------------------------
                                    728 ;	lcd.c:95: void lcdinit()
                                    729 ;	-----------------------------------------
                                    730 ;	 function lcdinit
                                    731 ;	-----------------------------------------
      000200                        732 _lcdinit:
                                    733 ;	lcd.c:84: RS = 0;
                                    734 ;	assignBit
      000200 C2 94            [12]  735 	clr	_P1_4
                                    736 ;	lcd.c:85: RW = 0;
                                    737 ;	assignBit
      000202 C2 95            [12]  738 	clr	_P1_5
                                    739 ;	lcd.c:86: *ptr=data;
      000204 90 00 30         [24]  740 	mov	dptr,#_ptr
      000207 E0               [24]  741 	movx	a,@dptr
      000208 FE               [12]  742 	mov	r6,a
      000209 A3               [24]  743 	inc	dptr
      00020A E0               [24]  744 	movx	a,@dptr
      00020B FF               [12]  745 	mov	r7,a
      00020C 7C 30            [12]  746 	mov	r4,#0x30
      00020E 7D 00            [12]  747 	mov	r5,#0x00
      000210 8E 82            [24]  748 	mov	dpl,r6
      000212 8F 83            [24]  749 	mov	dph,r7
      000214 EC               [12]  750 	mov	a,r4
      000215 F0               [24]  751 	movx	@dptr,a
      000216 ED               [12]  752 	mov	a,r5
      000217 A3               [24]  753 	inc	dptr
      000218 F0               [24]  754 	movx	@dptr,a
                                    755 ;	lcd.c:88: lcdbusywait();
      000219 12 02 8C         [24]  756 	lcall	_lcdbusywait
                                    757 ;	lcd.c:84: RS = 0;
                                    758 ;	assignBit
      00021C C2 94            [12]  759 	clr	_P1_4
                                    760 ;	lcd.c:85: RW = 0;
                                    761 ;	assignBit
      00021E C2 95            [12]  762 	clr	_P1_5
                                    763 ;	lcd.c:86: *ptr=data;
      000220 90 00 30         [24]  764 	mov	dptr,#_ptr
      000223 E0               [24]  765 	movx	a,@dptr
      000224 FE               [12]  766 	mov	r6,a
      000225 A3               [24]  767 	inc	dptr
      000226 E0               [24]  768 	movx	a,@dptr
      000227 FF               [12]  769 	mov	r7,a
      000228 7C 38            [12]  770 	mov	r4,#0x38
      00022A 7D 00            [12]  771 	mov	r5,#0x00
      00022C 8E 82            [24]  772 	mov	dpl,r6
      00022E 8F 83            [24]  773 	mov	dph,r7
      000230 EC               [12]  774 	mov	a,r4
      000231 F0               [24]  775 	movx	@dptr,a
      000232 ED               [12]  776 	mov	a,r5
      000233 A3               [24]  777 	inc	dptr
      000234 F0               [24]  778 	movx	@dptr,a
                                    779 ;	lcd.c:88: lcdbusywait();
      000235 12 02 8C         [24]  780 	lcall	_lcdbusywait
                                    781 ;	lcd.c:84: RS = 0;
                                    782 ;	assignBit
      000238 C2 94            [12]  783 	clr	_P1_4
                                    784 ;	lcd.c:85: RW = 0;
                                    785 ;	assignBit
      00023A C2 95            [12]  786 	clr	_P1_5
                                    787 ;	lcd.c:86: *ptr=data;
      00023C 90 00 30         [24]  788 	mov	dptr,#_ptr
      00023F E0               [24]  789 	movx	a,@dptr
      000240 FE               [12]  790 	mov	r6,a
      000241 A3               [24]  791 	inc	dptr
      000242 E0               [24]  792 	movx	a,@dptr
      000243 FF               [12]  793 	mov	r7,a
      000244 7C 0F            [12]  794 	mov	r4,#0x0f
      000246 7D 00            [12]  795 	mov	r5,#0x00
      000248 8E 82            [24]  796 	mov	dpl,r6
      00024A 8F 83            [24]  797 	mov	dph,r7
      00024C EC               [12]  798 	mov	a,r4
      00024D F0               [24]  799 	movx	@dptr,a
      00024E ED               [12]  800 	mov	a,r5
      00024F A3               [24]  801 	inc	dptr
      000250 F0               [24]  802 	movx	@dptr,a
                                    803 ;	lcd.c:88: lcdbusywait();
      000251 12 02 8C         [24]  804 	lcall	_lcdbusywait
                                    805 ;	lcd.c:84: RS = 0;
                                    806 ;	assignBit
      000254 C2 94            [12]  807 	clr	_P1_4
                                    808 ;	lcd.c:85: RW = 0;
                                    809 ;	assignBit
      000256 C2 95            [12]  810 	clr	_P1_5
                                    811 ;	lcd.c:86: *ptr=data;
      000258 90 00 30         [24]  812 	mov	dptr,#_ptr
      00025B E0               [24]  813 	movx	a,@dptr
      00025C FE               [12]  814 	mov	r6,a
      00025D A3               [24]  815 	inc	dptr
      00025E E0               [24]  816 	movx	a,@dptr
      00025F FF               [12]  817 	mov	r7,a
      000260 7C 01            [12]  818 	mov	r4,#0x01
      000262 7D 00            [12]  819 	mov	r5,#0x00
      000264 8E 82            [24]  820 	mov	dpl,r6
      000266 8F 83            [24]  821 	mov	dph,r7
      000268 EC               [12]  822 	mov	a,r4
      000269 F0               [24]  823 	movx	@dptr,a
      00026A ED               [12]  824 	mov	a,r5
      00026B A3               [24]  825 	inc	dptr
      00026C F0               [24]  826 	movx	@dptr,a
                                    827 ;	lcd.c:88: lcdbusywait();
      00026D 12 02 8C         [24]  828 	lcall	_lcdbusywait
                                    829 ;	lcd.c:84: RS = 0;
                                    830 ;	assignBit
      000270 C2 94            [12]  831 	clr	_P1_4
                                    832 ;	lcd.c:85: RW = 0;
                                    833 ;	assignBit
      000272 C2 95            [12]  834 	clr	_P1_5
                                    835 ;	lcd.c:86: *ptr=data;
      000274 90 00 30         [24]  836 	mov	dptr,#_ptr
      000277 E0               [24]  837 	movx	a,@dptr
      000278 FE               [12]  838 	mov	r6,a
      000279 A3               [24]  839 	inc	dptr
      00027A E0               [24]  840 	movx	a,@dptr
      00027B FF               [12]  841 	mov	r7,a
      00027C 7C 80            [12]  842 	mov	r4,#0x80
      00027E 7D 00            [12]  843 	mov	r5,#0x00
      000280 8E 82            [24]  844 	mov	dpl,r6
      000282 8F 83            [24]  845 	mov	dph,r7
      000284 EC               [12]  846 	mov	a,r4
      000285 F0               [24]  847 	movx	@dptr,a
      000286 ED               [12]  848 	mov	a,r5
      000287 A3               [24]  849 	inc	dptr
      000288 F0               [24]  850 	movx	@dptr,a
                                    851 ;	lcd.c:88: lcdbusywait();
                                    852 ;	lcd.c:106: write_cmd_lcd(0x80);
                                    853 ;	lcd.c:108: }
      000289 02 02 8C         [24]  854 	ljmp	_lcdbusywait
                                    855 ;------------------------------------------------------------
                                    856 ;Allocation info for local variables in function 'lcdbusywait'
                                    857 ;------------------------------------------------------------
                                    858 ;	lcd.c:122: void lcdbusywait()
                                    859 ;	-----------------------------------------
                                    860 ;	 function lcdbusywait
                                    861 ;	-----------------------------------------
      00028C                        862 _lcdbusywait:
                                    863 ;	lcd.c:124: RS = 0;
                                    864 ;	assignBit
      00028C C2 94            [12]  865 	clr	_P1_4
                                    866 ;	lcd.c:125: RW = 1;
                                    867 ;	assignBit
      00028E D2 95            [12]  868 	setb	_P1_5
                                    869 ;	lcd.c:126: while(*ptr & 0x80);
      000290                        870 00101$:
      000290 90 00 30         [24]  871 	mov	dptr,#_ptr
      000293 E0               [24]  872 	movx	a,@dptr
      000294 FE               [12]  873 	mov	r6,a
      000295 A3               [24]  874 	inc	dptr
      000296 E0               [24]  875 	movx	a,@dptr
      000297 FF               [12]  876 	mov	r7,a
      000298 8E 82            [24]  877 	mov	dpl,r6
      00029A 8F 83            [24]  878 	mov	dph,r7
      00029C E0               [24]  879 	movx	a,@dptr
      00029D FE               [12]  880 	mov	r6,a
      00029E A3               [24]  881 	inc	dptr
      00029F E0               [24]  882 	movx	a,@dptr
      0002A0 EE               [12]  883 	mov	a,r6
      0002A1 20 E7 EC         [24]  884 	jb	acc.7,00101$
                                    885 ;	lcd.c:127: }
      0002A4 22               [24]  886 	ret
                                    887 ;------------------------------------------------------------
                                    888 ;Allocation info for local variables in function 'lcdgotoaddr'
                                    889 ;------------------------------------------------------------
                                    890 ;addr                      Allocated to registers r7 
                                    891 ;__1310720011              Allocated to registers r7 
                                    892 ;data                      Allocated to registers 
                                    893 ;------------------------------------------------------------
                                    894 ;	lcd.c:132: void lcdgotoaddr(unsigned char addr)
                                    895 ;	-----------------------------------------
                                    896 ;	 function lcdgotoaddr
                                    897 ;	-----------------------------------------
      0002A5                        898 _lcdgotoaddr:
      0002A5 AF 82            [24]  899 	mov	r7,dpl
                                    900 ;	lcd.c:135: write_cmd_lcd(0x80 | addr);
      0002A7 43 07 80         [24]  901 	orl	ar7,#0x80
                                    902 ;	lcd.c:84: RS = 0;
                                    903 ;	assignBit
      0002AA C2 94            [12]  904 	clr	_P1_4
                                    905 ;	lcd.c:85: RW = 0;
                                    906 ;	assignBit
      0002AC C2 95            [12]  907 	clr	_P1_5
                                    908 ;	lcd.c:86: *ptr=data;
      0002AE 90 00 30         [24]  909 	mov	dptr,#_ptr
      0002B1 E0               [24]  910 	movx	a,@dptr
      0002B2 FD               [12]  911 	mov	r5,a
      0002B3 A3               [24]  912 	inc	dptr
      0002B4 E0               [24]  913 	movx	a,@dptr
      0002B5 FE               [12]  914 	mov	r6,a
      0002B6 7C 00            [12]  915 	mov	r4,#0x00
      0002B8 8D 82            [24]  916 	mov	dpl,r5
      0002BA 8E 83            [24]  917 	mov	dph,r6
      0002BC EF               [12]  918 	mov	a,r7
      0002BD F0               [24]  919 	movx	@dptr,a
      0002BE EC               [12]  920 	mov	a,r4
      0002BF A3               [24]  921 	inc	dptr
      0002C0 F0               [24]  922 	movx	@dptr,a
                                    923 ;	lcd.c:88: lcdbusywait();
                                    924 ;	lcd.c:136: return;
                                    925 ;	lcd.c:137: }
      0002C1 02 02 8C         [24]  926 	ljmp	_lcdbusywait
                                    927 ;------------------------------------------------------------
                                    928 ;Allocation info for local variables in function 'lcdgotoxy'
                                    929 ;------------------------------------------------------------
                                    930 ;column                    Allocated to stack - _bp -3
                                    931 ;row                       Allocated to registers r7 
                                    932 ;------------------------------------------------------------
                                    933 ;	lcd.c:144: void lcdgotoxy(unsigned char row, unsigned char column)
                                    934 ;	-----------------------------------------
                                    935 ;	 function lcdgotoxy
                                    936 ;	-----------------------------------------
      0002C4                        937 _lcdgotoxy:
      0002C4 C0 08            [24]  938 	push	_bp
      0002C6 85 81 08         [24]  939 	mov	_bp,sp
                                    940 ;	lcd.c:146: switch(row)
      0002C9 E5 82            [12]  941 	mov	a,dpl
      0002CB FF               [12]  942 	mov	r7,a
      0002CC 24 FC            [12]  943 	add	a,#0xff - 0x03
      0002CE 40 4B            [24]  944 	jc	00107$
      0002D0 EF               [12]  945 	mov	a,r7
      0002D1 2F               [12]  946 	add	a,r7
                                    947 ;	lcd.c:148: case 0:
      0002D2 90 02 D6         [24]  948 	mov	dptr,#00114$
      0002D5 73               [24]  949 	jmp	@a+dptr
      0002D6                        950 00114$:
      0002D6 80 06            [24]  951 	sjmp	00101$
      0002D8 80 10            [24]  952 	sjmp	00102$
      0002DA 80 1F            [24]  953 	sjmp	00103$
      0002DC 80 2E            [24]  954 	sjmp	00104$
      0002DE                        955 00101$:
                                    956 ;	lcd.c:150: lcdgotoaddr(column);
      0002DE E5 08            [12]  957 	mov	a,_bp
      0002E0 24 FD            [12]  958 	add	a,#0xfd
      0002E2 F8               [12]  959 	mov	r0,a
      0002E3 86 82            [24]  960 	mov	dpl,@r0
      0002E5 12 02 A5         [24]  961 	lcall	_lcdgotoaddr
                                    962 ;	lcd.c:151: break;
                                    963 ;	lcd.c:153: case 1:
      0002E8 80 31            [24]  964 	sjmp	00107$
      0002EA                        965 00102$:
                                    966 ;	lcd.c:155: lcdgotoaddr(0x40 + column);
      0002EA E5 08            [12]  967 	mov	a,_bp
      0002EC 24 FD            [12]  968 	add	a,#0xfd
      0002EE F8               [12]  969 	mov	r0,a
      0002EF 86 07            [24]  970 	mov	ar7,@r0
      0002F1 74 40            [12]  971 	mov	a,#0x40
      0002F3 2F               [12]  972 	add	a,r7
      0002F4 F5 82            [12]  973 	mov	dpl,a
      0002F6 12 02 A5         [24]  974 	lcall	_lcdgotoaddr
                                    975 ;	lcd.c:156: break;
                                    976 ;	lcd.c:158: case 2:
      0002F9 80 20            [24]  977 	sjmp	00107$
      0002FB                        978 00103$:
                                    979 ;	lcd.c:160: lcdgotoaddr(0x10 + column);
      0002FB E5 08            [12]  980 	mov	a,_bp
      0002FD 24 FD            [12]  981 	add	a,#0xfd
      0002FF F8               [12]  982 	mov	r0,a
      000300 86 07            [24]  983 	mov	ar7,@r0
      000302 74 10            [12]  984 	mov	a,#0x10
      000304 2F               [12]  985 	add	a,r7
      000305 F5 82            [12]  986 	mov	dpl,a
      000307 12 02 A5         [24]  987 	lcall	_lcdgotoaddr
                                    988 ;	lcd.c:161: break;
                                    989 ;	lcd.c:163: case 3:
      00030A 80 0F            [24]  990 	sjmp	00107$
      00030C                        991 00104$:
                                    992 ;	lcd.c:165: lcdgotoaddr(0x50 + column);
      00030C E5 08            [12]  993 	mov	a,_bp
      00030E 24 FD            [12]  994 	add	a,#0xfd
      000310 F8               [12]  995 	mov	r0,a
      000311 86 07            [24]  996 	mov	ar7,@r0
      000313 74 50            [12]  997 	mov	a,#0x50
      000315 2F               [12]  998 	add	a,r7
      000316 F5 82            [12]  999 	mov	dpl,a
      000318 12 02 A5         [24] 1000 	lcall	_lcdgotoaddr
                                   1001 ;	lcd.c:171: }
      00031B                       1002 00107$:
                                   1003 ;	lcd.c:172: }
      00031B D0 08            [24] 1004 	pop	_bp
      00031D 22               [24] 1005 	ret
                                   1006 ;------------------------------------------------------------
                                   1007 ;Allocation info for local variables in function 'lcdputch'
                                   1008 ;------------------------------------------------------------
                                   1009 ;cc                        Allocated to registers r7 
                                   1010 ;__1310720013              Allocated to registers 
                                   1011 ;data                      Allocated to registers 
                                   1012 ;------------------------------------------------------------
                                   1013 ;	lcd.c:177: void lcdputch(char cc)
                                   1014 ;	-----------------------------------------
                                   1015 ;	 function lcdputch
                                   1016 ;	-----------------------------------------
      00031E                       1017 _lcdputch:
      00031E AF 82            [24] 1018 	mov	r7,dpl
                                   1019 ;	lcd.c:73: RS = 1;
                                   1020 ;	assignBit
      000320 D2 94            [12] 1021 	setb	_P1_4
                                   1022 ;	lcd.c:74: RW = 0;
                                   1023 ;	assignBit
      000322 C2 95            [12] 1024 	clr	_P1_5
                                   1025 ;	lcd.c:75: *ptr=data;
      000324 90 00 30         [24] 1026 	mov	dptr,#_ptr
      000327 E0               [24] 1027 	movx	a,@dptr
      000328 FD               [12] 1028 	mov	r5,a
      000329 A3               [24] 1029 	inc	dptr
      00032A E0               [24] 1030 	movx	a,@dptr
      00032B FE               [12] 1031 	mov	r6,a
      00032C 7C 00            [12] 1032 	mov	r4,#0x00
      00032E 8D 82            [24] 1033 	mov	dpl,r5
      000330 8E 83            [24] 1034 	mov	dph,r6
      000332 EF               [12] 1035 	mov	a,r7
      000333 F0               [24] 1036 	movx	@dptr,a
      000334 EC               [12] 1037 	mov	a,r4
      000335 A3               [24] 1038 	inc	dptr
      000336 F0               [24] 1039 	movx	@dptr,a
                                   1040 ;	lcd.c:77: lcdbusywait();
                                   1041 ;	lcd.c:179: write_data_lcd(cc);
                                   1042 ;	lcd.c:180: }
      000337 02 02 8C         [24] 1043 	ljmp	_lcdbusywait
                                   1044 ;------------------------------------------------------------
                                   1045 ;Allocation info for local variables in function 'lcdputstr'
                                   1046 ;------------------------------------------------------------
                                   1047 ;ss                        Allocated to registers 
                                   1048 ;cursor_pos                Allocated to registers r4 
                                   1049 ;------------------------------------------------------------
                                   1050 ;	lcd.c:187: void lcdputstr(char *ss)
                                   1051 ;	-----------------------------------------
                                   1052 ;	 function lcdputstr
                                   1053 ;	-----------------------------------------
      00033A                       1054 _lcdputstr:
      00033A AD 82            [24] 1055 	mov	r5,dpl
      00033C AE 83            [24] 1056 	mov	r6,dph
      00033E AF F0            [24] 1057 	mov	r7,b
                                   1058 ;	lcd.c:189: while(*ss){
      000340                       1059 00107$:
      000340 8D 82            [24] 1060 	mov	dpl,r5
      000342 8E 83            [24] 1061 	mov	dph,r6
      000344 8F F0            [24] 1062 	mov	b,r7
      000346 12 3A A5         [24] 1063 	lcall	__gptrget
      000349 70 01            [24] 1064 	jnz	00137$
      00034B 22               [24] 1065 	ret
      00034C                       1066 00137$:
                                   1067 ;	lcd.c:192: cursor_pos = get_cursor_pos();
      00034C C0 07            [24] 1068 	push	ar7
      00034E C0 06            [24] 1069 	push	ar6
      000350 C0 05            [24] 1070 	push	ar5
      000352 12 04 1F         [24] 1071 	lcall	_get_cursor_pos
      000355 AC 82            [24] 1072 	mov	r4,dpl
      000357 D0 05            [24] 1073 	pop	ar5
      000359 D0 06            [24] 1074 	pop	ar6
      00035B D0 07            [24] 1075 	pop	ar7
                                   1076 ;	lcd.c:193: switch(cursor_pos){
      00035D BC 0F 02         [24] 1077 	cjne	r4,#0x0f,00138$
      000360 80 12            [24] 1078 	sjmp	00101$
      000362                       1079 00138$:
      000362 BC 1F 02         [24] 1080 	cjne	r4,#0x1f,00139$
      000365 80 52            [24] 1081 	sjmp	00103$
      000367                       1082 00139$:
      000367 BC 4F 02         [24] 1083 	cjne	r4,#0x4f,00140$
      00036A 80 2B            [24] 1084 	sjmp	00102$
      00036C                       1085 00140$:
      00036C BC 5F 02         [24] 1086 	cjne	r4,#0x5f,00141$
      00036F 80 6A            [24] 1087 	sjmp	00104$
      000371                       1088 00141$:
      000371 02 03 FD         [24] 1089 	ljmp	00105$
                                   1090 ;	lcd.c:194: case 0xF:{
      000374                       1091 00101$:
                                   1092 ;	lcd.c:195: lcdputch(*ss);
      000374 8D 82            [24] 1093 	mov	dpl,r5
      000376 8E 83            [24] 1094 	mov	dph,r6
      000378 8F F0            [24] 1095 	mov	b,r7
      00037A 12 3A A5         [24] 1096 	lcall	__gptrget
      00037D F5 82            [12] 1097 	mov	dpl,a
      00037F C0 07            [24] 1098 	push	ar7
      000381 C0 06            [24] 1099 	push	ar6
      000383 C0 05            [24] 1100 	push	ar5
      000385 12 03 1E         [24] 1101 	lcall	_lcdputch
                                   1102 ;	lcd.c:196: lcdgotoaddr(0x40);
      000388 75 82 40         [24] 1103 	mov	dpl,#0x40
      00038B 12 02 A5         [24] 1104 	lcall	_lcdgotoaddr
      00038E D0 05            [24] 1105 	pop	ar5
      000390 D0 06            [24] 1106 	pop	ar6
      000392 D0 07            [24] 1107 	pop	ar7
                                   1108 ;	lcd.c:197: break;
      000394 02 04 17         [24] 1109 	ljmp	00106$
                                   1110 ;	lcd.c:199: case 0x4F:{
      000397                       1111 00102$:
                                   1112 ;	lcd.c:200: lcdputch(*ss);
      000397 8D 82            [24] 1113 	mov	dpl,r5
      000399 8E 83            [24] 1114 	mov	dph,r6
      00039B 8F F0            [24] 1115 	mov	b,r7
      00039D 12 3A A5         [24] 1116 	lcall	__gptrget
      0003A0 F5 82            [12] 1117 	mov	dpl,a
      0003A2 C0 07            [24] 1118 	push	ar7
      0003A4 C0 06            [24] 1119 	push	ar6
      0003A6 C0 05            [24] 1120 	push	ar5
      0003A8 12 03 1E         [24] 1121 	lcall	_lcdputch
                                   1122 ;	lcd.c:201: lcdgotoaddr(0x10);
      0003AB 75 82 10         [24] 1123 	mov	dpl,#0x10
      0003AE 12 02 A5         [24] 1124 	lcall	_lcdgotoaddr
      0003B1 D0 05            [24] 1125 	pop	ar5
      0003B3 D0 06            [24] 1126 	pop	ar6
      0003B5 D0 07            [24] 1127 	pop	ar7
                                   1128 ;	lcd.c:202: break;
                                   1129 ;	lcd.c:204: case 0x1F:{
      0003B7 80 5E            [24] 1130 	sjmp	00106$
      0003B9                       1131 00103$:
                                   1132 ;	lcd.c:205: lcdputch(*ss);
      0003B9 8D 82            [24] 1133 	mov	dpl,r5
      0003BB 8E 83            [24] 1134 	mov	dph,r6
      0003BD 8F F0            [24] 1135 	mov	b,r7
      0003BF 12 3A A5         [24] 1136 	lcall	__gptrget
      0003C2 F5 82            [12] 1137 	mov	dpl,a
      0003C4 C0 07            [24] 1138 	push	ar7
      0003C6 C0 06            [24] 1139 	push	ar6
      0003C8 C0 05            [24] 1140 	push	ar5
      0003CA 12 03 1E         [24] 1141 	lcall	_lcdputch
                                   1142 ;	lcd.c:206: lcdgotoaddr(0x1F);
      0003CD 75 82 1F         [24] 1143 	mov	dpl,#0x1f
      0003D0 12 02 A5         [24] 1144 	lcall	_lcdgotoaddr
      0003D3 D0 05            [24] 1145 	pop	ar5
      0003D5 D0 06            [24] 1146 	pop	ar6
      0003D7 D0 07            [24] 1147 	pop	ar7
                                   1148 ;	lcd.c:207: break;
                                   1149 ;	lcd.c:209: case 0x5F:{
      0003D9 80 3C            [24] 1150 	sjmp	00106$
      0003DB                       1151 00104$:
                                   1152 ;	lcd.c:210: lcdputch(*ss);
      0003DB 8D 82            [24] 1153 	mov	dpl,r5
      0003DD 8E 83            [24] 1154 	mov	dph,r6
      0003DF 8F F0            [24] 1155 	mov	b,r7
      0003E1 12 3A A5         [24] 1156 	lcall	__gptrget
      0003E4 F5 82            [12] 1157 	mov	dpl,a
      0003E6 C0 07            [24] 1158 	push	ar7
      0003E8 C0 06            [24] 1159 	push	ar6
      0003EA C0 05            [24] 1160 	push	ar5
      0003EC 12 03 1E         [24] 1161 	lcall	_lcdputch
                                   1162 ;	lcd.c:211: lcdgotoaddr(0x00);
      0003EF 75 82 00         [24] 1163 	mov	dpl,#0x00
      0003F2 12 02 A5         [24] 1164 	lcall	_lcdgotoaddr
      0003F5 D0 05            [24] 1165 	pop	ar5
      0003F7 D0 06            [24] 1166 	pop	ar6
      0003F9 D0 07            [24] 1167 	pop	ar7
                                   1168 ;	lcd.c:212: break;
                                   1169 ;	lcd.c:214: default:{
      0003FB 80 1A            [24] 1170 	sjmp	00106$
      0003FD                       1171 00105$:
                                   1172 ;	lcd.c:215: lcdputch(*ss);
      0003FD 8D 82            [24] 1173 	mov	dpl,r5
      0003FF 8E 83            [24] 1174 	mov	dph,r6
      000401 8F F0            [24] 1175 	mov	b,r7
      000403 12 3A A5         [24] 1176 	lcall	__gptrget
      000406 F5 82            [12] 1177 	mov	dpl,a
      000408 C0 07            [24] 1178 	push	ar7
      00040A C0 06            [24] 1179 	push	ar6
      00040C C0 05            [24] 1180 	push	ar5
      00040E 12 03 1E         [24] 1181 	lcall	_lcdputch
      000411 D0 05            [24] 1182 	pop	ar5
      000413 D0 06            [24] 1183 	pop	ar6
      000415 D0 07            [24] 1184 	pop	ar7
                                   1185 ;	lcd.c:218: }
      000417                       1186 00106$:
                                   1187 ;	lcd.c:219: ss++;
      000417 0D               [12] 1188 	inc	r5
      000418 BD 00 01         [24] 1189 	cjne	r5,#0x00,00142$
      00041B 0E               [12] 1190 	inc	r6
      00041C                       1191 00142$:
                                   1192 ;	lcd.c:221: }
      00041C 02 03 40         [24] 1193 	ljmp	00107$
                                   1194 ;------------------------------------------------------------
                                   1195 ;Allocation info for local variables in function 'get_cursor_pos'
                                   1196 ;------------------------------------------------------------
                                   1197 ;cursor_pos                Allocated to stack - _bp +1
                                   1198 ;__1310720015              Allocated to registers r7 r6 r5 
                                   1199 ;data                      Allocated to registers 
                                   1200 ;------------------------------------------------------------
                                   1201 ;	lcd.c:225: unsigned char get_cursor_pos(void)
                                   1202 ;	-----------------------------------------
                                   1203 ;	 function get_cursor_pos
                                   1204 ;	-----------------------------------------
      00041F                       1205 _get_cursor_pos:
      00041F C0 08            [24] 1206 	push	_bp
      000421 85 81 08         [24] 1207 	mov	_bp,sp
      000424 05 81            [12] 1208 	inc	sp
                                   1209 ;	lcd.c:228: read_lcd(&cursor_pos);
      000426 AF 08            [24] 1210 	mov	r7,_bp
      000428 0F               [12] 1211 	inc	r7
      000429 7E 00            [12] 1212 	mov	r6,#0x00
      00042B 7D 40            [12] 1213 	mov	r5,#0x40
                                   1214 ;	lcd.c:62: RS = 0;
                                   1215 ;	assignBit
      00042D C2 94            [12] 1216 	clr	_P1_4
                                   1217 ;	lcd.c:63: RW = 1;
                                   1218 ;	assignBit
      00042F D2 95            [12] 1219 	setb	_P1_5
                                   1220 ;	lcd.c:64: *data = *ptr;
      000431 90 00 30         [24] 1221 	mov	dptr,#_ptr
      000434 E0               [24] 1222 	movx	a,@dptr
      000435 FB               [12] 1223 	mov	r3,a
      000436 A3               [24] 1224 	inc	dptr
      000437 E0               [24] 1225 	movx	a,@dptr
      000438 FC               [12] 1226 	mov	r4,a
      000439 8B 82            [24] 1227 	mov	dpl,r3
      00043B 8C 83            [24] 1228 	mov	dph,r4
      00043D E0               [24] 1229 	movx	a,@dptr
      00043E FB               [12] 1230 	mov	r3,a
      00043F A3               [24] 1231 	inc	dptr
      000440 E0               [24] 1232 	movx	a,@dptr
      000441 8F 82            [24] 1233 	mov	dpl,r7
      000443 8E 83            [24] 1234 	mov	dph,r6
      000445 8D F0            [24] 1235 	mov	b,r5
      000447 EB               [12] 1236 	mov	a,r3
      000448 12 38 59         [24] 1237 	lcall	__gptrput
                                   1238 ;	lcd.c:66: lcdbusywait();
      00044B 12 02 8C         [24] 1239 	lcall	_lcdbusywait
                                   1240 ;	lcd.c:229: return cursor_pos;
      00044E A8 08            [24] 1241 	mov	r0,_bp
      000450 08               [12] 1242 	inc	r0
      000451 86 82            [24] 1243 	mov	dpl,@r0
                                   1244 ;	lcd.c:230: }
      000453 15 81            [12] 1245 	dec	sp
      000455 D0 08            [24] 1246 	pop	_bp
      000457 22               [24] 1247 	ret
                                   1248 ;------------------------------------------------------------
                                   1249 ;Allocation info for local variables in function 'lcdclear'
                                   1250 ;------------------------------------------------------------
                                   1251 ;__1310720017              Allocated to registers 
                                   1252 ;data                      Allocated to registers 
                                   1253 ;------------------------------------------------------------
                                   1254 ;	lcd.c:236: void lcdclear()
                                   1255 ;	-----------------------------------------
                                   1256 ;	 function lcdclear
                                   1257 ;	-----------------------------------------
      000458                       1258 _lcdclear:
                                   1259 ;	lcd.c:84: RS = 0;
                                   1260 ;	assignBit
      000458 C2 94            [12] 1261 	clr	_P1_4
                                   1262 ;	lcd.c:85: RW = 0;
                                   1263 ;	assignBit
      00045A C2 95            [12] 1264 	clr	_P1_5
                                   1265 ;	lcd.c:86: *ptr=data;
      00045C 90 00 30         [24] 1266 	mov	dptr,#_ptr
      00045F E0               [24] 1267 	movx	a,@dptr
      000460 FE               [12] 1268 	mov	r6,a
      000461 A3               [24] 1269 	inc	dptr
      000462 E0               [24] 1270 	movx	a,@dptr
      000463 FF               [12] 1271 	mov	r7,a
      000464 7C 01            [12] 1272 	mov	r4,#0x01
      000466 7D 00            [12] 1273 	mov	r5,#0x00
      000468 8E 82            [24] 1274 	mov	dpl,r6
      00046A 8F 83            [24] 1275 	mov	dph,r7
      00046C EC               [12] 1276 	mov	a,r4
      00046D F0               [24] 1277 	movx	@dptr,a
      00046E ED               [12] 1278 	mov	a,r5
      00046F A3               [24] 1279 	inc	dptr
      000470 F0               [24] 1280 	movx	@dptr,a
                                   1281 ;	lcd.c:88: lcdbusywait();
                                   1282 ;	lcd.c:238: write_cmd_lcd(0x01);
                                   1283 ;	lcd.c:239: }
      000471 02 02 8C         [24] 1284 	ljmp	_lcdbusywait
                                   1285 ;------------------------------------------------------------
                                   1286 ;Allocation info for local variables in function 'lcdcreatechar'
                                   1287 ;------------------------------------------------------------
                                   1288 ;row_vals                  Allocated to stack - _bp -5
                                   1289 ;ccode                     Allocated to registers r7 
                                   1290 ;addr                      Allocated to registers r4 
                                   1291 ;data                      Allocated to registers r3 
                                   1292 ;i                         Allocated to registers r6 
                                   1293 ;__2621440019              Allocated to registers 
                                   1294 ;data                      Allocated to registers 
                                   1295 ;------------------------------------------------------------
                                   1296 ;	lcd.c:247: void lcdcreatechar(unsigned char ccode, unsigned char row_vals[])
                                   1297 ;	-----------------------------------------
                                   1298 ;	 function lcdcreatechar
                                   1299 ;	-----------------------------------------
      000474                       1300 _lcdcreatechar:
      000474 C0 08            [24] 1301 	push	_bp
      000476 85 81 08         [24] 1302 	mov	_bp,sp
      000479 AF 82            [24] 1303 	mov	r7,dpl
                                   1304 ;	lcd.c:253: for(i=0;i<8;i++){
      00047B 7E 00            [12] 1305 	mov	r6,#0x00
      00047D                       1306 00103$:
                                   1307 ;	lcd.c:255: addr = 0x40 | ((ccode & 0x07) << 3) | (i & 0x07);
      00047D 8F 05            [24] 1308 	mov	ar5,r7
      00047F 53 05 07         [24] 1309 	anl	ar5,#0x07
      000482 ED               [12] 1310 	mov	a,r5
      000483 C4               [12] 1311 	swap	a
      000484 03               [12] 1312 	rr	a
      000485 54 F8            [12] 1313 	anl	a,#0xf8
      000487 FD               [12] 1314 	mov	r5,a
      000488 43 05 40         [24] 1315 	orl	ar5,#0x40
      00048B 74 07            [12] 1316 	mov	a,#0x07
      00048D 5E               [12] 1317 	anl	a,r6
      00048E FC               [12] 1318 	mov	r4,a
      00048F ED               [12] 1319 	mov	a,r5
      000490 42 04            [12] 1320 	orl	ar4,a
                                   1321 ;	lcd.c:258: lcd_set_ram_addr(addr);
      000492 8C 82            [24] 1322 	mov	dpl,r4
      000494 C0 07            [24] 1323 	push	ar7
      000496 C0 06            [24] 1324 	push	ar6
      000498 12 01 62         [24] 1325 	lcall	_lcd_set_ram_addr
      00049B D0 06            [24] 1326 	pop	ar6
                                   1327 ;	lcd.c:260: data = row_vals[i] & 0x1F;
      00049D E5 08            [12] 1328 	mov	a,_bp
      00049F 24 FB            [12] 1329 	add	a,#0xfb
      0004A1 F8               [12] 1330 	mov	r0,a
      0004A2 EE               [12] 1331 	mov	a,r6
      0004A3 26               [12] 1332 	add	a,@r0
      0004A4 FB               [12] 1333 	mov	r3,a
      0004A5 E4               [12] 1334 	clr	a
      0004A6 08               [12] 1335 	inc	r0
      0004A7 36               [12] 1336 	addc	a,@r0
      0004A8 FC               [12] 1337 	mov	r4,a
      0004A9 08               [12] 1338 	inc	r0
      0004AA 86 05            [24] 1339 	mov	ar5,@r0
      0004AC 8B 82            [24] 1340 	mov	dpl,r3
      0004AE 8C 83            [24] 1341 	mov	dph,r4
      0004B0 8D F0            [24] 1342 	mov	b,r5
      0004B2 12 3A A5         [24] 1343 	lcall	__gptrget
      0004B5 FB               [12] 1344 	mov	r3,a
      0004B6 53 03 1F         [24] 1345 	anl	ar3,#0x1f
                                   1346 ;	lcd.c:73: RS = 1;
                                   1347 ;	assignBit
      0004B9 D2 94            [12] 1348 	setb	_P1_4
                                   1349 ;	lcd.c:74: RW = 0;
                                   1350 ;	assignBit
      0004BB C2 95            [12] 1351 	clr	_P1_5
                                   1352 ;	lcd.c:75: *ptr=data;
      0004BD 90 00 30         [24] 1353 	mov	dptr,#_ptr
      0004C0 E0               [24] 1354 	movx	a,@dptr
      0004C1 FC               [12] 1355 	mov	r4,a
      0004C2 A3               [24] 1356 	inc	dptr
      0004C3 E0               [24] 1357 	movx	a,@dptr
      0004C4 FD               [12] 1358 	mov	r5,a
      0004C5 7A 00            [12] 1359 	mov	r2,#0x00
      0004C7 8C 82            [24] 1360 	mov	dpl,r4
      0004C9 8D 83            [24] 1361 	mov	dph,r5
      0004CB EB               [12] 1362 	mov	a,r3
      0004CC F0               [24] 1363 	movx	@dptr,a
      0004CD EA               [12] 1364 	mov	a,r2
      0004CE A3               [24] 1365 	inc	dptr
      0004CF F0               [24] 1366 	movx	@dptr,a
                                   1367 ;	lcd.c:77: lcdbusywait();
      0004D0 C0 06            [24] 1368 	push	ar6
      0004D2 12 02 8C         [24] 1369 	lcall	_lcdbusywait
      0004D5 D0 06            [24] 1370 	pop	ar6
      0004D7 D0 07            [24] 1371 	pop	ar7
                                   1372 ;	lcd.c:253: for(i=0;i<8;i++){
      0004D9 0E               [12] 1373 	inc	r6
      0004DA BE 08 00         [24] 1374 	cjne	r6,#0x08,00112$
      0004DD                       1375 00112$:
      0004DD 40 9E            [24] 1376 	jc	00103$
                                   1377 ;	lcd.c:263: }
      0004DF D0 08            [24] 1378 	pop	_bp
      0004E1 22               [24] 1379 	ret
                                   1380 ;------------------------------------------------------------
                                   1381 ;Allocation info for local variables in function 'display_lcd_char'
                                   1382 ;------------------------------------------------------------
                                   1383 ;addr                      Allocated to stack - _bp -3
                                   1384 ;ccode                     Allocated to registers r7 
                                   1385 ;__1310720021              Allocated to registers 
                                   1386 ;data                      Allocated to registers 
                                   1387 ;------------------------------------------------------------
                                   1388 ;	lcd.c:270: void display_lcd_char(unsigned char ccode, unsigned char addr)
                                   1389 ;	-----------------------------------------
                                   1390 ;	 function display_lcd_char
                                   1391 ;	-----------------------------------------
      0004E2                       1392 _display_lcd_char:
      0004E2 C0 08            [24] 1393 	push	_bp
      0004E4 85 81 08         [24] 1394 	mov	_bp,sp
      0004E7 AF 82            [24] 1395 	mov	r7,dpl
                                   1396 ;	lcd.c:273: lcd_set_ram_addr((1 << 7) | (addr & 0x7F));
      0004E9 E5 08            [12] 1397 	mov	a,_bp
      0004EB 24 FD            [12] 1398 	add	a,#0xfd
      0004ED F8               [12] 1399 	mov	r0,a
      0004EE 86 06            [24] 1400 	mov	ar6,@r0
      0004F0 53 06 7F         [24] 1401 	anl	ar6,#0x7f
      0004F3 43 06 80         [24] 1402 	orl	ar6,#0x80
      0004F6 8E 82            [24] 1403 	mov	dpl,r6
      0004F8 C0 07            [24] 1404 	push	ar7
      0004FA 12 01 62         [24] 1405 	lcall	_lcd_set_ram_addr
      0004FD D0 07            [24] 1406 	pop	ar7
                                   1407 ;	lcd.c:73: RS = 1;
                                   1408 ;	assignBit
      0004FF D2 94            [12] 1409 	setb	_P1_4
                                   1410 ;	lcd.c:74: RW = 0;
                                   1411 ;	assignBit
      000501 C2 95            [12] 1412 	clr	_P1_5
                                   1413 ;	lcd.c:75: *ptr=data;
      000503 90 00 30         [24] 1414 	mov	dptr,#_ptr
      000506 E0               [24] 1415 	movx	a,@dptr
      000507 FD               [12] 1416 	mov	r5,a
      000508 A3               [24] 1417 	inc	dptr
      000509 E0               [24] 1418 	movx	a,@dptr
      00050A FE               [12] 1419 	mov	r6,a
      00050B 7C 00            [12] 1420 	mov	r4,#0x00
      00050D 8D 82            [24] 1421 	mov	dpl,r5
      00050F 8E 83            [24] 1422 	mov	dph,r6
      000511 EF               [12] 1423 	mov	a,r7
      000512 F0               [24] 1424 	movx	@dptr,a
      000513 EC               [12] 1425 	mov	a,r4
      000514 A3               [24] 1426 	inc	dptr
      000515 F0               [24] 1427 	movx	@dptr,a
                                   1428 ;	lcd.c:77: lcdbusywait();
      000516 12 02 8C         [24] 1429 	lcall	_lcdbusywait
                                   1430 ;	lcd.c:275: write_data_lcd(ccode);
                                   1431 ;	lcd.c:276: }
      000519 D0 08            [24] 1432 	pop	_bp
      00051B 22               [24] 1433 	ret
                                   1434 	.area CSEG    (CODE)
                                   1435 	.area CONST   (CODE)
                                   1436 	.area XINIT   (CODE)
      003F91                       1437 __xinit__ptr:
      003F91 00 F0                 1438 	.byte #0x00,#0xf0
                                   1439 	.area CABS    (ABS,CODE)
