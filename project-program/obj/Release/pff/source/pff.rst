                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.2.0 #13081 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module pff
                                      6 	.optsdcc -mmcs51 --model-large
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _disk_readp
                                     12 	.globl _disk_initialize
                                     13 	.globl _pf_mount
                                     14 	.globl _pf_open
                                     15 	.globl _pf_read
                                     16 	.globl _pf_opendir
                                     17 	.globl _pf_readdir
                                     18 ;--------------------------------------------------------
                                     19 ; special function registers
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; special function bits
                                     25 ;--------------------------------------------------------
                                     26 	.area RSEG    (ABS,DATA)
      000000                         27 	.org 0x0000
                                     28 ;--------------------------------------------------------
                                     29 ; overlayable register banks
                                     30 ;--------------------------------------------------------
                                     31 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         32 	.ds 8
                                     33 ;--------------------------------------------------------
                                     34 ; overlayable bit register bank
                                     35 ;--------------------------------------------------------
                                     36 	.area BIT_BANK	(REL,OVR,DATA)
      000020                         37 bits:
      000020                         38 	.ds 1
                           008000    39 	b0 = bits[0]
                           008100    40 	b1 = bits[1]
                           008200    41 	b2 = bits[2]
                           008300    42 	b3 = bits[3]
                           008400    43 	b4 = bits[4]
                           008500    44 	b5 = bits[5]
                           008600    45 	b6 = bits[6]
                           008700    46 	b7 = bits[7]
                                     47 ;--------------------------------------------------------
                                     48 ; internal ram data
                                     49 ;--------------------------------------------------------
                                     50 	.area DSEG    (DATA)
                                     51 ;--------------------------------------------------------
                                     52 ; overlayable items in internal ram
                                     53 ;--------------------------------------------------------
                                     54 ;--------------------------------------------------------
                                     55 ; indirectly addressable internal ram data
                                     56 ;--------------------------------------------------------
                                     57 	.area ISEG    (DATA)
                                     58 ;--------------------------------------------------------
                                     59 ; absolute internal ram data
                                     60 ;--------------------------------------------------------
                                     61 	.area IABS    (ABS,DATA)
                                     62 	.area IABS    (ABS,DATA)
                                     63 ;--------------------------------------------------------
                                     64 ; bit data
                                     65 ;--------------------------------------------------------
                                     66 	.area BSEG    (BIT)
                                     67 ;--------------------------------------------------------
                                     68 ; paged external ram data
                                     69 ;--------------------------------------------------------
                                     70 	.area PSEG    (PAG,XDATA)
                                     71 ;--------------------------------------------------------
                                     72 ; external ram data
                                     73 ;--------------------------------------------------------
                                     74 	.area XSEG    (XDATA)
      00002B                         75 _FatFs:
      00002B                         76 	.ds 3
                                     77 ;--------------------------------------------------------
                                     78 ; absolute external ram data
                                     79 ;--------------------------------------------------------
                                     80 	.area XABS    (ABS,XDATA)
                                     81 ;--------------------------------------------------------
                                     82 ; external initialized ram data
                                     83 ;--------------------------------------------------------
                                     84 	.area XISEG   (XDATA)
                                     85 	.area HOME    (CODE)
                                     86 	.area GSINIT0 (CODE)
                                     87 	.area GSINIT1 (CODE)
                                     88 	.area GSINIT2 (CODE)
                                     89 	.area GSINIT3 (CODE)
                                     90 	.area GSINIT4 (CODE)
                                     91 	.area GSINIT5 (CODE)
                                     92 	.area GSINIT  (CODE)
                                     93 	.area GSFINAL (CODE)
                                     94 	.area CSEG    (CODE)
                                     95 ;--------------------------------------------------------
                                     96 ; global & static initialisations
                                     97 ;--------------------------------------------------------
                                     98 	.area HOME    (CODE)
                                     99 	.area GSINIT  (CODE)
                                    100 	.area GSFINAL (CODE)
                                    101 	.area GSINIT  (CODE)
                                    102 ;--------------------------------------------------------
                                    103 ; Home
                                    104 ;--------------------------------------------------------
                                    105 	.area HOME    (CODE)
                                    106 	.area HOME    (CODE)
                                    107 ;--------------------------------------------------------
                                    108 ; code
                                    109 ;--------------------------------------------------------
                                    110 	.area CSEG    (CODE)
                                    111 ;------------------------------------------------------------
                                    112 ;Allocation info for local variables in function 'ld_word'
                                    113 ;------------------------------------------------------------
                                    114 ;ptr                       Allocated to registers r5 r6 r7 
                                    115 ;rv                        Allocated to registers r2 r4 
                                    116 ;------------------------------------------------------------
                                    117 ;	pff\source\pff.c:384: static WORD ld_word (const BYTE* ptr)	/*	 Load a 2-byte little-endian word */
                                    118 ;	-----------------------------------------
                                    119 ;	 function ld_word
                                    120 ;	-----------------------------------------
      000A53                        121 _ld_word:
                           000007   122 	ar7 = 0x07
                           000006   123 	ar6 = 0x06
                           000005   124 	ar5 = 0x05
                           000004   125 	ar4 = 0x04
                           000003   126 	ar3 = 0x03
                           000002   127 	ar2 = 0x02
                           000001   128 	ar1 = 0x01
                           000000   129 	ar0 = 0x00
      000A53 AD 82            [24]  130 	mov	r5,dpl
      000A55 AE 83            [24]  131 	mov	r6,dph
      000A57 AF F0            [24]  132 	mov	r7,b
                                    133 ;	pff\source\pff.c:388: rv = ptr[1];
      000A59 74 01            [12]  134 	mov	a,#0x01
      000A5B 2D               [12]  135 	add	a,r5
      000A5C FA               [12]  136 	mov	r2,a
      000A5D E4               [12]  137 	clr	a
      000A5E 3E               [12]  138 	addc	a,r6
      000A5F FB               [12]  139 	mov	r3,a
      000A60 8F 04            [24]  140 	mov	ar4,r7
      000A62 8A 82            [24]  141 	mov	dpl,r2
      000A64 8B 83            [24]  142 	mov	dph,r3
      000A66 8C F0            [24]  143 	mov	b,r4
      000A68 12 3A A5         [24]  144 	lcall	__gptrget
                                    145 ;	pff\source\pff.c:389: rv = rv << 8 | ptr[0];
      000A6B FC               [12]  146 	mov	r4,a
      000A6C 7A 00            [12]  147 	mov	r2,#0x00
      000A6E 8D 82            [24]  148 	mov	dpl,r5
      000A70 8E 83            [24]  149 	mov	dph,r6
      000A72 8F F0            [24]  150 	mov	b,r7
      000A74 12 3A A5         [24]  151 	lcall	__gptrget
      000A77 7F 00            [12]  152 	mov	r7,#0x00
      000A79 42 02            [12]  153 	orl	ar2,a
      000A7B EF               [12]  154 	mov	a,r7
      000A7C 42 04            [12]  155 	orl	ar4,a
                                    156 ;	pff\source\pff.c:390: return rv;
      000A7E 8A 82            [24]  157 	mov	dpl,r2
      000A80 8C 83            [24]  158 	mov	dph,r4
                                    159 ;	pff\source\pff.c:391: }
      000A82 22               [24]  160 	ret
                                    161 ;------------------------------------------------------------
                                    162 ;Allocation info for local variables in function 'ld_dword'
                                    163 ;------------------------------------------------------------
                                    164 ;ptr                       Allocated to stack - _bp +1
                                    165 ;rv                        Allocated to registers r2 r7 r6 r5 
                                    166 ;sloc0                     Allocated to stack - _bp +4
                                    167 ;------------------------------------------------------------
                                    168 ;	pff\source\pff.c:393: static DWORD ld_dword (const BYTE* ptr)	/* Load a 4-byte little-endian word */
                                    169 ;	-----------------------------------------
                                    170 ;	 function ld_dword
                                    171 ;	-----------------------------------------
      000A83                        172 _ld_dword:
      000A83 C0 08            [24]  173 	push	_bp
      000A85 85 81 08         [24]  174 	mov	_bp,sp
      000A88 C0 82            [24]  175 	push	dpl
      000A8A C0 83            [24]  176 	push	dph
      000A8C C0 F0            [24]  177 	push	b
      000A8E E5 81            [12]  178 	mov	a,sp
      000A90 24 04            [12]  179 	add	a,#0x04
      000A92 F5 81            [12]  180 	mov	sp,a
                                    181 ;	pff\source\pff.c:397: rv = ptr[3];
      000A94 A8 08            [24]  182 	mov	r0,_bp
      000A96 08               [12]  183 	inc	r0
      000A97 74 03            [12]  184 	mov	a,#0x03
      000A99 26               [12]  185 	add	a,@r0
      000A9A FA               [12]  186 	mov	r2,a
      000A9B E4               [12]  187 	clr	a
      000A9C 08               [12]  188 	inc	r0
      000A9D 36               [12]  189 	addc	a,@r0
      000A9E FB               [12]  190 	mov	r3,a
      000A9F 08               [12]  191 	inc	r0
      000AA0 86 04            [24]  192 	mov	ar4,@r0
      000AA2 8A 82            [24]  193 	mov	dpl,r2
      000AA4 8B 83            [24]  194 	mov	dph,r3
      000AA6 8C F0            [24]  195 	mov	b,r4
      000AA8 12 3A A5         [24]  196 	lcall	__gptrget
      000AAB FA               [12]  197 	mov	r2,a
                                    198 ;	pff\source\pff.c:398: rv = rv << 8 | ptr[2];
      000AAC E4               [12]  199 	clr	a
      000AAD FB               [12]  200 	mov	r3,a
      000AAE FC               [12]  201 	mov	r4,a
      000AAF E5 08            [12]  202 	mov	a,_bp
      000AB1 24 04            [12]  203 	add	a,#0x04
      000AB3 F8               [12]  204 	mov	r0,a
      000AB4 08               [12]  205 	inc	r0
      000AB5 08               [12]  206 	inc	r0
      000AB6 08               [12]  207 	inc	r0
      000AB7 A6 04            [24]  208 	mov	@r0,ar4
      000AB9 18               [12]  209 	dec	r0
      000ABA A6 03            [24]  210 	mov	@r0,ar3
      000ABC 18               [12]  211 	dec	r0
      000ABD A6 02            [24]  212 	mov	@r0,ar2
      000ABF 18               [12]  213 	dec	r0
      000AC0 76 00            [12]  214 	mov	@r0,#0x00
      000AC2 A8 08            [24]  215 	mov	r0,_bp
      000AC4 08               [12]  216 	inc	r0
      000AC5 74 02            [12]  217 	mov	a,#0x02
      000AC7 26               [12]  218 	add	a,@r0
      000AC8 FD               [12]  219 	mov	r5,a
      000AC9 E4               [12]  220 	clr	a
      000ACA 08               [12]  221 	inc	r0
      000ACB 36               [12]  222 	addc	a,@r0
      000ACC FE               [12]  223 	mov	r6,a
      000ACD 08               [12]  224 	inc	r0
      000ACE 86 07            [24]  225 	mov	ar7,@r0
      000AD0 8D 82            [24]  226 	mov	dpl,r5
      000AD2 8E 83            [24]  227 	mov	dph,r6
      000AD4 8F F0            [24]  228 	mov	b,r7
      000AD6 12 3A A5         [24]  229 	lcall	__gptrget
      000AD9 FD               [12]  230 	mov	r5,a
      000ADA E4               [12]  231 	clr	a
      000ADB FF               [12]  232 	mov	r7,a
      000ADC FE               [12]  233 	mov	r6,a
      000ADD FC               [12]  234 	mov	r4,a
      000ADE E5 08            [12]  235 	mov	a,_bp
      000AE0 24 04            [12]  236 	add	a,#0x04
      000AE2 F8               [12]  237 	mov	r0,a
      000AE3 E6               [12]  238 	mov	a,@r0
      000AE4 42 05            [12]  239 	orl	ar5,a
      000AE6 08               [12]  240 	inc	r0
      000AE7 E6               [12]  241 	mov	a,@r0
      000AE8 42 07            [12]  242 	orl	ar7,a
      000AEA 08               [12]  243 	inc	r0
      000AEB E6               [12]  244 	mov	a,@r0
      000AEC 42 06            [12]  245 	orl	ar6,a
      000AEE 08               [12]  246 	inc	r0
      000AEF E6               [12]  247 	mov	a,@r0
      000AF0 42 04            [12]  248 	orl	ar4,a
                                    249 ;	pff\source\pff.c:399: rv = rv << 8 | ptr[1];
      000AF2 E5 08            [12]  250 	mov	a,_bp
      000AF4 24 04            [12]  251 	add	a,#0x04
      000AF6 F8               [12]  252 	mov	r0,a
      000AF7 08               [12]  253 	inc	r0
      000AF8 08               [12]  254 	inc	r0
      000AF9 08               [12]  255 	inc	r0
      000AFA A6 06            [24]  256 	mov	@r0,ar6
      000AFC 18               [12]  257 	dec	r0
      000AFD A6 07            [24]  258 	mov	@r0,ar7
      000AFF 18               [12]  259 	dec	r0
      000B00 A6 05            [24]  260 	mov	@r0,ar5
      000B02 18               [12]  261 	dec	r0
      000B03 76 00            [12]  262 	mov	@r0,#0x00
      000B05 A8 08            [24]  263 	mov	r0,_bp
      000B07 08               [12]  264 	inc	r0
      000B08 74 01            [12]  265 	mov	a,#0x01
      000B0A 26               [12]  266 	add	a,@r0
      000B0B FA               [12]  267 	mov	r2,a
      000B0C E4               [12]  268 	clr	a
      000B0D 08               [12]  269 	inc	r0
      000B0E 36               [12]  270 	addc	a,@r0
      000B0F FB               [12]  271 	mov	r3,a
      000B10 08               [12]  272 	inc	r0
      000B11 86 07            [24]  273 	mov	ar7,@r0
      000B13 8A 82            [24]  274 	mov	dpl,r2
      000B15 8B 83            [24]  275 	mov	dph,r3
      000B17 8F F0            [24]  276 	mov	b,r7
      000B19 12 3A A5         [24]  277 	lcall	__gptrget
      000B1C FA               [12]  278 	mov	r2,a
      000B1D E4               [12]  279 	clr	a
      000B1E FF               [12]  280 	mov	r7,a
      000B1F FE               [12]  281 	mov	r6,a
      000B20 FD               [12]  282 	mov	r5,a
      000B21 E5 08            [12]  283 	mov	a,_bp
      000B23 24 04            [12]  284 	add	a,#0x04
      000B25 F8               [12]  285 	mov	r0,a
      000B26 E6               [12]  286 	mov	a,@r0
      000B27 42 02            [12]  287 	orl	ar2,a
      000B29 08               [12]  288 	inc	r0
      000B2A E6               [12]  289 	mov	a,@r0
      000B2B 42 07            [12]  290 	orl	ar7,a
      000B2D 08               [12]  291 	inc	r0
      000B2E E6               [12]  292 	mov	a,@r0
      000B2F 42 06            [12]  293 	orl	ar6,a
      000B31 08               [12]  294 	inc	r0
      000B32 E6               [12]  295 	mov	a,@r0
      000B33 42 05            [12]  296 	orl	ar5,a
                                    297 ;	pff\source\pff.c:400: rv = rv << 8 | ptr[0];
      000B35 E5 08            [12]  298 	mov	a,_bp
      000B37 24 04            [12]  299 	add	a,#0x04
      000B39 F8               [12]  300 	mov	r0,a
      000B3A 08               [12]  301 	inc	r0
      000B3B 08               [12]  302 	inc	r0
      000B3C 08               [12]  303 	inc	r0
      000B3D A6 06            [24]  304 	mov	@r0,ar6
      000B3F 18               [12]  305 	dec	r0
      000B40 A6 07            [24]  306 	mov	@r0,ar7
      000B42 18               [12]  307 	dec	r0
      000B43 A6 02            [24]  308 	mov	@r0,ar2
      000B45 18               [12]  309 	dec	r0
      000B46 76 00            [12]  310 	mov	@r0,#0x00
      000B48 A8 08            [24]  311 	mov	r0,_bp
      000B4A 08               [12]  312 	inc	r0
      000B4B 86 82            [24]  313 	mov	dpl,@r0
      000B4D 08               [12]  314 	inc	r0
      000B4E 86 83            [24]  315 	mov	dph,@r0
      000B50 08               [12]  316 	inc	r0
      000B51 86 F0            [24]  317 	mov	b,@r0
      000B53 12 3A A5         [24]  318 	lcall	__gptrget
      000B56 FB               [12]  319 	mov	r3,a
      000B57 E4               [12]  320 	clr	a
      000B58 FC               [12]  321 	mov	r4,a
      000B59 FE               [12]  322 	mov	r6,a
      000B5A FF               [12]  323 	mov	r7,a
      000B5B E5 08            [12]  324 	mov	a,_bp
      000B5D 24 04            [12]  325 	add	a,#0x04
      000B5F F8               [12]  326 	mov	r0,a
      000B60 E6               [12]  327 	mov	a,@r0
      000B61 42 03            [12]  328 	orl	ar3,a
      000B63 08               [12]  329 	inc	r0
      000B64 E6               [12]  330 	mov	a,@r0
      000B65 42 04            [12]  331 	orl	ar4,a
      000B67 08               [12]  332 	inc	r0
      000B68 E6               [12]  333 	mov	a,@r0
      000B69 42 06            [12]  334 	orl	ar6,a
      000B6B 08               [12]  335 	inc	r0
      000B6C E6               [12]  336 	mov	a,@r0
      000B6D 42 07            [12]  337 	orl	ar7,a
                                    338 ;	pff\source\pff.c:401: return rv;
      000B6F 8B 82            [24]  339 	mov	dpl,r3
      000B71 8C 83            [24]  340 	mov	dph,r4
      000B73 8E F0            [24]  341 	mov	b,r6
      000B75 EF               [12]  342 	mov	a,r7
                                    343 ;	pff\source\pff.c:402: }
      000B76 85 08 81         [24]  344 	mov	sp,_bp
      000B79 D0 08            [24]  345 	pop	_bp
      000B7B 22               [24]  346 	ret
                                    347 ;------------------------------------------------------------
                                    348 ;Allocation info for local variables in function 'mem_set'
                                    349 ;------------------------------------------------------------
                                    350 ;val                       Allocated to stack - _bp -4
                                    351 ;cnt                       Allocated to stack - _bp -6
                                    352 ;dst                       Allocated to registers r5 r6 r7 
                                    353 ;d                         Allocated to registers 
                                    354 ;sloc0                     Allocated to stack - _bp +1
                                    355 ;------------------------------------------------------------
                                    356 ;	pff\source\pff.c:411: static void mem_set (void* dst, int val, int cnt) {
                                    357 ;	-----------------------------------------
                                    358 ;	 function mem_set
                                    359 ;	-----------------------------------------
      000B7C                        360 _mem_set:
      000B7C C0 08            [24]  361 	push	_bp
      000B7E 85 81 08         [24]  362 	mov	_bp,sp
      000B81 05 81            [12]  363 	inc	sp
      000B83 05 81            [12]  364 	inc	sp
      000B85 AD 82            [24]  365 	mov	r5,dpl
      000B87 AE 83            [24]  366 	mov	r6,dph
      000B89 AF F0            [24]  367 	mov	r7,b
                                    368 ;	pff\source\pff.c:412: char *d = (char*)dst;
                                    369 ;	pff\source\pff.c:413: while (cnt--) *d++ = (char)val;
      000B8B E5 08            [12]  370 	mov	a,_bp
      000B8D 24 FA            [12]  371 	add	a,#0xfa
      000B8F F8               [12]  372 	mov	r0,a
      000B90 A9 08            [24]  373 	mov	r1,_bp
      000B92 09               [12]  374 	inc	r1
      000B93 E6               [12]  375 	mov	a,@r0
      000B94 F7               [12]  376 	mov	@r1,a
      000B95 08               [12]  377 	inc	r0
      000B96 E6               [12]  378 	mov	a,@r0
      000B97 09               [12]  379 	inc	r1
      000B98 F7               [12]  380 	mov	@r1,a
      000B99                        381 00101$:
      000B99 A8 08            [24]  382 	mov	r0,_bp
      000B9B 08               [12]  383 	inc	r0
      000B9C 86 02            [24]  384 	mov	ar2,@r0
      000B9E 08               [12]  385 	inc	r0
      000B9F 86 04            [24]  386 	mov	ar4,@r0
      000BA1 A8 08            [24]  387 	mov	r0,_bp
      000BA3 08               [12]  388 	inc	r0
      000BA4 16               [12]  389 	dec	@r0
      000BA5 B6 FF 02         [24]  390 	cjne	@r0,#0xff,00115$
      000BA8 08               [12]  391 	inc	r0
      000BA9 16               [12]  392 	dec	@r0
      000BAA                        393 00115$:
      000BAA EA               [12]  394 	mov	a,r2
      000BAB 4C               [12]  395 	orl	a,r4
      000BAC 60 18            [24]  396 	jz	00104$
      000BAE E5 08            [12]  397 	mov	a,_bp
      000BB0 24 FC            [12]  398 	add	a,#0xfc
      000BB2 F8               [12]  399 	mov	r0,a
      000BB3 86 04            [24]  400 	mov	ar4,@r0
      000BB5 8D 82            [24]  401 	mov	dpl,r5
      000BB7 8E 83            [24]  402 	mov	dph,r6
      000BB9 8F F0            [24]  403 	mov	b,r7
      000BBB EC               [12]  404 	mov	a,r4
      000BBC 12 38 59         [24]  405 	lcall	__gptrput
      000BBF A3               [24]  406 	inc	dptr
      000BC0 AD 82            [24]  407 	mov	r5,dpl
      000BC2 AE 83            [24]  408 	mov	r6,dph
      000BC4 80 D3            [24]  409 	sjmp	00101$
      000BC6                        410 00104$:
                                    411 ;	pff\source\pff.c:414: }
      000BC6 85 08 81         [24]  412 	mov	sp,_bp
      000BC9 D0 08            [24]  413 	pop	_bp
      000BCB 22               [24]  414 	ret
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'mem_cmp'
                                    417 ;------------------------------------------------------------
                                    418 ;src                       Allocated to stack - _bp -5
                                    419 ;cnt                       Allocated to stack - _bp -7
                                    420 ;dst                       Allocated to registers r5 r6 r7 
                                    421 ;d                         Allocated to registers 
                                    422 ;s                         Allocated to registers 
                                    423 ;r                         Allocated to stack - _bp +5
                                    424 ;sloc0                     Allocated to stack - _bp +5
                                    425 ;sloc1                     Allocated to stack - _bp +1
                                    426 ;sloc2                     Allocated to stack - _bp +7
                                    427 ;sloc3                     Allocated to stack - _bp +3
                                    428 ;------------------------------------------------------------
                                    429 ;	pff\source\pff.c:417: static int mem_cmp (const void* dst, const void* src, int cnt) {
                                    430 ;	-----------------------------------------
                                    431 ;	 function mem_cmp
                                    432 ;	-----------------------------------------
      000BCC                        433 _mem_cmp:
      000BCC C0 08            [24]  434 	push	_bp
      000BCE E5 81            [12]  435 	mov	a,sp
      000BD0 F5 08            [12]  436 	mov	_bp,a
      000BD2 24 09            [12]  437 	add	a,#0x09
      000BD4 F5 81            [12]  438 	mov	sp,a
      000BD6 AD 82            [24]  439 	mov	r5,dpl
      000BD8 AE 83            [24]  440 	mov	r6,dph
      000BDA AF F0            [24]  441 	mov	r7,b
                                    442 ;	pff\source\pff.c:418: const char *d = (const char *)dst, *s = (const char *)src;
      000BDC E5 08            [12]  443 	mov	a,_bp
      000BDE 24 FB            [12]  444 	add	a,#0xfb
      000BE0 F8               [12]  445 	mov	r0,a
      000BE1 E5 08            [12]  446 	mov	a,_bp
      000BE3 24 07            [12]  447 	add	a,#0x07
      000BE5 F9               [12]  448 	mov	r1,a
      000BE6 E6               [12]  449 	mov	a,@r0
      000BE7 F7               [12]  450 	mov	@r1,a
      000BE8 08               [12]  451 	inc	r0
      000BE9 E6               [12]  452 	mov	a,@r0
      000BEA 09               [12]  453 	inc	r1
      000BEB F7               [12]  454 	mov	@r1,a
      000BEC 08               [12]  455 	inc	r0
      000BED E6               [12]  456 	mov	a,@r0
      000BEE 09               [12]  457 	inc	r1
      000BEF F7               [12]  458 	mov	@r1,a
                                    459 ;	pff\source\pff.c:419: int r = 0;
      000BF0 E5 08            [12]  460 	mov	a,_bp
      000BF2 24 05            [12]  461 	add	a,#0x05
      000BF4 F8               [12]  462 	mov	r0,a
      000BF5 E4               [12]  463 	clr	a
      000BF6 F6               [12]  464 	mov	@r0,a
      000BF7 08               [12]  465 	inc	r0
      000BF8 F6               [12]  466 	mov	@r0,a
                                    467 ;	pff\source\pff.c:420: while (cnt-- && (r = *d++ - *s++) == 0) ;
      000BF9 E5 08            [12]  468 	mov	a,_bp
      000BFB 24 F9            [12]  469 	add	a,#0xf9
      000BFD F8               [12]  470 	mov	r0,a
      000BFE A9 08            [24]  471 	mov	r1,_bp
      000C00 09               [12]  472 	inc	r1
      000C01 E6               [12]  473 	mov	a,@r0
      000C02 F7               [12]  474 	mov	@r1,a
      000C03 08               [12]  475 	inc	r0
      000C04 E6               [12]  476 	mov	a,@r0
      000C05 09               [12]  477 	inc	r1
      000C06 F7               [12]  478 	mov	@r1,a
      000C07                        479 00102$:
      000C07 A8 08            [24]  480 	mov	r0,_bp
      000C09 08               [12]  481 	inc	r0
      000C0A 86 03            [24]  482 	mov	ar3,@r0
      000C0C 08               [12]  483 	inc	r0
      000C0D 86 04            [24]  484 	mov	ar4,@r0
      000C0F A8 08            [24]  485 	mov	r0,_bp
      000C11 08               [12]  486 	inc	r0
      000C12 16               [12]  487 	dec	@r0
      000C13 B6 FF 02         [24]  488 	cjne	@r0,#0xff,00116$
      000C16 08               [12]  489 	inc	r0
      000C17 16               [12]  490 	dec	@r0
      000C18                        491 00116$:
      000C18 EB               [12]  492 	mov	a,r3
      000C19 4C               [12]  493 	orl	a,r4
      000C1A 60 4F            [24]  494 	jz	00104$
      000C1C 8D 82            [24]  495 	mov	dpl,r5
      000C1E 8E 83            [24]  496 	mov	dph,r6
      000C20 8F F0            [24]  497 	mov	b,r7
      000C22 12 3A A5         [24]  498 	lcall	__gptrget
      000C25 FC               [12]  499 	mov	r4,a
      000C26 A3               [24]  500 	inc	dptr
      000C27 AD 82            [24]  501 	mov	r5,dpl
      000C29 AE 83            [24]  502 	mov	r6,dph
      000C2B E5 08            [12]  503 	mov	a,_bp
      000C2D 24 03            [12]  504 	add	a,#0x03
      000C2F F8               [12]  505 	mov	r0,a
      000C30 A6 04            [24]  506 	mov	@r0,ar4
      000C32 08               [12]  507 	inc	r0
      000C33 76 00            [12]  508 	mov	@r0,#0x00
      000C35 E5 08            [12]  509 	mov	a,_bp
      000C37 24 07            [12]  510 	add	a,#0x07
      000C39 F8               [12]  511 	mov	r0,a
      000C3A 86 82            [24]  512 	mov	dpl,@r0
      000C3C 08               [12]  513 	inc	r0
      000C3D 86 83            [24]  514 	mov	dph,@r0
      000C3F 08               [12]  515 	inc	r0
      000C40 86 F0            [24]  516 	mov	b,@r0
      000C42 12 3A A5         [24]  517 	lcall	__gptrget
      000C45 FA               [12]  518 	mov	r2,a
      000C46 A3               [24]  519 	inc	dptr
      000C47 18               [12]  520 	dec	r0
      000C48 18               [12]  521 	dec	r0
      000C49 A6 82            [24]  522 	mov	@r0,dpl
      000C4B 08               [12]  523 	inc	r0
      000C4C A6 83            [24]  524 	mov	@r0,dph
      000C4E 7C 00            [12]  525 	mov	r4,#0x00
      000C50 E5 08            [12]  526 	mov	a,_bp
      000C52 24 03            [12]  527 	add	a,#0x03
      000C54 F8               [12]  528 	mov	r0,a
      000C55 E6               [12]  529 	mov	a,@r0
      000C56 C3               [12]  530 	clr	c
      000C57 9A               [12]  531 	subb	a,r2
      000C58 FA               [12]  532 	mov	r2,a
      000C59 08               [12]  533 	inc	r0
      000C5A E6               [12]  534 	mov	a,@r0
      000C5B 9C               [12]  535 	subb	a,r4
      000C5C FC               [12]  536 	mov	r4,a
      000C5D E5 08            [12]  537 	mov	a,_bp
      000C5F 24 05            [12]  538 	add	a,#0x05
      000C61 F8               [12]  539 	mov	r0,a
      000C62 A6 02            [24]  540 	mov	@r0,ar2
      000C64 08               [12]  541 	inc	r0
      000C65 A6 04            [24]  542 	mov	@r0,ar4
      000C67 EA               [12]  543 	mov	a,r2
      000C68 4C               [12]  544 	orl	a,r4
      000C69 60 9C            [24]  545 	jz	00102$
      000C6B                        546 00104$:
                                    547 ;	pff\source\pff.c:421: return r;
      000C6B E5 08            [12]  548 	mov	a,_bp
      000C6D 24 05            [12]  549 	add	a,#0x05
      000C6F F8               [12]  550 	mov	r0,a
      000C70 86 82            [24]  551 	mov	dpl,@r0
      000C72 08               [12]  552 	inc	r0
      000C73 86 83            [24]  553 	mov	dph,@r0
                                    554 ;	pff\source\pff.c:422: }
      000C75 85 08 81         [24]  555 	mov	sp,_bp
      000C78 D0 08            [24]  556 	pop	_bp
      000C7A 22               [24]  557 	ret
                                    558 ;------------------------------------------------------------
                                    559 ;Allocation info for local variables in function 'get_fat'
                                    560 ;------------------------------------------------------------
                                    561 ;clst                      Allocated to stack - _bp +1
                                    562 ;buf                       Allocated to stack - _bp +11
                                    563 ;fs                        Allocated to stack - _bp +15
                                    564 ;sloc0                     Allocated to stack - _bp +9
                                    565 ;sloc1                     Allocated to stack - _bp +5
                                    566 ;------------------------------------------------------------
                                    567 ;	pff\source\pff.c:430: static CLUST get_fat (	/* 1:IO error, Else:Cluster status */
                                    568 ;	-----------------------------------------
                                    569 ;	 function get_fat
                                    570 ;	-----------------------------------------
      000C7B                        571 _get_fat:
      000C7B C0 08            [24]  572 	push	_bp
      000C7D 85 81 08         [24]  573 	mov	_bp,sp
      000C80 C0 82            [24]  574 	push	dpl
      000C82 C0 83            [24]  575 	push	dph
      000C84 C0 F0            [24]  576 	push	b
      000C86 C0 E0            [24]  577 	push	acc
      000C88 E5 81            [12]  578 	mov	a,sp
      000C8A 24 0D            [12]  579 	add	a,#0x0d
      000C8C F5 81            [12]  580 	mov	sp,a
                                    581 ;	pff\source\pff.c:435: FATFS *fs = FatFs;
      000C8E 90 00 2B         [24]  582 	mov	dptr,#_FatFs
      000C91 E0               [24]  583 	movx	a,@dptr
      000C92 FF               [12]  584 	mov	r7,a
      000C93 A3               [24]  585 	inc	dptr
      000C94 E0               [24]  586 	movx	a,@dptr
      000C95 FE               [12]  587 	mov	r6,a
      000C96 A3               [24]  588 	inc	dptr
      000C97 E0               [24]  589 	movx	a,@dptr
      000C98 FD               [12]  590 	mov	r5,a
      000C99 E5 08            [12]  591 	mov	a,_bp
      000C9B 24 0F            [12]  592 	add	a,#0x0f
      000C9D F8               [12]  593 	mov	r0,a
      000C9E A6 07            [24]  594 	mov	@r0,ar7
      000CA0 08               [12]  595 	inc	r0
      000CA1 A6 06            [24]  596 	mov	@r0,ar6
      000CA3 08               [12]  597 	inc	r0
      000CA4 A6 05            [24]  598 	mov	@r0,ar5
                                    599 ;	pff\source\pff.c:440: if (clst < 2 || clst >= fs->n_fatent) return 1;	/* Range check */
      000CA6 A8 08            [24]  600 	mov	r0,_bp
      000CA8 08               [12]  601 	inc	r0
      000CA9 C3               [12]  602 	clr	c
      000CAA E6               [12]  603 	mov	a,@r0
      000CAB 94 02            [12]  604 	subb	a,#0x02
      000CAD 08               [12]  605 	inc	r0
      000CAE E6               [12]  606 	mov	a,@r0
      000CAF 94 00            [12]  607 	subb	a,#0x00
      000CB1 08               [12]  608 	inc	r0
      000CB2 E6               [12]  609 	mov	a,@r0
      000CB3 94 00            [12]  610 	subb	a,#0x00
      000CB5 08               [12]  611 	inc	r0
      000CB6 E6               [12]  612 	mov	a,@r0
      000CB7 94 00            [12]  613 	subb	a,#0x00
      000CB9 40 3A            [24]  614 	jc	00101$
      000CBB E5 08            [12]  615 	mov	a,_bp
      000CBD 24 0F            [12]  616 	add	a,#0x0f
      000CBF F8               [12]  617 	mov	r0,a
      000CC0 74 06            [12]  618 	mov	a,#0x06
      000CC2 26               [12]  619 	add	a,@r0
      000CC3 FA               [12]  620 	mov	r2,a
      000CC4 E4               [12]  621 	clr	a
      000CC5 08               [12]  622 	inc	r0
      000CC6 36               [12]  623 	addc	a,@r0
      000CC7 FB               [12]  624 	mov	r3,a
      000CC8 08               [12]  625 	inc	r0
      000CC9 86 07            [24]  626 	mov	ar7,@r0
      000CCB 8A 82            [24]  627 	mov	dpl,r2
      000CCD 8B 83            [24]  628 	mov	dph,r3
      000CCF 8F F0            [24]  629 	mov	b,r7
      000CD1 12 3A A5         [24]  630 	lcall	__gptrget
      000CD4 FA               [12]  631 	mov	r2,a
      000CD5 A3               [24]  632 	inc	dptr
      000CD6 12 3A A5         [24]  633 	lcall	__gptrget
      000CD9 FB               [12]  634 	mov	r3,a
      000CDA A3               [24]  635 	inc	dptr
      000CDB 12 3A A5         [24]  636 	lcall	__gptrget
      000CDE FF               [12]  637 	mov	r7,a
      000CDF A3               [24]  638 	inc	dptr
      000CE0 12 3A A5         [24]  639 	lcall	__gptrget
      000CE3 FE               [12]  640 	mov	r6,a
      000CE4 A8 08            [24]  641 	mov	r0,_bp
      000CE6 08               [12]  642 	inc	r0
      000CE7 C3               [12]  643 	clr	c
      000CE8 E6               [12]  644 	mov	a,@r0
      000CE9 9A               [12]  645 	subb	a,r2
      000CEA 08               [12]  646 	inc	r0
      000CEB E6               [12]  647 	mov	a,@r0
      000CEC 9B               [12]  648 	subb	a,r3
      000CED 08               [12]  649 	inc	r0
      000CEE E6               [12]  650 	mov	a,@r0
      000CEF 9F               [12]  651 	subb	a,r7
      000CF0 08               [12]  652 	inc	r0
      000CF1 E6               [12]  653 	mov	a,@r0
      000CF2 9E               [12]  654 	subb	a,r6
      000CF3 40 09            [24]  655 	jc	00102$
      000CF5                        656 00101$:
      000CF5 90 00 01         [24]  657 	mov	dptr,#(0x01&0x00ff)
      000CF8 E4               [12]  658 	clr	a
      000CF9 F5 F0            [12]  659 	mov	b,a
      000CFB 02 0E 0D         [24]  660 	ljmp	00108$
      000CFE                        661 00102$:
                                    662 ;	pff\source\pff.c:442: switch (fs->fs_type) {
      000CFE E5 08            [12]  663 	mov	a,_bp
      000D00 24 0F            [12]  664 	add	a,#0x0f
      000D02 F8               [12]  665 	mov	r0,a
      000D03 86 82            [24]  666 	mov	dpl,@r0
      000D05 08               [12]  667 	inc	r0
      000D06 86 83            [24]  668 	mov	dph,@r0
      000D08 08               [12]  669 	inc	r0
      000D09 86 F0            [24]  670 	mov	b,@r0
      000D0B 12 3A A5         [24]  671 	lcall	__gptrget
      000D0E FF               [12]  672 	mov	r7,a
      000D0F BF 03 02         [24]  673 	cjne	r7,#0x03,00124$
      000D12 80 03            [24]  674 	sjmp	00125$
      000D14                        675 00124$:
      000D14 02 0E 07         [24]  676 	ljmp	00107$
      000D17                        677 00125$:
                                    678 ;	pff\source\pff.c:464: if (disk_readp(buf, fs->fatbase + clst / 128, ((UINT)clst % 128) * 4, 4)) break;
      000D17 A8 08            [24]  679 	mov	r0,_bp
      000D19 08               [12]  680 	inc	r0
      000D1A 86 04            [24]  681 	mov	ar4,@r0
      000D1C 08               [12]  682 	inc	r0
      000D1D 53 04 7F         [24]  683 	anl	ar4,#0x7f
      000D20 7D 00            [12]  684 	mov	r5,#0x00
      000D22 E5 08            [12]  685 	mov	a,_bp
      000D24 24 09            [12]  686 	add	a,#0x09
      000D26 F8               [12]  687 	mov	r0,a
      000D27 EC               [12]  688 	mov	a,r4
      000D28 2C               [12]  689 	add	a,r4
      000D29 F6               [12]  690 	mov	@r0,a
      000D2A ED               [12]  691 	mov	a,r5
      000D2B 33               [12]  692 	rlc	a
      000D2C 08               [12]  693 	inc	r0
      000D2D F6               [12]  694 	mov	@r0,a
      000D2E 18               [12]  695 	dec	r0
      000D2F E6               [12]  696 	mov	a,@r0
      000D30 26               [12]  697 	add	a,@r0
      000D31 F6               [12]  698 	mov	@r0,a
      000D32 08               [12]  699 	inc	r0
      000D33 E6               [12]  700 	mov	a,@r0
      000D34 33               [12]  701 	rlc	a
      000D35 F6               [12]  702 	mov	@r0,a
      000D36 E5 08            [12]  703 	mov	a,_bp
      000D38 24 0F            [12]  704 	add	a,#0x0f
      000D3A F8               [12]  705 	mov	r0,a
      000D3B 74 0A            [12]  706 	mov	a,#0x0a
      000D3D 26               [12]  707 	add	a,@r0
      000D3E FB               [12]  708 	mov	r3,a
      000D3F E4               [12]  709 	clr	a
      000D40 08               [12]  710 	inc	r0
      000D41 36               [12]  711 	addc	a,@r0
      000D42 FE               [12]  712 	mov	r6,a
      000D43 08               [12]  713 	inc	r0
      000D44 86 07            [24]  714 	mov	ar7,@r0
      000D46 8B 82            [24]  715 	mov	dpl,r3
      000D48 8E 83            [24]  716 	mov	dph,r6
      000D4A 8F F0            [24]  717 	mov	b,r7
      000D4C E5 08            [12]  718 	mov	a,_bp
      000D4E 24 05            [12]  719 	add	a,#0x05
      000D50 F8               [12]  720 	mov	r0,a
      000D51 12 3A A5         [24]  721 	lcall	__gptrget
      000D54 F6               [12]  722 	mov	@r0,a
      000D55 A3               [24]  723 	inc	dptr
      000D56 12 3A A5         [24]  724 	lcall	__gptrget
      000D59 08               [12]  725 	inc	r0
      000D5A F6               [12]  726 	mov	@r0,a
      000D5B A3               [24]  727 	inc	dptr
      000D5C 12 3A A5         [24]  728 	lcall	__gptrget
      000D5F 08               [12]  729 	inc	r0
      000D60 F6               [12]  730 	mov	@r0,a
      000D61 A3               [24]  731 	inc	dptr
      000D62 12 3A A5         [24]  732 	lcall	__gptrget
      000D65 08               [12]  733 	inc	r0
      000D66 F6               [12]  734 	mov	@r0,a
      000D67 A8 08            [24]  735 	mov	r0,_bp
      000D69 08               [12]  736 	inc	r0
      000D6A 86 04            [24]  737 	mov	ar4,@r0
      000D6C 08               [12]  738 	inc	r0
      000D6D E6               [12]  739 	mov	a,@r0
      000D6E A2 E7            [12]  740 	mov	c,acc.7
      000D70 CC               [12]  741 	xch	a,r4
      000D71 33               [12]  742 	rlc	a
      000D72 CC               [12]  743 	xch	a,r4
      000D73 33               [12]  744 	rlc	a
      000D74 CC               [12]  745 	xch	a,r4
      000D75 54 01            [12]  746 	anl	a,#0x01
      000D77 FD               [12]  747 	mov	r5,a
      000D78 08               [12]  748 	inc	r0
      000D79 E6               [12]  749 	mov	a,@r0
      000D7A 26               [12]  750 	add	a,@r0
      000D7B 4D               [12]  751 	orl	a,r5
      000D7C FD               [12]  752 	mov	r5,a
      000D7D 86 06            [24]  753 	mov	ar6,@r0
      000D7F 08               [12]  754 	inc	r0
      000D80 E6               [12]  755 	mov	a,@r0
      000D81 A2 E7            [12]  756 	mov	c,acc.7
      000D83 CE               [12]  757 	xch	a,r6
      000D84 33               [12]  758 	rlc	a
      000D85 CE               [12]  759 	xch	a,r6
      000D86 33               [12]  760 	rlc	a
      000D87 CE               [12]  761 	xch	a,r6
      000D88 54 01            [12]  762 	anl	a,#0x01
      000D8A FF               [12]  763 	mov	r7,a
      000D8B E5 08            [12]  764 	mov	a,_bp
      000D8D 24 05            [12]  765 	add	a,#0x05
      000D8F F8               [12]  766 	mov	r0,a
      000D90 EC               [12]  767 	mov	a,r4
      000D91 26               [12]  768 	add	a,@r0
      000D92 F6               [12]  769 	mov	@r0,a
      000D93 ED               [12]  770 	mov	a,r5
      000D94 08               [12]  771 	inc	r0
      000D95 36               [12]  772 	addc	a,@r0
      000D96 F6               [12]  773 	mov	@r0,a
      000D97 EE               [12]  774 	mov	a,r6
      000D98 08               [12]  775 	inc	r0
      000D99 36               [12]  776 	addc	a,@r0
      000D9A F6               [12]  777 	mov	@r0,a
      000D9B EF               [12]  778 	mov	a,r7
      000D9C 08               [12]  779 	inc	r0
      000D9D 36               [12]  780 	addc	a,@r0
      000D9E F6               [12]  781 	mov	@r0,a
      000D9F E5 08            [12]  782 	mov	a,_bp
      000DA1 24 0B            [12]  783 	add	a,#0x0b
      000DA3 FB               [12]  784 	mov	r3,a
      000DA4 FA               [12]  785 	mov	r2,a
      000DA5 7E 00            [12]  786 	mov	r6,#0x00
      000DA7 7F 40            [12]  787 	mov	r7,#0x40
      000DA9 C0 03            [24]  788 	push	ar3
      000DAB 74 04            [12]  789 	mov	a,#0x04
      000DAD C0 E0            [24]  790 	push	acc
      000DAF E4               [12]  791 	clr	a
      000DB0 C0 E0            [24]  792 	push	acc
      000DB2 E5 08            [12]  793 	mov	a,_bp
      000DB4 24 09            [12]  794 	add	a,#0x09
      000DB6 F8               [12]  795 	mov	r0,a
      000DB7 E6               [12]  796 	mov	a,@r0
      000DB8 C0 E0            [24]  797 	push	acc
      000DBA 08               [12]  798 	inc	r0
      000DBB E6               [12]  799 	mov	a,@r0
      000DBC C0 E0            [24]  800 	push	acc
      000DBE E5 08            [12]  801 	mov	a,_bp
      000DC0 24 05            [12]  802 	add	a,#0x05
      000DC2 F8               [12]  803 	mov	r0,a
      000DC3 E6               [12]  804 	mov	a,@r0
      000DC4 C0 E0            [24]  805 	push	acc
      000DC6 08               [12]  806 	inc	r0
      000DC7 E6               [12]  807 	mov	a,@r0
      000DC8 C0 E0            [24]  808 	push	acc
      000DCA 08               [12]  809 	inc	r0
      000DCB E6               [12]  810 	mov	a,@r0
      000DCC C0 E0            [24]  811 	push	acc
      000DCE 08               [12]  812 	inc	r0
      000DCF E6               [12]  813 	mov	a,@r0
      000DD0 C0 E0            [24]  814 	push	acc
      000DD2 8A 82            [24]  815 	mov	dpl,r2
      000DD4 8E 83            [24]  816 	mov	dph,r6
      000DD6 8F F0            [24]  817 	mov	b,r7
      000DD8 12 09 97         [24]  818 	lcall	_disk_readp
      000DDB AF 82            [24]  819 	mov	r7,dpl
      000DDD E5 81            [12]  820 	mov	a,sp
      000DDF 24 F8            [12]  821 	add	a,#0xf8
      000DE1 F5 81            [12]  822 	mov	sp,a
      000DE3 D0 03            [24]  823 	pop	ar3
      000DE5 EF               [12]  824 	mov	a,r7
                                    825 ;	pff\source\pff.c:465: return ld_dword(buf) & 0x0FFFFFFF;
      000DE6 70 1F            [24]  826 	jnz	00107$
      000DE8 FF               [12]  827 	mov	r7,a
      000DE9 7E 40            [12]  828 	mov	r6,#0x40
      000DEB 8B 82            [24]  829 	mov	dpl,r3
      000DED 8F 83            [24]  830 	mov	dph,r7
      000DEF 8E F0            [24]  831 	mov	b,r6
      000DF1 12 0A 83         [24]  832 	lcall	_ld_dword
      000DF4 AC 82            [24]  833 	mov	r4,dpl
      000DF6 AD 83            [24]  834 	mov	r5,dph
      000DF8 AE F0            [24]  835 	mov	r6,b
      000DFA FF               [12]  836 	mov	r7,a
      000DFB 53 07 0F         [24]  837 	anl	ar7,#0x0f
      000DFE 8C 82            [24]  838 	mov	dpl,r4
      000E00 8D 83            [24]  839 	mov	dph,r5
      000E02 8E F0            [24]  840 	mov	b,r6
      000E04 EF               [12]  841 	mov	a,r7
                                    842 ;	pff\source\pff.c:467: }
      000E05 80 06            [24]  843 	sjmp	00108$
      000E07                        844 00107$:
                                    845 ;	pff\source\pff.c:469: return 1;	/* An error occured at the disk I/O layer */
      000E07 90 00 01         [24]  846 	mov	dptr,#(0x01&0x00ff)
      000E0A E4               [12]  847 	clr	a
      000E0B F5 F0            [12]  848 	mov	b,a
      000E0D                        849 00108$:
                                    850 ;	pff\source\pff.c:470: }
      000E0D 85 08 81         [24]  851 	mov	sp,_bp
      000E10 D0 08            [24]  852 	pop	_bp
      000E12 22               [24]  853 	ret
                                    854 ;------------------------------------------------------------
                                    855 ;Allocation info for local variables in function 'clust2sect'
                                    856 ;------------------------------------------------------------
                                    857 ;clst                      Allocated to stack - _bp +1
                                    858 ;fs                        Allocated to stack - _bp +9
                                    859 ;sloc0                     Allocated to stack - _bp +5
                                    860 ;------------------------------------------------------------
                                    861 ;	pff\source\pff.c:479: static DWORD clust2sect (	/* !=0: Sector number, 0: Failed - invalid cluster# */
                                    862 ;	-----------------------------------------
                                    863 ;	 function clust2sect
                                    864 ;	-----------------------------------------
      000E13                        865 _clust2sect:
      000E13 C0 08            [24]  866 	push	_bp
      000E15 85 81 08         [24]  867 	mov	_bp,sp
      000E18 C8               [12]  868 	xch	a,r0
      000E19 E5 81            [12]  869 	mov	a,sp
      000E1B 24 0B            [12]  870 	add	a,#0x0b
      000E1D F5 81            [12]  871 	mov	sp,a
      000E1F E5 08            [12]  872 	mov	a,_bp
      000E21 24 05            [12]  873 	add	a,#0x05
      000E23 C8               [12]  874 	xch	a,r0
      000E24 A6 82            [24]  875 	mov	@r0,dpl
      000E26 08               [12]  876 	inc	r0
      000E27 A6 83            [24]  877 	mov	@r0,dph
      000E29 08               [12]  878 	inc	r0
      000E2A A6 F0            [24]  879 	mov	@r0,b
      000E2C 08               [12]  880 	inc	r0
      000E2D F6               [12]  881 	mov	@r0,a
                                    882 ;	pff\source\pff.c:483: FATFS *fs = FatFs;
      000E2E 90 00 2B         [24]  883 	mov	dptr,#_FatFs
      000E31 E0               [24]  884 	movx	a,@dptr
      000E32 FA               [12]  885 	mov	r2,a
      000E33 A3               [24]  886 	inc	dptr
      000E34 E0               [24]  887 	movx	a,@dptr
      000E35 FB               [12]  888 	mov	r3,a
      000E36 A3               [24]  889 	inc	dptr
      000E37 E0               [24]  890 	movx	a,@dptr
      000E38 FF               [12]  891 	mov	r7,a
      000E39 E5 08            [12]  892 	mov	a,_bp
      000E3B 24 09            [12]  893 	add	a,#0x09
      000E3D F8               [12]  894 	mov	r0,a
      000E3E A6 02            [24]  895 	mov	@r0,ar2
      000E40 08               [12]  896 	inc	r0
      000E41 A6 03            [24]  897 	mov	@r0,ar3
      000E43 08               [12]  898 	inc	r0
      000E44 A6 07            [24]  899 	mov	@r0,ar7
                                    900 ;	pff\source\pff.c:486: clst -= 2;
      000E46 E5 08            [12]  901 	mov	a,_bp
      000E48 24 05            [12]  902 	add	a,#0x05
      000E4A F8               [12]  903 	mov	r0,a
      000E4B A9 08            [24]  904 	mov	r1,_bp
      000E4D 09               [12]  905 	inc	r1
      000E4E E6               [12]  906 	mov	a,@r0
      000E4F 24 FE            [12]  907 	add	a,#0xfe
      000E51 F7               [12]  908 	mov	@r1,a
      000E52 08               [12]  909 	inc	r0
      000E53 E6               [12]  910 	mov	a,@r0
      000E54 34 FF            [12]  911 	addc	a,#0xff
      000E56 09               [12]  912 	inc	r1
      000E57 F7               [12]  913 	mov	@r1,a
      000E58 08               [12]  914 	inc	r0
      000E59 E6               [12]  915 	mov	a,@r0
      000E5A 34 FF            [12]  916 	addc	a,#0xff
      000E5C 09               [12]  917 	inc	r1
      000E5D F7               [12]  918 	mov	@r1,a
      000E5E 08               [12]  919 	inc	r0
      000E5F E6               [12]  920 	mov	a,@r0
      000E60 34 FF            [12]  921 	addc	a,#0xff
      000E62 09               [12]  922 	inc	r1
      000E63 F7               [12]  923 	mov	@r1,a
                                    924 ;	pff\source\pff.c:487: if (clst >= (fs->n_fatent - 2)) return 0;		/* Invalid cluster# */
      000E64 E5 08            [12]  925 	mov	a,_bp
      000E66 24 09            [12]  926 	add	a,#0x09
      000E68 F8               [12]  927 	mov	r0,a
      000E69 74 06            [12]  928 	mov	a,#0x06
      000E6B 26               [12]  929 	add	a,@r0
      000E6C FA               [12]  930 	mov	r2,a
      000E6D E4               [12]  931 	clr	a
      000E6E 08               [12]  932 	inc	r0
      000E6F 36               [12]  933 	addc	a,@r0
      000E70 FB               [12]  934 	mov	r3,a
      000E71 08               [12]  935 	inc	r0
      000E72 86 04            [24]  936 	mov	ar4,@r0
      000E74 8A 82            [24]  937 	mov	dpl,r2
      000E76 8B 83            [24]  938 	mov	dph,r3
      000E78 8C F0            [24]  939 	mov	b,r4
      000E7A 12 3A A5         [24]  940 	lcall	__gptrget
      000E7D FA               [12]  941 	mov	r2,a
      000E7E A3               [24]  942 	inc	dptr
      000E7F 12 3A A5         [24]  943 	lcall	__gptrget
      000E82 FB               [12]  944 	mov	r3,a
      000E83 A3               [24]  945 	inc	dptr
      000E84 12 3A A5         [24]  946 	lcall	__gptrget
      000E87 FC               [12]  947 	mov	r4,a
      000E88 A3               [24]  948 	inc	dptr
      000E89 12 3A A5         [24]  949 	lcall	__gptrget
      000E8C FF               [12]  950 	mov	r7,a
      000E8D EA               [12]  951 	mov	a,r2
      000E8E 24 FE            [12]  952 	add	a,#0xfe
      000E90 FA               [12]  953 	mov	r2,a
      000E91 EB               [12]  954 	mov	a,r3
      000E92 34 FF            [12]  955 	addc	a,#0xff
      000E94 FB               [12]  956 	mov	r3,a
      000E95 EC               [12]  957 	mov	a,r4
      000E96 34 FF            [12]  958 	addc	a,#0xff
      000E98 FC               [12]  959 	mov	r4,a
      000E99 EF               [12]  960 	mov	a,r7
      000E9A 34 FF            [12]  961 	addc	a,#0xff
      000E9C FF               [12]  962 	mov	r7,a
      000E9D A8 08            [24]  963 	mov	r0,_bp
      000E9F 08               [12]  964 	inc	r0
      000EA0 C3               [12]  965 	clr	c
      000EA1 E6               [12]  966 	mov	a,@r0
      000EA2 9A               [12]  967 	subb	a,r2
      000EA3 08               [12]  968 	inc	r0
      000EA4 E6               [12]  969 	mov	a,@r0
      000EA5 9B               [12]  970 	subb	a,r3
      000EA6 08               [12]  971 	inc	r0
      000EA7 E6               [12]  972 	mov	a,@r0
      000EA8 9C               [12]  973 	subb	a,r4
      000EA9 08               [12]  974 	inc	r0
      000EAA E6               [12]  975 	mov	a,@r0
      000EAB 9F               [12]  976 	subb	a,r7
      000EAC 40 09            [24]  977 	jc	00102$
      000EAE 90 00 00         [24]  978 	mov	dptr,#(0x00&0x00ff)
      000EB1 E4               [12]  979 	clr	a
      000EB2 F5 F0            [12]  980 	mov	b,a
      000EB4 02 0F 48         [24]  981 	ljmp	00103$
      000EB7                        982 00102$:
                                    983 ;	pff\source\pff.c:488: return (DWORD)clst * fs->csize + fs->database;
      000EB7 E5 08            [12]  984 	mov	a,_bp
      000EB9 24 09            [12]  985 	add	a,#0x09
      000EBB F8               [12]  986 	mov	r0,a
      000EBC 74 02            [12]  987 	mov	a,#0x02
      000EBE 26               [12]  988 	add	a,@r0
      000EBF FD               [12]  989 	mov	r5,a
      000EC0 E4               [12]  990 	clr	a
      000EC1 08               [12]  991 	inc	r0
      000EC2 36               [12]  992 	addc	a,@r0
      000EC3 FE               [12]  993 	mov	r6,a
      000EC4 08               [12]  994 	inc	r0
      000EC5 86 07            [24]  995 	mov	ar7,@r0
      000EC7 8D 82            [24]  996 	mov	dpl,r5
      000EC9 8E 83            [24]  997 	mov	dph,r6
      000ECB 8F F0            [24]  998 	mov	b,r7
      000ECD 12 3A A5         [24]  999 	lcall	__gptrget
      000ED0 FD               [12] 1000 	mov	r5,a
      000ED1 7F 00            [12] 1001 	mov	r7,#0x00
      000ED3 7E 00            [12] 1002 	mov	r6,#0x00
      000ED5 7C 00            [12] 1003 	mov	r4,#0x00
      000ED7 C0 05            [24] 1004 	push	ar5
      000ED9 C0 07            [24] 1005 	push	ar7
      000EDB C0 06            [24] 1006 	push	ar6
      000EDD C0 04            [24] 1007 	push	ar4
      000EDF A8 08            [24] 1008 	mov	r0,_bp
      000EE1 08               [12] 1009 	inc	r0
      000EE2 86 82            [24] 1010 	mov	dpl,@r0
      000EE4 08               [12] 1011 	inc	r0
      000EE5 86 83            [24] 1012 	mov	dph,@r0
      000EE7 08               [12] 1013 	inc	r0
      000EE8 86 F0            [24] 1014 	mov	b,@r0
      000EEA 08               [12] 1015 	inc	r0
      000EEB E6               [12] 1016 	mov	a,@r0
      000EEC 12 3B 2F         [24] 1017 	lcall	__mullong
      000EEF C8               [12] 1018 	xch	a,r0
      000EF0 E5 08            [12] 1019 	mov	a,_bp
      000EF2 24 05            [12] 1020 	add	a,#0x05
      000EF4 C8               [12] 1021 	xch	a,r0
      000EF5 A6 82            [24] 1022 	mov	@r0,dpl
      000EF7 08               [12] 1023 	inc	r0
      000EF8 A6 83            [24] 1024 	mov	@r0,dph
      000EFA 08               [12] 1025 	inc	r0
      000EFB A6 F0            [24] 1026 	mov	@r0,b
      000EFD 08               [12] 1027 	inc	r0
      000EFE F6               [12] 1028 	mov	@r0,a
      000EFF E5 81            [12] 1029 	mov	a,sp
      000F01 24 FC            [12] 1030 	add	a,#0xfc
      000F03 F5 81            [12] 1031 	mov	sp,a
      000F05 E5 08            [12] 1032 	mov	a,_bp
      000F07 24 09            [12] 1033 	add	a,#0x09
      000F09 F8               [12] 1034 	mov	r0,a
      000F0A 74 12            [12] 1035 	mov	a,#0x12
      000F0C 26               [12] 1036 	add	a,@r0
      000F0D FA               [12] 1037 	mov	r2,a
      000F0E E4               [12] 1038 	clr	a
      000F0F 08               [12] 1039 	inc	r0
      000F10 36               [12] 1040 	addc	a,@r0
      000F11 FB               [12] 1041 	mov	r3,a
      000F12 08               [12] 1042 	inc	r0
      000F13 86 07            [24] 1043 	mov	ar7,@r0
      000F15 8A 82            [24] 1044 	mov	dpl,r2
      000F17 8B 83            [24] 1045 	mov	dph,r3
      000F19 8F F0            [24] 1046 	mov	b,r7
      000F1B 12 3A A5         [24] 1047 	lcall	__gptrget
      000F1E FA               [12] 1048 	mov	r2,a
      000F1F A3               [24] 1049 	inc	dptr
      000F20 12 3A A5         [24] 1050 	lcall	__gptrget
      000F23 FB               [12] 1051 	mov	r3,a
      000F24 A3               [24] 1052 	inc	dptr
      000F25 12 3A A5         [24] 1053 	lcall	__gptrget
      000F28 FF               [12] 1054 	mov	r7,a
      000F29 A3               [24] 1055 	inc	dptr
      000F2A 12 3A A5         [24] 1056 	lcall	__gptrget
      000F2D FE               [12] 1057 	mov	r6,a
      000F2E E5 08            [12] 1058 	mov	a,_bp
      000F30 24 05            [12] 1059 	add	a,#0x05
      000F32 F8               [12] 1060 	mov	r0,a
      000F33 EA               [12] 1061 	mov	a,r2
      000F34 26               [12] 1062 	add	a,@r0
      000F35 FA               [12] 1063 	mov	r2,a
      000F36 EB               [12] 1064 	mov	a,r3
      000F37 08               [12] 1065 	inc	r0
      000F38 36               [12] 1066 	addc	a,@r0
      000F39 FB               [12] 1067 	mov	r3,a
      000F3A EF               [12] 1068 	mov	a,r7
      000F3B 08               [12] 1069 	inc	r0
      000F3C 36               [12] 1070 	addc	a,@r0
      000F3D FF               [12] 1071 	mov	r7,a
      000F3E EE               [12] 1072 	mov	a,r6
      000F3F 08               [12] 1073 	inc	r0
      000F40 36               [12] 1074 	addc	a,@r0
      000F41 FE               [12] 1075 	mov	r6,a
      000F42 8A 82            [24] 1076 	mov	dpl,r2
      000F44 8B 83            [24] 1077 	mov	dph,r3
      000F46 8F F0            [24] 1078 	mov	b,r7
      000F48                       1079 00103$:
                                   1080 ;	pff\source\pff.c:489: }
      000F48 85 08 81         [24] 1081 	mov	sp,_bp
      000F4B D0 08            [24] 1082 	pop	_bp
      000F4D 22               [24] 1083 	ret
                                   1084 ;------------------------------------------------------------
                                   1085 ;Allocation info for local variables in function 'get_clust'
                                   1086 ;------------------------------------------------------------
                                   1087 ;dir                       Allocated to stack - _bp +1
                                   1088 ;fs                        Allocated to registers 
                                   1089 ;clst                      Allocated to stack - _bp +4
                                   1090 ;------------------------------------------------------------
                                   1091 ;	pff\source\pff.c:492: static CLUST get_clust (
                                   1092 ;	-----------------------------------------
                                   1093 ;	 function get_clust
                                   1094 ;	-----------------------------------------
      000F4E                       1095 _get_clust:
      000F4E C0 08            [24] 1096 	push	_bp
      000F50 85 81 08         [24] 1097 	mov	_bp,sp
      000F53 C0 82            [24] 1098 	push	dpl
      000F55 C0 83            [24] 1099 	push	dph
      000F57 C0 F0            [24] 1100 	push	b
      000F59 E5 81            [12] 1101 	mov	a,sp
      000F5B 24 04            [12] 1102 	add	a,#0x04
      000F5D F5 81            [12] 1103 	mov	sp,a
                                   1104 ;	pff\source\pff.c:501: clst = ld_word(dir+DIR_FstClusHI);
      000F5F A8 08            [24] 1105 	mov	r0,_bp
      000F61 08               [12] 1106 	inc	r0
      000F62 74 14            [12] 1107 	mov	a,#0x14
      000F64 26               [12] 1108 	add	a,@r0
      000F65 FA               [12] 1109 	mov	r2,a
      000F66 E4               [12] 1110 	clr	a
      000F67 08               [12] 1111 	inc	r0
      000F68 36               [12] 1112 	addc	a,@r0
      000F69 FB               [12] 1113 	mov	r3,a
      000F6A 08               [12] 1114 	inc	r0
      000F6B 86 04            [24] 1115 	mov	ar4,@r0
      000F6D 8A 82            [24] 1116 	mov	dpl,r2
      000F6F 8B 83            [24] 1117 	mov	dph,r3
      000F71 8C F0            [24] 1118 	mov	b,r4
      000F73 12 0A 53         [24] 1119 	lcall	_ld_word
      000F76 AB 82            [24] 1120 	mov	r3,dpl
      000F78 AC 83            [24] 1121 	mov	r4,dph
      000F7A 8C 02            [24] 1122 	mov	ar2,r4
                                   1123 ;	pff\source\pff.c:502: clst <<= 16;
      000F7C E4               [12] 1124 	clr	a
      000F7D E5 08            [12] 1125 	mov	a,_bp
      000F7F 24 04            [12] 1126 	add	a,#0x04
      000F81 F8               [12] 1127 	mov	r0,a
      000F82 08               [12] 1128 	inc	r0
      000F83 08               [12] 1129 	inc	r0
      000F84 08               [12] 1130 	inc	r0
      000F85 A6 02            [24] 1131 	mov	@r0,ar2
      000F87 18               [12] 1132 	dec	r0
      000F88 A6 03            [24] 1133 	mov	@r0,ar3
      000F8A 18               [12] 1134 	dec	r0
      000F8B 18               [12] 1135 	dec	r0
      000F8C 76 00            [12] 1136 	mov	@r0,#0x00
      000F8E 08               [12] 1137 	inc	r0
      000F8F 76 00            [12] 1138 	mov	@r0,#0x00
                                   1139 ;	pff\source\pff.c:504: clst |= ld_word(dir+DIR_FstClusLO);
      000F91 A8 08            [24] 1140 	mov	r0,_bp
      000F93 08               [12] 1141 	inc	r0
      000F94 74 1A            [12] 1142 	mov	a,#0x1a
      000F96 26               [12] 1143 	add	a,@r0
      000F97 FD               [12] 1144 	mov	r5,a
      000F98 E4               [12] 1145 	clr	a
      000F99 08               [12] 1146 	inc	r0
      000F9A 36               [12] 1147 	addc	a,@r0
      000F9B FE               [12] 1148 	mov	r6,a
      000F9C 08               [12] 1149 	inc	r0
      000F9D 86 07            [24] 1150 	mov	ar7,@r0
      000F9F 8D 82            [24] 1151 	mov	dpl,r5
      000FA1 8E 83            [24] 1152 	mov	dph,r6
      000FA3 8F F0            [24] 1153 	mov	b,r7
      000FA5 12 0A 53         [24] 1154 	lcall	_ld_word
      000FA8 AE 82            [24] 1155 	mov	r6,dpl
      000FAA AF 83            [24] 1156 	mov	r7,dph
      000FAC E4               [12] 1157 	clr	a
      000FAD FD               [12] 1158 	mov	r5,a
      000FAE FC               [12] 1159 	mov	r4,a
      000FAF E5 08            [12] 1160 	mov	a,_bp
      000FB1 24 04            [12] 1161 	add	a,#0x04
      000FB3 F8               [12] 1162 	mov	r0,a
      000FB4 E6               [12] 1163 	mov	a,@r0
      000FB5 42 06            [12] 1164 	orl	ar6,a
      000FB7 08               [12] 1165 	inc	r0
      000FB8 E6               [12] 1166 	mov	a,@r0
      000FB9 42 07            [12] 1167 	orl	ar7,a
      000FBB 08               [12] 1168 	inc	r0
      000FBC E6               [12] 1169 	mov	a,@r0
      000FBD 42 05            [12] 1170 	orl	ar5,a
      000FBF 08               [12] 1171 	inc	r0
      000FC0 E6               [12] 1172 	mov	a,@r0
      000FC1 42 04            [12] 1173 	orl	ar4,a
                                   1174 ;	pff\source\pff.c:506: return clst;
      000FC3 8E 82            [24] 1175 	mov	dpl,r6
      000FC5 8F 83            [24] 1176 	mov	dph,r7
      000FC7 8D F0            [24] 1177 	mov	b,r5
      000FC9 EC               [12] 1178 	mov	a,r4
                                   1179 ;	pff\source\pff.c:507: }
      000FCA 85 08 81         [24] 1180 	mov	sp,_bp
      000FCD D0 08            [24] 1181 	pop	_bp
      000FCF 22               [24] 1182 	ret
                                   1183 ;------------------------------------------------------------
                                   1184 ;Allocation info for local variables in function 'dir_rewind'
                                   1185 ;------------------------------------------------------------
                                   1186 ;dj                        Allocated to stack - _bp +1
                                   1187 ;clst                      Allocated to stack - _bp +7
                                   1188 ;fs                        Allocated to stack - _bp +11
                                   1189 ;sloc0                     Allocated to stack - _bp +4
                                   1190 ;------------------------------------------------------------
                                   1191 ;	pff\source\pff.c:513: static FRESULT dir_rewind (
                                   1192 ;	-----------------------------------------
                                   1193 ;	 function dir_rewind
                                   1194 ;	-----------------------------------------
      000FD0                       1195 _dir_rewind:
      000FD0 C0 08            [24] 1196 	push	_bp
      000FD2 85 81 08         [24] 1197 	mov	_bp,sp
      000FD5 C0 82            [24] 1198 	push	dpl
      000FD7 C0 83            [24] 1199 	push	dph
      000FD9 C0 F0            [24] 1200 	push	b
      000FDB E5 81            [12] 1201 	mov	a,sp
      000FDD 24 0A            [12] 1202 	add	a,#0x0a
      000FDF F5 81            [12] 1203 	mov	sp,a
                                   1204 ;	pff\source\pff.c:518: FATFS *fs = FatFs;
      000FE1 90 00 2B         [24] 1205 	mov	dptr,#_FatFs
      000FE4 E0               [24] 1206 	movx	a,@dptr
      000FE5 FA               [12] 1207 	mov	r2,a
      000FE6 A3               [24] 1208 	inc	dptr
      000FE7 E0               [24] 1209 	movx	a,@dptr
      000FE8 FB               [12] 1210 	mov	r3,a
      000FE9 A3               [24] 1211 	inc	dptr
      000FEA E0               [24] 1212 	movx	a,@dptr
      000FEB FC               [12] 1213 	mov	r4,a
      000FEC E5 08            [12] 1214 	mov	a,_bp
      000FEE 24 0B            [12] 1215 	add	a,#0x0b
      000FF0 F8               [12] 1216 	mov	r0,a
      000FF1 A6 02            [24] 1217 	mov	@r0,ar2
      000FF3 08               [12] 1218 	inc	r0
      000FF4 A6 03            [24] 1219 	mov	@r0,ar3
      000FF6 08               [12] 1220 	inc	r0
      000FF7 A6 04            [24] 1221 	mov	@r0,ar4
                                   1222 ;	pff\source\pff.c:521: dj->index = 0;
      000FF9 A8 08            [24] 1223 	mov	r0,_bp
      000FFB 08               [12] 1224 	inc	r0
      000FFC 86 82            [24] 1225 	mov	dpl,@r0
      000FFE 08               [12] 1226 	inc	r0
      000FFF 86 83            [24] 1227 	mov	dph,@r0
      001001 08               [12] 1228 	inc	r0
      001002 86 F0            [24] 1229 	mov	b,@r0
      001004 E4               [12] 1230 	clr	a
      001005 12 38 59         [24] 1231 	lcall	__gptrput
      001008 A3               [24] 1232 	inc	dptr
      001009 12 38 59         [24] 1233 	lcall	__gptrput
                                   1234 ;	pff\source\pff.c:522: clst = dj->sclust;
      00100C A8 08            [24] 1235 	mov	r0,_bp
      00100E 08               [12] 1236 	inc	r0
      00100F 74 05            [12] 1237 	mov	a,#0x05
      001011 26               [12] 1238 	add	a,@r0
      001012 FA               [12] 1239 	mov	r2,a
      001013 E4               [12] 1240 	clr	a
      001014 08               [12] 1241 	inc	r0
      001015 36               [12] 1242 	addc	a,@r0
      001016 FB               [12] 1243 	mov	r3,a
      001017 08               [12] 1244 	inc	r0
      001018 86 04            [24] 1245 	mov	ar4,@r0
      00101A 8A 82            [24] 1246 	mov	dpl,r2
      00101C 8B 83            [24] 1247 	mov	dph,r3
      00101E 8C F0            [24] 1248 	mov	b,r4
      001020 E5 08            [12] 1249 	mov	a,_bp
      001022 24 07            [12] 1250 	add	a,#0x07
      001024 F8               [12] 1251 	mov	r0,a
      001025 12 3A A5         [24] 1252 	lcall	__gptrget
      001028 F6               [12] 1253 	mov	@r0,a
      001029 A3               [24] 1254 	inc	dptr
      00102A 12 3A A5         [24] 1255 	lcall	__gptrget
      00102D 08               [12] 1256 	inc	r0
      00102E F6               [12] 1257 	mov	@r0,a
      00102F A3               [24] 1258 	inc	dptr
      001030 12 3A A5         [24] 1259 	lcall	__gptrget
      001033 08               [12] 1260 	inc	r0
      001034 F6               [12] 1261 	mov	@r0,a
      001035 A3               [24] 1262 	inc	dptr
      001036 12 3A A5         [24] 1263 	lcall	__gptrget
      001039 08               [12] 1264 	inc	r0
      00103A F6               [12] 1265 	mov	@r0,a
                                   1266 ;	pff\source\pff.c:523: if (clst == 1 || clst >= fs->n_fatent) {	/* Check start cluster range */
      00103B E5 08            [12] 1267 	mov	a,_bp
      00103D 24 07            [12] 1268 	add	a,#0x07
      00103F F8               [12] 1269 	mov	r0,a
      001040 B6 01 0E         [24] 1270 	cjne	@r0,#0x01,00126$
      001043 08               [12] 1271 	inc	r0
      001044 B6 00 0A         [24] 1272 	cjne	@r0,#0x00,00126$
      001047 08               [12] 1273 	inc	r0
      001048 B6 00 06         [24] 1274 	cjne	@r0,#0x00,00126$
      00104B 08               [12] 1275 	inc	r0
      00104C B6 00 02         [24] 1276 	cjne	@r0,#0x00,00126$
      00104F 80 3C            [24] 1277 	sjmp	00101$
      001051                       1278 00126$:
      001051 E5 08            [12] 1279 	mov	a,_bp
      001053 24 0B            [12] 1280 	add	a,#0x0b
      001055 F8               [12] 1281 	mov	r0,a
      001056 74 06            [12] 1282 	mov	a,#0x06
      001058 26               [12] 1283 	add	a,@r0
      001059 FD               [12] 1284 	mov	r5,a
      00105A E4               [12] 1285 	clr	a
      00105B 08               [12] 1286 	inc	r0
      00105C 36               [12] 1287 	addc	a,@r0
      00105D FE               [12] 1288 	mov	r6,a
      00105E 08               [12] 1289 	inc	r0
      00105F 86 07            [24] 1290 	mov	ar7,@r0
      001061 8D 82            [24] 1291 	mov	dpl,r5
      001063 8E 83            [24] 1292 	mov	dph,r6
      001065 8F F0            [24] 1293 	mov	b,r7
      001067 12 3A A5         [24] 1294 	lcall	__gptrget
      00106A FD               [12] 1295 	mov	r5,a
      00106B A3               [24] 1296 	inc	dptr
      00106C 12 3A A5         [24] 1297 	lcall	__gptrget
      00106F FE               [12] 1298 	mov	r6,a
      001070 A3               [24] 1299 	inc	dptr
      001071 12 3A A5         [24] 1300 	lcall	__gptrget
      001074 FF               [12] 1301 	mov	r7,a
      001075 A3               [24] 1302 	inc	dptr
      001076 12 3A A5         [24] 1303 	lcall	__gptrget
      001079 FC               [12] 1304 	mov	r4,a
      00107A E5 08            [12] 1305 	mov	a,_bp
      00107C 24 07            [12] 1306 	add	a,#0x07
      00107E F8               [12] 1307 	mov	r0,a
      00107F C3               [12] 1308 	clr	c
      001080 E6               [12] 1309 	mov	a,@r0
      001081 9D               [12] 1310 	subb	a,r5
      001082 08               [12] 1311 	inc	r0
      001083 E6               [12] 1312 	mov	a,@r0
      001084 9E               [12] 1313 	subb	a,r6
      001085 08               [12] 1314 	inc	r0
      001086 E6               [12] 1315 	mov	a,@r0
      001087 9F               [12] 1316 	subb	a,r7
      001088 08               [12] 1317 	inc	r0
      001089 E6               [12] 1318 	mov	a,@r0
      00108A 9C               [12] 1319 	subb	a,r4
      00108B 40 06            [24] 1320 	jc	00106$
      00108D                       1321 00101$:
                                   1322 ;	pff\source\pff.c:524: return FR_DISK_ERR;
      00108D 75 82 01         [24] 1323 	mov	dpl,#0x01
      001090 02 11 52         [24] 1324 	ljmp	00109$
                                   1325 ;	pff\source\pff.c:526: if (PF_FS_FAT32 && !clst && (_FS_32ONLY || fs->fs_type == FS_FAT32)) {	/* Replace cluster# 0 with root cluster# if in FAT32 */
      001093                       1326 00106$:
      001093 E5 08            [12] 1327 	mov	a,_bp
      001095 24 07            [12] 1328 	add	a,#0x07
      001097 F8               [12] 1329 	mov	r0,a
      001098 E6               [12] 1330 	mov	a,@r0
      001099 08               [12] 1331 	inc	r0
      00109A 46               [12] 1332 	orl	a,@r0
      00109B 08               [12] 1333 	inc	r0
      00109C 46               [12] 1334 	orl	a,@r0
      00109D 08               [12] 1335 	inc	r0
      00109E 46               [12] 1336 	orl	a,@r0
      00109F 70 31            [24] 1337 	jnz	00105$
                                   1338 ;	pff\source\pff.c:527: clst = (CLUST)fs->dirbase;
      0010A1 E5 08            [12] 1339 	mov	a,_bp
      0010A3 24 0B            [12] 1340 	add	a,#0x0b
      0010A5 F8               [12] 1341 	mov	r0,a
      0010A6 74 0E            [12] 1342 	mov	a,#0x0e
      0010A8 26               [12] 1343 	add	a,@r0
      0010A9 FD               [12] 1344 	mov	r5,a
      0010AA E4               [12] 1345 	clr	a
      0010AB 08               [12] 1346 	inc	r0
      0010AC 36               [12] 1347 	addc	a,@r0
      0010AD FE               [12] 1348 	mov	r6,a
      0010AE 08               [12] 1349 	inc	r0
      0010AF 86 07            [24] 1350 	mov	ar7,@r0
      0010B1 8D 82            [24] 1351 	mov	dpl,r5
      0010B3 8E 83            [24] 1352 	mov	dph,r6
      0010B5 8F F0            [24] 1353 	mov	b,r7
      0010B7 E5 08            [12] 1354 	mov	a,_bp
      0010B9 24 07            [12] 1355 	add	a,#0x07
      0010BB F8               [12] 1356 	mov	r0,a
      0010BC 12 3A A5         [24] 1357 	lcall	__gptrget
      0010BF F6               [12] 1358 	mov	@r0,a
      0010C0 A3               [24] 1359 	inc	dptr
      0010C1 12 3A A5         [24] 1360 	lcall	__gptrget
      0010C4 08               [12] 1361 	inc	r0
      0010C5 F6               [12] 1362 	mov	@r0,a
      0010C6 A3               [24] 1363 	inc	dptr
      0010C7 12 3A A5         [24] 1364 	lcall	__gptrget
      0010CA 08               [12] 1365 	inc	r0
      0010CB F6               [12] 1366 	mov	@r0,a
      0010CC A3               [24] 1367 	inc	dptr
      0010CD 12 3A A5         [24] 1368 	lcall	__gptrget
      0010D0 08               [12] 1369 	inc	r0
      0010D1 F6               [12] 1370 	mov	@r0,a
      0010D2                       1371 00105$:
                                   1372 ;	pff\source\pff.c:529: dj->clust = clst;						/* Current cluster */
      0010D2 A8 08            [24] 1373 	mov	r0,_bp
      0010D4 08               [12] 1374 	inc	r0
      0010D5 74 09            [12] 1375 	mov	a,#0x09
      0010D7 26               [12] 1376 	add	a,@r0
      0010D8 FD               [12] 1377 	mov	r5,a
      0010D9 E4               [12] 1378 	clr	a
      0010DA 08               [12] 1379 	inc	r0
      0010DB 36               [12] 1380 	addc	a,@r0
      0010DC FE               [12] 1381 	mov	r6,a
      0010DD 08               [12] 1382 	inc	r0
      0010DE 86 07            [24] 1383 	mov	ar7,@r0
      0010E0 8D 82            [24] 1384 	mov	dpl,r5
      0010E2 8E 83            [24] 1385 	mov	dph,r6
      0010E4 8F F0            [24] 1386 	mov	b,r7
      0010E6 E5 08            [12] 1387 	mov	a,_bp
      0010E8 24 07            [12] 1388 	add	a,#0x07
      0010EA F8               [12] 1389 	mov	r0,a
      0010EB E6               [12] 1390 	mov	a,@r0
      0010EC 12 38 59         [24] 1391 	lcall	__gptrput
      0010EF A3               [24] 1392 	inc	dptr
      0010F0 08               [12] 1393 	inc	r0
      0010F1 E6               [12] 1394 	mov	a,@r0
      0010F2 12 38 59         [24] 1395 	lcall	__gptrput
      0010F5 A3               [24] 1396 	inc	dptr
      0010F6 08               [12] 1397 	inc	r0
      0010F7 E6               [12] 1398 	mov	a,@r0
      0010F8 12 38 59         [24] 1399 	lcall	__gptrput
      0010FB A3               [24] 1400 	inc	dptr
      0010FC 08               [12] 1401 	inc	r0
      0010FD E6               [12] 1402 	mov	a,@r0
      0010FE 12 38 59         [24] 1403 	lcall	__gptrput
                                   1404 ;	pff\source\pff.c:530: dj->sect = (_FS_32ONLY || clst) ? clust2sect(clst) : fs->dirbase;	/* Current sector */
      001101 A8 08            [24] 1405 	mov	r0,_bp
      001103 08               [12] 1406 	inc	r0
      001104 E5 08            [12] 1407 	mov	a,_bp
      001106 24 04            [12] 1408 	add	a,#0x04
      001108 F9               [12] 1409 	mov	r1,a
      001109 74 0D            [12] 1410 	mov	a,#0x0d
      00110B 26               [12] 1411 	add	a,@r0
      00110C F7               [12] 1412 	mov	@r1,a
      00110D E4               [12] 1413 	clr	a
      00110E 08               [12] 1414 	inc	r0
      00110F 36               [12] 1415 	addc	a,@r0
      001110 09               [12] 1416 	inc	r1
      001111 F7               [12] 1417 	mov	@r1,a
      001112 08               [12] 1418 	inc	r0
      001113 E6               [12] 1419 	mov	a,@r0
      001114 09               [12] 1420 	inc	r1
      001115 F7               [12] 1421 	mov	@r1,a
      001116 E5 08            [12] 1422 	mov	a,_bp
      001118 24 07            [12] 1423 	add	a,#0x07
      00111A F8               [12] 1424 	mov	r0,a
      00111B 86 82            [24] 1425 	mov	dpl,@r0
      00111D 08               [12] 1426 	inc	r0
      00111E 86 83            [24] 1427 	mov	dph,@r0
      001120 08               [12] 1428 	inc	r0
      001121 86 F0            [24] 1429 	mov	b,@r0
      001123 08               [12] 1430 	inc	r0
      001124 E6               [12] 1431 	mov	a,@r0
      001125 12 0E 13         [24] 1432 	lcall	_clust2sect
      001128 AA 82            [24] 1433 	mov	r2,dpl
      00112A AB 83            [24] 1434 	mov	r3,dph
      00112C AC F0            [24] 1435 	mov	r4,b
      00112E FF               [12] 1436 	mov	r7,a
      00112F E5 08            [12] 1437 	mov	a,_bp
      001131 24 04            [12] 1438 	add	a,#0x04
      001133 F8               [12] 1439 	mov	r0,a
      001134 86 82            [24] 1440 	mov	dpl,@r0
      001136 08               [12] 1441 	inc	r0
      001137 86 83            [24] 1442 	mov	dph,@r0
      001139 08               [12] 1443 	inc	r0
      00113A 86 F0            [24] 1444 	mov	b,@r0
      00113C EA               [12] 1445 	mov	a,r2
      00113D 12 38 59         [24] 1446 	lcall	__gptrput
      001140 A3               [24] 1447 	inc	dptr
      001141 EB               [12] 1448 	mov	a,r3
      001142 12 38 59         [24] 1449 	lcall	__gptrput
      001145 A3               [24] 1450 	inc	dptr
      001146 EC               [12] 1451 	mov	a,r4
      001147 12 38 59         [24] 1452 	lcall	__gptrput
      00114A A3               [24] 1453 	inc	dptr
      00114B EF               [12] 1454 	mov	a,r7
      00114C 12 38 59         [24] 1455 	lcall	__gptrput
                                   1456 ;	pff\source\pff.c:532: return FR_OK;	/* Seek succeeded */
      00114F 75 82 00         [24] 1457 	mov	dpl,#0x00
      001152                       1458 00109$:
                                   1459 ;	pff\source\pff.c:533: }
      001152 85 08 81         [24] 1460 	mov	sp,_bp
      001155 D0 08            [24] 1461 	pop	_bp
      001157 22               [24] 1462 	ret
                                   1463 ;------------------------------------------------------------
                                   1464 ;Allocation info for local variables in function 'dir_next'
                                   1465 ;------------------------------------------------------------
                                   1466 ;dj                        Allocated to stack - _bp +1
                                   1467 ;clst                      Allocated to stack - _bp +16
                                   1468 ;i                         Allocated to stack - _bp +14
                                   1469 ;fs                        Allocated to stack - _bp +20
                                   1470 ;sloc0                     Allocated to stack - _bp +10
                                   1471 ;sloc1                     Allocated to stack - _bp +17
                                   1472 ;sloc2                     Allocated to stack - _bp +4
                                   1473 ;sloc3                     Allocated to stack - _bp +7
                                   1474 ;------------------------------------------------------------
                                   1475 ;	pff\source\pff.c:542: static FRESULT dir_next (	/* FR_OK:Succeeded, FR_NO_FILE:End of table */
                                   1476 ;	-----------------------------------------
                                   1477 ;	 function dir_next
                                   1478 ;	-----------------------------------------
      001158                       1479 _dir_next:
      001158 C0 08            [24] 1480 	push	_bp
      00115A 85 81 08         [24] 1481 	mov	_bp,sp
      00115D C0 82            [24] 1482 	push	dpl
      00115F C0 83            [24] 1483 	push	dph
      001161 C0 F0            [24] 1484 	push	b
      001163 E5 81            [12] 1485 	mov	a,sp
      001165 24 13            [12] 1486 	add	a,#0x13
      001167 F5 81            [12] 1487 	mov	sp,a
                                   1488 ;	pff\source\pff.c:548: FATFS *fs = FatFs;
      001169 90 00 2B         [24] 1489 	mov	dptr,#_FatFs
      00116C E0               [24] 1490 	movx	a,@dptr
      00116D FA               [12] 1491 	mov	r2,a
      00116E A3               [24] 1492 	inc	dptr
      00116F E0               [24] 1493 	movx	a,@dptr
      001170 FB               [12] 1494 	mov	r3,a
      001171 A3               [24] 1495 	inc	dptr
      001172 E0               [24] 1496 	movx	a,@dptr
      001173 FC               [12] 1497 	mov	r4,a
      001174 E5 08            [12] 1498 	mov	a,_bp
      001176 24 14            [12] 1499 	add	a,#0x14
      001178 F8               [12] 1500 	mov	r0,a
      001179 A6 02            [24] 1501 	mov	@r0,ar2
      00117B 08               [12] 1502 	inc	r0
      00117C A6 03            [24] 1503 	mov	@r0,ar3
      00117E 08               [12] 1504 	inc	r0
      00117F A6 04            [24] 1505 	mov	@r0,ar4
                                   1506 ;	pff\source\pff.c:551: i = dj->index + 1;
      001181 A8 08            [24] 1507 	mov	r0,_bp
      001183 08               [12] 1508 	inc	r0
      001184 86 82            [24] 1509 	mov	dpl,@r0
      001186 08               [12] 1510 	inc	r0
      001187 86 83            [24] 1511 	mov	dph,@r0
      001189 08               [12] 1512 	inc	r0
      00118A 86 F0            [24] 1513 	mov	b,@r0
      00118C 12 3A A5         [24] 1514 	lcall	__gptrget
      00118F FB               [12] 1515 	mov	r3,a
      001190 A3               [24] 1516 	inc	dptr
      001191 12 3A A5         [24] 1517 	lcall	__gptrget
      001194 FC               [12] 1518 	mov	r4,a
      001195 0B               [12] 1519 	inc	r3
      001196 BB 00 01         [24] 1520 	cjne	r3,#0x00,00147$
      001199 0C               [12] 1521 	inc	r4
      00119A                       1522 00147$:
      00119A E5 08            [12] 1523 	mov	a,_bp
      00119C 24 0E            [12] 1524 	add	a,#0x0e
      00119E F8               [12] 1525 	mov	r0,a
      00119F A6 03            [24] 1526 	mov	@r0,ar3
      0011A1 08               [12] 1527 	inc	r0
      0011A2 A6 04            [24] 1528 	mov	@r0,ar4
                                   1529 ;	pff\source\pff.c:552: if (!i || !dj->sect) return FR_NO_FILE;	/* Report EOT when index has reached 65535 */
      0011A4 E5 08            [12] 1530 	mov	a,_bp
      0011A6 24 0E            [12] 1531 	add	a,#0x0e
      0011A8 F8               [12] 1532 	mov	r0,a
      0011A9 E6               [12] 1533 	mov	a,@r0
      0011AA 08               [12] 1534 	inc	r0
      0011AB 46               [12] 1535 	orl	a,@r0
      0011AC 60 3B            [24] 1536 	jz	00101$
      0011AE A8 08            [24] 1537 	mov	r0,_bp
      0011B0 08               [12] 1538 	inc	r0
      0011B1 E5 08            [12] 1539 	mov	a,_bp
      0011B3 24 04            [12] 1540 	add	a,#0x04
      0011B5 F9               [12] 1541 	mov	r1,a
      0011B6 74 0D            [12] 1542 	mov	a,#0x0d
      0011B8 26               [12] 1543 	add	a,@r0
      0011B9 F7               [12] 1544 	mov	@r1,a
      0011BA E4               [12] 1545 	clr	a
      0011BB 08               [12] 1546 	inc	r0
      0011BC 36               [12] 1547 	addc	a,@r0
      0011BD 09               [12] 1548 	inc	r1
      0011BE F7               [12] 1549 	mov	@r1,a
      0011BF 08               [12] 1550 	inc	r0
      0011C0 E6               [12] 1551 	mov	a,@r0
      0011C1 09               [12] 1552 	inc	r1
      0011C2 F7               [12] 1553 	mov	@r1,a
      0011C3 E5 08            [12] 1554 	mov	a,_bp
      0011C5 24 04            [12] 1555 	add	a,#0x04
      0011C7 F8               [12] 1556 	mov	r0,a
      0011C8 86 82            [24] 1557 	mov	dpl,@r0
      0011CA 08               [12] 1558 	inc	r0
      0011CB 86 83            [24] 1559 	mov	dph,@r0
      0011CD 08               [12] 1560 	inc	r0
      0011CE 86 F0            [24] 1561 	mov	b,@r0
      0011D0 12 3A A5         [24] 1562 	lcall	__gptrget
      0011D3 FE               [12] 1563 	mov	r6,a
      0011D4 A3               [24] 1564 	inc	dptr
      0011D5 12 3A A5         [24] 1565 	lcall	__gptrget
      0011D8 FD               [12] 1566 	mov	r5,a
      0011D9 A3               [24] 1567 	inc	dptr
      0011DA 12 3A A5         [24] 1568 	lcall	__gptrget
      0011DD FC               [12] 1569 	mov	r4,a
      0011DE A3               [24] 1570 	inc	dptr
      0011DF 12 3A A5         [24] 1571 	lcall	__gptrget
      0011E2 FF               [12] 1572 	mov	r7,a
      0011E3 EE               [12] 1573 	mov	a,r6
      0011E4 4D               [12] 1574 	orl	a,r5
      0011E5 4C               [12] 1575 	orl	a,r4
      0011E6 4F               [12] 1576 	orl	a,r7
      0011E7 70 06            [24] 1577 	jnz	00102$
      0011E9                       1578 00101$:
      0011E9 75 82 03         [24] 1579 	mov	dpl,#0x03
      0011EC 02 13 ED         [24] 1580 	ljmp	00117$
      0011EF                       1581 00102$:
                                   1582 ;	pff\source\pff.c:554: if (!(i % 16)) {		/* Sector changed? */
      0011EF E5 08            [12] 1583 	mov	a,_bp
      0011F1 24 0E            [12] 1584 	add	a,#0x0e
      0011F3 F8               [12] 1585 	mov	r0,a
      0011F4 86 03            [24] 1586 	mov	ar3,@r0
      0011F6 08               [12] 1587 	inc	r0
      0011F7 86 02            [24] 1588 	mov	ar2,@r0
      0011F9 EB               [12] 1589 	mov	a,r3
      0011FA 54 0F            [12] 1590 	anl	a,#0x0f
      0011FC 60 03            [24] 1591 	jz	00151$
      0011FE 02 13 D0         [24] 1592 	ljmp	00116$
      001201                       1593 00151$:
                                   1594 ;	pff\source\pff.c:555: dj->sect++;			/* Next sector */
      001201 0E               [12] 1595 	inc	r6
      001202 BE 00 09         [24] 1596 	cjne	r6,#0x00,00152$
      001205 0D               [12] 1597 	inc	r5
      001206 BD 00 05         [24] 1598 	cjne	r5,#0x00,00152$
      001209 0C               [12] 1599 	inc	r4
      00120A BC 00 01         [24] 1600 	cjne	r4,#0x00,00152$
      00120D 0F               [12] 1601 	inc	r7
      00120E                       1602 00152$:
      00120E E5 08            [12] 1603 	mov	a,_bp
      001210 24 04            [12] 1604 	add	a,#0x04
      001212 F8               [12] 1605 	mov	r0,a
      001213 86 82            [24] 1606 	mov	dpl,@r0
      001215 08               [12] 1607 	inc	r0
      001216 86 83            [24] 1608 	mov	dph,@r0
      001218 08               [12] 1609 	inc	r0
      001219 86 F0            [24] 1610 	mov	b,@r0
      00121B EE               [12] 1611 	mov	a,r6
      00121C 12 38 59         [24] 1612 	lcall	__gptrput
      00121F A3               [24] 1613 	inc	dptr
      001220 ED               [12] 1614 	mov	a,r5
      001221 12 38 59         [24] 1615 	lcall	__gptrput
      001224 A3               [24] 1616 	inc	dptr
      001225 EC               [12] 1617 	mov	a,r4
      001226 12 38 59         [24] 1618 	lcall	__gptrput
      001229 A3               [24] 1619 	inc	dptr
      00122A EF               [12] 1620 	mov	a,r7
      00122B 12 38 59         [24] 1621 	lcall	__gptrput
                                   1622 ;	pff\source\pff.c:557: if (dj->clust == 0) {	/* Static table */
      00122E A8 08            [24] 1623 	mov	r0,_bp
      001230 08               [12] 1624 	inc	r0
      001231 E5 08            [12] 1625 	mov	a,_bp
      001233 24 07            [12] 1626 	add	a,#0x07
      001235 F9               [12] 1627 	mov	r1,a
      001236 74 09            [12] 1628 	mov	a,#0x09
      001238 26               [12] 1629 	add	a,@r0
      001239 F7               [12] 1630 	mov	@r1,a
      00123A E4               [12] 1631 	clr	a
      00123B 08               [12] 1632 	inc	r0
      00123C 36               [12] 1633 	addc	a,@r0
      00123D 09               [12] 1634 	inc	r1
      00123E F7               [12] 1635 	mov	@r1,a
      00123F 08               [12] 1636 	inc	r0
      001240 E6               [12] 1637 	mov	a,@r0
      001241 09               [12] 1638 	inc	r1
      001242 F7               [12] 1639 	mov	@r1,a
      001243 E5 08            [12] 1640 	mov	a,_bp
      001245 24 07            [12] 1641 	add	a,#0x07
      001247 F8               [12] 1642 	mov	r0,a
      001248 86 82            [24] 1643 	mov	dpl,@r0
      00124A 08               [12] 1644 	inc	r0
      00124B 86 83            [24] 1645 	mov	dph,@r0
      00124D 08               [12] 1646 	inc	r0
      00124E 86 F0            [24] 1647 	mov	b,@r0
      001250 E5 08            [12] 1648 	mov	a,_bp
      001252 24 0A            [12] 1649 	add	a,#0x0a
      001254 F9               [12] 1650 	mov	r1,a
      001255 12 3A A5         [24] 1651 	lcall	__gptrget
      001258 F7               [12] 1652 	mov	@r1,a
      001259 A3               [24] 1653 	inc	dptr
      00125A 12 3A A5         [24] 1654 	lcall	__gptrget
      00125D 09               [12] 1655 	inc	r1
      00125E F7               [12] 1656 	mov	@r1,a
      00125F A3               [24] 1657 	inc	dptr
      001260 12 3A A5         [24] 1658 	lcall	__gptrget
      001263 09               [12] 1659 	inc	r1
      001264 F7               [12] 1660 	mov	@r1,a
      001265 A3               [24] 1661 	inc	dptr
      001266 12 3A A5         [24] 1662 	lcall	__gptrget
      001269 09               [12] 1663 	inc	r1
      00126A F7               [12] 1664 	mov	@r1,a
      00126B E5 08            [12] 1665 	mov	a,_bp
      00126D 24 0A            [12] 1666 	add	a,#0x0a
      00126F F8               [12] 1667 	mov	r0,a
      001270 E6               [12] 1668 	mov	a,@r0
      001271 08               [12] 1669 	inc	r0
      001272 46               [12] 1670 	orl	a,@r0
      001273 08               [12] 1671 	inc	r0
      001274 46               [12] 1672 	orl	a,@r0
      001275 08               [12] 1673 	inc	r0
      001276 46               [12] 1674 	orl	a,@r0
      001277 70 35            [24] 1675 	jnz	00113$
                                   1676 ;	pff\source\pff.c:558: if (i >= fs->n_rootdir) return FR_NO_FILE;	/* Report EOT when end of table */
      001279 E5 08            [12] 1677 	mov	a,_bp
      00127B 24 14            [12] 1678 	add	a,#0x14
      00127D F8               [12] 1679 	mov	r0,a
      00127E 74 04            [12] 1680 	mov	a,#0x04
      001280 26               [12] 1681 	add	a,@r0
      001281 FA               [12] 1682 	mov	r2,a
      001282 E4               [12] 1683 	clr	a
      001283 08               [12] 1684 	inc	r0
      001284 36               [12] 1685 	addc	a,@r0
      001285 FB               [12] 1686 	mov	r3,a
      001286 08               [12] 1687 	inc	r0
      001287 86 04            [24] 1688 	mov	ar4,@r0
      001289 8A 82            [24] 1689 	mov	dpl,r2
      00128B 8B 83            [24] 1690 	mov	dph,r3
      00128D 8C F0            [24] 1691 	mov	b,r4
      00128F 12 3A A5         [24] 1692 	lcall	__gptrget
      001292 FA               [12] 1693 	mov	r2,a
      001293 A3               [24] 1694 	inc	dptr
      001294 12 3A A5         [24] 1695 	lcall	__gptrget
      001297 FB               [12] 1696 	mov	r3,a
      001298 E5 08            [12] 1697 	mov	a,_bp
      00129A 24 0E            [12] 1698 	add	a,#0x0e
      00129C F8               [12] 1699 	mov	r0,a
      00129D C3               [12] 1700 	clr	c
      00129E E6               [12] 1701 	mov	a,@r0
      00129F 9A               [12] 1702 	subb	a,r2
      0012A0 08               [12] 1703 	inc	r0
      0012A1 E6               [12] 1704 	mov	a,@r0
      0012A2 9B               [12] 1705 	subb	a,r3
      0012A3 50 03            [24] 1706 	jnc	00154$
      0012A5 02 13 D0         [24] 1707 	ljmp	00116$
      0012A8                       1708 00154$:
      0012A8 75 82 03         [24] 1709 	mov	dpl,#0x03
      0012AB 02 13 ED         [24] 1710 	ljmp	00117$
      0012AE                       1711 00113$:
                                   1712 ;	pff\source\pff.c:561: if (((i / 16) & (fs->csize - 1)) == 0) {	/* Cluster changed? */
      0012AE EA               [12] 1713 	mov	a,r2
      0012AF C4               [12] 1714 	swap	a
      0012B0 CB               [12] 1715 	xch	a,r3
      0012B1 C4               [12] 1716 	swap	a
      0012B2 54 0F            [12] 1717 	anl	a,#0x0f
      0012B4 6B               [12] 1718 	xrl	a,r3
      0012B5 CB               [12] 1719 	xch	a,r3
      0012B6 54 0F            [12] 1720 	anl	a,#0x0f
      0012B8 CB               [12] 1721 	xch	a,r3
      0012B9 6B               [12] 1722 	xrl	a,r3
      0012BA CB               [12] 1723 	xch	a,r3
      0012BB FC               [12] 1724 	mov	r4,a
      0012BC E5 08            [12] 1725 	mov	a,_bp
      0012BE 24 14            [12] 1726 	add	a,#0x14
      0012C0 F8               [12] 1727 	mov	r0,a
      0012C1 74 02            [12] 1728 	mov	a,#0x02
      0012C3 26               [12] 1729 	add	a,@r0
      0012C4 FA               [12] 1730 	mov	r2,a
      0012C5 E4               [12] 1731 	clr	a
      0012C6 08               [12] 1732 	inc	r0
      0012C7 36               [12] 1733 	addc	a,@r0
      0012C8 FE               [12] 1734 	mov	r6,a
      0012C9 08               [12] 1735 	inc	r0
      0012CA 86 07            [24] 1736 	mov	ar7,@r0
      0012CC 8A 82            [24] 1737 	mov	dpl,r2
      0012CE 8E 83            [24] 1738 	mov	dph,r6
      0012D0 8F F0            [24] 1739 	mov	b,r7
      0012D2 12 3A A5         [24] 1740 	lcall	__gptrget
      0012D5 FA               [12] 1741 	mov	r2,a
      0012D6 7F 00            [12] 1742 	mov	r7,#0x00
      0012D8 1A               [12] 1743 	dec	r2
      0012D9 BA FF 01         [24] 1744 	cjne	r2,#0xff,00155$
      0012DC 1F               [12] 1745 	dec	r7
      0012DD                       1746 00155$:
      0012DD EA               [12] 1747 	mov	a,r2
      0012DE 52 03            [12] 1748 	anl	ar3,a
      0012E0 EF               [12] 1749 	mov	a,r7
      0012E1 52 04            [12] 1750 	anl	ar4,a
      0012E3 EB               [12] 1751 	mov	a,r3
      0012E4 4C               [12] 1752 	orl	a,r4
      0012E5 60 03            [24] 1753 	jz	00156$
      0012E7 02 13 D0         [24] 1754 	ljmp	00116$
      0012EA                       1755 00156$:
                                   1756 ;	pff\source\pff.c:562: clst = get_fat(dj->clust);		/* Get next cluster */
      0012EA E5 08            [12] 1757 	mov	a,_bp
      0012EC 24 0A            [12] 1758 	add	a,#0x0a
      0012EE F8               [12] 1759 	mov	r0,a
      0012EF 86 82            [24] 1760 	mov	dpl,@r0
      0012F1 08               [12] 1761 	inc	r0
      0012F2 86 83            [24] 1762 	mov	dph,@r0
      0012F4 08               [12] 1763 	inc	r0
      0012F5 86 F0            [24] 1764 	mov	b,@r0
      0012F7 08               [12] 1765 	inc	r0
      0012F8 E6               [12] 1766 	mov	a,@r0
      0012F9 12 0C 7B         [24] 1767 	lcall	_get_fat
      0012FC AD 82            [24] 1768 	mov	r5,dpl
      0012FE AE 83            [24] 1769 	mov	r6,dph
      001300 AC F0            [24] 1770 	mov	r4,b
      001302 FF               [12] 1771 	mov	r7,a
      001303 E5 08            [12] 1772 	mov	a,_bp
      001305 24 10            [12] 1773 	add	a,#0x10
      001307 F8               [12] 1774 	mov	r0,a
      001308 A6 05            [24] 1775 	mov	@r0,ar5
      00130A 08               [12] 1776 	inc	r0
      00130B A6 06            [24] 1777 	mov	@r0,ar6
      00130D 08               [12] 1778 	inc	r0
      00130E A6 04            [24] 1779 	mov	@r0,ar4
      001310 08               [12] 1780 	inc	r0
      001311 A6 07            [24] 1781 	mov	@r0,ar7
                                   1782 ;	pff\source\pff.c:563: if (clst <= 1) return FR_DISK_ERR;
      001313 E5 08            [12] 1783 	mov	a,_bp
      001315 24 10            [12] 1784 	add	a,#0x10
      001317 F8               [12] 1785 	mov	r0,a
      001318 C3               [12] 1786 	clr	c
      001319 74 01            [12] 1787 	mov	a,#0x01
      00131B 96               [12] 1788 	subb	a,@r0
      00131C E4               [12] 1789 	clr	a
      00131D 08               [12] 1790 	inc	r0
      00131E 96               [12] 1791 	subb	a,@r0
      00131F E4               [12] 1792 	clr	a
      001320 08               [12] 1793 	inc	r0
      001321 96               [12] 1794 	subb	a,@r0
      001322 E4               [12] 1795 	clr	a
      001323 08               [12] 1796 	inc	r0
      001324 96               [12] 1797 	subb	a,@r0
      001325 40 06            [24] 1798 	jc	00107$
      001327 75 82 01         [24] 1799 	mov	dpl,#0x01
      00132A 02 13 ED         [24] 1800 	ljmp	00117$
      00132D                       1801 00107$:
                                   1802 ;	pff\source\pff.c:564: if (clst >= fs->n_fatent) return FR_NO_FILE;	/* Report EOT when it reached end of dynamic table */
      00132D E5 08            [12] 1803 	mov	a,_bp
      00132F 24 14            [12] 1804 	add	a,#0x14
      001331 F8               [12] 1805 	mov	r0,a
      001332 74 06            [12] 1806 	mov	a,#0x06
      001334 26               [12] 1807 	add	a,@r0
      001335 FD               [12] 1808 	mov	r5,a
      001336 E4               [12] 1809 	clr	a
      001337 08               [12] 1810 	inc	r0
      001338 36               [12] 1811 	addc	a,@r0
      001339 FE               [12] 1812 	mov	r6,a
      00133A 08               [12] 1813 	inc	r0
      00133B 86 07            [24] 1814 	mov	ar7,@r0
      00133D 8D 82            [24] 1815 	mov	dpl,r5
      00133F 8E 83            [24] 1816 	mov	dph,r6
      001341 8F F0            [24] 1817 	mov	b,r7
      001343 12 3A A5         [24] 1818 	lcall	__gptrget
      001346 FD               [12] 1819 	mov	r5,a
      001347 A3               [24] 1820 	inc	dptr
      001348 12 3A A5         [24] 1821 	lcall	__gptrget
      00134B FE               [12] 1822 	mov	r6,a
      00134C A3               [24] 1823 	inc	dptr
      00134D 12 3A A5         [24] 1824 	lcall	__gptrget
      001350 FF               [12] 1825 	mov	r7,a
      001351 A3               [24] 1826 	inc	dptr
      001352 12 3A A5         [24] 1827 	lcall	__gptrget
      001355 FC               [12] 1828 	mov	r4,a
      001356 E5 08            [12] 1829 	mov	a,_bp
      001358 24 10            [12] 1830 	add	a,#0x10
      00135A F8               [12] 1831 	mov	r0,a
      00135B C3               [12] 1832 	clr	c
      00135C E6               [12] 1833 	mov	a,@r0
      00135D 9D               [12] 1834 	subb	a,r5
      00135E 08               [12] 1835 	inc	r0
      00135F E6               [12] 1836 	mov	a,@r0
      001360 9E               [12] 1837 	subb	a,r6
      001361 08               [12] 1838 	inc	r0
      001362 E6               [12] 1839 	mov	a,@r0
      001363 9F               [12] 1840 	subb	a,r7
      001364 08               [12] 1841 	inc	r0
      001365 E6               [12] 1842 	mov	a,@r0
      001366 9C               [12] 1843 	subb	a,r4
      001367 40 06            [24] 1844 	jc	00109$
      001369 75 82 03         [24] 1845 	mov	dpl,#0x03
      00136C 02 13 ED         [24] 1846 	ljmp	00117$
      00136F                       1847 00109$:
                                   1848 ;	pff\source\pff.c:565: dj->clust = clst;				/* Initialize data for new cluster */
      00136F E5 08            [12] 1849 	mov	a,_bp
      001371 24 07            [12] 1850 	add	a,#0x07
      001373 F8               [12] 1851 	mov	r0,a
      001374 86 82            [24] 1852 	mov	dpl,@r0
      001376 08               [12] 1853 	inc	r0
      001377 86 83            [24] 1854 	mov	dph,@r0
      001379 08               [12] 1855 	inc	r0
      00137A 86 F0            [24] 1856 	mov	b,@r0
      00137C E5 08            [12] 1857 	mov	a,_bp
      00137E 24 10            [12] 1858 	add	a,#0x10
      001380 F9               [12] 1859 	mov	r1,a
      001381 E7               [12] 1860 	mov	a,@r1
      001382 12 38 59         [24] 1861 	lcall	__gptrput
      001385 A3               [24] 1862 	inc	dptr
      001386 09               [12] 1863 	inc	r1
      001387 E7               [12] 1864 	mov	a,@r1
      001388 12 38 59         [24] 1865 	lcall	__gptrput
      00138B A3               [24] 1866 	inc	dptr
      00138C 09               [12] 1867 	inc	r1
      00138D E7               [12] 1868 	mov	a,@r1
      00138E 12 38 59         [24] 1869 	lcall	__gptrput
      001391 A3               [24] 1870 	inc	dptr
      001392 09               [12] 1871 	inc	r1
      001393 E7               [12] 1872 	mov	a,@r1
      001394 12 38 59         [24] 1873 	lcall	__gptrput
                                   1874 ;	pff\source\pff.c:566: dj->sect = clust2sect(clst);
      001397 E5 08            [12] 1875 	mov	a,_bp
      001399 24 10            [12] 1876 	add	a,#0x10
      00139B F8               [12] 1877 	mov	r0,a
      00139C 86 82            [24] 1878 	mov	dpl,@r0
      00139E 08               [12] 1879 	inc	r0
      00139F 86 83            [24] 1880 	mov	dph,@r0
      0013A1 08               [12] 1881 	inc	r0
      0013A2 86 F0            [24] 1882 	mov	b,@r0
      0013A4 08               [12] 1883 	inc	r0
      0013A5 E6               [12] 1884 	mov	a,@r0
      0013A6 12 0E 13         [24] 1885 	lcall	_clust2sect
      0013A9 AE 82            [24] 1886 	mov	r6,dpl
      0013AB AD 83            [24] 1887 	mov	r5,dph
      0013AD AC F0            [24] 1888 	mov	r4,b
      0013AF FF               [12] 1889 	mov	r7,a
      0013B0 E5 08            [12] 1890 	mov	a,_bp
      0013B2 24 04            [12] 1891 	add	a,#0x04
      0013B4 F8               [12] 1892 	mov	r0,a
      0013B5 86 82            [24] 1893 	mov	dpl,@r0
      0013B7 08               [12] 1894 	inc	r0
      0013B8 86 83            [24] 1895 	mov	dph,@r0
      0013BA 08               [12] 1896 	inc	r0
      0013BB 86 F0            [24] 1897 	mov	b,@r0
      0013BD EE               [12] 1898 	mov	a,r6
      0013BE 12 38 59         [24] 1899 	lcall	__gptrput
      0013C1 A3               [24] 1900 	inc	dptr
      0013C2 ED               [12] 1901 	mov	a,r5
      0013C3 12 38 59         [24] 1902 	lcall	__gptrput
      0013C6 A3               [24] 1903 	inc	dptr
      0013C7 EC               [12] 1904 	mov	a,r4
      0013C8 12 38 59         [24] 1905 	lcall	__gptrput
      0013CB A3               [24] 1906 	inc	dptr
      0013CC EF               [12] 1907 	mov	a,r7
      0013CD 12 38 59         [24] 1908 	lcall	__gptrput
      0013D0                       1909 00116$:
                                   1910 ;	pff\source\pff.c:571: dj->index = i;
      0013D0 A8 08            [24] 1911 	mov	r0,_bp
      0013D2 08               [12] 1912 	inc	r0
      0013D3 86 82            [24] 1913 	mov	dpl,@r0
      0013D5 08               [12] 1914 	inc	r0
      0013D6 86 83            [24] 1915 	mov	dph,@r0
      0013D8 08               [12] 1916 	inc	r0
      0013D9 86 F0            [24] 1917 	mov	b,@r0
      0013DB E5 08            [12] 1918 	mov	a,_bp
      0013DD 24 0E            [12] 1919 	add	a,#0x0e
      0013DF F9               [12] 1920 	mov	r1,a
      0013E0 E7               [12] 1921 	mov	a,@r1
      0013E1 12 38 59         [24] 1922 	lcall	__gptrput
      0013E4 A3               [24] 1923 	inc	dptr
      0013E5 09               [12] 1924 	inc	r1
      0013E6 E7               [12] 1925 	mov	a,@r1
      0013E7 12 38 59         [24] 1926 	lcall	__gptrput
                                   1927 ;	pff\source\pff.c:573: return FR_OK;
      0013EA 75 82 00         [24] 1928 	mov	dpl,#0x00
      0013ED                       1929 00117$:
                                   1930 ;	pff\source\pff.c:574: }
      0013ED 85 08 81         [24] 1931 	mov	sp,_bp
      0013F0 D0 08            [24] 1932 	pop	_bp
      0013F2 22               [24] 1933 	ret
                                   1934 ;------------------------------------------------------------
                                   1935 ;Allocation info for local variables in function 'dir_find'
                                   1936 ;------------------------------------------------------------
                                   1937 ;dir                       Allocated to stack - _bp -5
                                   1938 ;dj                        Allocated to stack - _bp +1
                                   1939 ;res                       Allocated to registers r6 
                                   1940 ;c                         Allocated to registers 
                                   1941 ;sloc0                     Allocated to stack - _bp +4
                                   1942 ;sloc1                     Allocated to stack - _bp +7
                                   1943 ;------------------------------------------------------------
                                   1944 ;	pff\source\pff.c:583: static FRESULT dir_find (
                                   1945 ;	-----------------------------------------
                                   1946 ;	 function dir_find
                                   1947 ;	-----------------------------------------
      0013F3                       1948 _dir_find:
      0013F3 C0 08            [24] 1949 	push	_bp
      0013F5 85 81 08         [24] 1950 	mov	_bp,sp
      0013F8 C0 82            [24] 1951 	push	dpl
      0013FA C0 83            [24] 1952 	push	dph
      0013FC C0 F0            [24] 1953 	push	b
      0013FE E5 81            [12] 1954 	mov	a,sp
      001400 24 06            [12] 1955 	add	a,#0x06
      001402 F5 81            [12] 1956 	mov	sp,a
                                   1957 ;	pff\source\pff.c:592: res = dir_rewind(dj);			/* Rewind directory object */
      001404 A8 08            [24] 1958 	mov	r0,_bp
      001406 08               [12] 1959 	inc	r0
      001407 86 82            [24] 1960 	mov	dpl,@r0
      001409 08               [12] 1961 	inc	r0
      00140A 86 83            [24] 1962 	mov	dph,@r0
      00140C 08               [12] 1963 	inc	r0
      00140D 86 F0            [24] 1964 	mov	b,@r0
      00140F 12 0F D0         [24] 1965 	lcall	_dir_rewind
                                   1966 ;	pff\source\pff.c:593: if (res != FR_OK) return res;
      001412 E5 82            [12] 1967 	mov	a,dpl
      001414 FC               [12] 1968 	mov	r4,a
      001415 60 05            [24] 1969 	jz	00122$
      001417 8C 82            [24] 1970 	mov	dpl,r4
      001419 02 15 C0         [24] 1971 	ljmp	00113$
                                   1972 ;	pff\source\pff.c:595: do {
      00141C                       1973 00122$:
      00141C A8 08            [24] 1974 	mov	r0,_bp
      00141E 08               [12] 1975 	inc	r0
      00141F 74 02            [12] 1976 	mov	a,#0x02
      001421 26               [12] 1977 	add	a,@r0
      001422 FA               [12] 1978 	mov	r2,a
      001423 E4               [12] 1979 	clr	a
      001424 08               [12] 1980 	inc	r0
      001425 36               [12] 1981 	addc	a,@r0
      001426 FB               [12] 1982 	mov	r3,a
      001427 08               [12] 1983 	inc	r0
      001428 86 04            [24] 1984 	mov	ar4,@r0
      00142A A8 08            [24] 1985 	mov	r0,_bp
      00142C 08               [12] 1986 	inc	r0
      00142D E5 08            [12] 1987 	mov	a,_bp
      00142F 24 04            [12] 1988 	add	a,#0x04
      001431 F9               [12] 1989 	mov	r1,a
      001432 74 0D            [12] 1990 	mov	a,#0x0d
      001434 26               [12] 1991 	add	a,@r0
      001435 F7               [12] 1992 	mov	@r1,a
      001436 E4               [12] 1993 	clr	a
      001437 08               [12] 1994 	inc	r0
      001438 36               [12] 1995 	addc	a,@r0
      001439 09               [12] 1996 	inc	r1
      00143A F7               [12] 1997 	mov	@r1,a
      00143B 08               [12] 1998 	inc	r0
      00143C E6               [12] 1999 	mov	a,@r0
      00143D 09               [12] 2000 	inc	r1
      00143E F7               [12] 2001 	mov	@r1,a
      00143F                       2002 00110$:
                                   2003 ;	pff\source\pff.c:596: res = disk_readp(dir, dj->sect, (dj->index % 16) * 32, 32)	/* Read an entry */
      00143F C0 02            [24] 2004 	push	ar2
      001441 C0 03            [24] 2005 	push	ar3
      001443 C0 04            [24] 2006 	push	ar4
      001445 A8 08            [24] 2007 	mov	r0,_bp
      001447 08               [12] 2008 	inc	r0
      001448 86 82            [24] 2009 	mov	dpl,@r0
      00144A 08               [12] 2010 	inc	r0
      00144B 86 83            [24] 2011 	mov	dph,@r0
      00144D 08               [12] 2012 	inc	r0
      00144E 86 F0            [24] 2013 	mov	b,@r0
      001450 12 3A A5         [24] 2014 	lcall	__gptrget
      001453 FB               [12] 2015 	mov	r3,a
      001454 A3               [24] 2016 	inc	dptr
      001455 12 3A A5         [24] 2017 	lcall	__gptrget
      001458 53 03 0F         [24] 2018 	anl	ar3,#0x0f
      00145B E4               [12] 2019 	clr	a
      00145C C4               [12] 2020 	swap	a
      00145D 23               [12] 2021 	rl	a
      00145E 54 E0            [12] 2022 	anl	a,#0xe0
      001460 CB               [12] 2023 	xch	a,r3
      001461 C4               [12] 2024 	swap	a
      001462 23               [12] 2025 	rl	a
      001463 CB               [12] 2026 	xch	a,r3
      001464 6B               [12] 2027 	xrl	a,r3
      001465 CB               [12] 2028 	xch	a,r3
      001466 54 E0            [12] 2029 	anl	a,#0xe0
      001468 CB               [12] 2030 	xch	a,r3
      001469 6B               [12] 2031 	xrl	a,r3
      00146A FC               [12] 2032 	mov	r4,a
      00146B E5 08            [12] 2033 	mov	a,_bp
      00146D 24 04            [12] 2034 	add	a,#0x04
      00146F F8               [12] 2035 	mov	r0,a
      001470 86 82            [24] 2036 	mov	dpl,@r0
      001472 08               [12] 2037 	inc	r0
      001473 86 83            [24] 2038 	mov	dph,@r0
      001475 08               [12] 2039 	inc	r0
      001476 86 F0            [24] 2040 	mov	b,@r0
      001478 12 3A A5         [24] 2041 	lcall	__gptrget
      00147B FA               [12] 2042 	mov	r2,a
      00147C A3               [24] 2043 	inc	dptr
      00147D 12 3A A5         [24] 2044 	lcall	__gptrget
      001480 FD               [12] 2045 	mov	r5,a
      001481 A3               [24] 2046 	inc	dptr
      001482 12 3A A5         [24] 2047 	lcall	__gptrget
      001485 FE               [12] 2048 	mov	r6,a
      001486 A3               [24] 2049 	inc	dptr
      001487 12 3A A5         [24] 2050 	lcall	__gptrget
      00148A FF               [12] 2051 	mov	r7,a
      00148B C0 04            [24] 2052 	push	ar4
      00148D C0 03            [24] 2053 	push	ar3
      00148F C0 02            [24] 2054 	push	ar2
      001491 74 20            [12] 2055 	mov	a,#0x20
      001493 C0 E0            [24] 2056 	push	acc
      001495 E4               [12] 2057 	clr	a
      001496 C0 E0            [24] 2058 	push	acc
      001498 C0 03            [24] 2059 	push	ar3
      00149A C0 04            [24] 2060 	push	ar4
      00149C C0 02            [24] 2061 	push	ar2
      00149E C0 05            [24] 2062 	push	ar5
      0014A0 C0 06            [24] 2063 	push	ar6
      0014A2 C0 07            [24] 2064 	push	ar7
      0014A4 E5 08            [12] 2065 	mov	a,_bp
      0014A6 24 FB            [12] 2066 	add	a,#0xfb
      0014A8 F8               [12] 2067 	mov	r0,a
      0014A9 86 82            [24] 2068 	mov	dpl,@r0
      0014AB 08               [12] 2069 	inc	r0
      0014AC 86 83            [24] 2070 	mov	dph,@r0
      0014AE 08               [12] 2071 	inc	r0
      0014AF 86 F0            [24] 2072 	mov	b,@r0
      0014B1 12 09 97         [24] 2073 	lcall	_disk_readp
      0014B4 AF 82            [24] 2074 	mov	r7,dpl
      0014B6 E5 81            [12] 2075 	mov	a,sp
      0014B8 24 F8            [12] 2076 	add	a,#0xf8
      0014BA F5 81            [12] 2077 	mov	sp,a
      0014BC D0 02            [24] 2078 	pop	ar2
      0014BE D0 03            [24] 2079 	pop	ar3
      0014C0 D0 04            [24] 2080 	pop	ar4
      0014C2 D0 04            [24] 2081 	pop	ar4
      0014C4 D0 03            [24] 2082 	pop	ar3
      0014C6 D0 02            [24] 2083 	pop	ar2
      0014C8 EF               [12] 2084 	mov	a,r7
      0014C9 60 06            [24] 2085 	jz	00115$
                                   2086 ;	pff\source\pff.c:597: ? FR_DISK_ERR : FR_OK;
      0014CB 7E 01            [12] 2087 	mov	r6,#0x01
      0014CD 7F 00            [12] 2088 	mov	r7,#0x00
      0014CF 80 04            [24] 2089 	sjmp	00116$
      0014D1                       2090 00115$:
      0014D1 7E 00            [12] 2091 	mov	r6,#0x00
      0014D3 7F 00            [12] 2092 	mov	r7,#0x00
      0014D5                       2093 00116$:
                                   2094 ;	pff\source\pff.c:598: if (res != FR_OK) break;
      0014D5 EE               [12] 2095 	mov	a,r6
      0014D6 60 03            [24] 2096 	jz	00149$
      0014D8 02 15 BE         [24] 2097 	ljmp	00112$
      0014DB                       2098 00149$:
                                   2099 ;	pff\source\pff.c:599: c = dir[DIR_Name];	/* First character */
      0014DB E5 08            [12] 2100 	mov	a,_bp
      0014DD 24 FB            [12] 2101 	add	a,#0xfb
      0014DF F8               [12] 2102 	mov	r0,a
      0014E0 E5 08            [12] 2103 	mov	a,_bp
      0014E2 24 07            [12] 2104 	add	a,#0x07
      0014E4 F9               [12] 2105 	mov	r1,a
      0014E5 E6               [12] 2106 	mov	a,@r0
      0014E6 F7               [12] 2107 	mov	@r1,a
      0014E7 08               [12] 2108 	inc	r0
      0014E8 E6               [12] 2109 	mov	a,@r0
      0014E9 09               [12] 2110 	inc	r1
      0014EA F7               [12] 2111 	mov	@r1,a
      0014EB 08               [12] 2112 	inc	r0
      0014EC E6               [12] 2113 	mov	a,@r0
      0014ED 09               [12] 2114 	inc	r1
      0014EE F7               [12] 2115 	mov	@r1,a
      0014EF E5 08            [12] 2116 	mov	a,_bp
      0014F1 24 07            [12] 2117 	add	a,#0x07
      0014F3 F8               [12] 2118 	mov	r0,a
      0014F4 86 82            [24] 2119 	mov	dpl,@r0
      0014F6 08               [12] 2120 	inc	r0
      0014F7 86 83            [24] 2121 	mov	dph,@r0
      0014F9 08               [12] 2122 	inc	r0
      0014FA 86 F0            [24] 2123 	mov	b,@r0
      0014FC 12 3A A5         [24] 2124 	lcall	__gptrget
      0014FF 70 05            [24] 2125 	jnz	00106$
                                   2126 ;	pff\source\pff.c:600: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
      001501 7E 03            [12] 2127 	mov	r6,#0x03
      001503 02 15 BE         [24] 2128 	ljmp	00112$
      001506                       2129 00106$:
                                   2130 ;	pff\source\pff.c:601: if (!(dir[DIR_Attr] & AM_VOL) && !mem_cmp(dir, dj->fn, 11)) break;	/* Is it a valid entry? */
      001506 C0 02            [24] 2131 	push	ar2
      001508 C0 03            [24] 2132 	push	ar3
      00150A C0 04            [24] 2133 	push	ar4
      00150C E5 08            [12] 2134 	mov	a,_bp
      00150E 24 07            [12] 2135 	add	a,#0x07
      001510 F8               [12] 2136 	mov	r0,a
      001511 74 0B            [12] 2137 	mov	a,#0x0b
      001513 26               [12] 2138 	add	a,@r0
      001514 FC               [12] 2139 	mov	r4,a
      001515 E4               [12] 2140 	clr	a
      001516 08               [12] 2141 	inc	r0
      001517 36               [12] 2142 	addc	a,@r0
      001518 FD               [12] 2143 	mov	r5,a
      001519 08               [12] 2144 	inc	r0
      00151A 86 07            [24] 2145 	mov	ar7,@r0
      00151C 8C 82            [24] 2146 	mov	dpl,r4
      00151E 8D 83            [24] 2147 	mov	dph,r5
      001520 8F F0            [24] 2148 	mov	b,r7
      001522 12 3A A5         [24] 2149 	lcall	__gptrget
      001525 D0 04            [24] 2150 	pop	ar4
      001527 D0 03            [24] 2151 	pop	ar3
      001529 D0 02            [24] 2152 	pop	ar2
      00152B 20 E3 6C         [24] 2153 	jb	acc.3,00108$
      00152E C0 06            [24] 2154 	push	ar6
      001530 8A 82            [24] 2155 	mov	dpl,r2
      001532 8B 83            [24] 2156 	mov	dph,r3
      001534 8C F0            [24] 2157 	mov	b,r4
      001536 12 3A A5         [24] 2158 	lcall	__gptrget
      001539 FD               [12] 2159 	mov	r5,a
      00153A A3               [24] 2160 	inc	dptr
      00153B 12 3A A5         [24] 2161 	lcall	__gptrget
      00153E FE               [12] 2162 	mov	r6,a
      00153F A3               [24] 2163 	inc	dptr
      001540 12 3A A5         [24] 2164 	lcall	__gptrget
      001543 FF               [12] 2165 	mov	r7,a
      001544 E5 08            [12] 2166 	mov	a,_bp
      001546 24 07            [12] 2167 	add	a,#0x07
      001548 F8               [12] 2168 	mov	r0,a
      001549 A6 05            [24] 2169 	mov	@r0,ar5
      00154B 08               [12] 2170 	inc	r0
      00154C A6 06            [24] 2171 	mov	@r0,ar6
      00154E 08               [12] 2172 	inc	r0
      00154F A6 07            [24] 2173 	mov	@r0,ar7
      001551 E5 08            [12] 2174 	mov	a,_bp
      001553 24 FB            [12] 2175 	add	a,#0xfb
      001555 F8               [12] 2176 	mov	r0,a
      001556 86 05            [24] 2177 	mov	ar5,@r0
      001558 08               [12] 2178 	inc	r0
      001559 86 06            [24] 2179 	mov	ar6,@r0
      00155B 08               [12] 2180 	inc	r0
      00155C 86 07            [24] 2181 	mov	ar7,@r0
      00155E C0 04            [24] 2182 	push	ar4
      001560 C0 03            [24] 2183 	push	ar3
      001562 C0 02            [24] 2184 	push	ar2
      001564 74 0B            [12] 2185 	mov	a,#0x0b
      001566 C0 E0            [24] 2186 	push	acc
      001568 E4               [12] 2187 	clr	a
      001569 C0 E0            [24] 2188 	push	acc
      00156B E5 08            [12] 2189 	mov	a,_bp
      00156D 24 07            [12] 2190 	add	a,#0x07
      00156F F8               [12] 2191 	mov	r0,a
      001570 E6               [12] 2192 	mov	a,@r0
      001571 C0 E0            [24] 2193 	push	acc
      001573 08               [12] 2194 	inc	r0
      001574 E6               [12] 2195 	mov	a,@r0
      001575 C0 E0            [24] 2196 	push	acc
      001577 08               [12] 2197 	inc	r0
      001578 E6               [12] 2198 	mov	a,@r0
      001579 C0 E0            [24] 2199 	push	acc
      00157B 8D 82            [24] 2200 	mov	dpl,r5
      00157D 8E 83            [24] 2201 	mov	dph,r6
      00157F 8F F0            [24] 2202 	mov	b,r7
      001581 12 0B CC         [24] 2203 	lcall	_mem_cmp
      001584 AE 82            [24] 2204 	mov	r6,dpl
      001586 AF 83            [24] 2205 	mov	r7,dph
      001588 E5 81            [12] 2206 	mov	a,sp
      00158A 24 FB            [12] 2207 	add	a,#0xfb
      00158C F5 81            [12] 2208 	mov	sp,a
      00158E D0 02            [24] 2209 	pop	ar2
      001590 D0 03            [24] 2210 	pop	ar3
      001592 D0 04            [24] 2211 	pop	ar4
      001594 EE               [12] 2212 	mov	a,r6
      001595 4F               [12] 2213 	orl	a,r7
      001596 D0 06            [24] 2214 	pop	ar6
      001598 60 24            [24] 2215 	jz	00112$
      00159A                       2216 00108$:
                                   2217 ;	pff\source\pff.c:602: res = dir_next(dj);					/* Next entry */
      00159A A8 08            [24] 2218 	mov	r0,_bp
      00159C 08               [12] 2219 	inc	r0
      00159D 86 82            [24] 2220 	mov	dpl,@r0
      00159F 08               [12] 2221 	inc	r0
      0015A0 86 83            [24] 2222 	mov	dph,@r0
      0015A2 08               [12] 2223 	inc	r0
      0015A3 86 F0            [24] 2224 	mov	b,@r0
      0015A5 C0 04            [24] 2225 	push	ar4
      0015A7 C0 03            [24] 2226 	push	ar3
      0015A9 C0 02            [24] 2227 	push	ar2
      0015AB 12 11 58         [24] 2228 	lcall	_dir_next
      0015AE AF 82            [24] 2229 	mov	r7,dpl
      0015B0 D0 02            [24] 2230 	pop	ar2
      0015B2 D0 03            [24] 2231 	pop	ar3
      0015B4 D0 04            [24] 2232 	pop	ar4
      0015B6 8F 06            [24] 2233 	mov	ar6,r7
                                   2234 ;	pff\source\pff.c:603: } while (res == FR_OK);
      0015B8 EE               [12] 2235 	mov	a,r6
      0015B9 70 03            [24] 2236 	jnz	00153$
      0015BB 02 14 3F         [24] 2237 	ljmp	00110$
      0015BE                       2238 00153$:
      0015BE                       2239 00112$:
                                   2240 ;	pff\source\pff.c:605: return res;
      0015BE 8E 82            [24] 2241 	mov	dpl,r6
      0015C0                       2242 00113$:
                                   2243 ;	pff\source\pff.c:606: }
      0015C0 85 08 81         [24] 2244 	mov	sp,_bp
      0015C3 D0 08            [24] 2245 	pop	_bp
      0015C5 22               [24] 2246 	ret
                                   2247 ;------------------------------------------------------------
                                   2248 ;Allocation info for local variables in function 'dir_read'
                                   2249 ;------------------------------------------------------------
                                   2250 ;dir                       Allocated to stack - _bp -5
                                   2251 ;dj                        Allocated to stack - _bp +1
                                   2252 ;res                       Allocated to stack - _bp +8
                                   2253 ;a                         Allocated to registers r6 
                                   2254 ;c                         Allocated to registers r7 
                                   2255 ;sloc0                     Allocated to stack - _bp +4
                                   2256 ;------------------------------------------------------------
                                   2257 ;	pff\source\pff.c:615: static FRESULT dir_read (
                                   2258 ;	-----------------------------------------
                                   2259 ;	 function dir_read
                                   2260 ;	-----------------------------------------
      0015C6                       2261 _dir_read:
      0015C6 C0 08            [24] 2262 	push	_bp
      0015C8 85 81 08         [24] 2263 	mov	_bp,sp
      0015CB C0 82            [24] 2264 	push	dpl
      0015CD C0 83            [24] 2265 	push	dph
      0015CF C0 F0            [24] 2266 	push	b
      0015D1 E5 81            [12] 2267 	mov	a,sp
      0015D3 24 05            [12] 2268 	add	a,#0x05
      0015D5 F5 81            [12] 2269 	mov	sp,a
                                   2270 ;	pff\source\pff.c:624: res = FR_NO_FILE;
      0015D7 E5 08            [12] 2271 	mov	a,_bp
      0015D9 24 08            [12] 2272 	add	a,#0x08
      0015DB F8               [12] 2273 	mov	r0,a
      0015DC 76 03            [12] 2274 	mov	@r0,#0x03
                                   2275 ;	pff\source\pff.c:625: while (dj->sect) {
      0015DE A8 08            [24] 2276 	mov	r0,_bp
      0015E0 08               [12] 2277 	inc	r0
      0015E1 74 0D            [12] 2278 	mov	a,#0x0d
      0015E3 26               [12] 2279 	add	a,@r0
      0015E4 FA               [12] 2280 	mov	r2,a
      0015E5 E4               [12] 2281 	clr	a
      0015E6 08               [12] 2282 	inc	r0
      0015E7 36               [12] 2283 	addc	a,@r0
      0015E8 FB               [12] 2284 	mov	r3,a
      0015E9 08               [12] 2285 	inc	r0
      0015EA 86 04            [24] 2286 	mov	ar4,@r0
      0015EC                       2287 00111$:
      0015EC 8A 82            [24] 2288 	mov	dpl,r2
      0015EE 8B 83            [24] 2289 	mov	dph,r3
      0015F0 8C F0            [24] 2290 	mov	b,r4
      0015F2 E5 08            [12] 2291 	mov	a,_bp
      0015F4 24 04            [12] 2292 	add	a,#0x04
      0015F6 F8               [12] 2293 	mov	r0,a
      0015F7 12 3A A5         [24] 2294 	lcall	__gptrget
      0015FA F6               [12] 2295 	mov	@r0,a
      0015FB A3               [24] 2296 	inc	dptr
      0015FC 12 3A A5         [24] 2297 	lcall	__gptrget
      0015FF 08               [12] 2298 	inc	r0
      001600 F6               [12] 2299 	mov	@r0,a
      001601 A3               [24] 2300 	inc	dptr
      001602 12 3A A5         [24] 2301 	lcall	__gptrget
      001605 08               [12] 2302 	inc	r0
      001606 F6               [12] 2303 	mov	@r0,a
      001607 A3               [24] 2304 	inc	dptr
      001608 12 3A A5         [24] 2305 	lcall	__gptrget
      00160B 08               [12] 2306 	inc	r0
      00160C F6               [12] 2307 	mov	@r0,a
      00160D E5 08            [12] 2308 	mov	a,_bp
      00160F 24 04            [12] 2309 	add	a,#0x04
      001611 F8               [12] 2310 	mov	r0,a
      001612 E6               [12] 2311 	mov	a,@r0
      001613 08               [12] 2312 	inc	r0
      001614 46               [12] 2313 	orl	a,@r0
      001615 08               [12] 2314 	inc	r0
      001616 46               [12] 2315 	orl	a,@r0
      001617 08               [12] 2316 	inc	r0
      001618 46               [12] 2317 	orl	a,@r0
      001619 70 03            [24] 2318 	jnz	00152$
      00161B 02 17 4A         [24] 2319 	ljmp	00113$
      00161E                       2320 00152$:
                                   2321 ;	pff\source\pff.c:626: res = disk_readp(dir, dj->sect, (dj->index % 16) * 32, 32)	/* Read an entry */
      00161E C0 02            [24] 2322 	push	ar2
      001620 C0 03            [24] 2323 	push	ar3
      001622 C0 04            [24] 2324 	push	ar4
      001624 A8 08            [24] 2325 	mov	r0,_bp
      001626 08               [12] 2326 	inc	r0
      001627 86 82            [24] 2327 	mov	dpl,@r0
      001629 08               [12] 2328 	inc	r0
      00162A 86 83            [24] 2329 	mov	dph,@r0
      00162C 08               [12] 2330 	inc	r0
      00162D 86 F0            [24] 2331 	mov	b,@r0
      00162F 12 3A A5         [24] 2332 	lcall	__gptrget
      001632 FB               [12] 2333 	mov	r3,a
      001633 A3               [24] 2334 	inc	dptr
      001634 12 3A A5         [24] 2335 	lcall	__gptrget
      001637 53 03 0F         [24] 2336 	anl	ar3,#0x0f
      00163A E4               [12] 2337 	clr	a
      00163B C4               [12] 2338 	swap	a
      00163C 23               [12] 2339 	rl	a
      00163D 54 E0            [12] 2340 	anl	a,#0xe0
      00163F CB               [12] 2341 	xch	a,r3
      001640 C4               [12] 2342 	swap	a
      001641 23               [12] 2343 	rl	a
      001642 CB               [12] 2344 	xch	a,r3
      001643 6B               [12] 2345 	xrl	a,r3
      001644 CB               [12] 2346 	xch	a,r3
      001645 54 E0            [12] 2347 	anl	a,#0xe0
      001647 CB               [12] 2348 	xch	a,r3
      001648 6B               [12] 2349 	xrl	a,r3
      001649 FC               [12] 2350 	mov	r4,a
      00164A C0 03            [24] 2351 	push	ar3
      00164C C0 02            [24] 2352 	push	ar2
      00164E 74 20            [12] 2353 	mov	a,#0x20
      001650 C0 E0            [24] 2354 	push	acc
      001652 E4               [12] 2355 	clr	a
      001653 C0 E0            [24] 2356 	push	acc
      001655 C0 03            [24] 2357 	push	ar3
      001657 C0 04            [24] 2358 	push	ar4
      001659 E5 08            [12] 2359 	mov	a,_bp
      00165B 24 04            [12] 2360 	add	a,#0x04
      00165D F8               [12] 2361 	mov	r0,a
      00165E E6               [12] 2362 	mov	a,@r0
      00165F C0 E0            [24] 2363 	push	acc
      001661 08               [12] 2364 	inc	r0
      001662 E6               [12] 2365 	mov	a,@r0
      001663 C0 E0            [24] 2366 	push	acc
      001665 08               [12] 2367 	inc	r0
      001666 E6               [12] 2368 	mov	a,@r0
      001667 C0 E0            [24] 2369 	push	acc
      001669 08               [12] 2370 	inc	r0
      00166A E6               [12] 2371 	mov	a,@r0
      00166B C0 E0            [24] 2372 	push	acc
      00166D E5 08            [12] 2373 	mov	a,_bp
      00166F 24 FB            [12] 2374 	add	a,#0xfb
      001671 F8               [12] 2375 	mov	r0,a
      001672 86 82            [24] 2376 	mov	dpl,@r0
      001674 08               [12] 2377 	inc	r0
      001675 86 83            [24] 2378 	mov	dph,@r0
      001677 08               [12] 2379 	inc	r0
      001678 86 F0            [24] 2380 	mov	b,@r0
      00167A 12 09 97         [24] 2381 	lcall	_disk_readp
      00167D AC 82            [24] 2382 	mov	r4,dpl
      00167F E5 81            [12] 2383 	mov	a,sp
      001681 24 F8            [12] 2384 	add	a,#0xf8
      001683 F5 81            [12] 2385 	mov	sp,a
      001685 D0 02            [24] 2386 	pop	ar2
      001687 D0 03            [24] 2387 	pop	ar3
      001689 EC               [12] 2388 	mov	a,r4
      00168A D0 04            [24] 2389 	pop	ar4
      00168C D0 03            [24] 2390 	pop	ar3
      00168E D0 02            [24] 2391 	pop	ar2
      001690 60 06            [24] 2392 	jz	00118$
                                   2393 ;	pff\source\pff.c:627: ? FR_DISK_ERR : FR_OK;
      001692 7F 01            [12] 2394 	mov	r7,#0x01
      001694 7E 00            [12] 2395 	mov	r6,#0x00
      001696 80 04            [24] 2396 	sjmp	00119$
      001698                       2397 00118$:
      001698 7F 00            [12] 2398 	mov	r7,#0x00
      00169A 7E 00            [12] 2399 	mov	r6,#0x00
      00169C                       2400 00119$:
      00169C E5 08            [12] 2401 	mov	a,_bp
      00169E 24 08            [12] 2402 	add	a,#0x08
      0016A0 F8               [12] 2403 	mov	r0,a
      0016A1 A6 07            [24] 2404 	mov	@r0,ar7
                                   2405 ;	pff\source\pff.c:628: if (res != FR_OK) break;
      0016A3 E5 08            [12] 2406 	mov	a,_bp
      0016A5 24 08            [12] 2407 	add	a,#0x08
      0016A7 F8               [12] 2408 	mov	r0,a
      0016A8 E6               [12] 2409 	mov	a,@r0
      0016A9 60 03            [24] 2410 	jz	00154$
      0016AB 02 17 4A         [24] 2411 	ljmp	00113$
      0016AE                       2412 00154$:
                                   2413 ;	pff\source\pff.c:629: c = dir[DIR_Name];
      0016AE E5 08            [12] 2414 	mov	a,_bp
      0016B0 24 FB            [12] 2415 	add	a,#0xfb
      0016B2 F8               [12] 2416 	mov	r0,a
      0016B3 E5 08            [12] 2417 	mov	a,_bp
      0016B5 24 04            [12] 2418 	add	a,#0x04
      0016B7 F9               [12] 2419 	mov	r1,a
      0016B8 E6               [12] 2420 	mov	a,@r0
      0016B9 F7               [12] 2421 	mov	@r1,a
      0016BA 08               [12] 2422 	inc	r0
      0016BB E6               [12] 2423 	mov	a,@r0
      0016BC 09               [12] 2424 	inc	r1
      0016BD F7               [12] 2425 	mov	@r1,a
      0016BE 08               [12] 2426 	inc	r0
      0016BF E6               [12] 2427 	mov	a,@r0
      0016C0 09               [12] 2428 	inc	r1
      0016C1 F7               [12] 2429 	mov	@r1,a
      0016C2 E5 08            [12] 2430 	mov	a,_bp
      0016C4 24 04            [12] 2431 	add	a,#0x04
      0016C6 F8               [12] 2432 	mov	r0,a
      0016C7 86 82            [24] 2433 	mov	dpl,@r0
      0016C9 08               [12] 2434 	inc	r0
      0016CA 86 83            [24] 2435 	mov	dph,@r0
      0016CC 08               [12] 2436 	inc	r0
      0016CD 86 F0            [24] 2437 	mov	b,@r0
      0016CF 12 3A A5         [24] 2438 	lcall	__gptrget
                                   2439 ;	pff\source\pff.c:630: if (c == 0) { res = FR_NO_FILE; break; }	/* Reached to end of table */
      0016D2 FF               [12] 2440 	mov	r7,a
      0016D3 70 09            [24] 2441 	jnz	00104$
      0016D5 E5 08            [12] 2442 	mov	a,_bp
      0016D7 24 08            [12] 2443 	add	a,#0x08
      0016D9 F8               [12] 2444 	mov	r0,a
      0016DA 76 03            [12] 2445 	mov	@r0,#0x03
      0016DC 80 6C            [24] 2446 	sjmp	00113$
      0016DE                       2447 00104$:
                                   2448 ;	pff\source\pff.c:631: a = dir[DIR_Attr] & AM_MASK;
      0016DE C0 02            [24] 2449 	push	ar2
      0016E0 C0 03            [24] 2450 	push	ar3
      0016E2 C0 04            [24] 2451 	push	ar4
      0016E4 E5 08            [12] 2452 	mov	a,_bp
      0016E6 24 04            [12] 2453 	add	a,#0x04
      0016E8 F8               [12] 2454 	mov	r0,a
      0016E9 74 0B            [12] 2455 	mov	a,#0x0b
      0016EB 26               [12] 2456 	add	a,@r0
      0016EC FC               [12] 2457 	mov	r4,a
      0016ED E4               [12] 2458 	clr	a
      0016EE 08               [12] 2459 	inc	r0
      0016EF 36               [12] 2460 	addc	a,@r0
      0016F0 FD               [12] 2461 	mov	r5,a
      0016F1 08               [12] 2462 	inc	r0
      0016F2 86 06            [24] 2463 	mov	ar6,@r0
      0016F4 8C 82            [24] 2464 	mov	dpl,r4
      0016F6 8D 83            [24] 2465 	mov	dph,r5
      0016F8 8E F0            [24] 2466 	mov	b,r6
      0016FA 12 3A A5         [24] 2467 	lcall	__gptrget
      0016FD FC               [12] 2468 	mov	r4,a
      0016FE 74 3F            [12] 2469 	mov	a,#0x3f
      001700 5C               [12] 2470 	anl	a,r4
      001701 FE               [12] 2471 	mov	r6,a
                                   2472 ;	pff\source\pff.c:632: if (c != 0xE5 && c != '.' && !(a & AM_VOL))	break;	/* Is it a valid entry? */
      001702 BF E5 08         [24] 2473 	cjne	r7,#0xe5,00156$
      001705 D0 04            [24] 2474 	pop	ar4
      001707 D0 03            [24] 2475 	pop	ar3
      001709 D0 02            [24] 2476 	pop	ar2
      00170B 80 0F            [24] 2477 	sjmp	00106$
      00170D                       2478 00156$:
      00170D D0 04            [24] 2479 	pop	ar4
      00170F D0 03            [24] 2480 	pop	ar3
      001711 D0 02            [24] 2481 	pop	ar2
      001713 BF 2E 02         [24] 2482 	cjne	r7,#0x2e,00157$
      001716 80 04            [24] 2483 	sjmp	00106$
      001718                       2484 00157$:
      001718 EE               [12] 2485 	mov	a,r6
      001719 30 E3 2E         [24] 2486 	jnb	acc.3,00113$
      00171C                       2487 00106$:
                                   2488 ;	pff\source\pff.c:633: res = dir_next(dj);			/* Next entry */
      00171C A8 08            [24] 2489 	mov	r0,_bp
      00171E 08               [12] 2490 	inc	r0
      00171F 86 82            [24] 2491 	mov	dpl,@r0
      001721 08               [12] 2492 	inc	r0
      001722 86 83            [24] 2493 	mov	dph,@r0
      001724 08               [12] 2494 	inc	r0
      001725 86 F0            [24] 2495 	mov	b,@r0
      001727 C0 04            [24] 2496 	push	ar4
      001729 C0 03            [24] 2497 	push	ar3
      00172B C0 02            [24] 2498 	push	ar2
      00172D 12 11 58         [24] 2499 	lcall	_dir_next
      001730 AF 82            [24] 2500 	mov	r7,dpl
      001732 D0 02            [24] 2501 	pop	ar2
      001734 D0 03            [24] 2502 	pop	ar3
      001736 D0 04            [24] 2503 	pop	ar4
      001738 E5 08            [12] 2504 	mov	a,_bp
      00173A 24 08            [12] 2505 	add	a,#0x08
      00173C F8               [12] 2506 	mov	r0,a
      00173D A6 07            [24] 2507 	mov	@r0,ar7
                                   2508 ;	pff\source\pff.c:634: if (res != FR_OK) break;
      00173F E5 08            [12] 2509 	mov	a,_bp
      001741 24 08            [12] 2510 	add	a,#0x08
      001743 F8               [12] 2511 	mov	r0,a
      001744 E6               [12] 2512 	mov	a,@r0
      001745 70 03            [24] 2513 	jnz	00159$
      001747 02 15 EC         [24] 2514 	ljmp	00111$
      00174A                       2515 00159$:
      00174A                       2516 00113$:
                                   2517 ;	pff\source\pff.c:637: if (res != FR_OK) dj->sect = 0;
      00174A E5 08            [12] 2518 	mov	a,_bp
      00174C 24 08            [12] 2519 	add	a,#0x08
      00174E F8               [12] 2520 	mov	r0,a
      00174F E6               [12] 2521 	mov	a,@r0
      001750 60 24            [24] 2522 	jz	00115$
      001752 A8 08            [24] 2523 	mov	r0,_bp
      001754 08               [12] 2524 	inc	r0
      001755 74 0D            [12] 2525 	mov	a,#0x0d
      001757 26               [12] 2526 	add	a,@r0
      001758 FD               [12] 2527 	mov	r5,a
      001759 E4               [12] 2528 	clr	a
      00175A 08               [12] 2529 	inc	r0
      00175B 36               [12] 2530 	addc	a,@r0
      00175C FE               [12] 2531 	mov	r6,a
      00175D 08               [12] 2532 	inc	r0
      00175E 86 07            [24] 2533 	mov	ar7,@r0
      001760 8D 82            [24] 2534 	mov	dpl,r5
      001762 8E 83            [24] 2535 	mov	dph,r6
      001764 8F F0            [24] 2536 	mov	b,r7
      001766 E4               [12] 2537 	clr	a
      001767 12 38 59         [24] 2538 	lcall	__gptrput
      00176A A3               [24] 2539 	inc	dptr
      00176B 12 38 59         [24] 2540 	lcall	__gptrput
      00176E A3               [24] 2541 	inc	dptr
      00176F 12 38 59         [24] 2542 	lcall	__gptrput
      001772 A3               [24] 2543 	inc	dptr
      001773 12 38 59         [24] 2544 	lcall	__gptrput
      001776                       2545 00115$:
                                   2546 ;	pff\source\pff.c:639: return res;
      001776 E5 08            [12] 2547 	mov	a,_bp
      001778 24 08            [12] 2548 	add	a,#0x08
      00177A F8               [12] 2549 	mov	r0,a
      00177B 86 82            [24] 2550 	mov	dpl,@r0
                                   2551 ;	pff\source\pff.c:640: }
      00177D 85 08 81         [24] 2552 	mov	sp,_bp
      001780 D0 08            [24] 2553 	pop	_bp
      001782 22               [24] 2554 	ret
                                   2555 ;------------------------------------------------------------
                                   2556 ;Allocation info for local variables in function 'create_name'
                                   2557 ;------------------------------------------------------------
                                   2558 ;path                      Allocated to stack - _bp -5
                                   2559 ;dj                        Allocated to registers r5 r6 r7 
                                   2560 ;c                         Allocated to stack - _bp +1
                                   2561 ;d                         Allocated to registers 
                                   2562 ;ni                        Allocated to stack - _bp +2
                                   2563 ;si                        Allocated to registers r5 
                                   2564 ;i                         Allocated to stack - _bp +3
                                   2565 ;sfn                       Allocated to stack - _bp +4
                                   2566 ;p                         Allocated to stack - _bp +7
                                   2567 ;------------------------------------------------------------
                                   2568 ;	pff\source\pff.c:650: static FRESULT create_name (
                                   2569 ;	-----------------------------------------
                                   2570 ;	 function create_name
                                   2571 ;	-----------------------------------------
      001783                       2572 _create_name:
      001783 C0 08            [24] 2573 	push	_bp
      001785 E5 81            [12] 2574 	mov	a,sp
      001787 F5 08            [12] 2575 	mov	_bp,a
      001789 24 09            [12] 2576 	add	a,#0x09
      00178B F5 81            [12] 2577 	mov	sp,a
      00178D AD 82            [24] 2578 	mov	r5,dpl
      00178F AE 83            [24] 2579 	mov	r6,dph
      001791 AF F0            [24] 2580 	mov	r7,b
                                   2581 ;	pff\source\pff.c:662: sfn = dj->fn;
      001793 74 02            [12] 2582 	mov	a,#0x02
      001795 2D               [12] 2583 	add	a,r5
      001796 FD               [12] 2584 	mov	r5,a
      001797 E4               [12] 2585 	clr	a
      001798 3E               [12] 2586 	addc	a,r6
      001799 FE               [12] 2587 	mov	r6,a
      00179A 8D 82            [24] 2588 	mov	dpl,r5
      00179C 8E 83            [24] 2589 	mov	dph,r6
      00179E 8F F0            [24] 2590 	mov	b,r7
      0017A0 E5 08            [12] 2591 	mov	a,_bp
      0017A2 24 04            [12] 2592 	add	a,#0x04
      0017A4 F8               [12] 2593 	mov	r0,a
      0017A5 12 3A A5         [24] 2594 	lcall	__gptrget
      0017A8 F6               [12] 2595 	mov	@r0,a
      0017A9 A3               [24] 2596 	inc	dptr
      0017AA 12 3A A5         [24] 2597 	lcall	__gptrget
      0017AD 08               [12] 2598 	inc	r0
      0017AE F6               [12] 2599 	mov	@r0,a
      0017AF A3               [24] 2600 	inc	dptr
      0017B0 12 3A A5         [24] 2601 	lcall	__gptrget
      0017B3 08               [12] 2602 	inc	r0
      0017B4 F6               [12] 2603 	mov	@r0,a
                                   2604 ;	pff\source\pff.c:663: mem_set(sfn, ' ', 11);
      0017B5 E5 08            [12] 2605 	mov	a,_bp
      0017B7 24 04            [12] 2606 	add	a,#0x04
      0017B9 F8               [12] 2607 	mov	r0,a
      0017BA 86 02            [24] 2608 	mov	ar2,@r0
      0017BC 08               [12] 2609 	inc	r0
      0017BD 86 03            [24] 2610 	mov	ar3,@r0
      0017BF 08               [12] 2611 	inc	r0
      0017C0 86 04            [24] 2612 	mov	ar4,@r0
      0017C2 74 0B            [12] 2613 	mov	a,#0x0b
      0017C4 C0 E0            [24] 2614 	push	acc
      0017C6 E4               [12] 2615 	clr	a
      0017C7 C0 E0            [24] 2616 	push	acc
      0017C9 74 20            [12] 2617 	mov	a,#0x20
      0017CB C0 E0            [24] 2618 	push	acc
      0017CD E4               [12] 2619 	clr	a
      0017CE C0 E0            [24] 2620 	push	acc
      0017D0 8A 82            [24] 2621 	mov	dpl,r2
      0017D2 8B 83            [24] 2622 	mov	dph,r3
      0017D4 8C F0            [24] 2623 	mov	b,r4
      0017D6 12 0B 7C         [24] 2624 	lcall	_mem_set
      0017D9 E5 81            [12] 2625 	mov	a,sp
      0017DB 24 FC            [12] 2626 	add	a,#0xfc
      0017DD F5 81            [12] 2627 	mov	sp,a
                                   2628 ;	pff\source\pff.c:664: si = i = 0; ni = 8;
      0017DF E5 08            [12] 2629 	mov	a,_bp
      0017E1 24 03            [12] 2630 	add	a,#0x03
      0017E3 F8               [12] 2631 	mov	r0,a
      0017E4 76 00            [12] 2632 	mov	@r0,#0x00
      0017E6 A8 08            [24] 2633 	mov	r0,_bp
      0017E8 08               [12] 2634 	inc	r0
      0017E9 08               [12] 2635 	inc	r0
      0017EA 76 08            [12] 2636 	mov	@r0,#0x08
                                   2637 ;	pff\source\pff.c:665: p = *path;
      0017EC E5 08            [12] 2638 	mov	a,_bp
      0017EE 24 FB            [12] 2639 	add	a,#0xfb
      0017F0 F8               [12] 2640 	mov	r0,a
      0017F1 86 02            [24] 2641 	mov	ar2,@r0
      0017F3 08               [12] 2642 	inc	r0
      0017F4 86 06            [24] 2643 	mov	ar6,@r0
      0017F6 08               [12] 2644 	inc	r0
      0017F7 86 07            [24] 2645 	mov	ar7,@r0
      0017F9 8A 82            [24] 2646 	mov	dpl,r2
      0017FB 8E 83            [24] 2647 	mov	dph,r6
      0017FD 8F F0            [24] 2648 	mov	b,r7
      0017FF E5 08            [12] 2649 	mov	a,_bp
      001801 24 07            [12] 2650 	add	a,#0x07
      001803 F8               [12] 2651 	mov	r0,a
      001804 12 3A A5         [24] 2652 	lcall	__gptrget
      001807 F6               [12] 2653 	mov	@r0,a
      001808 A3               [24] 2654 	inc	dptr
      001809 12 3A A5         [24] 2655 	lcall	__gptrget
      00180C 08               [12] 2656 	inc	r0
      00180D F6               [12] 2657 	mov	@r0,a
      00180E A3               [24] 2658 	inc	dptr
      00180F 12 3A A5         [24] 2659 	lcall	__gptrget
      001812 08               [12] 2660 	inc	r0
      001813 F6               [12] 2661 	mov	@r0,a
      001814 7D 00            [12] 2662 	mov	r5,#0x00
      001816                       2663 00120$:
                                   2664 ;	pff\source\pff.c:667: c = p[si++];
      001816 C0 02            [24] 2665 	push	ar2
      001818 C0 06            [24] 2666 	push	ar6
      00181A C0 07            [24] 2667 	push	ar7
      00181C E5 08            [12] 2668 	mov	a,_bp
      00181E 24 07            [12] 2669 	add	a,#0x07
      001820 F8               [12] 2670 	mov	r0,a
      001821 ED               [12] 2671 	mov	a,r5
      001822 26               [12] 2672 	add	a,@r0
      001823 FB               [12] 2673 	mov	r3,a
      001824 E4               [12] 2674 	clr	a
      001825 08               [12] 2675 	inc	r0
      001826 36               [12] 2676 	addc	a,@r0
      001827 FC               [12] 2677 	mov	r4,a
      001828 08               [12] 2678 	inc	r0
      001829 86 07            [24] 2679 	mov	ar7,@r0
      00182B 0D               [12] 2680 	inc	r5
      00182C 8B 82            [24] 2681 	mov	dpl,r3
      00182E 8C 83            [24] 2682 	mov	dph,r4
      001830 8F F0            [24] 2683 	mov	b,r7
      001832 A8 08            [24] 2684 	mov	r0,_bp
      001834 08               [12] 2685 	inc	r0
      001835 12 3A A5         [24] 2686 	lcall	__gptrget
      001838 F6               [12] 2687 	mov	@r0,a
                                   2688 ;	pff\source\pff.c:668: if (c <= ' ' || c == '/') break;	/* Break on end of segment */
      001839 A8 08            [24] 2689 	mov	r0,_bp
      00183B 08               [12] 2690 	inc	r0
      00183C E6               [12] 2691 	mov	a,@r0
      00183D 24 DF            [12] 2692 	add	a,#0xff - 0x20
      00183F 92 00            [24] 2693 	mov	b0,c
      001841 D0 07            [24] 2694 	pop	ar7
      001843 D0 06            [24] 2695 	pop	ar6
      001845 D0 02            [24] 2696 	pop	ar2
      001847 20 00 03         [24] 2697 	jb	b0,00154$
      00184A 02 18 BF         [24] 2698 	ljmp	00119$
      00184D                       2699 00154$:
      00184D A8 08            [24] 2700 	mov	r0,_bp
      00184F 08               [12] 2701 	inc	r0
      001850 B6 2F 02         [24] 2702 	cjne	@r0,#0x2f,00155$
      001853 80 6A            [24] 2703 	sjmp	00119$
      001855                       2704 00155$:
                                   2705 ;	pff\source\pff.c:669: if (c == '.' || i >= ni) {
      001855 A8 08            [24] 2706 	mov	r0,_bp
      001857 08               [12] 2707 	inc	r0
      001858 B6 2E 02         [24] 2708 	cjne	@r0,#0x2e,00156$
      00185B 80 0E            [24] 2709 	sjmp	00107$
      00185D                       2710 00156$:
      00185D E5 08            [12] 2711 	mov	a,_bp
      00185F 24 03            [12] 2712 	add	a,#0x03
      001861 F8               [12] 2713 	mov	r0,a
      001862 A9 08            [24] 2714 	mov	r1,_bp
      001864 09               [12] 2715 	inc	r1
      001865 09               [12] 2716 	inc	r1
      001866 C3               [12] 2717 	clr	c
      001867 E6               [12] 2718 	mov	a,@r0
      001868 97               [12] 2719 	subb	a,@r1
      001869 40 1C            [24] 2720 	jc	00111$
      00186B                       2721 00107$:
                                   2722 ;	pff\source\pff.c:670: if (ni != 8 || c != '.') break;
      00186B A8 08            [24] 2723 	mov	r0,_bp
      00186D 08               [12] 2724 	inc	r0
      00186E 08               [12] 2725 	inc	r0
      00186F B6 08 4D         [24] 2726 	cjne	@r0,#0x08,00119$
      001872 A8 08            [24] 2727 	mov	r0,_bp
      001874 08               [12] 2728 	inc	r0
      001875 B6 2E 47         [24] 2729 	cjne	@r0,#0x2e,00119$
                                   2730 ;	pff\source\pff.c:671: i = 8; ni = 11;
      001878 E5 08            [12] 2731 	mov	a,_bp
      00187A 24 03            [12] 2732 	add	a,#0x03
      00187C F8               [12] 2733 	mov	r0,a
      00187D 76 08            [12] 2734 	mov	@r0,#0x08
      00187F A8 08            [24] 2735 	mov	r0,_bp
      001881 08               [12] 2736 	inc	r0
      001882 08               [12] 2737 	inc	r0
      001883 76 0B            [12] 2738 	mov	@r0,#0x0b
                                   2739 ;	pff\source\pff.c:672: continue;
                                   2740 ;	pff\source\pff.c:682: if (PF_USE_LCC && IsLower(c)) c -= 0x20;	/* toupper */
      001885 80 8F            [24] 2741 	sjmp	00120$
      001887                       2742 00111$:
                                   2743 ;	pff\source\pff.c:683: sfn[i++] = c;
      001887 C0 02            [24] 2744 	push	ar2
      001889 C0 06            [24] 2745 	push	ar6
      00188B C0 07            [24] 2746 	push	ar7
      00188D E5 08            [12] 2747 	mov	a,_bp
      00188F 24 03            [12] 2748 	add	a,#0x03
      001891 F8               [12] 2749 	mov	r0,a
      001892 86 04            [24] 2750 	mov	ar4,@r0
      001894 E5 08            [12] 2751 	mov	a,_bp
      001896 24 03            [12] 2752 	add	a,#0x03
      001898 F8               [12] 2753 	mov	r0,a
      001899 06               [12] 2754 	inc	@r0
      00189A E5 08            [12] 2755 	mov	a,_bp
      00189C 24 04            [12] 2756 	add	a,#0x04
      00189E F8               [12] 2757 	mov	r0,a
      00189F EC               [12] 2758 	mov	a,r4
      0018A0 26               [12] 2759 	add	a,@r0
      0018A1 FB               [12] 2760 	mov	r3,a
      0018A2 E4               [12] 2761 	clr	a
      0018A3 08               [12] 2762 	inc	r0
      0018A4 36               [12] 2763 	addc	a,@r0
      0018A5 FC               [12] 2764 	mov	r4,a
      0018A6 08               [12] 2765 	inc	r0
      0018A7 86 07            [24] 2766 	mov	ar7,@r0
      0018A9 8B 82            [24] 2767 	mov	dpl,r3
      0018AB 8C 83            [24] 2768 	mov	dph,r4
      0018AD 8F F0            [24] 2769 	mov	b,r7
      0018AF A8 08            [24] 2770 	mov	r0,_bp
      0018B1 08               [12] 2771 	inc	r0
      0018B2 E6               [12] 2772 	mov	a,@r0
      0018B3 12 38 59         [24] 2773 	lcall	__gptrput
      0018B6 D0 07            [24] 2774 	pop	ar7
      0018B8 D0 06            [24] 2775 	pop	ar6
      0018BA D0 02            [24] 2776 	pop	ar2
      0018BC 02 18 16         [24] 2777 	ljmp	00120$
      0018BF                       2778 00119$:
                                   2779 ;	pff\source\pff.c:686: *path = &p[si];						/* Rerurn pointer to the next segment */
      0018BF E5 08            [12] 2780 	mov	a,_bp
      0018C1 24 07            [12] 2781 	add	a,#0x07
      0018C3 F8               [12] 2782 	mov	r0,a
      0018C4 ED               [12] 2783 	mov	a,r5
      0018C5 26               [12] 2784 	add	a,@r0
      0018C6 FD               [12] 2785 	mov	r5,a
      0018C7 E4               [12] 2786 	clr	a
      0018C8 08               [12] 2787 	inc	r0
      0018C9 36               [12] 2788 	addc	a,@r0
      0018CA FC               [12] 2789 	mov	r4,a
      0018CB 08               [12] 2790 	inc	r0
      0018CC 86 03            [24] 2791 	mov	ar3,@r0
      0018CE 8A 82            [24] 2792 	mov	dpl,r2
      0018D0 8E 83            [24] 2793 	mov	dph,r6
      0018D2 8F F0            [24] 2794 	mov	b,r7
      0018D4 ED               [12] 2795 	mov	a,r5
      0018D5 12 38 59         [24] 2796 	lcall	__gptrput
      0018D8 A3               [24] 2797 	inc	dptr
      0018D9 EC               [12] 2798 	mov	a,r4
      0018DA 12 38 59         [24] 2799 	lcall	__gptrput
      0018DD A3               [24] 2800 	inc	dptr
      0018DE EB               [12] 2801 	mov	a,r3
      0018DF 12 38 59         [24] 2802 	lcall	__gptrput
                                   2803 ;	pff\source\pff.c:688: sfn[11] = (c <= ' ') ? 1 : 0;		/* Set last segment flag if end of path */
      0018E2 E5 08            [12] 2804 	mov	a,_bp
      0018E4 24 04            [12] 2805 	add	a,#0x04
      0018E6 F8               [12] 2806 	mov	r0,a
      0018E7 74 0B            [12] 2807 	mov	a,#0x0b
      0018E9 26               [12] 2808 	add	a,@r0
      0018EA FD               [12] 2809 	mov	r5,a
      0018EB E4               [12] 2810 	clr	a
      0018EC 08               [12] 2811 	inc	r0
      0018ED 36               [12] 2812 	addc	a,@r0
      0018EE FE               [12] 2813 	mov	r6,a
      0018EF 08               [12] 2814 	inc	r0
      0018F0 86 07            [24] 2815 	mov	ar7,@r0
      0018F2 20 00 06         [24] 2816 	jb	b0,00123$
      0018F5 7B 01            [12] 2817 	mov	r3,#0x01
      0018F7 7C 00            [12] 2818 	mov	r4,#0x00
      0018F9 80 04            [24] 2819 	sjmp	00124$
      0018FB                       2820 00123$:
      0018FB 7B 00            [12] 2821 	mov	r3,#0x00
      0018FD 7C 00            [12] 2822 	mov	r4,#0x00
      0018FF                       2823 00124$:
      0018FF 8D 82            [24] 2824 	mov	dpl,r5
      001901 8E 83            [24] 2825 	mov	dph,r6
      001903 8F F0            [24] 2826 	mov	b,r7
      001905 EB               [12] 2827 	mov	a,r3
      001906 12 38 59         [24] 2828 	lcall	__gptrput
                                   2829 ;	pff\source\pff.c:690: return FR_OK;
      001909 75 82 00         [24] 2830 	mov	dpl,#0x00
                                   2831 ;	pff\source\pff.c:691: }
      00190C 85 08 81         [24] 2832 	mov	sp,_bp
      00190F D0 08            [24] 2833 	pop	_bp
      001911 22               [24] 2834 	ret
                                   2835 ;------------------------------------------------------------
                                   2836 ;Allocation info for local variables in function 'get_fileinfo'
                                   2837 ;------------------------------------------------------------
                                   2838 ;dir                       Allocated to stack - _bp -5
                                   2839 ;fno                       Allocated to stack - _bp -8
                                   2840 ;dj                        Allocated to registers r7 r5 r6 
                                   2841 ;i                         Allocated to registers r4 
                                   2842 ;c                         Allocated to registers r3 
                                   2843 ;p                         Allocated to registers 
                                   2844 ;sloc0                     Allocated to stack - _bp +1
                                   2845 ;sloc1                     Allocated to stack - _bp +4
                                   2846 ;sloc2                     Allocated to stack - _bp +15
                                   2847 ;------------------------------------------------------------
                                   2848 ;	pff\source\pff.c:700: static void get_fileinfo (		/* No return code */
                                   2849 ;	-----------------------------------------
                                   2850 ;	 function get_fileinfo
                                   2851 ;	-----------------------------------------
      001912                       2852 _get_fileinfo:
      001912 C0 08            [24] 2853 	push	_bp
      001914 E5 81            [12] 2854 	mov	a,sp
      001916 F5 08            [12] 2855 	mov	_bp,a
      001918 24 06            [12] 2856 	add	a,#0x06
      00191A F5 81            [12] 2857 	mov	sp,a
      00191C AF 82            [24] 2858 	mov	r7,dpl
      00191E AD 83            [24] 2859 	mov	r5,dph
      001920 AE F0            [24] 2860 	mov	r6,b
                                   2861 ;	pff\source\pff.c:710: p = fno->fname;
      001922 E5 08            [12] 2862 	mov	a,_bp
      001924 24 F8            [12] 2863 	add	a,#0xf8
      001926 F8               [12] 2864 	mov	r0,a
      001927 E5 08            [12] 2865 	mov	a,_bp
      001929 24 04            [12] 2866 	add	a,#0x04
      00192B F9               [12] 2867 	mov	r1,a
      00192C E6               [12] 2868 	mov	a,@r0
      00192D F7               [12] 2869 	mov	@r1,a
      00192E 08               [12] 2870 	inc	r0
      00192F E6               [12] 2871 	mov	a,@r0
      001930 09               [12] 2872 	inc	r1
      001931 F7               [12] 2873 	mov	@r1,a
      001932 08               [12] 2874 	inc	r0
      001933 E6               [12] 2875 	mov	a,@r0
      001934 09               [12] 2876 	inc	r1
      001935 F7               [12] 2877 	mov	@r1,a
      001936 E5 08            [12] 2878 	mov	a,_bp
      001938 24 04            [12] 2879 	add	a,#0x04
      00193A F8               [12] 2880 	mov	r0,a
      00193B A9 08            [24] 2881 	mov	r1,_bp
      00193D 09               [12] 2882 	inc	r1
      00193E 74 09            [12] 2883 	mov	a,#0x09
      001940 26               [12] 2884 	add	a,@r0
      001941 F7               [12] 2885 	mov	@r1,a
      001942 E4               [12] 2886 	clr	a
      001943 08               [12] 2887 	inc	r0
      001944 36               [12] 2888 	addc	a,@r0
      001945 09               [12] 2889 	inc	r1
      001946 F7               [12] 2890 	mov	@r1,a
      001947 08               [12] 2891 	inc	r0
      001948 E6               [12] 2892 	mov	a,@r0
      001949 09               [12] 2893 	inc	r1
      00194A F7               [12] 2894 	mov	@r1,a
                                   2895 ;	pff\source\pff.c:711: if (dj->sect) {
      00194B 74 0D            [12] 2896 	mov	a,#0x0d
      00194D 2F               [12] 2897 	add	a,r7
      00194E FF               [12] 2898 	mov	r7,a
      00194F E4               [12] 2899 	clr	a
      001950 3D               [12] 2900 	addc	a,r5
      001951 FD               [12] 2901 	mov	r5,a
      001952 8F 82            [24] 2902 	mov	dpl,r7
      001954 8D 83            [24] 2903 	mov	dph,r5
      001956 8E F0            [24] 2904 	mov	b,r6
      001958 12 3A A5         [24] 2905 	lcall	__gptrget
      00195B FC               [12] 2906 	mov	r4,a
      00195C A3               [24] 2907 	inc	dptr
      00195D 12 3A A5         [24] 2908 	lcall	__gptrget
      001960 FD               [12] 2909 	mov	r5,a
      001961 A3               [24] 2910 	inc	dptr
      001962 12 3A A5         [24] 2911 	lcall	__gptrget
      001965 FE               [12] 2912 	mov	r6,a
      001966 A3               [24] 2913 	inc	dptr
      001967 12 3A A5         [24] 2914 	lcall	__gptrget
      00196A FF               [12] 2915 	mov	r7,a
      00196B EC               [12] 2916 	mov	a,r4
      00196C 4D               [12] 2917 	orl	a,r5
      00196D 4E               [12] 2918 	orl	a,r6
      00196E 4F               [12] 2919 	orl	a,r7
      00196F 70 03            [24] 2920 	jnz	00156$
      001971 02 1B 59         [24] 2921 	ljmp	00112$
      001974                       2922 00156$:
                                   2923 ;	pff\source\pff.c:712: for (i = 0; i < 8; i++) {	/* Copy file name body */
      001974 A8 08            [24] 2924 	mov	r0,_bp
      001976 08               [12] 2925 	inc	r0
      001977 86 05            [24] 2926 	mov	ar5,@r0
      001979 08               [12] 2927 	inc	r0
      00197A 86 06            [24] 2928 	mov	ar6,@r0
      00197C 08               [12] 2929 	inc	r0
      00197D 86 07            [24] 2930 	mov	ar7,@r0
      00197F 7C 00            [12] 2931 	mov	r4,#0x00
      001981                       2932 00113$:
                                   2933 ;	pff\source\pff.c:713: c = dir[i];
      001981 C0 05            [24] 2934 	push	ar5
      001983 C0 06            [24] 2935 	push	ar6
      001985 C0 07            [24] 2936 	push	ar7
      001987 E5 08            [12] 2937 	mov	a,_bp
      001989 24 FB            [12] 2938 	add	a,#0xfb
      00198B F8               [12] 2939 	mov	r0,a
      00198C EC               [12] 2940 	mov	a,r4
      00198D 26               [12] 2941 	add	a,@r0
      00198E FA               [12] 2942 	mov	r2,a
      00198F E4               [12] 2943 	clr	a
      001990 08               [12] 2944 	inc	r0
      001991 36               [12] 2945 	addc	a,@r0
      001992 FB               [12] 2946 	mov	r3,a
      001993 08               [12] 2947 	inc	r0
      001994 86 07            [24] 2948 	mov	ar7,@r0
      001996 8A 82            [24] 2949 	mov	dpl,r2
      001998 8B 83            [24] 2950 	mov	dph,r3
      00199A 8F F0            [24] 2951 	mov	b,r7
      00199C 12 3A A5         [24] 2952 	lcall	__gptrget
      00199F FB               [12] 2953 	mov	r3,a
                                   2954 ;	pff\source\pff.c:714: if (c == ' ') break;
      0019A0 BB 20 08         [24] 2955 	cjne	r3,#0x20,00157$
      0019A3 D0 07            [24] 2956 	pop	ar7
      0019A5 D0 06            [24] 2957 	pop	ar6
      0019A7 D0 05            [24] 2958 	pop	ar5
      0019A9 80 20            [24] 2959 	sjmp	00126$
      0019AB                       2960 00157$:
      0019AB D0 07            [24] 2961 	pop	ar7
      0019AD D0 06            [24] 2962 	pop	ar6
      0019AF D0 05            [24] 2963 	pop	ar5
                                   2964 ;	pff\source\pff.c:715: if (c == 0x05) c = 0xE5;
      0019B1 BB 05 02         [24] 2965 	cjne	r3,#0x05,00104$
      0019B4 7B E5            [12] 2966 	mov	r3,#0xe5
      0019B6                       2967 00104$:
                                   2968 ;	pff\source\pff.c:716: *p++ = c;
      0019B6 8D 82            [24] 2969 	mov	dpl,r5
      0019B8 8E 83            [24] 2970 	mov	dph,r6
      0019BA 8F F0            [24] 2971 	mov	b,r7
      0019BC EB               [12] 2972 	mov	a,r3
      0019BD 12 38 59         [24] 2973 	lcall	__gptrput
      0019C0 A3               [24] 2974 	inc	dptr
      0019C1 AD 82            [24] 2975 	mov	r5,dpl
      0019C3 AE 83            [24] 2976 	mov	r6,dph
                                   2977 ;	pff\source\pff.c:712: for (i = 0; i < 8; i++) {	/* Copy file name body */
      0019C5 0C               [12] 2978 	inc	r4
      0019C6 BC 08 00         [24] 2979 	cjne	r4,#0x08,00160$
      0019C9                       2980 00160$:
      0019C9 40 B6            [24] 2981 	jc	00113$
      0019CB                       2982 00126$:
      0019CB A8 08            [24] 2983 	mov	r0,_bp
      0019CD 08               [12] 2984 	inc	r0
      0019CE A6 05            [24] 2985 	mov	@r0,ar5
      0019D0 08               [12] 2986 	inc	r0
      0019D1 A6 06            [24] 2987 	mov	@r0,ar6
      0019D3 08               [12] 2988 	inc	r0
      0019D4 A6 07            [24] 2989 	mov	@r0,ar7
                                   2990 ;	pff\source\pff.c:718: if (dir[8] != ' ') {		/* Copy file name extension */
      0019D6 E5 08            [12] 2991 	mov	a,_bp
      0019D8 24 FB            [12] 2992 	add	a,#0xfb
      0019DA F8               [12] 2993 	mov	r0,a
      0019DB 74 08            [12] 2994 	mov	a,#0x08
      0019DD 26               [12] 2995 	add	a,@r0
      0019DE FA               [12] 2996 	mov	r2,a
      0019DF E4               [12] 2997 	clr	a
      0019E0 08               [12] 2998 	inc	r0
      0019E1 36               [12] 2999 	addc	a,@r0
      0019E2 FB               [12] 3000 	mov	r3,a
      0019E3 08               [12] 3001 	inc	r0
      0019E4 86 04            [24] 3002 	mov	ar4,@r0
      0019E6 8A 82            [24] 3003 	mov	dpl,r2
      0019E8 8B 83            [24] 3004 	mov	dph,r3
      0019EA 8C F0            [24] 3005 	mov	b,r4
      0019EC 12 3A A5         [24] 3006 	lcall	__gptrget
      0019EF FA               [12] 3007 	mov	r2,a
      0019F0 BA 20 02         [24] 3008 	cjne	r2,#0x20,00162$
      0019F3 80 62            [24] 3009 	sjmp	00110$
      0019F5                       3010 00162$:
                                   3011 ;	pff\source\pff.c:719: *p++ = '.';
      0019F5 8D 82            [24] 3012 	mov	dpl,r5
      0019F7 8E 83            [24] 3013 	mov	dph,r6
      0019F9 8F F0            [24] 3014 	mov	b,r7
      0019FB 74 2E            [12] 3015 	mov	a,#0x2e
      0019FD 12 38 59         [24] 3016 	lcall	__gptrput
      001A00 0D               [12] 3017 	inc	r5
      001A01 BD 00 01         [24] 3018 	cjne	r5,#0x00,00163$
      001A04 0E               [12] 3019 	inc	r6
      001A05                       3020 00163$:
                                   3021 ;	pff\source\pff.c:720: for (i = 8; i < 11; i++) {
      001A05 7C 08            [12] 3022 	mov	r4,#0x08
      001A07                       3023 00115$:
                                   3024 ;	pff\source\pff.c:721: c = dir[i];
      001A07 C0 05            [24] 3025 	push	ar5
      001A09 C0 06            [24] 3026 	push	ar6
      001A0B C0 07            [24] 3027 	push	ar7
      001A0D E5 08            [12] 3028 	mov	a,_bp
      001A0F 24 FB            [12] 3029 	add	a,#0xfb
      001A11 F8               [12] 3030 	mov	r0,a
      001A12 EC               [12] 3031 	mov	a,r4
      001A13 26               [12] 3032 	add	a,@r0
      001A14 FA               [12] 3033 	mov	r2,a
      001A15 E4               [12] 3034 	clr	a
      001A16 08               [12] 3035 	inc	r0
      001A17 36               [12] 3036 	addc	a,@r0
      001A18 FB               [12] 3037 	mov	r3,a
      001A19 08               [12] 3038 	inc	r0
      001A1A 86 07            [24] 3039 	mov	ar7,@r0
      001A1C 8A 82            [24] 3040 	mov	dpl,r2
      001A1E 8B 83            [24] 3041 	mov	dph,r3
      001A20 8F F0            [24] 3042 	mov	b,r7
      001A22 12 3A A5         [24] 3043 	lcall	__gptrget
      001A25 FB               [12] 3044 	mov	r3,a
                                   3045 ;	pff\source\pff.c:722: if (c == ' ') break;
      001A26 BB 20 08         [24] 3046 	cjne	r3,#0x20,00164$
      001A29 D0 07            [24] 3047 	pop	ar7
      001A2B D0 06            [24] 3048 	pop	ar6
      001A2D D0 05            [24] 3049 	pop	ar5
      001A2F 80 1B            [24] 3050 	sjmp	00127$
      001A31                       3051 00164$:
      001A31 D0 07            [24] 3052 	pop	ar7
      001A33 D0 06            [24] 3053 	pop	ar6
      001A35 D0 05            [24] 3054 	pop	ar5
                                   3055 ;	pff\source\pff.c:723: *p++ = c;
      001A37 8D 82            [24] 3056 	mov	dpl,r5
      001A39 8E 83            [24] 3057 	mov	dph,r6
      001A3B 8F F0            [24] 3058 	mov	b,r7
      001A3D EB               [12] 3059 	mov	a,r3
      001A3E 12 38 59         [24] 3060 	lcall	__gptrput
      001A41 A3               [24] 3061 	inc	dptr
      001A42 AD 82            [24] 3062 	mov	r5,dpl
      001A44 AE 83            [24] 3063 	mov	r6,dph
                                   3064 ;	pff\source\pff.c:720: for (i = 8; i < 11; i++) {
      001A46 0C               [12] 3065 	inc	r4
      001A47 BC 0B 00         [24] 3066 	cjne	r4,#0x0b,00165$
      001A4A                       3067 00165$:
      001A4A 40 BB            [24] 3068 	jc	00115$
      001A4C                       3069 00127$:
      001A4C A8 08            [24] 3070 	mov	r0,_bp
      001A4E 08               [12] 3071 	inc	r0
      001A4F A6 05            [24] 3072 	mov	@r0,ar5
      001A51 08               [12] 3073 	inc	r0
      001A52 A6 06            [24] 3074 	mov	@r0,ar6
      001A54 08               [12] 3075 	inc	r0
      001A55 A6 07            [24] 3076 	mov	@r0,ar7
      001A57                       3077 00110$:
                                   3078 ;	pff\source\pff.c:726: fno->fattrib = dir[DIR_Attr];				/* Attribute */
      001A57 E5 08            [12] 3079 	mov	a,_bp
      001A59 24 04            [12] 3080 	add	a,#0x04
      001A5B F8               [12] 3081 	mov	r0,a
      001A5C 74 08            [12] 3082 	mov	a,#0x08
      001A5E 26               [12] 3083 	add	a,@r0
      001A5F FD               [12] 3084 	mov	r5,a
      001A60 E4               [12] 3085 	clr	a
      001A61 08               [12] 3086 	inc	r0
      001A62 36               [12] 3087 	addc	a,@r0
      001A63 FE               [12] 3088 	mov	r6,a
      001A64 08               [12] 3089 	inc	r0
      001A65 86 07            [24] 3090 	mov	ar7,@r0
      001A67 E5 08            [12] 3091 	mov	a,_bp
      001A69 24 FB            [12] 3092 	add	a,#0xfb
      001A6B F8               [12] 3093 	mov	r0,a
      001A6C 74 0B            [12] 3094 	mov	a,#0x0b
      001A6E 26               [12] 3095 	add	a,@r0
      001A6F FA               [12] 3096 	mov	r2,a
      001A70 E4               [12] 3097 	clr	a
      001A71 08               [12] 3098 	inc	r0
      001A72 36               [12] 3099 	addc	a,@r0
      001A73 FB               [12] 3100 	mov	r3,a
      001A74 08               [12] 3101 	inc	r0
      001A75 86 04            [24] 3102 	mov	ar4,@r0
      001A77 8A 82            [24] 3103 	mov	dpl,r2
      001A79 8B 83            [24] 3104 	mov	dph,r3
      001A7B 8C F0            [24] 3105 	mov	b,r4
      001A7D 12 3A A5         [24] 3106 	lcall	__gptrget
      001A80 8D 82            [24] 3107 	mov	dpl,r5
      001A82 8E 83            [24] 3108 	mov	dph,r6
      001A84 8F F0            [24] 3109 	mov	b,r7
      001A86 12 38 59         [24] 3110 	lcall	__gptrput
                                   3111 ;	pff\source\pff.c:727: fno->fsize = ld_dword(dir+DIR_FileSize);	/* Size */
      001A89 E5 08            [12] 3112 	mov	a,_bp
      001A8B 24 FB            [12] 3113 	add	a,#0xfb
      001A8D F8               [12] 3114 	mov	r0,a
      001A8E 74 1C            [12] 3115 	mov	a,#0x1c
      001A90 26               [12] 3116 	add	a,@r0
      001A91 FD               [12] 3117 	mov	r5,a
      001A92 E4               [12] 3118 	clr	a
      001A93 08               [12] 3119 	inc	r0
      001A94 36               [12] 3120 	addc	a,@r0
      001A95 FE               [12] 3121 	mov	r6,a
      001A96 08               [12] 3122 	inc	r0
      001A97 86 07            [24] 3123 	mov	ar7,@r0
      001A99 8D 82            [24] 3124 	mov	dpl,r5
      001A9B 8E 83            [24] 3125 	mov	dph,r6
      001A9D 8F F0            [24] 3126 	mov	b,r7
      001A9F 12 0A 83         [24] 3127 	lcall	_ld_dword
      001AA2 AE 82            [24] 3128 	mov	r6,dpl
      001AA4 AD 83            [24] 3129 	mov	r5,dph
      001AA6 AC F0            [24] 3130 	mov	r4,b
      001AA8 FF               [12] 3131 	mov	r7,a
      001AA9 E5 08            [12] 3132 	mov	a,_bp
      001AAB 24 04            [12] 3133 	add	a,#0x04
      001AAD F8               [12] 3134 	mov	r0,a
      001AAE 86 82            [24] 3135 	mov	dpl,@r0
      001AB0 08               [12] 3136 	inc	r0
      001AB1 86 83            [24] 3137 	mov	dph,@r0
      001AB3 08               [12] 3138 	inc	r0
      001AB4 86 F0            [24] 3139 	mov	b,@r0
      001AB6 EE               [12] 3140 	mov	a,r6
      001AB7 12 38 59         [24] 3141 	lcall	__gptrput
      001ABA A3               [24] 3142 	inc	dptr
      001ABB ED               [12] 3143 	mov	a,r5
      001ABC 12 38 59         [24] 3144 	lcall	__gptrput
      001ABF A3               [24] 3145 	inc	dptr
      001AC0 EC               [12] 3146 	mov	a,r4
      001AC1 12 38 59         [24] 3147 	lcall	__gptrput
      001AC4 A3               [24] 3148 	inc	dptr
      001AC5 EF               [12] 3149 	mov	a,r7
      001AC6 12 38 59         [24] 3150 	lcall	__gptrput
                                   3151 ;	pff\source\pff.c:728: fno->fdate = ld_word(dir+DIR_WrtDate);		/* Date */
      001AC9 E5 08            [12] 3152 	mov	a,_bp
      001ACB 24 04            [12] 3153 	add	a,#0x04
      001ACD F8               [12] 3154 	mov	r0,a
      001ACE 74 04            [12] 3155 	mov	a,#0x04
      001AD0 26               [12] 3156 	add	a,@r0
      001AD1 FD               [12] 3157 	mov	r5,a
      001AD2 E4               [12] 3158 	clr	a
      001AD3 08               [12] 3159 	inc	r0
      001AD4 36               [12] 3160 	addc	a,@r0
      001AD5 FE               [12] 3161 	mov	r6,a
      001AD6 08               [12] 3162 	inc	r0
      001AD7 86 07            [24] 3163 	mov	ar7,@r0
      001AD9 E5 08            [12] 3164 	mov	a,_bp
      001ADB 24 FB            [12] 3165 	add	a,#0xfb
      001ADD F8               [12] 3166 	mov	r0,a
      001ADE 74 18            [12] 3167 	mov	a,#0x18
      001AE0 26               [12] 3168 	add	a,@r0
      001AE1 FA               [12] 3169 	mov	r2,a
      001AE2 E4               [12] 3170 	clr	a
      001AE3 08               [12] 3171 	inc	r0
      001AE4 36               [12] 3172 	addc	a,@r0
      001AE5 FB               [12] 3173 	mov	r3,a
      001AE6 08               [12] 3174 	inc	r0
      001AE7 86 04            [24] 3175 	mov	ar4,@r0
      001AE9 8A 82            [24] 3176 	mov	dpl,r2
      001AEB 8B 83            [24] 3177 	mov	dph,r3
      001AED 8C F0            [24] 3178 	mov	b,r4
      001AEF C0 07            [24] 3179 	push	ar7
      001AF1 C0 06            [24] 3180 	push	ar6
      001AF3 C0 05            [24] 3181 	push	ar5
      001AF5 12 0A 53         [24] 3182 	lcall	_ld_word
      001AF8 AB 82            [24] 3183 	mov	r3,dpl
      001AFA AC 83            [24] 3184 	mov	r4,dph
      001AFC D0 05            [24] 3185 	pop	ar5
      001AFE D0 06            [24] 3186 	pop	ar6
      001B00 D0 07            [24] 3187 	pop	ar7
      001B02 8D 82            [24] 3188 	mov	dpl,r5
      001B04 8E 83            [24] 3189 	mov	dph,r6
      001B06 8F F0            [24] 3190 	mov	b,r7
      001B08 EB               [12] 3191 	mov	a,r3
      001B09 12 38 59         [24] 3192 	lcall	__gptrput
      001B0C A3               [24] 3193 	inc	dptr
      001B0D EC               [12] 3194 	mov	a,r4
      001B0E 12 38 59         [24] 3195 	lcall	__gptrput
                                   3196 ;	pff\source\pff.c:729: fno->ftime = ld_word(dir+DIR_WrtTime);		/* Time */
      001B11 E5 08            [12] 3197 	mov	a,_bp
      001B13 24 04            [12] 3198 	add	a,#0x04
      001B15 F8               [12] 3199 	mov	r0,a
      001B16 74 06            [12] 3200 	mov	a,#0x06
      001B18 26               [12] 3201 	add	a,@r0
      001B19 FD               [12] 3202 	mov	r5,a
      001B1A E4               [12] 3203 	clr	a
      001B1B 08               [12] 3204 	inc	r0
      001B1C 36               [12] 3205 	addc	a,@r0
      001B1D FE               [12] 3206 	mov	r6,a
      001B1E 08               [12] 3207 	inc	r0
      001B1F 86 07            [24] 3208 	mov	ar7,@r0
      001B21 E5 08            [12] 3209 	mov	a,_bp
      001B23 24 FB            [12] 3210 	add	a,#0xfb
      001B25 F8               [12] 3211 	mov	r0,a
      001B26 74 16            [12] 3212 	mov	a,#0x16
      001B28 26               [12] 3213 	add	a,@r0
      001B29 FA               [12] 3214 	mov	r2,a
      001B2A E4               [12] 3215 	clr	a
      001B2B 08               [12] 3216 	inc	r0
      001B2C 36               [12] 3217 	addc	a,@r0
      001B2D FB               [12] 3218 	mov	r3,a
      001B2E 08               [12] 3219 	inc	r0
      001B2F 86 04            [24] 3220 	mov	ar4,@r0
      001B31 8A 82            [24] 3221 	mov	dpl,r2
      001B33 8B 83            [24] 3222 	mov	dph,r3
      001B35 8C F0            [24] 3223 	mov	b,r4
      001B37 C0 07            [24] 3224 	push	ar7
      001B39 C0 06            [24] 3225 	push	ar6
      001B3B C0 05            [24] 3226 	push	ar5
      001B3D 12 0A 53         [24] 3227 	lcall	_ld_word
      001B40 AB 82            [24] 3228 	mov	r3,dpl
      001B42 AC 83            [24] 3229 	mov	r4,dph
      001B44 D0 05            [24] 3230 	pop	ar5
      001B46 D0 06            [24] 3231 	pop	ar6
      001B48 D0 07            [24] 3232 	pop	ar7
      001B4A 8D 82            [24] 3233 	mov	dpl,r5
      001B4C 8E 83            [24] 3234 	mov	dph,r6
      001B4E 8F F0            [24] 3235 	mov	b,r7
      001B50 EB               [12] 3236 	mov	a,r3
      001B51 12 38 59         [24] 3237 	lcall	__gptrput
      001B54 A3               [24] 3238 	inc	dptr
      001B55 EC               [12] 3239 	mov	a,r4
      001B56 12 38 59         [24] 3240 	lcall	__gptrput
      001B59                       3241 00112$:
                                   3242 ;	pff\source\pff.c:731: *p = 0;
      001B59 A8 08            [24] 3243 	mov	r0,_bp
      001B5B 08               [12] 3244 	inc	r0
      001B5C 86 82            [24] 3245 	mov	dpl,@r0
      001B5E 08               [12] 3246 	inc	r0
      001B5F 86 83            [24] 3247 	mov	dph,@r0
      001B61 08               [12] 3248 	inc	r0
      001B62 86 F0            [24] 3249 	mov	b,@r0
      001B64 E4               [12] 3250 	clr	a
      001B65 12 38 59         [24] 3251 	lcall	__gptrput
                                   3252 ;	pff\source\pff.c:732: }
      001B68 85 08 81         [24] 3253 	mov	sp,_bp
      001B6B D0 08            [24] 3254 	pop	_bp
      001B6D 22               [24] 3255 	ret
                                   3256 ;------------------------------------------------------------
                                   3257 ;Allocation info for local variables in function 'follow_path'
                                   3258 ;------------------------------------------------------------
                                   3259 ;dir                       Allocated to stack - _bp -5
                                   3260 ;path                      Allocated to stack - _bp -8
                                   3261 ;dj                        Allocated to stack - _bp +1
                                   3262 ;res                       Allocated to stack - _bp +10
                                   3263 ;sloc0                     Allocated to stack - _bp +5
                                   3264 ;sloc1                     Allocated to stack - _bp +4
                                   3265 ;sloc2                     Allocated to stack - _bp +7
                                   3266 ;------------------------------------------------------------
                                   3267 ;	pff\source\pff.c:741: static FRESULT follow_path (	/* FR_OK(0): successful, !=0: error code */
                                   3268 ;	-----------------------------------------
                                   3269 ;	 function follow_path
                                   3270 ;	-----------------------------------------
      001B6E                       3271 _follow_path:
      001B6E C0 08            [24] 3272 	push	_bp
      001B70 85 81 08         [24] 3273 	mov	_bp,sp
      001B73 C0 82            [24] 3274 	push	dpl
      001B75 C0 83            [24] 3275 	push	dph
      001B77 C0 F0            [24] 3276 	push	b
      001B79 E5 81            [12] 3277 	mov	a,sp
      001B7B 24 07            [12] 3278 	add	a,#0x07
      001B7D F5 81            [12] 3279 	mov	sp,a
                                   3280 ;	pff\source\pff.c:750: while (*path == ' ') path++;		/* Strip leading spaces */
      001B7F E5 08            [12] 3281 	mov	a,_bp
      001B81 24 F8            [12] 3282 	add	a,#0xf8
      001B83 F8               [12] 3283 	mov	r0,a
      001B84 86 02            [24] 3284 	mov	ar2,@r0
      001B86 08               [12] 3285 	inc	r0
      001B87 86 03            [24] 3286 	mov	ar3,@r0
      001B89 08               [12] 3287 	inc	r0
      001B8A 86 04            [24] 3288 	mov	ar4,@r0
      001B8C                       3289 00101$:
      001B8C 8A 82            [24] 3290 	mov	dpl,r2
      001B8E 8B 83            [24] 3291 	mov	dph,r3
      001B90 8C F0            [24] 3292 	mov	b,r4
      001B92 12 3A A5         [24] 3293 	lcall	__gptrget
      001B95 FF               [12] 3294 	mov	r7,a
      001B96 BF 20 14         [24] 3295 	cjne	r7,#0x20,00131$
      001B99 0A               [12] 3296 	inc	r2
      001B9A BA 00 01         [24] 3297 	cjne	r2,#0x00,00161$
      001B9D 0B               [12] 3298 	inc	r3
      001B9E                       3299 00161$:
      001B9E E5 08            [12] 3300 	mov	a,_bp
      001BA0 24 F8            [12] 3301 	add	a,#0xf8
      001BA2 F8               [12] 3302 	mov	r0,a
      001BA3 A6 02            [24] 3303 	mov	@r0,ar2
      001BA5 08               [12] 3304 	inc	r0
      001BA6 A6 03            [24] 3305 	mov	@r0,ar3
      001BA8 08               [12] 3306 	inc	r0
      001BA9 A6 04            [24] 3307 	mov	@r0,ar4
      001BAB 80 DF            [24] 3308 	sjmp	00101$
      001BAD                       3309 00131$:
      001BAD E5 08            [12] 3310 	mov	a,_bp
      001BAF 24 F8            [12] 3311 	add	a,#0xf8
      001BB1 F8               [12] 3312 	mov	r0,a
      001BB2 A6 02            [24] 3313 	mov	@r0,ar2
      001BB4 08               [12] 3314 	inc	r0
      001BB5 A6 03            [24] 3315 	mov	@r0,ar3
      001BB7 08               [12] 3316 	inc	r0
      001BB8 A6 04            [24] 3317 	mov	@r0,ar4
                                   3318 ;	pff\source\pff.c:751: if (*path == '/') path++;			/* Strip heading separator if exist */
      001BBA BF 2F 10         [24] 3319 	cjne	r7,#0x2f,00105$
      001BBD E5 08            [12] 3320 	mov	a,_bp
      001BBF 24 F8            [12] 3321 	add	a,#0xf8
      001BC1 F8               [12] 3322 	mov	r0,a
      001BC2 74 01            [12] 3323 	mov	a,#0x01
      001BC4 2A               [12] 3324 	add	a,r2
      001BC5 F6               [12] 3325 	mov	@r0,a
      001BC6 E4               [12] 3326 	clr	a
      001BC7 3B               [12] 3327 	addc	a,r3
      001BC8 08               [12] 3328 	inc	r0
      001BC9 F6               [12] 3329 	mov	@r0,a
      001BCA 08               [12] 3330 	inc	r0
      001BCB A6 04            [24] 3331 	mov	@r0,ar4
      001BCD                       3332 00105$:
                                   3333 ;	pff\source\pff.c:752: dj->sclust = 0;						/* Set start directory (always root dir) */
      001BCD A8 08            [24] 3334 	mov	r0,_bp
      001BCF 08               [12] 3335 	inc	r0
      001BD0 74 05            [12] 3336 	mov	a,#0x05
      001BD2 26               [12] 3337 	add	a,@r0
      001BD3 FA               [12] 3338 	mov	r2,a
      001BD4 E4               [12] 3339 	clr	a
      001BD5 08               [12] 3340 	inc	r0
      001BD6 36               [12] 3341 	addc	a,@r0
      001BD7 FB               [12] 3342 	mov	r3,a
      001BD8 08               [12] 3343 	inc	r0
      001BD9 86 04            [24] 3344 	mov	ar4,@r0
      001BDB 8A 82            [24] 3345 	mov	dpl,r2
      001BDD 8B 83            [24] 3346 	mov	dph,r3
      001BDF 8C F0            [24] 3347 	mov	b,r4
      001BE1 E4               [12] 3348 	clr	a
      001BE2 12 38 59         [24] 3349 	lcall	__gptrput
      001BE5 A3               [24] 3350 	inc	dptr
      001BE6 12 38 59         [24] 3351 	lcall	__gptrput
      001BE9 A3               [24] 3352 	inc	dptr
      001BEA 12 38 59         [24] 3353 	lcall	__gptrput
      001BED A3               [24] 3354 	inc	dptr
      001BEE 12 38 59         [24] 3355 	lcall	__gptrput
                                   3356 ;	pff\source\pff.c:754: if ((BYTE)*path < ' ') {			/* Null path means the root directory */
      001BF1 E5 08            [12] 3357 	mov	a,_bp
      001BF3 24 F8            [12] 3358 	add	a,#0xf8
      001BF5 F8               [12] 3359 	mov	r0,a
      001BF6 86 02            [24] 3360 	mov	ar2,@r0
      001BF8 08               [12] 3361 	inc	r0
      001BF9 86 03            [24] 3362 	mov	ar3,@r0
      001BFB 08               [12] 3363 	inc	r0
      001BFC 86 04            [24] 3364 	mov	ar4,@r0
      001BFE 8A 82            [24] 3365 	mov	dpl,r2
      001C00 8B 83            [24] 3366 	mov	dph,r3
      001C02 8C F0            [24] 3367 	mov	b,r4
      001C04 12 3A A5         [24] 3368 	lcall	__gptrget
      001C07 FA               [12] 3369 	mov	r2,a
      001C08 BA 20 00         [24] 3370 	cjne	r2,#0x20,00164$
      001C0B                       3371 00164$:
      001C0B 50 31            [24] 3372 	jnc	00130$
                                   3373 ;	pff\source\pff.c:755: res = dir_rewind(dj);
      001C0D A8 08            [24] 3374 	mov	r0,_bp
      001C0F 08               [12] 3375 	inc	r0
      001C10 86 82            [24] 3376 	mov	dpl,@r0
      001C12 08               [12] 3377 	inc	r0
      001C13 86 83            [24] 3378 	mov	dph,@r0
      001C15 08               [12] 3379 	inc	r0
      001C16 86 F0            [24] 3380 	mov	b,@r0
      001C18 12 0F D0         [24] 3381 	lcall	_dir_rewind
      001C1B AC 82            [24] 3382 	mov	r4,dpl
      001C1D E5 08            [12] 3383 	mov	a,_bp
      001C1F 24 0A            [12] 3384 	add	a,#0x0a
      001C21 F8               [12] 3385 	mov	r0,a
      001C22 A6 04            [24] 3386 	mov	@r0,ar4
                                   3387 ;	pff\source\pff.c:756: dir[0] = 0;
      001C24 E5 08            [12] 3388 	mov	a,_bp
      001C26 24 FB            [12] 3389 	add	a,#0xfb
      001C28 F8               [12] 3390 	mov	r0,a
      001C29 86 02            [24] 3391 	mov	ar2,@r0
      001C2B 08               [12] 3392 	inc	r0
      001C2C 86 03            [24] 3393 	mov	ar3,@r0
      001C2E 08               [12] 3394 	inc	r0
      001C2F 86 04            [24] 3395 	mov	ar4,@r0
      001C31 8A 82            [24] 3396 	mov	dpl,r2
      001C33 8B 83            [24] 3397 	mov	dph,r3
      001C35 8C F0            [24] 3398 	mov	b,r4
      001C37 E4               [12] 3399 	clr	a
      001C38 12 38 59         [24] 3400 	lcall	__gptrput
      001C3B 02 1D AE         [24] 3401 	ljmp	00117$
      001C3E                       3402 00130$:
      001C3E A8 08            [24] 3403 	mov	r0,_bp
      001C40 08               [12] 3404 	inc	r0
      001C41 74 02            [12] 3405 	mov	a,#0x02
      001C43 26               [12] 3406 	add	a,@r0
      001C44 FA               [12] 3407 	mov	r2,a
      001C45 E4               [12] 3408 	clr	a
      001C46 08               [12] 3409 	inc	r0
      001C47 36               [12] 3410 	addc	a,@r0
      001C48 FB               [12] 3411 	mov	r3,a
      001C49 08               [12] 3412 	inc	r0
      001C4A 86 04            [24] 3413 	mov	ar4,@r0
      001C4C E5 08            [12] 3414 	mov	a,_bp
      001C4E 24 FB            [12] 3415 	add	a,#0xfb
      001C50 F8               [12] 3416 	mov	r0,a
      001C51 E5 08            [12] 3417 	mov	a,_bp
      001C53 24 04            [12] 3418 	add	a,#0x04
      001C55 F9               [12] 3419 	mov	r1,a
      001C56 74 0B            [12] 3420 	mov	a,#0x0b
      001C58 26               [12] 3421 	add	a,@r0
      001C59 F7               [12] 3422 	mov	@r1,a
      001C5A E4               [12] 3423 	clr	a
      001C5B 08               [12] 3424 	inc	r0
      001C5C 36               [12] 3425 	addc	a,@r0
      001C5D 09               [12] 3426 	inc	r1
      001C5E F7               [12] 3427 	mov	@r1,a
      001C5F 08               [12] 3428 	inc	r0
      001C60 E6               [12] 3429 	mov	a,@r0
      001C61 09               [12] 3430 	inc	r1
      001C62 F7               [12] 3431 	mov	@r1,a
      001C63                       3432 00118$:
                                   3433 ;	pff\source\pff.c:760: res = create_name(dj, &path);	/* Get a segment */
      001C63 C0 02            [24] 3434 	push	ar2
      001C65 C0 03            [24] 3435 	push	ar3
      001C67 C0 04            [24] 3436 	push	ar4
      001C69 E5 08            [12] 3437 	mov	a,_bp
      001C6B 24 F8            [12] 3438 	add	a,#0xf8
      001C6D FC               [12] 3439 	mov	r4,a
      001C6E 7B 00            [12] 3440 	mov	r3,#0x00
      001C70 7A 40            [12] 3441 	mov	r2,#0x40
      001C72 C0 03            [24] 3442 	push	ar3
      001C74 C0 02            [24] 3443 	push	ar2
      001C76 C0 04            [24] 3444 	push	ar4
      001C78 C0 03            [24] 3445 	push	ar3
      001C7A C0 02            [24] 3446 	push	ar2
      001C7C A8 08            [24] 3447 	mov	r0,_bp
      001C7E 08               [12] 3448 	inc	r0
      001C7F 86 82            [24] 3449 	mov	dpl,@r0
      001C81 08               [12] 3450 	inc	r0
      001C82 86 83            [24] 3451 	mov	dph,@r0
      001C84 08               [12] 3452 	inc	r0
      001C85 86 F0            [24] 3453 	mov	b,@r0
      001C87 12 17 83         [24] 3454 	lcall	_create_name
      001C8A AC 82            [24] 3455 	mov	r4,dpl
      001C8C 15 81            [12] 3456 	dec	sp
      001C8E 15 81            [12] 3457 	dec	sp
      001C90 15 81            [12] 3458 	dec	sp
      001C92 D0 02            [24] 3459 	pop	ar2
      001C94 D0 03            [24] 3460 	pop	ar3
      001C96 E5 08            [12] 3461 	mov	a,_bp
      001C98 24 0A            [12] 3462 	add	a,#0x0a
      001C9A F8               [12] 3463 	mov	r0,a
      001C9B A6 04            [24] 3464 	mov	@r0,ar4
                                   3465 ;	pff\source\pff.c:761: if (res != FR_OK) break;
      001C9D E5 08            [12] 3466 	mov	a,_bp
      001C9F 24 0A            [12] 3467 	add	a,#0x0a
      001CA1 F8               [12] 3468 	mov	r0,a
      001CA2 E6               [12] 3469 	mov	a,@r0
      001CA3 D0 04            [24] 3470 	pop	ar4
      001CA5 D0 03            [24] 3471 	pop	ar3
      001CA7 D0 02            [24] 3472 	pop	ar2
      001CA9 60 03            [24] 3473 	jz	00166$
      001CAB 02 1D AE         [24] 3474 	ljmp	00117$
      001CAE                       3475 00166$:
                                   3476 ;	pff\source\pff.c:762: res = dir_find(dj, dir);		/* Find it */
      001CAE C0 02            [24] 3477 	push	ar2
      001CB0 C0 03            [24] 3478 	push	ar3
      001CB2 C0 04            [24] 3479 	push	ar4
      001CB4 C0 03            [24] 3480 	push	ar3
      001CB6 C0 02            [24] 3481 	push	ar2
      001CB8 E5 08            [12] 3482 	mov	a,_bp
      001CBA 24 FB            [12] 3483 	add	a,#0xfb
      001CBC F8               [12] 3484 	mov	r0,a
      001CBD E6               [12] 3485 	mov	a,@r0
      001CBE C0 E0            [24] 3486 	push	acc
      001CC0 08               [12] 3487 	inc	r0
      001CC1 E6               [12] 3488 	mov	a,@r0
      001CC2 C0 E0            [24] 3489 	push	acc
      001CC4 08               [12] 3490 	inc	r0
      001CC5 E6               [12] 3491 	mov	a,@r0
      001CC6 C0 E0            [24] 3492 	push	acc
      001CC8 A8 08            [24] 3493 	mov	r0,_bp
      001CCA 08               [12] 3494 	inc	r0
      001CCB 86 82            [24] 3495 	mov	dpl,@r0
      001CCD 08               [12] 3496 	inc	r0
      001CCE 86 83            [24] 3497 	mov	dph,@r0
      001CD0 08               [12] 3498 	inc	r0
      001CD1 86 F0            [24] 3499 	mov	b,@r0
      001CD3 12 13 F3         [24] 3500 	lcall	_dir_find
      001CD6 AC 82            [24] 3501 	mov	r4,dpl
      001CD8 15 81            [12] 3502 	dec	sp
      001CDA 15 81            [12] 3503 	dec	sp
      001CDC 15 81            [12] 3504 	dec	sp
      001CDE D0 02            [24] 3505 	pop	ar2
      001CE0 D0 03            [24] 3506 	pop	ar3
      001CE2 E5 08            [12] 3507 	mov	a,_bp
      001CE4 24 0A            [12] 3508 	add	a,#0x0a
      001CE6 F8               [12] 3509 	mov	r0,a
      001CE7 A6 04            [24] 3510 	mov	@r0,ar4
                                   3511 ;	pff\source\pff.c:763: if (res != FR_OK) break;		/* Could not find the object */
      001CE9 E5 08            [12] 3512 	mov	a,_bp
      001CEB 24 0A            [12] 3513 	add	a,#0x0a
      001CED F8               [12] 3514 	mov	r0,a
      001CEE E6               [12] 3515 	mov	a,@r0
      001CEF D0 04            [24] 3516 	pop	ar4
      001CF1 D0 03            [24] 3517 	pop	ar3
      001CF3 D0 02            [24] 3518 	pop	ar2
      001CF5 60 03            [24] 3519 	jz	00167$
      001CF7 02 1D AE         [24] 3520 	ljmp	00117$
      001CFA                       3521 00167$:
                                   3522 ;	pff\source\pff.c:764: if (dj->fn[11]) break;			/* Last segment match. Function completed. */
      001CFA 8A 82            [24] 3523 	mov	dpl,r2
      001CFC 8B 83            [24] 3524 	mov	dph,r3
      001CFE 8C F0            [24] 3525 	mov	b,r4
      001D00 12 3A A5         [24] 3526 	lcall	__gptrget
      001D03 FD               [12] 3527 	mov	r5,a
      001D04 A3               [24] 3528 	inc	dptr
      001D05 12 3A A5         [24] 3529 	lcall	__gptrget
      001D08 FE               [12] 3530 	mov	r6,a
      001D09 A3               [24] 3531 	inc	dptr
      001D0A 12 3A A5         [24] 3532 	lcall	__gptrget
      001D0D FF               [12] 3533 	mov	r7,a
      001D0E 74 0B            [12] 3534 	mov	a,#0x0b
      001D10 2D               [12] 3535 	add	a,r5
      001D11 FD               [12] 3536 	mov	r5,a
      001D12 E4               [12] 3537 	clr	a
      001D13 3E               [12] 3538 	addc	a,r6
      001D14 FE               [12] 3539 	mov	r6,a
      001D15 8D 82            [24] 3540 	mov	dpl,r5
      001D17 8E 83            [24] 3541 	mov	dph,r6
      001D19 8F F0            [24] 3542 	mov	b,r7
      001D1B 12 3A A5         [24] 3543 	lcall	__gptrget
      001D1E 60 03            [24] 3544 	jz	00168$
      001D20 02 1D AE         [24] 3545 	ljmp	00117$
      001D23                       3546 00168$:
                                   3547 ;	pff\source\pff.c:765: if (!(dir[DIR_Attr] & AM_DIR)) { /* Cannot follow path because it is a file */
      001D23 C0 02            [24] 3548 	push	ar2
      001D25 C0 03            [24] 3549 	push	ar3
      001D27 C0 04            [24] 3550 	push	ar4
      001D29 E5 08            [12] 3551 	mov	a,_bp
      001D2B 24 04            [12] 3552 	add	a,#0x04
      001D2D F8               [12] 3553 	mov	r0,a
      001D2E 86 82            [24] 3554 	mov	dpl,@r0
      001D30 08               [12] 3555 	inc	r0
      001D31 86 83            [24] 3556 	mov	dph,@r0
      001D33 08               [12] 3557 	inc	r0
      001D34 86 F0            [24] 3558 	mov	b,@r0
      001D36 12 3A A5         [24] 3559 	lcall	__gptrget
      001D39 D0 04            [24] 3560 	pop	ar4
      001D3B D0 03            [24] 3561 	pop	ar3
      001D3D D0 02            [24] 3562 	pop	ar2
      001D3F 20 E4 09         [24] 3563 	jb	acc.4,00113$
                                   3564 ;	pff\source\pff.c:766: res = FR_NO_FILE; break;
      001D42 E5 08            [12] 3565 	mov	a,_bp
      001D44 24 0A            [12] 3566 	add	a,#0x0a
      001D46 F8               [12] 3567 	mov	r0,a
      001D47 76 03            [12] 3568 	mov	@r0,#0x03
      001D49 80 63            [24] 3569 	sjmp	00117$
      001D4B                       3570 00113$:
                                   3571 ;	pff\source\pff.c:768: dj->sclust = get_clust(dir);	/* Follow next */
      001D4B C0 02            [24] 3572 	push	ar2
      001D4D C0 03            [24] 3573 	push	ar3
      001D4F C0 04            [24] 3574 	push	ar4
      001D51 A8 08            [24] 3575 	mov	r0,_bp
      001D53 08               [12] 3576 	inc	r0
      001D54 E5 08            [12] 3577 	mov	a,_bp
      001D56 24 07            [12] 3578 	add	a,#0x07
      001D58 F9               [12] 3579 	mov	r1,a
      001D59 74 05            [12] 3580 	mov	a,#0x05
      001D5B 26               [12] 3581 	add	a,@r0
      001D5C F7               [12] 3582 	mov	@r1,a
      001D5D E4               [12] 3583 	clr	a
      001D5E 08               [12] 3584 	inc	r0
      001D5F 36               [12] 3585 	addc	a,@r0
      001D60 09               [12] 3586 	inc	r1
      001D61 F7               [12] 3587 	mov	@r1,a
      001D62 08               [12] 3588 	inc	r0
      001D63 E6               [12] 3589 	mov	a,@r0
      001D64 09               [12] 3590 	inc	r1
      001D65 F7               [12] 3591 	mov	@r1,a
      001D66 E5 08            [12] 3592 	mov	a,_bp
      001D68 24 FB            [12] 3593 	add	a,#0xfb
      001D6A F8               [12] 3594 	mov	r0,a
      001D6B 86 82            [24] 3595 	mov	dpl,@r0
      001D6D 08               [12] 3596 	inc	r0
      001D6E 86 83            [24] 3597 	mov	dph,@r0
      001D70 08               [12] 3598 	inc	r0
      001D71 86 F0            [24] 3599 	mov	b,@r0
      001D73 C0 03            [24] 3600 	push	ar3
      001D75 C0 02            [24] 3601 	push	ar2
      001D77 12 0F 4E         [24] 3602 	lcall	_get_clust
      001D7A AE 82            [24] 3603 	mov	r6,dpl
      001D7C AD 83            [24] 3604 	mov	r5,dph
      001D7E AC F0            [24] 3605 	mov	r4,b
      001D80 FF               [12] 3606 	mov	r7,a
      001D81 D0 02            [24] 3607 	pop	ar2
      001D83 D0 03            [24] 3608 	pop	ar3
      001D85 E5 08            [12] 3609 	mov	a,_bp
      001D87 24 07            [12] 3610 	add	a,#0x07
      001D89 F8               [12] 3611 	mov	r0,a
      001D8A 86 82            [24] 3612 	mov	dpl,@r0
      001D8C 08               [12] 3613 	inc	r0
      001D8D 86 83            [24] 3614 	mov	dph,@r0
      001D8F 08               [12] 3615 	inc	r0
      001D90 86 F0            [24] 3616 	mov	b,@r0
      001D92 EE               [12] 3617 	mov	a,r6
      001D93 12 38 59         [24] 3618 	lcall	__gptrput
      001D96 A3               [24] 3619 	inc	dptr
      001D97 ED               [12] 3620 	mov	a,r5
      001D98 12 38 59         [24] 3621 	lcall	__gptrput
      001D9B A3               [24] 3622 	inc	dptr
      001D9C EC               [12] 3623 	mov	a,r4
      001D9D 12 38 59         [24] 3624 	lcall	__gptrput
      001DA0 A3               [24] 3625 	inc	dptr
      001DA1 EF               [12] 3626 	mov	a,r7
      001DA2 12 38 59         [24] 3627 	lcall	__gptrput
      001DA5 D0 04            [24] 3628 	pop	ar4
      001DA7 D0 03            [24] 3629 	pop	ar3
      001DA9 D0 02            [24] 3630 	pop	ar2
      001DAB 02 1C 63         [24] 3631 	ljmp	00118$
      001DAE                       3632 00117$:
                                   3633 ;	pff\source\pff.c:772: return res;
      001DAE E5 08            [12] 3634 	mov	a,_bp
      001DB0 24 0A            [12] 3635 	add	a,#0x0a
      001DB2 F8               [12] 3636 	mov	r0,a
      001DB3 86 82            [24] 3637 	mov	dpl,@r0
                                   3638 ;	pff\source\pff.c:773: }
      001DB5 85 08 81         [24] 3639 	mov	sp,_bp
      001DB8 D0 08            [24] 3640 	pop	_bp
      001DBA 22               [24] 3641 	ret
                                   3642 ;------------------------------------------------------------
                                   3643 ;Allocation info for local variables in function 'check_fs'
                                   3644 ;------------------------------------------------------------
                                   3645 ;sect                      Allocated to stack - _bp -6
                                   3646 ;buf                       Allocated to registers r5 r6 r7 
                                   3647 ;------------------------------------------------------------
                                   3648 ;	pff\source\pff.c:782: static BYTE check_fs (	/* 0:The FAT boot record, 1:Valid boot record but not an FAT, 2:Not a boot record, 3:Error */
                                   3649 ;	-----------------------------------------
                                   3650 ;	 function check_fs
                                   3651 ;	-----------------------------------------
      001DBB                       3652 _check_fs:
      001DBB C0 08            [24] 3653 	push	_bp
      001DBD 85 81 08         [24] 3654 	mov	_bp,sp
      001DC0 AD 82            [24] 3655 	mov	r5,dpl
      001DC2 AE 83            [24] 3656 	mov	r6,dph
      001DC4 AF F0            [24] 3657 	mov	r7,b
                                   3658 ;	pff\source\pff.c:787: if (disk_readp(buf, sect, 510, 2)) {	/* Read the boot record */
      001DC6 C0 07            [24] 3659 	push	ar7
      001DC8 C0 06            [24] 3660 	push	ar6
      001DCA C0 05            [24] 3661 	push	ar5
      001DCC 74 02            [12] 3662 	mov	a,#0x02
      001DCE C0 E0            [24] 3663 	push	acc
      001DD0 E4               [12] 3664 	clr	a
      001DD1 C0 E0            [24] 3665 	push	acc
      001DD3 74 FE            [12] 3666 	mov	a,#0xfe
      001DD5 C0 E0            [24] 3667 	push	acc
      001DD7 F4               [12] 3668 	cpl	a
      001DD8 C0 E0            [24] 3669 	push	acc
      001DDA E5 08            [12] 3670 	mov	a,_bp
      001DDC 24 FA            [12] 3671 	add	a,#0xfa
      001DDE F8               [12] 3672 	mov	r0,a
      001DDF E6               [12] 3673 	mov	a,@r0
      001DE0 C0 E0            [24] 3674 	push	acc
      001DE2 08               [12] 3675 	inc	r0
      001DE3 E6               [12] 3676 	mov	a,@r0
      001DE4 C0 E0            [24] 3677 	push	acc
      001DE6 08               [12] 3678 	inc	r0
      001DE7 E6               [12] 3679 	mov	a,@r0
      001DE8 C0 E0            [24] 3680 	push	acc
      001DEA 08               [12] 3681 	inc	r0
      001DEB E6               [12] 3682 	mov	a,@r0
      001DEC C0 E0            [24] 3683 	push	acc
      001DEE 8D 82            [24] 3684 	mov	dpl,r5
      001DF0 8E 83            [24] 3685 	mov	dph,r6
      001DF2 8F F0            [24] 3686 	mov	b,r7
      001DF4 12 09 97         [24] 3687 	lcall	_disk_readp
      001DF7 AC 82            [24] 3688 	mov	r4,dpl
      001DF9 E5 81            [12] 3689 	mov	a,sp
      001DFB 24 F8            [12] 3690 	add	a,#0xf8
      001DFD F5 81            [12] 3691 	mov	sp,a
      001DFF D0 05            [24] 3692 	pop	ar5
      001E01 D0 06            [24] 3693 	pop	ar6
      001E03 D0 07            [24] 3694 	pop	ar7
      001E05 EC               [12] 3695 	mov	a,r4
      001E06 60 06            [24] 3696 	jz	00102$
                                   3697 ;	pff\source\pff.c:788: return 3;
      001E08 75 82 03         [24] 3698 	mov	dpl,#0x03
      001E0B 02 1E 91         [24] 3699 	ljmp	00113$
      001E0E                       3700 00102$:
                                   3701 ;	pff\source\pff.c:790: if (ld_word(buf) != 0xAA55) {			/* Check record signature */
      001E0E 8D 82            [24] 3702 	mov	dpl,r5
      001E10 8E 83            [24] 3703 	mov	dph,r6
      001E12 8F F0            [24] 3704 	mov	b,r7
      001E14 C0 07            [24] 3705 	push	ar7
      001E16 C0 06            [24] 3706 	push	ar6
      001E18 C0 05            [24] 3707 	push	ar5
      001E1A 12 0A 53         [24] 3708 	lcall	_ld_word
      001E1D AB 82            [24] 3709 	mov	r3,dpl
      001E1F AC 83            [24] 3710 	mov	r4,dph
      001E21 D0 05            [24] 3711 	pop	ar5
      001E23 D0 06            [24] 3712 	pop	ar6
      001E25 D0 07            [24] 3713 	pop	ar7
      001E27 BB 55 05         [24] 3714 	cjne	r3,#0x55,00132$
      001E2A BC AA 02         [24] 3715 	cjne	r4,#0xaa,00132$
      001E2D 80 05            [24] 3716 	sjmp	00111$
      001E2F                       3717 00132$:
                                   3718 ;	pff\source\pff.c:791: return 2;
      001E2F 75 82 02         [24] 3719 	mov	dpl,#0x02
                                   3720 ;	pff\source\pff.c:797: if (PF_FS_FAT32 && !disk_readp(buf, sect, BS_FilSysType32, 2) && ld_word(buf) == 0x4146) {	/* Check FAT32 */
      001E32 80 5D            [24] 3721 	sjmp	00113$
      001E34                       3722 00111$:
      001E34 C0 07            [24] 3723 	push	ar7
      001E36 C0 06            [24] 3724 	push	ar6
      001E38 C0 05            [24] 3725 	push	ar5
      001E3A 74 02            [12] 3726 	mov	a,#0x02
      001E3C C0 E0            [24] 3727 	push	acc
      001E3E E4               [12] 3728 	clr	a
      001E3F C0 E0            [24] 3729 	push	acc
      001E41 74 52            [12] 3730 	mov	a,#0x52
      001E43 C0 E0            [24] 3731 	push	acc
      001E45 E4               [12] 3732 	clr	a
      001E46 C0 E0            [24] 3733 	push	acc
      001E48 E5 08            [12] 3734 	mov	a,_bp
      001E4A 24 FA            [12] 3735 	add	a,#0xfa
      001E4C F8               [12] 3736 	mov	r0,a
      001E4D E6               [12] 3737 	mov	a,@r0
      001E4E C0 E0            [24] 3738 	push	acc
      001E50 08               [12] 3739 	inc	r0
      001E51 E6               [12] 3740 	mov	a,@r0
      001E52 C0 E0            [24] 3741 	push	acc
      001E54 08               [12] 3742 	inc	r0
      001E55 E6               [12] 3743 	mov	a,@r0
      001E56 C0 E0            [24] 3744 	push	acc
      001E58 08               [12] 3745 	inc	r0
      001E59 E6               [12] 3746 	mov	a,@r0
      001E5A C0 E0            [24] 3747 	push	acc
      001E5C 8D 82            [24] 3748 	mov	dpl,r5
      001E5E 8E 83            [24] 3749 	mov	dph,r6
      001E60 8F F0            [24] 3750 	mov	b,r7
      001E62 12 09 97         [24] 3751 	lcall	_disk_readp
      001E65 AC 82            [24] 3752 	mov	r4,dpl
      001E67 E5 81            [12] 3753 	mov	a,sp
      001E69 24 F8            [12] 3754 	add	a,#0xf8
      001E6B F5 81            [12] 3755 	mov	sp,a
      001E6D D0 05            [24] 3756 	pop	ar5
      001E6F D0 06            [24] 3757 	pop	ar6
      001E71 D0 07            [24] 3758 	pop	ar7
      001E73 EC               [12] 3759 	mov	a,r4
      001E74 70 18            [24] 3760 	jnz	00110$
      001E76 8D 82            [24] 3761 	mov	dpl,r5
      001E78 8E 83            [24] 3762 	mov	dph,r6
      001E7A 8F F0            [24] 3763 	mov	b,r7
      001E7C 12 0A 53         [24] 3764 	lcall	_ld_word
      001E7F AE 82            [24] 3765 	mov	r6,dpl
      001E81 AF 83            [24] 3766 	mov	r7,dph
      001E83 BE 46 08         [24] 3767 	cjne	r6,#0x46,00110$
      001E86 BF 41 05         [24] 3768 	cjne	r7,#0x41,00110$
                                   3769 ;	pff\source\pff.c:798: return 0;
      001E89 75 82 00         [24] 3770 	mov	dpl,#0x00
      001E8C 80 03            [24] 3771 	sjmp	00113$
      001E8E                       3772 00110$:
                                   3773 ;	pff\source\pff.c:800: return 1;
      001E8E 75 82 01         [24] 3774 	mov	dpl,#0x01
      001E91                       3775 00113$:
                                   3776 ;	pff\source\pff.c:801: }
      001E91 D0 08            [24] 3777 	pop	_bp
      001E93 22               [24] 3778 	ret
                                   3779 ;------------------------------------------------------------
                                   3780 ;Allocation info for local variables in function 'pf_mount'
                                   3781 ;------------------------------------------------------------
                                   3782 ;fs                        Allocated to stack - _bp +1
                                   3783 ;fmt                       Allocated to registers r7 
                                   3784 ;buf                       Allocated to stack - _bp +23
                                   3785 ;bsect                     Allocated to stack - _bp +59
                                   3786 ;fsize                     Allocated to stack - _bp +19
                                   3787 ;tsect                     Allocated to stack - _bp +15
                                   3788 ;mclst                     Allocated to stack - _bp +63
                                   3789 ;sloc0                     Allocated to stack - _bp +5
                                   3790 ;sloc1                     Allocated to stack - _bp +9
                                   3791 ;sloc2                     Allocated to stack - _bp +4
                                   3792 ;sloc3                     Allocated to stack - _bp +12
                                   3793 ;sloc4                     Allocated to stack - _bp +15
                                   3794 ;------------------------------------------------------------
                                   3795 ;	pff\source\pff.c:818: FRESULT pf_mount (
                                   3796 ;	-----------------------------------------
                                   3797 ;	 function pf_mount
                                   3798 ;	-----------------------------------------
      001E94                       3799 _pf_mount:
      001E94 C0 08            [24] 3800 	push	_bp
      001E96 85 81 08         [24] 3801 	mov	_bp,sp
      001E99 C0 82            [24] 3802 	push	dpl
      001E9B C0 83            [24] 3803 	push	dph
      001E9D C0 F0            [24] 3804 	push	b
      001E9F E5 81            [12] 3805 	mov	a,sp
      001EA1 24 3F            [12] 3806 	add	a,#0x3f
      001EA3 F5 81            [12] 3807 	mov	sp,a
                                   3808 ;	pff\source\pff.c:826: FatFs = 0;
      001EA5 90 00 2B         [24] 3809 	mov	dptr,#_FatFs
      001EA8 E4               [12] 3810 	clr	a
      001EA9 F0               [24] 3811 	movx	@dptr,a
      001EAA A3               [24] 3812 	inc	dptr
      001EAB F0               [24] 3813 	movx	@dptr,a
      001EAC A3               [24] 3814 	inc	dptr
      001EAD F0               [24] 3815 	movx	@dptr,a
                                   3816 ;	pff\source\pff.c:828: if (disk_initialize() & STA_NOINIT) {	/* Check if the drive is ready or not */
      001EAE 12 09 7C         [24] 3817 	lcall	_disk_initialize
      001EB1 E5 82            [12] 3818 	mov	a,dpl
      001EB3 30 E0 06         [24] 3819 	jnb	acc.0,00102$
                                   3820 ;	pff\source\pff.c:829: return FR_NOT_READY;
      001EB6 75 82 02         [24] 3821 	mov	dpl,#0x02
      001EB9 02 24 42         [24] 3822 	ljmp	00137$
      001EBC                       3823 00102$:
                                   3824 ;	pff\source\pff.c:833: bsect = 0;
      001EBC E5 08            [12] 3825 	mov	a,_bp
      001EBE 24 3B            [12] 3826 	add	a,#0x3b
      001EC0 F8               [12] 3827 	mov	r0,a
      001EC1 E4               [12] 3828 	clr	a
      001EC2 F6               [12] 3829 	mov	@r0,a
      001EC3 08               [12] 3830 	inc	r0
      001EC4 F6               [12] 3831 	mov	@r0,a
      001EC5 08               [12] 3832 	inc	r0
      001EC6 F6               [12] 3833 	mov	@r0,a
      001EC7 08               [12] 3834 	inc	r0
      001EC8 F6               [12] 3835 	mov	@r0,a
                                   3836 ;	pff\source\pff.c:834: fmt = check_fs(buf, bsect);			/* Check sector 0 as an SFD format */
      001EC9 E5 08            [12] 3837 	mov	a,_bp
      001ECB 24 17            [12] 3838 	add	a,#0x17
      001ECD F9               [12] 3839 	mov	r1,a
      001ECE FA               [12] 3840 	mov	r2,a
      001ECF 7B 00            [12] 3841 	mov	r3,#0x00
      001ED1 7C 40            [12] 3842 	mov	r4,#0x40
      001ED3 C0 01            [24] 3843 	push	ar1
      001ED5 E4               [12] 3844 	clr	a
      001ED6 C0 E0            [24] 3845 	push	acc
      001ED8 C0 E0            [24] 3846 	push	acc
      001EDA C0 E0            [24] 3847 	push	acc
      001EDC C0 E0            [24] 3848 	push	acc
      001EDE 8A 82            [24] 3849 	mov	dpl,r2
      001EE0 8B 83            [24] 3850 	mov	dph,r3
      001EE2 8C F0            [24] 3851 	mov	b,r4
      001EE4 12 1D BB         [24] 3852 	lcall	_check_fs
      001EE7 AC 82            [24] 3853 	mov	r4,dpl
      001EE9 E5 81            [12] 3854 	mov	a,sp
      001EEB 24 FC            [12] 3855 	add	a,#0xfc
      001EED F5 81            [12] 3856 	mov	sp,a
      001EEF D0 01            [24] 3857 	pop	ar1
                                   3858 ;	pff\source\pff.c:835: if (fmt == 1) {						/* Not an FAT boot record, it may be FDISK format */
      001EF1 BC 01 02         [24] 3859 	cjne	r4,#0x01,00195$
      001EF4 80 03            [24] 3860 	sjmp	00196$
      001EF6                       3861 00195$:
      001EF6 02 1F 9B         [24] 3862 	ljmp	00109$
      001EF9                       3863 00196$:
                                   3864 ;	pff\source\pff.c:837: if (disk_readp(buf, bsect, MBR_Table, 16)) {	/* 1st partition entry */
      001EF9 C0 04            [24] 3865 	push	ar4
      001EFB 89 03            [24] 3866 	mov	ar3,r1
      001EFD 8B 02            [24] 3867 	mov	ar2,r3
      001EFF 7B 00            [12] 3868 	mov	r3,#0x00
      001F01 7C 40            [12] 3869 	mov	r4,#0x40
      001F03 C0 01            [24] 3870 	push	ar1
      001F05 74 10            [12] 3871 	mov	a,#0x10
      001F07 C0 E0            [24] 3872 	push	acc
      001F09 E4               [12] 3873 	clr	a
      001F0A C0 E0            [24] 3874 	push	acc
      001F0C 74 BE            [12] 3875 	mov	a,#0xbe
      001F0E C0 E0            [24] 3876 	push	acc
      001F10 74 01            [12] 3877 	mov	a,#0x01
      001F12 C0 E0            [24] 3878 	push	acc
      001F14 E4               [12] 3879 	clr	a
      001F15 C0 E0            [24] 3880 	push	acc
      001F17 C0 E0            [24] 3881 	push	acc
      001F19 C0 E0            [24] 3882 	push	acc
      001F1B C0 E0            [24] 3883 	push	acc
      001F1D 8A 82            [24] 3884 	mov	dpl,r2
      001F1F 8B 83            [24] 3885 	mov	dph,r3
      001F21 8C F0            [24] 3886 	mov	b,r4
      001F23 12 09 97         [24] 3887 	lcall	_disk_readp
      001F26 AC 82            [24] 3888 	mov	r4,dpl
      001F28 E5 81            [12] 3889 	mov	a,sp
      001F2A 24 F8            [12] 3890 	add	a,#0xf8
      001F2C F5 81            [12] 3891 	mov	sp,a
      001F2E D0 01            [24] 3892 	pop	ar1
      001F30 EC               [12] 3893 	mov	a,r4
      001F31 D0 04            [24] 3894 	pop	ar4
      001F33 60 04            [24] 3895 	jz	00106$
                                   3896 ;	pff\source\pff.c:838: fmt = 3;
      001F35 7C 03            [12] 3897 	mov	r4,#0x03
      001F37 80 62            [24] 3898 	sjmp	00109$
      001F39                       3899 00106$:
                                   3900 ;	pff\source\pff.c:840: if (buf[4]) {					/* Is the partition existing? */
      001F39 74 04            [12] 3901 	mov	a,#0x04
      001F3B 29               [12] 3902 	add	a,r1
      001F3C F8               [12] 3903 	mov	r0,a
      001F3D E6               [12] 3904 	mov	a,@r0
      001F3E 60 5B            [24] 3905 	jz	00109$
                                   3906 ;	pff\source\pff.c:841: bsect = ld_dword(&buf[8]);	/* Partition offset in LBA */
      001F40 74 08            [12] 3907 	mov	a,#0x08
      001F42 29               [12] 3908 	add	a,r1
      001F43 FA               [12] 3909 	mov	r2,a
      001F44 7B 00            [12] 3910 	mov	r3,#0x00
      001F46 7F 40            [12] 3911 	mov	r7,#0x40
      001F48 8A 82            [24] 3912 	mov	dpl,r2
      001F4A 8B 83            [24] 3913 	mov	dph,r3
      001F4C 8F F0            [24] 3914 	mov	b,r7
      001F4E C0 01            [24] 3915 	push	ar1
      001F50 12 0A 83         [24] 3916 	lcall	_ld_dword
      001F53 AB 82            [24] 3917 	mov	r3,dpl
      001F55 AD 83            [24] 3918 	mov	r5,dph
      001F57 AE F0            [24] 3919 	mov	r6,b
      001F59 FF               [12] 3920 	mov	r7,a
      001F5A D0 01            [24] 3921 	pop	ar1
      001F5C E5 08            [12] 3922 	mov	a,_bp
      001F5E 24 3B            [12] 3923 	add	a,#0x3b
      001F60 F8               [12] 3924 	mov	r0,a
      001F61 A6 03            [24] 3925 	mov	@r0,ar3
      001F63 08               [12] 3926 	inc	r0
      001F64 A6 05            [24] 3927 	mov	@r0,ar5
      001F66 08               [12] 3928 	inc	r0
      001F67 A6 06            [24] 3929 	mov	@r0,ar6
      001F69 08               [12] 3930 	inc	r0
      001F6A A6 07            [24] 3931 	mov	@r0,ar7
                                   3932 ;	pff\source\pff.c:842: fmt = check_fs(buf, bsect);	/* Check the partition */
      001F6C 89 07            [24] 3933 	mov	ar7,r1
      001F6E 7E 00            [12] 3934 	mov	r6,#0x00
      001F70 7D 40            [12] 3935 	mov	r5,#0x40
      001F72 C0 01            [24] 3936 	push	ar1
      001F74 E5 08            [12] 3937 	mov	a,_bp
      001F76 24 3B            [12] 3938 	add	a,#0x3b
      001F78 F8               [12] 3939 	mov	r0,a
      001F79 E6               [12] 3940 	mov	a,@r0
      001F7A C0 E0            [24] 3941 	push	acc
      001F7C 08               [12] 3942 	inc	r0
      001F7D E6               [12] 3943 	mov	a,@r0
      001F7E C0 E0            [24] 3944 	push	acc
      001F80 08               [12] 3945 	inc	r0
      001F81 E6               [12] 3946 	mov	a,@r0
      001F82 C0 E0            [24] 3947 	push	acc
      001F84 08               [12] 3948 	inc	r0
      001F85 E6               [12] 3949 	mov	a,@r0
      001F86 C0 E0            [24] 3950 	push	acc
      001F88 8F 82            [24] 3951 	mov	dpl,r7
      001F8A 8E 83            [24] 3952 	mov	dph,r6
      001F8C 8D F0            [24] 3953 	mov	b,r5
      001F8E 12 1D BB         [24] 3954 	lcall	_check_fs
      001F91 AC 82            [24] 3955 	mov	r4,dpl
      001F93 E5 81            [12] 3956 	mov	a,sp
      001F95 24 FC            [12] 3957 	add	a,#0xfc
      001F97 F5 81            [12] 3958 	mov	sp,a
      001F99 D0 01            [24] 3959 	pop	ar1
                                   3960 ;	pff\source\pff.c:883: return FR_OK;
                                   3961 ;	pff\source\pff.c:842: fmt = check_fs(buf, bsect);	/* Check the partition */
      001F9B                       3962 00109$:
                                   3963 ;	pff\source\pff.c:846: if (fmt == 3) return FR_DISK_ERR;
      001F9B BC 03 06         [24] 3964 	cjne	r4,#0x03,00111$
      001F9E 75 82 01         [24] 3965 	mov	dpl,#0x01
      001FA1 02 24 42         [24] 3966 	ljmp	00137$
      001FA4                       3967 00111$:
                                   3968 ;	pff\source\pff.c:847: if (fmt) return FR_NO_FILESYSTEM;	/* No valid FAT patition is found */
      001FA4 EC               [12] 3969 	mov	a,r4
      001FA5 60 06            [24] 3970 	jz	00113$
      001FA7 75 82 06         [24] 3971 	mov	dpl,#0x06
      001FAA 02 24 42         [24] 3972 	ljmp	00137$
      001FAD                       3973 00113$:
                                   3974 ;	pff\source\pff.c:850: if (disk_readp(buf, bsect, 13, sizeof (buf))) return FR_DISK_ERR;
      001FAD 89 04            [24] 3975 	mov	ar4,r1
      001FAF 7B 00            [12] 3976 	mov	r3,#0x00
      001FB1 7A 40            [12] 3977 	mov	r2,#0x40
      001FB3 C0 01            [24] 3978 	push	ar1
      001FB5 74 24            [12] 3979 	mov	a,#0x24
      001FB7 C0 E0            [24] 3980 	push	acc
      001FB9 E4               [12] 3981 	clr	a
      001FBA C0 E0            [24] 3982 	push	acc
      001FBC 74 0D            [12] 3983 	mov	a,#0x0d
      001FBE C0 E0            [24] 3984 	push	acc
      001FC0 E4               [12] 3985 	clr	a
      001FC1 C0 E0            [24] 3986 	push	acc
      001FC3 E5 08            [12] 3987 	mov	a,_bp
      001FC5 24 3B            [12] 3988 	add	a,#0x3b
      001FC7 F8               [12] 3989 	mov	r0,a
      001FC8 E6               [12] 3990 	mov	a,@r0
      001FC9 C0 E0            [24] 3991 	push	acc
      001FCB 08               [12] 3992 	inc	r0
      001FCC E6               [12] 3993 	mov	a,@r0
      001FCD C0 E0            [24] 3994 	push	acc
      001FCF 08               [12] 3995 	inc	r0
      001FD0 E6               [12] 3996 	mov	a,@r0
      001FD1 C0 E0            [24] 3997 	push	acc
      001FD3 08               [12] 3998 	inc	r0
      001FD4 E6               [12] 3999 	mov	a,@r0
      001FD5 C0 E0            [24] 4000 	push	acc
      001FD7 8C 82            [24] 4001 	mov	dpl,r4
      001FD9 8B 83            [24] 4002 	mov	dph,r3
      001FDB 8A F0            [24] 4003 	mov	b,r2
      001FDD 12 09 97         [24] 4004 	lcall	_disk_readp
      001FE0 AC 82            [24] 4005 	mov	r4,dpl
      001FE2 E5 81            [12] 4006 	mov	a,sp
      001FE4 24 F8            [12] 4007 	add	a,#0xf8
      001FE6 F5 81            [12] 4008 	mov	sp,a
      001FE8 D0 01            [24] 4009 	pop	ar1
      001FEA EC               [12] 4010 	mov	a,r4
      001FEB 60 06            [24] 4011 	jz	00115$
      001FED 75 82 01         [24] 4012 	mov	dpl,#0x01
      001FF0 02 24 42         [24] 4013 	ljmp	00137$
      001FF3                       4014 00115$:
                                   4015 ;	pff\source\pff.c:852: fsize = ld_word(buf+BPB_FATSz16-13);				/* Number of sectors per FAT */
      001FF3 74 09            [12] 4016 	mov	a,#0x09
      001FF5 29               [12] 4017 	add	a,r1
      001FF6 FC               [12] 4018 	mov	r4,a
      001FF7 7B 00            [12] 4019 	mov	r3,#0x00
      001FF9 7A 40            [12] 4020 	mov	r2,#0x40
      001FFB 8C 82            [24] 4021 	mov	dpl,r4
      001FFD 8B 83            [24] 4022 	mov	dph,r3
      001FFF 8A F0            [24] 4023 	mov	b,r2
      002001 C0 01            [24] 4024 	push	ar1
      002003 12 0A 53         [24] 4025 	lcall	_ld_word
      002006 AB 82            [24] 4026 	mov	r3,dpl
      002008 AC 83            [24] 4027 	mov	r4,dph
      00200A D0 01            [24] 4028 	pop	ar1
      00200C E5 08            [12] 4029 	mov	a,_bp
      00200E 24 05            [12] 4030 	add	a,#0x05
      002010 F8               [12] 4031 	mov	r0,a
      002011 A6 03            [24] 4032 	mov	@r0,ar3
      002013 08               [12] 4033 	inc	r0
      002014 A6 04            [24] 4034 	mov	@r0,ar4
      002016 08               [12] 4035 	inc	r0
      002017 76 00            [12] 4036 	mov	@r0,#0x00
      002019 08               [12] 4037 	inc	r0
      00201A 76 00            [12] 4038 	mov	@r0,#0x00
                                   4039 ;	pff\source\pff.c:853: if (!fsize) fsize = ld_dword(buf+BPB_FATSz32-13);
      00201C E5 08            [12] 4040 	mov	a,_bp
      00201E 24 05            [12] 4041 	add	a,#0x05
      002020 F8               [12] 4042 	mov	r0,a
      002021 E6               [12] 4043 	mov	a,@r0
      002022 08               [12] 4044 	inc	r0
      002023 46               [12] 4045 	orl	a,@r0
      002024 08               [12] 4046 	inc	r0
      002025 46               [12] 4047 	orl	a,@r0
      002026 08               [12] 4048 	inc	r0
      002027 46               [12] 4049 	orl	a,@r0
      002028 70 25            [24] 4050 	jnz	00117$
      00202A 74 17            [12] 4051 	mov	a,#0x17
      00202C 29               [12] 4052 	add	a,r1
      00202D FC               [12] 4053 	mov	r4,a
      00202E 7B 00            [12] 4054 	mov	r3,#0x00
      002030 7A 40            [12] 4055 	mov	r2,#0x40
      002032 8C 82            [24] 4056 	mov	dpl,r4
      002034 8B 83            [24] 4057 	mov	dph,r3
      002036 8A F0            [24] 4058 	mov	b,r2
      002038 C0 01            [24] 4059 	push	ar1
      00203A 12 0A 83         [24] 4060 	lcall	_ld_dword
      00203D C8               [12] 4061 	xch	a,r0
      00203E E5 08            [12] 4062 	mov	a,_bp
      002040 24 05            [12] 4063 	add	a,#0x05
      002042 C8               [12] 4064 	xch	a,r0
      002043 A6 82            [24] 4065 	mov	@r0,dpl
      002045 08               [12] 4066 	inc	r0
      002046 A6 83            [24] 4067 	mov	@r0,dph
      002048 08               [12] 4068 	inc	r0
      002049 A6 F0            [24] 4069 	mov	@r0,b
      00204B 08               [12] 4070 	inc	r0
      00204C F6               [12] 4071 	mov	@r0,a
      00204D D0 01            [24] 4072 	pop	ar1
      00204F                       4073 00117$:
                                   4074 ;	pff\source\pff.c:855: fsize *= buf[BPB_NumFATs-13];						/* Number of sectors in FAT area */
      00204F 74 03            [12] 4075 	mov	a,#0x03
      002051 29               [12] 4076 	add	a,r1
      002052 F8               [12] 4077 	mov	r0,a
      002053 86 04            [24] 4078 	mov	ar4,@r0
      002055 8C 02            [24] 4079 	mov	ar2,r4
      002057 7B 00            [12] 4080 	mov	r3,#0x00
      002059 7C 00            [12] 4081 	mov	r4,#0x00
      00205B 7F 00            [12] 4082 	mov	r7,#0x00
      00205D C0 01            [24] 4083 	push	ar1
      00205F C0 02            [24] 4084 	push	ar2
      002061 C0 03            [24] 4085 	push	ar3
      002063 C0 04            [24] 4086 	push	ar4
      002065 C0 07            [24] 4087 	push	ar7
      002067 E5 08            [12] 4088 	mov	a,_bp
      002069 24 05            [12] 4089 	add	a,#0x05
      00206B F8               [12] 4090 	mov	r0,a
      00206C 86 82            [24] 4091 	mov	dpl,@r0
      00206E 08               [12] 4092 	inc	r0
      00206F 86 83            [24] 4093 	mov	dph,@r0
      002071 08               [12] 4094 	inc	r0
      002072 86 F0            [24] 4095 	mov	b,@r0
      002074 08               [12] 4096 	inc	r0
      002075 E6               [12] 4097 	mov	a,@r0
      002076 12 3B 2F         [24] 4098 	lcall	__mullong
      002079 AC 82            [24] 4099 	mov	r4,dpl
      00207B AD 83            [24] 4100 	mov	r5,dph
      00207D AE F0            [24] 4101 	mov	r6,b
      00207F FF               [12] 4102 	mov	r7,a
      002080 E5 81            [12] 4103 	mov	a,sp
      002082 24 FC            [12] 4104 	add	a,#0xfc
      002084 F5 81            [12] 4105 	mov	sp,a
      002086 E5 08            [12] 4106 	mov	a,_bp
      002088 24 13            [12] 4107 	add	a,#0x13
      00208A F8               [12] 4108 	mov	r0,a
      00208B A6 04            [24] 4109 	mov	@r0,ar4
      00208D 08               [12] 4110 	inc	r0
      00208E A6 05            [24] 4111 	mov	@r0,ar5
      002090 08               [12] 4112 	inc	r0
      002091 A6 06            [24] 4113 	mov	@r0,ar6
      002093 08               [12] 4114 	inc	r0
      002094 A6 07            [24] 4115 	mov	@r0,ar7
                                   4116 ;	pff\source\pff.c:856: fs->fatbase = bsect + ld_word(buf+BPB_RsvdSecCnt-13); /* FAT start sector (lba) */
      002096 A8 08            [24] 4117 	mov	r0,_bp
      002098 08               [12] 4118 	inc	r0
      002099 E5 08            [12] 4119 	mov	a,_bp
      00209B 24 05            [12] 4120 	add	a,#0x05
      00209D F9               [12] 4121 	mov	r1,a
      00209E 74 0A            [12] 4122 	mov	a,#0x0a
      0020A0 26               [12] 4123 	add	a,@r0
      0020A1 F7               [12] 4124 	mov	@r1,a
      0020A2 E4               [12] 4125 	clr	a
      0020A3 08               [12] 4126 	inc	r0
      0020A4 36               [12] 4127 	addc	a,@r0
      0020A5 09               [12] 4128 	inc	r1
      0020A6 F7               [12] 4129 	mov	@r1,a
      0020A7 08               [12] 4130 	inc	r0
      0020A8 E6               [12] 4131 	mov	a,@r0
      0020A9 09               [12] 4132 	inc	r1
      0020AA F7               [12] 4133 	mov	@r1,a
      0020AB D0 01            [24] 4134 	pop	ar1
      0020AD E5 08            [12] 4135 	mov	a,_bp
      0020AF 24 04            [12] 4136 	add	a,#0x04
      0020B1 F8               [12] 4137 	mov	r0,a
      0020B2 E9               [12] 4138 	mov	a,r1
      0020B3 04               [12] 4139 	inc	a
      0020B4 F6               [12] 4140 	mov	@r0,a
      0020B5 E5 08            [12] 4141 	mov	a,_bp
      0020B7 24 04            [12] 4142 	add	a,#0x04
      0020B9 F8               [12] 4143 	mov	r0,a
      0020BA 86 02            [24] 4144 	mov	ar2,@r0
      0020BC 7E 00            [12] 4145 	mov	r6,#0x00
      0020BE 7F 40            [12] 4146 	mov	r7,#0x40
      0020C0 8A 82            [24] 4147 	mov	dpl,r2
      0020C2 8E 83            [24] 4148 	mov	dph,r6
      0020C4 8F F0            [24] 4149 	mov	b,r7
      0020C6 C0 01            [24] 4150 	push	ar1
      0020C8 12 0A 53         [24] 4151 	lcall	_ld_word
      0020CB AE 82            [24] 4152 	mov	r6,dpl
      0020CD AF 83            [24] 4153 	mov	r7,dph
      0020CF E4               [12] 4154 	clr	a
      0020D0 FD               [12] 4155 	mov	r5,a
      0020D1 FC               [12] 4156 	mov	r4,a
      0020D2 E5 08            [12] 4157 	mov	a,_bp
      0020D4 24 3B            [12] 4158 	add	a,#0x3b
      0020D6 F8               [12] 4159 	mov	r0,a
      0020D7 EE               [12] 4160 	mov	a,r6
      0020D8 26               [12] 4161 	add	a,@r0
      0020D9 FE               [12] 4162 	mov	r6,a
      0020DA EF               [12] 4163 	mov	a,r7
      0020DB 08               [12] 4164 	inc	r0
      0020DC 36               [12] 4165 	addc	a,@r0
      0020DD FF               [12] 4166 	mov	r7,a
      0020DE ED               [12] 4167 	mov	a,r5
      0020DF 08               [12] 4168 	inc	r0
      0020E0 36               [12] 4169 	addc	a,@r0
      0020E1 FD               [12] 4170 	mov	r5,a
      0020E2 EC               [12] 4171 	mov	a,r4
      0020E3 08               [12] 4172 	inc	r0
      0020E4 36               [12] 4173 	addc	a,@r0
      0020E5 FC               [12] 4174 	mov	r4,a
      0020E6 E5 08            [12] 4175 	mov	a,_bp
      0020E8 24 05            [12] 4176 	add	a,#0x05
      0020EA F8               [12] 4177 	mov	r0,a
      0020EB 86 82            [24] 4178 	mov	dpl,@r0
      0020ED 08               [12] 4179 	inc	r0
      0020EE 86 83            [24] 4180 	mov	dph,@r0
      0020F0 08               [12] 4181 	inc	r0
      0020F1 86 F0            [24] 4182 	mov	b,@r0
      0020F3 EE               [12] 4183 	mov	a,r6
      0020F4 12 38 59         [24] 4184 	lcall	__gptrput
      0020F7 A3               [24] 4185 	inc	dptr
      0020F8 EF               [12] 4186 	mov	a,r7
      0020F9 12 38 59         [24] 4187 	lcall	__gptrput
      0020FC A3               [24] 4188 	inc	dptr
      0020FD ED               [12] 4189 	mov	a,r5
      0020FE 12 38 59         [24] 4190 	lcall	__gptrput
      002101 A3               [24] 4191 	inc	dptr
      002102 EC               [12] 4192 	mov	a,r4
      002103 12 38 59         [24] 4193 	lcall	__gptrput
                                   4194 ;	pff\source\pff.c:857: fs->csize = buf[BPB_SecPerClus-13];					/* Number of sectors per cluster */
      002106 A8 08            [24] 4195 	mov	r0,_bp
      002108 08               [12] 4196 	inc	r0
      002109 E5 08            [12] 4197 	mov	a,_bp
      00210B 24 0C            [12] 4198 	add	a,#0x0c
      00210D F9               [12] 4199 	mov	r1,a
      00210E 74 02            [12] 4200 	mov	a,#0x02
      002110 26               [12] 4201 	add	a,@r0
      002111 F7               [12] 4202 	mov	@r1,a
      002112 E4               [12] 4203 	clr	a
      002113 08               [12] 4204 	inc	r0
      002114 36               [12] 4205 	addc	a,@r0
      002115 09               [12] 4206 	inc	r1
      002116 F7               [12] 4207 	mov	@r1,a
      002117 08               [12] 4208 	inc	r0
      002118 E6               [12] 4209 	mov	a,@r0
      002119 09               [12] 4210 	inc	r1
      00211A F7               [12] 4211 	mov	@r1,a
      00211B D0 01            [24] 4212 	pop	ar1
      00211D 87 04            [24] 4213 	mov	ar4,@r1
      00211F E5 08            [12] 4214 	mov	a,_bp
      002121 24 0C            [12] 4215 	add	a,#0x0c
      002123 F8               [12] 4216 	mov	r0,a
      002124 86 82            [24] 4217 	mov	dpl,@r0
      002126 08               [12] 4218 	inc	r0
      002127 86 83            [24] 4219 	mov	dph,@r0
      002129 08               [12] 4220 	inc	r0
      00212A 86 F0            [24] 4221 	mov	b,@r0
      00212C EC               [12] 4222 	mov	a,r4
      00212D 12 38 59         [24] 4223 	lcall	__gptrput
                                   4224 ;	pff\source\pff.c:858: fs->n_rootdir = ld_word(buf+BPB_RootEntCnt-13);		/* Nmuber of root directory entries */
      002130 A8 08            [24] 4225 	mov	r0,_bp
      002132 08               [12] 4226 	inc	r0
      002133 C0 01            [24] 4227 	push	ar1
      002135 E5 08            [12] 4228 	mov	a,_bp
      002137 24 09            [12] 4229 	add	a,#0x09
      002139 F9               [12] 4230 	mov	r1,a
      00213A 74 04            [12] 4231 	mov	a,#0x04
      00213C 26               [12] 4232 	add	a,@r0
      00213D F7               [12] 4233 	mov	@r1,a
      00213E E4               [12] 4234 	clr	a
      00213F 08               [12] 4235 	inc	r0
      002140 36               [12] 4236 	addc	a,@r0
      002141 09               [12] 4237 	inc	r1
      002142 F7               [12] 4238 	mov	@r1,a
      002143 08               [12] 4239 	inc	r0
      002144 E6               [12] 4240 	mov	a,@r0
      002145 09               [12] 4241 	inc	r1
      002146 F7               [12] 4242 	mov	@r1,a
      002147 D0 01            [24] 4243 	pop	ar1
      002149 74 04            [12] 4244 	mov	a,#0x04
      00214B 29               [12] 4245 	add	a,r1
      00214C FA               [12] 4246 	mov	r2,a
      00214D 7B 00            [12] 4247 	mov	r3,#0x00
      00214F 7C 40            [12] 4248 	mov	r4,#0x40
      002151 8A 82            [24] 4249 	mov	dpl,r2
      002153 8B 83            [24] 4250 	mov	dph,r3
      002155 8C F0            [24] 4251 	mov	b,r4
      002157 C0 01            [24] 4252 	push	ar1
      002159 12 0A 53         [24] 4253 	lcall	_ld_word
      00215C AB 82            [24] 4254 	mov	r3,dpl
      00215E AC 83            [24] 4255 	mov	r4,dph
      002160 D0 01            [24] 4256 	pop	ar1
      002162 E5 08            [12] 4257 	mov	a,_bp
      002164 24 09            [12] 4258 	add	a,#0x09
      002166 F8               [12] 4259 	mov	r0,a
      002167 86 82            [24] 4260 	mov	dpl,@r0
      002169 08               [12] 4261 	inc	r0
      00216A 86 83            [24] 4262 	mov	dph,@r0
      00216C 08               [12] 4263 	inc	r0
      00216D 86 F0            [24] 4264 	mov	b,@r0
      00216F EB               [12] 4265 	mov	a,r3
      002170 12 38 59         [24] 4266 	lcall	__gptrput
      002173 A3               [24] 4267 	inc	dptr
      002174 EC               [12] 4268 	mov	a,r4
      002175 12 38 59         [24] 4269 	lcall	__gptrput
                                   4270 ;	pff\source\pff.c:859: tsect = ld_word(buf+BPB_TotSec16-13);				/* Number of sectors on the file system */
      002178 74 06            [12] 4271 	mov	a,#0x06
      00217A 29               [12] 4272 	add	a,r1
      00217B FC               [12] 4273 	mov	r4,a
      00217C 7B 00            [12] 4274 	mov	r3,#0x00
      00217E 7A 40            [12] 4275 	mov	r2,#0x40
      002180 8C 82            [24] 4276 	mov	dpl,r4
      002182 8B 83            [24] 4277 	mov	dph,r3
      002184 8A F0            [24] 4278 	mov	b,r2
      002186 C0 01            [24] 4279 	push	ar1
      002188 12 0A 53         [24] 4280 	lcall	_ld_word
      00218B AB 82            [24] 4281 	mov	r3,dpl
      00218D AC 83            [24] 4282 	mov	r4,dph
      00218F D0 01            [24] 4283 	pop	ar1
      002191 8C 02            [24] 4284 	mov	ar2,r4
      002193 E4               [12] 4285 	clr	a
      002194 FC               [12] 4286 	mov	r4,a
      002195 FF               [12] 4287 	mov	r7,a
      002196 E5 08            [12] 4288 	mov	a,_bp
      002198 24 0F            [12] 4289 	add	a,#0x0f
      00219A F8               [12] 4290 	mov	r0,a
      00219B A6 03            [24] 4291 	mov	@r0,ar3
      00219D 08               [12] 4292 	inc	r0
      00219E A6 02            [24] 4293 	mov	@r0,ar2
      0021A0 08               [12] 4294 	inc	r0
      0021A1 A6 04            [24] 4295 	mov	@r0,ar4
      0021A3 08               [12] 4296 	inc	r0
      0021A4 A6 07            [24] 4297 	mov	@r0,ar7
                                   4298 ;	pff\source\pff.c:860: if (!tsect) tsect = ld_dword(buf+BPB_TotSec32-13);
      0021A6 EB               [12] 4299 	mov	a,r3
      0021A7 4A               [12] 4300 	orl	a,r2
      0021A8 4C               [12] 4301 	orl	a,r4
      0021A9 4F               [12] 4302 	orl	a,r7
      0021AA 70 2C            [24] 4303 	jnz	00119$
      0021AC 74 13            [12] 4304 	mov	a,#0x13
      0021AE 29               [12] 4305 	add	a,r1
      0021AF FF               [12] 4306 	mov	r7,a
      0021B0 7E 00            [12] 4307 	mov	r6,#0x00
      0021B2 7D 40            [12] 4308 	mov	r5,#0x40
      0021B4 8F 82            [24] 4309 	mov	dpl,r7
      0021B6 8E 83            [24] 4310 	mov	dph,r6
      0021B8 8D F0            [24] 4311 	mov	b,r5
      0021BA C0 01            [24] 4312 	push	ar1
      0021BC 12 0A 83         [24] 4313 	lcall	_ld_dword
      0021BF AC 82            [24] 4314 	mov	r4,dpl
      0021C1 AD 83            [24] 4315 	mov	r5,dph
      0021C3 AE F0            [24] 4316 	mov	r6,b
      0021C5 FF               [12] 4317 	mov	r7,a
      0021C6 D0 01            [24] 4318 	pop	ar1
      0021C8 E5 08            [12] 4319 	mov	a,_bp
      0021CA 24 0F            [12] 4320 	add	a,#0x0f
      0021CC F8               [12] 4321 	mov	r0,a
      0021CD A6 04            [24] 4322 	mov	@r0,ar4
      0021CF 08               [12] 4323 	inc	r0
      0021D0 A6 05            [24] 4324 	mov	@r0,ar5
      0021D2 08               [12] 4325 	inc	r0
      0021D3 A6 06            [24] 4326 	mov	@r0,ar6
      0021D5 08               [12] 4327 	inc	r0
      0021D6 A6 07            [24] 4328 	mov	@r0,ar7
      0021D8                       4329 00119$:
                                   4330 ;	pff\source\pff.c:862: - ld_word(buf+BPB_RsvdSecCnt-13) - fsize - fs->n_rootdir / 16
      0021D8 C0 01            [24] 4331 	push	ar1
      0021DA E5 08            [12] 4332 	mov	a,_bp
      0021DC 24 04            [12] 4333 	add	a,#0x04
      0021DE F8               [12] 4334 	mov	r0,a
      0021DF 86 07            [24] 4335 	mov	ar7,@r0
      0021E1 7E 00            [12] 4336 	mov	r6,#0x00
      0021E3 7D 40            [12] 4337 	mov	r5,#0x40
      0021E5 8F 82            [24] 4338 	mov	dpl,r7
      0021E7 8E 83            [24] 4339 	mov	dph,r6
      0021E9 8D F0            [24] 4340 	mov	b,r5
      0021EB C0 01            [24] 4341 	push	ar1
      0021ED 12 0A 53         [24] 4342 	lcall	_ld_word
      0021F0 AE 82            [24] 4343 	mov	r6,dpl
      0021F2 AF 83            [24] 4344 	mov	r7,dph
      0021F4 E4               [12] 4345 	clr	a
      0021F5 FD               [12] 4346 	mov	r5,a
      0021F6 FC               [12] 4347 	mov	r4,a
      0021F7 E5 08            [12] 4348 	mov	a,_bp
      0021F9 24 0F            [12] 4349 	add	a,#0x0f
      0021FB F8               [12] 4350 	mov	r0,a
      0021FC E6               [12] 4351 	mov	a,@r0
      0021FD C3               [12] 4352 	clr	c
      0021FE 9E               [12] 4353 	subb	a,r6
      0021FF FE               [12] 4354 	mov	r6,a
      002200 08               [12] 4355 	inc	r0
      002201 E6               [12] 4356 	mov	a,@r0
      002202 9F               [12] 4357 	subb	a,r7
      002203 FF               [12] 4358 	mov	r7,a
      002204 08               [12] 4359 	inc	r0
      002205 E6               [12] 4360 	mov	a,@r0
      002206 9D               [12] 4361 	subb	a,r5
      002207 FD               [12] 4362 	mov	r5,a
      002208 08               [12] 4363 	inc	r0
      002209 E6               [12] 4364 	mov	a,@r0
      00220A 9C               [12] 4365 	subb	a,r4
      00220B FC               [12] 4366 	mov	r4,a
      00220C E5 08            [12] 4367 	mov	a,_bp
      00220E 24 13            [12] 4368 	add	a,#0x13
      002210 F8               [12] 4369 	mov	r0,a
      002211 E5 08            [12] 4370 	mov	a,_bp
      002213 24 0F            [12] 4371 	add	a,#0x0f
      002215 F9               [12] 4372 	mov	r1,a
      002216 EE               [12] 4373 	mov	a,r6
      002217 C3               [12] 4374 	clr	c
      002218 96               [12] 4375 	subb	a,@r0
      002219 F7               [12] 4376 	mov	@r1,a
      00221A EF               [12] 4377 	mov	a,r7
      00221B 08               [12] 4378 	inc	r0
      00221C 96               [12] 4379 	subb	a,@r0
      00221D 09               [12] 4380 	inc	r1
      00221E F7               [12] 4381 	mov	@r1,a
      00221F ED               [12] 4382 	mov	a,r5
      002220 08               [12] 4383 	inc	r0
      002221 96               [12] 4384 	subb	a,@r0
      002222 09               [12] 4385 	inc	r1
      002223 F7               [12] 4386 	mov	@r1,a
      002224 EC               [12] 4387 	mov	a,r4
      002225 08               [12] 4388 	inc	r0
      002226 96               [12] 4389 	subb	a,@r0
      002227 09               [12] 4390 	inc	r1
      002228 F7               [12] 4391 	mov	@r1,a
      002229 E5 08            [12] 4392 	mov	a,_bp
      00222B 24 09            [12] 4393 	add	a,#0x09
      00222D F8               [12] 4394 	mov	r0,a
      00222E 86 82            [24] 4395 	mov	dpl,@r0
      002230 08               [12] 4396 	inc	r0
      002231 86 83            [24] 4397 	mov	dph,@r0
      002233 08               [12] 4398 	inc	r0
      002234 86 F0            [24] 4399 	mov	b,@r0
      002236 12 3A A5         [24] 4400 	lcall	__gptrget
      002239 FA               [12] 4401 	mov	r2,a
      00223A A3               [24] 4402 	inc	dptr
      00223B 12 3A A5         [24] 4403 	lcall	__gptrget
      00223E C4               [12] 4404 	swap	a
      00223F CA               [12] 4405 	xch	a,r2
      002240 C4               [12] 4406 	swap	a
      002241 54 0F            [12] 4407 	anl	a,#0x0f
      002243 6A               [12] 4408 	xrl	a,r2
      002244 CA               [12] 4409 	xch	a,r2
      002245 54 0F            [12] 4410 	anl	a,#0x0f
      002247 CA               [12] 4411 	xch	a,r2
      002248 6A               [12] 4412 	xrl	a,r2
      002249 CA               [12] 4413 	xch	a,r2
      00224A FB               [12] 4414 	mov	r3,a
      00224B E4               [12] 4415 	clr	a
      00224C FE               [12] 4416 	mov	r6,a
      00224D FF               [12] 4417 	mov	r7,a
      00224E E5 08            [12] 4418 	mov	a,_bp
      002250 24 0F            [12] 4419 	add	a,#0x0f
      002252 F8               [12] 4420 	mov	r0,a
      002253 E6               [12] 4421 	mov	a,@r0
      002254 C3               [12] 4422 	clr	c
      002255 9A               [12] 4423 	subb	a,r2
      002256 F6               [12] 4424 	mov	@r0,a
      002257 08               [12] 4425 	inc	r0
      002258 E6               [12] 4426 	mov	a,@r0
      002259 9B               [12] 4427 	subb	a,r3
      00225A F6               [12] 4428 	mov	@r0,a
      00225B 08               [12] 4429 	inc	r0
      00225C E6               [12] 4430 	mov	a,@r0
      00225D 9E               [12] 4431 	subb	a,r6
      00225E F6               [12] 4432 	mov	@r0,a
      00225F 08               [12] 4433 	inc	r0
      002260 E6               [12] 4434 	mov	a,@r0
      002261 9F               [12] 4435 	subb	a,r7
      002262 F6               [12] 4436 	mov	@r0,a
                                   4437 ;	pff\source\pff.c:863: ) / fs->csize + 2;
      002263 E5 08            [12] 4438 	mov	a,_bp
      002265 24 0C            [12] 4439 	add	a,#0x0c
      002267 F8               [12] 4440 	mov	r0,a
      002268 86 82            [24] 4441 	mov	dpl,@r0
      00226A 08               [12] 4442 	inc	r0
      00226B 86 83            [24] 4443 	mov	dph,@r0
      00226D 08               [12] 4444 	inc	r0
      00226E 86 F0            [24] 4445 	mov	b,@r0
      002270 12 3A A5         [24] 4446 	lcall	__gptrget
      002273 FC               [12] 4447 	mov	r4,a
      002274 7D 00            [12] 4448 	mov	r5,#0x00
      002276 7E 00            [12] 4449 	mov	r6,#0x00
      002278 7F 00            [12] 4450 	mov	r7,#0x00
      00227A C0 04            [24] 4451 	push	ar4
      00227C C0 05            [24] 4452 	push	ar5
      00227E C0 06            [24] 4453 	push	ar6
      002280 C0 07            [24] 4454 	push	ar7
      002282 E5 08            [12] 4455 	mov	a,_bp
      002284 24 0F            [12] 4456 	add	a,#0x0f
      002286 F8               [12] 4457 	mov	r0,a
      002287 86 82            [24] 4458 	mov	dpl,@r0
      002289 08               [12] 4459 	inc	r0
      00228A 86 83            [24] 4460 	mov	dph,@r0
      00228C 08               [12] 4461 	inc	r0
      00228D 86 F0            [24] 4462 	mov	b,@r0
      00228F 08               [12] 4463 	inc	r0
      002290 E6               [12] 4464 	mov	a,@r0
      002291 12 3A 1B         [24] 4465 	lcall	__divulong
      002294 AC 82            [24] 4466 	mov	r4,dpl
      002296 AD 83            [24] 4467 	mov	r5,dph
      002298 AE F0            [24] 4468 	mov	r6,b
      00229A FF               [12] 4469 	mov	r7,a
      00229B E5 81            [12] 4470 	mov	a,sp
      00229D 24 FC            [12] 4471 	add	a,#0xfc
      00229F F5 81            [12] 4472 	mov	sp,a
      0022A1 D0 01            [24] 4473 	pop	ar1
      0022A3 E5 08            [12] 4474 	mov	a,_bp
      0022A5 24 3F            [12] 4475 	add	a,#0x3f
      0022A7 F8               [12] 4476 	mov	r0,a
      0022A8 74 02            [12] 4477 	mov	a,#0x02
      0022AA 2C               [12] 4478 	add	a,r4
      0022AB F6               [12] 4479 	mov	@r0,a
      0022AC E4               [12] 4480 	clr	a
      0022AD 3D               [12] 4481 	addc	a,r5
      0022AE 08               [12] 4482 	inc	r0
      0022AF F6               [12] 4483 	mov	@r0,a
      0022B0 E4               [12] 4484 	clr	a
      0022B1 3E               [12] 4485 	addc	a,r6
      0022B2 08               [12] 4486 	inc	r0
      0022B3 F6               [12] 4487 	mov	@r0,a
      0022B4 E4               [12] 4488 	clr	a
      0022B5 3F               [12] 4489 	addc	a,r7
      0022B6 08               [12] 4490 	inc	r0
      0022B7 F6               [12] 4491 	mov	@r0,a
                                   4492 ;	pff\source\pff.c:864: fs->n_fatent = (CLUST)mclst;
      0022B8 A8 08            [24] 4493 	mov	r0,_bp
      0022BA 08               [12] 4494 	inc	r0
      0022BB 74 06            [12] 4495 	mov	a,#0x06
      0022BD 26               [12] 4496 	add	a,@r0
      0022BE FA               [12] 4497 	mov	r2,a
      0022BF E4               [12] 4498 	clr	a
      0022C0 08               [12] 4499 	inc	r0
      0022C1 36               [12] 4500 	addc	a,@r0
      0022C2 FB               [12] 4501 	mov	r3,a
      0022C3 08               [12] 4502 	inc	r0
      0022C4 86 07            [24] 4503 	mov	ar7,@r0
      0022C6 8A 82            [24] 4504 	mov	dpl,r2
      0022C8 8B 83            [24] 4505 	mov	dph,r3
      0022CA 8F F0            [24] 4506 	mov	b,r7
      0022CC E5 08            [12] 4507 	mov	a,_bp
      0022CE 24 3F            [12] 4508 	add	a,#0x3f
      0022D0 F8               [12] 4509 	mov	r0,a
      0022D1 E6               [12] 4510 	mov	a,@r0
      0022D2 12 38 59         [24] 4511 	lcall	__gptrput
      0022D5 A3               [24] 4512 	inc	dptr
      0022D6 08               [12] 4513 	inc	r0
      0022D7 E6               [12] 4514 	mov	a,@r0
      0022D8 12 38 59         [24] 4515 	lcall	__gptrput
      0022DB A3               [24] 4516 	inc	dptr
      0022DC 08               [12] 4517 	inc	r0
      0022DD E6               [12] 4518 	mov	a,@r0
      0022DE 12 38 59         [24] 4519 	lcall	__gptrput
      0022E1 A3               [24] 4520 	inc	dptr
      0022E2 08               [12] 4521 	inc	r0
      0022E3 E6               [12] 4522 	mov	a,@r0
      0022E4 12 38 59         [24] 4523 	lcall	__gptrput
                                   4524 ;	pff\source\pff.c:866: fmt = 0;							/* Determine the FAT sub type */
      0022E7 7F 00            [12] 4525 	mov	r7,#0x00
                                   4526 ;	pff\source\pff.c:869: if (PF_FS_FAT32 && mclst >= 0xFFF7) fmt = FS_FAT32;
      0022E9 E5 08            [12] 4527 	mov	a,_bp
      0022EB 24 3F            [12] 4528 	add	a,#0x3f
      0022ED F8               [12] 4529 	mov	r0,a
      0022EE C3               [12] 4530 	clr	c
      0022EF E6               [12] 4531 	mov	a,@r0
      0022F0 94 F7            [12] 4532 	subb	a,#0xf7
      0022F2 08               [12] 4533 	inc	r0
      0022F3 E6               [12] 4534 	mov	a,@r0
      0022F4 94 FF            [12] 4535 	subb	a,#0xff
      0022F6 08               [12] 4536 	inc	r0
      0022F7 E6               [12] 4537 	mov	a,@r0
      0022F8 94 00            [12] 4538 	subb	a,#0x00
      0022FA 08               [12] 4539 	inc	r0
      0022FB E6               [12] 4540 	mov	a,@r0
      0022FC 94 00            [12] 4541 	subb	a,#0x00
      0022FE D0 01            [24] 4542 	pop	ar1
      002300 40 02            [24] 4543 	jc	00128$
      002302 7F 03            [12] 4544 	mov	r7,#0x03
      002304                       4545 00128$:
                                   4546 ;	pff\source\pff.c:870: if (!fmt) return FR_NO_FILESYSTEM;
      002304 EF               [12] 4547 	mov	a,r7
      002305 70 06            [24] 4548 	jnz	00131$
      002307 75 82 06         [24] 4549 	mov	dpl,#0x06
      00230A 02 24 42         [24] 4550 	ljmp	00137$
      00230D                       4551 00131$:
                                   4552 ;	pff\source\pff.c:871: fs->fs_type = fmt;
      00230D A8 08            [24] 4553 	mov	r0,_bp
      00230F 08               [12] 4554 	inc	r0
      002310 86 82            [24] 4555 	mov	dpl,@r0
      002312 08               [12] 4556 	inc	r0
      002313 86 83            [24] 4557 	mov	dph,@r0
      002315 08               [12] 4558 	inc	r0
      002316 86 F0            [24] 4559 	mov	b,@r0
      002318 EF               [12] 4560 	mov	a,r7
      002319 12 38 59         [24] 4561 	lcall	__gptrput
                                   4562 ;	pff\source\pff.c:874: fs->dirbase = ld_dword(buf+(BPB_RootClus-13));	/* Root directory start cluster */
      00231C A8 08            [24] 4563 	mov	r0,_bp
      00231E 08               [12] 4564 	inc	r0
      00231F C0 01            [24] 4565 	push	ar1
      002321 E5 08            [12] 4566 	mov	a,_bp
      002323 24 0F            [12] 4567 	add	a,#0x0f
      002325 F9               [12] 4568 	mov	r1,a
      002326 74 0E            [12] 4569 	mov	a,#0x0e
      002328 26               [12] 4570 	add	a,@r0
      002329 F7               [12] 4571 	mov	@r1,a
      00232A E4               [12] 4572 	clr	a
      00232B 08               [12] 4573 	inc	r0
      00232C 36               [12] 4574 	addc	a,@r0
      00232D 09               [12] 4575 	inc	r1
      00232E F7               [12] 4576 	mov	@r1,a
      00232F 08               [12] 4577 	inc	r0
      002330 E6               [12] 4578 	mov	a,@r0
      002331 09               [12] 4579 	inc	r1
      002332 F7               [12] 4580 	mov	@r1,a
      002333 D0 01            [24] 4581 	pop	ar1
      002335 74 1F            [12] 4582 	mov	a,#0x1f
      002337 29               [12] 4583 	add	a,r1
      002338 FC               [12] 4584 	mov	r4,a
      002339 7B 00            [12] 4585 	mov	r3,#0x00
      00233B 7A 40            [12] 4586 	mov	r2,#0x40
      00233D 8C 82            [24] 4587 	mov	dpl,r4
      00233F 8B 83            [24] 4588 	mov	dph,r3
      002341 8A F0            [24] 4589 	mov	b,r2
      002343 12 0A 83         [24] 4590 	lcall	_ld_dword
      002346 AA 82            [24] 4591 	mov	r2,dpl
      002348 AB 83            [24] 4592 	mov	r3,dph
      00234A AC F0            [24] 4593 	mov	r4,b
      00234C FF               [12] 4594 	mov	r7,a
      00234D E5 08            [12] 4595 	mov	a,_bp
      00234F 24 0F            [12] 4596 	add	a,#0x0f
      002351 F8               [12] 4597 	mov	r0,a
      002352 86 82            [24] 4598 	mov	dpl,@r0
      002354 08               [12] 4599 	inc	r0
      002355 86 83            [24] 4600 	mov	dph,@r0
      002357 08               [12] 4601 	inc	r0
      002358 86 F0            [24] 4602 	mov	b,@r0
      00235A EA               [12] 4603 	mov	a,r2
      00235B 12 38 59         [24] 4604 	lcall	__gptrput
      00235E A3               [24] 4605 	inc	dptr
      00235F EB               [12] 4606 	mov	a,r3
      002360 12 38 59         [24] 4607 	lcall	__gptrput
      002363 A3               [24] 4608 	inc	dptr
      002364 EC               [12] 4609 	mov	a,r4
      002365 12 38 59         [24] 4610 	lcall	__gptrput
      002368 A3               [24] 4611 	inc	dptr
      002369 EF               [12] 4612 	mov	a,r7
      00236A 12 38 59         [24] 4613 	lcall	__gptrput
                                   4614 ;	pff\source\pff.c:878: fs->database = fs->fatbase + fsize + fs->n_rootdir / 16;	/* Data start sector (lba) */
      00236D A8 08            [24] 4615 	mov	r0,_bp
      00236F 08               [12] 4616 	inc	r0
      002370 E5 08            [12] 4617 	mov	a,_bp
      002372 24 0F            [12] 4618 	add	a,#0x0f
      002374 F9               [12] 4619 	mov	r1,a
      002375 74 12            [12] 4620 	mov	a,#0x12
      002377 26               [12] 4621 	add	a,@r0
      002378 F7               [12] 4622 	mov	@r1,a
      002379 E4               [12] 4623 	clr	a
      00237A 08               [12] 4624 	inc	r0
      00237B 36               [12] 4625 	addc	a,@r0
      00237C 09               [12] 4626 	inc	r1
      00237D F7               [12] 4627 	mov	@r1,a
      00237E 08               [12] 4628 	inc	r0
      00237F E6               [12] 4629 	mov	a,@r0
      002380 09               [12] 4630 	inc	r1
      002381 F7               [12] 4631 	mov	@r1,a
      002382 E5 08            [12] 4632 	mov	a,_bp
      002384 24 05            [12] 4633 	add	a,#0x05
      002386 F8               [12] 4634 	mov	r0,a
      002387 86 82            [24] 4635 	mov	dpl,@r0
      002389 08               [12] 4636 	inc	r0
      00238A 86 83            [24] 4637 	mov	dph,@r0
      00238C 08               [12] 4638 	inc	r0
      00238D 86 F0            [24] 4639 	mov	b,@r0
      00238F 12 3A A5         [24] 4640 	lcall	__gptrget
      002392 FA               [12] 4641 	mov	r2,a
      002393 A3               [24] 4642 	inc	dptr
      002394 12 3A A5         [24] 4643 	lcall	__gptrget
      002397 FB               [12] 4644 	mov	r3,a
      002398 A3               [24] 4645 	inc	dptr
      002399 12 3A A5         [24] 4646 	lcall	__gptrget
      00239C FC               [12] 4647 	mov	r4,a
      00239D A3               [24] 4648 	inc	dptr
      00239E 12 3A A5         [24] 4649 	lcall	__gptrget
      0023A1 FF               [12] 4650 	mov	r7,a
      0023A2 E5 08            [12] 4651 	mov	a,_bp
      0023A4 24 13            [12] 4652 	add	a,#0x13
      0023A6 F8               [12] 4653 	mov	r0,a
      0023A7 E5 08            [12] 4654 	mov	a,_bp
      0023A9 24 05            [12] 4655 	add	a,#0x05
      0023AB F9               [12] 4656 	mov	r1,a
      0023AC E6               [12] 4657 	mov	a,@r0
      0023AD 2A               [12] 4658 	add	a,r2
      0023AE F7               [12] 4659 	mov	@r1,a
      0023AF 08               [12] 4660 	inc	r0
      0023B0 E6               [12] 4661 	mov	a,@r0
      0023B1 3B               [12] 4662 	addc	a,r3
      0023B2 09               [12] 4663 	inc	r1
      0023B3 F7               [12] 4664 	mov	@r1,a
      0023B4 08               [12] 4665 	inc	r0
      0023B5 E6               [12] 4666 	mov	a,@r0
      0023B6 3C               [12] 4667 	addc	a,r4
      0023B7 09               [12] 4668 	inc	r1
      0023B8 F7               [12] 4669 	mov	@r1,a
      0023B9 08               [12] 4670 	inc	r0
      0023BA E6               [12] 4671 	mov	a,@r0
      0023BB 3F               [12] 4672 	addc	a,r7
      0023BC 09               [12] 4673 	inc	r1
      0023BD F7               [12] 4674 	mov	@r1,a
      0023BE E5 08            [12] 4675 	mov	a,_bp
      0023C0 24 09            [12] 4676 	add	a,#0x09
      0023C2 F8               [12] 4677 	mov	r0,a
      0023C3 86 82            [24] 4678 	mov	dpl,@r0
      0023C5 08               [12] 4679 	inc	r0
      0023C6 86 83            [24] 4680 	mov	dph,@r0
      0023C8 08               [12] 4681 	inc	r0
      0023C9 86 F0            [24] 4682 	mov	b,@r0
      0023CB 12 3A A5         [24] 4683 	lcall	__gptrget
      0023CE FD               [12] 4684 	mov	r5,a
      0023CF A3               [24] 4685 	inc	dptr
      0023D0 12 3A A5         [24] 4686 	lcall	__gptrget
      0023D3 C4               [12] 4687 	swap	a
      0023D4 CD               [12] 4688 	xch	a,r5
      0023D5 C4               [12] 4689 	swap	a
      0023D6 54 0F            [12] 4690 	anl	a,#0x0f
      0023D8 6D               [12] 4691 	xrl	a,r5
      0023D9 CD               [12] 4692 	xch	a,r5
      0023DA 54 0F            [12] 4693 	anl	a,#0x0f
      0023DC CD               [12] 4694 	xch	a,r5
      0023DD 6D               [12] 4695 	xrl	a,r5
      0023DE CD               [12] 4696 	xch	a,r5
      0023DF FE               [12] 4697 	mov	r6,a
      0023E0 E4               [12] 4698 	clr	a
      0023E1 FC               [12] 4699 	mov	r4,a
      0023E2 FF               [12] 4700 	mov	r7,a
      0023E3 E5 08            [12] 4701 	mov	a,_bp
      0023E5 24 05            [12] 4702 	add	a,#0x05
      0023E7 F8               [12] 4703 	mov	r0,a
      0023E8 ED               [12] 4704 	mov	a,r5
      0023E9 26               [12] 4705 	add	a,@r0
      0023EA FD               [12] 4706 	mov	r5,a
      0023EB EE               [12] 4707 	mov	a,r6
      0023EC 08               [12] 4708 	inc	r0
      0023ED 36               [12] 4709 	addc	a,@r0
      0023EE FE               [12] 4710 	mov	r6,a
      0023EF EC               [12] 4711 	mov	a,r4
      0023F0 08               [12] 4712 	inc	r0
      0023F1 36               [12] 4713 	addc	a,@r0
      0023F2 FC               [12] 4714 	mov	r4,a
      0023F3 EF               [12] 4715 	mov	a,r7
      0023F4 08               [12] 4716 	inc	r0
      0023F5 36               [12] 4717 	addc	a,@r0
      0023F6 FF               [12] 4718 	mov	r7,a
      0023F7 E5 08            [12] 4719 	mov	a,_bp
      0023F9 24 0F            [12] 4720 	add	a,#0x0f
      0023FB F8               [12] 4721 	mov	r0,a
      0023FC 86 82            [24] 4722 	mov	dpl,@r0
      0023FE 08               [12] 4723 	inc	r0
      0023FF 86 83            [24] 4724 	mov	dph,@r0
      002401 08               [12] 4725 	inc	r0
      002402 86 F0            [24] 4726 	mov	b,@r0
      002404 ED               [12] 4727 	mov	a,r5
      002405 12 38 59         [24] 4728 	lcall	__gptrput
      002408 A3               [24] 4729 	inc	dptr
      002409 EE               [12] 4730 	mov	a,r6
      00240A 12 38 59         [24] 4731 	lcall	__gptrput
      00240D A3               [24] 4732 	inc	dptr
      00240E EC               [12] 4733 	mov	a,r4
      00240F 12 38 59         [24] 4734 	lcall	__gptrput
      002412 A3               [24] 4735 	inc	dptr
      002413 EF               [12] 4736 	mov	a,r7
      002414 12 38 59         [24] 4737 	lcall	__gptrput
                                   4738 ;	pff\source\pff.c:880: fs->flag = 0;
      002417 A8 08            [24] 4739 	mov	r0,_bp
      002419 08               [12] 4740 	inc	r0
      00241A 74 01            [12] 4741 	mov	a,#0x01
      00241C 26               [12] 4742 	add	a,@r0
      00241D FD               [12] 4743 	mov	r5,a
      00241E E4               [12] 4744 	clr	a
      00241F 08               [12] 4745 	inc	r0
      002420 36               [12] 4746 	addc	a,@r0
      002421 FE               [12] 4747 	mov	r6,a
      002422 08               [12] 4748 	inc	r0
      002423 86 07            [24] 4749 	mov	ar7,@r0
      002425 8D 82            [24] 4750 	mov	dpl,r5
      002427 8E 83            [24] 4751 	mov	dph,r6
      002429 8F F0            [24] 4752 	mov	b,r7
      00242B E4               [12] 4753 	clr	a
      00242C 12 38 59         [24] 4754 	lcall	__gptrput
                                   4755 ;	pff\source\pff.c:881: FatFs = fs;
      00242F A8 08            [24] 4756 	mov	r0,_bp
      002431 08               [12] 4757 	inc	r0
      002432 90 00 2B         [24] 4758 	mov	dptr,#_FatFs
      002435 E6               [12] 4759 	mov	a,@r0
      002436 F0               [24] 4760 	movx	@dptr,a
      002437 08               [12] 4761 	inc	r0
      002438 E6               [12] 4762 	mov	a,@r0
      002439 A3               [24] 4763 	inc	dptr
      00243A F0               [24] 4764 	movx	@dptr,a
      00243B 08               [12] 4765 	inc	r0
      00243C E6               [12] 4766 	mov	a,@r0
      00243D A3               [24] 4767 	inc	dptr
      00243E F0               [24] 4768 	movx	@dptr,a
                                   4769 ;	pff\source\pff.c:883: return FR_OK;
      00243F 75 82 00         [24] 4770 	mov	dpl,#0x00
      002442                       4771 00137$:
                                   4772 ;	pff\source\pff.c:884: }
      002442 85 08 81         [24] 4773 	mov	sp,_bp
      002445 D0 08            [24] 4774 	pop	_bp
      002447 22               [24] 4775 	ret
                                   4776 ;------------------------------------------------------------
                                   4777 ;Allocation info for local variables in function 'pf_open'
                                   4778 ;------------------------------------------------------------
                                   4779 ;path                      Allocated to stack - _bp +1
                                   4780 ;res                       Allocated to registers r6 
                                   4781 ;dj                        Allocated to stack - _bp +7
                                   4782 ;sp                        Allocated to stack - _bp +56
                                   4783 ;dir                       Allocated to stack - _bp +24
                                   4784 ;fs                        Allocated to stack - _bp +68
                                   4785 ;sloc0                     Allocated to stack - _bp +69
                                   4786 ;sloc1                     Allocated to stack - _bp +70
                                   4787 ;sloc2                     Allocated to stack - _bp +4
                                   4788 ;------------------------------------------------------------
                                   4789 ;	pff\source\pff.c:893: FRESULT pf_open (
                                   4790 ;	-----------------------------------------
                                   4791 ;	 function pf_open
                                   4792 ;	-----------------------------------------
      002448                       4793 _pf_open:
      002448 C0 08            [24] 4794 	push	_bp
      00244A 85 81 08         [24] 4795 	mov	_bp,sp
      00244D C0 82            [24] 4796 	push	dpl
      00244F C0 83            [24] 4797 	push	dph
      002451 C0 F0            [24] 4798 	push	b
      002453 E5 81            [12] 4799 	mov	a,sp
      002455 24 43            [12] 4800 	add	a,#0x43
      002457 F5 81            [12] 4801 	mov	sp,a
                                   4802 ;	pff\source\pff.c:900: FATFS *fs = FatFs;
      002459 90 00 2B         [24] 4803 	mov	dptr,#_FatFs
      00245C E0               [24] 4804 	movx	a,@dptr
      00245D FA               [12] 4805 	mov	r2,a
      00245E A3               [24] 4806 	inc	dptr
      00245F E0               [24] 4807 	movx	a,@dptr
      002460 FB               [12] 4808 	mov	r3,a
      002461 A3               [24] 4809 	inc	dptr
      002462 E0               [24] 4810 	movx	a,@dptr
      002463 FC               [12] 4811 	mov	r4,a
      002464 E5 08            [12] 4812 	mov	a,_bp
      002466 24 44            [12] 4813 	add	a,#0x44
      002468 F8               [12] 4814 	mov	r0,a
      002469 A6 02            [24] 4815 	mov	@r0,ar2
      00246B 08               [12] 4816 	inc	r0
      00246C A6 03            [24] 4817 	mov	@r0,ar3
      00246E 08               [12] 4818 	inc	r0
      00246F A6 04            [24] 4819 	mov	@r0,ar4
                                   4820 ;	pff\source\pff.c:903: if (!fs) return FR_NOT_ENABLED;		/* Check file system */
      002471 E5 08            [12] 4821 	mov	a,_bp
      002473 24 44            [12] 4822 	add	a,#0x44
      002475 F8               [12] 4823 	mov	r0,a
      002476 E6               [12] 4824 	mov	a,@r0
      002477 08               [12] 4825 	inc	r0
      002478 46               [12] 4826 	orl	a,@r0
      002479 70 06            [24] 4827 	jnz	00102$
      00247B 75 82 05         [24] 4828 	mov	dpl,#0x05
      00247E 02 25 EE         [24] 4829 	ljmp	00108$
      002481                       4830 00102$:
                                   4831 ;	pff\source\pff.c:905: fs->flag = 0;
      002481 E5 08            [12] 4832 	mov	a,_bp
      002483 24 44            [12] 4833 	add	a,#0x44
      002485 F8               [12] 4834 	mov	r0,a
      002486 74 01            [12] 4835 	mov	a,#0x01
      002488 26               [12] 4836 	add	a,@r0
      002489 FD               [12] 4837 	mov	r5,a
      00248A E4               [12] 4838 	clr	a
      00248B 08               [12] 4839 	inc	r0
      00248C 36               [12] 4840 	addc	a,@r0
      00248D FE               [12] 4841 	mov	r6,a
      00248E 08               [12] 4842 	inc	r0
      00248F 86 07            [24] 4843 	mov	ar7,@r0
      002491 8D 82            [24] 4844 	mov	dpl,r5
      002493 8E 83            [24] 4845 	mov	dph,r6
      002495 8F F0            [24] 4846 	mov	b,r7
      002497 E4               [12] 4847 	clr	a
      002498 12 38 59         [24] 4848 	lcall	__gptrput
                                   4849 ;	pff\source\pff.c:906: dj.fn = sp;
      00249B E5 08            [12] 4850 	mov	a,_bp
      00249D 24 07            [12] 4851 	add	a,#0x07
      00249F FF               [12] 4852 	mov	r7,a
      0024A0 24 02            [12] 4853 	add	a,#0x02
      0024A2 F9               [12] 4854 	mov	r1,a
      0024A3 E5 08            [12] 4855 	mov	a,_bp
      0024A5 24 38            [12] 4856 	add	a,#0x38
      0024A7 FC               [12] 4857 	mov	r4,a
      0024A8 7D 00            [12] 4858 	mov	r5,#0x00
      0024AA 7E 40            [12] 4859 	mov	r6,#0x40
      0024AC A7 04            [24] 4860 	mov	@r1,ar4
      0024AE 09               [12] 4861 	inc	r1
      0024AF A7 05            [24] 4862 	mov	@r1,ar5
      0024B1 09               [12] 4863 	inc	r1
      0024B2 A7 06            [24] 4864 	mov	@r1,ar6
                                   4865 ;	pff\source\pff.c:907: res = follow_path(&dj, dir, path);	/* Follow the file path */
      0024B4 E5 08            [12] 4866 	mov	a,_bp
      0024B6 24 18            [12] 4867 	add	a,#0x18
      0024B8 F8               [12] 4868 	mov	r0,a
      0024B9 FC               [12] 4869 	mov	r4,a
      0024BA 7D 00            [12] 4870 	mov	r5,#0x00
      0024BC 7E 40            [12] 4871 	mov	r6,#0x40
      0024BE 7B 00            [12] 4872 	mov	r3,#0x00
      0024C0 7A 40            [12] 4873 	mov	r2,#0x40
      0024C2 C0 00            [24] 4874 	push	ar0
      0024C4 A9 08            [24] 4875 	mov	r1,_bp
      0024C6 09               [12] 4876 	inc	r1
      0024C7 E7               [12] 4877 	mov	a,@r1
      0024C8 C0 E0            [24] 4878 	push	acc
      0024CA 09               [12] 4879 	inc	r1
      0024CB E7               [12] 4880 	mov	a,@r1
      0024CC C0 E0            [24] 4881 	push	acc
      0024CE 09               [12] 4882 	inc	r1
      0024CF E7               [12] 4883 	mov	a,@r1
      0024D0 C0 E0            [24] 4884 	push	acc
      0024D2 C0 04            [24] 4885 	push	ar4
      0024D4 C0 05            [24] 4886 	push	ar5
      0024D6 C0 06            [24] 4887 	push	ar6
      0024D8 8F 82            [24] 4888 	mov	dpl,r7
      0024DA 8B 83            [24] 4889 	mov	dph,r3
      0024DC 8A F0            [24] 4890 	mov	b,r2
      0024DE 12 1B 6E         [24] 4891 	lcall	_follow_path
      0024E1 AF 82            [24] 4892 	mov	r7,dpl
      0024E3 E5 81            [12] 4893 	mov	a,sp
      0024E5 24 FA            [12] 4894 	add	a,#0xfa
      0024E7 F5 81            [12] 4895 	mov	sp,a
      0024E9 D0 00            [24] 4896 	pop	ar0
                                   4897 ;	pff\source\pff.c:908: if (res != FR_OK) return res;		/* Follow failed */
      0024EB EF               [12] 4898 	mov	a,r7
      0024EC FE               [12] 4899 	mov	r6,a
      0024ED 60 05            [24] 4900 	jz	00104$
      0024EF 8E 82            [24] 4901 	mov	dpl,r6
      0024F1 02 25 EE         [24] 4902 	ljmp	00108$
      0024F4                       4903 00104$:
                                   4904 ;	pff\source\pff.c:909: if (!dir[0] || (dir[DIR_Attr] & AM_DIR)) return FR_NO_FILE;	/* It is a directory */
      0024F4 E6               [12] 4905 	mov	a,@r0
      0024F5 60 09            [24] 4906 	jz	00105$
      0024F7 74 0B            [12] 4907 	mov	a,#0x0b
      0024F9 28               [12] 4908 	add	a,r0
      0024FA F9               [12] 4909 	mov	r1,a
      0024FB E7               [12] 4910 	mov	a,@r1
      0024FC FF               [12] 4911 	mov	r7,a
      0024FD 30 E4 06         [24] 4912 	jnb	acc.4,00106$
      002500                       4913 00105$:
      002500 75 82 03         [24] 4914 	mov	dpl,#0x03
      002503 02 25 EE         [24] 4915 	ljmp	00108$
      002506                       4916 00106$:
                                   4917 ;	pff\source\pff.c:911: fs->org_clust = get_clust(dir);		/* File start cluster */
      002506 E5 08            [12] 4918 	mov	a,_bp
      002508 24 44            [12] 4919 	add	a,#0x44
      00250A F9               [12] 4920 	mov	r1,a
      00250B C0 00            [24] 4921 	push	ar0
      00250D E5 08            [12] 4922 	mov	a,_bp
      00250F 24 04            [12] 4923 	add	a,#0x04
      002511 F8               [12] 4924 	mov	r0,a
      002512 74 1E            [12] 4925 	mov	a,#0x1e
      002514 27               [12] 4926 	add	a,@r1
      002515 F6               [12] 4927 	mov	@r0,a
      002516 E4               [12] 4928 	clr	a
      002517 09               [12] 4929 	inc	r1
      002518 37               [12] 4930 	addc	a,@r1
      002519 08               [12] 4931 	inc	r0
      00251A F6               [12] 4932 	mov	@r0,a
      00251B 09               [12] 4933 	inc	r1
      00251C E7               [12] 4934 	mov	a,@r1
      00251D 08               [12] 4935 	inc	r0
      00251E F6               [12] 4936 	mov	@r0,a
      00251F D0 00            [24] 4937 	pop	ar0
      002521 88 04            [24] 4938 	mov	ar4,r0
      002523 7B 00            [12] 4939 	mov	r3,#0x00
      002525 7A 40            [12] 4940 	mov	r2,#0x40
      002527 8C 82            [24] 4941 	mov	dpl,r4
      002529 8B 83            [24] 4942 	mov	dph,r3
      00252B 8A F0            [24] 4943 	mov	b,r2
      00252D C0 00            [24] 4944 	push	ar0
      00252F 12 0F 4E         [24] 4945 	lcall	_get_clust
      002532 AA 82            [24] 4946 	mov	r2,dpl
      002534 AB 83            [24] 4947 	mov	r3,dph
      002536 AC F0            [24] 4948 	mov	r4,b
      002538 FF               [12] 4949 	mov	r7,a
      002539 E5 08            [12] 4950 	mov	a,_bp
      00253B 24 04            [12] 4951 	add	a,#0x04
      00253D F9               [12] 4952 	mov	r1,a
      00253E 87 82            [24] 4953 	mov	dpl,@r1
      002540 09               [12] 4954 	inc	r1
      002541 87 83            [24] 4955 	mov	dph,@r1
      002543 09               [12] 4956 	inc	r1
      002544 87 F0            [24] 4957 	mov	b,@r1
      002546 EA               [12] 4958 	mov	a,r2
      002547 12 38 59         [24] 4959 	lcall	__gptrput
      00254A A3               [24] 4960 	inc	dptr
      00254B EB               [12] 4961 	mov	a,r3
      00254C 12 38 59         [24] 4962 	lcall	__gptrput
      00254F A3               [24] 4963 	inc	dptr
      002550 EC               [12] 4964 	mov	a,r4
      002551 12 38 59         [24] 4965 	lcall	__gptrput
      002554 A3               [24] 4966 	inc	dptr
      002555 EF               [12] 4967 	mov	a,r7
      002556 12 38 59         [24] 4968 	lcall	__gptrput
                                   4969 ;	pff\source\pff.c:912: fs->fsize = ld_dword(dir+DIR_FileSize);	/* File size */
      002559 E5 08            [12] 4970 	mov	a,_bp
      00255B 24 44            [12] 4971 	add	a,#0x44
      00255D F9               [12] 4972 	mov	r1,a
      00255E E5 08            [12] 4973 	mov	a,_bp
      002560 24 04            [12] 4974 	add	a,#0x04
      002562 F8               [12] 4975 	mov	r0,a
      002563 74 1A            [12] 4976 	mov	a,#0x1a
      002565 27               [12] 4977 	add	a,@r1
      002566 F6               [12] 4978 	mov	@r0,a
      002567 E4               [12] 4979 	clr	a
      002568 09               [12] 4980 	inc	r1
      002569 37               [12] 4981 	addc	a,@r1
      00256A 08               [12] 4982 	inc	r0
      00256B F6               [12] 4983 	mov	@r0,a
      00256C 09               [12] 4984 	inc	r1
      00256D E7               [12] 4985 	mov	a,@r1
      00256E 08               [12] 4986 	inc	r0
      00256F F6               [12] 4987 	mov	@r0,a
      002570 D0 00            [24] 4988 	pop	ar0
      002572 74 1C            [12] 4989 	mov	a,#0x1c
      002574 28               [12] 4990 	add	a,r0
      002575 FC               [12] 4991 	mov	r4,a
      002576 7B 00            [12] 4992 	mov	r3,#0x00
      002578 7A 40            [12] 4993 	mov	r2,#0x40
      00257A 8C 82            [24] 4994 	mov	dpl,r4
      00257C 8B 83            [24] 4995 	mov	dph,r3
      00257E 8A F0            [24] 4996 	mov	b,r2
      002580 12 0A 83         [24] 4997 	lcall	_ld_dword
      002583 AA 82            [24] 4998 	mov	r2,dpl
      002585 AB 83            [24] 4999 	mov	r3,dph
      002587 AC F0            [24] 5000 	mov	r4,b
      002589 FF               [12] 5001 	mov	r7,a
      00258A E5 08            [12] 5002 	mov	a,_bp
      00258C 24 04            [12] 5003 	add	a,#0x04
      00258E F8               [12] 5004 	mov	r0,a
      00258F 86 82            [24] 5005 	mov	dpl,@r0
      002591 08               [12] 5006 	inc	r0
      002592 86 83            [24] 5007 	mov	dph,@r0
      002594 08               [12] 5008 	inc	r0
      002595 86 F0            [24] 5009 	mov	b,@r0
      002597 EA               [12] 5010 	mov	a,r2
      002598 12 38 59         [24] 5011 	lcall	__gptrput
      00259B A3               [24] 5012 	inc	dptr
      00259C EB               [12] 5013 	mov	a,r3
      00259D 12 38 59         [24] 5014 	lcall	__gptrput
      0025A0 A3               [24] 5015 	inc	dptr
      0025A1 EC               [12] 5016 	mov	a,r4
      0025A2 12 38 59         [24] 5017 	lcall	__gptrput
      0025A5 A3               [24] 5018 	inc	dptr
      0025A6 EF               [12] 5019 	mov	a,r7
      0025A7 12 38 59         [24] 5020 	lcall	__gptrput
                                   5021 ;	pff\source\pff.c:913: fs->fptr = 0;						/* File pointer */
      0025AA E5 08            [12] 5022 	mov	a,_bp
      0025AC 24 44            [12] 5023 	add	a,#0x44
      0025AE F8               [12] 5024 	mov	r0,a
      0025AF 74 16            [12] 5025 	mov	a,#0x16
      0025B1 26               [12] 5026 	add	a,@r0
      0025B2 FD               [12] 5027 	mov	r5,a
      0025B3 E4               [12] 5028 	clr	a
      0025B4 08               [12] 5029 	inc	r0
      0025B5 36               [12] 5030 	addc	a,@r0
      0025B6 FE               [12] 5031 	mov	r6,a
      0025B7 08               [12] 5032 	inc	r0
      0025B8 86 07            [24] 5033 	mov	ar7,@r0
      0025BA 8D 82            [24] 5034 	mov	dpl,r5
      0025BC 8E 83            [24] 5035 	mov	dph,r6
      0025BE 8F F0            [24] 5036 	mov	b,r7
      0025C0 E4               [12] 5037 	clr	a
      0025C1 12 38 59         [24] 5038 	lcall	__gptrput
      0025C4 A3               [24] 5039 	inc	dptr
      0025C5 12 38 59         [24] 5040 	lcall	__gptrput
      0025C8 A3               [24] 5041 	inc	dptr
      0025C9 12 38 59         [24] 5042 	lcall	__gptrput
      0025CC A3               [24] 5043 	inc	dptr
      0025CD 12 38 59         [24] 5044 	lcall	__gptrput
                                   5045 ;	pff\source\pff.c:914: fs->flag = FA_OPENED;
      0025D0 E5 08            [12] 5046 	mov	a,_bp
      0025D2 24 44            [12] 5047 	add	a,#0x44
      0025D4 F8               [12] 5048 	mov	r0,a
      0025D5 74 01            [12] 5049 	mov	a,#0x01
      0025D7 26               [12] 5050 	add	a,@r0
      0025D8 FD               [12] 5051 	mov	r5,a
      0025D9 E4               [12] 5052 	clr	a
      0025DA 08               [12] 5053 	inc	r0
      0025DB 36               [12] 5054 	addc	a,@r0
      0025DC FE               [12] 5055 	mov	r6,a
      0025DD 08               [12] 5056 	inc	r0
      0025DE 86 07            [24] 5057 	mov	ar7,@r0
      0025E0 8D 82            [24] 5058 	mov	dpl,r5
      0025E2 8E 83            [24] 5059 	mov	dph,r6
      0025E4 8F F0            [24] 5060 	mov	b,r7
      0025E6 74 01            [12] 5061 	mov	a,#0x01
      0025E8 12 38 59         [24] 5062 	lcall	__gptrput
                                   5063 ;	pff\source\pff.c:916: return FR_OK;
      0025EB 75 82 00         [24] 5064 	mov	dpl,#0x00
      0025EE                       5065 00108$:
                                   5066 ;	pff\source\pff.c:917: }
      0025EE 85 08 81         [24] 5067 	mov	sp,_bp
      0025F1 D0 08            [24] 5068 	pop	_bp
      0025F3 22               [24] 5069 	ret
                                   5070 ;------------------------------------------------------------
                                   5071 ;Allocation info for local variables in function 'pf_read'
                                   5072 ;------------------------------------------------------------
                                   5073 ;btr                       Allocated to stack - _bp -4
                                   5074 ;br                        Allocated to stack - _bp -7
                                   5075 ;buff                      Allocated to registers r5 r6 r7 
                                   5076 ;dr                        Allocated to registers r7 
                                   5077 ;clst                      Allocated to stack - _bp +39
                                   5078 ;sect                      Allocated to stack - _bp +17
                                   5079 ;remain                    Allocated to stack - _bp +32
                                   5080 ;rcnt                      Allocated to stack - _bp +30
                                   5081 ;cs                        Allocated to registers r3 
                                   5082 ;rbuff                     Allocated to stack - _bp +27
                                   5083 ;fs                        Allocated to stack - _bp +36
                                   5084 ;sloc0                     Allocated to stack - _bp +1
                                   5085 ;sloc1                     Allocated to stack - _bp +7
                                   5086 ;sloc2                     Allocated to stack - _bp +10
                                   5087 ;sloc3                     Allocated to stack - _bp +4
                                   5088 ;sloc4                     Allocated to stack - _bp +24
                                   5089 ;sloc5                     Allocated to stack - _bp +17
                                   5090 ;sloc6                     Allocated to stack - _bp +21
                                   5091 ;sloc7                     Allocated to stack - _bp +49
                                   5092 ;sloc8                     Allocated to stack - _bp +14
                                   5093 ;------------------------------------------------------------
                                   5094 ;	pff\source\pff.c:927: FRESULT pf_read (
                                   5095 ;	-----------------------------------------
                                   5096 ;	 function pf_read
                                   5097 ;	-----------------------------------------
      0025F4                       5098 _pf_read:
      0025F4 C0 08            [24] 5099 	push	_bp
      0025F6 E5 81            [12] 5100 	mov	a,sp
      0025F8 F5 08            [12] 5101 	mov	_bp,a
      0025FA 24 2A            [12] 5102 	add	a,#0x2a
      0025FC F5 81            [12] 5103 	mov	sp,a
      0025FE AD 82            [24] 5104 	mov	r5,dpl
      002600 AE 83            [24] 5105 	mov	r6,dph
      002602 AF F0            [24] 5106 	mov	r7,b
                                   5107 ;	pff\source\pff.c:937: BYTE cs, *rbuff = buff;
      002604 E5 08            [12] 5108 	mov	a,_bp
      002606 24 1B            [12] 5109 	add	a,#0x1b
      002608 F8               [12] 5110 	mov	r0,a
      002609 A6 05            [24] 5111 	mov	@r0,ar5
      00260B 08               [12] 5112 	inc	r0
      00260C A6 06            [24] 5113 	mov	@r0,ar6
      00260E 08               [12] 5114 	inc	r0
      00260F A6 07            [24] 5115 	mov	@r0,ar7
                                   5116 ;	pff\source\pff.c:938: FATFS *fs = FatFs;
      002611 90 00 2B         [24] 5117 	mov	dptr,#_FatFs
      002614 E0               [24] 5118 	movx	a,@dptr
      002615 FA               [12] 5119 	mov	r2,a
      002616 A3               [24] 5120 	inc	dptr
      002617 E0               [24] 5121 	movx	a,@dptr
      002618 FB               [12] 5122 	mov	r3,a
      002619 A3               [24] 5123 	inc	dptr
      00261A E0               [24] 5124 	movx	a,@dptr
      00261B FC               [12] 5125 	mov	r4,a
      00261C E5 08            [12] 5126 	mov	a,_bp
      00261E 24 24            [12] 5127 	add	a,#0x24
      002620 F8               [12] 5128 	mov	r0,a
      002621 A6 02            [24] 5129 	mov	@r0,ar2
      002623 08               [12] 5130 	inc	r0
      002624 A6 03            [24] 5131 	mov	@r0,ar3
      002626 08               [12] 5132 	inc	r0
      002627 A6 04            [24] 5133 	mov	@r0,ar4
                                   5134 ;	pff\source\pff.c:941: *br = 0;
      002629 E5 08            [12] 5135 	mov	a,_bp
      00262B 24 F9            [12] 5136 	add	a,#0xf9
      00262D F8               [12] 5137 	mov	r0,a
      00262E E5 08            [12] 5138 	mov	a,_bp
      002630 24 0E            [12] 5139 	add	a,#0x0e
      002632 F9               [12] 5140 	mov	r1,a
      002633 E6               [12] 5141 	mov	a,@r0
      002634 F7               [12] 5142 	mov	@r1,a
      002635 08               [12] 5143 	inc	r0
      002636 E6               [12] 5144 	mov	a,@r0
      002637 09               [12] 5145 	inc	r1
      002638 F7               [12] 5146 	mov	@r1,a
      002639 08               [12] 5147 	inc	r0
      00263A E6               [12] 5148 	mov	a,@r0
      00263B 09               [12] 5149 	inc	r1
      00263C F7               [12] 5150 	mov	@r1,a
      00263D E5 08            [12] 5151 	mov	a,_bp
      00263F 24 0E            [12] 5152 	add	a,#0x0e
      002641 F8               [12] 5153 	mov	r0,a
      002642 86 82            [24] 5154 	mov	dpl,@r0
      002644 08               [12] 5155 	inc	r0
      002645 86 83            [24] 5156 	mov	dph,@r0
      002647 08               [12] 5157 	inc	r0
      002648 86 F0            [24] 5158 	mov	b,@r0
      00264A E4               [12] 5159 	clr	a
      00264B 12 38 59         [24] 5160 	lcall	__gptrput
      00264E A3               [24] 5161 	inc	dptr
      00264F 12 38 59         [24] 5162 	lcall	__gptrput
                                   5163 ;	pff\source\pff.c:942: if (!fs) return FR_NOT_ENABLED;		/* Check file system */
      002652 E5 08            [12] 5164 	mov	a,_bp
      002654 24 24            [12] 5165 	add	a,#0x24
      002656 F8               [12] 5166 	mov	r0,a
      002657 E6               [12] 5167 	mov	a,@r0
      002658 08               [12] 5168 	inc	r0
      002659 46               [12] 5169 	orl	a,@r0
      00265A 70 06            [24] 5170 	jnz	00102$
      00265C 75 82 05         [24] 5171 	mov	dpl,#0x05
      00265F 02 2B 26         [24] 5172 	ljmp	00127$
      002662                       5173 00102$:
                                   5174 ;	pff\source\pff.c:943: if (!(fs->flag & FA_OPENED)) return FR_NOT_OPENED;	/* Check if opened */
      002662 E5 08            [12] 5175 	mov	a,_bp
      002664 24 24            [12] 5176 	add	a,#0x24
      002666 F8               [12] 5177 	mov	r0,a
      002667 A9 08            [24] 5178 	mov	r1,_bp
      002669 09               [12] 5179 	inc	r1
      00266A 74 01            [12] 5180 	mov	a,#0x01
      00266C 26               [12] 5181 	add	a,@r0
      00266D F7               [12] 5182 	mov	@r1,a
      00266E E4               [12] 5183 	clr	a
      00266F 08               [12] 5184 	inc	r0
      002670 36               [12] 5185 	addc	a,@r0
      002671 09               [12] 5186 	inc	r1
      002672 F7               [12] 5187 	mov	@r1,a
      002673 08               [12] 5188 	inc	r0
      002674 E6               [12] 5189 	mov	a,@r0
      002675 09               [12] 5190 	inc	r1
      002676 F7               [12] 5191 	mov	@r1,a
      002677 A8 08            [24] 5192 	mov	r0,_bp
      002679 08               [12] 5193 	inc	r0
      00267A 86 82            [24] 5194 	mov	dpl,@r0
      00267C 08               [12] 5195 	inc	r0
      00267D 86 83            [24] 5196 	mov	dph,@r0
      00267F 08               [12] 5197 	inc	r0
      002680 86 F0            [24] 5198 	mov	b,@r0
      002682 12 3A A5         [24] 5199 	lcall	__gptrget
      002685 FC               [12] 5200 	mov	r4,a
      002686 20 E0 06         [24] 5201 	jb	acc.0,00104$
      002689 75 82 04         [24] 5202 	mov	dpl,#0x04
      00268C 02 2B 26         [24] 5203 	ljmp	00127$
      00268F                       5204 00104$:
                                   5205 ;	pff\source\pff.c:945: remain = fs->fsize - fs->fptr;
      00268F E5 08            [12] 5206 	mov	a,_bp
      002691 24 24            [12] 5207 	add	a,#0x24
      002693 F8               [12] 5208 	mov	r0,a
      002694 74 1A            [12] 5209 	mov	a,#0x1a
      002696 26               [12] 5210 	add	a,@r0
      002697 FA               [12] 5211 	mov	r2,a
      002698 E4               [12] 5212 	clr	a
      002699 08               [12] 5213 	inc	r0
      00269A 36               [12] 5214 	addc	a,@r0
      00269B FB               [12] 5215 	mov	r3,a
      00269C 08               [12] 5216 	inc	r0
      00269D 86 04            [24] 5217 	mov	ar4,@r0
      00269F 8A 82            [24] 5218 	mov	dpl,r2
      0026A1 8B 83            [24] 5219 	mov	dph,r3
      0026A3 8C F0            [24] 5220 	mov	b,r4
      0026A5 E5 08            [12] 5221 	mov	a,_bp
      0026A7 24 0A            [12] 5222 	add	a,#0x0a
      0026A9 F8               [12] 5223 	mov	r0,a
      0026AA 12 3A A5         [24] 5224 	lcall	__gptrget
      0026AD F6               [12] 5225 	mov	@r0,a
      0026AE A3               [24] 5226 	inc	dptr
      0026AF 12 3A A5         [24] 5227 	lcall	__gptrget
      0026B2 08               [12] 5228 	inc	r0
      0026B3 F6               [12] 5229 	mov	@r0,a
      0026B4 A3               [24] 5230 	inc	dptr
      0026B5 12 3A A5         [24] 5231 	lcall	__gptrget
      0026B8 08               [12] 5232 	inc	r0
      0026B9 F6               [12] 5233 	mov	@r0,a
      0026BA A3               [24] 5234 	inc	dptr
      0026BB 12 3A A5         [24] 5235 	lcall	__gptrget
      0026BE 08               [12] 5236 	inc	r0
      0026BF F6               [12] 5237 	mov	@r0,a
      0026C0 E5 08            [12] 5238 	mov	a,_bp
      0026C2 24 24            [12] 5239 	add	a,#0x24
      0026C4 F8               [12] 5240 	mov	r0,a
      0026C5 E5 08            [12] 5241 	mov	a,_bp
      0026C7 24 07            [12] 5242 	add	a,#0x07
      0026C9 F9               [12] 5243 	mov	r1,a
      0026CA 74 16            [12] 5244 	mov	a,#0x16
      0026CC 26               [12] 5245 	add	a,@r0
      0026CD F7               [12] 5246 	mov	@r1,a
      0026CE E4               [12] 5247 	clr	a
      0026CF 08               [12] 5248 	inc	r0
      0026D0 36               [12] 5249 	addc	a,@r0
      0026D1 09               [12] 5250 	inc	r1
      0026D2 F7               [12] 5251 	mov	@r1,a
      0026D3 08               [12] 5252 	inc	r0
      0026D4 E6               [12] 5253 	mov	a,@r0
      0026D5 09               [12] 5254 	inc	r1
      0026D6 F7               [12] 5255 	mov	@r1,a
      0026D7 E5 08            [12] 5256 	mov	a,_bp
      0026D9 24 07            [12] 5257 	add	a,#0x07
      0026DB F8               [12] 5258 	mov	r0,a
      0026DC 86 82            [24] 5259 	mov	dpl,@r0
      0026DE 08               [12] 5260 	inc	r0
      0026DF 86 83            [24] 5261 	mov	dph,@r0
      0026E1 08               [12] 5262 	inc	r0
      0026E2 86 F0            [24] 5263 	mov	b,@r0
      0026E4 12 3A A5         [24] 5264 	lcall	__gptrget
      0026E7 FC               [12] 5265 	mov	r4,a
      0026E8 A3               [24] 5266 	inc	dptr
      0026E9 12 3A A5         [24] 5267 	lcall	__gptrget
      0026EC FD               [12] 5268 	mov	r5,a
      0026ED A3               [24] 5269 	inc	dptr
      0026EE 12 3A A5         [24] 5270 	lcall	__gptrget
      0026F1 FE               [12] 5271 	mov	r6,a
      0026F2 A3               [24] 5272 	inc	dptr
      0026F3 12 3A A5         [24] 5273 	lcall	__gptrget
      0026F6 FF               [12] 5274 	mov	r7,a
      0026F7 E5 08            [12] 5275 	mov	a,_bp
      0026F9 24 0A            [12] 5276 	add	a,#0x0a
      0026FB F8               [12] 5277 	mov	r0,a
      0026FC E6               [12] 5278 	mov	a,@r0
      0026FD C3               [12] 5279 	clr	c
      0026FE 9C               [12] 5280 	subb	a,r4
      0026FF FC               [12] 5281 	mov	r4,a
      002700 08               [12] 5282 	inc	r0
      002701 E6               [12] 5283 	mov	a,@r0
      002702 9D               [12] 5284 	subb	a,r5
      002703 FD               [12] 5285 	mov	r5,a
      002704 08               [12] 5286 	inc	r0
      002705 E6               [12] 5287 	mov	a,@r0
      002706 9E               [12] 5288 	subb	a,r6
      002707 FE               [12] 5289 	mov	r6,a
      002708 08               [12] 5290 	inc	r0
      002709 E6               [12] 5291 	mov	a,@r0
      00270A 9F               [12] 5292 	subb	a,r7
      00270B FF               [12] 5293 	mov	r7,a
      00270C E5 08            [12] 5294 	mov	a,_bp
      00270E 24 20            [12] 5295 	add	a,#0x20
      002710 F8               [12] 5296 	mov	r0,a
      002711 A6 04            [24] 5297 	mov	@r0,ar4
      002713 08               [12] 5298 	inc	r0
      002714 A6 05            [24] 5299 	mov	@r0,ar5
      002716 08               [12] 5300 	inc	r0
      002717 A6 06            [24] 5301 	mov	@r0,ar6
      002719 08               [12] 5302 	inc	r0
      00271A A6 07            [24] 5303 	mov	@r0,ar7
                                   5304 ;	pff\source\pff.c:946: if (btr > remain) btr = (UINT)remain;			/* Truncate btr by remaining bytes */
      00271C E5 08            [12] 5305 	mov	a,_bp
      00271E 24 FC            [12] 5306 	add	a,#0xfc
      002720 F8               [12] 5307 	mov	r0,a
      002721 86 04            [24] 5308 	mov	ar4,@r0
      002723 08               [12] 5309 	inc	r0
      002724 86 05            [24] 5310 	mov	ar5,@r0
      002726 E4               [12] 5311 	clr	a
      002727 FE               [12] 5312 	mov	r6,a
      002728 FF               [12] 5313 	mov	r7,a
      002729 E5 08            [12] 5314 	mov	a,_bp
      00272B 24 20            [12] 5315 	add	a,#0x20
      00272D F8               [12] 5316 	mov	r0,a
      00272E C3               [12] 5317 	clr	c
      00272F E6               [12] 5318 	mov	a,@r0
      002730 9C               [12] 5319 	subb	a,r4
      002731 08               [12] 5320 	inc	r0
      002732 E6               [12] 5321 	mov	a,@r0
      002733 9D               [12] 5322 	subb	a,r5
      002734 08               [12] 5323 	inc	r0
      002735 E6               [12] 5324 	mov	a,@r0
      002736 9E               [12] 5325 	subb	a,r6
      002737 08               [12] 5326 	inc	r0
      002738 E6               [12] 5327 	mov	a,@r0
      002739 9F               [12] 5328 	subb	a,r7
      00273A 50 10            [24] 5329 	jnc	00140$
      00273C E5 08            [12] 5330 	mov	a,_bp
      00273E 24 20            [12] 5331 	add	a,#0x20
      002740 F8               [12] 5332 	mov	r0,a
      002741 E5 08            [12] 5333 	mov	a,_bp
      002743 24 FC            [12] 5334 	add	a,#0xfc
      002745 F9               [12] 5335 	mov	r1,a
      002746 E6               [12] 5336 	mov	a,@r0
      002747 F7               [12] 5337 	mov	@r1,a
      002748 08               [12] 5338 	inc	r0
      002749 E6               [12] 5339 	mov	a,@r0
      00274A 09               [12] 5340 	inc	r1
      00274B F7               [12] 5341 	mov	@r1,a
                                   5342 ;	pff\source\pff.c:948: while (btr)	{									/* Repeat until all data transferred */
      00274C                       5343 00140$:
      00274C E5 08            [12] 5344 	mov	a,_bp
      00274E 24 24            [12] 5345 	add	a,#0x24
      002750 F8               [12] 5346 	mov	r0,a
      002751 E5 08            [12] 5347 	mov	a,_bp
      002753 24 15            [12] 5348 	add	a,#0x15
      002755 F9               [12] 5349 	mov	r1,a
      002756 74 22            [12] 5350 	mov	a,#0x22
      002758 26               [12] 5351 	add	a,@r0
      002759 F7               [12] 5352 	mov	@r1,a
      00275A E4               [12] 5353 	clr	a
      00275B 08               [12] 5354 	inc	r0
      00275C 36               [12] 5355 	addc	a,@r0
      00275D 09               [12] 5356 	inc	r1
      00275E F7               [12] 5357 	mov	@r1,a
      00275F 08               [12] 5358 	inc	r0
      002760 E6               [12] 5359 	mov	a,@r0
      002761 09               [12] 5360 	inc	r1
      002762 F7               [12] 5361 	mov	@r1,a
      002763 E5 08            [12] 5362 	mov	a,_bp
      002765 24 24            [12] 5363 	add	a,#0x24
      002767 F8               [12] 5364 	mov	r0,a
      002768 E5 08            [12] 5365 	mov	a,_bp
      00276A 24 0A            [12] 5366 	add	a,#0x0a
      00276C F9               [12] 5367 	mov	r1,a
      00276D 74 1E            [12] 5368 	mov	a,#0x1e
      00276F 26               [12] 5369 	add	a,@r0
      002770 F7               [12] 5370 	mov	@r1,a
      002771 E4               [12] 5371 	clr	a
      002772 08               [12] 5372 	inc	r0
      002773 36               [12] 5373 	addc	a,@r0
      002774 09               [12] 5374 	inc	r1
      002775 F7               [12] 5375 	mov	@r1,a
      002776 08               [12] 5376 	inc	r0
      002777 E6               [12] 5377 	mov	a,@r0
      002778 09               [12] 5378 	inc	r1
      002779 F7               [12] 5379 	mov	@r1,a
      00277A E5 08            [12] 5380 	mov	a,_bp
      00277C 24 24            [12] 5381 	add	a,#0x24
      00277E F8               [12] 5382 	mov	r0,a
      00277F E5 08            [12] 5383 	mov	a,_bp
      002781 24 04            [12] 5384 	add	a,#0x04
      002783 F9               [12] 5385 	mov	r1,a
      002784 74 02            [12] 5386 	mov	a,#0x02
      002786 26               [12] 5387 	add	a,@r0
      002787 F7               [12] 5388 	mov	@r1,a
      002788 E4               [12] 5389 	clr	a
      002789 08               [12] 5390 	inc	r0
      00278A 36               [12] 5391 	addc	a,@r0
      00278B 09               [12] 5392 	inc	r1
      00278C F7               [12] 5393 	mov	@r1,a
      00278D 08               [12] 5394 	inc	r0
      00278E E6               [12] 5395 	mov	a,@r0
      00278F 09               [12] 5396 	inc	r1
      002790 F7               [12] 5397 	mov	@r1,a
      002791 E5 08            [12] 5398 	mov	a,_bp
      002793 24 24            [12] 5399 	add	a,#0x24
      002795 F8               [12] 5400 	mov	r0,a
      002796 E5 08            [12] 5401 	mov	a,_bp
      002798 24 18            [12] 5402 	add	a,#0x18
      00279A F9               [12] 5403 	mov	r1,a
      00279B 74 26            [12] 5404 	mov	a,#0x26
      00279D 26               [12] 5405 	add	a,@r0
      00279E F7               [12] 5406 	mov	@r1,a
      00279F E4               [12] 5407 	clr	a
      0027A0 08               [12] 5408 	inc	r0
      0027A1 36               [12] 5409 	addc	a,@r0
      0027A2 09               [12] 5410 	inc	r1
      0027A3 F7               [12] 5411 	mov	@r1,a
      0027A4 08               [12] 5412 	inc	r0
      0027A5 E6               [12] 5413 	mov	a,@r0
      0027A6 09               [12] 5414 	inc	r1
      0027A7 F7               [12] 5415 	mov	@r1,a
      0027A8                       5416 00124$:
      0027A8 E5 08            [12] 5417 	mov	a,_bp
      0027AA 24 FC            [12] 5418 	add	a,#0xfc
      0027AC F8               [12] 5419 	mov	r0,a
      0027AD E6               [12] 5420 	mov	a,@r0
      0027AE 08               [12] 5421 	inc	r0
      0027AF 46               [12] 5422 	orl	a,@r0
      0027B0 70 03            [24] 5423 	jnz	00184$
      0027B2 02 2B 23         [24] 5424 	ljmp	00126$
      0027B5                       5425 00184$:
                                   5426 ;	pff\source\pff.c:949: if ((fs->fptr % 512) == 0) {				/* On the sector boundary? */
      0027B5 E5 08            [12] 5427 	mov	a,_bp
      0027B7 24 07            [12] 5428 	add	a,#0x07
      0027B9 F8               [12] 5429 	mov	r0,a
      0027BA 86 82            [24] 5430 	mov	dpl,@r0
      0027BC 08               [12] 5431 	inc	r0
      0027BD 86 83            [24] 5432 	mov	dph,@r0
      0027BF 08               [12] 5433 	inc	r0
      0027C0 86 F0            [24] 5434 	mov	b,@r0
      0027C2 E5 08            [12] 5435 	mov	a,_bp
      0027C4 24 11            [12] 5436 	add	a,#0x11
      0027C6 F9               [12] 5437 	mov	r1,a
      0027C7 12 3A A5         [24] 5438 	lcall	__gptrget
      0027CA F7               [12] 5439 	mov	@r1,a
      0027CB A3               [24] 5440 	inc	dptr
      0027CC 12 3A A5         [24] 5441 	lcall	__gptrget
      0027CF 09               [12] 5442 	inc	r1
      0027D0 F7               [12] 5443 	mov	@r1,a
      0027D1 A3               [24] 5444 	inc	dptr
      0027D2 12 3A A5         [24] 5445 	lcall	__gptrget
      0027D5 09               [12] 5446 	inc	r1
      0027D6 F7               [12] 5447 	mov	@r1,a
      0027D7 A3               [24] 5448 	inc	dptr
      0027D8 12 3A A5         [24] 5449 	lcall	__gptrget
      0027DB 09               [12] 5450 	inc	r1
      0027DC F7               [12] 5451 	mov	@r1,a
      0027DD E5 08            [12] 5452 	mov	a,_bp
      0027DF 24 11            [12] 5453 	add	a,#0x11
      0027E1 F8               [12] 5454 	mov	r0,a
      0027E2 E6               [12] 5455 	mov	a,@r0
      0027E3 70 05            [24] 5456 	jnz	00185$
      0027E5 08               [12] 5457 	inc	r0
      0027E6 E6               [12] 5458 	mov	a,@r0
      0027E7 30 E0 03         [24] 5459 	jnb	acc.0,00186$
      0027EA                       5460 00185$:
      0027EA 02 29 82         [24] 5461 	ljmp	00117$
      0027ED                       5462 00186$:
                                   5463 ;	pff\source\pff.c:950: cs = (BYTE)(fs->fptr / 512 & (fs->csize - 1));	/* Sector offset in the cluster */
      0027ED E5 08            [12] 5464 	mov	a,_bp
      0027EF 24 11            [12] 5465 	add	a,#0x11
      0027F1 F8               [12] 5466 	mov	r0,a
      0027F2 08               [12] 5467 	inc	r0
      0027F3 08               [12] 5468 	inc	r0
      0027F4 08               [12] 5469 	inc	r0
      0027F5 E6               [12] 5470 	mov	a,@r0
      0027F6 7F 00            [12] 5471 	mov	r7,#0x00
      0027F8 C3               [12] 5472 	clr	c
      0027F9 13               [12] 5473 	rrc	a
      0027FA FC               [12] 5474 	mov	r4,a
      0027FB 18               [12] 5475 	dec	r0
      0027FC E6               [12] 5476 	mov	a,@r0
      0027FD 13               [12] 5477 	rrc	a
      0027FE 18               [12] 5478 	dec	r0
      0027FF E6               [12] 5479 	mov	a,@r0
      002800 13               [12] 5480 	rrc	a
      002801 FA               [12] 5481 	mov	r2,a
      002802 E5 08            [12] 5482 	mov	a,_bp
      002804 24 04            [12] 5483 	add	a,#0x04
      002806 F8               [12] 5484 	mov	r0,a
      002807 86 82            [24] 5485 	mov	dpl,@r0
      002809 08               [12] 5486 	inc	r0
      00280A 86 83            [24] 5487 	mov	dph,@r0
      00280C 08               [12] 5488 	inc	r0
      00280D 86 F0            [24] 5489 	mov	b,@r0
      00280F 12 3A A5         [24] 5490 	lcall	__gptrget
      002812 FE               [12] 5491 	mov	r6,a
      002813 1E               [12] 5492 	dec	r6
      002814 EA               [12] 5493 	mov	a,r2
      002815 52 06            [12] 5494 	anl	ar6,a
                                   5495 ;	pff\source\pff.c:951: if (!cs) {								/* On the cluster boundary? */
      002817 EE               [12] 5496 	mov	a,r6
      002818 FB               [12] 5497 	mov	r3,a
      002819 60 03            [24] 5498 	jz	00187$
      00281B 02 28 EA         [24] 5499 	ljmp	00113$
      00281E                       5500 00187$:
                                   5501 ;	pff\source\pff.c:952: if (fs->fptr == 0) {				/* On the top of the file? */
      00281E E5 08            [12] 5502 	mov	a,_bp
      002820 24 11            [12] 5503 	add	a,#0x11
      002822 F8               [12] 5504 	mov	r0,a
      002823 E6               [12] 5505 	mov	a,@r0
      002824 08               [12] 5506 	inc	r0
      002825 46               [12] 5507 	orl	a,@r0
      002826 08               [12] 5508 	inc	r0
      002827 46               [12] 5509 	orl	a,@r0
      002828 08               [12] 5510 	inc	r0
      002829 46               [12] 5511 	orl	a,@r0
      00282A 70 2A            [24] 5512 	jnz	00108$
                                   5513 ;	pff\source\pff.c:953: clst = fs->org_clust;
      00282C E5 08            [12] 5514 	mov	a,_bp
      00282E 24 0A            [12] 5515 	add	a,#0x0a
      002830 F8               [12] 5516 	mov	r0,a
      002831 86 82            [24] 5517 	mov	dpl,@r0
      002833 08               [12] 5518 	inc	r0
      002834 86 83            [24] 5519 	mov	dph,@r0
      002836 08               [12] 5520 	inc	r0
      002837 86 F0            [24] 5521 	mov	b,@r0
      002839 E5 08            [12] 5522 	mov	a,_bp
      00283B 24 27            [12] 5523 	add	a,#0x27
      00283D F9               [12] 5524 	mov	r1,a
      00283E 12 3A A5         [24] 5525 	lcall	__gptrget
      002841 F7               [12] 5526 	mov	@r1,a
      002842 A3               [24] 5527 	inc	dptr
      002843 12 3A A5         [24] 5528 	lcall	__gptrget
      002846 09               [12] 5529 	inc	r1
      002847 F7               [12] 5530 	mov	@r1,a
      002848 A3               [24] 5531 	inc	dptr
      002849 12 3A A5         [24] 5532 	lcall	__gptrget
      00284C 09               [12] 5533 	inc	r1
      00284D F7               [12] 5534 	mov	@r1,a
      00284E A3               [24] 5535 	inc	dptr
      00284F 12 3A A5         [24] 5536 	lcall	__gptrget
      002852 09               [12] 5537 	inc	r1
      002853 F7               [12] 5538 	mov	@r1,a
      002854 80 43            [24] 5539 	sjmp	00109$
      002856                       5540 00108$:
                                   5541 ;	pff\source\pff.c:955: clst = get_fat(fs->curr_clust);
      002856 E5 08            [12] 5542 	mov	a,_bp
      002858 24 15            [12] 5543 	add	a,#0x15
      00285A F8               [12] 5544 	mov	r0,a
      00285B 86 82            [24] 5545 	mov	dpl,@r0
      00285D 08               [12] 5546 	inc	r0
      00285E 86 83            [24] 5547 	mov	dph,@r0
      002860 08               [12] 5548 	inc	r0
      002861 86 F0            [24] 5549 	mov	b,@r0
      002863 12 3A A5         [24] 5550 	lcall	__gptrget
      002866 FC               [12] 5551 	mov	r4,a
      002867 A3               [24] 5552 	inc	dptr
      002868 12 3A A5         [24] 5553 	lcall	__gptrget
      00286B FD               [12] 5554 	mov	r5,a
      00286C A3               [24] 5555 	inc	dptr
      00286D 12 3A A5         [24] 5556 	lcall	__gptrget
      002870 FE               [12] 5557 	mov	r6,a
      002871 A3               [24] 5558 	inc	dptr
      002872 12 3A A5         [24] 5559 	lcall	__gptrget
      002875 8C 82            [24] 5560 	mov	dpl,r4
      002877 8D 83            [24] 5561 	mov	dph,r5
      002879 8E F0            [24] 5562 	mov	b,r6
      00287B C0 03            [24] 5563 	push	ar3
      00287D 12 0C 7B         [24] 5564 	lcall	_get_fat
      002880 AC 82            [24] 5565 	mov	r4,dpl
      002882 AD 83            [24] 5566 	mov	r5,dph
      002884 AE F0            [24] 5567 	mov	r6,b
      002886 FF               [12] 5568 	mov	r7,a
      002887 D0 03            [24] 5569 	pop	ar3
      002889 E5 08            [12] 5570 	mov	a,_bp
      00288B 24 27            [12] 5571 	add	a,#0x27
      00288D F8               [12] 5572 	mov	r0,a
      00288E A6 04            [24] 5573 	mov	@r0,ar4
      002890 08               [12] 5574 	inc	r0
      002891 A6 05            [24] 5575 	mov	@r0,ar5
      002893 08               [12] 5576 	inc	r0
      002894 A6 06            [24] 5577 	mov	@r0,ar6
      002896 08               [12] 5578 	inc	r0
      002897 A6 07            [24] 5579 	mov	@r0,ar7
                                   5580 ;	pff\source\pff.c:973: return FR_OK;
                                   5581 ;	pff\source\pff.c:955: clst = get_fat(fs->curr_clust);
      002899                       5582 00109$:
                                   5583 ;	pff\source\pff.c:957: if (clst <= 1) ABORT(FR_DISK_ERR);
      002899 E5 08            [12] 5584 	mov	a,_bp
      00289B 24 27            [12] 5585 	add	a,#0x27
      00289D F8               [12] 5586 	mov	r0,a
      00289E C3               [12] 5587 	clr	c
      00289F 74 01            [12] 5588 	mov	a,#0x01
      0028A1 96               [12] 5589 	subb	a,@r0
      0028A2 E4               [12] 5590 	clr	a
      0028A3 08               [12] 5591 	inc	r0
      0028A4 96               [12] 5592 	subb	a,@r0
      0028A5 E4               [12] 5593 	clr	a
      0028A6 08               [12] 5594 	inc	r0
      0028A7 96               [12] 5595 	subb	a,@r0
      0028A8 E4               [12] 5596 	clr	a
      0028A9 08               [12] 5597 	inc	r0
      0028AA 96               [12] 5598 	subb	a,@r0
      0028AB 40 15            [24] 5599 	jc	00111$
      0028AD A8 08            [24] 5600 	mov	r0,_bp
      0028AF 08               [12] 5601 	inc	r0
      0028B0 86 82            [24] 5602 	mov	dpl,@r0
      0028B2 08               [12] 5603 	inc	r0
      0028B3 86 83            [24] 5604 	mov	dph,@r0
      0028B5 08               [12] 5605 	inc	r0
      0028B6 86 F0            [24] 5606 	mov	b,@r0
      0028B8 E4               [12] 5607 	clr	a
      0028B9 12 38 59         [24] 5608 	lcall	__gptrput
      0028BC 75 82 01         [24] 5609 	mov	dpl,#0x01
      0028BF 02 2B 26         [24] 5610 	ljmp	00127$
      0028C2                       5611 00111$:
                                   5612 ;	pff\source\pff.c:958: fs->curr_clust = clst;				/* Update current cluster */
      0028C2 E5 08            [12] 5613 	mov	a,_bp
      0028C4 24 15            [12] 5614 	add	a,#0x15
      0028C6 F8               [12] 5615 	mov	r0,a
      0028C7 86 82            [24] 5616 	mov	dpl,@r0
      0028C9 08               [12] 5617 	inc	r0
      0028CA 86 83            [24] 5618 	mov	dph,@r0
      0028CC 08               [12] 5619 	inc	r0
      0028CD 86 F0            [24] 5620 	mov	b,@r0
      0028CF E5 08            [12] 5621 	mov	a,_bp
      0028D1 24 27            [12] 5622 	add	a,#0x27
      0028D3 F9               [12] 5623 	mov	r1,a
      0028D4 E7               [12] 5624 	mov	a,@r1
      0028D5 12 38 59         [24] 5625 	lcall	__gptrput
      0028D8 A3               [24] 5626 	inc	dptr
      0028D9 09               [12] 5627 	inc	r1
      0028DA E7               [12] 5628 	mov	a,@r1
      0028DB 12 38 59         [24] 5629 	lcall	__gptrput
      0028DE A3               [24] 5630 	inc	dptr
      0028DF 09               [12] 5631 	inc	r1
      0028E0 E7               [12] 5632 	mov	a,@r1
      0028E1 12 38 59         [24] 5633 	lcall	__gptrput
      0028E4 A3               [24] 5634 	inc	dptr
      0028E5 09               [12] 5635 	inc	r1
      0028E6 E7               [12] 5636 	mov	a,@r1
      0028E7 12 38 59         [24] 5637 	lcall	__gptrput
      0028EA                       5638 00113$:
                                   5639 ;	pff\source\pff.c:960: sect = clust2sect(fs->curr_clust);		/* Get current sector */
      0028EA E5 08            [12] 5640 	mov	a,_bp
      0028EC 24 15            [12] 5641 	add	a,#0x15
      0028EE F8               [12] 5642 	mov	r0,a
      0028EF 86 82            [24] 5643 	mov	dpl,@r0
      0028F1 08               [12] 5644 	inc	r0
      0028F2 86 83            [24] 5645 	mov	dph,@r0
      0028F4 08               [12] 5646 	inc	r0
      0028F5 86 F0            [24] 5647 	mov	b,@r0
      0028F7 12 3A A5         [24] 5648 	lcall	__gptrget
      0028FA FC               [12] 5649 	mov	r4,a
      0028FB A3               [24] 5650 	inc	dptr
      0028FC 12 3A A5         [24] 5651 	lcall	__gptrget
      0028FF FD               [12] 5652 	mov	r5,a
      002900 A3               [24] 5653 	inc	dptr
      002901 12 3A A5         [24] 5654 	lcall	__gptrget
      002904 FE               [12] 5655 	mov	r6,a
      002905 A3               [24] 5656 	inc	dptr
      002906 12 3A A5         [24] 5657 	lcall	__gptrget
      002909 8C 82            [24] 5658 	mov	dpl,r4
      00290B 8D 83            [24] 5659 	mov	dph,r5
      00290D 8E F0            [24] 5660 	mov	b,r6
      00290F C0 03            [24] 5661 	push	ar3
      002911 12 0E 13         [24] 5662 	lcall	_clust2sect
      002914 AC 82            [24] 5663 	mov	r4,dpl
      002916 AD 83            [24] 5664 	mov	r5,dph
      002918 AE F0            [24] 5665 	mov	r6,b
      00291A FF               [12] 5666 	mov	r7,a
      00291B D0 03            [24] 5667 	pop	ar3
      00291D E5 08            [12] 5668 	mov	a,_bp
      00291F 24 11            [12] 5669 	add	a,#0x11
      002921 F8               [12] 5670 	mov	r0,a
      002922 A6 04            [24] 5671 	mov	@r0,ar4
      002924 08               [12] 5672 	inc	r0
      002925 A6 05            [24] 5673 	mov	@r0,ar5
      002927 08               [12] 5674 	inc	r0
      002928 A6 06            [24] 5675 	mov	@r0,ar6
      00292A 08               [12] 5676 	inc	r0
      00292B A6 07            [24] 5677 	mov	@r0,ar7
                                   5678 ;	pff\source\pff.c:961: if (!sect) ABORT(FR_DISK_ERR);
      00292D EC               [12] 5679 	mov	a,r4
      00292E 4D               [12] 5680 	orl	a,r5
      00292F 4E               [12] 5681 	orl	a,r6
      002930 4F               [12] 5682 	orl	a,r7
      002931 70 15            [24] 5683 	jnz	00115$
      002933 A8 08            [24] 5684 	mov	r0,_bp
      002935 08               [12] 5685 	inc	r0
      002936 86 82            [24] 5686 	mov	dpl,@r0
      002938 08               [12] 5687 	inc	r0
      002939 86 83            [24] 5688 	mov	dph,@r0
      00293B 08               [12] 5689 	inc	r0
      00293C 86 F0            [24] 5690 	mov	b,@r0
      00293E E4               [12] 5691 	clr	a
      00293F 12 38 59         [24] 5692 	lcall	__gptrput
      002942 75 82 01         [24] 5693 	mov	dpl,#0x01
      002945 02 2B 26         [24] 5694 	ljmp	00127$
      002948                       5695 00115$:
                                   5696 ;	pff\source\pff.c:962: fs->dsect = sect + cs;
      002948 8B 04            [24] 5697 	mov	ar4,r3
      00294A E4               [12] 5698 	clr	a
      00294B FD               [12] 5699 	mov	r5,a
      00294C FE               [12] 5700 	mov	r6,a
      00294D FF               [12] 5701 	mov	r7,a
      00294E E5 08            [12] 5702 	mov	a,_bp
      002950 24 11            [12] 5703 	add	a,#0x11
      002952 F8               [12] 5704 	mov	r0,a
      002953 EC               [12] 5705 	mov	a,r4
      002954 26               [12] 5706 	add	a,@r0
      002955 FC               [12] 5707 	mov	r4,a
      002956 ED               [12] 5708 	mov	a,r5
      002957 08               [12] 5709 	inc	r0
      002958 36               [12] 5710 	addc	a,@r0
      002959 FD               [12] 5711 	mov	r5,a
      00295A EE               [12] 5712 	mov	a,r6
      00295B 08               [12] 5713 	inc	r0
      00295C 36               [12] 5714 	addc	a,@r0
      00295D FE               [12] 5715 	mov	r6,a
      00295E EF               [12] 5716 	mov	a,r7
      00295F 08               [12] 5717 	inc	r0
      002960 36               [12] 5718 	addc	a,@r0
      002961 FF               [12] 5719 	mov	r7,a
      002962 E5 08            [12] 5720 	mov	a,_bp
      002964 24 18            [12] 5721 	add	a,#0x18
      002966 F8               [12] 5722 	mov	r0,a
      002967 86 82            [24] 5723 	mov	dpl,@r0
      002969 08               [12] 5724 	inc	r0
      00296A 86 83            [24] 5725 	mov	dph,@r0
      00296C 08               [12] 5726 	inc	r0
      00296D 86 F0            [24] 5727 	mov	b,@r0
      00296F EC               [12] 5728 	mov	a,r4
      002970 12 38 59         [24] 5729 	lcall	__gptrput
      002973 A3               [24] 5730 	inc	dptr
      002974 ED               [12] 5731 	mov	a,r5
      002975 12 38 59         [24] 5732 	lcall	__gptrput
      002978 A3               [24] 5733 	inc	dptr
      002979 EE               [12] 5734 	mov	a,r6
      00297A 12 38 59         [24] 5735 	lcall	__gptrput
      00297D A3               [24] 5736 	inc	dptr
      00297E EF               [12] 5737 	mov	a,r7
      00297F 12 38 59         [24] 5738 	lcall	__gptrput
                                   5739 ;	pff\source\pff.c:973: return FR_OK;
                                   5740 ;	pff\source\pff.c:962: fs->dsect = sect + cs;
      002982                       5741 00117$:
                                   5742 ;	pff\source\pff.c:964: rcnt = 512 - (UINT)fs->fptr % 512;			/* Get partial sector data from sector buffer */
      002982 E5 08            [12] 5743 	mov	a,_bp
      002984 24 07            [12] 5744 	add	a,#0x07
      002986 F8               [12] 5745 	mov	r0,a
      002987 86 82            [24] 5746 	mov	dpl,@r0
      002989 08               [12] 5747 	inc	r0
      00298A 86 83            [24] 5748 	mov	dph,@r0
      00298C 08               [12] 5749 	inc	r0
      00298D 86 F0            [24] 5750 	mov	b,@r0
      00298F 12 3A A5         [24] 5751 	lcall	__gptrget
      002992 FE               [12] 5752 	mov	r6,a
      002993 A3               [24] 5753 	inc	dptr
      002994 12 3A A5         [24] 5754 	lcall	__gptrget
      002997 FF               [12] 5755 	mov	r7,a
      002998 53 07 01         [24] 5756 	anl	ar7,#0x01
      00299B E5 08            [12] 5757 	mov	a,_bp
      00299D 24 1E            [12] 5758 	add	a,#0x1e
      00299F F8               [12] 5759 	mov	r0,a
      0029A0 E4               [12] 5760 	clr	a
      0029A1 C3               [12] 5761 	clr	c
      0029A2 9E               [12] 5762 	subb	a,r6
      0029A3 F6               [12] 5763 	mov	@r0,a
      0029A4 74 02            [12] 5764 	mov	a,#0x02
      0029A6 9F               [12] 5765 	subb	a,r7
      0029A7 08               [12] 5766 	inc	r0
      0029A8 F6               [12] 5767 	mov	@r0,a
                                   5768 ;	pff\source\pff.c:965: if (rcnt > btr) rcnt = btr;
      0029A9 E5 08            [12] 5769 	mov	a,_bp
      0029AB 24 1E            [12] 5770 	add	a,#0x1e
      0029AD F8               [12] 5771 	mov	r0,a
      0029AE E5 08            [12] 5772 	mov	a,_bp
      0029B0 24 FC            [12] 5773 	add	a,#0xfc
      0029B2 F9               [12] 5774 	mov	r1,a
      0029B3 C3               [12] 5775 	clr	c
      0029B4 E7               [12] 5776 	mov	a,@r1
      0029B5 96               [12] 5777 	subb	a,@r0
      0029B6 09               [12] 5778 	inc	r1
      0029B7 E7               [12] 5779 	mov	a,@r1
      0029B8 08               [12] 5780 	inc	r0
      0029B9 96               [12] 5781 	subb	a,@r0
      0029BA 50 10            [24] 5782 	jnc	00119$
      0029BC E5 08            [12] 5783 	mov	a,_bp
      0029BE 24 FC            [12] 5784 	add	a,#0xfc
      0029C0 F8               [12] 5785 	mov	r0,a
      0029C1 E5 08            [12] 5786 	mov	a,_bp
      0029C3 24 1E            [12] 5787 	add	a,#0x1e
      0029C5 F9               [12] 5788 	mov	r1,a
      0029C6 E6               [12] 5789 	mov	a,@r0
      0029C7 F7               [12] 5790 	mov	@r1,a
      0029C8 08               [12] 5791 	inc	r0
      0029C9 E6               [12] 5792 	mov	a,@r0
      0029CA 09               [12] 5793 	inc	r1
      0029CB F7               [12] 5794 	mov	@r1,a
      0029CC                       5795 00119$:
                                   5796 ;	pff\source\pff.c:966: dr = disk_readp(rbuff, fs->dsect, (UINT)fs->fptr % 512, rcnt);
      0029CC E5 08            [12] 5797 	mov	a,_bp
      0029CE 24 07            [12] 5798 	add	a,#0x07
      0029D0 F8               [12] 5799 	mov	r0,a
      0029D1 86 82            [24] 5800 	mov	dpl,@r0
      0029D3 08               [12] 5801 	inc	r0
      0029D4 86 83            [24] 5802 	mov	dph,@r0
      0029D6 08               [12] 5803 	inc	r0
      0029D7 86 F0            [24] 5804 	mov	b,@r0
      0029D9 12 3A A5         [24] 5805 	lcall	__gptrget
      0029DC FC               [12] 5806 	mov	r4,a
      0029DD A3               [24] 5807 	inc	dptr
      0029DE 12 3A A5         [24] 5808 	lcall	__gptrget
      0029E1 FD               [12] 5809 	mov	r5,a
      0029E2 53 05 01         [24] 5810 	anl	ar5,#0x01
      0029E5 E5 08            [12] 5811 	mov	a,_bp
      0029E7 24 18            [12] 5812 	add	a,#0x18
      0029E9 F8               [12] 5813 	mov	r0,a
      0029EA 86 82            [24] 5814 	mov	dpl,@r0
      0029EC 08               [12] 5815 	inc	r0
      0029ED 86 83            [24] 5816 	mov	dph,@r0
      0029EF 08               [12] 5817 	inc	r0
      0029F0 86 F0            [24] 5818 	mov	b,@r0
      0029F2 12 3A A5         [24] 5819 	lcall	__gptrget
      0029F5 FA               [12] 5820 	mov	r2,a
      0029F6 A3               [24] 5821 	inc	dptr
      0029F7 12 3A A5         [24] 5822 	lcall	__gptrget
      0029FA FB               [12] 5823 	mov	r3,a
      0029FB A3               [24] 5824 	inc	dptr
      0029FC 12 3A A5         [24] 5825 	lcall	__gptrget
      0029FF FE               [12] 5826 	mov	r6,a
      002A00 A3               [24] 5827 	inc	dptr
      002A01 12 3A A5         [24] 5828 	lcall	__gptrget
      002A04 FF               [12] 5829 	mov	r7,a
      002A05 E5 08            [12] 5830 	mov	a,_bp
      002A07 24 1E            [12] 5831 	add	a,#0x1e
      002A09 F8               [12] 5832 	mov	r0,a
      002A0A E6               [12] 5833 	mov	a,@r0
      002A0B C0 E0            [24] 5834 	push	acc
      002A0D 08               [12] 5835 	inc	r0
      002A0E E6               [12] 5836 	mov	a,@r0
      002A0F C0 E0            [24] 5837 	push	acc
      002A11 C0 04            [24] 5838 	push	ar4
      002A13 C0 05            [24] 5839 	push	ar5
      002A15 C0 02            [24] 5840 	push	ar2
      002A17 C0 03            [24] 5841 	push	ar3
      002A19 C0 06            [24] 5842 	push	ar6
      002A1B C0 07            [24] 5843 	push	ar7
      002A1D E5 08            [12] 5844 	mov	a,_bp
      002A1F 24 1B            [12] 5845 	add	a,#0x1b
      002A21 F8               [12] 5846 	mov	r0,a
      002A22 86 82            [24] 5847 	mov	dpl,@r0
      002A24 08               [12] 5848 	inc	r0
      002A25 86 83            [24] 5849 	mov	dph,@r0
      002A27 08               [12] 5850 	inc	r0
      002A28 86 F0            [24] 5851 	mov	b,@r0
      002A2A 12 09 97         [24] 5852 	lcall	_disk_readp
      002A2D AF 82            [24] 5853 	mov	r7,dpl
      002A2F E5 81            [12] 5854 	mov	a,sp
      002A31 24 F8            [12] 5855 	add	a,#0xf8
      002A33 F5 81            [12] 5856 	mov	sp,a
                                   5857 ;	pff\source\pff.c:967: if (dr) ABORT(FR_DISK_ERR);
      002A35 EF               [12] 5858 	mov	a,r7
      002A36 60 15            [24] 5859 	jz	00121$
      002A38 A8 08            [24] 5860 	mov	r0,_bp
      002A3A 08               [12] 5861 	inc	r0
      002A3B 86 82            [24] 5862 	mov	dpl,@r0
      002A3D 08               [12] 5863 	inc	r0
      002A3E 86 83            [24] 5864 	mov	dph,@r0
      002A40 08               [12] 5865 	inc	r0
      002A41 86 F0            [24] 5866 	mov	b,@r0
      002A43 E4               [12] 5867 	clr	a
      002A44 12 38 59         [24] 5868 	lcall	__gptrput
      002A47 75 82 01         [24] 5869 	mov	dpl,#0x01
      002A4A 02 2B 26         [24] 5870 	ljmp	00127$
      002A4D                       5871 00121$:
                                   5872 ;	pff\source\pff.c:968: fs->fptr += rcnt;							/* Advances file read pointer */
      002A4D E5 08            [12] 5873 	mov	a,_bp
      002A4F 24 07            [12] 5874 	add	a,#0x07
      002A51 F8               [12] 5875 	mov	r0,a
      002A52 86 82            [24] 5876 	mov	dpl,@r0
      002A54 08               [12] 5877 	inc	r0
      002A55 86 83            [24] 5878 	mov	dph,@r0
      002A57 08               [12] 5879 	inc	r0
      002A58 86 F0            [24] 5880 	mov	b,@r0
      002A5A E5 08            [12] 5881 	mov	a,_bp
      002A5C 24 11            [12] 5882 	add	a,#0x11
      002A5E F9               [12] 5883 	mov	r1,a
      002A5F 12 3A A5         [24] 5884 	lcall	__gptrget
      002A62 F7               [12] 5885 	mov	@r1,a
      002A63 A3               [24] 5886 	inc	dptr
      002A64 12 3A A5         [24] 5887 	lcall	__gptrget
      002A67 09               [12] 5888 	inc	r1
      002A68 F7               [12] 5889 	mov	@r1,a
      002A69 A3               [24] 5890 	inc	dptr
      002A6A 12 3A A5         [24] 5891 	lcall	__gptrget
      002A6D 09               [12] 5892 	inc	r1
      002A6E F7               [12] 5893 	mov	@r1,a
      002A6F A3               [24] 5894 	inc	dptr
      002A70 12 3A A5         [24] 5895 	lcall	__gptrget
      002A73 09               [12] 5896 	inc	r1
      002A74 F7               [12] 5897 	mov	@r1,a
      002A75 E5 08            [12] 5898 	mov	a,_bp
      002A77 24 1E            [12] 5899 	add	a,#0x1e
      002A79 F8               [12] 5900 	mov	r0,a
      002A7A 86 02            [24] 5901 	mov	ar2,@r0
      002A7C 08               [12] 5902 	inc	r0
      002A7D 86 03            [24] 5903 	mov	ar3,@r0
      002A7F E4               [12] 5904 	clr	a
      002A80 FE               [12] 5905 	mov	r6,a
      002A81 FF               [12] 5906 	mov	r7,a
      002A82 E5 08            [12] 5907 	mov	a,_bp
      002A84 24 11            [12] 5908 	add	a,#0x11
      002A86 F8               [12] 5909 	mov	r0,a
      002A87 EA               [12] 5910 	mov	a,r2
      002A88 26               [12] 5911 	add	a,@r0
      002A89 FA               [12] 5912 	mov	r2,a
      002A8A EB               [12] 5913 	mov	a,r3
      002A8B 08               [12] 5914 	inc	r0
      002A8C 36               [12] 5915 	addc	a,@r0
      002A8D FB               [12] 5916 	mov	r3,a
      002A8E EE               [12] 5917 	mov	a,r6
      002A8F 08               [12] 5918 	inc	r0
      002A90 36               [12] 5919 	addc	a,@r0
      002A91 FE               [12] 5920 	mov	r6,a
      002A92 EF               [12] 5921 	mov	a,r7
      002A93 08               [12] 5922 	inc	r0
      002A94 36               [12] 5923 	addc	a,@r0
      002A95 FF               [12] 5924 	mov	r7,a
      002A96 E5 08            [12] 5925 	mov	a,_bp
      002A98 24 07            [12] 5926 	add	a,#0x07
      002A9A F8               [12] 5927 	mov	r0,a
      002A9B 86 82            [24] 5928 	mov	dpl,@r0
      002A9D 08               [12] 5929 	inc	r0
      002A9E 86 83            [24] 5930 	mov	dph,@r0
      002AA0 08               [12] 5931 	inc	r0
      002AA1 86 F0            [24] 5932 	mov	b,@r0
      002AA3 EA               [12] 5933 	mov	a,r2
      002AA4 12 38 59         [24] 5934 	lcall	__gptrput
      002AA7 A3               [24] 5935 	inc	dptr
      002AA8 EB               [12] 5936 	mov	a,r3
      002AA9 12 38 59         [24] 5937 	lcall	__gptrput
      002AAC A3               [24] 5938 	inc	dptr
      002AAD EE               [12] 5939 	mov	a,r6
      002AAE 12 38 59         [24] 5940 	lcall	__gptrput
      002AB1 A3               [24] 5941 	inc	dptr
      002AB2 EF               [12] 5942 	mov	a,r7
      002AB3 12 38 59         [24] 5943 	lcall	__gptrput
                                   5944 ;	pff\source\pff.c:969: btr -= rcnt; *br += rcnt;					/* Update read counter */
      002AB6 E5 08            [12] 5945 	mov	a,_bp
      002AB8 24 FC            [12] 5946 	add	a,#0xfc
      002ABA F8               [12] 5947 	mov	r0,a
      002ABB E5 08            [12] 5948 	mov	a,_bp
      002ABD 24 1E            [12] 5949 	add	a,#0x1e
      002ABF F9               [12] 5950 	mov	r1,a
      002AC0 E6               [12] 5951 	mov	a,@r0
      002AC1 C3               [12] 5952 	clr	c
      002AC2 97               [12] 5953 	subb	a,@r1
      002AC3 F6               [12] 5954 	mov	@r0,a
      002AC4 08               [12] 5955 	inc	r0
      002AC5 E6               [12] 5956 	mov	a,@r0
      002AC6 09               [12] 5957 	inc	r1
      002AC7 97               [12] 5958 	subb	a,@r1
      002AC8 F6               [12] 5959 	mov	@r0,a
      002AC9 E5 08            [12] 5960 	mov	a,_bp
      002ACB 24 0E            [12] 5961 	add	a,#0x0e
      002ACD F8               [12] 5962 	mov	r0,a
      002ACE 86 82            [24] 5963 	mov	dpl,@r0
      002AD0 08               [12] 5964 	inc	r0
      002AD1 86 83            [24] 5965 	mov	dph,@r0
      002AD3 08               [12] 5966 	inc	r0
      002AD4 86 F0            [24] 5967 	mov	b,@r0
      002AD6 12 3A A5         [24] 5968 	lcall	__gptrget
      002AD9 FE               [12] 5969 	mov	r6,a
      002ADA A3               [24] 5970 	inc	dptr
      002ADB 12 3A A5         [24] 5971 	lcall	__gptrget
      002ADE FF               [12] 5972 	mov	r7,a
      002ADF E5 08            [12] 5973 	mov	a,_bp
      002AE1 24 1E            [12] 5974 	add	a,#0x1e
      002AE3 F8               [12] 5975 	mov	r0,a
      002AE4 E6               [12] 5976 	mov	a,@r0
      002AE5 2E               [12] 5977 	add	a,r6
      002AE6 FE               [12] 5978 	mov	r6,a
      002AE7 08               [12] 5979 	inc	r0
      002AE8 E6               [12] 5980 	mov	a,@r0
      002AE9 3F               [12] 5981 	addc	a,r7
      002AEA FF               [12] 5982 	mov	r7,a
      002AEB E5 08            [12] 5983 	mov	a,_bp
      002AED 24 0E            [12] 5984 	add	a,#0x0e
      002AEF F8               [12] 5985 	mov	r0,a
      002AF0 86 82            [24] 5986 	mov	dpl,@r0
      002AF2 08               [12] 5987 	inc	r0
      002AF3 86 83            [24] 5988 	mov	dph,@r0
      002AF5 08               [12] 5989 	inc	r0
      002AF6 86 F0            [24] 5990 	mov	b,@r0
      002AF8 EE               [12] 5991 	mov	a,r6
      002AF9 12 38 59         [24] 5992 	lcall	__gptrput
      002AFC A3               [24] 5993 	inc	dptr
      002AFD EF               [12] 5994 	mov	a,r7
      002AFE 12 38 59         [24] 5995 	lcall	__gptrput
                                   5996 ;	pff\source\pff.c:970: if (rbuff) rbuff += rcnt;					/* Advances the data pointer if destination is memory */
      002B01 E5 08            [12] 5997 	mov	a,_bp
      002B03 24 1B            [12] 5998 	add	a,#0x1b
      002B05 F8               [12] 5999 	mov	r0,a
      002B06 E6               [12] 6000 	mov	a,@r0
      002B07 08               [12] 6001 	inc	r0
      002B08 46               [12] 6002 	orl	a,@r0
      002B09 70 03            [24] 6003 	jnz	00193$
      002B0B 02 27 A8         [24] 6004 	ljmp	00124$
      002B0E                       6005 00193$:
      002B0E E5 08            [12] 6006 	mov	a,_bp
      002B10 24 1B            [12] 6007 	add	a,#0x1b
      002B12 F8               [12] 6008 	mov	r0,a
      002B13 E5 08            [12] 6009 	mov	a,_bp
      002B15 24 1E            [12] 6010 	add	a,#0x1e
      002B17 F9               [12] 6011 	mov	r1,a
      002B18 E7               [12] 6012 	mov	a,@r1
      002B19 26               [12] 6013 	add	a,@r0
      002B1A F6               [12] 6014 	mov	@r0,a
      002B1B 09               [12] 6015 	inc	r1
      002B1C E7               [12] 6016 	mov	a,@r1
      002B1D 08               [12] 6017 	inc	r0
      002B1E 36               [12] 6018 	addc	a,@r0
      002B1F F6               [12] 6019 	mov	@r0,a
      002B20 02 27 A8         [24] 6020 	ljmp	00124$
      002B23                       6021 00126$:
                                   6022 ;	pff\source\pff.c:973: return FR_OK;
      002B23 75 82 00         [24] 6023 	mov	dpl,#0x00
      002B26                       6024 00127$:
                                   6025 ;	pff\source\pff.c:974: }
      002B26 85 08 81         [24] 6026 	mov	sp,_bp
      002B29 D0 08            [24] 6027 	pop	_bp
      002B2B 22               [24] 6028 	ret
                                   6029 ;------------------------------------------------------------
                                   6030 ;Allocation info for local variables in function 'pf_opendir'
                                   6031 ;------------------------------------------------------------
                                   6032 ;path                      Allocated to stack - _bp -5
                                   6033 ;dj                        Allocated to stack - _bp +1
                                   6034 ;res                       Allocated to registers r4 
                                   6035 ;sp                        Allocated to stack - _bp +7
                                   6036 ;dir                       Allocated to stack - _bp +19
                                   6037 ;fs                        Allocated to registers 
                                   6038 ;sloc0                     Allocated to stack - _bp +4
                                   6039 ;------------------------------------------------------------
                                   6040 ;	pff\source\pff.c:1104: FRESULT pf_opendir (
                                   6041 ;	-----------------------------------------
                                   6042 ;	 function pf_opendir
                                   6043 ;	-----------------------------------------
      002B2C                       6044 _pf_opendir:
      002B2C C0 08            [24] 6045 	push	_bp
      002B2E 85 81 08         [24] 6046 	mov	_bp,sp
      002B31 C0 82            [24] 6047 	push	dpl
      002B33 C0 83            [24] 6048 	push	dph
      002B35 C0 F0            [24] 6049 	push	b
      002B37 E5 81            [12] 6050 	mov	a,sp
      002B39 24 2F            [12] 6051 	add	a,#0x2f
      002B3B F5 81            [12] 6052 	mov	sp,a
                                   6053 ;	pff\source\pff.c:1114: if (!fs) {				/* Check file system */
      002B3D 90 00 2B         [24] 6054 	mov	dptr,#_FatFs
      002B40 E0               [24] 6055 	movx	a,@dptr
      002B41 F5 F0            [12] 6056 	mov	b,a
      002B43 A3               [24] 6057 	inc	dptr
      002B44 E0               [24] 6058 	movx	a,@dptr
      002B45 45 F0            [12] 6059 	orl	a,b
      002B47 70 05            [24] 6060 	jnz	00111$
                                   6061 ;	pff\source\pff.c:1115: res = FR_NOT_ENABLED;
      002B49 7C 05            [12] 6062 	mov	r4,#0x05
      002B4B 02 2C 35         [24] 6063 	ljmp	00112$
      002B4E                       6064 00111$:
                                   6065 ;	pff\source\pff.c:1117: dj->fn = sp;
      002B4E A8 08            [24] 6066 	mov	r0,_bp
      002B50 08               [12] 6067 	inc	r0
      002B51 74 02            [12] 6068 	mov	a,#0x02
      002B53 26               [12] 6069 	add	a,@r0
      002B54 FC               [12] 6070 	mov	r4,a
      002B55 E4               [12] 6071 	clr	a
      002B56 08               [12] 6072 	inc	r0
      002B57 36               [12] 6073 	addc	a,@r0
      002B58 FB               [12] 6074 	mov	r3,a
      002B59 08               [12] 6075 	inc	r0
      002B5A 86 02            [24] 6076 	mov	ar2,@r0
      002B5C E5 08            [12] 6077 	mov	a,_bp
      002B5E 24 07            [12] 6078 	add	a,#0x07
      002B60 FD               [12] 6079 	mov	r5,a
      002B61 7E 00            [12] 6080 	mov	r6,#0x00
      002B63 7F 40            [12] 6081 	mov	r7,#0x40
      002B65 8C 82            [24] 6082 	mov	dpl,r4
      002B67 8B 83            [24] 6083 	mov	dph,r3
      002B69 8A F0            [24] 6084 	mov	b,r2
      002B6B ED               [12] 6085 	mov	a,r5
      002B6C 12 38 59         [24] 6086 	lcall	__gptrput
      002B6F A3               [24] 6087 	inc	dptr
      002B70 EE               [12] 6088 	mov	a,r6
      002B71 12 38 59         [24] 6089 	lcall	__gptrput
      002B74 A3               [24] 6090 	inc	dptr
      002B75 EF               [12] 6091 	mov	a,r7
      002B76 12 38 59         [24] 6092 	lcall	__gptrput
                                   6093 ;	pff\source\pff.c:1118: res = follow_path(dj, dir, path);		/* Follow the path to the directory */
      002B79 E5 08            [12] 6094 	mov	a,_bp
      002B7B 24 13            [12] 6095 	add	a,#0x13
      002B7D F9               [12] 6096 	mov	r1,a
      002B7E FD               [12] 6097 	mov	r5,a
      002B7F 7E 00            [12] 6098 	mov	r6,#0x00
      002B81 7F 40            [12] 6099 	mov	r7,#0x40
      002B83 C0 01            [24] 6100 	push	ar1
      002B85 E5 08            [12] 6101 	mov	a,_bp
      002B87 24 FB            [12] 6102 	add	a,#0xfb
      002B89 F8               [12] 6103 	mov	r0,a
      002B8A E6               [12] 6104 	mov	a,@r0
      002B8B C0 E0            [24] 6105 	push	acc
      002B8D 08               [12] 6106 	inc	r0
      002B8E E6               [12] 6107 	mov	a,@r0
      002B8F C0 E0            [24] 6108 	push	acc
      002B91 08               [12] 6109 	inc	r0
      002B92 E6               [12] 6110 	mov	a,@r0
      002B93 C0 E0            [24] 6111 	push	acc
      002B95 C0 05            [24] 6112 	push	ar5
      002B97 C0 06            [24] 6113 	push	ar6
      002B99 C0 07            [24] 6114 	push	ar7
      002B9B A8 08            [24] 6115 	mov	r0,_bp
      002B9D 08               [12] 6116 	inc	r0
      002B9E 86 82            [24] 6117 	mov	dpl,@r0
      002BA0 08               [12] 6118 	inc	r0
      002BA1 86 83            [24] 6119 	mov	dph,@r0
      002BA3 08               [12] 6120 	inc	r0
      002BA4 86 F0            [24] 6121 	mov	b,@r0
      002BA6 12 1B 6E         [24] 6122 	lcall	_follow_path
      002BA9 AF 82            [24] 6123 	mov	r7,dpl
      002BAB E5 81            [12] 6124 	mov	a,sp
      002BAD 24 FA            [12] 6125 	add	a,#0xfa
      002BAF F5 81            [12] 6126 	mov	sp,a
      002BB1 D0 01            [24] 6127 	pop	ar1
      002BB3 8F 04            [24] 6128 	mov	ar4,r7
                                   6129 ;	pff\source\pff.c:1119: if (res == FR_OK) {						/* Follow completed */
      002BB5 EC               [12] 6130 	mov	a,r4
      002BB6 60 03            [24] 6131 	jz	00136$
      002BB8 02 2C 35         [24] 6132 	ljmp	00112$
      002BBB                       6133 00136$:
                                   6134 ;	pff\source\pff.c:1120: if (dir[0]) {						/* It is not the root dir */
      002BBB E7               [12] 6135 	mov	a,@r1
      002BBC 60 62            [24] 6136 	jz	00105$
                                   6137 ;	pff\source\pff.c:1121: if (dir[DIR_Attr] & AM_DIR) {	/* The object is a directory */
      002BBE 74 0B            [12] 6138 	mov	a,#0x0b
      002BC0 29               [12] 6139 	add	a,r1
      002BC1 F8               [12] 6140 	mov	r0,a
      002BC2 E6               [12] 6141 	mov	a,@r0
      002BC3 FF               [12] 6142 	mov	r7,a
      002BC4 30 E4 57         [24] 6143 	jnb	acc.4,00102$
                                   6144 ;	pff\source\pff.c:1122: dj->sclust = get_clust(dir);
      002BC7 C0 04            [24] 6145 	push	ar4
      002BC9 A8 08            [24] 6146 	mov	r0,_bp
      002BCB 08               [12] 6147 	inc	r0
      002BCC C0 01            [24] 6148 	push	ar1
      002BCE E5 08            [12] 6149 	mov	a,_bp
      002BD0 24 04            [12] 6150 	add	a,#0x04
      002BD2 F9               [12] 6151 	mov	r1,a
      002BD3 74 05            [12] 6152 	mov	a,#0x05
      002BD5 26               [12] 6153 	add	a,@r0
      002BD6 F7               [12] 6154 	mov	@r1,a
      002BD7 E4               [12] 6155 	clr	a
      002BD8 08               [12] 6156 	inc	r0
      002BD9 36               [12] 6157 	addc	a,@r0
      002BDA 09               [12] 6158 	inc	r1
      002BDB F7               [12] 6159 	mov	@r1,a
      002BDC 08               [12] 6160 	inc	r0
      002BDD E6               [12] 6161 	mov	a,@r0
      002BDE 09               [12] 6162 	inc	r1
      002BDF F7               [12] 6163 	mov	@r1,a
      002BE0 D0 01            [24] 6164 	pop	ar1
      002BE2 89 03            [24] 6165 	mov	ar3,r1
      002BE4 8B 02            [24] 6166 	mov	ar2,r3
      002BE6 7B 00            [12] 6167 	mov	r3,#0x00
      002BE8 7C 40            [12] 6168 	mov	r4,#0x40
      002BEA 8A 82            [24] 6169 	mov	dpl,r2
      002BEC 8B 83            [24] 6170 	mov	dph,r3
      002BEE 8C F0            [24] 6171 	mov	b,r4
      002BF0 12 0F 4E         [24] 6172 	lcall	_get_clust
      002BF3 AA 82            [24] 6173 	mov	r2,dpl
      002BF5 AB 83            [24] 6174 	mov	r3,dph
      002BF7 AC F0            [24] 6175 	mov	r4,b
      002BF9 FF               [12] 6176 	mov	r7,a
      002BFA E5 08            [12] 6177 	mov	a,_bp
      002BFC 24 04            [12] 6178 	add	a,#0x04
      002BFE F8               [12] 6179 	mov	r0,a
      002BFF 86 82            [24] 6180 	mov	dpl,@r0
      002C01 08               [12] 6181 	inc	r0
      002C02 86 83            [24] 6182 	mov	dph,@r0
      002C04 08               [12] 6183 	inc	r0
      002C05 86 F0            [24] 6184 	mov	b,@r0
      002C07 EA               [12] 6185 	mov	a,r2
      002C08 12 38 59         [24] 6186 	lcall	__gptrput
      002C0B A3               [24] 6187 	inc	dptr
      002C0C EB               [12] 6188 	mov	a,r3
      002C0D 12 38 59         [24] 6189 	lcall	__gptrput
      002C10 A3               [24] 6190 	inc	dptr
      002C11 EC               [12] 6191 	mov	a,r4
      002C12 12 38 59         [24] 6192 	lcall	__gptrput
      002C15 A3               [24] 6193 	inc	dptr
      002C16 EF               [12] 6194 	mov	a,r7
      002C17 12 38 59         [24] 6195 	lcall	__gptrput
      002C1A D0 04            [24] 6196 	pop	ar4
      002C1C 80 02            [24] 6197 	sjmp	00105$
      002C1E                       6198 00102$:
                                   6199 ;	pff\source\pff.c:1124: res = FR_NO_FILE;
      002C1E 7C 03            [12] 6200 	mov	r4,#0x03
      002C20                       6201 00105$:
                                   6202 ;	pff\source\pff.c:1127: if (res == FR_OK) {
      002C20 EC               [12] 6203 	mov	a,r4
      002C21 70 12            [24] 6204 	jnz	00112$
                                   6205 ;	pff\source\pff.c:1128: res = dir_rewind(dj);			/* Rewind dir */
      002C23 A8 08            [24] 6206 	mov	r0,_bp
      002C25 08               [12] 6207 	inc	r0
      002C26 86 82            [24] 6208 	mov	dpl,@r0
      002C28 08               [12] 6209 	inc	r0
      002C29 86 83            [24] 6210 	mov	dph,@r0
      002C2B 08               [12] 6211 	inc	r0
      002C2C 86 F0            [24] 6212 	mov	b,@r0
      002C2E 12 0F D0         [24] 6213 	lcall	_dir_rewind
      002C31 AF 82            [24] 6214 	mov	r7,dpl
      002C33 8F 04            [24] 6215 	mov	ar4,r7
      002C35                       6216 00112$:
                                   6217 ;	pff\source\pff.c:1133: return res;
      002C35 8C 82            [24] 6218 	mov	dpl,r4
                                   6219 ;	pff\source\pff.c:1134: }
      002C37 85 08 81         [24] 6220 	mov	sp,_bp
      002C3A D0 08            [24] 6221 	pop	_bp
      002C3C 22               [24] 6222 	ret
                                   6223 ;------------------------------------------------------------
                                   6224 ;Allocation info for local variables in function 'pf_readdir'
                                   6225 ;------------------------------------------------------------
                                   6226 ;fno                       Allocated to stack - _bp -5
                                   6227 ;dj                        Allocated to stack - _bp +1
                                   6228 ;res                       Allocated to registers r4 
                                   6229 ;sp                        Allocated to stack - _bp +4
                                   6230 ;dir                       Allocated to stack - _bp +16
                                   6231 ;fs                        Allocated to registers 
                                   6232 ;sloc0                     Allocated to stack - _bp +52
                                   6233 ;------------------------------------------------------------
                                   6234 ;	pff\source\pff.c:1143: FRESULT pf_readdir (
                                   6235 ;	-----------------------------------------
                                   6236 ;	 function pf_readdir
                                   6237 ;	-----------------------------------------
      002C3D                       6238 _pf_readdir:
      002C3D C0 08            [24] 6239 	push	_bp
      002C3F 85 81 08         [24] 6240 	mov	_bp,sp
      002C42 C0 82            [24] 6241 	push	dpl
      002C44 C0 83            [24] 6242 	push	dph
      002C46 C0 F0            [24] 6243 	push	b
      002C48 E5 81            [12] 6244 	mov	a,sp
      002C4A 24 2C            [12] 6245 	add	a,#0x2c
      002C4C F5 81            [12] 6246 	mov	sp,a
                                   6247 ;	pff\source\pff.c:1153: if (!fs) {				/* Check file system */
      002C4E 90 00 2B         [24] 6248 	mov	dptr,#_FatFs
      002C51 E0               [24] 6249 	movx	a,@dptr
      002C52 F5 F0            [12] 6250 	mov	b,a
      002C54 A3               [24] 6251 	inc	dptr
      002C55 E0               [24] 6252 	movx	a,@dptr
      002C56 45 F0            [12] 6253 	orl	a,b
      002C58 70 05            [24] 6254 	jnz	00111$
                                   6255 ;	pff\source\pff.c:1154: res = FR_NOT_ENABLED;
      002C5A 7C 05            [12] 6256 	mov	r4,#0x05
      002C5C 02 2D 21         [24] 6257 	ljmp	00112$
      002C5F                       6258 00111$:
                                   6259 ;	pff\source\pff.c:1156: dj->fn = sp;
      002C5F A8 08            [24] 6260 	mov	r0,_bp
      002C61 08               [12] 6261 	inc	r0
      002C62 74 02            [12] 6262 	mov	a,#0x02
      002C64 26               [12] 6263 	add	a,@r0
      002C65 FC               [12] 6264 	mov	r4,a
      002C66 E4               [12] 6265 	clr	a
      002C67 08               [12] 6266 	inc	r0
      002C68 36               [12] 6267 	addc	a,@r0
      002C69 FB               [12] 6268 	mov	r3,a
      002C6A 08               [12] 6269 	inc	r0
      002C6B 86 02            [24] 6270 	mov	ar2,@r0
      002C6D E5 08            [12] 6271 	mov	a,_bp
      002C6F 24 04            [12] 6272 	add	a,#0x04
      002C71 FD               [12] 6273 	mov	r5,a
      002C72 7E 00            [12] 6274 	mov	r6,#0x00
      002C74 7F 40            [12] 6275 	mov	r7,#0x40
      002C76 8C 82            [24] 6276 	mov	dpl,r4
      002C78 8B 83            [24] 6277 	mov	dph,r3
      002C7A 8A F0            [24] 6278 	mov	b,r2
      002C7C ED               [12] 6279 	mov	a,r5
      002C7D 12 38 59         [24] 6280 	lcall	__gptrput
      002C80 A3               [24] 6281 	inc	dptr
      002C81 EE               [12] 6282 	mov	a,r6
      002C82 12 38 59         [24] 6283 	lcall	__gptrput
      002C85 A3               [24] 6284 	inc	dptr
      002C86 EF               [12] 6285 	mov	a,r7
      002C87 12 38 59         [24] 6286 	lcall	__gptrput
                                   6287 ;	pff\source\pff.c:1157: if (!fno) {
      002C8A E5 08            [12] 6288 	mov	a,_bp
      002C8C 24 FB            [12] 6289 	add	a,#0xfb
      002C8E F8               [12] 6290 	mov	r0,a
      002C8F E6               [12] 6291 	mov	a,@r0
      002C90 08               [12] 6292 	inc	r0
      002C91 46               [12] 6293 	orl	a,@r0
      002C92 70 15            [24] 6294 	jnz	00108$
                                   6295 ;	pff\source\pff.c:1158: res = dir_rewind(dj);
      002C94 A8 08            [24] 6296 	mov	r0,_bp
      002C96 08               [12] 6297 	inc	r0
      002C97 86 82            [24] 6298 	mov	dpl,@r0
      002C99 08               [12] 6299 	inc	r0
      002C9A 86 83            [24] 6300 	mov	dph,@r0
      002C9C 08               [12] 6301 	inc	r0
      002C9D 86 F0            [24] 6302 	mov	b,@r0
      002C9F 12 0F D0         [24] 6303 	lcall	_dir_rewind
      002CA2 AF 82            [24] 6304 	mov	r7,dpl
      002CA4 8F 04            [24] 6305 	mov	ar4,r7
      002CA6 02 2D 21         [24] 6306 	ljmp	00112$
      002CA9                       6307 00108$:
                                   6308 ;	pff\source\pff.c:1160: res = dir_read(dj, dir);	/* Get current directory item */
      002CA9 E5 08            [12] 6309 	mov	a,_bp
      002CAB 24 10            [12] 6310 	add	a,#0x10
      002CAD FF               [12] 6311 	mov	r7,a
      002CAE FB               [12] 6312 	mov	r3,a
      002CAF 7D 00            [12] 6313 	mov	r5,#0x00
      002CB1 7E 40            [12] 6314 	mov	r6,#0x40
      002CB3 C0 07            [24] 6315 	push	ar7
      002CB5 C0 03            [24] 6316 	push	ar3
      002CB7 C0 05            [24] 6317 	push	ar5
      002CB9 C0 06            [24] 6318 	push	ar6
      002CBB A8 08            [24] 6319 	mov	r0,_bp
      002CBD 08               [12] 6320 	inc	r0
      002CBE 86 82            [24] 6321 	mov	dpl,@r0
      002CC0 08               [12] 6322 	inc	r0
      002CC1 86 83            [24] 6323 	mov	dph,@r0
      002CC3 08               [12] 6324 	inc	r0
      002CC4 86 F0            [24] 6325 	mov	b,@r0
      002CC6 12 15 C6         [24] 6326 	lcall	_dir_read
      002CC9 AE 82            [24] 6327 	mov	r6,dpl
      002CCB 15 81            [12] 6328 	dec	sp
      002CCD 15 81            [12] 6329 	dec	sp
      002CCF 15 81            [12] 6330 	dec	sp
      002CD1 D0 07            [24] 6331 	pop	ar7
      002CD3 8E 04            [24] 6332 	mov	ar4,r6
                                   6333 ;	pff\source\pff.c:1161: if (res == FR_NO_FILE) res = FR_OK;
      002CD5 BC 03 02         [24] 6334 	cjne	r4,#0x03,00102$
      002CD8 7C 00            [12] 6335 	mov	r4,#0x00
      002CDA                       6336 00102$:
                                   6337 ;	pff\source\pff.c:1162: if (res == FR_OK) {				/* A valid entry is found */
      002CDA EC               [12] 6338 	mov	a,r4
                                   6339 ;	pff\source\pff.c:1163: get_fileinfo(dj, dir, fno);	/* Get the object information */
      002CDB 70 44            [24] 6340 	jnz	00112$
      002CDD FE               [12] 6341 	mov	r6,a
      002CDE 7D 40            [12] 6342 	mov	r5,#0x40
      002CE0 E5 08            [12] 6343 	mov	a,_bp
      002CE2 24 FB            [12] 6344 	add	a,#0xfb
      002CE4 F8               [12] 6345 	mov	r0,a
      002CE5 E6               [12] 6346 	mov	a,@r0
      002CE6 C0 E0            [24] 6347 	push	acc
      002CE8 08               [12] 6348 	inc	r0
      002CE9 E6               [12] 6349 	mov	a,@r0
      002CEA C0 E0            [24] 6350 	push	acc
      002CEC 08               [12] 6351 	inc	r0
      002CED E6               [12] 6352 	mov	a,@r0
      002CEE C0 E0            [24] 6353 	push	acc
      002CF0 C0 07            [24] 6354 	push	ar7
      002CF2 C0 06            [24] 6355 	push	ar6
      002CF4 C0 05            [24] 6356 	push	ar5
      002CF6 A8 08            [24] 6357 	mov	r0,_bp
      002CF8 08               [12] 6358 	inc	r0
      002CF9 86 82            [24] 6359 	mov	dpl,@r0
      002CFB 08               [12] 6360 	inc	r0
      002CFC 86 83            [24] 6361 	mov	dph,@r0
      002CFE 08               [12] 6362 	inc	r0
      002CFF 86 F0            [24] 6363 	mov	b,@r0
      002D01 12 19 12         [24] 6364 	lcall	_get_fileinfo
      002D04 E5 81            [12] 6365 	mov	a,sp
      002D06 24 FA            [12] 6366 	add	a,#0xfa
      002D08 F5 81            [12] 6367 	mov	sp,a
                                   6368 ;	pff\source\pff.c:1164: res = dir_next(dj);			/* Increment read index for next */
      002D0A A8 08            [24] 6369 	mov	r0,_bp
      002D0C 08               [12] 6370 	inc	r0
      002D0D 86 82            [24] 6371 	mov	dpl,@r0
      002D0F 08               [12] 6372 	inc	r0
      002D10 86 83            [24] 6373 	mov	dph,@r0
      002D12 08               [12] 6374 	inc	r0
      002D13 86 F0            [24] 6375 	mov	b,@r0
      002D15 12 11 58         [24] 6376 	lcall	_dir_next
      002D18 AF 82            [24] 6377 	mov	r7,dpl
      002D1A 8F 04            [24] 6378 	mov	ar4,r7
                                   6379 ;	pff\source\pff.c:1165: if (res == FR_NO_FILE) res = FR_OK;
      002D1C BC 03 02         [24] 6380 	cjne	r4,#0x03,00112$
      002D1F 7C 00            [12] 6381 	mov	r4,#0x00
      002D21                       6382 00112$:
                                   6383 ;	pff\source\pff.c:1170: return res;
      002D21 8C 82            [24] 6384 	mov	dpl,r4
                                   6385 ;	pff\source\pff.c:1171: }
      002D23 85 08 81         [24] 6386 	mov	sp,_bp
      002D26 D0 08            [24] 6387 	pop	_bp
      002D28 22               [24] 6388 	ret
                                   6389 	.area CSEG    (CODE)
                                   6390 	.area CONST   (CODE)
                                   6391 	.area XINIT   (CODE)
                                   6392 	.area CABS    (ABS,CODE)
