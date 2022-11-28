;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module sdc
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spi_enable_cs
	.globl _spi_disable_cs
	.globl _spi_byte
	.globl _max_spi_clock_freq
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
	.globl _card_type
	.globl _get_card_type
	.globl _sd_init
	.globl _sd_read_sector
	.globl _sd_write_sector
	.globl _sd_wait_for_ready
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
_card_type::
	.ds 2
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
;Allocation info for local variables in function 'get_card_type'
;------------------------------------------------------------
;	sdc.c:83: int get_card_type(void)
;	-----------------------------------------
;	 function get_card_type
;	-----------------------------------------
_get_card_type:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	sdc.c:85: return card_type;
	mov	dptr,#_card_type
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
;	sdc.c:86: }
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_init'
;------------------------------------------------------------
;card_status               Allocated to registers 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	sdc.c:99: int sd_init(void)
;	-----------------------------------------
;	 function sd_init
;	-----------------------------------------
_sd_init:
;	sdc.c:106: spi_disable_cs();
	lcall	_spi_disable_cs
;	sdc.c:109: for(i=0;i<10;i++)
	mov	r6,#0x00
	mov	r7,#0x00
00124$:
;	sdc.c:110: spi_byte( 0xFF );
	mov	dpl,#0xff
	push	ar7
	push	ar6
	lcall	_spi_byte
	pop	ar6
	pop	ar7
;	sdc.c:109: for(i=0;i<10;i++)
	inc	r6
	cjne	r6,#0x00,00179$
	inc	r7
00179$:
	clr	c
	mov	a,r6
	subb	a,#0x0a
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00124$
;	sdc.c:112: spi_enable_cs();
	lcall	_spi_enable_cs
;	sdc.c:118: card_type = 0;
	mov	dptr,#_card_type
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	sdc.c:121: do
	mov	r6,#0xe8
	mov	r7,#0x03
00103$:
;	sdc.c:123: delay(1);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_delay
;	sdc.c:124: sd_command(CMD_GO_IDLE_STATE, 0);
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x00
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:125: } while((sd_get_R1() != IDLE_STATE) && (--i));
	lcall	_sd_get_R1
	mov	r5,dpl
	pop	ar6
	pop	ar7
	cjne	r5,#0x01,00181$
	sjmp	00105$
00181$:
	dec	r6
	cjne	r6,#0xff,00182$
	dec	r7
00182$:
	mov	a,r6
	orl	a,r7
	jnz	00103$
00105$:
;	sdc.c:128: if( !i )
	mov	a,r6
	orl	a,r7
	jnz	00107$
;	sdc.c:129: return( SD_TIME_OUT );
	mov	dptr,#0x0002
	ret
00107$:
;	sdc.c:138: sd_command(CMD_APP_CMD, 0);
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x37
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:140: sd_command( ACMD_SEND_OP_COND, 0 );
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x29
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:142: if( sd_get_R1() <= 1 )
	lcall	_sd_get_R1
	mov	a,dpl
	add	a,#0xff - 0x01
	jc	00109$
;	sdc.c:144: card_type = 2;
	mov	dptr,#_card_type
	mov	a,#0x02
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	sjmp	00136$
00109$:
;	sdc.c:148: card_type = 1;
	mov	dptr,#_card_type
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	sdc.c:152: do
00136$:
	mov	r6,#0xd0
	mov	r7,#0x07
00115$:
;	sdc.c:154: delay(1);
	mov	dpl,#0x01
	push	ar7
	push	ar6
	lcall	_delay
	pop	ar6
	pop	ar7
;	sdc.c:157: if( card_type == 2 )
	mov	dptr,#_card_type
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	cjne	r4,#0x02,00112$
	cjne	r5,#0x00,00112$
;	sdc.c:159: sd_command( CMD_APP_CMD, 0 );
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x37
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:160: sd_command( ACMD_SEND_OP_COND, 0 );
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x29
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
	sjmp	00116$
00112$:
;	sdc.c:165: sd_command( CMD_SEND_OP_COND, 0 );
	push	ar7
	push	ar6
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x01
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar6
	pop	ar7
00116$:
;	sdc.c:167: } while(sd_get_R1() && --i); //only when the response is 0x00 means the initialization succeed
	push	ar7
	push	ar6
	lcall	_sd_get_R1
	mov	a,dpl
	pop	ar6
	pop	ar7
	jz	00117$
	dec	r6
	cjne	r6,#0xff,00189$
	dec	r7
00189$:
	mov	a,r6
	orl	a,r7
	jz	00190$
	ljmp	00115$
00190$:
00117$:
;	sdc.c:169: if( !i )
	mov	a,r6
	orl	a,r7
	jnz	00119$
;	sdc.c:170: return( SD_TIME_OUT );
	mov	dptr,#0x0002
	ret
00119$:
;	sdc.c:175: sd_command( CMD_SEND_STATUS, 0 );
	clr	a
	push	acc
	push	acc
	push	acc
	push	acc
	mov	dpl,#0x0d
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:176: card_status = sd_get_R2();
	lcall	_sd_get_R2
	mov	a,dpl
	mov	b,dph
;	sdc.c:177: if( card_status )
	orl	a,b
	jz	00121$
;	sdc.c:178: return( SD_ERROR );
	mov	dptr,#0x0001
	ret
00121$:
;	sdc.c:183: sd_command( CMD_SET_BLOCKLEN, 512 );
	clr	a
	push	acc
	mov	a,#0x02
	push	acc
	clr	a
	push	acc
	push	acc
	mov	dpl,#0x10
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:184: if( sd_get_R1() )
	lcall	_sd_get_R1
	mov	a,dpl
	jz	00123$
;	sdc.c:186: card_type = 0;
	mov	dptr,#_card_type
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	sdc.c:187: return( SD_ERROR );
	mov	dptr,#0x0001
	ret
00123$:
;	sdc.c:192: max_spi_clock_freq();
	lcall	_max_spi_clock_freq
;	sdc.c:194: spi_disable_cs();
	lcall	_spi_disable_cs
;	sdc.c:196: return SD_SUCCESS;
	mov	dptr,#0x0000
;	sdc.c:197: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_read_sector'
;------------------------------------------------------------
;buffer                    Allocated to stack - _bp -5
;sector_number             Allocated to registers r6 r7 
;count                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	sdc.c:205: int sd_read_sector( uint16_t sector_number, uint8_t *buffer )
;	-----------------------------------------
;	 function sd_read_sector
;	-----------------------------------------
_sd_read_sector:
	push	_bp
	mov	_bp,sp
	inc	sp
	inc	sp
	mov	r6,dpl
	mov	r7,dph
;	sdc.c:210: sd_command( CMD_READ_SINGLE_BLOCK, sector_number << 9 );
	mov	a,r6
	add	a,r6
	xch	a,r7
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar6
	push	ar7
	push	ar5
	push	ar4
	mov	dpl,#0x11
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:212: if(sd_get_R1() != 0){
	lcall	_sd_get_R1
	mov	a,dpl
	jz	00116$
;	sdc.c:213: return SD_ERROR;
	mov	dptr,#0x0001
	ljmp	00112$
;	sdc.c:218: while( (sd_get_R1() == 0xff) && --count);
00116$:
	mov	r6,#0xff
	mov	r7,#0xff
00104$:
	push	ar7
	push	ar6
	lcall	_sd_get_R1
	mov	r5,dpl
	pop	ar6
	pop	ar7
	cjne	r5,#0xff,00106$
	dec	r6
	cjne	r6,#0xff,00143$
	dec	r7
00143$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
00106$:
;	sdc.c:221: if(count == 0){
	mov	a,r6
	orl	a,r7
	jnz	00118$
;	sdc.c:222: return SD_ERROR;
	mov	dptr,#0x0001
;	sdc.c:226: for( count=0; count<SD_DATA_SIZE; count++){
	sjmp	00112$
00118$:
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r0,_bp
	inc	r0
	clr	a
	mov	@r0,a
	inc	r0
	mov	@r0,a
00110$:
;	sdc.c:227: *buffer++ = spi_byte(0xFF);
	mov	dpl,#0xff
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_byte
	mov	r2,dpl
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
;	sdc.c:226: for( count=0; count<SD_DATA_SIZE; count++){
	mov	r0,_bp
	inc	r0
	inc	@r0
	cjne	@r0,#0x00,00146$
	inc	r0
	inc	@r0
00146$:
	mov	r0,_bp
	inc	r0
	inc	r0
	mov	ar4,@r0
	mov	a,#0x100 - 0x01
	add	a,r4
	jnc	00110$
;	sdc.c:231: spi_byte(0xFF);
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:232: spi_byte(0xFF);
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:235: spi_disable_cs();
	lcall	_spi_disable_cs
;	sdc.c:237: spi_byte(0xFF);
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:239: return SD_SUCCESS;
	mov	dptr,#0x0000
00112$:
;	sdc.c:240: }
	mov	sp,_bp
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_write_sector'
;------------------------------------------------------------
;buffer                    Allocated to stack - _bp -5
;sector_number             Allocated to registers r6 r7 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	sdc.c:248: int sd_write_sector( uint16_t sector_number, const uint8_t *buffer )
;	-----------------------------------------
;	 function sd_write_sector
;	-----------------------------------------
_sd_write_sector:
	push	_bp
	mov	_bp,sp
	mov	r6,dpl
	mov	r7,dph
;	sdc.c:251: sd_command( CMD_WRITE_SINGLE_BLOCK, sector_number << 9 );
	mov	a,r6
	add	a,r6
	xch	a,r7
	mov	r6,#0x00
	mov	r5,#0x00
	mov	r4,#0x00
	push	ar6
	push	ar7
	push	ar5
	push	ar4
	mov	dpl,#0x18
	lcall	_sd_command
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	sdc.c:253: if(sd_get_R1() != 0){
	lcall	_sd_get_R1
	mov	a,dpl
	jz	00102$
;	sdc.c:254: return SD_ERROR;
	mov	dptr,#0x0001
	ljmp	00110$
00102$:
;	sdc.c:258: spi_byte( 0xFE );
	mov	dpl,#0xfe
	lcall	_spi_byte
;	sdc.c:260: for(int i= 0; i< 512; i++ )
	mov	a,_bp
	add	a,#0xfb
	mov	r0,a
	mov	ar5,@r0
	inc	r0
	mov	ar6,@r0
	inc	r0
	mov	ar7,@r0
	mov	r3,#0x00
	mov	r4,#0x00
00108$:
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x82
	jnc	00103$
;	sdc.c:262: spi_byte(*buffer++);
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	lcall	_spi_byte
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	sdc.c:260: for(int i= 0; i< 512; i++ )
	inc	r3
	cjne	r3,#0x00,00108$
	inc	r4
	sjmp	00108$
00103$:
;	sdc.c:266: spi_byte(0xFF);
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:267: spi_byte(0xFF);
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:270: while( spi_byte( 0xFF ) != 0xFF);
00104$:
	mov	dpl,#0xff
	lcall	_spi_byte
	mov	r7,dpl
	cjne	r7,#0xff,00104$
;	sdc.c:274: spi_byte( 0xFF );
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:277: spi_disable_cs();
	lcall	_spi_disable_cs
;	sdc.c:278: spi_byte( 0xFF );
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:280: return SD_SUCCESS;
	mov	dptr,#0x0000
00110$:
;	sdc.c:281: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_wait_for_ready'
;------------------------------------------------------------
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	sdc.c:287: uint8_t sd_wait_for_ready()
;	-----------------------------------------
;	 function sd_wait_for_ready
;	-----------------------------------------
_sd_wait_for_ready:
;	sdc.c:291: spi_byte( 0xFF );
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:294: do
	mov	r6,#0xf4
	mov	r7,#0x01
00102$:
;	sdc.c:296: i = spi_byte( 0xFF );
	mov	dpl,#0xff
	push	ar7
	push	ar6
	lcall	_spi_byte
	mov	r5,dpl
;	sdc.c:297: delay( 1 );
	mov	dpl,#0x01
	push	ar5
	lcall	_delay
	pop	ar5
	pop	ar6
	pop	ar7
;	sdc.c:298: } while ((i != 0xFF) && --j);
	cjne	r5,#0xff,00116$
	sjmp	00104$
00116$:
	dec	r6
	cjne	r6,#0xff,00117$
	dec	r7
00117$:
	mov	a,r6
	orl	a,r7
	jnz	00102$
00104$:
;	sdc.c:300: return i;
	mov	dpl,r5
;	sdc.c:301: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_get_R1'
;------------------------------------------------------------
;ret                       Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	sdc.c:309: static uint8_t sd_get_R1(void)
;	-----------------------------------------
;	 function sd_get_R1
;	-----------------------------------------
_sd_get_R1:
;	sdc.c:311: uint8_t ret = 0;
	mov	r7,#0x00
;	sdc.c:313: for(int i=0; i<8; i++ ) {
	mov	r5,#0x00
	mov	r6,#0x00
00105$:
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00103$
;	sdc.c:315: ret = spi_byte( 0xff );
	mov	dpl,#0xff
	push	ar6
	push	ar5
	lcall	_spi_byte
	mov	r4,dpl
	pop	ar5
	pop	ar6
	mov	ar7,r4
;	sdc.c:316: if(ret != 0xff) {
	cjne	r7,#0xff,00122$
	sjmp	00106$
00122$:
;	sdc.c:318: return ret;
	mov	dpl,r7
	ret
00106$:
;	sdc.c:313: for(int i=0; i<8; i++ ) {
	inc	r5
	cjne	r5,#0x00,00105$
	inc	r6
	sjmp	00105$
00103$:
;	sdc.c:321: return ret;
	mov	dpl,r7
;	sdc.c:322: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_get_R2'
;------------------------------------------------------------
;r2                        Allocated to registers r5 r4 
;------------------------------------------------------------
;	sdc.c:327: static uint16_t sd_get_R2(void)
;	-----------------------------------------
;	 function sd_get_R2
;	-----------------------------------------
_sd_get_R2:
;	sdc.c:331: r2 = ((sd_get_R1())<< 8) & 0xff00;
	lcall	_sd_get_R1
	mov	r6,dpl
	mov	r7,#0x00
;	sdc.c:332: r2 |= spi_byte( 0xff );
	mov	dpl,#0xff
	push	ar7
	push	ar6
	lcall	_spi_byte
	mov	r5,dpl
	pop	ar6
	pop	ar7
	mov	r4,#0x00
	mov	a,r7
	orl	ar5,a
	mov	a,r6
	orl	ar4,a
;	sdc.c:333: return( r2 );
	mov	dpl,r5
	mov	dph,r4
;	sdc.c:334: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'sd_command'
;------------------------------------------------------------
;arg                       Allocated to stack - _bp -6
;cmd                       Allocated to registers r7 
;temp                      Allocated to registers r2 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	sdc.c:342: static int sd_command(uint8_t cmd, uint32_t arg)
;	-----------------------------------------
;	 function sd_command
;	-----------------------------------------
_sd_command:
	push	_bp
	mov	_bp,sp
	mov	r7,dpl
;	sdc.c:347: spi_enable_cs();
	push	ar7
	lcall	_spi_enable_cs
;	sdc.c:349: spi_byte( 0xFF );
	mov	dpl,#0xff
	lcall	_spi_byte
	pop	ar7
;	sdc.c:351: spi_byte(0x40 | cmd);
	mov	a,#0x40
	orl	a,r7
	mov	dpl,a
	push	ar7
	lcall	_spi_byte
	pop	ar7
;	sdc.c:353: for(int i=3;i>=0;i--){
	mov	r5,#0x03
	mov	r6,#0x00
00103$:
	mov	a,r6
	jb	acc.7,00101$
;	sdc.c:354: temp = (arg >> (i * 8)) & 0xFF;
	push	ar7
	mov	ar4,r5
	mov	a,r4
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
	mov	b,r4
	inc	b
	mov	a,_bp
	add	a,#0xfa
	mov	r0,a
	mov	ar2,@r0
	inc	r0
	mov	ar3,@r0
	inc	r0
	mov	ar4,@r0
	inc	r0
	mov	ar7,@r0
	sjmp	00124$
00123$:
	clr	c
	mov	a,r7
	rrc	a
	mov	r7,a
	mov	a,r4
	rrc	a
	mov	r4,a
	mov	a,r3
	rrc	a
	mov	r3,a
	mov	a,r2
	rrc	a
	mov	r2,a
00124$:
	djnz	b,00123$
;	sdc.c:355: spi_byte(temp);
	mov	dpl,r2
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	sdc.c:353: for(int i=3;i>=0;i--){
	dec	r5
	cjne	r5,#0xff,00125$
	dec	r6
00125$:
	pop	ar7
	sjmp	00103$
00101$:
;	sdc.c:359: spi_byte((cmd == CMD_GO_IDLE_STATE)? 0x95:0xFF);
	mov	a,r7
	jnz	00107$
	mov	r6,#0x95
	mov	r7,a
	sjmp	00108$
00107$:
	mov	r6,#0xff
	mov	r7,#0x00
00108$:
	mov	dpl,r6
	lcall	_spi_byte
;	sdc.c:361: spi_byte( 0xFF );
	mov	dpl,#0xff
	lcall	_spi_byte
;	sdc.c:363: return 0;
	mov	dptr,#0x0000
;	sdc.c:364: }
	pop	_bp
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;count                     Allocated to registers r7 
;i                         Allocated to registers r5 r6 
;------------------------------------------------------------
;	sdc.c:370: static void delay(uint8_t count)
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r7,dpl
;	sdc.c:372: for(int i=0;i<count * 1000;i++){
	mov	r5,#0x00
	mov	r6,#0x00
00103$:
	mov	ar3,r7
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar4
	mov	dptr,#0x03e8
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	dec	sp
	dec	sp
	pop	ar5
	pop	ar6
	pop	ar7
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00105$
	inc	r5
	cjne	r5,#0x00,00103$
	inc	r6
	sjmp	00103$
00105$:
;	sdc.c:375: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
