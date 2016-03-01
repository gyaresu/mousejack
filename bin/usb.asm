;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Feb 24 2016) (Mac OS X x86_64)
; This file was generated Wed Feb 24 11:52:24 2016
;--------------------------------------------------------
	.module usb
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _write_descriptor
	.globl _write_device_string
	.globl _handle_radio_request
	.globl _strlen
	.globl _memset
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
	.globl _request
	.globl _setupbuf
	.globl _out1buf
	.globl _in1buf
	.globl _in0buf
	.globl _init_usb
	.globl _usb_reset_config
	.globl _usb_irq
	.globl _handle_setup_request
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
	.area REG_BANK_1	(REL,OVR,DATA)
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
_write_device_string_sloc0_1_0:
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
_handle_setup_request_handled_1_70:
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
_write_device_string_string_1_66:
	.ds 3
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
_request::
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
;Allocation info for local variables in function 'init_usb'
;------------------------------------------------------------
;__00020005                Allocated with name '_init_usb___00020005_3_61'
;us                        Allocated with name '_init_usb_us_3_61'
;------------------------------------------------------------
;	src/usb.c:30: void init_usb() 
;	-----------------------------------------
;	 function init_usb
;	-----------------------------------------
_init_usb:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	src/usb.c:32: configured = false;
	clr	_configured
;	src/usb.c:35: usbcon = 0x40; 
	mov	_usbcon,#0x40
;	src/usb.c:38: usbcs |= 0x08;
	mov	dptr,#0xC7D6
	movx	a,@dptr
	orl	a,#0x08
	movx	@dptr,a
;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
	mov	r6,#0x50
	mov	r7,#0xC3
00104$:
	nop 
	nop 
	nop 
	nop 
	dec	r6
	cjne	r6,#0xFF,00120$
	dec	r7
00120$:
	mov	a,r6
	orl	a,r7
	jnz	00104$
;	src/usb.c:40: usbcs &= ~0x08;
	mov	dptr,#0xC7D6
	movx	a,@dptr
	anl	a,#0xF7
	movx	@dptr,a
;	src/usb.c:43: usb_reset_config();
	lcall	_usb_reset_config
;	src/usb.c:46: while(!configured);
00101$:
	jnb	_configured,00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_reset_config'
;------------------------------------------------------------
;	src/usb.c:50: void usb_reset_config()
;	-----------------------------------------
;	 function usb_reset_config
;	-----------------------------------------
_usb_reset_config:
;	src/usb.c:53: usbien = 0x11;  // USB reset and setup data valid
	mov	dptr,#0xC7AE
	mov	a,#0x11
	movx	@dptr,a
;	src/usb.c:54: in_ien = 0x00;  // Disable EP IN interrupts
	mov	dptr,#0xC7AC
	clr	a
	movx	@dptr,a
;	src/usb.c:55: out_ien = 0x02; // Enable EP1 OUT interrupt
	mov	dptr,#0xC7AD
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:56: ien1 = 0x10;    // Enable USB interrupt
	mov	_ien1,#0x10
;	src/usb.c:57: in_irq = 0x1F;  // Clear IN IRQ flags
	mov	dptr,#0xC7A9
	mov	a,#0x1F
	movx	@dptr,a
;	src/usb.c:58: out_irq = 0x1F; // Clear OUT IRQ flags
	mov	dptr,#0xC7AA
	movx	@dptr,a
;	src/usb.c:61: inbulkval = 0x02;
	mov	dptr,#0xC7DE
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:62: outbulkval = 0x02;
	mov	dptr,#0xC7DF
	movx	@dptr,a
;	src/usb.c:63: inisoval = 0x00;
	mov	dptr,#0xC7E0
	clr	a
	movx	@dptr,a
;	src/usb.c:64: outisoval = 0x00;  
	mov	dptr,#0xC7E1
	movx	@dptr,a
;	src/usb.c:67: bout1addr = 32;
	mov	dptr,#0xC781
	mov	a,#0x20
	movx	@dptr,a
;	src/usb.c:68: bout2addr = 64;
	mov	dptr,#0xC782
	rl	a
	movx	@dptr,a
;	src/usb.c:69: binstaddr = 16;
	mov	dptr,#0xC788
	mov	a,#0x10
	movx	@dptr,a
;	src/usb.c:70: bin1addr  = 32;
	mov	dptr,#0xC789
	rl	a
	movx	@dptr,a
;	src/usb.c:71: bin2addr  = 64;
	mov	dptr,#0xC78A
	rl	a
	movx	@dptr,a
;	src/usb.c:72: out1bc    = 0xFF;
	mov	dptr,#0xC7C7
	mov	a,#0xFF
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'usb_irq'
;------------------------------------------------------------
;	src/usb.c:76: void usb_irq() __interrupt(12)  __using(1)
;	-----------------------------------------
;	 function usb_irq
;	-----------------------------------------
_usb_irq:
	ar7 = 0x0F
	ar6 = 0x0E
	ar5 = 0x0D
	ar4 = 0x0C
	ar3 = 0x0B
	ar2 = 0x0A
	ar1 = 0x09
	ar0 = 0x08
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
	mov	psw,#0x08
;	src/usb.c:80: switch (ivec) 
	mov	dptr,#0xC7A8
	movx	a,@dptr
	mov	r7,a
	jz	00101$
	cjne	r7,#0x10,00117$
	sjmp	00102$
00117$:
;	src/usb.c:83: case 0x00:
	cjne	r7,#0x24,00105$
	sjmp	00103$
00101$:
;	src/usb.c:84: handle_setup_request();
	mov	psw,#0x00
	lcall	_handle_setup_request
	mov	psw,#0x08
;	src/usb.c:85: usbirq = 0x01;
	mov	dptr,#0xC7AB
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:86: break;
;	src/usb.c:89: case 0x10:
	sjmp	00105$
00102$:
;	src/usb.c:90: usb_reset_config();
	mov	psw,#0x00
	lcall	_usb_reset_config
	mov	psw,#0x08
;	src/usb.c:91: usbirq = 0x10;
	mov	dptr,#0xC7AB
	mov	a,#0x10
	movx	@dptr,a
;	src/usb.c:92: break;
;	src/usb.c:95: case 0x24:
	sjmp	00105$
00103$:
;	src/usb.c:96: handle_radio_request(out1buf[0], &out1buf[1]);
	mov	dptr,#_out1buf
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_handle_radio_request_PARM_2
	mov	a,#(_out1buf + 0x0001)
	movx	@dptr,a
	mov	a,#((_out1buf + 0x0001) >> 8)
	inc	dptr
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dpl,r7
	mov	psw,#0x00
	lcall	_handle_radio_request
	mov	psw,#0x08
;	src/usb.c:97: out_irq = 0x02;
	mov	dptr,#0xC7AA
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:98: out1bc = 0xFF;
	mov	dptr,#0xC7C7
	mov	a,#0xFF
	movx	@dptr,a
;	src/usb.c:100: }
00105$:
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
;------------------------------------------------------------
;Allocation info for local variables in function 'write_device_string'
;------------------------------------------------------------
;sloc0                     Allocated with name '_write_device_string_sloc0_1_0'
;string                    Allocated with name '_write_device_string_string_1_66'
;x                         Allocated with name '_write_device_string_x_1_67'
;length                    Allocated with name '_write_device_string_length_1_67'
;------------------------------------------------------------
;	src/usb.c:104: void write_device_string(const char * string)
;	-----------------------------------------
;	 function write_device_string
;	-----------------------------------------
_write_device_string:
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
	mov	dptr,#_write_device_string_string_1_66
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	src/usb.c:107: int length = strlen(string);
	mov	dptr,#_write_device_string_string_1_66
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
	lcall	_strlen
	mov	r6,dpl
	mov	r7,dph
;	src/usb.c:108: memset(in0buf+2, 0, 64);
	mov	dptr,#_memset_PARM_2
	clr	a
	movx	@dptr,a
	mov	dptr,#_memset_PARM_3
	mov	a,#0x40
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	mov	dptr,#(_in0buf + 0x0002)
	mov	b,#0x00
	push	ar7
	push	ar6
	lcall	_memset
	pop	ar6
	pop	ar7
;	src/usb.c:109: in0buf[0] = 2+length*2;
	mov	ar4,r6
	mov	ar5,r7
	mov	a,r4
	add	a,r4
	mov	r4,a
	inc	r4
	inc	r4
	mov	dptr,#_in0buf
	mov	a,r4
	movx	@dptr,a
;	src/usb.c:110: in0buf[1] = STRING_DESCRIPTOR;
	mov	dptr,#(_in0buf + 0x0001)
	mov	a,#0x03
	movx	@dptr,a
;	src/usb.c:111: for(x = 0; x < length; x++) in0buf[2+x*2] = string[x];
	mov	dptr,#_write_device_string_string_1_66
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r1,#0x00
	mov	r2,#0x00
00103$:
	clr	c
	mov	a,r1
	subb	a,r6
	mov	a,r2
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00101$
	push	ar6
	push	ar7
	mov	ar0,r1
	mov	a,r0
	add	a,r0
	add	a,#0x02
	add	a,#_in0buf
	mov	_write_device_string_sloc0_1_0,a
	clr	a
	addc	a,#(_in0buf >> 8)
	mov	(_write_device_string_sloc0_1_0 + 1),a
	mov	a,r1
	add	a,r3
	mov	r0,a
	mov	a,r2
	addc	a,r4
	mov	r6,a
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	dpl,_write_device_string_sloc0_1_0
	mov	dph,(_write_device_string_sloc0_1_0 + 1)
	movx	@dptr,a
	inc	r1
	cjne	r1,#0x00,00115$
	inc	r2
00115$:
	pop	ar7
	pop	ar6
	sjmp	00103$
00101$:
;	src/usb.c:112: in0bc = in0buf[0];
	mov	dptr,#_in0buf
	movx	a,@dptr
	mov	dptr,#0xC7B5
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_descriptor'
;------------------------------------------------------------
;	src/usb.c:116: bool write_descriptor()
;	-----------------------------------------
;	 function write_descriptor
;	-----------------------------------------
_write_descriptor:
;	src/usb.c:118: switch(request->wValue >> 8)
	mov	dptr,#_request
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#0x00
	cjne	r4,#0x01,00116$
	cjne	r5,#0x00,00116$
	sjmp	00101$
00116$:
	cjne	r4,#0x02,00117$
	cjne	r5,#0x00,00117$
	sjmp	00102$
00117$:
	cjne	r4,#0x03,00118$
	cjne	r5,#0x00,00118$
	ljmp	00103$
00118$:
	ljmp	00104$
;	src/usb.c:121: case DEVICE_DESCRIPTOR:
00101$:
;	src/usb.c:122: memcpy(in0buf, &device_descriptor, request->wLength);
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_device_descriptor
	movx	@dptr,a
	mov	a,#(_device_descriptor >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r4
	movx	@dptr,a
	mov	a,r5
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_in0buf
	mov	b,#0x00
	lcall	_memcpy
;	src/usb.c:123: in0bc = request->wLength;  
	mov	dptr,#_request
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	a,#0x06
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#0xC7B5
	mov	a,r4
	movx	@dptr,a
;	src/usb.c:124: return true;
	setb	c
;	src/usb.c:127: case CONFIGURATION_DESCRIPTOR:
	ret
00102$:
;	src/usb.c:128: memcpy(in0buf, &configuration_descriptor, request->wLength);
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memcpy_PARM_2
	mov	a,#_configuration_descriptor
	movx	@dptr,a
	mov	a,#(_configuration_descriptor >> 8)
	inc	dptr
	movx	@dptr,a
	mov	a,#0x80
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_memcpy_PARM_3
	mov	a,r6
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	dptr,#_in0buf
	mov	b,#0x00
	lcall	_memcpy
;	src/usb.c:129: in0bc = request->wLength;        
	mov	dptr,#_request
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x06
	add	a,r6
	mov	dpl,a
	clr	a
	addc	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	dptr,#0xC7B5
	mov	a,r6
	movx	@dptr,a
;	src/usb.c:130: return true;
	setb	c
;	src/usb.c:134: case STRING_DESCRIPTOR:
	ret
00103$:
;	src/usb.c:135: write_device_string(device_strings[setupbuf[2]]);
	mov	dptr,#(_setupbuf + 0x0002)
	movx	a,@dptr
	mov	b,#0x02
	mul	ab
	add	a,#_device_strings
	mov	dpl,a
	mov	a,#(_device_strings >> 8)
	addc	a,b
	mov	dph,a
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	r5,#0x80
	mov	dpl,r6
	mov	dph,r7
	mov	b,r5
	lcall	_write_device_string
;	src/usb.c:136: return true;   
	setb	c
;	src/usb.c:137: }  
	ret
00104$:
;	src/usb.c:140: return false;
	clr	c
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'handle_setup_request'
;------------------------------------------------------------
;	src/usb.c:144: void handle_setup_request()
;	-----------------------------------------
;	 function handle_setup_request
;	-----------------------------------------
_handle_setup_request:
;	src/usb.c:146: bool handled = false;
	clr	_handle_setup_request_handled_1_70
;	src/usb.c:147: switch(request->bRequest)
	mov	dptr,#_request
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	jz	00110$
	cjne	r5,#0x05,00154$
	sjmp	00104$
00154$:
	cjne	r5,#0x06,00155$
	sjmp	00101$
00155$:
	cjne	r5,#0x08,00156$
	sjmp	00109$
00156$:
	cjne	r5,#0x09,00157$
	sjmp	00105$
00157$:
	ljmp	00117$
;	src/usb.c:150: case GET_DESCRIPTOR:
00101$:
;	src/usb.c:151: if(write_descriptor()) handled = true;
	lcall	_write_descriptor
	jc	00158$
	ljmp	00117$
00158$:
	setb	_handle_setup_request_handled_1_70
;	src/usb.c:152: break;
;	src/usb.c:155: case SET_ADDRESS:
	sjmp	00117$
00104$:
;	src/usb.c:156: handled = true;
	setb	_handle_setup_request_handled_1_70
;	src/usb.c:157: break;
;	src/usb.c:160: case SET_CONFIGURATION:   
	sjmp	00117$
00105$:
;	src/usb.c:161: if (request->wValue == 0) configured = false; // Not configured, drop back to powered state
	mov	dpl,r6
	mov	dph,r7
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	orl	a,r4
	jnz	00107$
	clr	_configured
	sjmp	00108$
00107$:
;	src/usb.c:162: else configured = true;                       // Configured
	setb	_configured
00108$:
;	src/usb.c:163: handled = true;    
	setb	_handle_setup_request_handled_1_70
;	src/usb.c:164: break;
;	src/usb.c:167: case GET_CONFIGURATION:
	sjmp	00117$
00109$:
;	src/usb.c:168: in0buf[0] = configured;
	mov	c,_configured
	clr	a
	rlc	a
	mov	r5,a
	mov	dptr,#_in0buf
	movx	@dptr,a
;	src/usb.c:169: in0bc = 1;
	mov	dptr,#0xC7B5
	mov	a,#0x01
	movx	@dptr,a
;	src/usb.c:170: handled = true;
	setb	_handle_setup_request_handled_1_70
;	src/usb.c:171: break;
;	src/usb.c:174: case GET_STATUS:
	sjmp	00117$
00110$:
;	src/usb.c:177: if (request->bmRequestType == 0x82)
	mov	dpl,r6
	mov	dph,r7
	movx	a,@dptr
	mov	r6,a
	cjne	r6,#0x82,00115$
;	src/usb.c:179: if ((setupbuf[4] & 0x80) == 0x80) in0buf[0] = in1cs;
	mov	dptr,#(_setupbuf + 0x0004)
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x80
	cjne	r7,#0x80,00112$
	mov	dptr,#0xC7B6
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_in0buf
	movx	@dptr,a
	sjmp	00116$
00112$:
;	src/usb.c:180: else in0buf[0] = out1cs; 
	mov	dptr,#0xC7C6
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_in0buf
	movx	@dptr,a
	sjmp	00116$
00115$:
;	src/usb.c:187: in0buf[0] = 0;
	mov	dptr,#_in0buf
	clr	a
	movx	@dptr,a
;	src/usb.c:188: in0buf[1] = 0;
	mov	dptr,#(_in0buf + 0x0001)
	movx	@dptr,a
00116$:
;	src/usb.c:191: in0bc = 2;
	mov	dptr,#0xC7B5
	mov	a,#0x02
	movx	@dptr,a
;	src/usb.c:192: handled = true;
	setb	_handle_setup_request_handled_1_70
;	src/usb.c:194: }
00117$:
;	src/usb.c:197: if(handled) ep0cs = 0x02; // hsnak
	jnb	_handle_setup_request_handled_1_70,00119$
	mov	dptr,#0xC7B4
	mov	a,#0x02
	movx	@dptr,a
	ret
00119$:
;	src/usb.c:198: else ep0cs = 0x01; // ep0stall
	mov	dptr,#0xC7B4
	mov	a,#0x01
	movx	@dptr,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__bootloader:
	.byte #0x00,#0x78
__xinit__request:
	.byte _setupbuf, (_setupbuf >> 8)
	.area CABS    (ABS,CODE)
