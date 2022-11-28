;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _write_io_port
	.globl _printf
	.globl _printf_small
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
	.globl _i2c_hex_dump_PARM_2
	.globl _i2c_write_byte_PARM_2
	.globl _i2c_init
	.globl _i2c_start
	.globl _send_byte
	.globl _read_byte
	.globl _i2c_write_byte
	.globl _i2c_read_byte
	.globl _i2c_stop
	.globl _i2c_hex_dump
	.globl _reset_eeprom
	.globl _delay_us
	.globl _i2c_send_nack
	.globl _EXT0_IRQHandler
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
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
_i2c_hex_dump_start_address_65536_72:
	.ds 2
_i2c_hex_dump_sloc0_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_delay_us_sloc0_1_0:
	.ds 4
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
_send_byte_send_byte_65536_57:
	.ds 1
_read_byte_rx_data_65536_63:
	.ds 1
_i2c_write_byte_PARM_2:
	.ds 1
_i2c_write_byte_addr_65536_66:
	.ds 2
_i2c_read_byte_addr_65536_68:
	.ds 2
_i2c_hex_dump_PARM_2:
	.ds 2
_delay_us_delay_65536_88:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'i2c_init'
;------------------------------------------------------------
;	i2c.c:19: void i2c_init(void)
;	-----------------------------------------
;	 function i2c_init
;	-----------------------------------------
_i2c_init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c.c:21: SDA_High;
;	assignBit
	setb	_P1_6
;	i2c.c:22: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:23: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_start'
;------------------------------------------------------------
;	i2c.c:28: void i2c_start(void)
;	-----------------------------------------
;	 function i2c_start
;	-----------------------------------------
_i2c_start:
;	i2c.c:30: SDA_High;
;	assignBit
	setb	_P1_6
;	i2c.c:31: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:32: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:33: SDA_Low;
;	assignBit
	clr	_P1_6
;	i2c.c:34: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
;	i2c.c:35: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'send_byte'
;------------------------------------------------------------
;send_byte                 Allocated with name '_send_byte_send_byte_65536_57'
;i                         Allocated with name '_send_byte_i_131072_59'
;------------------------------------------------------------
;	i2c.c:48: __sbit send_byte(uint8_t send_byte)
;	-----------------------------------------
;	 function send_byte
;	-----------------------------------------
_send_byte:
	mov	a,dpl
	mov	dptr,#_send_byte_send_byte_65536_57
	movx	@dptr,a
;	i2c.c:50: for(uint8_t i = 0; i < BYTE_SIZE; i++)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
00109$:
	cjne	r6,#0x08,00134$
00134$:
	jnc	00104$
;	i2c.c:52: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:53: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	i2c.c:55: if((send_byte << i) & MSB)
	mov	ar4,r7
	mov	r5,#0x00
	mov	b,r6
	inc	b
	sjmp	00137$
00136$:
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
00137$:
	djnz	b,00136$
	mov	a,r4
	jnb	acc.7,00102$
;	i2c.c:57: SDA_High;
;	assignBit
	setb	_P1_6
	sjmp	00103$
00102$:
;	i2c.c:61: SDA_Low;
;	assignBit
	clr	_P1_6
00103$:
;	i2c.c:65: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	lcall	_delay_us
;	i2c.c:66: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:67: delay_us(bitDelay);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
	pop	ar6
	pop	ar7
;	i2c.c:50: for(uint8_t i = 0; i < BYTE_SIZE; i++)
	inc	r6
	sjmp	00109$
00104$:
;	i2c.c:71: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:72: SDA_High; /* To accept input */
;	assignBit
	setb	_P1_6
;	i2c.c:73: delay_us(bitDelay);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:76: while(SDA);
00105$:
	jb	_P1_6,00105$
;	i2c.c:77: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:80: delay_us(bitDelay/2);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:81: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:82: delay_us(bitDelay/2);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:84: return SDA;
	mov	c,_P1_6
;	i2c.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_byte'
;------------------------------------------------------------
;rx_bit                    Allocated with name '_read_byte_rx_bit_65536_63'
;rx_data                   Allocated with name '_read_byte_rx_data_65536_63'
;i                         Allocated with name '_read_byte_i_131072_64'
;------------------------------------------------------------
;	i2c.c:88: uint8_t read_byte()
;	-----------------------------------------
;	 function read_byte
;	-----------------------------------------
_read_byte:
;	i2c.c:90: uint8_t rx_bit, rx_data = 0;
	mov	dptr,#_read_byte_rx_data_65536_63
	clr	a
	movx	@dptr,a
;	i2c.c:91: for(uint8_t i = 0; i < BYTE_SIZE; i++)
	mov	r7,#0x00
00103$:
	cjne	r7,#0x08,00116$
00116$:
	jnc	00101$
;	i2c.c:93: SDA_High; /* To accept input */
;	assignBit
	setb	_P1_6
;	i2c.c:96: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:97: delay_us(bitDelay/2);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_us
	pop	ar7
;	i2c.c:98: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:100: rx_bit = SDA;
	mov	c,_P1_6
	clr	a
	rlc	a
	mov	r6,a
;	i2c.c:101: rx_data |= (rx_bit << (7 - i)); /* MSB is received first */
	mov	ar5,r7
	mov	a,#0x07
	clr	c
	subb	a,r5
	mov	r5,a
	mov	b,r5
	inc	b
	mov	a,r6
	sjmp	00120$
00118$:
	add	a,acc
00120$:
	djnz	b,00118$
	mov	r5,a
	mov	dptr,#_read_byte_rx_data_65536_63
	movx	a,@dptr
	orl	a,r5
	movx	@dptr,a
;	i2c.c:102: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_us
;	i2c.c:103: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:104: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
	pop	ar7
;	i2c.c:91: for(uint8_t i = 0; i < BYTE_SIZE; i++)
	inc	r7
	sjmp	00103$
00101$:
;	i2c.c:107: return rx_data;
	mov	dptr,#_read_byte_rx_data_65536_63
	movx	a,@dptr
;	i2c.c:109: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_write_byte'
;------------------------------------------------------------
;data_byte                 Allocated with name '_i2c_write_byte_PARM_2'
;addr                      Allocated with name '_i2c_write_byte_addr_65536_66'
;------------------------------------------------------------
;	i2c.c:113: void i2c_write_byte(uint16_t addr, uint8_t data_byte)
;	-----------------------------------------
;	 function i2c_write_byte
;	-----------------------------------------
_i2c_write_byte:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_write_byte_addr_65536_66
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	i2c.c:115: i2c_start(); /* Sending start bit */
	lcall	_i2c_start
;	i2c.c:116: send_byte(WR_CMD | (((addr >> 8) & 0x7) << 1)); /* Sending control byte with page block */
	mov	dptr,#_i2c_write_byte_addr_65536_66
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x07
	add	a,acc
	mov	r5,a
	orl	ar5,#0xa0
	mov	dpl,r5
	push	ar7
	push	ar6
	lcall	_send_byte
	pop	ar6
	pop	ar7
;	i2c.c:117: send_byte(addr & 0xFF); /* Sending device address */
	mov	dpl,r6
	lcall	_send_byte
;	i2c.c:118: send_byte(data_byte); /* Sending actual data byte */
	mov	dptr,#_i2c_write_byte_PARM_2
	movx	a,@dptr
	mov	dpl,a
	lcall	_send_byte
;	i2c.c:119: i2c_stop(); /* Sending stop bit */
;	i2c.c:120: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_read_byte'
;------------------------------------------------------------
;addr                      Allocated with name '_i2c_read_byte_addr_65536_68'
;rx_data                   Allocated with name '_i2c_read_byte_rx_data_65536_69'
;------------------------------------------------------------
;	i2c.c:123: unsigned char i2c_read_byte(uint16_t addr)
;	-----------------------------------------
;	 function i2c_read_byte
;	-----------------------------------------
_i2c_read_byte:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_i2c_read_byte_addr_65536_68
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	i2c.c:126: i2c_start();
	lcall	_i2c_start
;	i2c.c:130: send_byte(WR_CMD | (((addr >> 8) & PAGE_BLOCK)<< 1));
	mov	dptr,#_i2c_read_byte_addr_65536_68
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	anl	a,#0x07
	add	a,acc
	mov	r5,a
	mov	a,#0xa0
	orl	a,r5
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_send_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	i2c.c:131: send_byte(addr & 0xFF);
	mov	dpl,r6
	push	ar5
	lcall	_send_byte
;	i2c.c:133: i2c_start();
	lcall	_i2c_start
	pop	ar5
;	i2c.c:136: send_byte(RD_CMD | (((addr >> 8) & PAGE_BLOCK) << 1));
	orl	ar5,#0xa1
	mov	dpl,r5
	lcall	_send_byte
;	i2c.c:138: rx_data = read_byte();
	lcall	_read_byte
	mov	r7,dpl
;	i2c.c:140: i2c_send_nack(); /* Sending NACK after read */
	push	ar7
	lcall	_i2c_send_nack
;	i2c.c:141: i2c_stop();
	lcall	_i2c_stop
	pop	ar7
;	i2c.c:142: return rx_data;
	mov	dpl,r7
;	i2c.c:143: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_stop'
;------------------------------------------------------------
;	i2c.c:147: void i2c_stop(void)
;	-----------------------------------------
;	 function i2c_stop
;	-----------------------------------------
_i2c_stop:
;	i2c.c:149: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:150: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:151: SDA_Low;
;	assignBit
	clr	_P1_6
;	i2c.c:152: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:153: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:154: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:155: SDA_High;
;	assignBit
	setb	_P1_6
;	i2c.c:156: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
;	i2c.c:157: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_hex_dump'
;------------------------------------------------------------
;start_address             Allocated with name '_i2c_hex_dump_start_address_65536_72'
;i                         Allocated to registers r5 
;sloc0                     Allocated with name '_i2c_hex_dump_sloc0_1_0'
;end_address               Allocated with name '_i2c_hex_dump_PARM_2'
;num_elements              Allocated with name '_i2c_hex_dump_num_elements_65537_74'
;loop_count                Allocated with name '_i2c_hex_dump_loop_count_65537_74'
;last_line_num             Allocated with name '_i2c_hex_dump_last_line_num_65537_74'
;data_byte                 Allocated with name '_i2c_hex_dump_data_byte_65537_74'
;j                         Allocated with name '_i2c_hex_dump_j_262145_77'
;i                         Allocated with name '_i2c_hex_dump_i_131073_80'
;------------------------------------------------------------
;	i2c.c:161: void i2c_hex_dump(__data uint16_t start_address, uint16_t end_address)
;	-----------------------------------------
;	 function i2c_hex_dump
;	-----------------------------------------
_i2c_hex_dump:
	mov	_i2c_hex_dump_start_address_65536_72,dpl
	mov	(_i2c_hex_dump_start_address_65536_72 + 1),dph
;	i2c.c:163: printf("Printing hexdump from start address [%x] to end address [%x]\r\n", start_address, end_address);
	mov	dptr,#_i2c_hex_dump_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	push	ar5
	push	ar4
	push	ar4
	push	ar5
	push	_i2c_hex_dump_start_address_65536_72
	push	(_i2c_hex_dump_start_address_65536_72 + 1)
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xf9
	mov	sp,a
	pop	ar4
	pop	ar5
;	i2c.c:165: uint16_t num_elements = end_address - start_address + 1; /* Number of elements */
	mov	a,r4
	clr	c
	subb	a,_i2c_hex_dump_start_address_65536_72
	mov	r4,a
	mov	a,r5
	subb	a,(_i2c_hex_dump_start_address_65536_72 + 1)
	mov	r5,a
	inc	r4
	cjne	r4,#0x00,00148$
	inc	r5
00148$:
;	i2c.c:166: uint8_t loop_count = num_elements / 16; /* Number of lines with 16 elements */
	mov	ar2,r4
	mov	a,r5
	swap	a
	xch	a,r2
	swap	a
	anl	a,#0x0f
	xrl	a,r2
	xch	a,r2
	anl	a,#0x0f
	xch	a,r2
	xrl	a,r2
	xch	a,r2
	mov	r3,a
;	i2c.c:167: uint8_t last_line_num = num_elements % 16; /* Number of elements on the last line */
	anl	ar4,#0x0f
;	i2c.c:171: for(__data uint8_t i = 0; i < loop_count; i++)
	mov	r5,#0x00
00110$:
	clr	c
	mov	a,r5
	subb	a,r2
	jc	00149$
	ljmp	00102$
00149$:
;	i2c.c:173: printf("0x%03X\t", start_address + (i << 4));
	mov	ar1,r5
	clr	a
	xch	a,r1
	swap	a
	xch	a,r1
	xrl	a,r1
	xch	a,r1
	anl	a,#0xf0
	xch	a,r1
	xrl	a,r1
	mov	r3,a
	mov	_i2c_hex_dump_sloc0_1_0,_i2c_hex_dump_start_address_65536_72
	mov	(_i2c_hex_dump_sloc0_1_0 + 1),(_i2c_hex_dump_start_address_65536_72 + 1)
	mov	a,r1
	add	a,_i2c_hex_dump_sloc0_1_0
	mov	r1,a
	mov	a,r3
	addc	a,(_i2c_hex_dump_sloc0_1_0 + 1)
	mov	r3,a
	push	ar5
	push	ar4
	push	ar2
	push	ar1
	push	ar3
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar4
	pop	ar5
;	i2c.c:174: for(uint8_t j = 0; j < 16; j++)
	mov	r3,#0x00
00107$:
	cjne	r3,#0x10,00150$
00150$:
	jnc	00101$
;	i2c.c:176: data_byte = i2c_read_byte(start_address + (i << 4) + j); /* Address of data to be read */
	mov	ar0,r5
	clr	a
	xch	a,r0
	swap	a
	xch	a,r0
	xrl	a,r0
	xch	a,r0
	anl	a,#0xf0
	xch	a,r0
	xrl	a,r0
	mov	r1,a
	mov	a,r0
	add	a,_i2c_hex_dump_sloc0_1_0
	mov	r0,a
	mov	a,r1
	addc	a,(_i2c_hex_dump_sloc0_1_0 + 1)
	mov	r1,a
	mov	ar6,r3
	mov	r7,#0x00
	mov	a,r6
	add	a,r0
	mov	r0,a
	mov	a,r7
	addc	a,r1
	mov	r1,a
	mov	dpl,r0
	mov	dph,r1
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_i2c_read_byte
	mov	r7,dpl
;	i2c.c:177: printf("%02X ", data_byte);
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
;	i2c.c:174: for(uint8_t j = 0; j < 16; j++)
	inc	r3
	sjmp	00107$
00101$:
;	i2c.c:179: printf_small("\r\n");
	push	ar5
	push	ar4
	push	ar2
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf_small
	dec	sp
	dec	sp
	dec	sp
	pop	ar2
	pop	ar4
	pop	ar5
;	i2c.c:171: for(__data uint8_t i = 0; i < loop_count; i++)
	inc	r5
	ljmp	00110$
00102$:
;	i2c.c:181: if(last_line_num)
	mov	a,r4
	jz	00123$
;	i2c.c:183: printf("0x%03X\t", start_address + (loop_count << 4));
	mov	ar6,r2
	clr	a
	xch	a,r6
	swap	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf0
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	r3,_i2c_hex_dump_start_address_65536_72
	mov	r5,(_i2c_hex_dump_start_address_65536_72 + 1)
	mov	a,r6
	add	a,r3
	mov	r3,a
	mov	a,r7
	addc	a,r5
	mov	r5,a
	push	ar4
	push	ar2
	push	ar3
	push	ar5
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar4
;	i2c.c:185: for(uint8_t i = 0; i < last_line_num; i++)
00123$:
	mov	r7,#0x00
00113$:
	clr	c
	mov	a,r7
	subb	a,r4
	jnc	00105$
;	i2c.c:187: data_byte = i2c_read_byte(start_address + (loop_count << 4) + i);
	mov	ar5,r2
	clr	a
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
	mov	r1,_i2c_hex_dump_start_address_65536_72
	mov	r3,(_i2c_hex_dump_start_address_65536_72 + 1)
	mov	a,r5
	add	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	ar5,r7
	mov	r6,#0x00
	mov	a,r5
	add	a,r1
	mov	r1,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dpl,r1
	mov	dph,r3
	push	ar7
	push	ar4
	push	ar2
	lcall	_i2c_read_byte
	mov	r6,dpl
;	i2c.c:188: printf("%02X ", data_byte);
	mov	r5,#0x00
	push	ar6
	push	ar5
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar2
	pop	ar4
	pop	ar7
;	i2c.c:185: for(uint8_t i = 0; i < last_line_num; i++)
	inc	r7
	sjmp	00113$
00105$:
;	i2c.c:190: printf_small("\r\n");
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf_small
	dec	sp
	dec	sp
	dec	sp
;	i2c.c:191: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_eeprom'
;------------------------------------------------------------
;send_byte                 Allocated with name '_reset_eeprom_send_byte_65537_83'
;i                         Allocated with name '_reset_eeprom_i_131073_84'
;------------------------------------------------------------
;	i2c.c:194: void reset_eeprom()
;	-----------------------------------------
;	 function reset_eeprom
;	-----------------------------------------
_reset_eeprom:
;	i2c.c:196: i2c_start();
	lcall	_i2c_start
;	i2c.c:201: for(uint8_t i = 0; i < BYTE_SIZE + 1; i++)
	mov	r7,#0x00
00106$:
	cjne	r7,#0x09,00123$
00123$:
	jnc	00104$
;	i2c.c:203: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:204: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_us
	pop	ar7
;	i2c.c:206: if((send_byte << i) & 0x100)
	mov	b,r7
	inc	b
	mov	r5,#0xff
	mov	r6,#0x01
	sjmp	00126$
00125$:
	mov	a,r5
	add	a,r5
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
00126$:
	djnz	b,00125$
	mov	a,r6
	jnb	acc.0,00102$
;	i2c.c:208: SDA_High;
;	assignBit
	setb	_P1_6
	sjmp	00103$
00102$:
;	i2c.c:212: SDA_Low;
;	assignBit
	clr	_P1_6
00103$:
;	i2c.c:216: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	lcall	_delay_us
;	i2c.c:217: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:218: delay_us(bitDelay);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
	pop	ar7
;	i2c.c:201: for(uint8_t i = 0; i < BYTE_SIZE + 1; i++)
	inc	r7
	sjmp	00106$
00104$:
;	i2c.c:222: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:223: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:225: i2c_start();
	lcall	_i2c_start
;	i2c.c:226: i2c_stop();
;	i2c.c:229: }
	ljmp	_i2c_stop
;------------------------------------------------------------
;Allocation info for local variables in function 'delay_us'
;------------------------------------------------------------
;delay                     Allocated with name '_delay_us_delay_65536_88'
;i                         Allocated with name '_delay_us_i_131072_90'
;sloc0                     Allocated with name '_delay_us_sloc0_1_0'
;------------------------------------------------------------
;	i2c.c:232: void delay_us(uint32_t delay)
;	-----------------------------------------
;	 function delay_us
;	-----------------------------------------
_delay_us:
	mov	r7,dpl
	mov	r6,dph
	mov	r5,b
	mov	r4,a
	mov	dptr,#_delay_us_delay_65536_88
	mov	a,r7
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	i2c.c:235: for(uint8_t i = 0; i< delay; i++);
	mov	dptr,#_delay_us_delay_65536_88
	movx	a,@dptr
	mov	_delay_us_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_delay_us_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_delay_us_sloc0_1_0 + 2),a
	inc	dptr
	movx	a,@dptr
	mov	(_delay_us_sloc0_1_0 + 3),a
	mov	r3,#0x00
00103$:
	mov	ar0,r3
	mov	r1,#0x00
	mov	r2,#0x00
	mov	r7,#0x00
	clr	c
	mov	a,r0
	subb	a,_delay_us_sloc0_1_0
	mov	a,r1
	subb	a,(_delay_us_sloc0_1_0 + 1)
	mov	a,r2
	subb	a,(_delay_us_sloc0_1_0 + 2)
	mov	a,r7
	subb	a,(_delay_us_sloc0_1_0 + 3)
	jnc	00105$
	inc	r3
	sjmp	00103$
00105$:
;	i2c.c:236: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'i2c_send_nack'
;------------------------------------------------------------
;	i2c.c:240: void i2c_send_nack(void)
;	-----------------------------------------
;	 function i2c_send_nack
;	-----------------------------------------
_i2c_send_nack:
;	i2c.c:243: SCL_Low;
;	assignBit
	clr	_P1_5
;	i2c.c:244: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:247: SDA_High;
;	assignBit
	setb	_P1_6
;	i2c.c:248: delay_us(bitDelay/4);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
	lcall	_delay_us
;	i2c.c:250: SCL_High;
;	assignBit
	setb	_P1_5
;	i2c.c:251: delay_us(bitDelay/2);
	mov	dptr,#(0x00&0x00ff)
	clr	a
	mov	b,a
;	i2c.c:252: }
	ljmp	_delay_us
;------------------------------------------------------------
;Allocation info for local variables in function 'write_io_port'
;------------------------------------------------------------
;rx_data                   Allocated with name '_write_io_port_rx_data_65536_93'
;------------------------------------------------------------
;	i2c.c:255: void write_io_port()
;	-----------------------------------------
;	 function write_io_port
;	-----------------------------------------
_write_io_port:
;	i2c.c:260: i2c_start();
	lcall	_i2c_start
;	i2c.c:261: send_byte(RD_IO_EXP);
	mov	dpl,#0x71
	lcall	_send_byte
;	i2c.c:262: rx_data = read_byte();
	lcall	_read_byte
	mov	r7,dpl
;	i2c.c:263: i2c_send_nack();
	push	ar7
	lcall	_i2c_send_nack
;	i2c.c:264: i2c_stop();
	lcall	_i2c_stop
;	i2c.c:267: i2c_start();
	lcall	_i2c_start
;	i2c.c:268: send_byte(WR_IO_EXP);
	mov	dpl,#0x70
	lcall	_send_byte
	pop	ar7
;	i2c.c:269: send_byte(~rx_data);
	mov	a,r7
	cpl	a
	mov	dpl,a
	lcall	_send_byte
;	i2c.c:270: i2c_stop();
	lcall	_i2c_stop
;	i2c.c:272: EX0 = 1;
;	assignBit
	setb	_EX0
;	i2c.c:273: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EXT0_IRQHandler'
;------------------------------------------------------------
;	i2c.c:277: void EXT0_IRQHandler(void) __interrupt(IE0_VECTOR)
;	-----------------------------------------
;	 function EXT0_IRQHandler
;	-----------------------------------------
_EXT0_IRQHandler:
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
;	i2c.c:281: EX0 = 0;
;	assignBit
	clr	_EX0
;	i2c.c:282: P1_0 = !P1_0;
	cpl	_P1_0
;	i2c.c:283: write_io_port();
	lcall	_write_io_port
;	i2c.c:284: }
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
	.area CONST   (CODE)
___str_0:
	.ascii "Printing hexdump from start address [%x] to end address [%x]"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "0x%03X"
	.db 0x09
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
