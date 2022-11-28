;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module lcd
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _lcd_set_ram_addr
	.globl _lcd_read_data_from_ram
	.globl _lcdinit
	.globl _lcdbusywait
	.globl _lcdgotoaddr
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdputstr
	.globl _get_cursor_pos
	.globl _lcdclear
	.globl _lcdcreatechar
	.globl _display_lcd_char
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
_ptr:
	.ds 2
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
;Allocation info for local variables in function 'lcd_set_ram_addr'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:32: void lcd_set_ram_addr(uint8_t addr)
;	-----------------------------------------
;	 function lcd_set_ram_addr
;	-----------------------------------------
_lcd_set_ram_addr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,dpl
;	lcd.c:35: lcdbusywait();
	push	ar7
	lcall	_lcdbusywait
	pop	ar7
;	lcd.c:37: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:38: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:40: *ptr = addr;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcd.c:41: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_read_data_from_ram'
;------------------------------------------------------------
;	lcd.c:45: uint8_t lcd_read_data_from_ram(void)
;	-----------------------------------------
;	 function lcd_read_data_from_ram
;	-----------------------------------------
_lcd_read_data_from_ram:
;	lcd.c:47: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:48: RW = 1;
;	assignBit
	setb	_P1_5
;	lcd.c:50: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:52: RS = 1;
;	assignBit
	setb	_P1_4
;	lcd.c:53: RW = 1;
;	assignBit
	setb	_P1_5
;	lcd.c:55: return (uint8_t)*ptr;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
;	lcd.c:56: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_lcd'
;------------------------------------------------------------
;data                      Allocated to registers r5 r6 r7 
;------------------------------------------------------------
;	lcd.c:60: static inline void read_lcd(unsigned char *data)
;	-----------------------------------------
;	 function read_lcd
;	-----------------------------------------
_read_lcd:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.c:62: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:63: RW = 1;
;	assignBit
	setb	_P1_5
;	lcd.c:64: *data = *ptr;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r3
	lcall	__gptrput
;	lcd.c:66: lcdbusywait();
;	lcd.c:67: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'write_data_lcd'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:71: static inline void write_data_lcd(unsigned char data)
;	-----------------------------------------
;	 function write_data_lcd
;	-----------------------------------------
_write_data_lcd:
	mov	r7,dpl
;	lcd.c:73: RS = 1;
;	assignBit
	setb	_P1_4
;	lcd.c:74: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:75: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcd.c:77: lcdbusywait();
;	lcd.c:78: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'write_cmd_lcd'
;------------------------------------------------------------
;data                      Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:82: static inline void write_cmd_lcd(unsigned char data)
;	-----------------------------------------
;	 function write_cmd_lcd
;	-----------------------------------------
_write_cmd_lcd:
	mov	r7,dpl
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
;	lcd.c:89: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdinit'
;------------------------------------------------------------
;__1310720001              Allocated to registers 
;data                      Allocated to registers 
;__1310720003              Allocated to registers 
;data                      Allocated to registers 
;__1310720005              Allocated to registers 
;data                      Allocated to registers 
;__1310720007              Allocated to registers 
;data                      Allocated to registers 
;__1310720009              Allocated to registers 
;data                      Allocated to registers 
;------------------------------------------------------------
;	lcd.c:95: void lcdinit()
;	-----------------------------------------
;	 function lcdinit
;	-----------------------------------------
_lcdinit:
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x30
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x38
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x0f
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x01
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x80
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
;	lcd.c:106: write_cmd_lcd(0x80);
;	lcd.c:108: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;	lcd.c:122: void lcdbusywait()
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	lcd.c:124: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:125: RW = 1;
;	assignBit
	setb	_P1_5
;	lcd.c:126: while(*ptr & 0x80);
00101$:
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	a,r6
	jb	acc.7,00101$
;	lcd.c:127: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddr'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;__1310720011              Allocated to registers r7 
;data                      Allocated to registers 
;------------------------------------------------------------
;	lcd.c:132: void lcdgotoaddr(unsigned char addr)
;	-----------------------------------------
;	 function lcdgotoaddr
;	-----------------------------------------
_lcdgotoaddr:
	mov	r7,dpl
;	lcd.c:135: write_cmd_lcd(0x80 | addr);
	orl	ar7,#0x80
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
;	lcd.c:136: return;
;	lcd.c:137: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated to stack - _bp -3
;row                       Allocated to registers r7 
;------------------------------------------------------------
;	lcd.c:144: void lcdgotoxy(unsigned char row, unsigned char column)
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
	push	_bp
	mov	_bp,sp
;	lcd.c:146: switch(row)
	mov	a,dpl
	mov	r7,a
	add	a,#0xff - 0x03
	jc	00107$
	mov	a,r7
	add	a,r7
;	lcd.c:148: case 0:
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	lcd.c:150: lcdgotoaddr(column);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	dpl,@r0
	lcall	_lcdgotoaddr
;	lcd.c:151: break;
;	lcd.c:153: case 1:
	sjmp	00107$
00102$:
;	lcd.c:155: lcdgotoaddr(0x40 + column);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar7,@r0
	mov	a,#0x40
	add	a,r7
	mov	dpl,a
	lcall	_lcdgotoaddr
;	lcd.c:156: break;
;	lcd.c:158: case 2:
	sjmp	00107$
00103$:
;	lcd.c:160: lcdgotoaddr(0x10 + column);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar7,@r0
	mov	a,#0x10
	add	a,r7
	mov	dpl,a
	lcall	_lcdgotoaddr
;	lcd.c:161: break;
;	lcd.c:163: case 3:
	sjmp	00107$
00104$:
;	lcd.c:165: lcdgotoaddr(0x50 + column);
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar7,@r0
	mov	a,#0x50
	add	a,r7
	mov	dpl,a
	lcall	_lcdgotoaddr
;	lcd.c:171: }
00107$:
;	lcd.c:172: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated to registers r7 
;__1310720013              Allocated to registers 
;data                      Allocated to registers 
;------------------------------------------------------------
;	lcd.c:177: void lcdputch(char cc)
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
	mov	r7,dpl
;	lcd.c:73: RS = 1;
;	assignBit
	setb	_P1_4
;	lcd.c:74: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:75: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcd.c:77: lcdbusywait();
;	lcd.c:179: write_data_lcd(cc);
;	lcd.c:180: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated to registers 
;cursor_pos                Allocated to registers r4 
;------------------------------------------------------------
;	lcd.c:187: void lcdputstr(char *ss)
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	lcd.c:189: while(*ss){
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	jnz	00137$
	ret
00137$:
;	lcd.c:192: cursor_pos = get_cursor_pos();
	push	ar7
	push	ar6
	push	ar5
	lcall	_get_cursor_pos
	mov	r4,dpl
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:193: switch(cursor_pos){
	cjne	r4,#0x0f,00138$
	sjmp	00101$
00138$:
	cjne	r4,#0x1f,00139$
	sjmp	00103$
00139$:
	cjne	r4,#0x4f,00140$
	sjmp	00102$
00140$:
	cjne	r4,#0x5f,00141$
	sjmp	00104$
00141$:
	ljmp	00105$
;	lcd.c:194: case 0xF:{
00101$:
;	lcd.c:195: lcdputch(*ss);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
;	lcd.c:196: lcdgotoaddr(0x40);
	mov	dpl,#0x40
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:197: break;
	ljmp	00106$
;	lcd.c:199: case 0x4F:{
00102$:
;	lcd.c:200: lcdputch(*ss);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
;	lcd.c:201: lcdgotoaddr(0x10);
	mov	dpl,#0x10
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:202: break;
;	lcd.c:204: case 0x1F:{
	sjmp	00106$
00103$:
;	lcd.c:205: lcdputch(*ss);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
;	lcd.c:206: lcdgotoaddr(0x1F);
	mov	dpl,#0x1f
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:207: break;
;	lcd.c:209: case 0x5F:{
	sjmp	00106$
00104$:
;	lcd.c:210: lcdputch(*ss);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
;	lcd.c:211: lcdgotoaddr(0x00);
	mov	dpl,#0x00
	lcall	_lcdgotoaddr
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:212: break;
;	lcd.c:214: default:{
	sjmp	00106$
00105$:
;	lcd.c:215: lcdputch(*ss);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_lcdputch
	pop	ar5
	pop	ar6
	pop	ar7
;	lcd.c:218: }
00106$:
;	lcd.c:219: ss++;
	inc	r5
	cjne	r5,#0x00,00142$
	inc	r6
00142$:
;	lcd.c:221: }
	ljmp	00107$
;------------------------------------------------------------
;Allocation info for local variables in function 'get_cursor_pos'
;------------------------------------------------------------
;cursor_pos                Allocated to stack - _bp +1
;__1310720015              Allocated to registers r7 r6 r5 
;data                      Allocated to registers 
;------------------------------------------------------------
;	lcd.c:225: unsigned char get_cursor_pos(void)
;	-----------------------------------------
;	 function get_cursor_pos
;	-----------------------------------------
_get_cursor_pos:
	push	_bp
	mov	_bp,sp
	inc	sp
;	lcd.c:228: read_lcd(&cursor_pos);
	mov	r7,_bp
	inc	r7
	mov	r6,#0x00
	mov	r5,#0x40
;	lcd.c:62: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:63: RW = 1;
;	assignBit
	setb	_P1_5
;	lcd.c:64: *data = *ptr;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dpl,r3
	mov	dph,r4
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r7
	mov	dph,r6
	mov	b,r5
	mov	a,r3
	lcall	__gptrput
;	lcd.c:66: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:229: return cursor_pos;
	mov	r0,_bp
	inc	r0
	mov	dpl,@r0
;	lcd.c:230: }
	dec	sp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;__1310720017              Allocated to registers 
;data                      Allocated to registers 
;------------------------------------------------------------
;	lcd.c:236: void lcdclear()
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	lcd.c:84: RS = 0;
;	assignBit
	clr	_P1_4
;	lcd.c:85: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:86: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r4,#0x01
	mov	r5,#0x00
	mov	dpl,r6
	mov	dph,r7
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
;	lcd.c:88: lcdbusywait();
;	lcd.c:238: write_cmd_lcd(0x01);
;	lcd.c:239: }
	ljmp	_lcdbusywait
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdcreatechar'
;------------------------------------------------------------
;row_vals                  Allocated to stack - _bp -5
;ccode                     Allocated to registers r7 
;addr                      Allocated to registers r4 
;data                      Allocated to registers r3 
;i                         Allocated to registers r6 
;__2621440019              Allocated to registers 
;data                      Allocated to registers 
;------------------------------------------------------------
;	lcd.c:247: void lcdcreatechar(unsigned char ccode, unsigned char row_vals[])
;	-----------------------------------------
;	 function lcdcreatechar
;	-----------------------------------------
_lcdcreatechar:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	lcd.c:253: for(i=0;i<8;i++){
	mov	r6,#0x00
00103$:
;	lcd.c:255: addr = 0x40 | ((ccode & 0x07) << 3) | (i & 0x07);
	mov	ar5,r7
	anl	ar5,#0x07
	mov	a,r5
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r5,a
	orl	ar5,#0x40
	mov	a,#0x07
	anl	a,r6
	mov	r4,a
	mov	a,r5
	orl	ar4,a
;	lcd.c:258: lcd_set_ram_addr(addr);
	mov	dpl,r4
	push	ar7
	push	ar6
	lcall	_lcd_set_ram_addr
	pop	ar6
;	lcd.c:260: data = row_vals[i] & 0x1F;
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	a,r6
	add	a,@r0
	mov	r3,a
	clr	a
	inc	r0
	addc	a,@r0
	mov	r4,a
	inc	r0
	mov	ar5,@r0
	mov	dpl,r3
	mov	dph,r4
	mov	b,r5
	lcall	__gptrget
	mov	r3,a
	anl	ar3,#0x1f
;	lcd.c:73: RS = 1;
;	assignBit
	setb	_P1_4
;	lcd.c:74: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:75: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r2,#0x00
	mov	dpl,r4
	mov	dph,r5
	mov	a,r3
	movx	@dptr,a
	mov	a,r2
	inc	dptr
	movx	@dptr,a
;	lcd.c:77: lcdbusywait();
	push	ar6
	lcall	_lcdbusywait
	pop	ar6
	pop	ar7
;	lcd.c:253: for(i=0;i<8;i++){
	inc	r6
	cjne	r6,#0x08,00112$
00112$:
	jc	00103$
;	lcd.c:263: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'display_lcd_char'
;------------------------------------------------------------
;addr                      Allocated to stack - _bp -3
;ccode                     Allocated to registers r7 
;__1310720021              Allocated to registers 
;data                      Allocated to registers 
;------------------------------------------------------------
;	lcd.c:270: void display_lcd_char(unsigned char ccode, unsigned char addr)
;	-----------------------------------------
;	 function display_lcd_char
;	-----------------------------------------
_display_lcd_char:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	lcd.c:273: lcd_set_ram_addr((1 << 7) | (addr & 0x7F));
	mov	a,_bp
	add	a,#0xfd
	mov	r0,a
	mov	ar6,@r0
	anl	ar6,#0x7f
	orl	ar6,#0x80
	mov	dpl,r6
	push	ar7
	lcall	_lcd_set_ram_addr
	pop	ar7
;	lcd.c:73: RS = 1;
;	assignBit
	setb	_P1_4
;	lcd.c:74: RW = 0;
;	assignBit
	clr	_P1_5
;	lcd.c:75: *ptr=data;
	mov	dptr,#_ptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r6
	mov	a,r7
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	lcd.c:77: lcdbusywait();
	lcall	_lcdbusywait
;	lcd.c:275: write_data_lcd(ccode);
;	lcd.c:276: }
	pop	_bp
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__ptr:
	.byte #0x00,#0xf0
	.area CABS    (ABS,CODE)
