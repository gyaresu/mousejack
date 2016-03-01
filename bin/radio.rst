                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Feb 24 2016) (Mac OS X x86_64)
                                      4 ; This file was generated Wed Feb 24 11:52:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module radio
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _spi_transfer
                                     13 	.globl _memcpy
                                     14 	.globl _RFRDY
                                     15 	.globl _rfcsn
                                     16 	.globl _rfce
                                     17 	.globl _ien1
                                     18 	.globl _ien0
                                     19 	.globl _RFDAT
                                     20 	.globl _P0DIR
                                     21 	.globl _P0
                                     22 	.globl _usbcon
                                     23 	.globl _rfcon
                                     24 	.globl _rfctl
                                     25 	.globl _handle_radio_request_PARM_2
                                     26 	.globl _crc_update_PARM_3
                                     27 	.globl _crc_update_PARM_2
                                     28 	.globl _write_register_byte_PARM_2
                                     29 	.globl _spi_read_PARM_3
                                     30 	.globl _spi_read_PARM_2
                                     31 	.globl _spi_write_PARM_3
                                     32 	.globl _spi_write_PARM_2
                                     33 	.globl _configure_phy_PARM_3
                                     34 	.globl _configure_phy_PARM_2
                                     35 	.globl _configure_mac_PARM_3
                                     36 	.globl _configure_mac_PARM_2
                                     37 	.globl _configure_address_PARM_2
                                     38 	.globl _enter_promiscuous_mode_PARM_2
                                     39 	.globl _setupbuf
                                     40 	.globl _out1buf
                                     41 	.globl _in1buf
                                     42 	.globl _in0buf
                                     43 	.globl _enter_promiscuous_mode
                                     44 	.globl _configure_address
                                     45 	.globl _configure_mac
                                     46 	.globl _configure_phy
                                     47 	.globl _spi_write
                                     48 	.globl _spi_read
                                     49 	.globl _write_register_byte
                                     50 	.globl _crc_update
                                     51 	.globl _handle_radio_request
                                     52 ;--------------------------------------------------------
                                     53 ; special function registers
                                     54 ;--------------------------------------------------------
                                     55 	.area RSEG    (ABS,DATA)
      000000                         56 	.org 0x0000
                           0000E6    57 _rfctl	=	0x00e6
                           000090    58 _rfcon	=	0x0090
                           0000A0    59 _usbcon	=	0x00a0
                           000080    60 _P0	=	0x0080
                           000094    61 _P0DIR	=	0x0094
                           0000E5    62 _RFDAT	=	0x00e5
                           0000A8    63 _ien0	=	0x00a8
                           0000B8    64 _ien1	=	0x00b8
                                     65 ;--------------------------------------------------------
                                     66 ; special function bits
                                     67 ;--------------------------------------------------------
                                     68 	.area RSEG    (ABS,DATA)
      000000                         69 	.org 0x0000
                           000090    70 _rfce	=	0x0090
                           000091    71 _rfcsn	=	0x0091
                           0000C0    72 _RFRDY	=	0x00c0
                                     73 ;--------------------------------------------------------
                                     74 ; overlayable register banks
                                     75 ;--------------------------------------------------------
                                     76 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         77 	.ds 8
                                     78 ;--------------------------------------------------------
                                     79 ; internal ram data
                                     80 ;--------------------------------------------------------
                                     81 	.area DSEG    (DATA)
      000012                         82 _enter_promiscuous_mode_sloc0_1_0:
      000012                         83 	.ds 2
      000014                         84 _spi_read_sloc0_1_0:
      000014                         85 	.ds 3
      000017                         86 _handle_radio_request_sloc0_1_0:
      000017                         87 	.ds 2
      000019                         88 _handle_radio_request_sloc1_1_0:
      000019                         89 	.ds 2
                                     90 ;--------------------------------------------------------
                                     91 ; overlayable items in internal ram 
                                     92 ;--------------------------------------------------------
                                     93 ;--------------------------------------------------------
                                     94 ; indirectly addressable internal ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area ISEG    (DATA)
                                     97 ;--------------------------------------------------------
                                     98 ; absolute internal ram data
                                     99 ;--------------------------------------------------------
                                    100 	.area IABS    (ABS,DATA)
                                    101 	.area IABS    (ABS,DATA)
                                    102 ;--------------------------------------------------------
                                    103 ; bit data
                                    104 ;--------------------------------------------------------
                                    105 	.area BSEG    (BIT)
      000003                        106 _configured:
      000003                        107 	.ds 1
                                    108 ;--------------------------------------------------------
                                    109 ; paged external ram data
                                    110 ;--------------------------------------------------------
                                    111 	.area PSEG    (PAG,XDATA)
                                    112 ;--------------------------------------------------------
                                    113 ; external ram data
                                    114 ;--------------------------------------------------------
                                    115 	.area XSEG    (XDATA)
                           00C700   116 _in0buf	=	0xc700
                           00C680   117 _in1buf	=	0xc680
                           00C640   118 _out1buf	=	0xc640
                           00C7E8   119 _setupbuf	=	0xc7e8
      00800B                        120 _in_pm:
      00800B                        121 	.ds 1
      00800C                        122 _pm_prefix_length:
      00800C                        123 	.ds 2
      00800E                        124 _pm_prefix:
      00800E                        125 	.ds 5
      008013                        126 _enter_promiscuous_mode_PARM_2:
      008013                        127 	.ds 1
      008014                        128 _enter_promiscuous_mode_prefix_1_32:
      008014                        129 	.ds 3
      008017                        130 _enter_promiscuous_mode_address_2_34:
      008017                        131 	.ds 2
      008019                        132 _configure_address_PARM_2:
      008019                        133 	.ds 1
      00801A                        134 _configure_address_address_1_35:
      00801A                        135 	.ds 3
      00801D                        136 _configure_mac_PARM_2:
      00801D                        137 	.ds 1
      00801E                        138 _configure_mac_PARM_3:
      00801E                        139 	.ds 1
      00801F                        140 _configure_mac_feature_1_37:
      00801F                        141 	.ds 1
      008020                        142 _configure_phy_PARM_2:
      008020                        143 	.ds 1
      008021                        144 _configure_phy_PARM_3:
      008021                        145 	.ds 1
      008022                        146 _configure_phy_config_1_39:
      008022                        147 	.ds 1
      008023                        148 _spi_transfer_byte_1_41:
      008023                        149 	.ds 1
      008024                        150 _spi_write_PARM_2:
      008024                        151 	.ds 3
      008027                        152 _spi_write_PARM_3:
      008027                        153 	.ds 1
      008028                        154 _spi_write_command_1_43:
      008028                        155 	.ds 1
      008029                        156 _spi_read_PARM_2:
      008029                        157 	.ds 3
      00802C                        158 _spi_read_PARM_3:
      00802C                        159 	.ds 1
      00802D                        160 _spi_read_command_1_45:
      00802D                        161 	.ds 1
      00802E                        162 _write_register_byte_PARM_2:
      00802E                        163 	.ds 1
      00802F                        164 _write_register_byte_reg_1_47:
      00802F                        165 	.ds 1
      008030                        166 _crc_update_PARM_2:
      008030                        167 	.ds 1
      008031                        168 _crc_update_PARM_3:
      008031                        169 	.ds 1
      008032                        170 _crc_update_crc_1_49:
      008032                        171 	.ds 2
      008034                        172 _handle_radio_request_PARM_2:
      008034                        173 	.ds 3
      008037                        174 _handle_radio_request_request_1_51:
      008037                        175 	.ds 1
      008038                        176 _handle_radio_request_value_2_58:
      008038                        177 	.ds 1
      008039                        178 _handle_radio_request_crc_4_63:
      008039                        179 	.ds 2
      00803B                        180 _handle_radio_request_crc_given_4_63:
      00803B                        181 	.ds 2
      00803D                        182 _handle_radio_request_payload_4_63:
      00803D                        183 	.ds 37
                                    184 ;--------------------------------------------------------
                                    185 ; absolute external ram data
                                    186 ;--------------------------------------------------------
                                    187 	.area XABS    (ABS,XDATA)
                                    188 ;--------------------------------------------------------
                                    189 ; external initialized ram data
                                    190 ;--------------------------------------------------------
                                    191 	.area XISEG   (XDATA)
      00807C                        192 _bootloader:
      00807C                        193 	.ds 2
      00807E                        194 _promiscuous_address:
      00807E                        195 	.ds 2
                                    196 	.area HOME    (CODE)
                                    197 	.area GSINIT0 (CODE)
                                    198 	.area GSINIT1 (CODE)
                                    199 	.area GSINIT2 (CODE)
                                    200 	.area GSINIT3 (CODE)
                                    201 	.area GSINIT4 (CODE)
                                    202 	.area GSINIT5 (CODE)
                                    203 	.area GSINIT  (CODE)
                                    204 	.area GSFINAL (CODE)
                                    205 	.area CSEG    (CODE)
                                    206 ;--------------------------------------------------------
                                    207 ; global & static initialisations
                                    208 ;--------------------------------------------------------
                                    209 	.area HOME    (CODE)
                                    210 	.area GSINIT  (CODE)
                                    211 	.area GSFINAL (CODE)
                                    212 	.area GSINIT  (CODE)
                                    213 ;--------------------------------------------------------
                                    214 ; Home
                                    215 ;--------------------------------------------------------
                                    216 	.area HOME    (CODE)
                                    217 	.area HOME    (CODE)
                                    218 ;--------------------------------------------------------
                                    219 ; code
                                    220 ;--------------------------------------------------------
                                    221 	.area CSEG    (CODE)
                                    222 ;------------------------------------------------------------
                                    223 ;Allocation info for local variables in function 'enter_promiscuous_mode'
                                    224 ;------------------------------------------------------------
                                    225 ;sloc0                     Allocated with name '_enter_promiscuous_mode_sloc0_1_0'
                                    226 ;prefix_length             Allocated with name '_enter_promiscuous_mode_PARM_2'
                                    227 ;prefix                    Allocated with name '_enter_promiscuous_mode_prefix_1_32'
                                    228 ;x                         Allocated with name '_enter_promiscuous_mode_x_1_33'
                                    229 ;address                   Allocated with name '_enter_promiscuous_mode_address_2_34'
                                    230 ;------------------------------------------------------------
                                    231 ;	src/radio.c:9: void enter_promiscuous_mode(uint8_t * prefix, uint8_t prefix_length)
                                    232 ;	-----------------------------------------
                                    233 ;	 function enter_promiscuous_mode
                                    234 ;	-----------------------------------------
      000463                        235 _enter_promiscuous_mode:
                           000007   236 	ar7 = 0x07
                           000006   237 	ar6 = 0x06
                           000005   238 	ar5 = 0x05
                           000004   239 	ar4 = 0x04
                           000003   240 	ar3 = 0x03
                           000002   241 	ar2 = 0x02
                           000001   242 	ar1 = 0x01
                           000000   243 	ar0 = 0x00
      000463 AF F0            [24]  244 	mov	r7,b
      000465 AE 83            [24]  245 	mov	r6,dph
      000467 E5 82            [12]  246 	mov	a,dpl
      000469 90 80 14         [24]  247 	mov	dptr,#_enter_promiscuous_mode_prefix_1_32
      00046C F0               [24]  248 	movx	@dptr,a
      00046D EE               [12]  249 	mov	a,r6
      00046E A3               [24]  250 	inc	dptr
      00046F F0               [24]  251 	movx	@dptr,a
      000470 EF               [12]  252 	mov	a,r7
      000471 A3               [24]  253 	inc	dptr
      000472 F0               [24]  254 	movx	@dptr,a
                                    255 ;	src/radio.c:13: for(x = 0; x < prefix_length; x++) pm_prefix[prefix_length - 1 - x] = prefix[x];
      000473 90 80 14         [24]  256 	mov	dptr,#_enter_promiscuous_mode_prefix_1_32
      000476 E0               [24]  257 	movx	a,@dptr
      000477 FD               [12]  258 	mov	r5,a
      000478 A3               [24]  259 	inc	dptr
      000479 E0               [24]  260 	movx	a,@dptr
      00047A FE               [12]  261 	mov	r6,a
      00047B A3               [24]  262 	inc	dptr
      00047C E0               [24]  263 	movx	a,@dptr
      00047D FF               [12]  264 	mov	r7,a
      00047E 90 80 13         [24]  265 	mov	dptr,#_enter_promiscuous_mode_PARM_2
      000481 E0               [24]  266 	movx	a,@dptr
      000482 FC               [12]  267 	mov	r4,a
      000483 7A 00            [12]  268 	mov	r2,#0x00
      000485 7B 00            [12]  269 	mov	r3,#0x00
      000487                        270 00109$:
      000487 8C 00            [24]  271 	mov	ar0,r4
      000489 79 00            [12]  272 	mov	r1,#0x00
      00048B C3               [12]  273 	clr	c
      00048C EA               [12]  274 	mov	a,r2
      00048D 98               [12]  275 	subb	a,r0
      00048E EB               [12]  276 	mov	a,r3
      00048F 64 80            [12]  277 	xrl	a,#0x80
      000491 89 F0            [24]  278 	mov	b,r1
      000493 63 F0 80         [24]  279 	xrl	b,#0x80
      000496 95 F0            [12]  280 	subb	a,b
      000498 50 33            [24]  281 	jnc	00101$
      00049A EC               [12]  282 	mov	a,r4
      00049B 14               [12]  283 	dec	a
      00049C 8A 00            [24]  284 	mov	ar0,r2
      00049E C3               [12]  285 	clr	c
      00049F 98               [12]  286 	subb	a,r0
      0004A0 24 0E            [12]  287 	add	a,#_pm_prefix
      0004A2 F5 12            [12]  288 	mov	_enter_promiscuous_mode_sloc0_1_0,a
      0004A4 E4               [12]  289 	clr	a
      0004A5 34 80            [12]  290 	addc	a,#(_pm_prefix >> 8)
      0004A7 F5 13            [12]  291 	mov	(_enter_promiscuous_mode_sloc0_1_0 + 1),a
      0004A9 C0 04            [24]  292 	push	ar4
      0004AB EA               [12]  293 	mov	a,r2
      0004AC 2D               [12]  294 	add	a,r5
      0004AD F8               [12]  295 	mov	r0,a
      0004AE EB               [12]  296 	mov	a,r3
      0004AF 3E               [12]  297 	addc	a,r6
      0004B0 F9               [12]  298 	mov	r1,a
      0004B1 8F 04            [24]  299 	mov	ar4,r7
      0004B3 88 82            [24]  300 	mov	dpl,r0
      0004B5 89 83            [24]  301 	mov	dph,r1
      0004B7 8C F0            [24]  302 	mov	b,r4
      0004B9 12 0F 64         [24]  303 	lcall	__gptrget
      0004BC F8               [12]  304 	mov	r0,a
      0004BD 85 12 82         [24]  305 	mov	dpl,_enter_promiscuous_mode_sloc0_1_0
      0004C0 85 13 83         [24]  306 	mov	dph,(_enter_promiscuous_mode_sloc0_1_0 + 1)
      0004C3 F0               [24]  307 	movx	@dptr,a
      0004C4 0A               [12]  308 	inc	r2
      0004C5 BA 00 01         [24]  309 	cjne	r2,#0x00,00137$
      0004C8 0B               [12]  310 	inc	r3
      0004C9                        311 00137$:
      0004C9 D0 04            [24]  312 	pop	ar4
      0004CB 80 BA            [24]  313 	sjmp	00109$
      0004CD                        314 00101$:
                                    315 ;	src/radio.c:14: pm_prefix_length = prefix_length > 5 ? 5 : prefix_length;
      0004CD EC               [12]  316 	mov	a,r4
      0004CE 24 FA            [12]  317 	add	a,#0xff - 0x05
      0004D0 50 04            [24]  318 	jnc	00113$
      0004D2 7F 05            [12]  319 	mov	r7,#0x05
      0004D4 80 02            [24]  320 	sjmp	00114$
      0004D6                        321 00113$:
      0004D6 8C 07            [24]  322 	mov	ar7,r4
      0004D8                        323 00114$:
      0004D8 90 80 0C         [24]  324 	mov	dptr,#_pm_prefix_length
      0004DB EF               [12]  325 	mov	a,r7
      0004DC F0               [24]  326 	movx	@dptr,a
      0004DD E4               [12]  327 	clr	a
      0004DE A3               [24]  328 	inc	dptr
      0004DF F0               [24]  329 	movx	@dptr,a
                                    330 ;	src/radio.c:15: in_pm = true;
      0004E0 90 80 0B         [24]  331 	mov	dptr,#_in_pm
      0004E3 04               [12]  332 	inc	a
      0004E4 F0               [24]  333 	movx	@dptr,a
                                    334 ;	src/radio.c:18: rfce = 0;
      0004E5 C2 90            [12]  335 	clr	_rfce
                                    336 ;	src/radio.c:21: write_register_byte(EN_RXADDR, ENRX_P0);
      0004E7 90 80 2E         [24]  337 	mov	dptr,#_write_register_byte_PARM_2
      0004EA 74 01            [12]  338 	mov	a,#0x01
      0004EC F0               [24]  339 	movx	@dptr,a
      0004ED 75 82 02         [24]  340 	mov	dpl,#0x02
      0004F0 12 07 4B         [24]  341 	lcall	_write_register_byte
                                    342 ;	src/radio.c:24: if(pm_prefix_length == 0) configure_address(promiscuous_address, 2);
      0004F3 90 80 0C         [24]  343 	mov	dptr,#_pm_prefix_length
      0004F6 E0               [24]  344 	movx	a,@dptr
      0004F7 FE               [12]  345 	mov	r6,a
      0004F8 A3               [24]  346 	inc	dptr
      0004F9 E0               [24]  347 	movx	a,@dptr
      0004FA FF               [12]  348 	mov	r7,a
      0004FB 4E               [12]  349 	orl	a,r6
      0004FC 70 11            [24]  350 	jnz	00106$
      0004FE 90 80 19         [24]  351 	mov	dptr,#_configure_address_PARM_2
      000501 74 02            [12]  352 	mov	a,#0x02
      000503 F0               [24]  353 	movx	@dptr,a
      000504 90 80 7E         [24]  354 	mov	dptr,#_promiscuous_address
      000507 75 F0 00         [24]  355 	mov	b,#0x00
      00050A 12 05 7B         [24]  356 	lcall	_configure_address
      00050D 80 43            [24]  357 	sjmp	00107$
      00050F                        358 00106$:
                                    359 ;	src/radio.c:27: else if(pm_prefix_length == 1)
      00050F BE 01 32         [24]  360 	cjne	r6,#0x01,00103$
      000512 BF 00 2F         [24]  361 	cjne	r7,#0x00,00103$
                                    362 ;	src/radio.c:29: uint8_t address[2] = { pm_prefix[0], (pm_prefix[0] & 0x80) == 0x80 ? 0xAA : 0x55 };
      000515 90 80 0E         [24]  363 	mov	dptr,#_pm_prefix
      000518 E0               [24]  364 	movx	a,@dptr
      000519 90 80 17         [24]  365 	mov	dptr,#_enter_promiscuous_mode_address_2_34
      00051C F0               [24]  366 	movx	@dptr,a
      00051D 90 80 0E         [24]  367 	mov	dptr,#_pm_prefix
      000520 E0               [24]  368 	movx	a,@dptr
      000521 FD               [12]  369 	mov	r5,a
      000522 53 05 80         [24]  370 	anl	ar5,#0x80
      000525 BD 80 04         [24]  371 	cjne	r5,#0x80,00115$
      000528 7D AA            [12]  372 	mov	r5,#0xAA
      00052A 80 02            [24]  373 	sjmp	00116$
      00052C                        374 00115$:
      00052C 7D 55            [12]  375 	mov	r5,#0x55
      00052E                        376 00116$:
      00052E 90 80 18         [24]  377 	mov	dptr,#(_enter_promiscuous_mode_address_2_34 + 0x0001)
      000531 ED               [12]  378 	mov	a,r5
      000532 F0               [24]  379 	movx	@dptr,a
                                    380 ;	src/radio.c:30: configure_address(address, 2);
      000533 90 80 19         [24]  381 	mov	dptr,#_configure_address_PARM_2
      000536 74 02            [12]  382 	mov	a,#0x02
      000538 F0               [24]  383 	movx	@dptr,a
      000539 90 80 17         [24]  384 	mov	dptr,#_enter_promiscuous_mode_address_2_34
      00053C 75 F0 00         [24]  385 	mov	b,#0x00
      00053F 12 05 7B         [24]  386 	lcall	_configure_address
      000542 80 0E            [24]  387 	sjmp	00107$
      000544                        388 00103$:
                                    389 ;	src/radio.c:34: else configure_address(pm_prefix, pm_prefix_length);
      000544 90 80 19         [24]  390 	mov	dptr,#_configure_address_PARM_2
      000547 EE               [12]  391 	mov	a,r6
      000548 F0               [24]  392 	movx	@dptr,a
      000549 90 80 0E         [24]  393 	mov	dptr,#_pm_prefix
      00054C 75 F0 00         [24]  394 	mov	b,#0x00
      00054F 12 05 7B         [24]  395 	lcall	_configure_address
      000552                        396 00107$:
                                    397 ;	src/radio.c:37: configure_mac(0, 0, ENAA_NONE);
      000552 90 80 1D         [24]  398 	mov	dptr,#_configure_mac_PARM_2
      000555 E4               [12]  399 	clr	a
      000556 F0               [24]  400 	movx	@dptr,a
      000557 90 80 1E         [24]  401 	mov	dptr,#_configure_mac_PARM_3
      00055A F0               [24]  402 	movx	@dptr,a
      00055B 75 82 00         [24]  403 	mov	dpl,#0x00
      00055E 12 05 F2         [24]  404 	lcall	_configure_mac
                                    405 ;	src/radio.c:40: configure_phy(PRIM_RX | PWR_UP, RATE_2M, 32);
      000561 90 80 20         [24]  406 	mov	dptr,#_configure_phy_PARM_2
      000564 74 08            [12]  407 	mov	a,#0x08
      000566 F0               [24]  408 	movx	@dptr,a
      000567 90 80 21         [24]  409 	mov	dptr,#_configure_phy_PARM_3
      00056A 74 20            [12]  410 	mov	a,#0x20
      00056C F0               [24]  411 	movx	@dptr,a
      00056D 75 82 03         [24]  412 	mov	dpl,#0x03
      000570 12 06 1F         [24]  413 	lcall	_configure_phy
                                    414 ;	src/radio.c:43: rfce = 1;
      000573 D2 90            [12]  415 	setb	_rfce
                                    416 ;	src/radio.c:44: in1bc = 0;
      000575 90 C7 B7         [24]  417 	mov	dptr,#0xC7B7
      000578 E4               [12]  418 	clr	a
      000579 F0               [24]  419 	movx	@dptr,a
      00057A 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'configure_address'
                                    423 ;------------------------------------------------------------
                                    424 ;length                    Allocated with name '_configure_address_PARM_2'
                                    425 ;address                   Allocated with name '_configure_address_address_1_35'
                                    426 ;------------------------------------------------------------
                                    427 ;	src/radio.c:48: void configure_address(uint8_t * address, uint8_t length)
                                    428 ;	-----------------------------------------
                                    429 ;	 function configure_address
                                    430 ;	-----------------------------------------
      00057B                        431 _configure_address:
      00057B AF F0            [24]  432 	mov	r7,b
      00057D AE 83            [24]  433 	mov	r6,dph
      00057F E5 82            [12]  434 	mov	a,dpl
      000581 90 80 1A         [24]  435 	mov	dptr,#_configure_address_address_1_35
      000584 F0               [24]  436 	movx	@dptr,a
      000585 EE               [12]  437 	mov	a,r6
      000586 A3               [24]  438 	inc	dptr
      000587 F0               [24]  439 	movx	@dptr,a
      000588 EF               [12]  440 	mov	a,r7
      000589 A3               [24]  441 	inc	dptr
      00058A F0               [24]  442 	movx	@dptr,a
                                    443 ;	src/radio.c:50: write_register_byte(EN_RXADDR, ENRX_P0);
      00058B 90 80 2E         [24]  444 	mov	dptr,#_write_register_byte_PARM_2
      00058E 74 01            [12]  445 	mov	a,#0x01
      000590 F0               [24]  446 	movx	@dptr,a
      000591 75 82 02         [24]  447 	mov	dpl,#0x02
      000594 12 07 4B         [24]  448 	lcall	_write_register_byte
                                    449 ;	src/radio.c:51: write_register_byte(SETUP_AW, length - 2);
      000597 90 80 19         [24]  450 	mov	dptr,#_configure_address_PARM_2
      00059A E0               [24]  451 	movx	a,@dptr
      00059B FF               [12]  452 	mov	r7,a
      00059C 24 FE            [12]  453 	add	a,#0xFE
      00059E 90 80 2E         [24]  454 	mov	dptr,#_write_register_byte_PARM_2
      0005A1 F0               [24]  455 	movx	@dptr,a
      0005A2 75 82 03         [24]  456 	mov	dpl,#0x03
      0005A5 C0 07            [24]  457 	push	ar7
      0005A7 12 07 4B         [24]  458 	lcall	_write_register_byte
      0005AA D0 07            [24]  459 	pop	ar7
                                    460 ;	src/radio.c:52: write_register(TX_ADDR, address, length);
      0005AC 90 80 1A         [24]  461 	mov	dptr,#_configure_address_address_1_35
      0005AF E0               [24]  462 	movx	a,@dptr
      0005B0 FC               [12]  463 	mov	r4,a
      0005B1 A3               [24]  464 	inc	dptr
      0005B2 E0               [24]  465 	movx	a,@dptr
      0005B3 FD               [12]  466 	mov	r5,a
      0005B4 A3               [24]  467 	inc	dptr
      0005B5 E0               [24]  468 	movx	a,@dptr
      0005B6 FE               [12]  469 	mov	r6,a
      0005B7 90 80 24         [24]  470 	mov	dptr,#_spi_write_PARM_2
      0005BA EC               [12]  471 	mov	a,r4
      0005BB F0               [24]  472 	movx	@dptr,a
      0005BC ED               [12]  473 	mov	a,r5
      0005BD A3               [24]  474 	inc	dptr
      0005BE F0               [24]  475 	movx	@dptr,a
      0005BF EE               [12]  476 	mov	a,r6
      0005C0 A3               [24]  477 	inc	dptr
      0005C1 F0               [24]  478 	movx	@dptr,a
      0005C2 90 80 27         [24]  479 	mov	dptr,#_spi_write_PARM_3
      0005C5 EF               [12]  480 	mov	a,r7
      0005C6 F0               [24]  481 	movx	@dptr,a
      0005C7 75 82 30         [24]  482 	mov	dpl,#0x30
      0005CA C0 07            [24]  483 	push	ar7
      0005CC 12 06 5E         [24]  484 	lcall	_spi_write
      0005CF D0 07            [24]  485 	pop	ar7
                                    486 ;	src/radio.c:53: write_register(RX_ADDR_P0, address, length);  
      0005D1 90 80 1A         [24]  487 	mov	dptr,#_configure_address_address_1_35
      0005D4 E0               [24]  488 	movx	a,@dptr
      0005D5 FC               [12]  489 	mov	r4,a
      0005D6 A3               [24]  490 	inc	dptr
      0005D7 E0               [24]  491 	movx	a,@dptr
      0005D8 FD               [12]  492 	mov	r5,a
      0005D9 A3               [24]  493 	inc	dptr
      0005DA E0               [24]  494 	movx	a,@dptr
      0005DB FE               [12]  495 	mov	r6,a
      0005DC 90 80 24         [24]  496 	mov	dptr,#_spi_write_PARM_2
      0005DF EC               [12]  497 	mov	a,r4
      0005E0 F0               [24]  498 	movx	@dptr,a
      0005E1 ED               [12]  499 	mov	a,r5
      0005E2 A3               [24]  500 	inc	dptr
      0005E3 F0               [24]  501 	movx	@dptr,a
      0005E4 EE               [12]  502 	mov	a,r6
      0005E5 A3               [24]  503 	inc	dptr
      0005E6 F0               [24]  504 	movx	@dptr,a
      0005E7 90 80 27         [24]  505 	mov	dptr,#_spi_write_PARM_3
      0005EA EF               [12]  506 	mov	a,r7
      0005EB F0               [24]  507 	movx	@dptr,a
      0005EC 75 82 2A         [24]  508 	mov	dpl,#0x2A
      0005EF 02 06 5E         [24]  509 	ljmp	_spi_write
                                    510 ;------------------------------------------------------------
                                    511 ;Allocation info for local variables in function 'configure_mac'
                                    512 ;------------------------------------------------------------
                                    513 ;dynpd                     Allocated with name '_configure_mac_PARM_2'
                                    514 ;en_aa                     Allocated with name '_configure_mac_PARM_3'
                                    515 ;feature                   Allocated with name '_configure_mac_feature_1_37'
                                    516 ;------------------------------------------------------------
                                    517 ;	src/radio.c:57: void configure_mac(uint8_t feature, uint8_t dynpd, uint8_t en_aa)
                                    518 ;	-----------------------------------------
                                    519 ;	 function configure_mac
                                    520 ;	-----------------------------------------
      0005F2                        521 _configure_mac:
      0005F2 E5 82            [12]  522 	mov	a,dpl
      0005F4 90 80 1F         [24]  523 	mov	dptr,#_configure_mac_feature_1_37
      0005F7 F0               [24]  524 	movx	@dptr,a
                                    525 ;	src/radio.c:59: write_register_byte(FEATURE, feature);
      0005F8 E0               [24]  526 	movx	a,@dptr
      0005F9 90 80 2E         [24]  527 	mov	dptr,#_write_register_byte_PARM_2
      0005FC F0               [24]  528 	movx	@dptr,a
      0005FD 75 82 1D         [24]  529 	mov	dpl,#0x1D
      000600 12 07 4B         [24]  530 	lcall	_write_register_byte
                                    531 ;	src/radio.c:60: write_register_byte(DYNPD, dynpd);
      000603 90 80 1D         [24]  532 	mov	dptr,#_configure_mac_PARM_2
      000606 E0               [24]  533 	movx	a,@dptr
      000607 90 80 2E         [24]  534 	mov	dptr,#_write_register_byte_PARM_2
      00060A F0               [24]  535 	movx	@dptr,a
      00060B 75 82 1C         [24]  536 	mov	dpl,#0x1C
      00060E 12 07 4B         [24]  537 	lcall	_write_register_byte
                                    538 ;	src/radio.c:61: write_register_byte(EN_AA, en_aa);  
      000611 90 80 1E         [24]  539 	mov	dptr,#_configure_mac_PARM_3
      000614 E0               [24]  540 	movx	a,@dptr
      000615 90 80 2E         [24]  541 	mov	dptr,#_write_register_byte_PARM_2
      000618 F0               [24]  542 	movx	@dptr,a
      000619 75 82 01         [24]  543 	mov	dpl,#0x01
      00061C 02 07 4B         [24]  544 	ljmp	_write_register_byte
                                    545 ;------------------------------------------------------------
                                    546 ;Allocation info for local variables in function 'configure_phy'
                                    547 ;------------------------------------------------------------
                                    548 ;rf_setup                  Allocated with name '_configure_phy_PARM_2'
                                    549 ;rx_pw                     Allocated with name '_configure_phy_PARM_3'
                                    550 ;config                    Allocated with name '_configure_phy_config_1_39'
                                    551 ;------------------------------------------------------------
                                    552 ;	src/radio.c:65: void configure_phy(uint8_t config, uint8_t rf_setup, uint8_t rx_pw)
                                    553 ;	-----------------------------------------
                                    554 ;	 function configure_phy
                                    555 ;	-----------------------------------------
      00061F                        556 _configure_phy:
      00061F E5 82            [12]  557 	mov	a,dpl
      000621 90 80 22         [24]  558 	mov	dptr,#_configure_phy_config_1_39
      000624 F0               [24]  559 	movx	@dptr,a
                                    560 ;	src/radio.c:67: write_register_byte(CONFIG, config);
      000625 E0               [24]  561 	movx	a,@dptr
      000626 90 80 2E         [24]  562 	mov	dptr,#_write_register_byte_PARM_2
      000629 F0               [24]  563 	movx	@dptr,a
      00062A 75 82 00         [24]  564 	mov	dpl,#0x00
      00062D 12 07 4B         [24]  565 	lcall	_write_register_byte
                                    566 ;	src/radio.c:68: write_register_byte(RF_SETUP, rf_setup);
      000630 90 80 20         [24]  567 	mov	dptr,#_configure_phy_PARM_2
      000633 E0               [24]  568 	movx	a,@dptr
      000634 90 80 2E         [24]  569 	mov	dptr,#_write_register_byte_PARM_2
      000637 F0               [24]  570 	movx	@dptr,a
      000638 75 82 06         [24]  571 	mov	dpl,#0x06
      00063B 12 07 4B         [24]  572 	lcall	_write_register_byte
                                    573 ;	src/radio.c:69: write_register_byte(RX_PW_P0, rx_pw);
      00063E 90 80 21         [24]  574 	mov	dptr,#_configure_phy_PARM_3
      000641 E0               [24]  575 	movx	a,@dptr
      000642 90 80 2E         [24]  576 	mov	dptr,#_write_register_byte_PARM_2
      000645 F0               [24]  577 	movx	@dptr,a
      000646 75 82 11         [24]  578 	mov	dpl,#0x11
      000649 02 07 4B         [24]  579 	ljmp	_write_register_byte
                                    580 ;------------------------------------------------------------
                                    581 ;Allocation info for local variables in function 'spi_transfer'
                                    582 ;------------------------------------------------------------
                                    583 ;byte                      Allocated with name '_spi_transfer_byte_1_41'
                                    584 ;------------------------------------------------------------
                                    585 ;	src/radio.c:73: uint8_t spi_transfer(uint8_t byte)
                                    586 ;	-----------------------------------------
                                    587 ;	 function spi_transfer
                                    588 ;	-----------------------------------------
      00064C                        589 _spi_transfer:
      00064C E5 82            [12]  590 	mov	a,dpl
      00064E 90 80 23         [24]  591 	mov	dptr,#_spi_transfer_byte_1_41
      000651 F0               [24]  592 	movx	@dptr,a
                                    593 ;	src/radio.c:75: RFDAT = byte;
      000652 E0               [24]  594 	movx	a,@dptr
      000653 F5 E5            [12]  595 	mov	_RFDAT,a
                                    596 ;	src/radio.c:76: RFRDY = 0;
      000655 C2 C0            [12]  597 	clr	_RFRDY
                                    598 ;	src/radio.c:77: while(!RFRDY);
      000657                        599 00101$:
      000657 30 C0 FD         [24]  600 	jnb	_RFRDY,00101$
                                    601 ;	src/radio.c:78: return RFDAT;
      00065A 85 E5 82         [24]  602 	mov	dpl,_RFDAT
      00065D 22               [24]  603 	ret
                                    604 ;------------------------------------------------------------
                                    605 ;Allocation info for local variables in function 'spi_write'
                                    606 ;------------------------------------------------------------
                                    607 ;buffer                    Allocated with name '_spi_write_PARM_2'
                                    608 ;length                    Allocated with name '_spi_write_PARM_3'
                                    609 ;command                   Allocated with name '_spi_write_command_1_43'
                                    610 ;x                         Allocated with name '_spi_write_x_1_44'
                                    611 ;------------------------------------------------------------
                                    612 ;	src/radio.c:82: void spi_write(uint8_t command, uint8_t * buffer, uint8_t length)
                                    613 ;	-----------------------------------------
                                    614 ;	 function spi_write
                                    615 ;	-----------------------------------------
      00065E                        616 _spi_write:
      00065E E5 82            [12]  617 	mov	a,dpl
      000660 90 80 28         [24]  618 	mov	dptr,#_spi_write_command_1_43
      000663 F0               [24]  619 	movx	@dptr,a
                                    620 ;	src/radio.c:85: rfcsn = 0;
      000664 C2 91            [12]  621 	clr	_rfcsn
                                    622 ;	src/radio.c:86: spi_transfer(command);
      000666 90 80 28         [24]  623 	mov	dptr,#_spi_write_command_1_43
      000669 E0               [24]  624 	movx	a,@dptr
      00066A F5 82            [12]  625 	mov	dpl,a
      00066C 12 06 4C         [24]  626 	lcall	_spi_transfer
                                    627 ;	src/radio.c:87: for(x = 0; x < length; x++) spi_transfer(buffer[x]);
      00066F 90 80 24         [24]  628 	mov	dptr,#_spi_write_PARM_2
      000672 E0               [24]  629 	movx	a,@dptr
      000673 FD               [12]  630 	mov	r5,a
      000674 A3               [24]  631 	inc	dptr
      000675 E0               [24]  632 	movx	a,@dptr
      000676 FE               [12]  633 	mov	r6,a
      000677 A3               [24]  634 	inc	dptr
      000678 E0               [24]  635 	movx	a,@dptr
      000679 FF               [12]  636 	mov	r7,a
      00067A 90 80 27         [24]  637 	mov	dptr,#_spi_write_PARM_3
      00067D E0               [24]  638 	movx	a,@dptr
      00067E FC               [12]  639 	mov	r4,a
      00067F 7A 00            [12]  640 	mov	r2,#0x00
      000681 7B 00            [12]  641 	mov	r3,#0x00
      000683                        642 00103$:
      000683 8C 00            [24]  643 	mov	ar0,r4
      000685 79 00            [12]  644 	mov	r1,#0x00
      000687 C3               [12]  645 	clr	c
      000688 EA               [12]  646 	mov	a,r2
      000689 98               [12]  647 	subb	a,r0
      00068A EB               [12]  648 	mov	a,r3
      00068B 64 80            [12]  649 	xrl	a,#0x80
      00068D 89 F0            [24]  650 	mov	b,r1
      00068F 63 F0 80         [24]  651 	xrl	b,#0x80
      000692 95 F0            [12]  652 	subb	a,b
      000694 50 39            [24]  653 	jnc	00101$
      000696 C0 04            [24]  654 	push	ar4
      000698 EA               [12]  655 	mov	a,r2
      000699 2D               [12]  656 	add	a,r5
      00069A F8               [12]  657 	mov	r0,a
      00069B EB               [12]  658 	mov	a,r3
      00069C 3E               [12]  659 	addc	a,r6
      00069D F9               [12]  660 	mov	r1,a
      00069E 8F 04            [24]  661 	mov	ar4,r7
      0006A0 88 82            [24]  662 	mov	dpl,r0
      0006A2 89 83            [24]  663 	mov	dph,r1
      0006A4 8C F0            [24]  664 	mov	b,r4
      0006A6 12 0F 64         [24]  665 	lcall	__gptrget
      0006A9 F5 82            [12]  666 	mov	dpl,a
      0006AB C0 07            [24]  667 	push	ar7
      0006AD C0 06            [24]  668 	push	ar6
      0006AF C0 05            [24]  669 	push	ar5
      0006B1 C0 04            [24]  670 	push	ar4
      0006B3 C0 03            [24]  671 	push	ar3
      0006B5 C0 02            [24]  672 	push	ar2
      0006B7 12 06 4C         [24]  673 	lcall	_spi_transfer
      0006BA D0 02            [24]  674 	pop	ar2
      0006BC D0 03            [24]  675 	pop	ar3
      0006BE D0 04            [24]  676 	pop	ar4
      0006C0 D0 05            [24]  677 	pop	ar5
      0006C2 D0 06            [24]  678 	pop	ar6
      0006C4 D0 07            [24]  679 	pop	ar7
      0006C6 0A               [12]  680 	inc	r2
      0006C7 BA 00 01         [24]  681 	cjne	r2,#0x00,00115$
      0006CA 0B               [12]  682 	inc	r3
      0006CB                        683 00115$:
      0006CB D0 04            [24]  684 	pop	ar4
      0006CD 80 B4            [24]  685 	sjmp	00103$
      0006CF                        686 00101$:
                                    687 ;	src/radio.c:88: rfcsn = 1;  
      0006CF D2 91            [12]  688 	setb	_rfcsn
      0006D1 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'spi_read'
                                    692 ;------------------------------------------------------------
                                    693 ;sloc0                     Allocated with name '_spi_read_sloc0_1_0'
                                    694 ;buffer                    Allocated with name '_spi_read_PARM_2'
                                    695 ;length                    Allocated with name '_spi_read_PARM_3'
                                    696 ;command                   Allocated with name '_spi_read_command_1_45'
                                    697 ;x                         Allocated with name '_spi_read_x_1_46'
                                    698 ;------------------------------------------------------------
                                    699 ;	src/radio.c:92: void spi_read(uint8_t command, uint8_t * buffer, uint8_t length)
                                    700 ;	-----------------------------------------
                                    701 ;	 function spi_read
                                    702 ;	-----------------------------------------
      0006D2                        703 _spi_read:
      0006D2 E5 82            [12]  704 	mov	a,dpl
      0006D4 90 80 2D         [24]  705 	mov	dptr,#_spi_read_command_1_45
      0006D7 F0               [24]  706 	movx	@dptr,a
                                    707 ;	src/radio.c:95: rfcsn = 0;
      0006D8 C2 91            [12]  708 	clr	_rfcsn
                                    709 ;	src/radio.c:96: spi_transfer(command);
      0006DA 90 80 2D         [24]  710 	mov	dptr,#_spi_read_command_1_45
      0006DD E0               [24]  711 	movx	a,@dptr
      0006DE F5 82            [12]  712 	mov	dpl,a
      0006E0 12 06 4C         [24]  713 	lcall	_spi_transfer
                                    714 ;	src/radio.c:97: for(x = 0; x < length; x++) buffer[x] = spi_transfer(0xFF);
      0006E3 90 80 29         [24]  715 	mov	dptr,#_spi_read_PARM_2
      0006E6 E0               [24]  716 	movx	a,@dptr
      0006E7 FD               [12]  717 	mov	r5,a
      0006E8 A3               [24]  718 	inc	dptr
      0006E9 E0               [24]  719 	movx	a,@dptr
      0006EA FE               [12]  720 	mov	r6,a
      0006EB A3               [24]  721 	inc	dptr
      0006EC E0               [24]  722 	movx	a,@dptr
      0006ED FF               [12]  723 	mov	r7,a
      0006EE 90 80 2C         [24]  724 	mov	dptr,#_spi_read_PARM_3
      0006F1 E0               [24]  725 	movx	a,@dptr
      0006F2 FC               [12]  726 	mov	r4,a
      0006F3 7A 00            [12]  727 	mov	r2,#0x00
      0006F5 7B 00            [12]  728 	mov	r3,#0x00
      0006F7                        729 00103$:
      0006F7 8C 00            [24]  730 	mov	ar0,r4
      0006F9 79 00            [12]  731 	mov	r1,#0x00
      0006FB C3               [12]  732 	clr	c
      0006FC EA               [12]  733 	mov	a,r2
      0006FD 98               [12]  734 	subb	a,r0
      0006FE EB               [12]  735 	mov	a,r3
      0006FF 64 80            [12]  736 	xrl	a,#0x80
      000701 89 F0            [24]  737 	mov	b,r1
      000703 63 F0 80         [24]  738 	xrl	b,#0x80
      000706 95 F0            [12]  739 	subb	a,b
      000708 50 3E            [24]  740 	jnc	00101$
      00070A C0 04            [24]  741 	push	ar4
      00070C EA               [12]  742 	mov	a,r2
      00070D 2D               [12]  743 	add	a,r5
      00070E F5 14            [12]  744 	mov	_spi_read_sloc0_1_0,a
      000710 EB               [12]  745 	mov	a,r3
      000711 3E               [12]  746 	addc	a,r6
      000712 F5 15            [12]  747 	mov	(_spi_read_sloc0_1_0 + 1),a
      000714 8F 16            [24]  748 	mov	(_spi_read_sloc0_1_0 + 2),r7
      000716 75 82 FF         [24]  749 	mov	dpl,#0xFF
      000719 C0 07            [24]  750 	push	ar7
      00071B C0 06            [24]  751 	push	ar6
      00071D C0 05            [24]  752 	push	ar5
      00071F C0 03            [24]  753 	push	ar3
      000721 C0 02            [24]  754 	push	ar2
      000723 12 06 4C         [24]  755 	lcall	_spi_transfer
      000726 AC 82            [24]  756 	mov	r4,dpl
      000728 D0 02            [24]  757 	pop	ar2
      00072A D0 03            [24]  758 	pop	ar3
      00072C D0 05            [24]  759 	pop	ar5
      00072E D0 06            [24]  760 	pop	ar6
      000730 D0 07            [24]  761 	pop	ar7
      000732 85 14 82         [24]  762 	mov	dpl,_spi_read_sloc0_1_0
      000735 85 15 83         [24]  763 	mov	dph,(_spi_read_sloc0_1_0 + 1)
      000738 85 16 F0         [24]  764 	mov	b,(_spi_read_sloc0_1_0 + 2)
      00073B EC               [12]  765 	mov	a,r4
      00073C 12 0F 31         [24]  766 	lcall	__gptrput
      00073F 0A               [12]  767 	inc	r2
      000740 BA 00 01         [24]  768 	cjne	r2,#0x00,00115$
      000743 0B               [12]  769 	inc	r3
      000744                        770 00115$:
      000744 D0 04            [24]  771 	pop	ar4
      000746 80 AF            [24]  772 	sjmp	00103$
      000748                        773 00101$:
                                    774 ;	src/radio.c:98: rfcsn = 1;    
      000748 D2 91            [12]  775 	setb	_rfcsn
      00074A 22               [24]  776 	ret
                                    777 ;------------------------------------------------------------
                                    778 ;Allocation info for local variables in function 'write_register_byte'
                                    779 ;------------------------------------------------------------
                                    780 ;byte                      Allocated with name '_write_register_byte_PARM_2'
                                    781 ;reg                       Allocated with name '_write_register_byte_reg_1_47'
                                    782 ;------------------------------------------------------------
                                    783 ;	src/radio.c:102: void write_register_byte(uint8_t reg, uint8_t byte) 
                                    784 ;	-----------------------------------------
                                    785 ;	 function write_register_byte
                                    786 ;	-----------------------------------------
      00074B                        787 _write_register_byte:
      00074B E5 82            [12]  788 	mov	a,dpl
      00074D 90 80 2F         [24]  789 	mov	dptr,#_write_register_byte_reg_1_47
      000750 F0               [24]  790 	movx	@dptr,a
                                    791 ;	src/radio.c:104: write_register(W_REGISTER | reg, &byte, 1);
      000751 E0               [24]  792 	movx	a,@dptr
      000752 FF               [12]  793 	mov	r7,a
      000753 43 07 20         [24]  794 	orl	ar7,#0x20
      000756 90 80 24         [24]  795 	mov	dptr,#_spi_write_PARM_2
      000759 74 2E            [12]  796 	mov	a,#_write_register_byte_PARM_2
      00075B F0               [24]  797 	movx	@dptr,a
      00075C 74 80            [12]  798 	mov	a,#(_write_register_byte_PARM_2 >> 8)
      00075E A3               [24]  799 	inc	dptr
      00075F F0               [24]  800 	movx	@dptr,a
      000760 E4               [12]  801 	clr	a
      000761 A3               [24]  802 	inc	dptr
      000762 F0               [24]  803 	movx	@dptr,a
      000763 90 80 27         [24]  804 	mov	dptr,#_spi_write_PARM_3
      000766 04               [12]  805 	inc	a
      000767 F0               [24]  806 	movx	@dptr,a
      000768 8F 82            [24]  807 	mov	dpl,r7
      00076A 02 06 5E         [24]  808 	ljmp	_spi_write
                                    809 ;------------------------------------------------------------
                                    810 ;Allocation info for local variables in function 'crc_update'
                                    811 ;------------------------------------------------------------
                                    812 ;byte                      Allocated with name '_crc_update_PARM_2'
                                    813 ;bits                      Allocated with name '_crc_update_PARM_3'
                                    814 ;crc                       Allocated with name '_crc_update_crc_1_49'
                                    815 ;------------------------------------------------------------
                                    816 ;	src/radio.c:108: uint16_t crc_update(uint16_t crc, uint8_t byte, uint8_t bits)
                                    817 ;	-----------------------------------------
                                    818 ;	 function crc_update
                                    819 ;	-----------------------------------------
      00076D                        820 _crc_update:
      00076D AF 83            [24]  821 	mov	r7,dph
      00076F E5 82            [12]  822 	mov	a,dpl
      000771 90 80 32         [24]  823 	mov	dptr,#_crc_update_crc_1_49
      000774 F0               [24]  824 	movx	@dptr,a
      000775 EF               [12]  825 	mov	a,r7
      000776 A3               [24]  826 	inc	dptr
      000777 F0               [24]  827 	movx	@dptr,a
                                    828 ;	src/radio.c:110: crc = crc ^ (byte << 8);
      000778 90 80 30         [24]  829 	mov	dptr,#_crc_update_PARM_2
      00077B E0               [24]  830 	movx	a,@dptr
      00077C FE               [12]  831 	mov	r6,a
      00077D 7F 00            [12]  832 	mov	r7,#0x00
      00077F 90 80 32         [24]  833 	mov	dptr,#_crc_update_crc_1_49
      000782 E0               [24]  834 	movx	a,@dptr
      000783 FC               [12]  835 	mov	r4,a
      000784 A3               [24]  836 	inc	dptr
      000785 E0               [24]  837 	movx	a,@dptr
      000786 FD               [12]  838 	mov	r5,a
      000787 90 80 32         [24]  839 	mov	dptr,#_crc_update_crc_1_49
      00078A EF               [12]  840 	mov	a,r7
      00078B 6C               [12]  841 	xrl	a,r4
      00078C F0               [24]  842 	movx	@dptr,a
      00078D EE               [12]  843 	mov	a,r6
      00078E 6D               [12]  844 	xrl	a,r5
      00078F A3               [24]  845 	inc	dptr
      000790 F0               [24]  846 	movx	@dptr,a
                                    847 ;	src/radio.c:111: while(bits--)
      000791 90 80 31         [24]  848 	mov	dptr,#_crc_update_PARM_3
      000794 E0               [24]  849 	movx	a,@dptr
      000795 FF               [12]  850 	mov	r7,a
      000796                        851 00104$:
      000796 8F 06            [24]  852 	mov	ar6,r7
      000798 1F               [12]  853 	dec	r7
      000799 EE               [12]  854 	mov	a,r6
      00079A 60 3C            [24]  855 	jz	00106$
                                    856 ;	src/radio.c:112: if((crc & 0x8000) == 0x8000) crc = (crc << 1) ^ 0x1021;
      00079C 90 80 32         [24]  857 	mov	dptr,#_crc_update_crc_1_49
      00079F E0               [24]  858 	movx	a,@dptr
      0007A0 FD               [12]  859 	mov	r5,a
      0007A1 A3               [24]  860 	inc	dptr
      0007A2 E0               [24]  861 	movx	a,@dptr
      0007A3 FE               [12]  862 	mov	r6,a
      0007A4 7B 00            [12]  863 	mov	r3,#0x00
      0007A6 74 80            [12]  864 	mov	a,#0x80
      0007A8 5E               [12]  865 	anl	a,r6
      0007A9 FC               [12]  866 	mov	r4,a
      0007AA BB 00 1A         [24]  867 	cjne	r3,#0x00,00102$
      0007AD BC 80 17         [24]  868 	cjne	r4,#0x80,00102$
      0007B0 8D 03            [24]  869 	mov	ar3,r5
      0007B2 EE               [12]  870 	mov	a,r6
      0007B3 CB               [12]  871 	xch	a,r3
      0007B4 25 E0            [12]  872 	add	a,acc
      0007B6 CB               [12]  873 	xch	a,r3
      0007B7 33               [12]  874 	rlc	a
      0007B8 FC               [12]  875 	mov	r4,a
      0007B9 90 80 32         [24]  876 	mov	dptr,#_crc_update_crc_1_49
      0007BC 74 21            [12]  877 	mov	a,#0x21
      0007BE 6B               [12]  878 	xrl	a,r3
      0007BF F0               [24]  879 	movx	@dptr,a
      0007C0 74 10            [12]  880 	mov	a,#0x10
      0007C2 6C               [12]  881 	xrl	a,r4
      0007C3 A3               [24]  882 	inc	dptr
      0007C4 F0               [24]  883 	movx	@dptr,a
      0007C5 80 CF            [24]  884 	sjmp	00104$
      0007C7                        885 00102$:
                                    886 ;	src/radio.c:113: else crc = crc << 1;
      0007C7 EE               [12]  887 	mov	a,r6
      0007C8 CD               [12]  888 	xch	a,r5
      0007C9 25 E0            [12]  889 	add	a,acc
      0007CB CD               [12]  890 	xch	a,r5
      0007CC 33               [12]  891 	rlc	a
      0007CD FE               [12]  892 	mov	r6,a
      0007CE 90 80 32         [24]  893 	mov	dptr,#_crc_update_crc_1_49
      0007D1 ED               [12]  894 	mov	a,r5
      0007D2 F0               [24]  895 	movx	@dptr,a
      0007D3 EE               [12]  896 	mov	a,r6
      0007D4 A3               [24]  897 	inc	dptr
      0007D5 F0               [24]  898 	movx	@dptr,a
      0007D6 80 BE            [24]  899 	sjmp	00104$
      0007D8                        900 00106$:
                                    901 ;	src/radio.c:114: crc = crc & 0xFFFF;
                                    902 ;	src/radio.c:115: return crc;
      0007D8 90 80 32         [24]  903 	mov	dptr,#_crc_update_crc_1_49
      0007DB E0               [24]  904 	movx	a,@dptr
      0007DC FE               [12]  905 	mov	r6,a
      0007DD A3               [24]  906 	inc	dptr
      0007DE E0               [24]  907 	movx	a,@dptr
      0007DF 8E 82            [24]  908 	mov	dpl,r6
      0007E1 F5 83            [12]  909 	mov	dph,a
      0007E3 22               [24]  910 	ret
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'handle_radio_request'
                                    913 ;------------------------------------------------------------
                                    914 ;sloc0                     Allocated with name '_handle_radio_request_sloc0_1_0'
                                    915 ;sloc1                     Allocated with name '_handle_radio_request_sloc1_1_0'
                                    916 ;data                      Allocated with name '_handle_radio_request_PARM_2'
                                    917 ;request                   Allocated with name '_handle_radio_request_request_1_51'
                                    918 ;value                     Allocated with name '_handle_radio_request_value_2_58'
                                    919 ;x                         Allocated with name '_handle_radio_request_x_4_63'
                                    920 ;offset                    Allocated with name '_handle_radio_request_offset_4_63'
                                    921 ;payload_length            Allocated with name '_handle_radio_request_payload_length_4_63'
                                    922 ;crc                       Allocated with name '_handle_radio_request_crc_4_63'
                                    923 ;crc_given                 Allocated with name '_handle_radio_request_crc_given_4_63'
                                    924 ;payload                   Allocated with name '_handle_radio_request_payload_4_63'
                                    925 ;__00030005                Allocated with name '_handle_radio_request___00030005_4_75'
                                    926 ;us                        Allocated with name '_handle_radio_request_us_4_75'
                                    927 ;------------------------------------------------------------
                                    928 ;	src/radio.c:119: void handle_radio_request(uint8_t request, uint8_t * data)
                                    929 ;	-----------------------------------------
                                    930 ;	 function handle_radio_request
                                    931 ;	-----------------------------------------
      0007E4                        932 _handle_radio_request:
      0007E4 E5 82            [12]  933 	mov	a,dpl
      0007E6 90 80 37         [24]  934 	mov	dptr,#_handle_radio_request_request_1_51
      0007E9 F0               [24]  935 	movx	@dptr,a
                                    936 ;	src/radio.c:122: if(request == LAUNCH_BOOTLOADER)
      0007EA E0               [24]  937 	movx	a,@dptr
      0007EB FF               [12]  938 	mov	r7,a
      0007EC BF FF 0E         [24]  939 	cjne	r7,#0xFF,00164$
                                    940 ;	src/radio.c:124: bootloader();
      0007EF 90 80 7C         [24]  941 	mov	dptr,#_bootloader
      0007F2 E0               [24]  942 	movx	a,@dptr
      0007F3 F8               [12]  943 	mov	r0,a
      0007F4 A3               [24]  944 	inc	dptr
      0007F5 E0               [24]  945 	movx	a,@dptr
      0007F6 F5 83            [12]  946 	mov	dph,a
      0007F8 88 82            [24]  947 	mov	dpl,r0
                                    948 ;	src/radio.c:125: return;
      0007FA 02 00 69         [24]  949 	ljmp	__sdcc_call_dptr
      0007FD                        950 00164$:
                                    951 ;	src/radio.c:129: else if(request == ENABLE_LNA)
      0007FD BF 0B 10         [24]  952 	cjne	r7,#0x0B,00161$
                                    953 ;	src/radio.c:131: P0DIR &= ~0x10;
      000800 AE 94            [24]  954 	mov	r6,_P0DIR
      000802 74 EF            [12]  955 	mov	a,#0xEF
      000804 5E               [12]  956 	anl	a,r6
      000805 F5 94            [12]  957 	mov	_P0DIR,a
                                    958 ;	src/radio.c:132: P0 |= 0x10;
      000807 43 80 10         [24]  959 	orl	_P0,#0x10
                                    960 ;	src/radio.c:133: in1bc = 0;
      00080A 90 C7 B7         [24]  961 	mov	dptr,#0xC7B7
      00080D E4               [12]  962 	clr	a
      00080E F0               [24]  963 	movx	@dptr,a
                                    964 ;	src/radio.c:134: return;
      00080F 22               [24]  965 	ret
      000810                        966 00161$:
                                    967 ;	src/radio.c:138: else if(request == SET_CHANNEL)
      000810 BF 09 68         [24]  968 	cjne	r7,#0x09,00158$
                                    969 ;	src/radio.c:140: rfce = 0;
      000813 C2 90            [12]  970 	clr	_rfce
                                    971 ;	src/radio.c:141: write_register_byte(RF_CH, data[0]);
      000815 90 80 34         [24]  972 	mov	dptr,#_handle_radio_request_PARM_2
      000818 E0               [24]  973 	movx	a,@dptr
      000819 FC               [12]  974 	mov	r4,a
      00081A A3               [24]  975 	inc	dptr
      00081B E0               [24]  976 	movx	a,@dptr
      00081C FD               [12]  977 	mov	r5,a
      00081D A3               [24]  978 	inc	dptr
      00081E E0               [24]  979 	movx	a,@dptr
      00081F FE               [12]  980 	mov	r6,a
      000820 8C 82            [24]  981 	mov	dpl,r4
      000822 8D 83            [24]  982 	mov	dph,r5
      000824 8E F0            [24]  983 	mov	b,r6
      000826 12 0F 64         [24]  984 	lcall	__gptrget
      000829 90 80 2E         [24]  985 	mov	dptr,#_write_register_byte_PARM_2
      00082C F0               [24]  986 	movx	@dptr,a
      00082D 75 82 05         [24]  987 	mov	dpl,#0x05
      000830 C0 06            [24]  988 	push	ar6
      000832 C0 05            [24]  989 	push	ar5
      000834 C0 04            [24]  990 	push	ar4
      000836 12 07 4B         [24]  991 	lcall	_write_register_byte
      000839 D0 04            [24]  992 	pop	ar4
      00083B D0 05            [24]  993 	pop	ar5
      00083D D0 06            [24]  994 	pop	ar6
                                    995 ;	src/radio.c:142: in1bc = 1;
      00083F 90 C7 B7         [24]  996 	mov	dptr,#0xC7B7
      000842 74 01            [12]  997 	mov	a,#0x01
      000844 F0               [24]  998 	movx	@dptr,a
                                    999 ;	src/radio.c:143: in1buf[0] = data[0];
      000845 8C 82            [24] 1000 	mov	dpl,r4
      000847 8D 83            [24] 1001 	mov	dph,r5
      000849 8E F0            [24] 1002 	mov	b,r6
      00084B 12 0F 64         [24] 1003 	lcall	__gptrget
      00084E 90 C6 80         [24] 1004 	mov	dptr,#_in1buf
      000851 F0               [24] 1005 	movx	@dptr,a
                                   1006 ;	src/radio.c:144: flush_rx();
      000852 90 80 24         [24] 1007 	mov	dptr,#_spi_write_PARM_2
      000855 E4               [12] 1008 	clr	a
      000856 F0               [24] 1009 	movx	@dptr,a
      000857 A3               [24] 1010 	inc	dptr
      000858 F0               [24] 1011 	movx	@dptr,a
      000859 A3               [24] 1012 	inc	dptr
      00085A F0               [24] 1013 	movx	@dptr,a
      00085B 90 80 27         [24] 1014 	mov	dptr,#_spi_write_PARM_3
      00085E F0               [24] 1015 	movx	@dptr,a
      00085F 75 82 E2         [24] 1016 	mov	dpl,#0xE2
      000862 12 06 5E         [24] 1017 	lcall	_spi_write
                                   1018 ;	src/radio.c:145: flush_tx();
      000865 90 80 24         [24] 1019 	mov	dptr,#_spi_write_PARM_2
      000868 E4               [12] 1020 	clr	a
      000869 F0               [24] 1021 	movx	@dptr,a
      00086A A3               [24] 1022 	inc	dptr
      00086B F0               [24] 1023 	movx	@dptr,a
      00086C A3               [24] 1024 	inc	dptr
      00086D F0               [24] 1025 	movx	@dptr,a
      00086E 90 80 27         [24] 1026 	mov	dptr,#_spi_write_PARM_3
      000871 F0               [24] 1027 	movx	@dptr,a
      000872 75 82 E1         [24] 1028 	mov	dpl,#0xE1
      000875 12 06 5E         [24] 1029 	lcall	_spi_write
                                   1030 ;	src/radio.c:146: rfce = 1;
      000878 D2 90            [12] 1031 	setb	_rfce
                                   1032 ;	src/radio.c:147: return;
      00087A 22               [24] 1033 	ret
      00087B                       1034 00158$:
                                   1035 ;	src/radio.c:151: else if(request == GET_CHANNEL)
      00087B BF 0A 1F         [24] 1036 	cjne	r7,#0x0A,00155$
                                   1037 ;	src/radio.c:153: spi_read(RF_CH, in1buf, 1);
      00087E 90 80 29         [24] 1038 	mov	dptr,#_spi_read_PARM_2
      000881 74 80            [12] 1039 	mov	a,#_in1buf
      000883 F0               [24] 1040 	movx	@dptr,a
      000884 74 C6            [12] 1041 	mov	a,#(_in1buf >> 8)
      000886 A3               [24] 1042 	inc	dptr
      000887 F0               [24] 1043 	movx	@dptr,a
      000888 E4               [12] 1044 	clr	a
      000889 A3               [24] 1045 	inc	dptr
      00088A F0               [24] 1046 	movx	@dptr,a
      00088B 90 80 2C         [24] 1047 	mov	dptr,#_spi_read_PARM_3
      00088E 04               [12] 1048 	inc	a
      00088F F0               [24] 1049 	movx	@dptr,a
      000890 75 82 05         [24] 1050 	mov	dpl,#0x05
      000893 12 06 D2         [24] 1051 	lcall	_spi_read
                                   1052 ;	src/radio.c:154: in1bc = 1;
      000896 90 C7 B7         [24] 1053 	mov	dptr,#0xC7B7
      000899 74 01            [12] 1054 	mov	a,#0x01
      00089B F0               [24] 1055 	movx	@dptr,a
                                   1056 ;	src/radio.c:155: return;
      00089C 22               [24] 1057 	ret
      00089D                       1058 00155$:
                                   1059 ;	src/radio.c:159: else if(request == ENTER_PROMISCUOUS_MODE)
      00089D BF 06 2A         [24] 1060 	cjne	r7,#0x06,00152$
                                   1061 ;	src/radio.c:161: enter_promiscuous_mode(&data[1] /* address prefix */, data[0] /* prefix length */);       
      0008A0 90 80 34         [24] 1062 	mov	dptr,#_handle_radio_request_PARM_2
      0008A3 E0               [24] 1063 	movx	a,@dptr
      0008A4 FC               [12] 1064 	mov	r4,a
      0008A5 A3               [24] 1065 	inc	dptr
      0008A6 E0               [24] 1066 	movx	a,@dptr
      0008A7 FD               [12] 1067 	mov	r5,a
      0008A8 A3               [24] 1068 	inc	dptr
      0008A9 E0               [24] 1069 	movx	a,@dptr
      0008AA FE               [12] 1070 	mov	r6,a
      0008AB 74 01            [12] 1071 	mov	a,#0x01
      0008AD 2C               [12] 1072 	add	a,r4
      0008AE F9               [12] 1073 	mov	r1,a
      0008AF E4               [12] 1074 	clr	a
      0008B0 3D               [12] 1075 	addc	a,r5
      0008B1 FA               [12] 1076 	mov	r2,a
      0008B2 8E 03            [24] 1077 	mov	ar3,r6
      0008B4 8C 82            [24] 1078 	mov	dpl,r4
      0008B6 8D 83            [24] 1079 	mov	dph,r5
      0008B8 8E F0            [24] 1080 	mov	b,r6
      0008BA 12 0F 64         [24] 1081 	lcall	__gptrget
      0008BD 90 80 13         [24] 1082 	mov	dptr,#_enter_promiscuous_mode_PARM_2
      0008C0 F0               [24] 1083 	movx	@dptr,a
      0008C1 89 82            [24] 1084 	mov	dpl,r1
      0008C3 8A 83            [24] 1085 	mov	dph,r2
      0008C5 8B F0            [24] 1086 	mov	b,r3
      0008C7 02 04 63         [24] 1087 	ljmp	_enter_promiscuous_mode
      0008CA                       1088 00152$:
                                   1089 ;	src/radio.c:165: else if(request == RECEIVE_PACKET)
      0008CA BF 12 02         [24] 1090 	cjne	r7,#0x12,00305$
      0008CD 80 03            [24] 1091 	sjmp	00306$
      0008CF                       1092 00305$:
      0008CF 02 0C 48         [24] 1093 	ljmp	00149$
      0008D2                       1094 00306$:
                                   1095 ;	src/radio.c:170: read_register(FIFO_STATUS, &value, 1);
      0008D2 90 80 29         [24] 1096 	mov	dptr,#_spi_read_PARM_2
      0008D5 74 38            [12] 1097 	mov	a,#_handle_radio_request_value_2_58
      0008D7 F0               [24] 1098 	movx	@dptr,a
      0008D8 74 80            [12] 1099 	mov	a,#(_handle_radio_request_value_2_58 >> 8)
      0008DA A3               [24] 1100 	inc	dptr
      0008DB F0               [24] 1101 	movx	@dptr,a
      0008DC E4               [12] 1102 	clr	a
      0008DD A3               [24] 1103 	inc	dptr
      0008DE F0               [24] 1104 	movx	@dptr,a
      0008DF 90 80 2C         [24] 1105 	mov	dptr,#_spi_read_PARM_3
      0008E2 04               [12] 1106 	inc	a
      0008E3 F0               [24] 1107 	movx	@dptr,a
      0008E4 75 82 17         [24] 1108 	mov	dpl,#0x17
      0008E7 12 06 D2         [24] 1109 	lcall	_spi_read
                                   1110 ;	src/radio.c:171: if((value & 1) == 0)
      0008EA 90 80 38         [24] 1111 	mov	dptr,#_handle_radio_request_value_2_58
      0008ED E0               [24] 1112 	movx	a,@dptr
      0008EE FE               [12] 1113 	mov	r6,a
      0008EF 30 E0 03         [24] 1114 	jnb	acc.0,00307$
      0008F2 02 0C 3B         [24] 1115 	ljmp	00124$
      0008F5                       1116 00307$:
                                   1117 ;	src/radio.c:174: if(!in_pm)
      0008F5 90 80 0B         [24] 1118 	mov	dptr,#_in_pm
      0008F8 E0               [24] 1119 	movx	a,@dptr
      0008F9 70 69            [24] 1120 	jnz	00195$
                                   1121 ;	src/radio.c:177: read_register(R_RX_PL_WID, &value, 1);
      0008FB 90 80 29         [24] 1122 	mov	dptr,#_spi_read_PARM_2
      0008FE 74 38            [12] 1123 	mov	a,#_handle_radio_request_value_2_58
      000900 F0               [24] 1124 	movx	@dptr,a
      000901 74 80            [12] 1125 	mov	a,#(_handle_radio_request_value_2_58 >> 8)
      000903 A3               [24] 1126 	inc	dptr
      000904 F0               [24] 1127 	movx	@dptr,a
      000905 E4               [12] 1128 	clr	a
      000906 A3               [24] 1129 	inc	dptr
      000907 F0               [24] 1130 	movx	@dptr,a
      000908 90 80 2C         [24] 1131 	mov	dptr,#_spi_read_PARM_3
      00090B 04               [12] 1132 	inc	a
      00090C F0               [24] 1133 	movx	@dptr,a
      00090D 75 82 60         [24] 1134 	mov	dpl,#0x60
      000910 12 06 D2         [24] 1135 	lcall	_spi_read
                                   1136 ;	src/radio.c:178: if(value <= 32)
      000913 90 80 38         [24] 1137 	mov	dptr,#_handle_radio_request_value_2_58
      000916 E0               [24] 1138 	movx	a,@dptr
      000917 FE               [12] 1139 	mov  r6,a
      000918 24 DF            [12] 1140 	add	a,#0xff - 0x20
      00091A 40 29            [24] 1141 	jc	00102$
                                   1142 ;	src/radio.c:181: read_register(R_RX_PAYLOAD, &in1buf[1], value);
      00091C 90 80 29         [24] 1143 	mov	dptr,#_spi_read_PARM_2
      00091F 74 81            [12] 1144 	mov	a,#(_in1buf + 0x0001)
      000921 F0               [24] 1145 	movx	@dptr,a
      000922 74 C6            [12] 1146 	mov	a,#((_in1buf + 0x0001) >> 8)
      000924 A3               [24] 1147 	inc	dptr
      000925 F0               [24] 1148 	movx	@dptr,a
      000926 E4               [12] 1149 	clr	a
      000927 A3               [24] 1150 	inc	dptr
      000928 F0               [24] 1151 	movx	@dptr,a
      000929 90 80 2C         [24] 1152 	mov	dptr,#_spi_read_PARM_3
      00092C EE               [12] 1153 	mov	a,r6
      00092D F0               [24] 1154 	movx	@dptr,a
      00092E 75 82 61         [24] 1155 	mov	dpl,#0x61
      000931 12 06 D2         [24] 1156 	lcall	_spi_read
                                   1157 ;	src/radio.c:182: in1buf[0] = 0;
      000934 90 C6 80         [24] 1158 	mov	dptr,#_in1buf
      000937 E4               [12] 1159 	clr	a
      000938 F0               [24] 1160 	movx	@dptr,a
                                   1161 ;	src/radio.c:183: in1bc = value + 1;
      000939 90 80 38         [24] 1162 	mov	dptr,#_handle_radio_request_value_2_58
      00093C E0               [24] 1163 	movx	a,@dptr
      00093D FE               [12] 1164 	mov	r6,a
      00093E 0E               [12] 1165 	inc	r6
      00093F 90 C7 B7         [24] 1166 	mov	dptr,#0xC7B7
      000942 EE               [12] 1167 	mov	a,r6
      000943 F0               [24] 1168 	movx	@dptr,a
                                   1169 ;	src/radio.c:184: return;
      000944 22               [24] 1170 	ret
      000945                       1171 00102$:
                                   1172 ;	src/radio.c:189: in1bc = 1;
      000945 90 C7 B7         [24] 1173 	mov	dptr,#0xC7B7
      000948 74 01            [12] 1174 	mov	a,#0x01
      00094A F0               [24] 1175 	movx	@dptr,a
                                   1176 ;	src/radio.c:190: in1buf[0] = 0xFF;
      00094B 90 C6 80         [24] 1177 	mov	dptr,#_in1buf
      00094E 74 FF            [12] 1178 	mov	a,#0xFF
      000950 F0               [24] 1179 	movx	@dptr,a
                                   1180 ;	src/radio.c:191: flush_rx();
      000951 90 80 24         [24] 1181 	mov	dptr,#_spi_write_PARM_2
      000954 E4               [12] 1182 	clr	a
      000955 F0               [24] 1183 	movx	@dptr,a
      000956 A3               [24] 1184 	inc	dptr
      000957 F0               [24] 1185 	movx	@dptr,a
      000958 A3               [24] 1186 	inc	dptr
      000959 F0               [24] 1187 	movx	@dptr,a
      00095A 90 80 27         [24] 1188 	mov	dptr,#_spi_write_PARM_3
      00095D F0               [24] 1189 	movx	@dptr,a
      00095E 75 82 E2         [24] 1190 	mov	dpl,#0xE2
                                   1191 ;	src/radio.c:192: return;
      000961 02 06 5E         [24] 1192 	ljmp	_spi_write
                                   1193 ;	src/radio.c:205: for(x = 0; x < pm_prefix_length; x++) payload[pm_prefix_length - x - 1] = pm_prefix[x];
      000964                       1194 00195$:
      000964 7D 00            [12] 1195 	mov	r5,#0x00
      000966 7E 00            [12] 1196 	mov	r6,#0x00
      000968                       1197 00171$:
      000968 90 80 0C         [24] 1198 	mov	dptr,#_pm_prefix_length
      00096B E0               [24] 1199 	movx	a,@dptr
      00096C FB               [12] 1200 	mov	r3,a
      00096D A3               [24] 1201 	inc	dptr
      00096E E0               [24] 1202 	movx	a,@dptr
      00096F FC               [12] 1203 	mov	r4,a
      000970 C3               [12] 1204 	clr	c
      000971 ED               [12] 1205 	mov	a,r5
      000972 9B               [12] 1206 	subb	a,r3
      000973 EE               [12] 1207 	mov	a,r6
      000974 64 80            [12] 1208 	xrl	a,#0x80
      000976 8C F0            [24] 1209 	mov	b,r4
      000978 63 F0 80         [24] 1210 	xrl	b,#0x80
      00097B 95 F0            [12] 1211 	subb	a,b
      00097D 50 27            [24] 1212 	jnc	00104$
      00097F 8B 02            [24] 1213 	mov	ar2,r3
      000981 8D 01            [24] 1214 	mov	ar1,r5
      000983 EA               [12] 1215 	mov	a,r2
      000984 C3               [12] 1216 	clr	c
      000985 99               [12] 1217 	subb	a,r1
      000986 14               [12] 1218 	dec	a
      000987 24 3D            [12] 1219 	add	a,#_handle_radio_request_payload_4_63
      000989 F9               [12] 1220 	mov	r1,a
      00098A E4               [12] 1221 	clr	a
      00098B 34 80            [12] 1222 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      00098D FA               [12] 1223 	mov	r2,a
      00098E ED               [12] 1224 	mov	a,r5
      00098F 24 0E            [12] 1225 	add	a,#_pm_prefix
      000991 F5 82            [12] 1226 	mov	dpl,a
      000993 EE               [12] 1227 	mov	a,r6
      000994 34 80            [12] 1228 	addc	a,#(_pm_prefix >> 8)
      000996 F5 83            [12] 1229 	mov	dph,a
      000998 E0               [24] 1230 	movx	a,@dptr
      000999 F8               [12] 1231 	mov	r0,a
      00099A 89 82            [24] 1232 	mov	dpl,r1
      00099C 8A 83            [24] 1233 	mov	dph,r2
      00099E F0               [24] 1234 	movx	@dptr,a
      00099F 0D               [12] 1235 	inc	r5
      0009A0 BD 00 C5         [24] 1236 	cjne	r5,#0x00,00171$
      0009A3 0E               [12] 1237 	inc	r6
      0009A4 80 C2            [24] 1238 	sjmp	00171$
      0009A6                       1239 00104$:
                                   1240 ;	src/radio.c:206: read_register(R_RX_PAYLOAD, &payload[pm_prefix_length], 32);
      0009A6 EB               [12] 1241 	mov	a,r3
      0009A7 24 3D            [12] 1242 	add	a,#_handle_radio_request_payload_4_63
      0009A9 FB               [12] 1243 	mov	r3,a
      0009AA EC               [12] 1244 	mov	a,r4
      0009AB 34 80            [12] 1245 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      0009AD FC               [12] 1246 	mov	r4,a
      0009AE 90 80 29         [24] 1247 	mov	dptr,#_spi_read_PARM_2
      0009B1 EB               [12] 1248 	mov	a,r3
      0009B2 F0               [24] 1249 	movx	@dptr,a
      0009B3 EC               [12] 1250 	mov	a,r4
      0009B4 A3               [24] 1251 	inc	dptr
      0009B5 F0               [24] 1252 	movx	@dptr,a
      0009B6 E4               [12] 1253 	clr	a
      0009B7 A3               [24] 1254 	inc	dptr
      0009B8 F0               [24] 1255 	movx	@dptr,a
      0009B9 90 80 2C         [24] 1256 	mov	dptr,#_spi_read_PARM_3
      0009BC 74 20            [12] 1257 	mov	a,#0x20
      0009BE F0               [24] 1258 	movx	@dptr,a
      0009BF 75 82 61         [24] 1259 	mov	dpl,#0x61
      0009C2 12 06 D2         [24] 1260 	lcall	_spi_read
                                   1261 ;	src/radio.c:213: for(offset = 0; offset < 2; offset++)
      0009C5 E4               [12] 1262 	clr	a
      0009C6 F5 19            [12] 1263 	mov	_handle_radio_request_sloc1_1_0,a
      0009C8 F5 1A            [12] 1264 	mov	(_handle_radio_request_sloc1_1_0 + 1),a
      0009CA                       1265 00181$:
                                   1266 ;	src/radio.c:216: if(offset == 1)
      0009CA 74 01            [12] 1267 	mov	a,#0x01
      0009CC B5 19 06         [24] 1268 	cjne	a,_handle_radio_request_sloc1_1_0,00312$
      0009CF E4               [12] 1269 	clr	a
      0009D0 B5 1A 02         [24] 1270 	cjne	a,(_handle_radio_request_sloc1_1_0 + 1),00312$
      0009D3 80 02            [24] 1271 	sjmp	00313$
      0009D5                       1272 00312$:
      0009D5 80 5C            [24] 1273 	sjmp	00110$
      0009D7                       1274 00313$:
                                   1275 ;	src/radio.c:218: for(x = 31; x >= 0; x--)
      0009D7 7B 1F            [12] 1276 	mov	r3,#0x1F
      0009D9 7C 00            [12] 1277 	mov	r4,#0x00
      0009DB                       1278 00173$:
                                   1279 ;	src/radio.c:220: if(x > 0) payload[x] = payload[x - 1] << 7 | payload[x] >> 1;
      0009DB C3               [12] 1280 	clr	c
      0009DC E4               [12] 1281 	clr	a
      0009DD 9B               [12] 1282 	subb	a,r3
      0009DE 74 80            [12] 1283 	mov	a,#(0x00 ^ 0x80)
      0009E0 8C F0            [24] 1284 	mov	b,r4
      0009E2 63 F0 80         [24] 1285 	xrl	b,#0x80
      0009E5 95 F0            [12] 1286 	subb	a,b
      0009E7 50 2C            [24] 1287 	jnc	00106$
      0009E9 EB               [12] 1288 	mov	a,r3
      0009EA 24 3D            [12] 1289 	add	a,#_handle_radio_request_payload_4_63
      0009EC F9               [12] 1290 	mov	r1,a
      0009ED EC               [12] 1291 	mov	a,r4
      0009EE 34 80            [12] 1292 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      0009F0 FA               [12] 1293 	mov	r2,a
      0009F1 8B 00            [24] 1294 	mov	ar0,r3
      0009F3 E8               [12] 1295 	mov	a,r0
      0009F4 14               [12] 1296 	dec	a
      0009F5 24 3D            [12] 1297 	add	a,#_handle_radio_request_payload_4_63
      0009F7 F5 82            [12] 1298 	mov	dpl,a
      0009F9 E4               [12] 1299 	clr	a
      0009FA 34 80            [12] 1300 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      0009FC F5 83            [12] 1301 	mov	dph,a
      0009FE E0               [24] 1302 	movx	a,@dptr
      0009FF 03               [12] 1303 	rr	a
      000A00 54 80            [12] 1304 	anl	a,#0x80
      000A02 F8               [12] 1305 	mov	r0,a
      000A03 89 82            [24] 1306 	mov	dpl,r1
      000A05 8A 83            [24] 1307 	mov	dph,r2
      000A07 E0               [24] 1308 	movx	a,@dptr
      000A08 C3               [12] 1309 	clr	c
      000A09 13               [12] 1310 	rrc	a
      000A0A FE               [12] 1311 	mov	r6,a
      000A0B 42 00            [12] 1312 	orl	ar0,a
      000A0D 89 82            [24] 1313 	mov	dpl,r1
      000A0F 8A 83            [24] 1314 	mov	dph,r2
      000A11 E8               [12] 1315 	mov	a,r0
      000A12 F0               [24] 1316 	movx	@dptr,a
      000A13 80 15            [24] 1317 	sjmp	00174$
      000A15                       1318 00106$:
                                   1319 ;	src/radio.c:221: else payload[x] = payload[x] >> 1;
      000A15 EB               [12] 1320 	mov	a,r3
      000A16 24 3D            [12] 1321 	add	a,#_handle_radio_request_payload_4_63
      000A18 F9               [12] 1322 	mov	r1,a
      000A19 EC               [12] 1323 	mov	a,r4
      000A1A 34 80            [12] 1324 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000A1C FA               [12] 1325 	mov	r2,a
      000A1D 89 82            [24] 1326 	mov	dpl,r1
      000A1F 8A 83            [24] 1327 	mov	dph,r2
      000A21 E0               [24] 1328 	movx	a,@dptr
      000A22 C3               [12] 1329 	clr	c
      000A23 13               [12] 1330 	rrc	a
      000A24 F8               [12] 1331 	mov	r0,a
      000A25 89 82            [24] 1332 	mov	dpl,r1
      000A27 8A 83            [24] 1333 	mov	dph,r2
      000A29 F0               [24] 1334 	movx	@dptr,a
      000A2A                       1335 00174$:
                                   1336 ;	src/radio.c:218: for(x = 31; x >= 0; x--)
      000A2A 1B               [12] 1337 	dec	r3
      000A2B BB FF 01         [24] 1338 	cjne	r3,#0xFF,00315$
      000A2E 1C               [12] 1339 	dec	r4
      000A2F                       1340 00315$:
      000A2F EC               [12] 1341 	mov	a,r4
      000A30 30 E7 A8         [24] 1342 	jnb	acc.7,00173$
      000A33                       1343 00110$:
                                   1344 ;	src/radio.c:226: payload_length = payload[5] >> 2;
      000A33 90 80 42         [24] 1345 	mov	dptr,#(_handle_radio_request_payload_4_63 + 0x0005)
      000A36 E0               [24] 1346 	movx	a,@dptr
      000A37 03               [12] 1347 	rr	a
      000A38 03               [12] 1348 	rr	a
      000A39 54 3F            [12] 1349 	anl	a,#0x3F
      000A3B FC               [12] 1350 	mov	r4,a
                                   1351 ;	src/radio.c:231: if(payload_length <= 23 + pm_prefix_length)
      000A3C 90 80 0C         [24] 1352 	mov	dptr,#_pm_prefix_length
      000A3F E0               [24] 1353 	movx	a,@dptr
      000A40 FA               [12] 1354 	mov	r2,a
      000A41 A3               [24] 1355 	inc	dptr
      000A42 E0               [24] 1356 	movx	a,@dptr
      000A43 FB               [12] 1357 	mov	r3,a
      000A44 74 17            [12] 1358 	mov	a,#0x17
      000A46 2A               [12] 1359 	add	a,r2
      000A47 FA               [12] 1360 	mov	r2,a
      000A48 E4               [12] 1361 	clr	a
      000A49 3B               [12] 1362 	addc	a,r3
      000A4A FB               [12] 1363 	mov	r3,a
      000A4B 8C 00            [24] 1364 	mov	ar0,r4
      000A4D 79 00            [12] 1365 	mov	r1,#0x00
      000A4F C3               [12] 1366 	clr	c
      000A50 EA               [12] 1367 	mov	a,r2
      000A51 98               [12] 1368 	subb	a,r0
      000A52 EB               [12] 1369 	mov	a,r3
      000A53 64 80            [12] 1370 	xrl	a,#0x80
      000A55 89 F0            [24] 1371 	mov	b,r1
      000A57 63 F0 80         [24] 1372 	xrl	b,#0x80
      000A5A 95 F0            [12] 1373 	subb	a,b
      000A5C 50 03            [24] 1374 	jnc	00317$
      000A5E 02 0C 23         [24] 1375 	ljmp	00182$
      000A61                       1376 00317$:
                                   1377 ;	src/radio.c:234: crc_given = (payload[6 + payload_length] << 9) | ((payload[7 + payload_length]) << 1);
      000A61 C0 00            [24] 1378 	push	ar0
      000A63 C0 01            [24] 1379 	push	ar1
      000A65 74 06            [12] 1380 	mov	a,#0x06
      000A67 2C               [12] 1381 	add	a,r4
      000A68 24 3D            [12] 1382 	add	a,#_handle_radio_request_payload_4_63
      000A6A F5 82            [12] 1383 	mov	dpl,a
      000A6C E4               [12] 1384 	clr	a
      000A6D 34 80            [12] 1385 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000A6F F5 83            [12] 1386 	mov	dph,a
      000A71 E0               [24] 1387 	movx	a,@dptr
      000A72 25 E0            [12] 1388 	add	a,acc
      000A74 FA               [12] 1389 	mov	r2,a
      000A75 7B 00            [12] 1390 	mov	r3,#0x00
      000A77 74 07            [12] 1391 	mov	a,#0x07
      000A79 2C               [12] 1392 	add	a,r4
      000A7A 24 3D            [12] 1393 	add	a,#_handle_radio_request_payload_4_63
      000A7C F5 82            [12] 1394 	mov	dpl,a
      000A7E E4               [12] 1395 	clr	a
      000A7F 34 80            [12] 1396 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000A81 F5 83            [12] 1397 	mov	dph,a
      000A83 E0               [24] 1398 	movx	a,@dptr
      000A84 F8               [12] 1399 	mov	r0,a
      000A85 E4               [12] 1400 	clr	a
      000A86 C8               [12] 1401 	xch	a,r0
      000A87 25 E0            [12] 1402 	add	a,acc
      000A89 C8               [12] 1403 	xch	a,r0
      000A8A 33               [12] 1404 	rlc	a
      000A8B F9               [12] 1405 	mov	r1,a
      000A8C E8               [12] 1406 	mov	a,r0
      000A8D 42 03            [12] 1407 	orl	ar3,a
      000A8F E9               [12] 1408 	mov	a,r1
      000A90 42 02            [12] 1409 	orl	ar2,a
                                   1410 ;	src/radio.c:235: crc_given = (crc_given << 8) | (crc_given >> 8);
      000A92 8A 17            [24] 1411 	mov	_handle_radio_request_sloc0_1_0,r2
      000A94 8B 18            [24] 1412 	mov	(_handle_radio_request_sloc0_1_0 + 1),r3
      000A96 90 80 3B         [24] 1413 	mov	dptr,#_handle_radio_request_crc_given_4_63
      000A99 E5 17            [12] 1414 	mov	a,_handle_radio_request_sloc0_1_0
      000A9B F0               [24] 1415 	movx	@dptr,a
      000A9C E5 18            [12] 1416 	mov	a,(_handle_radio_request_sloc0_1_0 + 1)
      000A9E A3               [24] 1417 	inc	dptr
      000A9F F0               [24] 1418 	movx	@dptr,a
                                   1419 ;	src/radio.c:236: if(payload[8 + payload_length] & 0x80) crc_given |= 0x100;
      000AA0 74 08            [12] 1420 	mov	a,#0x08
      000AA2 2C               [12] 1421 	add	a,r4
      000AA3 24 3D            [12] 1422 	add	a,#_handle_radio_request_payload_4_63
      000AA5 F5 82            [12] 1423 	mov	dpl,a
      000AA7 E4               [12] 1424 	clr	a
      000AA8 34 80            [12] 1425 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000AAA F5 83            [12] 1426 	mov	dph,a
      000AAC E0               [24] 1427 	movx	a,@dptr
      000AAD FB               [12] 1428 	mov	r3,a
      000AAE D0 01            [24] 1429 	pop	ar1
      000AB0 D0 00            [24] 1430 	pop	ar0
      000AB2 30 E7 0C         [24] 1431 	jnb	acc.7,00112$
      000AB5 90 80 3B         [24] 1432 	mov	dptr,#_handle_radio_request_crc_given_4_63
      000AB8 E5 17            [12] 1433 	mov	a,_handle_radio_request_sloc0_1_0
      000ABA F0               [24] 1434 	movx	@dptr,a
      000ABB 74 01            [12] 1435 	mov	a,#0x01
      000ABD 45 18            [12] 1436 	orl	a,(_handle_radio_request_sloc0_1_0 + 1)
      000ABF A3               [24] 1437 	inc	dptr
      000AC0 F0               [24] 1438 	movx	@dptr,a
      000AC1                       1439 00112$:
                                   1440 ;	src/radio.c:239: crc = 0xFFFF;
      000AC1 90 80 39         [24] 1441 	mov	dptr,#_handle_radio_request_crc_4_63
      000AC4 74 FF            [12] 1442 	mov	a,#0xFF
      000AC6 F0               [24] 1443 	movx	@dptr,a
      000AC7 A3               [24] 1444 	inc	dptr
      000AC8 F0               [24] 1445 	movx	@dptr,a
                                   1446 ;	src/radio.c:240: for(x = 0; x < 6 + payload_length; x++) crc = crc_update(crc, payload[x], 8);
      000AC9 74 06            [12] 1447 	mov	a,#0x06
      000ACB 28               [12] 1448 	add	a,r0
      000ACC FA               [12] 1449 	mov	r2,a
      000ACD E4               [12] 1450 	clr	a
      000ACE 39               [12] 1451 	addc	a,r1
      000ACF FB               [12] 1452 	mov	r3,a
      000AD0 E4               [12] 1453 	clr	a
      000AD1 F5 17            [12] 1454 	mov	_handle_radio_request_sloc0_1_0,a
      000AD3 F5 18            [12] 1455 	mov	(_handle_radio_request_sloc0_1_0 + 1),a
      000AD5                       1456 00176$:
      000AD5 C3               [12] 1457 	clr	c
      000AD6 E5 17            [12] 1458 	mov	a,_handle_radio_request_sloc0_1_0
      000AD8 9A               [12] 1459 	subb	a,r2
      000AD9 E5 18            [12] 1460 	mov	a,(_handle_radio_request_sloc0_1_0 + 1)
      000ADB 64 80            [12] 1461 	xrl	a,#0x80
      000ADD 8B F0            [24] 1462 	mov	b,r3
      000ADF 63 F0 80         [24] 1463 	xrl	b,#0x80
      000AE2 95 F0            [12] 1464 	subb	a,b
      000AE4 50 59            [24] 1465 	jnc	00113$
      000AE6 C0 00            [24] 1466 	push	ar0
      000AE8 C0 01            [24] 1467 	push	ar1
      000AEA 90 80 39         [24] 1468 	mov	dptr,#_handle_radio_request_crc_4_63
      000AED E0               [24] 1469 	movx	a,@dptr
      000AEE F8               [12] 1470 	mov	r0,a
      000AEF A3               [24] 1471 	inc	dptr
      000AF0 E0               [24] 1472 	movx	a,@dptr
      000AF1 F9               [12] 1473 	mov	r1,a
      000AF2 E5 17            [12] 1474 	mov	a,_handle_radio_request_sloc0_1_0
      000AF4 24 3D            [12] 1475 	add	a,#_handle_radio_request_payload_4_63
      000AF6 F5 82            [12] 1476 	mov	dpl,a
      000AF8 E5 18            [12] 1477 	mov	a,(_handle_radio_request_sloc0_1_0 + 1)
      000AFA 34 80            [12] 1478 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000AFC F5 83            [12] 1479 	mov	dph,a
      000AFE E0               [24] 1480 	movx	a,@dptr
      000AFF 90 80 30         [24] 1481 	mov	dptr,#_crc_update_PARM_2
      000B02 F0               [24] 1482 	movx	@dptr,a
      000B03 90 80 31         [24] 1483 	mov	dptr,#_crc_update_PARM_3
      000B06 74 08            [12] 1484 	mov	a,#0x08
      000B08 F0               [24] 1485 	movx	@dptr,a
      000B09 88 82            [24] 1486 	mov	dpl,r0
      000B0B 89 83            [24] 1487 	mov	dph,r1
      000B0D C0 04            [24] 1488 	push	ar4
      000B0F C0 03            [24] 1489 	push	ar3
      000B11 C0 02            [24] 1490 	push	ar2
      000B13 C0 01            [24] 1491 	push	ar1
      000B15 C0 00            [24] 1492 	push	ar0
      000B17 12 07 6D         [24] 1493 	lcall	_crc_update
      000B1A E5 82            [12] 1494 	mov	a,dpl
      000B1C 85 83 F0         [24] 1495 	mov	b,dph
      000B1F D0 00            [24] 1496 	pop	ar0
      000B21 D0 01            [24] 1497 	pop	ar1
      000B23 D0 02            [24] 1498 	pop	ar2
      000B25 D0 03            [24] 1499 	pop	ar3
      000B27 D0 04            [24] 1500 	pop	ar4
      000B29 90 80 39         [24] 1501 	mov	dptr,#_handle_radio_request_crc_4_63
      000B2C F0               [24] 1502 	movx	@dptr,a
      000B2D E5 F0            [12] 1503 	mov	a,b
      000B2F A3               [24] 1504 	inc	dptr
      000B30 F0               [24] 1505 	movx	@dptr,a
      000B31 05 17            [12] 1506 	inc	_handle_radio_request_sloc0_1_0
      000B33 E4               [12] 1507 	clr	a
      000B34 B5 17 02         [24] 1508 	cjne	a,_handle_radio_request_sloc0_1_0,00320$
      000B37 05 18            [12] 1509 	inc	(_handle_radio_request_sloc0_1_0 + 1)
      000B39                       1510 00320$:
      000B39 D0 01            [24] 1511 	pop	ar1
      000B3B D0 00            [24] 1512 	pop	ar0
      000B3D 80 96            [24] 1513 	sjmp	00176$
      000B3F                       1514 00113$:
                                   1515 ;	src/radio.c:241: crc = crc_update(crc, payload[6 + payload_length] & 0x80, 1);
      000B3F 90 80 39         [24] 1516 	mov	dptr,#_handle_radio_request_crc_4_63
      000B42 E0               [24] 1517 	movx	a,@dptr
      000B43 FD               [12] 1518 	mov	r5,a
      000B44 A3               [24] 1519 	inc	dptr
      000B45 E0               [24] 1520 	movx	a,@dptr
      000B46 FE               [12] 1521 	mov	r6,a
      000B47 74 06            [12] 1522 	mov	a,#0x06
      000B49 2C               [12] 1523 	add	a,r4
      000B4A 24 3D            [12] 1524 	add	a,#_handle_radio_request_payload_4_63
      000B4C F5 82            [12] 1525 	mov	dpl,a
      000B4E E4               [12] 1526 	clr	a
      000B4F 34 80            [12] 1527 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000B51 F5 83            [12] 1528 	mov	dph,a
      000B53 E0               [24] 1529 	movx	a,@dptr
      000B54 FB               [12] 1530 	mov	r3,a
      000B55 90 80 30         [24] 1531 	mov	dptr,#_crc_update_PARM_2
      000B58 74 80            [12] 1532 	mov	a,#0x80
      000B5A 5B               [12] 1533 	anl	a,r3
      000B5B F0               [24] 1534 	movx	@dptr,a
      000B5C 90 80 31         [24] 1535 	mov	dptr,#_crc_update_PARM_3
      000B5F 74 01            [12] 1536 	mov	a,#0x01
      000B61 F0               [24] 1537 	movx	@dptr,a
      000B62 8D 82            [24] 1538 	mov	dpl,r5
      000B64 8E 83            [24] 1539 	mov	dph,r6
      000B66 C0 04            [24] 1540 	push	ar4
      000B68 C0 01            [24] 1541 	push	ar1
      000B6A C0 00            [24] 1542 	push	ar0
      000B6C 12 07 6D         [24] 1543 	lcall	_crc_update
      000B6F AD 82            [24] 1544 	mov	r5,dpl
      000B71 AE 83            [24] 1545 	mov	r6,dph
      000B73 D0 00            [24] 1546 	pop	ar0
      000B75 D0 01            [24] 1547 	pop	ar1
      000B77 D0 04            [24] 1548 	pop	ar4
                                   1549 ;	src/radio.c:242: crc = (crc << 8) | (crc >> 8);
      000B79 ED               [12] 1550 	mov	a,r5
      000B7A 8E 05            [24] 1551 	mov	ar5,r6
      000B7C FE               [12] 1552 	mov	r6,a
                                   1553 ;	src/radio.c:245: if(crc == crc_given)
      000B7D 90 80 3B         [24] 1554 	mov	dptr,#_handle_radio_request_crc_given_4_63
      000B80 E0               [24] 1555 	movx	a,@dptr
      000B81 FA               [12] 1556 	mov	r2,a
      000B82 A3               [24] 1557 	inc	dptr
      000B83 E0               [24] 1558 	movx	a,@dptr
      000B84 FB               [12] 1559 	mov	r3,a
      000B85 ED               [12] 1560 	mov	a,r5
      000B86 B5 02 06         [24] 1561 	cjne	a,ar2,00321$
      000B89 EE               [12] 1562 	mov	a,r6
      000B8A B5 03 02         [24] 1563 	cjne	a,ar3,00321$
      000B8D 80 03            [24] 1564 	sjmp	00322$
      000B8F                       1565 00321$:
      000B8F 02 0C 23         [24] 1566 	ljmp	00182$
      000B92                       1567 00322$:
                                   1568 ;	src/radio.c:248: memcpy(in1buf, payload, 5);
      000B92 90 80 65         [24] 1569 	mov	dptr,#_memcpy_PARM_2
      000B95 74 3D            [12] 1570 	mov	a,#_handle_radio_request_payload_4_63
      000B97 F0               [24] 1571 	movx	@dptr,a
      000B98 74 80            [12] 1572 	mov	a,#(_handle_radio_request_payload_4_63 >> 8)
      000B9A A3               [24] 1573 	inc	dptr
      000B9B F0               [24] 1574 	movx	@dptr,a
      000B9C E4               [12] 1575 	clr	a
      000B9D A3               [24] 1576 	inc	dptr
      000B9E F0               [24] 1577 	movx	@dptr,a
      000B9F 90 80 68         [24] 1578 	mov	dptr,#_memcpy_PARM_3
      000BA2 74 05            [12] 1579 	mov	a,#0x05
      000BA4 F0               [24] 1580 	movx	@dptr,a
      000BA5 E4               [12] 1581 	clr	a
      000BA6 A3               [24] 1582 	inc	dptr
      000BA7 F0               [24] 1583 	movx	@dptr,a
      000BA8 90 C6 80         [24] 1584 	mov	dptr,#_in1buf
      000BAB 75 F0 00         [24] 1585 	mov	b,#0x00
      000BAE C0 04            [24] 1586 	push	ar4
      000BB0 C0 01            [24] 1587 	push	ar1
      000BB2 C0 00            [24] 1588 	push	ar0
      000BB4 12 0E BD         [24] 1589 	lcall	_memcpy
      000BB7 D0 00            [24] 1590 	pop	ar0
      000BB9 D0 01            [24] 1591 	pop	ar1
      000BBB D0 04            [24] 1592 	pop	ar4
                                   1593 ;	src/radio.c:251: for(x = 0; x < payload_length + 3; x++)
      000BBD 74 03            [12] 1594 	mov	a,#0x03
      000BBF 28               [12] 1595 	add	a,r0
      000BC0 FD               [12] 1596 	mov	r5,a
      000BC1 E4               [12] 1597 	clr	a
      000BC2 39               [12] 1598 	addc	a,r1
      000BC3 FE               [12] 1599 	mov	r6,a
      000BC4 7A 00            [12] 1600 	mov	r2,#0x00
      000BC6 7B 00            [12] 1601 	mov	r3,#0x00
      000BC8                       1602 00179$:
      000BC8 C3               [12] 1603 	clr	c
      000BC9 EA               [12] 1604 	mov	a,r2
      000BCA 9D               [12] 1605 	subb	a,r5
      000BCB EB               [12] 1606 	mov	a,r3
      000BCC 64 80            [12] 1607 	xrl	a,#0x80
      000BCE 8E F0            [24] 1608 	mov	b,r6
      000BD0 63 F0 80         [24] 1609 	xrl	b,#0x80
      000BD3 95 F0            [12] 1610 	subb	a,b
      000BD5 50 44            [24] 1611 	jnc	00114$
                                   1612 ;	src/radio.c:252: in1buf[5+x] = ((payload[6 + x] << 1) & 0xFF) | (payload[7 + x] >> 7);
      000BD7 C0 05            [24] 1613 	push	ar5
      000BD9 C0 06            [24] 1614 	push	ar6
      000BDB 8A 01            [24] 1615 	mov	ar1,r2
      000BDD 74 05            [12] 1616 	mov	a,#0x05
      000BDF 29               [12] 1617 	add	a,r1
      000BE0 24 80            [12] 1618 	add	a,#_in1buf
      000BE2 F8               [12] 1619 	mov	r0,a
      000BE3 E4               [12] 1620 	clr	a
      000BE4 34 C6            [12] 1621 	addc	a,#(_in1buf >> 8)
      000BE6 FE               [12] 1622 	mov	r6,a
      000BE7 74 06            [12] 1623 	mov	a,#0x06
      000BE9 29               [12] 1624 	add	a,r1
      000BEA 24 3D            [12] 1625 	add	a,#_handle_radio_request_payload_4_63
      000BEC F5 82            [12] 1626 	mov	dpl,a
      000BEE E4               [12] 1627 	clr	a
      000BEF 34 80            [12] 1628 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000BF1 F5 83            [12] 1629 	mov	dph,a
      000BF3 E0               [24] 1630 	movx	a,@dptr
      000BF4 25 E0            [12] 1631 	add	a,acc
      000BF6 FD               [12] 1632 	mov	r5,a
      000BF7 74 07            [12] 1633 	mov	a,#0x07
      000BF9 29               [12] 1634 	add	a,r1
      000BFA 24 3D            [12] 1635 	add	a,#_handle_radio_request_payload_4_63
      000BFC F5 82            [12] 1636 	mov	dpl,a
      000BFE E4               [12] 1637 	clr	a
      000BFF 34 80            [12] 1638 	addc	a,#(_handle_radio_request_payload_4_63 >> 8)
      000C01 F5 83            [12] 1639 	mov	dph,a
      000C03 E0               [24] 1640 	movx	a,@dptr
      000C04 23               [12] 1641 	rl	a
      000C05 54 01            [12] 1642 	anl	a,#0x01
      000C07 F9               [12] 1643 	mov	r1,a
      000C08 42 05            [12] 1644 	orl	ar5,a
      000C0A 88 82            [24] 1645 	mov	dpl,r0
      000C0C 8E 83            [24] 1646 	mov	dph,r6
      000C0E ED               [12] 1647 	mov	a,r5
      000C0F F0               [24] 1648 	movx	@dptr,a
                                   1649 ;	src/radio.c:251: for(x = 0; x < payload_length + 3; x++)
      000C10 0A               [12] 1650 	inc	r2
      000C11 BA 00 01         [24] 1651 	cjne	r2,#0x00,00324$
      000C14 0B               [12] 1652 	inc	r3
      000C15                       1653 00324$:
      000C15 D0 06            [24] 1654 	pop	ar6
      000C17 D0 05            [24] 1655 	pop	ar5
      000C19 80 AD            [24] 1656 	sjmp	00179$
      000C1B                       1657 00114$:
                                   1658 ;	src/radio.c:253: in1bc = 5 + payload_length;
      000C1B 74 05            [12] 1659 	mov	a,#0x05
      000C1D 2C               [12] 1660 	add	a,r4
      000C1E 90 C7 B7         [24] 1661 	mov	dptr,#0xC7B7
      000C21 F0               [24] 1662 	movx	@dptr,a
                                   1663 ;	src/radio.c:254: return;
      000C22 22               [24] 1664 	ret
      000C23                       1665 00182$:
                                   1666 ;	src/radio.c:213: for(offset = 0; offset < 2; offset++)
      000C23 05 19            [12] 1667 	inc	_handle_radio_request_sloc1_1_0
      000C25 E4               [12] 1668 	clr	a
      000C26 B5 19 02         [24] 1669 	cjne	a,_handle_radio_request_sloc1_1_0,00325$
      000C29 05 1A            [12] 1670 	inc	(_handle_radio_request_sloc1_1_0 + 1)
      000C2B                       1671 00325$:
      000C2B C3               [12] 1672 	clr	c
      000C2C E5 19            [12] 1673 	mov	a,_handle_radio_request_sloc1_1_0
      000C2E 94 02            [12] 1674 	subb	a,#0x02
      000C30 E5 1A            [12] 1675 	mov	a,(_handle_radio_request_sloc1_1_0 + 1)
      000C32 64 80            [12] 1676 	xrl	a,#0x80
      000C34 94 80            [12] 1677 	subb	a,#0x80
      000C36 50 03            [24] 1678 	jnc	00326$
      000C38 02 09 CA         [24] 1679 	ljmp	00181$
      000C3B                       1680 00326$:
      000C3B                       1681 00124$:
                                   1682 ;	src/radio.c:262: in1bc = 1;
      000C3B 90 C7 B7         [24] 1683 	mov	dptr,#0xC7B7
      000C3E 74 01            [12] 1684 	mov	a,#0x01
      000C40 F0               [24] 1685 	movx	@dptr,a
                                   1686 ;	src/radio.c:263: in1buf[0] = 0xFF;
      000C41 90 C6 80         [24] 1687 	mov	dptr,#_in1buf
      000C44 74 FF            [12] 1688 	mov	a,#0xFF
      000C46 F0               [24] 1689 	movx	@dptr,a
                                   1690 ;	src/radio.c:264: return;
      000C47 22               [24] 1691 	ret
      000C48                       1692 00149$:
                                   1693 ;	src/radio.c:268: else if(request == ENTER_SNIFFER_MODE)
      000C48 BF 05 02         [24] 1694 	cjne	r7,#0x05,00327$
      000C4B 80 03            [24] 1695 	sjmp	00328$
      000C4D                       1696 00327$:
      000C4D 02 0D 04         [24] 1697 	ljmp	00146$
      000C50                       1698 00328$:
                                   1699 ;	src/radio.c:270: in_pm = false;
      000C50 90 80 0B         [24] 1700 	mov	dptr,#_in_pm
      000C53 E4               [12] 1701 	clr	a
      000C54 F0               [24] 1702 	movx	@dptr,a
                                   1703 ;	src/radio.c:273: if(data[0] > 5) data[0] = 5;
      000C55 90 80 34         [24] 1704 	mov	dptr,#_handle_radio_request_PARM_2
      000C58 E0               [24] 1705 	movx	a,@dptr
      000C59 FC               [12] 1706 	mov	r4,a
      000C5A A3               [24] 1707 	inc	dptr
      000C5B E0               [24] 1708 	movx	a,@dptr
      000C5C FD               [12] 1709 	mov	r5,a
      000C5D A3               [24] 1710 	inc	dptr
      000C5E E0               [24] 1711 	movx	a,@dptr
      000C5F FE               [12] 1712 	mov	r6,a
      000C60 8C 82            [24] 1713 	mov	dpl,r4
      000C62 8D 83            [24] 1714 	mov	dph,r5
      000C64 8E F0            [24] 1715 	mov	b,r6
      000C66 12 0F 64         [24] 1716 	lcall	__gptrget
      000C69 FB               [12] 1717 	mov  r3,a
      000C6A 24 FA            [12] 1718 	add	a,#0xff - 0x05
      000C6C 50 0B            [24] 1719 	jnc	00126$
      000C6E 8C 82            [24] 1720 	mov	dpl,r4
      000C70 8D 83            [24] 1721 	mov	dph,r5
      000C72 8E F0            [24] 1722 	mov	b,r6
      000C74 74 05            [12] 1723 	mov	a,#0x05
      000C76 12 0F 31         [24] 1724 	lcall	__gptrput
      000C79                       1725 00126$:
                                   1726 ;	src/radio.c:274: if(data[0] < 2) data[0] = 2;
      000C79 8C 82            [24] 1727 	mov	dpl,r4
      000C7B 8D 83            [24] 1728 	mov	dph,r5
      000C7D 8E F0            [24] 1729 	mov	b,r6
      000C7F 12 0F 64         [24] 1730 	lcall	__gptrget
      000C82 FB               [12] 1731 	mov	r3,a
      000C83 BB 02 00         [24] 1732 	cjne	r3,#0x02,00330$
      000C86                       1733 00330$:
      000C86 50 0B            [24] 1734 	jnc	00128$
      000C88 8C 82            [24] 1735 	mov	dpl,r4
      000C8A 8D 83            [24] 1736 	mov	dph,r5
      000C8C 8E F0            [24] 1737 	mov	b,r6
      000C8E 74 02            [12] 1738 	mov	a,#0x02
      000C90 12 0F 31         [24] 1739 	lcall	__gptrput
      000C93                       1740 00128$:
                                   1741 ;	src/radio.c:277: rfce = 0;
      000C93 C2 90            [12] 1742 	clr	_rfce
                                   1743 ;	src/radio.c:280: configure_address(&data[1], data[0]);
      000C95 74 01            [12] 1744 	mov	a,#0x01
      000C97 2C               [12] 1745 	add	a,r4
      000C98 F9               [12] 1746 	mov	r1,a
      000C99 E4               [12] 1747 	clr	a
      000C9A 3D               [12] 1748 	addc	a,r5
      000C9B FA               [12] 1749 	mov	r2,a
      000C9C 8E 03            [24] 1750 	mov	ar3,r6
      000C9E 8C 82            [24] 1751 	mov	dpl,r4
      000CA0 8D 83            [24] 1752 	mov	dph,r5
      000CA2 8E F0            [24] 1753 	mov	b,r6
      000CA4 12 0F 64         [24] 1754 	lcall	__gptrget
      000CA7 90 80 19         [24] 1755 	mov	dptr,#_configure_address_PARM_2
      000CAA F0               [24] 1756 	movx	@dptr,a
      000CAB 89 82            [24] 1757 	mov	dpl,r1
      000CAD 8A 83            [24] 1758 	mov	dph,r2
      000CAF 8B F0            [24] 1759 	mov	b,r3
      000CB1 12 05 7B         [24] 1760 	lcall	_configure_address
                                   1761 ;	src/radio.c:283: configure_mac(EN_DPL | EN_ACK_PAY, DPL_P0, ENAA_NONE);
      000CB4 90 80 1D         [24] 1762 	mov	dptr,#_configure_mac_PARM_2
      000CB7 74 01            [12] 1763 	mov	a,#0x01
      000CB9 F0               [24] 1764 	movx	@dptr,a
      000CBA 90 80 1E         [24] 1765 	mov	dptr,#_configure_mac_PARM_3
      000CBD E4               [12] 1766 	clr	a
      000CBE F0               [24] 1767 	movx	@dptr,a
      000CBF 75 82 06         [24] 1768 	mov	dpl,#0x06
      000CC2 12 05 F2         [24] 1769 	lcall	_configure_mac
                                   1770 ;	src/radio.c:286: configure_phy(EN_CRC | CRC0 | PRIM_RX | PWR_UP, RATE_2M, 0);
      000CC5 90 80 20         [24] 1771 	mov	dptr,#_configure_phy_PARM_2
      000CC8 74 08            [12] 1772 	mov	a,#0x08
      000CCA F0               [24] 1773 	movx	@dptr,a
      000CCB 90 80 21         [24] 1774 	mov	dptr,#_configure_phy_PARM_3
      000CCE E4               [12] 1775 	clr	a
      000CCF F0               [24] 1776 	movx	@dptr,a
      000CD0 75 82 0F         [24] 1777 	mov	dpl,#0x0F
      000CD3 12 06 1F         [24] 1778 	lcall	_configure_phy
                                   1779 ;	src/radio.c:289: rfce = 1;
      000CD6 D2 90            [12] 1780 	setb	_rfce
                                   1781 ;	src/radio.c:292: flush_rx();
      000CD8 90 80 24         [24] 1782 	mov	dptr,#_spi_write_PARM_2
      000CDB E4               [12] 1783 	clr	a
      000CDC F0               [24] 1784 	movx	@dptr,a
      000CDD A3               [24] 1785 	inc	dptr
      000CDE F0               [24] 1786 	movx	@dptr,a
      000CDF A3               [24] 1787 	inc	dptr
      000CE0 F0               [24] 1788 	movx	@dptr,a
      000CE1 90 80 27         [24] 1789 	mov	dptr,#_spi_write_PARM_3
      000CE4 F0               [24] 1790 	movx	@dptr,a
      000CE5 75 82 E2         [24] 1791 	mov	dpl,#0xE2
      000CE8 12 06 5E         [24] 1792 	lcall	_spi_write
                                   1793 ;	src/radio.c:293: flush_tx();
      000CEB 90 80 24         [24] 1794 	mov	dptr,#_spi_write_PARM_2
      000CEE E4               [12] 1795 	clr	a
      000CEF F0               [24] 1796 	movx	@dptr,a
      000CF0 A3               [24] 1797 	inc	dptr
      000CF1 F0               [24] 1798 	movx	@dptr,a
      000CF2 A3               [24] 1799 	inc	dptr
      000CF3 F0               [24] 1800 	movx	@dptr,a
      000CF4 90 80 27         [24] 1801 	mov	dptr,#_spi_write_PARM_3
      000CF7 F0               [24] 1802 	movx	@dptr,a
      000CF8 75 82 E1         [24] 1803 	mov	dpl,#0xE1
      000CFB 12 06 5E         [24] 1804 	lcall	_spi_write
                                   1805 ;	src/radio.c:294: in1bc = 0;      
      000CFE 90 C7 B7         [24] 1806 	mov	dptr,#0xC7B7
      000D01 E4               [12] 1807 	clr	a
      000D02 F0               [24] 1808 	movx	@dptr,a
      000D03 22               [24] 1809 	ret
      000D04                       1810 00146$:
                                   1811 ;	src/radio.c:298: else if(request == TRANSMIT_PAYLOAD)
      000D04 BF 04 02         [24] 1812 	cjne	r7,#0x04,00332$
      000D07 80 01            [24] 1813 	sjmp	00333$
      000D09                       1814 00332$:
      000D09 22               [24] 1815 	ret
      000D0A                       1816 00333$:
                                   1817 ;	src/radio.c:301: if(data[0] > 32) data[0] = 32;
      000D0A 90 80 34         [24] 1818 	mov	dptr,#_handle_radio_request_PARM_2
      000D0D E0               [24] 1819 	movx	a,@dptr
      000D0E FD               [12] 1820 	mov	r5,a
      000D0F A3               [24] 1821 	inc	dptr
      000D10 E0               [24] 1822 	movx	a,@dptr
      000D11 FE               [12] 1823 	mov	r6,a
      000D12 A3               [24] 1824 	inc	dptr
      000D13 E0               [24] 1825 	movx	a,@dptr
      000D14 FF               [12] 1826 	mov	r7,a
      000D15 8D 82            [24] 1827 	mov	dpl,r5
      000D17 8E 83            [24] 1828 	mov	dph,r6
      000D19 8F F0            [24] 1829 	mov	b,r7
      000D1B 12 0F 64         [24] 1830 	lcall	__gptrget
      000D1E FC               [12] 1831 	mov  r4,a
      000D1F 24 DF            [12] 1832 	add	a,#0xff - 0x20
      000D21 50 0B            [24] 1833 	jnc	00130$
      000D23 8D 82            [24] 1834 	mov	dpl,r5
      000D25 8E 83            [24] 1835 	mov	dph,r6
      000D27 8F F0            [24] 1836 	mov	b,r7
      000D29 74 20            [12] 1837 	mov	a,#0x20
      000D2B 12 0F 31         [24] 1838 	lcall	__gptrput
      000D2E                       1839 00130$:
                                   1840 ;	src/radio.c:302: if(data[0] < 1) data[0] = 1;
      000D2E 8D 82            [24] 1841 	mov	dpl,r5
      000D30 8E 83            [24] 1842 	mov	dph,r6
      000D32 8F F0            [24] 1843 	mov	b,r7
      000D34 12 0F 64         [24] 1844 	lcall	__gptrget
      000D37 FC               [12] 1845 	mov	r4,a
      000D38 BC 01 00         [24] 1846 	cjne	r4,#0x01,00335$
      000D3B                       1847 00335$:
      000D3B 50 0B            [24] 1848 	jnc	00132$
      000D3D 8D 82            [24] 1849 	mov	dpl,r5
      000D3F 8E 83            [24] 1850 	mov	dph,r6
      000D41 8F F0            [24] 1851 	mov	b,r7
      000D43 74 01            [12] 1852 	mov	a,#0x01
      000D45 12 0F 31         [24] 1853 	lcall	__gptrput
      000D48                       1854 00132$:
                                   1855 ;	src/radio.c:305: rfce = 0;
      000D48 C2 90            [12] 1856 	clr	_rfce
                                   1857 ;	src/radio.c:309: write_register_byte(SETUP_RETR, (1 << data[1]) | data[2]);
      000D4A 74 01            [12] 1858 	mov	a,#0x01
      000D4C 2D               [12] 1859 	add	a,r5
      000D4D FA               [12] 1860 	mov	r2,a
      000D4E E4               [12] 1861 	clr	a
      000D4F 3E               [12] 1862 	addc	a,r6
      000D50 FB               [12] 1863 	mov	r3,a
      000D51 8F 04            [24] 1864 	mov	ar4,r7
      000D53 8A 82            [24] 1865 	mov	dpl,r2
      000D55 8B 83            [24] 1866 	mov	dph,r3
      000D57 8C F0            [24] 1867 	mov	b,r4
      000D59 12 0F 64         [24] 1868 	lcall	__gptrget
      000D5C FA               [12] 1869 	mov	r2,a
      000D5D 8A F0            [24] 1870 	mov	b,r2
      000D5F 05 F0            [12] 1871 	inc	b
      000D61 74 01            [12] 1872 	mov	a,#0x01
      000D63 80 02            [24] 1873 	sjmp	00339$
      000D65                       1874 00337$:
      000D65 25 E0            [12] 1875 	add	a,acc
      000D67                       1876 00339$:
      000D67 D5 F0 FB         [24] 1877 	djnz	b,00337$
      000D6A FA               [12] 1878 	mov	r2,a
      000D6B 74 02            [12] 1879 	mov	a,#0x02
      000D6D 2D               [12] 1880 	add	a,r5
      000D6E F9               [12] 1881 	mov	r1,a
      000D6F E4               [12] 1882 	clr	a
      000D70 3E               [12] 1883 	addc	a,r6
      000D71 FB               [12] 1884 	mov	r3,a
      000D72 8F 04            [24] 1885 	mov	ar4,r7
      000D74 89 82            [24] 1886 	mov	dpl,r1
      000D76 8B 83            [24] 1887 	mov	dph,r3
      000D78 8C F0            [24] 1888 	mov	b,r4
      000D7A 12 0F 64         [24] 1889 	lcall	__gptrget
      000D7D 90 80 2E         [24] 1890 	mov	dptr,#_write_register_byte_PARM_2
      000D80 4A               [12] 1891 	orl	a,r2
      000D81 F0               [24] 1892 	movx	@dptr,a
      000D82 75 82 04         [24] 1893 	mov	dpl,#0x04
      000D85 C0 07            [24] 1894 	push	ar7
      000D87 C0 06            [24] 1895 	push	ar6
      000D89 C0 05            [24] 1896 	push	ar5
      000D8B 12 07 4B         [24] 1897 	lcall	_write_register_byte
      000D8E D0 05            [24] 1898 	pop	ar5
      000D90 D0 06            [24] 1899 	pop	ar6
      000D92 D0 07            [24] 1900 	pop	ar7
                                   1901 ;	src/radio.c:312: flush_tx();
      000D94 90 80 24         [24] 1902 	mov	dptr,#_spi_write_PARM_2
      000D97 E4               [12] 1903 	clr	a
      000D98 F0               [24] 1904 	movx	@dptr,a
      000D99 A3               [24] 1905 	inc	dptr
      000D9A F0               [24] 1906 	movx	@dptr,a
      000D9B A3               [24] 1907 	inc	dptr
      000D9C F0               [24] 1908 	movx	@dptr,a
      000D9D 90 80 27         [24] 1909 	mov	dptr,#_spi_write_PARM_3
      000DA0 F0               [24] 1910 	movx	@dptr,a
      000DA1 75 82 E1         [24] 1911 	mov	dpl,#0xE1
      000DA4 C0 07            [24] 1912 	push	ar7
      000DA6 C0 06            [24] 1913 	push	ar6
      000DA8 C0 05            [24] 1914 	push	ar5
      000DAA 12 06 5E         [24] 1915 	lcall	_spi_write
      000DAD D0 05            [24] 1916 	pop	ar5
      000DAF D0 06            [24] 1917 	pop	ar6
      000DB1 D0 07            [24] 1918 	pop	ar7
                                   1919 ;	src/radio.c:313: flush_rx();     
      000DB3 90 80 24         [24] 1920 	mov	dptr,#_spi_write_PARM_2
      000DB6 E4               [12] 1921 	clr	a
      000DB7 F0               [24] 1922 	movx	@dptr,a
      000DB8 A3               [24] 1923 	inc	dptr
      000DB9 F0               [24] 1924 	movx	@dptr,a
      000DBA A3               [24] 1925 	inc	dptr
      000DBB F0               [24] 1926 	movx	@dptr,a
      000DBC 90 80 27         [24] 1927 	mov	dptr,#_spi_write_PARM_3
      000DBF F0               [24] 1928 	movx	@dptr,a
      000DC0 75 82 E2         [24] 1929 	mov	dpl,#0xE2
      000DC3 C0 07            [24] 1930 	push	ar7
      000DC5 C0 06            [24] 1931 	push	ar6
      000DC7 C0 05            [24] 1932 	push	ar5
      000DC9 12 06 5E         [24] 1933 	lcall	_spi_write
                                   1934 ;	src/radio.c:316: write_register_byte(STATUS, MAX_RT | TX_DS | RX_DR);
      000DCC 90 80 2E         [24] 1935 	mov	dptr,#_write_register_byte_PARM_2
      000DCF 74 70            [12] 1936 	mov	a,#0x70
      000DD1 F0               [24] 1937 	movx	@dptr,a
      000DD2 75 82 07         [24] 1938 	mov	dpl,#0x07
      000DD5 12 07 4B         [24] 1939 	lcall	_write_register_byte
                                   1940 ;	src/radio.c:319: write_register_byte(CONFIG, PWR_UP | EN_CRC | CRC0); 
      000DD8 90 80 2E         [24] 1941 	mov	dptr,#_write_register_byte_PARM_2
      000DDB 74 0E            [12] 1942 	mov	a,#0x0E
      000DDD F0               [24] 1943 	movx	@dptr,a
      000DDE 75 82 00         [24] 1944 	mov	dpl,#0x00
      000DE1 12 07 4B         [24] 1945 	lcall	_write_register_byte
                                   1946 ;	src/radio.c:322: write_register_byte(FEATURE, EN_DPL | EN_DYN_ACK | EN_ACK_PAY);
      000DE4 90 80 2E         [24] 1947 	mov	dptr,#_write_register_byte_PARM_2
      000DE7 74 07            [12] 1948 	mov	a,#0x07
      000DE9 F0               [24] 1949 	movx	@dptr,a
      000DEA 75 82 1D         [24] 1950 	mov	dpl,#0x1D
      000DED 12 07 4B         [24] 1951 	lcall	_write_register_byte
                                   1952 ;	src/radio.c:323: write_register_byte(EN_AA, ENAA_P0);
      000DF0 90 80 2E         [24] 1953 	mov	dptr,#_write_register_byte_PARM_2
      000DF3 74 01            [12] 1954 	mov	a,#0x01
      000DF5 F0               [24] 1955 	movx	@dptr,a
      000DF6 75 82 01         [24] 1956 	mov	dpl,#0x01
      000DF9 12 07 4B         [24] 1957 	lcall	_write_register_byte
      000DFC D0 05            [24] 1958 	pop	ar5
      000DFE D0 06            [24] 1959 	pop	ar6
      000E00 D0 07            [24] 1960 	pop	ar7
                                   1961 ;	src/radio.c:326: spi_write(W_TX_PAYLOAD, &data[3], data[0]);
      000E02 74 03            [12] 1962 	mov	a,#0x03
      000E04 2D               [12] 1963 	add	a,r5
      000E05 FA               [12] 1964 	mov	r2,a
      000E06 E4               [12] 1965 	clr	a
      000E07 3E               [12] 1966 	addc	a,r6
      000E08 FB               [12] 1967 	mov	r3,a
      000E09 8F 04            [24] 1968 	mov	ar4,r7
      000E0B 8D 82            [24] 1969 	mov	dpl,r5
      000E0D 8E 83            [24] 1970 	mov	dph,r6
      000E0F 8F F0            [24] 1971 	mov	b,r7
      000E11 12 0F 64         [24] 1972 	lcall	__gptrget
      000E14 FD               [12] 1973 	mov	r5,a
      000E15 90 80 24         [24] 1974 	mov	dptr,#_spi_write_PARM_2
      000E18 EA               [12] 1975 	mov	a,r2
      000E19 F0               [24] 1976 	movx	@dptr,a
      000E1A EB               [12] 1977 	mov	a,r3
      000E1B A3               [24] 1978 	inc	dptr
      000E1C F0               [24] 1979 	movx	@dptr,a
      000E1D EC               [12] 1980 	mov	a,r4
      000E1E A3               [24] 1981 	inc	dptr
      000E1F F0               [24] 1982 	movx	@dptr,a
      000E20 90 80 27         [24] 1983 	mov	dptr,#_spi_write_PARM_3
      000E23 ED               [12] 1984 	mov	a,r5
      000E24 F0               [24] 1985 	movx	@dptr,a
      000E25 75 82 A0         [24] 1986 	mov	dpl,#0xA0
      000E28 12 06 5E         [24] 1987 	lcall	_spi_write
                                   1988 ;	src/radio.c:329: rfce = 1;
      000E2B D2 90            [12] 1989 	setb	_rfce
                                   1990 ;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
      000E2D 7E 19            [12] 1991 	mov	r6,#0x19
      000E2F 7F 00            [12] 1992 	mov	r7,#0x00
      000E31                       1993 00166$:
      000E31 00               [12] 1994 	nop 
      000E32 00               [12] 1995 	nop 
      000E33 00               [12] 1996 	nop 
      000E34 00               [12] 1997 	nop 
      000E35 1E               [12] 1998 	dec	r6
      000E36 BE FF 01         [24] 1999 	cjne	r6,#0xFF,00340$
      000E39 1F               [12] 2000 	dec	r7
      000E3A                       2001 00340$:
      000E3A EE               [12] 2002 	mov	a,r6
      000E3B 4F               [12] 2003 	orl	a,r7
      000E3C 70 F3            [24] 2004 	jnz	00166$
                                   2005 ;	src/radio.c:331: rfce = 0;      
      000E3E C2 90            [12] 2006 	clr	_rfce
                                   2007 ;	src/radio.c:334: while(true)
      000E40                       2008 00141$:
                                   2009 ;	src/radio.c:337: rfcsn = 0;
      000E40 C2 91            [12] 2010 	clr	_rfcsn
                                   2011 ;	src/radio.c:338: RFDAT = _NOP;
      000E42 75 E5 FF         [24] 2012 	mov	_RFDAT,#0xFF
                                   2013 ;	src/radio.c:339: RFRDY = 0;
      000E45 C2 C0            [12] 2014 	clr	_RFRDY
                                   2015 ;	src/radio.c:340: while(!RFRDY);
      000E47                       2016 00133$:
      000E47 30 C0 FD         [24] 2017 	jnb	_RFRDY,00133$
                                   2018 ;	src/radio.c:341: rfcsn = 1;
      000E4A D2 91            [12] 2019 	setb	_rfcsn
                                   2020 ;	src/radio.c:344: if((RFDAT & 0x10) == 0x10)  
      000E4C 74 10            [12] 2021 	mov	a,#0x10
      000E4E 55 E5            [12] 2022 	anl	a,_RFDAT
      000E50 FF               [12] 2023 	mov	r7,a
      000E51 BF 10 07         [24] 2024 	cjne	r7,#0x10,00137$
                                   2025 ;	src/radio.c:346: in1buf[0] = 0;
      000E54 90 C6 80         [24] 2026 	mov	dptr,#_in1buf
      000E57 E4               [12] 2027 	clr	a
      000E58 F0               [24] 2028 	movx	@dptr,a
                                   2029 ;	src/radio.c:347: break;
      000E59 80 0E            [24] 2030 	sjmp	00142$
      000E5B                       2031 00137$:
                                   2032 ;	src/radio.c:351: if((RFDAT & 0x20) == 0x20)
      000E5B 74 20            [12] 2033 	mov	a,#0x20
      000E5D 55 E5            [12] 2034 	anl	a,_RFDAT
      000E5F FF               [12] 2035 	mov	r7,a
      000E60 BF 20 DD         [24] 2036 	cjne	r7,#0x20,00141$
                                   2037 ;	src/radio.c:353: in1buf[0] = 1;
      000E63 90 C6 80         [24] 2038 	mov	dptr,#_in1buf
      000E66 74 01            [12] 2039 	mov	a,#0x01
      000E68 F0               [24] 2040 	movx	@dptr,a
                                   2041 ;	src/radio.c:354: break;
      000E69                       2042 00142$:
                                   2043 ;	src/radio.c:359: write_register_byte(FEATURE, EN_DPL | EN_ACK_PAY);
      000E69 90 80 2E         [24] 2044 	mov	dptr,#_write_register_byte_PARM_2
      000E6C 74 06            [12] 2045 	mov	a,#0x06
      000E6E F0               [24] 2046 	movx	@dptr,a
      000E6F 75 82 1D         [24] 2047 	mov	dpl,#0x1D
      000E72 12 07 4B         [24] 2048 	lcall	_write_register_byte
                                   2049 ;	src/radio.c:360: write_register_byte(EN_AA, ENAA_NONE);  
      000E75 90 80 2E         [24] 2050 	mov	dptr,#_write_register_byte_PARM_2
      000E78 E4               [12] 2051 	clr	a
      000E79 F0               [24] 2052 	movx	@dptr,a
      000E7A 75 82 01         [24] 2053 	mov	dpl,#0x01
      000E7D 12 07 4B         [24] 2054 	lcall	_write_register_byte
                                   2055 ;	src/radio.c:363: write_register_byte(CONFIG, PWR_UP | EN_CRC | CRC0 | PRIM_RX);  
      000E80 90 80 2E         [24] 2056 	mov	dptr,#_write_register_byte_PARM_2
      000E83 74 0F            [12] 2057 	mov	a,#0x0F
      000E85 F0               [24] 2058 	movx	@dptr,a
      000E86 75 82 00         [24] 2059 	mov	dpl,#0x00
      000E89 12 07 4B         [24] 2060 	lcall	_write_register_byte
                                   2061 ;	src/radio.c:366: rfce = 1;
      000E8C D2 90            [12] 2062 	setb	_rfce
                                   2063 ;	src/radio.c:367: in1bc = 1;   
      000E8E 90 C7 B7         [24] 2064 	mov	dptr,#0xC7B7
      000E91 74 01            [12] 2065 	mov	a,#0x01
      000E93 F0               [24] 2066 	movx	@dptr,a
      000E94 22               [24] 2067 	ret
                                   2068 	.area CSEG    (CODE)
                                   2069 	.area CONST   (CODE)
                                   2070 	.area XINIT   (CODE)
      000FE1                       2071 __xinit__bootloader:
      000FE1 00 78                 2072 	.byte #0x00,#0x78
      000FE3                       2073 __xinit__promiscuous_address:
      000FE3 AA                    2074 	.db #0xAA	; 170
      000FE4 00                    2075 	.db #0x00	; 0
                                   2076 	.area CABS    (ABS,CODE)
