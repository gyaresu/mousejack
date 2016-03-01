;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Feb 24 2016) (Mac OS X x86_64)
; This file was generated Wed Feb 24 11:52:24 2016
;--------------------------------------------------------
	.module radio
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _spi_transfer
	.globl _memcpy
	.globl _RFRDY
	.globl _rfcsn
	.globl _rfce
	.globl _ien1
	.globl _ien0
	.globl _RFDAT
	.globl _P0DIR
	.globl _P0
	.globl _usbcon
	.globl _rfcon
	.globl _rfctl
	.globl _handle_radio_request_PARM_2
	.globl _crc_update_PARM_3
	.globl _crc_update_PARM_2
	.globl _write_register_byte_PARM_2
	.globl _spi_read_PARM_3
	.globl _spi_read_PARM_2
	.globl _spi_write_PARM_3
	.globl _spi_write_PARM_2
	.globl _configure_phy_PARM_3
	.globl _configure_phy_PARM_2
	.globl _configure_mac_PARM_3
	.globl _configure_mac_PARM_2
	.globl _configure_address_PARM_2
	.globl _enter_promiscuous_mode_PARM_2
	.globl _setupbuf
	.globl _out1buf
	.globl _in1buf
	.globl _in0buf
	.globl _enter_promiscuous_mode
	.globl _configure_address
	.globl _configure_mac
	.globl _configure_phy
	.globl _spi_write
	.globl _spi_read
	.globl _write_register_byte
	.globl _crc_update
	.globl _handle_radio_request
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_rfctl	=	0x00e6
_rfcon	=	0x0090
_usbcon	=	0x00a0
_P0	=	0x0080
_P0DIR	=	0x0094
_RFDAT	=	0x00e5
_ien0	=	0x00a8
_ien1	=	0x00b8
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_rfce	=	0x0090
_rfcsn	=	0x0091
_RFRDY	=	0x00c0
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_enter_promiscuous_mode_sloc0_1_0:
	.ds 2
_spi_read_sloc0_1_0:
	.ds 3
_handle_radio_request_sloc0_1_0:
	.ds 2
_handle_radio_request_sloc1_1_0:
	.ds 2
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
_configured:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_in0buf	=	0xc700
_in1buf	=	0xc680
_out1buf	=	0xc640
_setupbuf	=	0xc7e8
_in_pm:
	.ds 1
_pm_prefix_length:
	.ds 2
_pm_prefix:
	.ds 5
_enter_promiscuous_mode_PARM_2:
	.ds 1
_enter_promiscuous_mode_prefix_1_32:
	.ds 3
_enter_promiscuous_mode_address_2_34:
	.ds 2
_configure_address_PARM_2:
	.ds 1
_configure_address_address_1_35:
	.ds 3
_configure_mac_PARM_2:
	.ds 1
_configure_mac_PARM_3:
	.ds 1
_configure_mac_feature_1_37:
	.ds 1
_configure_phy_PARM_2:
	.ds 1
_configure_phy_PARM_3:
	.ds 1
_configure_phy_config_1_39:
	.ds 1
_spi_transfer_byte_1_41:
	.ds 1
_spi_write_PARM_2:
	.ds 3
_spi_write_PARM_3:
	.ds 1
_spi_write_command_1_43:
	.ds 1
_spi_read_PARM_2:
	.ds 3
_spi_read_PARM_3:
	.ds 1
_spi_read_command_1_45:
	.ds 1
_write_register_byte_PARM_2:
	.ds 1
_write_register_byte_reg_1_47:
	.ds 1
_crc_update_PARM_2:
	.ds 1
_crc_update_PARM_3:
	.ds 1
_crc_update_crc_1_49:
	.ds 2
_handle_radio_request_PARM_2:
	.ds 3
_handle_radio_request_request_1_51:
	.ds 1
_handle_radio_request_value_2_58:
	.ds 1
_handle_radio_request_crc_4_63:
	.ds 2
_handle_radio_request_crc_given_4_63:
	.ds 2
_handle_radio_request_payload_4_63:
	.ds 37
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_bootloader:
	.ds 2
_promiscuous_address:
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
;Allocation info for local variables in function 'enter_promiscuous_mode'
;------------------------------------------------------------
;sloc0                     Allocated with name '_enter_promiscuous_mode_sloc0_1_0'
;prefix_length             Allocated with name '_enter_promiscuous_mode_PARM_2'
;prefix                    Allocated with name '_enter_promiscuous_mode_prefix_1_32'
;x                         Allocated with name '_enter_promiscuous_mode_x_1_33'
;address                   Allocated with name '_enter_promiscuous_mode_address_2_34'
;------------------------------------------------------------
;	src/radio.c:9: void enter_promiscuous_mode(uint8_t * prefix, uint8_t prefix_length)
;	-----------------------------------------
;	 function enter_promiscuous_mode
;	-----------------------------------------
_enter_promiscuous_mode:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_enter_promiscuous_mode_prefix_1_32
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:13: for(x = 0; x < prefix_length; x++) pm_prefix[prefix_length - 1 - x] = prefix[x];
	mov	dptr,#_enter_promiscuous_mode_prefix_1_32
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_enter_promiscuous_mode_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00109$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	mov	a,r4
	dec	a
	mov	ar0,r2
	clr	c
	subb	a,r0
	add	a,#_pm_prefix
	mov	_enter_promiscuous_mode_sloc0_1_0,a
	clr	a
	addc	a,#(_pm_prefix >> 8)
	mov	(_enter_promiscuous_mode_sloc0_1_0 + 1),a
	push	ar4
	mov	a,r2
	add	a,r5
	mov	r0,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_enter_promiscuous_mode_sloc0_1_0
	mov	dph,(_enter_promiscuous_mode_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	r2
	cjne	r2,#0x00,00137$
	inc	r3
00137$:
	pop	ar4
	sjmp	00109$
00101$:
;	src/radio.c:14: pm_prefix_length = prefix_length > 5 ? 5 : prefix_length;
	mov	a,r4
	add	a,#0xff - 0x05
	jnc	00113$
	mov	r7,#0x05
	sjmp	00114$
00113$:
	mov	ar7,r4
00114$:
	mov	dptr,#_pm_prefix_length
	mov	a,r7
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	src/radio.c:15: in_pm = true;
	mov	dptr,#_in_pm
	inc	a
	movx	@dptr,a
;	src/radio.c:18: rfce = 0;
	clr	_rfce
;	src/radio.c:21: write_register_byte(EN_RXADDR, ENRX_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_write_register_byte
;	src/radio.c:24: if(pm_prefix_length == 0) configure_address(promiscuous_address, 2);
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	orl	a,r6
	jnz	00106$
	mov	dptr,#_configure_address_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_promiscuous_address
	mov	b,#0x00
	lcall	_configure_address
	sjmp	00107$
00106$:
;	src/radio.c:27: else if(pm_prefix_length == 1)
	cjne	r6,#0x01,00103$
	cjne	r7,#0x00,00103$
;	src/radio.c:29: uint8_t address[2] = { pm_prefix[0], (pm_prefix[0] & 0x80) == 0x80 ? 0xAA : 0x55 };
	mov	dptr,#_pm_prefix
	movx	a,@dptr
	mov	dptr,#_enter_promiscuous_mode_address_2_34
	movx	@dptr,a
	mov	dptr,#_pm_prefix
	movx	a,@dptr
	mov	r5,a
	anl	ar5,#0x80
	cjne	r5,#0x80,00115$
	mov	r5,#0xAA
	sjmp	00116$
00115$:
	mov	r5,#0x55
00116$:
	mov	dptr,#(_enter_promiscuous_mode_address_2_34 + 0x0001)
	mov	a,r5
	movx	@dptr,a
;	src/radio.c:30: configure_address(address, 2);
	mov	dptr,#_configure_address_PARM_2
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#_enter_promiscuous_mode_address_2_34
	mov	b,#0x00
	lcall	_configure_address
	sjmp	00107$
00103$:
;	src/radio.c:34: else configure_address(pm_prefix, pm_prefix_length);
	mov	dptr,#_configure_address_PARM_2
	mov	a,r6
	movx	@dptr,a
	mov	dptr,#_pm_prefix
	mov	b,#0x00
	lcall	_configure_address
00107$:
;	src/radio.c:37: configure_mac(0, 0, ENAA_NONE);
	mov	dptr,#_configure_mac_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_configure_mac_PARM_3
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_configure_mac
;	src/radio.c:40: configure_phy(PRIM_RX | PWR_UP, RATE_2M, 32);
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	mov	dpl,#0x03
	lcall	_configure_phy
;	src/radio.c:43: rfce = 1;
	setb	_rfce
;	src/radio.c:44: in1bc = 0;
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_address'
;------------------------------------------------------------
;length                    Allocated with name '_configure_address_PARM_2'
;address                   Allocated with name '_configure_address_address_1_35'
;------------------------------------------------------------
;	src/radio.c:48: void configure_address(uint8_t * address, uint8_t length)
;	-----------------------------------------
;	 function configure_address
;	-----------------------------------------
_configure_address:
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_configure_address_address_1_35
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:50: write_register_byte(EN_RXADDR, ENRX_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x02
	lcall	_write_register_byte
;	src/radio.c:51: write_register_byte(SETUP_AW, length - 2);
	mov	dptr,#_configure_address_PARM_2
	movx	a,@dptr
	mov	r7,a
	add	a,#0xFE
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x03
	push	ar7
	lcall	_write_register_byte
	pop	ar7
;	src/radio.c:52: write_register(TX_ADDR, address, length);
	mov	dptr,#_configure_address_address_1_35
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x30
	push	ar7
	lcall	_spi_write
	pop	ar7
;	src/radio.c:53: write_register(RX_ADDR_P0, address, length);  
	mov	dptr,#_configure_address_address_1_35
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r7
	movx	@dptr,a
	mov	dpl,#0x2A
	ljmp	_spi_write
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_mac'
;------------------------------------------------------------
;dynpd                     Allocated with name '_configure_mac_PARM_2'
;en_aa                     Allocated with name '_configure_mac_PARM_3'
;feature                   Allocated with name '_configure_mac_feature_1_37'
;------------------------------------------------------------
;	src/radio.c:57: void configure_mac(uint8_t feature, uint8_t dynpd, uint8_t en_aa)
;	-----------------------------------------
;	 function configure_mac
;	-----------------------------------------
_configure_mac:
	mov	a,dpl
	mov	dptr,#_configure_mac_feature_1_37
	movx	@dptr,a
;	src/radio.c:59: write_register_byte(FEATURE, feature);
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_write_register_byte
;	src/radio.c:60: write_register_byte(DYNPD, dynpd);
	mov	dptr,#_configure_mac_PARM_2
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x1C
	lcall	_write_register_byte
;	src/radio.c:61: write_register_byte(EN_AA, en_aa);  
	mov	dptr,#_configure_mac_PARM_3
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x01
	ljmp	_write_register_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'configure_phy'
;------------------------------------------------------------
;rf_setup                  Allocated with name '_configure_phy_PARM_2'
;rx_pw                     Allocated with name '_configure_phy_PARM_3'
;config                    Allocated with name '_configure_phy_config_1_39'
;------------------------------------------------------------
;	src/radio.c:65: void configure_phy(uint8_t config, uint8_t rf_setup, uint8_t rx_pw)
;	-----------------------------------------
;	 function configure_phy
;	-----------------------------------------
_configure_phy:
	mov	a,dpl
	mov	dptr,#_configure_phy_config_1_39
	movx	@dptr,a
;	src/radio.c:67: write_register_byte(CONFIG, config);
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
;	src/radio.c:68: write_register_byte(RF_SETUP, rf_setup);
	mov	dptr,#_configure_phy_PARM_2
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_write_register_byte
;	src/radio.c:69: write_register_byte(RX_PW_P0, rx_pw);
	mov	dptr,#_configure_phy_PARM_3
	movx	a,@dptr
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x11
	ljmp	_write_register_byte
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_transfer'
;------------------------------------------------------------
;byte                      Allocated with name '_spi_transfer_byte_1_41'
;------------------------------------------------------------
;	src/radio.c:73: uint8_t spi_transfer(uint8_t byte)
;	-----------------------------------------
;	 function spi_transfer
;	-----------------------------------------
_spi_transfer:
	mov	a,dpl
	mov	dptr,#_spi_transfer_byte_1_41
	movx	@dptr,a
;	src/radio.c:75: RFDAT = byte;
	movx	a,@dptr
	mov	_RFDAT,a
;	src/radio.c:76: RFRDY = 0;
	clr	_RFRDY
;	src/radio.c:77: while(!RFRDY);
00101$:
	jnb	_RFRDY,00101$
;	src/radio.c:78: return RFDAT;
	mov	dpl,_RFDAT
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_write'
;------------------------------------------------------------
;buffer                    Allocated with name '_spi_write_PARM_2'
;length                    Allocated with name '_spi_write_PARM_3'
;command                   Allocated with name '_spi_write_command_1_43'
;x                         Allocated with name '_spi_write_x_1_44'
;------------------------------------------------------------
;	src/radio.c:82: void spi_write(uint8_t command, uint8_t * buffer, uint8_t length)
;	-----------------------------------------
;	 function spi_write
;	-----------------------------------------
_spi_write:
	mov	a,dpl
	mov	dptr,#_spi_write_command_1_43
	movx	@dptr,a
;	src/radio.c:85: rfcsn = 0;
	clr	_rfcsn
;	src/radio.c:86: spi_transfer(command);
	mov	dptr,#_spi_write_command_1_43
	movx	a,@dptr
	mov	dpl,a
	lcall	_spi_transfer
;	src/radio.c:87: for(x = 0; x < length; x++) spi_transfer(buffer[x]);
	mov	dptr,#_spi_write_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spi_write_PARM_3
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	push	ar4
	mov	a,r2
	add	a,r5
	mov	r0,a
	mov	a,r3
	addc	a,r6
	mov	r1,a
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	push	ar3
	push	ar2
	lcall	_spi_transfer
	pop	ar2
	pop	ar3
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
	inc	r2
	cjne	r2,#0x00,00115$
	inc	r3
00115$:
	pop	ar4
	sjmp	00103$
00101$:
;	src/radio.c:88: rfcsn = 1;  
	setb	_rfcsn
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'spi_read'
;------------------------------------------------------------
;sloc0                     Allocated with name '_spi_read_sloc0_1_0'
;buffer                    Allocated with name '_spi_read_PARM_2'
;length                    Allocated with name '_spi_read_PARM_3'
;command                   Allocated with name '_spi_read_command_1_45'
;x                         Allocated with name '_spi_read_x_1_46'
;------------------------------------------------------------
;	src/radio.c:92: void spi_read(uint8_t command, uint8_t * buffer, uint8_t length)
;	-----------------------------------------
;	 function spi_read
;	-----------------------------------------
_spi_read:
	mov	a,dpl
	mov	dptr,#_spi_read_command_1_45
	movx	@dptr,a
;	src/radio.c:95: rfcsn = 0;
	clr	_rfcsn
;	src/radio.c:96: spi_transfer(command);
	mov	dptr,#_spi_read_command_1_45
	movx	a,@dptr
	mov	dpl,a
	lcall	_spi_transfer
;	src/radio.c:97: for(x = 0; x < length; x++) buffer[x] = spi_transfer(0xFF);
	mov	dptr,#_spi_read_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_spi_read_PARM_3
	movx	a,@dptr
	mov	r4,a
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	push	ar4
	mov	a,r2
	add	a,r5
	mov	_spi_read_sloc0_1_0,a
	mov	a,r3
	addc	a,r6
	mov	(_spi_read_sloc0_1_0 + 1),a
	mov	(_spi_read_sloc0_1_0 + 2),r7
	mov	dpl,#0xFF
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_spi_transfer
	mov	r4,dpl
	pop	ar2
	pop	ar3
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,_spi_read_sloc0_1_0
	mov	dph,(_spi_read_sloc0_1_0 + 1)
	mov	b,(_spi_read_sloc0_1_0 + 2)
	mov	a,r4
	lcall	__gptrput
	inc	r2
	cjne	r2,#0x00,00115$
	inc	r3
00115$:
	pop	ar4
	sjmp	00103$
00101$:
;	src/radio.c:98: rfcsn = 1;    
	setb	_rfcsn
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_register_byte'
;------------------------------------------------------------
;byte                      Allocated with name '_write_register_byte_PARM_2'
;reg                       Allocated with name '_write_register_byte_reg_1_47'
;------------------------------------------------------------
;	src/radio.c:102: void write_register_byte(uint8_t reg, uint8_t byte) 
;	-----------------------------------------
;	 function write_register_byte
;	-----------------------------------------
_write_register_byte:
	mov	a,dpl
	mov	dptr,#_write_register_byte_reg_1_47
	movx	@dptr,a
;	src/radio.c:104: write_register(W_REGISTER | reg, &byte, 1);
	movx	a,@dptr
	mov	r7,a
	orl	ar7,#0x20
	mov	dptr,#_spi_write_PARM_2
	mov	a,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	a,#(_write_register_byte_PARM_2 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,r7
	ljmp	_spi_write
;------------------------------------------------------------
;Allocation info for local variables in function 'crc_update'
;------------------------------------------------------------
;byte                      Allocated with name '_crc_update_PARM_2'
;bits                      Allocated with name '_crc_update_PARM_3'
;crc                       Allocated with name '_crc_update_crc_1_49'
;------------------------------------------------------------
;	src/radio.c:108: uint16_t crc_update(uint16_t crc, uint8_t byte, uint8_t bits)
;	-----------------------------------------
;	 function crc_update
;	-----------------------------------------
_crc_update:
	mov	r7,dph
	mov	a,dpl
	mov	dptr,#_crc_update_crc_1_49
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/radio.c:110: crc = crc ^ (byte << 8);
	mov	dptr,#_crc_update_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	r7,#0x00
	mov	dptr,#_crc_update_crc_1_49
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_crc_update_crc_1_49
	mov	a,r7
	xrl	a,r4
	movx	@dptr,a
	mov	a,r6
	xrl	a,r5
	inc	dptr
	movx	@dptr,a
;	src/radio.c:111: while(bits--)
	mov	dptr,#_crc_update_PARM_3
	movx	a,@dptr
	mov	r7,a
00104$:
	mov	ar6,r7
	dec	r7
	mov	a,r6
	jz	00106$
;	src/radio.c:112: if((crc & 0x8000) == 0x8000) crc = (crc << 1) ^ 0x1021;
	mov	dptr,#_crc_update_crc_1_49
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	r3,#0x00
	mov	a,#0x80
	anl	a,r6
	mov	r4,a
	cjne	r3,#0x00,00102$
	cjne	r4,#0x80,00102$
	mov	ar3,r5
	mov	a,r6
	xch	a,r3
	add	a,acc
	xch	a,r3
	rlc	a
	mov	r4,a
	mov	dptr,#_crc_update_crc_1_49
	mov	a,#0x21
	xrl	a,r3
	movx	@dptr,a
	mov	a,#0x10
	xrl	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00102$:
;	src/radio.c:113: else crc = crc << 1;
	mov	a,r6
	xch	a,r5
	add	a,acc
	xch	a,r5
	rlc	a
	mov	r6,a
	mov	dptr,#_crc_update_crc_1_49
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	sjmp	00104$
00106$:
;	src/radio.c:114: crc = crc & 0xFFFF;
;	src/radio.c:115: return crc;
	mov	dptr,#_crc_update_crc_1_49
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dpl,r6
	mov	dph,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_radio_request'
;------------------------------------------------------------
;sloc0                     Allocated with name '_handle_radio_request_sloc0_1_0'
;sloc1                     Allocated with name '_handle_radio_request_sloc1_1_0'
;data                      Allocated with name '_handle_radio_request_PARM_2'
;request                   Allocated with name '_handle_radio_request_request_1_51'
;value                     Allocated with name '_handle_radio_request_value_2_58'
;x                         Allocated with name '_handle_radio_request_x_4_63'
;offset                    Allocated with name '_handle_radio_request_offset_4_63'
;payload_length            Allocated with name '_handle_radio_request_payload_length_4_63'
;crc                       Allocated with name '_handle_radio_request_crc_4_63'
;crc_given                 Allocated with name '_handle_radio_request_crc_given_4_63'
;payload                   Allocated with name '_handle_radio_request_payload_4_63'
;__00030005                Allocated with name '_handle_radio_request___00030005_4_75'
;us                        Allocated with name '_handle_radio_request_us_4_75'
;------------------------------------------------------------
;	src/radio.c:119: void handle_radio_request(uint8_t request, uint8_t * data)
;	-----------------------------------------
;	 function handle_radio_request
;	-----------------------------------------
_handle_radio_request:
	mov	a,dpl
	mov	dptr,#_handle_radio_request_request_1_51
	movx	@dptr,a
;	src/radio.c:122: if(request == LAUNCH_BOOTLOADER)
	movx	a,@dptr
	mov	r7,a
	cjne	r7,#0xFF,00164$
;	src/radio.c:124: bootloader();
	mov	dptr,#_bootloader
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dpl,r0
;	src/radio.c:125: return;
	ljmp	__sdcc_call_dptr
00164$:
;	src/radio.c:129: else if(request == ENABLE_LNA)
	cjne	r7,#0x0B,00161$
;	src/radio.c:131: P0DIR &= ~0x10;
	mov	r6,_P0DIR
	mov	a,#0xEF
	anl	a,r6
	mov	_P0DIR,a
;	src/radio.c:132: P0 |= 0x10;
	orl	_P0,#0x10
;	src/radio.c:133: in1bc = 0;
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
;	src/radio.c:134: return;
	ret
00161$:
;	src/radio.c:138: else if(request == SET_CHANNEL)
	cjne	r7,#0x09,00158$
;	src/radio.c:140: rfce = 0;
	clr	_rfce
;	src/radio.c:141: write_register_byte(RF_CH, data[0]);
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_write_register_byte_PARM_2
	movx	@dptr,a
	mov	dpl,#0x05
	push	ar6
	push	ar5
	push	ar4
	lcall	_write_register_byte
	pop	ar4
	pop	ar5
	pop	ar6
;	src/radio.c:142: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:143: in1buf[0] = data[0];
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_in1buf
	movx	@dptr,a
;	src/radio.c:144: flush_rx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE2
	lcall	_spi_write
;	src/radio.c:145: flush_tx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_spi_write
;	src/radio.c:146: rfce = 1;
	setb	_rfce
;	src/radio.c:147: return;
	ret
00158$:
;	src/radio.c:151: else if(request == GET_CHANNEL)
	cjne	r7,#0x0A,00155$
;	src/radio.c:153: spi_read(RF_CH, in1buf, 1);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#_in1buf
	movx	@dptr,a
	mov	a,#(_in1buf >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,#0x05
	lcall	_spi_read
;	src/radio.c:154: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:155: return;
	ret
00155$:
;	src/radio.c:159: else if(request == ENTER_PROMISCUOUS_MODE)
	cjne	r7,#0x06,00152$
;	src/radio.c:161: enter_promiscuous_mode(&data[1] /* address prefix */, data[0] /* prefix length */);       
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_enter_promiscuous_mode_PARM_2
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	ljmp	_enter_promiscuous_mode
00152$:
;	src/radio.c:165: else if(request == RECEIVE_PACKET)
	cjne	r7,#0x12,00305$
	sjmp	00306$
00305$:
	ljmp	00149$
00306$:
;	src/radio.c:170: read_register(FIFO_STATUS, &value, 1);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#_handle_radio_request_value_2_58
	movx	@dptr,a
	mov	a,#(_handle_radio_request_value_2_58 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,#0x17
	lcall	_spi_read
;	src/radio.c:171: if((value & 1) == 0)
	mov	dptr,#_handle_radio_request_value_2_58
	movx	a,@dptr
	mov	r6,a
	jnb	acc.0,00307$
	ljmp	00124$
00307$:
;	src/radio.c:174: if(!in_pm)
	mov	dptr,#_in_pm
	movx	a,@dptr
	jnz	00195$
;	src/radio.c:177: read_register(R_RX_PL_WID, &value, 1);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#_handle_radio_request_value_2_58
	movx	@dptr,a
	mov	a,#(_handle_radio_request_value_2_58 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	inc	a
	movx	@dptr,a
	mov	dpl,#0x60
	lcall	_spi_read
;	src/radio.c:178: if(value <= 32)
	mov	dptr,#_handle_radio_request_value_2_58
	movx	a,@dptr
	mov  r6,a
	add	a,#0xff - 0x20
	jc	00102$
;	src/radio.c:181: read_register(R_RX_PAYLOAD, &in1buf[1], value);
	mov	dptr,#_spi_read_PARM_2
	mov	a,#(_in1buf + 0x0001)
	movx	@dptr,a
	mov	a,#((_in1buf + 0x0001) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	dpl,#0x61
	lcall	_spi_read
;	src/radio.c:182: in1buf[0] = 0;
	mov	dptr,#_in1buf
	clr	a
	movx	@dptr,a
;	src/radio.c:183: in1bc = value + 1;
	mov	dptr,#_handle_radio_request_value_2_58
	movx	a,@dptr
	mov	r6,a
	inc	r6
	mov	dptr,#0xC7B7
	mov	a,r6
	movx	@dptr,a
;	src/radio.c:184: return;
	ret
00102$:
;	src/radio.c:189: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:190: in1buf[0] = 0xFF;
	mov	dptr,#_in1buf
	mov	a,#0xFF
	movx	@dptr,a
;	src/radio.c:191: flush_rx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE2
;	src/radio.c:192: return;
	ljmp	_spi_write
;	src/radio.c:205: for(x = 0; x < pm_prefix_length; x++) payload[pm_prefix_length - x - 1] = pm_prefix[x];
00195$:
	mov	r5,#0x00
	mov	r6,#0x00
00171$:
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	clr	c
	mov	a,r5
	subb	a,r3
	mov	a,r6
	xrl	a,#0x80
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00104$
	mov	ar2,r3
	mov	ar1,r5
	mov	a,r2
	clr	c
	subb	a,r1
	dec	a
	add	a,#_handle_radio_request_payload_4_63
	mov	r1,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	r2,a
	mov	a,r5
	add	a,#_pm_prefix
	mov	dpl,a
	mov	a,r6
	addc	a,#(_pm_prefix >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
	inc	r5
	cjne	r5,#0x00,00171$
	inc	r6
	sjmp	00171$
00104$:
;	src/radio.c:206: read_register(R_RX_PAYLOAD, &payload[pm_prefix_length], 32);
	mov	a,r3
	add	a,#_handle_radio_request_payload_4_63
	mov	r3,a
	mov	a,r4
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	r4,a
	mov	dptr,#_spi_read_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_read_PARM_3
	mov	a,#0x20
	movx	@dptr,a
	mov	dpl,#0x61
	lcall	_spi_read
;	src/radio.c:213: for(offset = 0; offset < 2; offset++)
	clr	a
	mov	_handle_radio_request_sloc1_1_0,a
	mov	(_handle_radio_request_sloc1_1_0 + 1),a
00181$:
;	src/radio.c:216: if(offset == 1)
	mov	a,#0x01
	cjne	a,_handle_radio_request_sloc1_1_0,00312$
	clr	a
	cjne	a,(_handle_radio_request_sloc1_1_0 + 1),00312$
	sjmp	00313$
00312$:
	sjmp	00110$
00313$:
;	src/radio.c:218: for(x = 31; x >= 0; x--)
	mov	r3,#0x1F
	mov	r4,#0x00
00173$:
;	src/radio.c:220: if(x > 0) payload[x] = payload[x - 1] << 7 | payload[x] >> 1;
	clr	c
	clr	a
	subb	a,r3
	mov	a,#(0x00 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
	mov	a,r3
	add	a,#_handle_radio_request_payload_4_63
	mov	r1,a
	mov	a,r4
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	r2,a
	mov	ar0,r3
	mov	a,r0
	dec	a
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	rr	a
	anl	a,#0x80
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r6,a
	orl	ar0,a
	mov	dpl,r1
	mov	dph,r2
	mov	a,r0
	movx	@dptr,a
	sjmp	00174$
00106$:
;	src/radio.c:221: else payload[x] = payload[x] >> 1;
	mov	a,r3
	add	a,#_handle_radio_request_payload_4_63
	mov	r1,a
	mov	a,r4
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	r2,a
	mov	dpl,r1
	mov	dph,r2
	movx	a,@dptr
	clr	c
	rrc	a
	mov	r0,a
	mov	dpl,r1
	mov	dph,r2
	movx	@dptr,a
00174$:
;	src/radio.c:218: for(x = 31; x >= 0; x--)
	dec	r3
	cjne	r3,#0xFF,00315$
	dec	r4
00315$:
	mov	a,r4
	jnb	acc.7,00173$
00110$:
;	src/radio.c:226: payload_length = payload[5] >> 2;
	mov	dptr,#(_handle_radio_request_payload_4_63 + 0x0005)
	movx	a,@dptr
	rr	a
	rr	a
	anl	a,#0x3F
	mov	r4,a
;	src/radio.c:231: if(payload_length <= 23 + pm_prefix_length)
	mov	dptr,#_pm_prefix_length
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,#0x17
	add	a,r2
	mov	r2,a
	clr	a
	addc	a,r3
	mov	r3,a
	mov	ar0,r4
	mov	r1,#0x00
	clr	c
	mov	a,r2
	subb	a,r0
	mov	a,r3
	xrl	a,#0x80
	mov	b,r1
	xrl	b,#0x80
	subb	a,b
	jnc	00317$
	ljmp	00182$
00317$:
;	src/radio.c:234: crc_given = (payload[6 + payload_length] << 9) | ((payload[7 + payload_length]) << 1);
	push	ar0
	push	ar1
	mov	a,#0x06
	add	a,r4
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,acc
	mov	r2,a
	mov	r3,#0x00
	mov	a,#0x07
	add	a,r4
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r0,a
	clr	a
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r1,a
	mov	a,r0
	orl	ar3,a
	mov	a,r1
	orl	ar2,a
;	src/radio.c:235: crc_given = (crc_given << 8) | (crc_given >> 8);
	mov	_handle_radio_request_sloc0_1_0,r2
	mov	(_handle_radio_request_sloc0_1_0 + 1),r3
	mov	dptr,#_handle_radio_request_crc_given_4_63
	mov	a,_handle_radio_request_sloc0_1_0
	movx	@dptr,a
	mov	a,(_handle_radio_request_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
;	src/radio.c:236: if(payload[8 + payload_length] & 0x80) crc_given |= 0x100;
	mov	a,#0x08
	add	a,r4
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	pop	ar1
	pop	ar0
	jnb	acc.7,00112$
	mov	dptr,#_handle_radio_request_crc_given_4_63
	mov	a,_handle_radio_request_sloc0_1_0
	movx	@dptr,a
	mov	a,#0x01
	orl	a,(_handle_radio_request_sloc0_1_0 + 1)
	inc	dptr
	movx	@dptr,a
00112$:
;	src/radio.c:239: crc = 0xFFFF;
	mov	dptr,#_handle_radio_request_crc_4_63
	mov	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	src/radio.c:240: for(x = 0; x < 6 + payload_length; x++) crc = crc_update(crc, payload[x], 8);
	mov	a,#0x06
	add	a,r0
	mov	r2,a
	clr	a
	addc	a,r1
	mov	r3,a
	clr	a
	mov	_handle_radio_request_sloc0_1_0,a
	mov	(_handle_radio_request_sloc0_1_0 + 1),a
00176$:
	clr	c
	mov	a,_handle_radio_request_sloc0_1_0
	subb	a,r2
	mov	a,(_handle_radio_request_sloc0_1_0 + 1)
	xrl	a,#0x80
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
	push	ar0
	push	ar1
	mov	dptr,#_handle_radio_request_crc_4_63
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,_handle_radio_request_sloc0_1_0
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	mov	a,(_handle_radio_request_sloc0_1_0 + 1)
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dptr,#_crc_update_PARM_2
	movx	@dptr,a
	mov	dptr,#_crc_update_PARM_3
	mov	a,#0x08
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_crc_update
	mov	a,dpl
	mov	b,dph
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dptr,#_handle_radio_request_crc_4_63
	movx	@dptr,a
	mov	a,b
	inc	dptr
	movx	@dptr,a
	inc	_handle_radio_request_sloc0_1_0
	clr	a
	cjne	a,_handle_radio_request_sloc0_1_0,00320$
	inc	(_handle_radio_request_sloc0_1_0 + 1)
00320$:
	pop	ar1
	pop	ar0
	sjmp	00176$
00113$:
;	src/radio.c:241: crc = crc_update(crc, payload[6 + payload_length] & 0x80, 1);
	mov	dptr,#_handle_radio_request_crc_4_63
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,#0x06
	add	a,r4
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_crc_update_PARM_2
	mov	a,#0x80
	anl	a,r3
	movx	@dptr,a
	mov	dptr,#_crc_update_PARM_3
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r6
	push	ar4
	push	ar1
	push	ar0
	lcall	_crc_update
	mov	r5,dpl
	mov	r6,dph
	pop	ar0
	pop	ar1
	pop	ar4
;	src/radio.c:242: crc = (crc << 8) | (crc >> 8);
	mov	a,r5
	mov	ar5,r6
	mov	r6,a
;	src/radio.c:245: if(crc == crc_given)
	mov	dptr,#_handle_radio_request_crc_given_4_63
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r5
	cjne	a,ar2,00321$
	mov	a,r6
	cjne	a,ar3,00321$
	sjmp	00322$
00321$:
	ljmp	00182$
00322$:
;	src/radio.c:248: memcpy(in1buf, payload, 5);
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_handle_radio_request_payload_4_63
	movx	@dptr,a
	mov	a,#(_handle_radio_request_payload_4_63 >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,#0x05
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_in1buf
	mov	b,#0x00
	push	ar4
	push	ar1
	push	ar0
	lcall	_memcpy
	pop	ar0
	pop	ar1
	pop	ar4
;	src/radio.c:251: for(x = 0; x < payload_length + 3; x++)
	mov	a,#0x03
	add	a,r0
	mov	r5,a
	clr	a
	addc	a,r1
	mov	r6,a
	mov	r2,#0x00
	mov	r3,#0x00
00179$:
	clr	c
	mov	a,r2
	subb	a,r5
	mov	a,r3
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc	00114$
;	src/radio.c:252: in1buf[5+x] = ((payload[6 + x] << 1) & 0xFF) | (payload[7 + x] >> 7);
	push	ar5
	push	ar6
	mov	ar1,r2
	mov	a,#0x05
	add	a,r1
	add	a,#_in1buf
	mov	r0,a
	clr	a
	addc	a,#(_in1buf >> 8)
	mov	r6,a
	mov	a,#0x06
	add	a,r1
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	add	a,acc
	mov	r5,a
	mov	a,#0x07
	add	a,r1
	add	a,#_handle_radio_request_payload_4_63
	mov	dpl,a
	clr	a
	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
	mov	dph,a
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov	r1,a
	orl	ar5,a
	mov	dpl,r0
	mov	dph,r6
	mov	a,r5
	movx	@dptr,a
;	src/radio.c:251: for(x = 0; x < payload_length + 3; x++)
	inc	r2
	cjne	r2,#0x00,00324$
	inc	r3
00324$:
	pop	ar6
	pop	ar5
	sjmp	00179$
00114$:
;	src/radio.c:253: in1bc = 5 + payload_length;
	mov	a,#0x05
	add	a,r4
	mov	dptr,#0xC7B7
	movx	@dptr,a
;	src/radio.c:254: return;
	ret
00182$:
;	src/radio.c:213: for(offset = 0; offset < 2; offset++)
	inc	_handle_radio_request_sloc1_1_0
	clr	a
	cjne	a,_handle_radio_request_sloc1_1_0,00325$
	inc	(_handle_radio_request_sloc1_1_0 + 1)
00325$:
	clr	c
	mov	a,_handle_radio_request_sloc1_1_0
	subb	a,#0x02
	mov	a,(_handle_radio_request_sloc1_1_0 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00326$
	ljmp	00181$
00326$:
00124$:
;	src/radio.c:262: in1bc = 1;
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:263: in1buf[0] = 0xFF;
	mov	dptr,#_in1buf
	mov	a,#0xFF
	movx	@dptr,a
;	src/radio.c:264: return;
	ret
00149$:
;	src/radio.c:268: else if(request == ENTER_SNIFFER_MODE)
	cjne	r7,#0x05,00327$
	sjmp	00328$
00327$:
	ljmp	00146$
00328$:
;	src/radio.c:270: in_pm = false;
	mov	dptr,#_in_pm
	clr	a
	movx	@dptr,a
;	src/radio.c:273: if(data[0] > 5) data[0] = 5;
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov  r3,a
	add	a,#0xff - 0x05
	jnc	00126$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x05
	lcall	__gptrput
00126$:
;	src/radio.c:274: if(data[0] < 2) data[0] = 2;
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	cjne	r3,#0x02,00330$
00330$:
	jnc	00128$
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,#0x02
	lcall	__gptrput
00128$:
;	src/radio.c:277: rfce = 0;
	clr	_rfce
;	src/radio.c:280: configure_address(&data[1], data[0]);
	mov	a,#0x01
	add	a,r4
	mov	r1,a
	clr	a
	addc	a,r5
	mov	r2,a
	mov	ar3,r6
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	lcall	__gptrget
	mov	dptr,#_configure_address_PARM_2
	movx	@dptr,a
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	_configure_address
;	src/radio.c:283: configure_mac(EN_DPL | EN_ACK_PAY, DPL_P0, ENAA_NONE);
	mov	dptr,#_configure_mac_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#_configure_mac_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x06
	lcall	_configure_mac
;	src/radio.c:286: configure_phy(EN_CRC | CRC0 | PRIM_RX | PWR_UP, RATE_2M, 0);
	mov	dptr,#_configure_phy_PARM_2
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#_configure_phy_PARM_3
	clr	a
	movx	@dptr,a
	mov	dpl,#0x0F
	lcall	_configure_phy
;	src/radio.c:289: rfce = 1;
	setb	_rfce
;	src/radio.c:292: flush_rx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE2
	lcall	_spi_write
;	src/radio.c:293: flush_tx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE1
	lcall	_spi_write
;	src/radio.c:294: in1bc = 0;      
	mov	dptr,#0xC7B7
	clr	a
	movx	@dptr,a
	ret
00146$:
;	src/radio.c:298: else if(request == TRANSMIT_PAYLOAD)
	cjne	r7,#0x04,00332$
	sjmp	00333$
00332$:
	ret
00333$:
;	src/radio.c:301: if(data[0] > 32) data[0] = 32;
	mov	dptr,#_handle_radio_request_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov  r4,a
	add	a,#0xff - 0x20
	jnc	00130$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x20
	lcall	__gptrput
00130$:
;	src/radio.c:302: if(data[0] < 1) data[0] = 1;
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x01,00335$
00335$:
	jnc	00132$
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	mov	a,#0x01
	lcall	__gptrput
00132$:
;	src/radio.c:305: rfce = 0;
	clr	_rfce
;	src/radio.c:309: write_register_byte(SETUP_RETR, (1 << data[1]) | data[2]);
	mov	a,#0x01
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r2,a
	mov	b,r2
	inc	b
	mov	a,#0x01
	sjmp	00339$
00337$:
	add	a,acc
00339$:
	djnz	b,00337$
	mov	r2,a
	mov	a,#0x02
	add	a,r5
	mov	r1,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r1
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	dptr,#_write_register_byte_PARM_2
	orl	a,r2
	movx	@dptr,a
	mov	dpl,#0x04
	push	ar7
	push	ar6
	push	ar5
	lcall	_write_register_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:312: flush_tx();
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE1
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_write
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:313: flush_rx();     
	mov	dptr,#_spi_write_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	movx	@dptr,a
	mov	dpl,#0xE2
	push	ar7
	push	ar6
	push	ar5
	lcall	_spi_write
;	src/radio.c:316: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x70
	movx	@dptr,a
	mov	dpl,#0x07
	lcall	_write_register_byte
;	src/radio.c:319: write_register_byte(CONFIG, PWR_UP | EN_CRC | CRC0); 
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x0E
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
;	src/radio.c:322: write_register_byte(FEATURE, EN_DPL | EN_DYN_ACK | EN_ACK_PAY);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x07
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_write_register_byte
;	src/radio.c:323: write_register_byte(EN_AA, ENAA_P0);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x01
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_write_register_byte
	pop	ar5
	pop	ar6
	pop	ar7
;	src/radio.c:326: spi_write(W_TX_PAYLOAD, &data[3], data[0]);
	mov	a,#0x03
	add	a,r5
	mov	r2,a
	clr	a
	addc	a,r6
	mov	r3,a
	mov	ar4,r7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	dptr,#_spi_write_PARM_2
	mov	a,r2
	movx	@dptr,a
	mov	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_spi_write_PARM_3
	mov	a,r5
	movx	@dptr,a
	mov	dpl,#0xA0
	lcall	_spi_write
;	src/radio.c:329: rfce = 1;
	setb	_rfce
;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
	mov	r6,#0x19
	mov	r7,#0x00
00166$:
	nop 
	nop 
	nop 
	nop 
	dec	r6
	cjne	r6,#0xFF,00340$
	dec	r7
00340$:
	mov	a,r6
	orl	a,r7
	jnz	00166$
;	src/radio.c:331: rfce = 0;      
	clr	_rfce
;	src/radio.c:334: while(true)
00141$:
;	src/radio.c:337: rfcsn = 0;
	clr	_rfcsn
;	src/radio.c:338: RFDAT = _NOP;
	mov	_RFDAT,#0xFF
;	src/radio.c:339: RFRDY = 0;
	clr	_RFRDY
;	src/radio.c:340: while(!RFRDY);
00133$:
	jnb	_RFRDY,00133$
;	src/radio.c:341: rfcsn = 1;
	setb	_rfcsn
;	src/radio.c:344: if((RFDAT & 0x10) == 0x10)  
	mov	a,#0x10
	anl	a,_RFDAT
	mov	r7,a
	cjne	r7,#0x10,00137$
;	src/radio.c:346: in1buf[0] = 0;
	mov	dptr,#_in1buf
	clr	a
	movx	@dptr,a
;	src/radio.c:347: break;
	sjmp	00142$
00137$:
;	src/radio.c:351: if((RFDAT & 0x20) == 0x20)
	mov	a,#0x20
	anl	a,_RFDAT
	mov	r7,a
	cjne	r7,#0x20,00141$
;	src/radio.c:353: in1buf[0] = 1;
	mov	dptr,#_in1buf
	mov	a,#0x01
	movx	@dptr,a
;	src/radio.c:354: break;
00142$:
;	src/radio.c:359: write_register_byte(FEATURE, EN_DPL | EN_ACK_PAY);
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x06
	movx	@dptr,a
	mov	dpl,#0x1D
	lcall	_write_register_byte
;	src/radio.c:360: write_register_byte(EN_AA, ENAA_NONE);  
	mov	dptr,#_write_register_byte_PARM_2
	clr	a
	movx	@dptr,a
	mov	dpl,#0x01
	lcall	_write_register_byte
;	src/radio.c:363: write_register_byte(CONFIG, PWR_UP | EN_CRC | CRC0 | PRIM_RX);  
	mov	dptr,#_write_register_byte_PARM_2
	mov	a,#0x0F
	movx	@dptr,a
	mov	dpl,#0x00
	lcall	_write_register_byte
;	src/radio.c:366: rfce = 1;
	setb	_rfce
;	src/radio.c:367: in1bc = 1;   
	mov	dptr,#0xC7B7
	mov	a,#0x01
	movx	@dptr,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__bootloader:
	.byte #0x00,#0x78
__xinit__promiscuous_address:
	.db #0xAA	; 170
	.db #0x00	; 0
	.area CABS    (ABS,CODE)
