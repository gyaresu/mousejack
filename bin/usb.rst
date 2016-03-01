                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.5.0 #9253 (Feb 24 2016) (Mac OS X x86_64)
                                      4 ; This file was generated Wed Feb 24 11:52:24 2016
                                      5 ;--------------------------------------------------------
                                      6 	.module usb
                                      7 	.optsdcc -mmcs51 --model-large
                                      8 	
                                      9 ;--------------------------------------------------------
                                     10 ; Public variables in this module
                                     11 ;--------------------------------------------------------
                                     12 	.globl _write_descriptor
                                     13 	.globl _write_device_string
                                     14 	.globl _handle_radio_request
                                     15 	.globl _strlen
                                     16 	.globl _memset
                                     17 	.globl _memcpy
                                     18 	.globl _RFRDY
                                     19 	.globl _rfcsn
                                     20 	.globl _rfce
                                     21 	.globl _ien1
                                     22 	.globl _ien0
                                     23 	.globl _RFDAT
                                     24 	.globl _P0DIR
                                     25 	.globl _P0
                                     26 	.globl _usbcon
                                     27 	.globl _rfcon
                                     28 	.globl _rfctl
                                     29 	.globl _request
                                     30 	.globl _setupbuf
                                     31 	.globl _out1buf
                                     32 	.globl _in1buf
                                     33 	.globl _in0buf
                                     34 	.globl _init_usb
                                     35 	.globl _usb_reset_config
                                     36 	.globl _usb_irq
                                     37 	.globl _handle_setup_request
                                     38 ;--------------------------------------------------------
                                     39 ; special function registers
                                     40 ;--------------------------------------------------------
                                     41 	.area RSEG    (ABS,DATA)
      000000                         42 	.org 0x0000
                           0000E6    43 _rfctl	=	0x00e6
                           000090    44 _rfcon	=	0x0090
                           0000A0    45 _usbcon	=	0x00a0
                           000080    46 _P0	=	0x0080
                           000094    47 _P0DIR	=	0x0094
                           0000E5    48 _RFDAT	=	0x00e5
                           0000A8    49 _ien0	=	0x00a8
                           0000B8    50 _ien1	=	0x00b8
                                     51 ;--------------------------------------------------------
                                     52 ; special function bits
                                     53 ;--------------------------------------------------------
                                     54 	.area RSEG    (ABS,DATA)
      000000                         55 	.org 0x0000
                           000090    56 _rfce	=	0x0090
                           000091    57 _rfcsn	=	0x0091
                           0000C0    58 _RFRDY	=	0x00c0
                                     59 ;--------------------------------------------------------
                                     60 ; overlayable register banks
                                     61 ;--------------------------------------------------------
                                     62 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         63 	.ds 8
                                     64 	.area REG_BANK_1	(REL,OVR,DATA)
      000008                         65 	.ds 8
                                     66 ;--------------------------------------------------------
                                     67 ; overlayable bit register bank
                                     68 ;--------------------------------------------------------
                                     69 	.area BIT_BANK	(REL,OVR,DATA)
      000021                         70 bits:
      000021                         71 	.ds 1
                           008000    72 	b0 = bits[0]
                           008100    73 	b1 = bits[1]
                           008200    74 	b2 = bits[2]
                           008300    75 	b3 = bits[3]
                           008400    76 	b4 = bits[4]
                           008500    77 	b5 = bits[5]
                           008600    78 	b6 = bits[6]
                           008700    79 	b7 = bits[7]
                                     80 ;--------------------------------------------------------
                                     81 ; internal ram data
                                     82 ;--------------------------------------------------------
                                     83 	.area DSEG    (DATA)
      000010                         84 _write_device_string_sloc0_1_0:
      000010                         85 	.ds 2
                                     86 ;--------------------------------------------------------
                                     87 ; overlayable items in internal ram 
                                     88 ;--------------------------------------------------------
                                     89 ;--------------------------------------------------------
                                     90 ; indirectly addressable internal ram data
                                     91 ;--------------------------------------------------------
                                     92 	.area ISEG    (DATA)
                                     93 ;--------------------------------------------------------
                                     94 ; absolute internal ram data
                                     95 ;--------------------------------------------------------
                                     96 	.area IABS    (ABS,DATA)
                                     97 	.area IABS    (ABS,DATA)
                                     98 ;--------------------------------------------------------
                                     99 ; bit data
                                    100 ;--------------------------------------------------------
                                    101 	.area BSEG    (BIT)
      000001                        102 _configured:
      000001                        103 	.ds 1
      000002                        104 _handle_setup_request_handled_1_70:
      000002                        105 	.ds 1
                                    106 ;--------------------------------------------------------
                                    107 ; paged external ram data
                                    108 ;--------------------------------------------------------
                                    109 	.area PSEG    (PAG,XDATA)
                                    110 ;--------------------------------------------------------
                                    111 ; external ram data
                                    112 ;--------------------------------------------------------
                                    113 	.area XSEG    (XDATA)
                           00C700   114 _in0buf	=	0xc700
                           00C680   115 _in1buf	=	0xc680
                           00C640   116 _out1buf	=	0xc640
                           00C7E8   117 _setupbuf	=	0xc7e8
      008008                        118 _write_device_string_string_1_66:
      008008                        119 	.ds 3
                                    120 ;--------------------------------------------------------
                                    121 ; absolute external ram data
                                    122 ;--------------------------------------------------------
                                    123 	.area XABS    (ABS,XDATA)
                                    124 ;--------------------------------------------------------
                                    125 ; external initialized ram data
                                    126 ;--------------------------------------------------------
                                    127 	.area XISEG   (XDATA)
      008072                        128 _bootloader:
      008072                        129 	.ds 2
      008074                        130 _request::
      008074                        131 	.ds 2
                                    132 	.area HOME    (CODE)
                                    133 	.area GSINIT0 (CODE)
                                    134 	.area GSINIT1 (CODE)
                                    135 	.area GSINIT2 (CODE)
                                    136 	.area GSINIT3 (CODE)
                                    137 	.area GSINIT4 (CODE)
                                    138 	.area GSINIT5 (CODE)
                                    139 	.area GSINIT  (CODE)
                                    140 	.area GSFINAL (CODE)
                                    141 	.area CSEG    (CODE)
                                    142 ;--------------------------------------------------------
                                    143 ; global & static initialisations
                                    144 ;--------------------------------------------------------
                                    145 	.area HOME    (CODE)
                                    146 	.area GSINIT  (CODE)
                                    147 	.area GSFINAL (CODE)
                                    148 	.area GSINIT  (CODE)
                                    149 ;--------------------------------------------------------
                                    150 ; Home
                                    151 ;--------------------------------------------------------
                                    152 	.area HOME    (CODE)
                                    153 	.area HOME    (CODE)
                                    154 ;--------------------------------------------------------
                                    155 ; code
                                    156 ;--------------------------------------------------------
                                    157 	.area CSEG    (CODE)
                                    158 ;------------------------------------------------------------
                                    159 ;Allocation info for local variables in function 'init_usb'
                                    160 ;------------------------------------------------------------
                                    161 ;__00020005                Allocated with name '_init_usb___00020005_3_61'
                                    162 ;us                        Allocated with name '_init_usb_us_3_61'
                                    163 ;------------------------------------------------------------
                                    164 ;	src/usb.c:30: void init_usb() 
                                    165 ;	-----------------------------------------
                                    166 ;	 function init_usb
                                    167 ;	-----------------------------------------
      0000FB                        168 _init_usb:
                           000007   169 	ar7 = 0x07
                           000006   170 	ar6 = 0x06
                           000005   171 	ar5 = 0x05
                           000004   172 	ar4 = 0x04
                           000003   173 	ar3 = 0x03
                           000002   174 	ar2 = 0x02
                           000001   175 	ar1 = 0x01
                           000000   176 	ar0 = 0x00
                                    177 ;	src/usb.c:32: configured = false;
      0000FB C2 01            [12]  178 	clr	_configured
                                    179 ;	src/usb.c:35: usbcon = 0x40; 
      0000FD 75 A0 40         [24]  180 	mov	_usbcon,#0x40
                                    181 ;	src/usb.c:38: usbcs |= 0x08;
      000100 90 C7 D6         [24]  182 	mov	dptr,#0xC7D6
      000103 E0               [24]  183 	movx	a,@dptr
      000104 44 08            [12]  184 	orl	a,#0x08
      000106 F0               [24]  185 	movx	@dptr,a
                                    186 ;	src/nRF24LU1P.h:35: inline void delay_us(uint16_t us) { do nop_us(); while(--us); }
      000107 7E 50            [12]  187 	mov	r6,#0x50
      000109 7F C3            [12]  188 	mov	r7,#0xC3
      00010B                        189 00104$:
      00010B 00               [12]  190 	nop 
      00010C 00               [12]  191 	nop 
      00010D 00               [12]  192 	nop 
      00010E 00               [12]  193 	nop 
      00010F 1E               [12]  194 	dec	r6
      000110 BE FF 01         [24]  195 	cjne	r6,#0xFF,00120$
      000113 1F               [12]  196 	dec	r7
      000114                        197 00120$:
      000114 EE               [12]  198 	mov	a,r6
      000115 4F               [12]  199 	orl	a,r7
      000116 70 F3            [24]  200 	jnz	00104$
                                    201 ;	src/usb.c:40: usbcs &= ~0x08;
      000118 90 C7 D6         [24]  202 	mov	dptr,#0xC7D6
      00011B E0               [24]  203 	movx	a,@dptr
      00011C 54 F7            [12]  204 	anl	a,#0xF7
      00011E F0               [24]  205 	movx	@dptr,a
                                    206 ;	src/usb.c:43: usb_reset_config();
      00011F 12 01 26         [24]  207 	lcall	_usb_reset_config
                                    208 ;	src/usb.c:46: while(!configured);
      000122                        209 00101$:
      000122 30 01 FD         [24]  210 	jnb	_configured,00101$
      000125 22               [24]  211 	ret
                                    212 ;------------------------------------------------------------
                                    213 ;Allocation info for local variables in function 'usb_reset_config'
                                    214 ;------------------------------------------------------------
                                    215 ;	src/usb.c:50: void usb_reset_config()
                                    216 ;	-----------------------------------------
                                    217 ;	 function usb_reset_config
                                    218 ;	-----------------------------------------
      000126                        219 _usb_reset_config:
                                    220 ;	src/usb.c:53: usbien = 0x11;  // USB reset and setup data valid
      000126 90 C7 AE         [24]  221 	mov	dptr,#0xC7AE
      000129 74 11            [12]  222 	mov	a,#0x11
      00012B F0               [24]  223 	movx	@dptr,a
                                    224 ;	src/usb.c:54: in_ien = 0x00;  // Disable EP IN interrupts
      00012C 90 C7 AC         [24]  225 	mov	dptr,#0xC7AC
      00012F E4               [12]  226 	clr	a
      000130 F0               [24]  227 	movx	@dptr,a
                                    228 ;	src/usb.c:55: out_ien = 0x02; // Enable EP1 OUT interrupt
      000131 90 C7 AD         [24]  229 	mov	dptr,#0xC7AD
      000134 74 02            [12]  230 	mov	a,#0x02
      000136 F0               [24]  231 	movx	@dptr,a
                                    232 ;	src/usb.c:56: ien1 = 0x10;    // Enable USB interrupt
      000137 75 B8 10         [24]  233 	mov	_ien1,#0x10
                                    234 ;	src/usb.c:57: in_irq = 0x1F;  // Clear IN IRQ flags
      00013A 90 C7 A9         [24]  235 	mov	dptr,#0xC7A9
      00013D 74 1F            [12]  236 	mov	a,#0x1F
      00013F F0               [24]  237 	movx	@dptr,a
                                    238 ;	src/usb.c:58: out_irq = 0x1F; // Clear OUT IRQ flags
      000140 90 C7 AA         [24]  239 	mov	dptr,#0xC7AA
      000143 F0               [24]  240 	movx	@dptr,a
                                    241 ;	src/usb.c:61: inbulkval = 0x02;
      000144 90 C7 DE         [24]  242 	mov	dptr,#0xC7DE
      000147 74 02            [12]  243 	mov	a,#0x02
      000149 F0               [24]  244 	movx	@dptr,a
                                    245 ;	src/usb.c:62: outbulkval = 0x02;
      00014A 90 C7 DF         [24]  246 	mov	dptr,#0xC7DF
      00014D F0               [24]  247 	movx	@dptr,a
                                    248 ;	src/usb.c:63: inisoval = 0x00;
      00014E 90 C7 E0         [24]  249 	mov	dptr,#0xC7E0
      000151 E4               [12]  250 	clr	a
      000152 F0               [24]  251 	movx	@dptr,a
                                    252 ;	src/usb.c:64: outisoval = 0x00;  
      000153 90 C7 E1         [24]  253 	mov	dptr,#0xC7E1
      000156 F0               [24]  254 	movx	@dptr,a
                                    255 ;	src/usb.c:67: bout1addr = 32;
      000157 90 C7 81         [24]  256 	mov	dptr,#0xC781
      00015A 74 20            [12]  257 	mov	a,#0x20
      00015C F0               [24]  258 	movx	@dptr,a
                                    259 ;	src/usb.c:68: bout2addr = 64;
      00015D 90 C7 82         [24]  260 	mov	dptr,#0xC782
      000160 23               [12]  261 	rl	a
      000161 F0               [24]  262 	movx	@dptr,a
                                    263 ;	src/usb.c:69: binstaddr = 16;
      000162 90 C7 88         [24]  264 	mov	dptr,#0xC788
      000165 74 10            [12]  265 	mov	a,#0x10
      000167 F0               [24]  266 	movx	@dptr,a
                                    267 ;	src/usb.c:70: bin1addr  = 32;
      000168 90 C7 89         [24]  268 	mov	dptr,#0xC789
      00016B 23               [12]  269 	rl	a
      00016C F0               [24]  270 	movx	@dptr,a
                                    271 ;	src/usb.c:71: bin2addr  = 64;
      00016D 90 C7 8A         [24]  272 	mov	dptr,#0xC78A
      000170 23               [12]  273 	rl	a
      000171 F0               [24]  274 	movx	@dptr,a
                                    275 ;	src/usb.c:72: out1bc    = 0xFF;
      000172 90 C7 C7         [24]  276 	mov	dptr,#0xC7C7
      000175 74 FF            [12]  277 	mov	a,#0xFF
      000177 F0               [24]  278 	movx	@dptr,a
      000178 22               [24]  279 	ret
                                    280 ;------------------------------------------------------------
                                    281 ;Allocation info for local variables in function 'usb_irq'
                                    282 ;------------------------------------------------------------
                                    283 ;	src/usb.c:76: void usb_irq() __interrupt(12)  __using(1)
                                    284 ;	-----------------------------------------
                                    285 ;	 function usb_irq
                                    286 ;	-----------------------------------------
      000179                        287 _usb_irq:
                           00000F   288 	ar7 = 0x0F
                           00000E   289 	ar6 = 0x0E
                           00000D   290 	ar5 = 0x0D
                           00000C   291 	ar4 = 0x0C
                           00000B   292 	ar3 = 0x0B
                           00000A   293 	ar2 = 0x0A
                           000009   294 	ar1 = 0x09
                           000008   295 	ar0 = 0x08
      000179 C0 21            [24]  296 	push	bits
      00017B C0 E0            [24]  297 	push	acc
      00017D C0 F0            [24]  298 	push	b
      00017F C0 82            [24]  299 	push	dpl
      000181 C0 83            [24]  300 	push	dph
      000183 C0 07            [24]  301 	push	(0+7)
      000185 C0 06            [24]  302 	push	(0+6)
      000187 C0 05            [24]  303 	push	(0+5)
      000189 C0 04            [24]  304 	push	(0+4)
      00018B C0 03            [24]  305 	push	(0+3)
      00018D C0 02            [24]  306 	push	(0+2)
      00018F C0 01            [24]  307 	push	(0+1)
      000191 C0 00            [24]  308 	push	(0+0)
      000193 C0 D0            [24]  309 	push	psw
      000195 75 D0 08         [24]  310 	mov	psw,#0x08
                                    311 ;	src/usb.c:80: switch (ivec) 
      000198 90 C7 A8         [24]  312 	mov	dptr,#0xC7A8
      00019B E0               [24]  313 	movx	a,@dptr
      00019C FF               [12]  314 	mov	r7,a
      00019D 60 0A            [24]  315 	jz	00101$
      00019F BF 10 02         [24]  316 	cjne	r7,#0x10,00117$
      0001A2 80 16            [24]  317 	sjmp	00102$
      0001A4                        318 00117$:
                                    319 ;	src/usb.c:83: case 0x00:
      0001A4 BF 24 4D         [24]  320 	cjne	r7,#0x24,00105$
      0001A7 80 22            [24]  321 	sjmp	00103$
      0001A9                        322 00101$:
                                    323 ;	src/usb.c:84: handle_setup_request();
      0001A9 75 D0 00         [24]  324 	mov	psw,#0x00
      0001AC 12 03 B2         [24]  325 	lcall	_handle_setup_request
      0001AF 75 D0 08         [24]  326 	mov	psw,#0x08
                                    327 ;	src/usb.c:85: usbirq = 0x01;
      0001B2 90 C7 AB         [24]  328 	mov	dptr,#0xC7AB
      0001B5 74 01            [12]  329 	mov	a,#0x01
      0001B7 F0               [24]  330 	movx	@dptr,a
                                    331 ;	src/usb.c:86: break;
                                    332 ;	src/usb.c:89: case 0x10:
      0001B8 80 3A            [24]  333 	sjmp	00105$
      0001BA                        334 00102$:
                                    335 ;	src/usb.c:90: usb_reset_config();
      0001BA 75 D0 00         [24]  336 	mov	psw,#0x00
      0001BD 12 01 26         [24]  337 	lcall	_usb_reset_config
      0001C0 75 D0 08         [24]  338 	mov	psw,#0x08
                                    339 ;	src/usb.c:91: usbirq = 0x10;
      0001C3 90 C7 AB         [24]  340 	mov	dptr,#0xC7AB
      0001C6 74 10            [12]  341 	mov	a,#0x10
      0001C8 F0               [24]  342 	movx	@dptr,a
                                    343 ;	src/usb.c:92: break;
                                    344 ;	src/usb.c:95: case 0x24:
      0001C9 80 29            [24]  345 	sjmp	00105$
      0001CB                        346 00103$:
                                    347 ;	src/usb.c:96: handle_radio_request(out1buf[0], &out1buf[1]);
      0001CB 90 C6 40         [24]  348 	mov	dptr,#_out1buf
      0001CE E0               [24]  349 	movx	a,@dptr
      0001CF FF               [12]  350 	mov	r7,a
      0001D0 90 80 34         [24]  351 	mov	dptr,#_handle_radio_request_PARM_2
      0001D3 74 41            [12]  352 	mov	a,#(_out1buf + 0x0001)
      0001D5 F0               [24]  353 	movx	@dptr,a
      0001D6 74 C6            [12]  354 	mov	a,#((_out1buf + 0x0001) >> 8)
      0001D8 A3               [24]  355 	inc	dptr
      0001D9 F0               [24]  356 	movx	@dptr,a
      0001DA E4               [12]  357 	clr	a
      0001DB A3               [24]  358 	inc	dptr
      0001DC F0               [24]  359 	movx	@dptr,a
      0001DD 8F 82            [24]  360 	mov	dpl,r7
      0001DF 75 D0 00         [24]  361 	mov	psw,#0x00
      0001E2 12 07 E4         [24]  362 	lcall	_handle_radio_request
      0001E5 75 D0 08         [24]  363 	mov	psw,#0x08
                                    364 ;	src/usb.c:97: out_irq = 0x02;
      0001E8 90 C7 AA         [24]  365 	mov	dptr,#0xC7AA
      0001EB 74 02            [12]  366 	mov	a,#0x02
      0001ED F0               [24]  367 	movx	@dptr,a
                                    368 ;	src/usb.c:98: out1bc = 0xFF;
      0001EE 90 C7 C7         [24]  369 	mov	dptr,#0xC7C7
      0001F1 74 FF            [12]  370 	mov	a,#0xFF
      0001F3 F0               [24]  371 	movx	@dptr,a
                                    372 ;	src/usb.c:100: }
      0001F4                        373 00105$:
      0001F4 D0 D0            [24]  374 	pop	psw
      0001F6 D0 00            [24]  375 	pop	(0+0)
      0001F8 D0 01            [24]  376 	pop	(0+1)
      0001FA D0 02            [24]  377 	pop	(0+2)
      0001FC D0 03            [24]  378 	pop	(0+3)
      0001FE D0 04            [24]  379 	pop	(0+4)
      000200 D0 05            [24]  380 	pop	(0+5)
      000202 D0 06            [24]  381 	pop	(0+6)
      000204 D0 07            [24]  382 	pop	(0+7)
      000206 D0 83            [24]  383 	pop	dph
      000208 D0 82            [24]  384 	pop	dpl
      00020A D0 F0            [24]  385 	pop	b
      00020C D0 E0            [24]  386 	pop	acc
      00020E D0 21            [24]  387 	pop	bits
      000210 32               [24]  388 	reti
                                    389 ;------------------------------------------------------------
                                    390 ;Allocation info for local variables in function 'write_device_string'
                                    391 ;------------------------------------------------------------
                                    392 ;sloc0                     Allocated with name '_write_device_string_sloc0_1_0'
                                    393 ;string                    Allocated with name '_write_device_string_string_1_66'
                                    394 ;x                         Allocated with name '_write_device_string_x_1_67'
                                    395 ;length                    Allocated with name '_write_device_string_length_1_67'
                                    396 ;------------------------------------------------------------
                                    397 ;	src/usb.c:104: void write_device_string(const char * string)
                                    398 ;	-----------------------------------------
                                    399 ;	 function write_device_string
                                    400 ;	-----------------------------------------
      000211                        401 _write_device_string:
                           000007   402 	ar7 = 0x07
                           000006   403 	ar6 = 0x06
                           000005   404 	ar5 = 0x05
                           000004   405 	ar4 = 0x04
                           000003   406 	ar3 = 0x03
                           000002   407 	ar2 = 0x02
                           000001   408 	ar1 = 0x01
                           000000   409 	ar0 = 0x00
      000211 AF F0            [24]  410 	mov	r7,b
      000213 AE 83            [24]  411 	mov	r6,dph
      000215 E5 82            [12]  412 	mov	a,dpl
      000217 90 80 08         [24]  413 	mov	dptr,#_write_device_string_string_1_66
      00021A F0               [24]  414 	movx	@dptr,a
      00021B EE               [12]  415 	mov	a,r6
      00021C A3               [24]  416 	inc	dptr
      00021D F0               [24]  417 	movx	@dptr,a
      00021E EF               [12]  418 	mov	a,r7
      00021F A3               [24]  419 	inc	dptr
      000220 F0               [24]  420 	movx	@dptr,a
                                    421 ;	src/usb.c:107: int length = strlen(string);
      000221 90 80 08         [24]  422 	mov	dptr,#_write_device_string_string_1_66
      000224 E0               [24]  423 	movx	a,@dptr
      000225 FD               [12]  424 	mov	r5,a
      000226 A3               [24]  425 	inc	dptr
      000227 E0               [24]  426 	movx	a,@dptr
      000228 FE               [12]  427 	mov	r6,a
      000229 A3               [24]  428 	inc	dptr
      00022A E0               [24]  429 	movx	a,@dptr
      00022B FF               [12]  430 	mov	r7,a
      00022C 8D 82            [24]  431 	mov	dpl,r5
      00022E 8E 83            [24]  432 	mov	dph,r6
      000230 8F F0            [24]  433 	mov	b,r7
      000232 12 0F 4C         [24]  434 	lcall	_strlen
      000235 AE 82            [24]  435 	mov	r6,dpl
      000237 AF 83            [24]  436 	mov	r7,dph
                                    437 ;	src/usb.c:108: memset(in0buf+2, 0, 64);
      000239 90 80 62         [24]  438 	mov	dptr,#_memset_PARM_2
      00023C E4               [12]  439 	clr	a
      00023D F0               [24]  440 	movx	@dptr,a
      00023E 90 80 63         [24]  441 	mov	dptr,#_memset_PARM_3
      000241 74 40            [12]  442 	mov	a,#0x40
      000243 F0               [24]  443 	movx	@dptr,a
      000244 E4               [12]  444 	clr	a
      000245 A3               [24]  445 	inc	dptr
      000246 F0               [24]  446 	movx	@dptr,a
      000247 90 C7 02         [24]  447 	mov	dptr,#(_in0buf + 0x0002)
      00024A 75 F0 00         [24]  448 	mov	b,#0x00
      00024D C0 07            [24]  449 	push	ar7
      00024F C0 06            [24]  450 	push	ar6
      000251 12 0E 95         [24]  451 	lcall	_memset
      000254 D0 06            [24]  452 	pop	ar6
      000256 D0 07            [24]  453 	pop	ar7
                                    454 ;	src/usb.c:109: in0buf[0] = 2+length*2;
      000258 8E 04            [24]  455 	mov	ar4,r6
      00025A 8F 05            [24]  456 	mov	ar5,r7
      00025C EC               [12]  457 	mov	a,r4
      00025D 2C               [12]  458 	add	a,r4
      00025E FC               [12]  459 	mov	r4,a
      00025F 0C               [12]  460 	inc	r4
      000260 0C               [12]  461 	inc	r4
      000261 90 C7 00         [24]  462 	mov	dptr,#_in0buf
      000264 EC               [12]  463 	mov	a,r4
      000265 F0               [24]  464 	movx	@dptr,a
                                    465 ;	src/usb.c:110: in0buf[1] = STRING_DESCRIPTOR;
      000266 90 C7 01         [24]  466 	mov	dptr,#(_in0buf + 0x0001)
      000269 74 03            [12]  467 	mov	a,#0x03
      00026B F0               [24]  468 	movx	@dptr,a
                                    469 ;	src/usb.c:111: for(x = 0; x < length; x++) in0buf[2+x*2] = string[x];
      00026C 90 80 08         [24]  470 	mov	dptr,#_write_device_string_string_1_66
      00026F E0               [24]  471 	movx	a,@dptr
      000270 FB               [12]  472 	mov	r3,a
      000271 A3               [24]  473 	inc	dptr
      000272 E0               [24]  474 	movx	a,@dptr
      000273 FC               [12]  475 	mov	r4,a
      000274 A3               [24]  476 	inc	dptr
      000275 E0               [24]  477 	movx	a,@dptr
      000276 FD               [12]  478 	mov	r5,a
      000277 79 00            [12]  479 	mov	r1,#0x00
      000279 7A 00            [12]  480 	mov	r2,#0x00
      00027B                        481 00103$:
      00027B C3               [12]  482 	clr	c
      00027C E9               [12]  483 	mov	a,r1
      00027D 9E               [12]  484 	subb	a,r6
      00027E EA               [12]  485 	mov	a,r2
      00027F 64 80            [12]  486 	xrl	a,#0x80
      000281 8F F0            [24]  487 	mov	b,r7
      000283 63 F0 80         [24]  488 	xrl	b,#0x80
      000286 95 F0            [12]  489 	subb	a,b
      000288 50 37            [24]  490 	jnc	00101$
      00028A C0 06            [24]  491 	push	ar6
      00028C C0 07            [24]  492 	push	ar7
      00028E 89 00            [24]  493 	mov	ar0,r1
      000290 E8               [12]  494 	mov	a,r0
      000291 28               [12]  495 	add	a,r0
      000292 24 02            [12]  496 	add	a,#0x02
      000294 24 00            [12]  497 	add	a,#_in0buf
      000296 F5 10            [12]  498 	mov	_write_device_string_sloc0_1_0,a
      000298 E4               [12]  499 	clr	a
      000299 34 C7            [12]  500 	addc	a,#(_in0buf >> 8)
      00029B F5 11            [12]  501 	mov	(_write_device_string_sloc0_1_0 + 1),a
      00029D E9               [12]  502 	mov	a,r1
      00029E 2B               [12]  503 	add	a,r3
      00029F F8               [12]  504 	mov	r0,a
      0002A0 EA               [12]  505 	mov	a,r2
      0002A1 3C               [12]  506 	addc	a,r4
      0002A2 FE               [12]  507 	mov	r6,a
      0002A3 8D 07            [24]  508 	mov	ar7,r5
      0002A5 88 82            [24]  509 	mov	dpl,r0
      0002A7 8E 83            [24]  510 	mov	dph,r6
      0002A9 8F F0            [24]  511 	mov	b,r7
      0002AB 12 0F 64         [24]  512 	lcall	__gptrget
      0002AE F8               [12]  513 	mov	r0,a
      0002AF 85 10 82         [24]  514 	mov	dpl,_write_device_string_sloc0_1_0
      0002B2 85 11 83         [24]  515 	mov	dph,(_write_device_string_sloc0_1_0 + 1)
      0002B5 F0               [24]  516 	movx	@dptr,a
      0002B6 09               [12]  517 	inc	r1
      0002B7 B9 00 01         [24]  518 	cjne	r1,#0x00,00115$
      0002BA 0A               [12]  519 	inc	r2
      0002BB                        520 00115$:
      0002BB D0 07            [24]  521 	pop	ar7
      0002BD D0 06            [24]  522 	pop	ar6
      0002BF 80 BA            [24]  523 	sjmp	00103$
      0002C1                        524 00101$:
                                    525 ;	src/usb.c:112: in0bc = in0buf[0];
      0002C1 90 C7 00         [24]  526 	mov	dptr,#_in0buf
      0002C4 E0               [24]  527 	movx	a,@dptr
      0002C5 90 C7 B5         [24]  528 	mov	dptr,#0xC7B5
      0002C8 F0               [24]  529 	movx	@dptr,a
      0002C9 22               [24]  530 	ret
                                    531 ;------------------------------------------------------------
                                    532 ;Allocation info for local variables in function 'write_descriptor'
                                    533 ;------------------------------------------------------------
                                    534 ;	src/usb.c:116: bool write_descriptor()
                                    535 ;	-----------------------------------------
                                    536 ;	 function write_descriptor
                                    537 ;	-----------------------------------------
      0002CA                        538 _write_descriptor:
                                    539 ;	src/usb.c:118: switch(request->wValue >> 8)
      0002CA 90 80 74         [24]  540 	mov	dptr,#_request
      0002CD E0               [24]  541 	movx	a,@dptr
      0002CE FE               [12]  542 	mov	r6,a
      0002CF A3               [24]  543 	inc	dptr
      0002D0 E0               [24]  544 	movx	a,@dptr
      0002D1 FF               [12]  545 	mov	r7,a
      0002D2 8E 82            [24]  546 	mov	dpl,r6
      0002D4 8F 83            [24]  547 	mov	dph,r7
      0002D6 A3               [24]  548 	inc	dptr
      0002D7 A3               [24]  549 	inc	dptr
      0002D8 E0               [24]  550 	movx	a,@dptr
      0002D9 A3               [24]  551 	inc	dptr
      0002DA E0               [24]  552 	movx	a,@dptr
      0002DB FC               [12]  553 	mov	r4,a
      0002DC 7D 00            [12]  554 	mov	r5,#0x00
      0002DE BC 01 05         [24]  555 	cjne	r4,#0x01,00116$
      0002E1 BD 00 02         [24]  556 	cjne	r5,#0x00,00116$
      0002E4 80 14            [24]  557 	sjmp	00101$
      0002E6                        558 00116$:
      0002E6 BC 02 05         [24]  559 	cjne	r4,#0x02,00117$
      0002E9 BD 00 02         [24]  560 	cjne	r5,#0x00,00117$
      0002EC 80 55            [24]  561 	sjmp	00102$
      0002EE                        562 00117$:
      0002EE BC 03 06         [24]  563 	cjne	r4,#0x03,00118$
      0002F1 BD 00 03         [24]  564 	cjne	r5,#0x00,00118$
      0002F4 02 03 8C         [24]  565 	ljmp	00103$
      0002F7                        566 00118$:
      0002F7 02 03 B0         [24]  567 	ljmp	00104$
                                    568 ;	src/usb.c:121: case DEVICE_DESCRIPTOR:
      0002FA                        569 00101$:
                                    570 ;	src/usb.c:122: memcpy(in0buf, &device_descriptor, request->wLength);
      0002FA 74 06            [12]  571 	mov	a,#0x06
      0002FC 2E               [12]  572 	add	a,r6
      0002FD F5 82            [12]  573 	mov	dpl,a
      0002FF E4               [12]  574 	clr	a
      000300 3F               [12]  575 	addc	a,r7
      000301 F5 83            [12]  576 	mov	dph,a
      000303 E0               [24]  577 	movx	a,@dptr
      000304 FC               [12]  578 	mov	r4,a
      000305 A3               [24]  579 	inc	dptr
      000306 E0               [24]  580 	movx	a,@dptr
      000307 FD               [12]  581 	mov	r5,a
      000308 90 80 65         [24]  582 	mov	dptr,#_memcpy_PARM_2
      00030B 74 84            [12]  583 	mov	a,#_device_descriptor
      00030D F0               [24]  584 	movx	@dptr,a
      00030E 74 0F            [12]  585 	mov	a,#(_device_descriptor >> 8)
      000310 A3               [24]  586 	inc	dptr
      000311 F0               [24]  587 	movx	@dptr,a
      000312 74 80            [12]  588 	mov	a,#0x80
      000314 A3               [24]  589 	inc	dptr
      000315 F0               [24]  590 	movx	@dptr,a
      000316 90 80 68         [24]  591 	mov	dptr,#_memcpy_PARM_3
      000319 EC               [12]  592 	mov	a,r4
      00031A F0               [24]  593 	movx	@dptr,a
      00031B ED               [12]  594 	mov	a,r5
      00031C A3               [24]  595 	inc	dptr
      00031D F0               [24]  596 	movx	@dptr,a
      00031E 90 C7 00         [24]  597 	mov	dptr,#_in0buf
      000321 75 F0 00         [24]  598 	mov	b,#0x00
      000324 12 0E BD         [24]  599 	lcall	_memcpy
                                    600 ;	src/usb.c:123: in0bc = request->wLength;  
      000327 90 80 74         [24]  601 	mov	dptr,#_request
      00032A E0               [24]  602 	movx	a,@dptr
      00032B FC               [12]  603 	mov	r4,a
      00032C A3               [24]  604 	inc	dptr
      00032D E0               [24]  605 	movx	a,@dptr
      00032E FD               [12]  606 	mov	r5,a
      00032F 74 06            [12]  607 	mov	a,#0x06
      000331 2C               [12]  608 	add	a,r4
      000332 F5 82            [12]  609 	mov	dpl,a
      000334 E4               [12]  610 	clr	a
      000335 3D               [12]  611 	addc	a,r5
      000336 F5 83            [12]  612 	mov	dph,a
      000338 E0               [24]  613 	movx	a,@dptr
      000339 FC               [12]  614 	mov	r4,a
      00033A A3               [24]  615 	inc	dptr
      00033B E0               [24]  616 	movx	a,@dptr
      00033C 90 C7 B5         [24]  617 	mov	dptr,#0xC7B5
      00033F EC               [12]  618 	mov	a,r4
      000340 F0               [24]  619 	movx	@dptr,a
                                    620 ;	src/usb.c:124: return true;
      000341 D3               [12]  621 	setb	c
                                    622 ;	src/usb.c:127: case CONFIGURATION_DESCRIPTOR:
      000342 22               [24]  623 	ret
      000343                        624 00102$:
                                    625 ;	src/usb.c:128: memcpy(in0buf, &configuration_descriptor, request->wLength);
      000343 74 06            [12]  626 	mov	a,#0x06
      000345 2E               [12]  627 	add	a,r6
      000346 F5 82            [12]  628 	mov	dpl,a
      000348 E4               [12]  629 	clr	a
      000349 3F               [12]  630 	addc	a,r7
      00034A F5 83            [12]  631 	mov	dph,a
      00034C E0               [24]  632 	movx	a,@dptr
      00034D FE               [12]  633 	mov	r6,a
      00034E A3               [24]  634 	inc	dptr
      00034F E0               [24]  635 	movx	a,@dptr
      000350 FF               [12]  636 	mov	r7,a
      000351 90 80 65         [24]  637 	mov	dptr,#_memcpy_PARM_2
      000354 74 96            [12]  638 	mov	a,#_configuration_descriptor
      000356 F0               [24]  639 	movx	@dptr,a
      000357 74 0F            [12]  640 	mov	a,#(_configuration_descriptor >> 8)
      000359 A3               [24]  641 	inc	dptr
      00035A F0               [24]  642 	movx	@dptr,a
      00035B 74 80            [12]  643 	mov	a,#0x80
      00035D A3               [24]  644 	inc	dptr
      00035E F0               [24]  645 	movx	@dptr,a
      00035F 90 80 68         [24]  646 	mov	dptr,#_memcpy_PARM_3
      000362 EE               [12]  647 	mov	a,r6
      000363 F0               [24]  648 	movx	@dptr,a
      000364 EF               [12]  649 	mov	a,r7
      000365 A3               [24]  650 	inc	dptr
      000366 F0               [24]  651 	movx	@dptr,a
      000367 90 C7 00         [24]  652 	mov	dptr,#_in0buf
      00036A 75 F0 00         [24]  653 	mov	b,#0x00
      00036D 12 0E BD         [24]  654 	lcall	_memcpy
                                    655 ;	src/usb.c:129: in0bc = request->wLength;        
      000370 90 80 74         [24]  656 	mov	dptr,#_request
      000373 E0               [24]  657 	movx	a,@dptr
      000374 FE               [12]  658 	mov	r6,a
      000375 A3               [24]  659 	inc	dptr
      000376 E0               [24]  660 	movx	a,@dptr
      000377 FF               [12]  661 	mov	r7,a
      000378 74 06            [12]  662 	mov	a,#0x06
      00037A 2E               [12]  663 	add	a,r6
      00037B F5 82            [12]  664 	mov	dpl,a
      00037D E4               [12]  665 	clr	a
      00037E 3F               [12]  666 	addc	a,r7
      00037F F5 83            [12]  667 	mov	dph,a
      000381 E0               [24]  668 	movx	a,@dptr
      000382 FE               [12]  669 	mov	r6,a
      000383 A3               [24]  670 	inc	dptr
      000384 E0               [24]  671 	movx	a,@dptr
      000385 90 C7 B5         [24]  672 	mov	dptr,#0xC7B5
      000388 EE               [12]  673 	mov	a,r6
      000389 F0               [24]  674 	movx	@dptr,a
                                    675 ;	src/usb.c:130: return true;
      00038A D3               [12]  676 	setb	c
                                    677 ;	src/usb.c:134: case STRING_DESCRIPTOR:
      00038B 22               [24]  678 	ret
      00038C                        679 00103$:
                                    680 ;	src/usb.c:135: write_device_string(device_strings[setupbuf[2]]);
      00038C 90 C7 EA         [24]  681 	mov	dptr,#(_setupbuf + 0x0002)
      00038F E0               [24]  682 	movx	a,@dptr
      000390 75 F0 02         [24]  683 	mov	b,#0x02
      000393 A4               [48]  684 	mul	ab
      000394 24 76            [12]  685 	add	a,#_device_strings
      000396 F5 82            [12]  686 	mov	dpl,a
      000398 74 80            [12]  687 	mov	a,#(_device_strings >> 8)
      00039A 35 F0            [12]  688 	addc	a,b
      00039C F5 83            [12]  689 	mov	dph,a
      00039E E0               [24]  690 	movx	a,@dptr
      00039F FE               [12]  691 	mov	r6,a
      0003A0 A3               [24]  692 	inc	dptr
      0003A1 E0               [24]  693 	movx	a,@dptr
      0003A2 FF               [12]  694 	mov	r7,a
      0003A3 7D 80            [12]  695 	mov	r5,#0x80
      0003A5 8E 82            [24]  696 	mov	dpl,r6
      0003A7 8F 83            [24]  697 	mov	dph,r7
      0003A9 8D F0            [24]  698 	mov	b,r5
      0003AB 12 02 11         [24]  699 	lcall	_write_device_string
                                    700 ;	src/usb.c:136: return true;   
      0003AE D3               [12]  701 	setb	c
                                    702 ;	src/usb.c:137: }  
      0003AF 22               [24]  703 	ret
      0003B0                        704 00104$:
                                    705 ;	src/usb.c:140: return false;
      0003B0 C3               [12]  706 	clr	c
      0003B1 22               [24]  707 	ret
                                    708 ;------------------------------------------------------------
                                    709 ;Allocation info for local variables in function 'handle_setup_request'
                                    710 ;------------------------------------------------------------
                                    711 ;	src/usb.c:144: void handle_setup_request()
                                    712 ;	-----------------------------------------
                                    713 ;	 function handle_setup_request
                                    714 ;	-----------------------------------------
      0003B2                        715 _handle_setup_request:
                                    716 ;	src/usb.c:146: bool handled = false;
      0003B2 C2 02            [12]  717 	clr	_handle_setup_request_handled_1_70
                                    718 ;	src/usb.c:147: switch(request->bRequest)
      0003B4 90 80 74         [24]  719 	mov	dptr,#_request
      0003B7 E0               [24]  720 	movx	a,@dptr
      0003B8 FE               [12]  721 	mov	r6,a
      0003B9 A3               [24]  722 	inc	dptr
      0003BA E0               [24]  723 	movx	a,@dptr
      0003BB FF               [12]  724 	mov	r7,a
      0003BC 8E 82            [24]  725 	mov	dpl,r6
      0003BE 8F 83            [24]  726 	mov	dph,r7
      0003C0 A3               [24]  727 	inc	dptr
      0003C1 E0               [24]  728 	movx	a,@dptr
      0003C2 FD               [12]  729 	mov	r5,a
      0003C3 60 52            [24]  730 	jz	00110$
      0003C5 BD 05 02         [24]  731 	cjne	r5,#0x05,00154$
      0003C8 80 1E            [24]  732 	sjmp	00104$
      0003CA                        733 00154$:
      0003CA BD 06 02         [24]  734 	cjne	r5,#0x06,00155$
      0003CD 80 0D            [24]  735 	sjmp	00101$
      0003CF                        736 00155$:
      0003CF BD 08 02         [24]  737 	cjne	r5,#0x08,00156$
      0003D2 80 30            [24]  738 	sjmp	00109$
      0003D4                        739 00156$:
      0003D4 BD 09 02         [24]  740 	cjne	r5,#0x09,00157$
      0003D7 80 13            [24]  741 	sjmp	00105$
      0003D9                        742 00157$:
      0003D9 02 04 52         [24]  743 	ljmp	00117$
                                    744 ;	src/usb.c:150: case GET_DESCRIPTOR:
      0003DC                        745 00101$:
                                    746 ;	src/usb.c:151: if(write_descriptor()) handled = true;
      0003DC 12 02 CA         [24]  747 	lcall	_write_descriptor
      0003DF 40 03            [24]  748 	jc	00158$
      0003E1 02 04 52         [24]  749 	ljmp	00117$
      0003E4                        750 00158$:
      0003E4 D2 02            [12]  751 	setb	_handle_setup_request_handled_1_70
                                    752 ;	src/usb.c:152: break;
                                    753 ;	src/usb.c:155: case SET_ADDRESS:
      0003E6 80 6A            [24]  754 	sjmp	00117$
      0003E8                        755 00104$:
                                    756 ;	src/usb.c:156: handled = true;
      0003E8 D2 02            [12]  757 	setb	_handle_setup_request_handled_1_70
                                    758 ;	src/usb.c:157: break;
                                    759 ;	src/usb.c:160: case SET_CONFIGURATION:   
      0003EA 80 66            [24]  760 	sjmp	00117$
      0003EC                        761 00105$:
                                    762 ;	src/usb.c:161: if (request->wValue == 0) configured = false; // Not configured, drop back to powered state
      0003EC 8E 82            [24]  763 	mov	dpl,r6
      0003EE 8F 83            [24]  764 	mov	dph,r7
      0003F0 A3               [24]  765 	inc	dptr
      0003F1 A3               [24]  766 	inc	dptr
      0003F2 E0               [24]  767 	movx	a,@dptr
      0003F3 FC               [12]  768 	mov	r4,a
      0003F4 A3               [24]  769 	inc	dptr
      0003F5 E0               [24]  770 	movx	a,@dptr
      0003F6 FD               [12]  771 	mov	r5,a
      0003F7 4C               [12]  772 	orl	a,r4
      0003F8 70 04            [24]  773 	jnz	00107$
      0003FA C2 01            [12]  774 	clr	_configured
      0003FC 80 02            [24]  775 	sjmp	00108$
      0003FE                        776 00107$:
                                    777 ;	src/usb.c:162: else configured = true;                       // Configured
      0003FE D2 01            [12]  778 	setb	_configured
      000400                        779 00108$:
                                    780 ;	src/usb.c:163: handled = true;    
      000400 D2 02            [12]  781 	setb	_handle_setup_request_handled_1_70
                                    782 ;	src/usb.c:164: break;
                                    783 ;	src/usb.c:167: case GET_CONFIGURATION:
      000402 80 4E            [24]  784 	sjmp	00117$
      000404                        785 00109$:
                                    786 ;	src/usb.c:168: in0buf[0] = configured;
      000404 A2 01            [12]  787 	mov	c,_configured
      000406 E4               [12]  788 	clr	a
      000407 33               [12]  789 	rlc	a
      000408 FD               [12]  790 	mov	r5,a
      000409 90 C7 00         [24]  791 	mov	dptr,#_in0buf
      00040C F0               [24]  792 	movx	@dptr,a
                                    793 ;	src/usb.c:169: in0bc = 1;
      00040D 90 C7 B5         [24]  794 	mov	dptr,#0xC7B5
      000410 74 01            [12]  795 	mov	a,#0x01
      000412 F0               [24]  796 	movx	@dptr,a
                                    797 ;	src/usb.c:170: handled = true;
      000413 D2 02            [12]  798 	setb	_handle_setup_request_handled_1_70
                                    799 ;	src/usb.c:171: break;
                                    800 ;	src/usb.c:174: case GET_STATUS:
      000415 80 3B            [24]  801 	sjmp	00117$
      000417                        802 00110$:
                                    803 ;	src/usb.c:177: if (request->bmRequestType == 0x82)
      000417 8E 82            [24]  804 	mov	dpl,r6
      000419 8F 83            [24]  805 	mov	dph,r7
      00041B E0               [24]  806 	movx	a,@dptr
      00041C FE               [12]  807 	mov	r6,a
      00041D BE 82 21         [24]  808 	cjne	r6,#0x82,00115$
                                    809 ;	src/usb.c:179: if ((setupbuf[4] & 0x80) == 0x80) in0buf[0] = in1cs;
      000420 90 C7 EC         [24]  810 	mov	dptr,#(_setupbuf + 0x0004)
      000423 E0               [24]  811 	movx	a,@dptr
      000424 FF               [12]  812 	mov	r7,a
      000425 53 07 80         [24]  813 	anl	ar7,#0x80
      000428 BF 80 0B         [24]  814 	cjne	r7,#0x80,00112$
      00042B 90 C7 B6         [24]  815 	mov	dptr,#0xC7B6
      00042E E0               [24]  816 	movx	a,@dptr
      00042F FF               [12]  817 	mov	r7,a
      000430 90 C7 00         [24]  818 	mov	dptr,#_in0buf
      000433 F0               [24]  819 	movx	@dptr,a
      000434 80 14            [24]  820 	sjmp	00116$
      000436                        821 00112$:
                                    822 ;	src/usb.c:180: else in0buf[0] = out1cs; 
      000436 90 C7 C6         [24]  823 	mov	dptr,#0xC7C6
      000439 E0               [24]  824 	movx	a,@dptr
      00043A FF               [12]  825 	mov	r7,a
      00043B 90 C7 00         [24]  826 	mov	dptr,#_in0buf
      00043E F0               [24]  827 	movx	@dptr,a
      00043F 80 09            [24]  828 	sjmp	00116$
      000441                        829 00115$:
                                    830 ;	src/usb.c:187: in0buf[0] = 0;
      000441 90 C7 00         [24]  831 	mov	dptr,#_in0buf
      000444 E4               [12]  832 	clr	a
      000445 F0               [24]  833 	movx	@dptr,a
                                    834 ;	src/usb.c:188: in0buf[1] = 0;
      000446 90 C7 01         [24]  835 	mov	dptr,#(_in0buf + 0x0001)
      000449 F0               [24]  836 	movx	@dptr,a
      00044A                        837 00116$:
                                    838 ;	src/usb.c:191: in0bc = 2;
      00044A 90 C7 B5         [24]  839 	mov	dptr,#0xC7B5
      00044D 74 02            [12]  840 	mov	a,#0x02
      00044F F0               [24]  841 	movx	@dptr,a
                                    842 ;	src/usb.c:192: handled = true;
      000450 D2 02            [12]  843 	setb	_handle_setup_request_handled_1_70
                                    844 ;	src/usb.c:194: }
      000452                        845 00117$:
                                    846 ;	src/usb.c:197: if(handled) ep0cs = 0x02; // hsnak
      000452 30 02 07         [24]  847 	jnb	_handle_setup_request_handled_1_70,00119$
      000455 90 C7 B4         [24]  848 	mov	dptr,#0xC7B4
      000458 74 02            [12]  849 	mov	a,#0x02
      00045A F0               [24]  850 	movx	@dptr,a
      00045B 22               [24]  851 	ret
      00045C                        852 00119$:
                                    853 ;	src/usb.c:198: else ep0cs = 0x01; // ep0stall
      00045C 90 C7 B4         [24]  854 	mov	dptr,#0xC7B4
      00045F 74 01            [12]  855 	mov	a,#0x01
      000461 F0               [24]  856 	movx	@dptr,a
      000462 22               [24]  857 	ret
                                    858 	.area CSEG    (CODE)
                                    859 	.area CONST   (CODE)
                                    860 	.area XINIT   (CODE)
      000FD7                        861 __xinit__bootloader:
      000FD7 00 78                  862 	.byte #0x00,#0x78
      000FD9                        863 __xinit__request:
      000FD9 E8 C7                  864 	.byte _setupbuf, (_setupbuf >> 8)
                                    865 	.area CABS    (ABS,CODE)
