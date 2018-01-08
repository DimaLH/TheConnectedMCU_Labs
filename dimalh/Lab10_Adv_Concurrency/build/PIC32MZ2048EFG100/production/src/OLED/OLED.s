	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:

	.comm	rgbOledBmp,512,4

	.comm	xMutexOLED,4,4

	.comm	xcoOledCur,4,4

	.comm	ycoOledCur,4,4

	.comm	pbOledCur,4,4

	.comm	bnOledCur,4,4

	.comm	clrOledCur,1,1

	.comm	pbOledPatCur,4,4

	.comm	fOledCharUpdate,4,4

	.comm	dxcoOledFontCur,4,4

	.comm	dycoOledFontCur,4,4

	.comm	pbOledFontCur,4,4

	.comm	pbOledFontUser,4,4
	.align	2
	.globl	OledHostInit
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/code/freertos/lab10_adv_concurrency/src/oled/oled.c"
	.loc 1 132 0
	.set	nomips16
	.set	nomicromips
	.ent	OledHostInit
	.type	OledHostInit, @function
OledHostInit:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI0 = .
	sw	$fp,4($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	.loc 1 136 0
	lui	$2,%hi(SPI2CON)
	sw	$0,%lo(SPI2CON)($2)
	.loc 1 137 0
	lui	$2,%hi(SPI2BRG)
	li	$3,15			# 0xf
	sw	$3,%lo(SPI2BRG)($2)
	.loc 1 138 0
	lui	$3,%hi(SPI2STAT)
	lw	$2,%lo(SPI2STAT)($3)
	ins	$2,$0,6,1
	sw	$2,%lo(SPI2STAT)($3)
	.loc 1 139 0
	lui	$3,%hi(SPI2CON)
	lw	$2,%lo(SPI2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,6,1
	sw	$2,%lo(SPI2CON)($3)
	.loc 1 140 0
	lui	$3,%hi(SPI2CON)
	lw	$2,%lo(SPI2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,5,1
	sw	$2,%lo(SPI2CON)($3)
	.loc 1 141 0
	lui	$3,%hi(SPI2CON)
	lw	$2,%lo(SPI2CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sw	$2,%lo(SPI2CON)($3)
	.loc 1 144 0
	lui	$2,%hi(LATDSET)
	li	$3,36864			# 0x9000
	sw	$3,%lo(LATDSET)($2)
	.loc 1 145 0
	lui	$2,%hi(LATDSET)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDSET)($2)
	.loc 1 148 0
	lui	$2,%hi(TRISDCLR)
	li	$3,36864			# 0x9000
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 149 0
	lui	$2,%hi(TRISDCLR)
	li	$3,16384			# 0x4000
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 152 0
	lui	$2,%hi(TRISDCLR)
	li	$3,2048			# 0x800
	sw	$3,%lo(TRISDCLR)($2)
	.loc 1 157 0
	lui	$2,%hi(LATGSET)
	li	$3,512			# 0x200
	sw	$3,%lo(LATGSET)($2)
	.loc 1 160 0
	lui	$2,%hi(TRISGCLR)
	li	$3,512			# 0x200
	sw	$3,%lo(TRISGCLR)($2)
	.loc 1 161 0
	lui	$2,%hi(ANSELGCLR)
	li	$3,512			# 0x200
	sw	$3,%lo(ANSELGCLR)($2)
	.loc 1 164 0
	lui	$2,%hi(RPD11R)
	li	$3,6			# 0x6
	sw	$3,%lo(RPD11R)($2)
	.loc 1 165 0
	move	$sp,$fp
.LCFI3 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledHostInit
.LFE4:
	.size	OledHostInit, .-OledHostInit
	.align	2
	.globl	OledDspInit
.LFB5 = .
	.loc 1 184 0
	.set	nomips16
	.set	nomicromips
	.ent	OledDspInit
	.type	OledDspInit, @function
OledDspInit:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI4 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	.loc 1 187 0
	lui	$2,%hi(LATDCLR)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 190 0
	lui	$2,%hi(LATDCLR)
	li	$3,4096			# 0x1000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 191 0
	li	$4,1			# 0x1
	jal	DelayMs
	nop

	.loc 1 194 0
	li	$4,174			# 0xae
	jal	Spi2PutByte
	nop

	.loc 1 197 0
	lui	$2,%hi(PORTGCLR)
	li	$3,512			# 0x200
	sw	$3,%lo(PORTGCLR)($2)
	.loc 1 198 0
	li	$4,1			# 0x1
	jal	DelayMs
	nop

	.loc 1 199 0
	lui	$2,%hi(PORTGSET)
	li	$3,512			# 0x200
	sw	$3,%lo(PORTGSET)($2)
	.loc 1 202 0
	li	$4,141			# 0x8d
	jal	Spi2PutByte
	nop

	.loc 1 203 0
	li	$4,20			# 0x14
	jal	Spi2PutByte
	nop

	.loc 1 204 0
	li	$4,217			# 0xd9
	jal	Spi2PutByte
	nop

	.loc 1 205 0
	li	$4,241			# 0xf1
	jal	Spi2PutByte
	nop

	.loc 1 208 0
	lui	$2,%hi(LATDCLR)
	li	$3,32768			# 0x8000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 209 0
	li	$4,100			# 0x64
	jal	DelayMs
	nop

	.loc 1 214 0
	li	$4,161			# 0xa1
	jal	Spi2PutByte
	nop

	.loc 1 215 0
	li	$4,200			# 0xc8
	jal	Spi2PutByte
	nop

	.loc 1 219 0
	li	$4,218			# 0xda
	jal	Spi2PutByte
	nop

	.loc 1 220 0
	li	$4,32			# 0x20
	jal	Spi2PutByte
	nop

	.loc 1 223 0
	li	$4,175			# 0xaf
	jal	Spi2PutByte
	nop

	.loc 1 224 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDspInit
.LFE5:
	.size	OledDspInit, .-OledDspInit
	.align	2
	.globl	OledDvrInit
.LFB6 = .
	.loc 1 245 0
	.set	nomips16
	.set	nomicromips
	.ent	OledDvrInit
	.type	OledDvrInit, @function
OledDvrInit:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI8 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	.loc 1 250 0
	li	$2,8			# 0x8
	sw	$2,%gp_rel(dxcoOledFontCur)($28)
	.loc 1 251 0
	li	$2,8			# 0x8
	sw	$2,%gp_rel(dycoOledFontCur)($28)
	.loc 1 252 0
	lui	$2,%hi(rgbOledFont0)
	addiu	$2,$2,%lo(rgbOledFont0)
	sw	$2,%gp_rel(pbOledFontCur)($28)
	.loc 1 253 0
	lui	$2,%hi(rgbOledFontUser)
	addiu	$2,$2,%lo(rgbOledFontUser)
	sw	$2,%gp_rel(pbOledFontUser)($28)
	.loc 1 255 0
	sw	$0,16($fp)
	j	.L4
	nop

.L5:
	.loc 1 256 0
	lui	$2,%hi(rgbOledFontUser)
	addiu	$3,$2,%lo(rgbOledFontUser)
	lw	$2,16($fp)
	addu	$2,$3,$2
	sb	$0,0($2)
	.loc 1 255 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L4:
	lw	$2,16($fp)
	slt	$2,$2,256
	bne	$2,$0,.L5
	nop

	.loc 1 259 0
	lw	$2,%gp_rel(dxcoOledFontCur)($28)
	li	$3,128			# 0x80
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$2
	sw	$2,%gp_rel(xchOledMax)($28)
	.loc 1 260 0
	lw	$2,%gp_rel(dycoOledFontCur)($28)
	li	$3,32			# 0x20
	div	$0,$3,$2
	teq	$2,$0,7
	mfhi	$2
	mflo	$2
	sw	$2,%gp_rel(ychOledMax)($28)
	.loc 1 264 0
	move	$4,$0
	move	$5,$0
	jal	OledSetCursor
	nop

	.loc 1 268 0
	li	$2,1			# 0x1
	sb	$2,%gp_rel(clrOledCur)($28)
	.loc 1 269 0
	lui	$2,%hi(rgbFillPat)
	addiu	$2,$2,%lo(rgbFillPat)
	sw	$2,%gp_rel(pbOledPatCur)($28)
	.loc 1 270 0
	move	$4,$0
	jal	OledSetDrawMode
	nop

	.loc 1 275 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(fOledCharUpdate)($28)
	.loc 1 277 0
	move	$sp,$fp
.LCFI11 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDvrInit
.LFE6:
	.size	OledDvrInit, .-OledDvrInit
	.align	2
	.globl	OledUpdate
.LFB7 = .
	.loc 1 296 0
	.set	nomips16
	.set	nomicromips
	.ent	OledUpdate
	.type	OledUpdate, @function
OledUpdate:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI12 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	.loc 1 300 0
	lui	$2,%hi(rgbOledBmp)
	addiu	$2,$2,%lo(rgbOledBmp)
	sw	$2,20($fp)
	.loc 1 301 0
	sw	$0,16($fp)
	j	.L7
	nop

.L8:
.LBB2 = .
	.loc 1 302 0
	lui	$2,%hi(LATDCLR)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDCLR)($2)
	.loc 1 306 0
	li	$4,34			# 0x22
	jal	Spi2PutByte
	nop

	.loc 1 307 0
	lw	$4,16($fp)
	jal	Spi2PutByte
	nop

	.loc 1 310 0
	move	$4,$0
	jal	Spi2PutByte
	nop

	.loc 1 311 0
	li	$4,16			# 0x10
	jal	Spi2PutByte
	nop

	.loc 1 312 0
	lui	$2,%hi(LATDSET)
	li	$3,16384			# 0x4000
	sw	$3,%lo(LATDSET)($2)
	.loc 1 316 0
	li	$4,128			# 0x80
	lw	$5,20($fp)
	jal	OledPutBuffer
	nop

	.loc 1 317 0
	lw	$2,20($fp)
	addiu	$2,$2,128
	sw	$2,20($fp)
.LBE2 = .
	.loc 1 301 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L7:
	lw	$2,16($fp)
	slt	$2,$2,4
	bne	$2,$0,.L8
	nop

	.loc 1 319 0
	move	$sp,$fp
.LCFI15 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledUpdate
.LFE7:
	.size	OledUpdate, .-OledUpdate
	.align	2
	.globl	OledHostTerm
.LFB8 = .
	.loc 1 339 0
	.set	nomips16
	.set	nomicromips
	.ent	OledHostTerm
	.type	OledHostTerm, @function
OledHostTerm:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI16 = .
	sw	$fp,4($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
	.loc 1 366 0
	move	$sp,$fp
.LCFI19 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledHostTerm
.LFE8:
	.size	OledHostTerm, .-OledHostTerm
	.align	2
	.globl	OledDevTerm
.LFB9 = .
	.loc 1 386 0
	.set	nomips16
	.set	nomicromips
	.ent	OledDevTerm
	.type	OledDevTerm, @function
OledDevTerm:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI20 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI21 = .
	move	$fp,$sp
.LCFI22 = .
	.loc 1 390 0
	li	$4,174			# 0xae
	jal	Spi2PutByte
	nop

	.loc 1 401 0
	move	$sp,$fp
.LCFI23 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledDevTerm
.LFE9:
	.size	OledDevTerm, .-OledDevTerm
	.align	2
	.globl	OledClear
.LFB10 = .
	.loc 1 403 0
	.set	nomips16
	.set	nomicromips
	.ent	OledClear
	.type	OledClear, @function
OledClear:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI24 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI25 = .
	move	$fp,$sp
.LCFI26 = .
	.loc 1 405 0
	move	$4,$0
	move	$5,$0
	jal	OledMoveTo
	nop

	.loc 1 406 0
	move	$4,$0
	jal	OledGetStdPattern
	nop

	move	$4,$2
	jal	OledSetFillPattern
	nop

	.loc 1 407 0
	li	$4,127			# 0x7f
	li	$5,31			# 0x1f
	jal	OledFillRect
	nop

	.loc 1 408 0
	jal	OledUpdate
	nop

	.loc 1 409 0
	move	$sp,$fp
.LCFI27 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	OledClear
.LFE10:
	.size	OledClear, .-OledClear
	.section	.debug_frame,info
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.byte	0x1f
	.byte	0xc
	.uleb128 0x1d
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI0-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI4-.LFB5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI8-.LFB6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI12-.LFB7
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI16-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI20-.LFB9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI24-.LFB10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE12:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 4 "c:/users/user/desktop/release/code/freertos/lab10_adv_concurrency/src/oled/oled.h"
	.file 5 "c:/users/user/desktop/release/source/include/queue.h"
	.file 6 "c:/users/user/desktop/release/source/include/semphr.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0xa01
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"src/OLED/OLED.c\000"
	.ascii	"C:/Users/User/Desktop/Release/Code/FreeRTOS/Lab10_Adv_Co"
	.ascii	"ncurrency\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1a98
	.4byte	0x269
	.uleb128 0x4
	.ascii	"SRXISEL\000"
	.byte	0x2
	.2byte	0x1a99
	.4byte	0x91
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"STXISEL\000"
	.byte	0x2
	.2byte	0x1a9a
	.4byte	0x91
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"DISSDI\000"
	.byte	0x2
	.2byte	0x1a9b
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MSTEN\000"
	.byte	0x2
	.2byte	0x1a9c
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CKP\000"
	.byte	0x2
	.2byte	0x1a9d
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SSEN\000"
	.byte	0x2
	.2byte	0x1a9e
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CKE\000"
	.byte	0x2
	.2byte	0x1a9f
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SMP\000"
	.byte	0x2
	.2byte	0x1aa0
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MODE16\000"
	.byte	0x2
	.2byte	0x1aa1
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MODE32\000"
	.byte	0x2
	.2byte	0x1aa2
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"DISSDO\000"
	.byte	0x2
	.2byte	0x1aa3
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x1aa4
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x1aa6
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ENHBUF\000"
	.byte	0x2
	.2byte	0x1aa7
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIFE\000"
	.byte	0x2
	.2byte	0x1aa8
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MCLKSEL\000"
	.byte	0x2
	.2byte	0x1aaa
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMCNT\000"
	.byte	0x2
	.2byte	0x1aab
	.4byte	0x91
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMSYPW\000"
	.byte	0x2
	.2byte	0x1aac
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"MSSEN\000"
	.byte	0x2
	.2byte	0x1aad
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMPOL\000"
	.byte	0x2
	.2byte	0x1aae
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMSYNC\000"
	.byte	0x2
	.2byte	0x1aaf
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMEN\000"
	.byte	0x2
	.2byte	0x1ab0
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1ab2
	.4byte	0x283
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1ab3
	.4byte	0x91
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x1a97
	.4byte	0x297
	.uleb128 0x6
	.4byte	0xa1
	.uleb128 0x6
	.4byte	0x269
	.byte	0
	.uleb128 0x7
	.ascii	"__SPI2CONbits_t\000"
	.byte	0x2
	.2byte	0x1ab5
	.4byte	0x283
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1abd
	.4byte	0x3a3
	.uleb128 0x4
	.ascii	"SPIRBF\000"
	.byte	0x2
	.2byte	0x1abe
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITBF\000"
	.byte	0x2
	.2byte	0x1abf
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITBE\000"
	.byte	0x2
	.2byte	0x1ac1
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIRBE\000"
	.byte	0x2
	.2byte	0x1ac3
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIROV\000"
	.byte	0x2
	.2byte	0x1ac4
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SRMT\000"
	.byte	0x2
	.2byte	0x1ac5
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPITUR\000"
	.byte	0x2
	.2byte	0x1ac6
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SPIBUSY\000"
	.byte	0x2
	.2byte	0x1ac8
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"FRMERR\000"
	.byte	0x2
	.2byte	0x1ac9
	.4byte	0x91
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TXBUFELM\000"
	.byte	0x2
	.2byte	0x1acb
	.4byte	0x91
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"RXBUFELM\000"
	.byte	0x2
	.2byte	0x1acd
	.4byte	0x91
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x1acf
	.4byte	0x3bd
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x1ad0
	.4byte	0x91
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x2
	.2byte	0x1abc
	.4byte	0x3d1
	.uleb128 0x6
	.4byte	0x2af
	.uleb128 0x6
	.4byte	0x3a3
	.byte	0
	.uleb128 0x7
	.ascii	"__SPI2STATbits_t\000"
	.byte	0x2
	.2byte	0x1ad2
	.4byte	0x3bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x8
	.ascii	"__uint8_t\000"
	.byte	0x3
	.byte	0x2f
	.4byte	0x432
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.ascii	"short unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x8
	.ascii	"BYTE\000"
	.byte	0x4
	.byte	0x28
	.4byte	0x421
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x8
	.ascii	"QueueHandle_t\000"
	.byte	0x5
	.byte	0x2f
	.4byte	0x49d
	.uleb128 0x8
	.ascii	"SemaphoreHandle_t\000"
	.byte	0x6
	.byte	0x26
	.4byte	0x4ab
	.uleb128 0xa
	.byte	0x1
	.ascii	"OledHostInit\000"
	.byte	0x1
	.byte	0x83
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x506
	.uleb128 0xb
	.ascii	"tcfg\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x91
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii	"OledDspInit\000"
	.byte	0x1
	.byte	0xb7
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x535
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc2
	.4byte	0x40b
	.byte	0x1
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.ascii	"OledDvrInit\000"
	.byte	0x1
	.byte	0xf4
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x59c
	.uleb128 0xf
	.ascii	"ib\000"
	.byte	0x1
	.byte	0xf6
	.4byte	0x40b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledSetCursor\000"
	.byte	0x1
	.2byte	0x108
	.4byte	0x40b
	.byte	0x1
	.4byte	0x57f
	.uleb128 0xe
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"OledSetDrawMode\000"
	.byte	0x1
	.2byte	0x10e
	.4byte	0x40b
	.byte	0x1
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.ascii	"OledUpdate\000"
	.byte	0x1
	.2byte	0x127
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x61e
	.uleb128 0x13
	.ascii	"ipag\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0x40b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x14
	.ascii	"icol\000"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x40b
	.uleb128 0x13
	.ascii	"pb\000"
	.byte	0x1
	.2byte	0x12b
	.4byte	0x61e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x15
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x16
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc2
	.4byte	0x40b
	.byte	0x1
	.4byte	0x602
	.uleb128 0xe
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"OledPutBuffer\000"
	.byte	0x1
	.2byte	0x13c
	.4byte	0x40b
	.byte	0x1
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.4byte	0x491
	.uleb128 0x18
	.byte	0x1
	.ascii	"OledHostTerm\000"
	.byte	0x1
	.2byte	0x152
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.ascii	"OledDevTerm\000"
	.byte	0x1
	.2byte	0x181
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x671
	.uleb128 0xd
	.byte	0x1
	.4byte	.LASF0
	.byte	0x1
	.byte	0xc2
	.4byte	0x40b
	.byte	0x1
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii	"OledClear\000"
	.byte	0x1
	.2byte	0x193
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x70a
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledMoveTo\000"
	.byte	0x1
	.2byte	0x195
	.4byte	0x40b
	.byte	0x1
	.4byte	0x6ab
	.uleb128 0xe
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledSetFillPattern\000"
	.byte	0x1
	.2byte	0x196
	.4byte	0x40b
	.byte	0x1
	.4byte	0x6ce
	.uleb128 0xe
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"OledGetStdPattern\000"
	.byte	0x1
	.2byte	0x196
	.4byte	0x40b
	.byte	0x1
	.4byte	0x6f0
	.uleb128 0xe
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"OledFillRect\000"
	.byte	0x1
	.2byte	0x197
	.4byte	0x40b
	.byte	0x1
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x1a
	.ascii	"RPD11R\000"
	.byte	0x2
	.2byte	0x5b4
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x91
	.uleb128 0x1a
	.ascii	"SPI2CON\000"
	.byte	0x2
	.2byte	0x1a96
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.ascii	"SPI2CONbits\000"
	.byte	0x2
	.2byte	0x1ab6
	.ascii	"SPI2CON\000"
	.4byte	0x750
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x297
	.uleb128 0x1c
	.ascii	"SPI2STATbits\000"
	.byte	0x2
	.2byte	0x1ad3
	.ascii	"SPI2STAT\000"
	.4byte	0x775
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x3d1
	.uleb128 0x1a
	.ascii	"SPI2BRG\000"
	.byte	0x2
	.2byte	0x1ada
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"TRISDCLR\000"
	.byte	0x2
	.2byte	0x2fb8
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"LATDCLR\000"
	.byte	0x2
	.2byte	0x2fee
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"LATDSET\000"
	.byte	0x2
	.2byte	0x2fef
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"ANSELGCLR\000"
	.byte	0x2
	.2byte	0x32fa
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"TRISGCLR\000"
	.byte	0x2
	.2byte	0x3313
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"PORTGCLR\000"
	.byte	0x2
	.2byte	0x332c
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"PORTGSET\000"
	.byte	0x2
	.2byte	0x332d
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.ascii	"LATGSET\000"
	.byte	0x2
	.2byte	0x3346
	.4byte	0x71b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.4byte	0x491
	.4byte	0x833
	.uleb128 0x1e
	.4byte	0x49f
	.2byte	0x1ff
	.byte	0
	.uleb128 0x1f
	.ascii	"rgbOledBmp\000"
	.byte	0x4
	.byte	0x66
	.4byte	0x822
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
	.uleb128 0x1f
	.ascii	"xMutexOLED\000"
	.byte	0x1
	.byte	0x5e
	.4byte	0x4c0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xMutexOLED
	.uleb128 0x1d
	.4byte	0x491
	.4byte	0x870
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.ascii	"rgbOledFont0\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x865
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"rgbOledFontUser\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x865
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"rgbFillPat\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x865
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"xchOledMax\000"
	.byte	0x1
	.byte	0x46
	.4byte	0x40b
	.byte	0x1
	.byte	0x1
	.uleb128 0x21
	.ascii	"ychOledMax\000"
	.byte	0x1
	.byte	0x47
	.4byte	0x40b
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.ascii	"xcoOledCur\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xcoOledCur
	.uleb128 0x1f
	.ascii	"ycoOledCur\000"
	.byte	0x1
	.byte	0x4e
	.4byte	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ycoOledCur
	.uleb128 0x1f
	.ascii	"pbOledCur\000"
	.byte	0x1
	.byte	0x50
	.4byte	0x61e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledCur
	.uleb128 0x1f
	.ascii	"bnOledCur\000"
	.byte	0x1
	.byte	0x51
	.4byte	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	bnOledCur
	.uleb128 0x1f
	.ascii	"clrOledCur\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x491
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	clrOledCur
	.uleb128 0x1f
	.ascii	"pbOledPatCur\000"
	.byte	0x1
	.byte	0x53
	.4byte	0x61e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledPatCur
	.uleb128 0x1f
	.ascii	"fOledCharUpdate\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	fOledCharUpdate
	.uleb128 0x1f
	.ascii	"dxcoOledFontCur\000"
	.byte	0x1
	.byte	0x56
	.4byte	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dxcoOledFontCur
	.uleb128 0x1f
	.ascii	"dycoOledFontCur\000"
	.byte	0x1
	.byte	0x57
	.4byte	0x40b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	dycoOledFontCur
	.uleb128 0x1f
	.ascii	"pbOledFontCur\000"
	.byte	0x1
	.byte	0x59
	.4byte	0x61e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledFontCur
	.uleb128 0x1f
	.ascii	"pbOledFontUser\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x61e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pbOledFontUser
	.byte	0
	.section	.debug_abbrev,info
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2007
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,info
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,info
.Ldebug_line0:
	.section	.debug_str,info
.LASF0:
	.ascii	"Spi2PutByte\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
