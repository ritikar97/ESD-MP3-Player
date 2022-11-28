;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module timer
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Timer0_IRQHandler
	.globl _get_fattime
	.globl _itoa
	.globl _stop_timer0
	.globl _start_timer0
	.globl _init_timer0
	.globl _reset_timer0
	.globl _get_cursor_pos
	.globl _lcdputstr
	.globl _lcdputch
	.globl _lcdgotoxy
	.globl _lcdgotoaddr
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCON1
	.globl _CKCON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCON0	=	0x008f
_CKCON1	=	0x00af
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00e8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00e8
_P5_1	=	0x00e9
_P5_2	=	0x00ea
_P5_3	=	0x00eb
_P5_4	=	0x00ec
_P5_5	=	0x00ed
_P5_6	=	0x00ee
_P5_7	=	0x00ef
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
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
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
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
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_hrs:
	.ds 1
_mins:
	.ds 1
_seconds:
	.ds 1
_ms:
	.ds 1
_timer0_int_cnt:
	.ds 1
_cursor_pos:
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
;Allocation info for local variables in function 'reset_timer0'
;------------------------------------------------------------
;	timer.c:15: void reset_timer0(void)
;	-----------------------------------------
;	 function reset_timer0
;	-----------------------------------------
_reset_timer0:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	timer.c:17: timer0_int_cnt = 0;
	mov	dptr,#_timer0_int_cnt
	clr	a
	movx	@dptr,a
;	timer.c:18: mins = 0;
	mov	dptr,#_mins
	movx	@dptr,a
;	timer.c:19: seconds = 0;
	mov	dptr,#_seconds
	movx	@dptr,a
;	timer.c:20: ms = 0;
	mov	dptr,#_ms
	movx	@dptr,a
;	timer.c:21: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'init_timer0'
;------------------------------------------------------------
;	timer.c:23: void init_timer0(void)
;	-----------------------------------------
;	 function init_timer0
;	-----------------------------------------
_init_timer0:
;	timer.c:25: reset_timer0();
	lcall	_reset_timer0
;	timer.c:27: TMOD |= 0x01;
	orl	_TMOD,#0x01
;	timer.c:30: TH0 = 0x4C;
	mov	_TH0,#0x4c
;	timer.c:31: TL0 = 0x00;
	mov	_TL0,#0x00
;	timer.c:33: IE |= 0x82;
	orl	_IE,#0x82
;	timer.c:35: TR0=1;
;	assignBit
	setb	_TR0
;	timer.c:36: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_timer0'
;------------------------------------------------------------
;	timer.c:38: void start_timer0(void)
;	-----------------------------------------
;	 function start_timer0
;	-----------------------------------------
_start_timer0:
;	timer.c:40: TR0=1;
;	assignBit
	setb	_TR0
;	timer.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_timer0'
;------------------------------------------------------------
;	timer.c:43: void stop_timer0(void)
;	-----------------------------------------
;	 function stop_timer0
;	-----------------------------------------
_stop_timer0:
;	timer.c:45: TR0=0;
;	assignBit
	clr	_TR0
;	timer.c:46: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'itoa'
;------------------------------------------------------------
;b                         Allocated to stack - _bp -5
;i                         Allocated to stack - _bp +1
;digit                     Allocated to stack - _bp +6
;p                         Allocated to registers r3 r4 r5 
;shifter                   Allocated to registers r2 r7 
;sloc0                     Allocated to stack - _bp +3
;------------------------------------------------------------
;	timer.c:53: void itoa(int i, char* b){
;	-----------------------------------------
;	 function itoa
;	-----------------------------------------
_itoa:
	push	_bp
	mov	_bp,sp
	push	dpl
	push	dph
	mov	a,sp
	add	a,#0x0e
	mov	sp,a
;	timer.c:54: char const digit[] = "0123456789";
	mov	a,_bp
	add	a,#0x06
	mov	r1,a
	mov	@r1,#0x30
	mov	a,r1
	inc	a
	mov	r0,a
	mov	@r0,#0x31
	mov	a,#0x02
	add	a,r1
	mov	r0,a
	mov	@r0,#0x32
	mov	a,#0x03
	add	a,r1
	mov	r0,a
	mov	@r0,#0x33
	mov	a,#0x04
	add	a,r1
	mov	r0,a
	mov	@r0,#0x34
	mov	a,#0x05
	add	a,r1
	mov	r0,a
	mov	@r0,#0x35
	mov	a,#0x06
	add	a,r1
	mov	r0,a
	mov	@r0,#0x36
	mov	a,#0x07
	add	a,r1
	mov	r0,a
	mov	@r0,#0x37
	mov	a,#0x08
	add	a,r1
	mov	r0,a
	mov	@r0,#0x38
	mov	a,#0x09
	add	a,r1
	mov	r0,a
	mov	@r0,#0x39
	mov	a,#0x0a
	add	a,r1
	mov	r0,a
	mov	@r0,#0x00
;	timer.c:55: char* p = b;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar5,@r0
;	timer.c:56: if(i<0){
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	a,@r0
	jnb	acc.7,00102$
;	timer.c:57: *p++ = '-';
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	mov	a,#0x2d
	lcall	__gptrput
	inc	dptr
	mov	r3,dpl
	mov	r4,dph
;	timer.c:58: i *= -1;
	mov	r0,_bp
	inc	r0
	clr	c
	clr	a
	subb	a,@r0
	mov	@r0,a
	inc	r0
	clr	a
	subb	a,@r0
	mov	@r0,a
00102$:
;	timer.c:60: int shifter = i;
	mov	r0,_bp
	inc	r0
	mov	ar2,@r0
	inc	r0
	mov	ar7,@r0
;	timer.c:61: do{
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	@r0,ar3
	inc	r0
	mov	@r0,ar4
	inc	r0
	mov	@r0,ar5
00103$:
;	timer.c:63: ++p;
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	inc	@r0
	cjne	@r0,#0x00,00134$
	inc	r0
	inc	@r0
00134$:
;	timer.c:64: shifter = shifter/10;
	push	ar1
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	dpl,r2
	mov	dph,r7
	lcall	__divsint
	mov	r3,dpl
	mov	r6,dph
	dec	sp
	dec	sp
	pop	ar1
	mov	ar2,r3
	mov	ar7,r6
;	timer.c:65: }while(shifter);
	mov	a,r3
	orl	a,r6
	jnz	00103$
;	timer.c:66: *p = '\0';
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	inc	r0
	mov	b,@r0
	clr	a
	lcall	__gptrput
;	timer.c:67: do{
	mov	a,_bp
	add	a,#0x03
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
00106$:
;	timer.c:69: *--p = digit[i%10];
	dec	r5
	cjne	r5,#0xff,00136$
	dec	r6
00136$:
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__modsint
	mov	r3,dpl
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
	mov	a,r3
	add	a,r1
	mov	r0,a
	mov	ar4,@r0
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r4
	lcall	__gptrput
;	timer.c:70: i = i/10;
	push	ar7
	push	ar6
	push	ar5
	push	ar1
	mov	a,#0x0a
	push	acc
	clr	a
	push	acc
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
	inc	r0
	mov	dph,@r0
	lcall	__divsint
	mov	r0,_bp
	inc	r0
	mov	@r0,dpl
	inc	r0
	mov	@r0,dph
	dec	sp
	dec	sp
	pop	ar1
	pop	ar5
	pop	ar6
	pop	ar7
;	timer.c:71: }while(i);
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	inc	r0
	orl	a,@r0
	jnz	00106$
;	timer.c:72: return;
;	timer.c:73: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'update_timer_display'
;------------------------------------------------------------
;min_str                   Allocated to stack - _bp +8
;sec_str                   Allocated to stack - _bp +4
;ms_str                    Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	timer.c:77: static inline void update_timer_display(void)
;	-----------------------------------------
;	 function update_timer_display
;	-----------------------------------------
_update_timer_display:
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0f
	mov	sp,a
;	timer.c:80: ms++;
	mov	dptr,#_ms
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	timer.c:82: if(ms >= 10){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00121$
00121$:
	jc	00102$
;	timer.c:83: ms = 0;
	mov	dptr,#_ms
	clr	a
	movx	@dptr,a
;	timer.c:84: seconds++;
	mov	dptr,#_seconds
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00102$:
;	timer.c:86: if(seconds >= 60){
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3c,00123$
00123$:
	jc	00104$
;	timer.c:87: mins++;
	mov	dptr,#_mins
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	timer.c:88: seconds = 0;
	mov	dptr,#_seconds
	clr	a
	movx	@dptr,a
00104$:
;	timer.c:91: if(mins >= 60){
	mov	dptr,#_mins
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3c,00125$
00125$:
	jc	00106$
;	timer.c:92: hrs++;
	mov	dptr,#_hrs
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	timer.c:93: mins = 0;
	mov	dptr,#_mins
	clr	a
	movx	@dptr,a
00106$:
;	timer.c:100: itoa(mins, min_str);
	mov	a,_bp
	add	a,#0x08
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	mov	dptr,#_mins
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r2
	lcall	_itoa
	dec	sp
	dec	sp
	dec	sp
;	timer.c:101: itoa(seconds, sec_str);
	mov	a,_bp
	add	a,#0x04
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r2,a
	mov	r5,#0x00
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r5
	lcall	_itoa
	dec	sp
	dec	sp
	dec	sp
;	timer.c:102: itoa(ms, ms_str);
	mov	a,_bp
	add	a,#0x0c
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dptr,#_ms
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r3
	lcall	_itoa
	dec	sp
	dec	sp
	dec	sp
;	timer.c:105: lcdgotoxy(3,10);
	mov	a,#0x0a
	push	acc
	mov	dpl,#0x03
	lcall	_lcdgotoxy
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	timer.c:107: lcdputstr(min_str);
	mov	r4,#0x00
	mov	r3,#0x40
	mov	dpl,r7
	mov	dph,r4
	mov	b,r3
	push	ar6
	push	ar5
	lcall	_lcdputstr
;	timer.c:108: lcdputch(':');
	mov	dpl,#0x3a
	lcall	_lcdputch
	pop	ar5
	pop	ar6
;	timer.c:109: lcdputstr(sec_str);
	mov	r7,#0x00
	mov	r4,#0x40
	mov	dpl,r6
	mov	dph,r7
	mov	b,r4
	push	ar5
	lcall	_lcdputstr
;	timer.c:110: lcdputch('.');
	mov	dpl,#0x2e
	lcall	_lcdputch
	pop	ar5
;	timer.c:111: lcdputstr(ms_str);
	mov	r7,#0x00
	mov	r6,#0x40
	mov	dpl,r5
	mov	dph,r7
	mov	b,r6
	lcall	_lcdputstr
;	timer.c:113: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_fattime'
;------------------------------------------------------------
;	timer.c:115: uint32_t get_fattime(void)
;	-----------------------------------------
;	 function get_fattime
;	-----------------------------------------
_get_fattime:
;	timer.c:120: | (((uint32_t)hrs) << 11)
	mov	dptr,#_hrs
	movx	a,@dptr
	mov	r7,a
	clr	a
	mov	r5,a
	xch	a,r5
	swap	a
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
	mov	r4,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0x07
	orl	a,r5
	mov	r5,a
	mov	a,r7
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r6,a
	mov	r7,#0x00
	orl	ar5,#0x85
	orl	ar4,#0x55
;	timer.c:121: | (((uint32_t)mins) << 5)
	mov	dptr,#_mins
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r2
	swap	a
	rl	a
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	anl	a,#0xe0
	xch	a,r2
	xrl	a,r2
	mov	r3,a
	mov	a,r1
	swap	a
	rl	a
	anl	a,#0x1f
	orl	a,r2
	mov	r2,a
	mov	a,r1
	swap	a
	rl	a
	anl	a,#0xe0
	xch	a,r0
	swap	a
	rl	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xe0
	xch	a,r0
	xrl	a,r0
	mov	r1,a
	mov	a,r0
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
;	timer.c:122: | (((uint32_t)seconds) >> 1));
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r0,a
	clr	a
	mov	r1,a
	mov	r2,a
	clr	c
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
	mov	a,r1
	rrc	a
	mov	r1,a
	mov	a,r0
	rrc	a
	orl	ar7,a
	mov	a,r1
	orl	ar6,a
	mov	a,r2
	orl	ar5,a
	mov	a,r3
	orl	ar4,a
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r4
;	timer.c:123: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0_IRQHandler'
;------------------------------------------------------------
;min_str                   Allocated to stack - _bp +8
;sec_str                   Allocated to stack - _bp +4
;ms_str                    Allocated to stack - _bp +12
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	timer.c:130: void Timer0_IRQHandler(void) __interrupt(1)
;	-----------------------------------------
;	 function Timer0_IRQHandler
;	-----------------------------------------
_Timer0_IRQHandler:
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
	push	_bp
	mov	a,sp
	mov	_bp,a
	add	a,#0x0f
	mov	sp,a
;	timer.c:132: timer0_int_cnt++;
	mov	dptr,#_timer0_int_cnt
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	timer.c:135: if((timer0_int_cnt & 0x1) == 0){
	movx	a,@dptr
	jnb	acc.0,00128$
	ljmp	00110$
00128$:
;	timer.c:136: timer0_int_cnt = 0;
	mov	dptr,#_timer0_int_cnt
	clr	a
	movx	@dptr,a
;	timer.c:139: cursor_pos = get_cursor_pos();
	lcall	_get_cursor_pos
	mov	a,dpl
	mov	dptr,#_cursor_pos
	movx	@dptr,a
;	timer.c:80: ms++;
	mov	dptr,#_ms
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	timer.c:82: if(ms >= 10){
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x0a,00129$
00129$:
	jc	00104$
;	timer.c:83: ms = 0;
	mov	dptr,#_ms
	clr	a
	movx	@dptr,a
;	timer.c:84: seconds++;
	mov	dptr,#_seconds
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00104$:
;	timer.c:86: if(seconds >= 60){
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3c,00131$
00131$:
	jc	00106$
;	timer.c:87: mins++;
	mov	dptr,#_mins
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	timer.c:88: seconds = 0;
	mov	dptr,#_seconds
	clr	a
	movx	@dptr,a
00106$:
;	timer.c:91: if(mins >= 60){
	mov	dptr,#_mins
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0x3c,00133$
00133$:
	jc	00108$
;	timer.c:92: hrs++;
	mov	dptr,#_hrs
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	timer.c:93: mins = 0;
	mov	dptr,#_mins
	clr	a
	movx	@dptr,a
00108$:
;	timer.c:100: itoa(mins, min_str);
	mov	a,_bp
	add	a,#0x08
	mov	r7,a
	mov	r4,a
	mov	r5,#0x00
	mov	r6,#0x40
	mov	dptr,#_mins
	movx	a,@dptr
	mov	r3,a
	mov	r2,#0x00
	push	ar7
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r2
	lcall	_itoa
	dec	sp
	dec	sp
	dec	sp
;	timer.c:101: itoa(seconds, sec_str);
	mov	a,_bp
	add	a,#0x04
	mov	r6,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar6
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	r2,a
	mov	r5,#0x00
	push	ar6
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r2
	mov	dph,r5
	lcall	_itoa
	dec	sp
	dec	sp
	dec	sp
;	timer.c:102: itoa(ms, ms_str);
	mov	a,_bp
	add	a,#0x0c
	mov	r5,a
	mov	r0,_bp
	inc	r0
	mov	@r0,ar5
	inc	r0
	mov	@r0,#0x00
	inc	r0
	mov	@r0,#0x40
	mov	dptr,#_ms
	movx	a,@dptr
	mov	r4,a
	mov	r3,#0x00
	push	ar5
	mov	r0,_bp
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	inc	r0
	mov	a,@r0
	push	acc
	mov	dpl,r4
	mov	dph,r3
	lcall	_itoa
	dec	sp
	dec	sp
	dec	sp
;	timer.c:105: lcdgotoxy(3,10);
	mov	a,#0x0a
	push	acc
	mov	dpl,#0x03
	lcall	_lcdgotoxy
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
;	timer.c:107: lcdputstr(min_str);
	mov	r4,#0x00
	mov	r3,#0x40
	mov	dpl,r7
	mov	dph,r4
	mov	b,r3
	push	ar6
	push	ar5
	lcall	_lcdputstr
;	timer.c:108: lcdputch(':');
	mov	dpl,#0x3a
	lcall	_lcdputch
	pop	ar5
	pop	ar6
;	timer.c:109: lcdputstr(sec_str);
	mov	r7,#0x00
	mov	r4,#0x40
	mov	dpl,r6
	mov	dph,r7
	mov	b,r4
	push	ar5
	lcall	_lcdputstr
;	timer.c:110: lcdputch('.');
	mov	dpl,#0x2e
	lcall	_lcdputch
	pop	ar5
;	timer.c:111: lcdputstr(ms_str);
	mov	r7,#0x00
	mov	r6,#0x40
	mov	dpl,r5
	mov	dph,r7
	mov	b,r6
	lcall	_lcdputstr
;	timer.c:142: lcdgotoaddr(cursor_pos);
	mov	dptr,#_cursor_pos
	movx	a,@dptr
	mov	dpl,a
	lcall	_lcdgotoaddr
00110$:
;	timer.c:144: }
	mov	sp,_bp
	pop	_bp
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
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__hrs:
	.db #0x00	; 0
__xinit__mins:
	.db #0x00	; 0
__xinit__seconds:
	.db #0x00	; 0
__xinit__ms:
	.db #0x00	; 0
__xinit__timer0_int_cnt:
	.db #0x00	; 0
__xinit__cursor_pos:
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
