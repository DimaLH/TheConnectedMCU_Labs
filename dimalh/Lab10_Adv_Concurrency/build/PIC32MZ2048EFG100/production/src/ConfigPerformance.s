	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.align	2
	.globl	vHardwareConfigurePerformance
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/code/freertos/lab10_adv_concurrency/src/configperformance.c"
	.loc 1 88 0
	.set	nomips16
	.set	nomicromips
	.ent	vHardwareConfigurePerformance
	.type	vHardwareConfigurePerformance, @function
vHardwareConfigurePerformance:
	.frame	$fp,8,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI0 = .
	sw	$31,4($sp)
	sw	$fp,0($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	.loc 1 90 0
	lui	$2,%hi(SYSKEY)
	li	$3,-1432813568			# 0xffffffffaa990000
	ori	$3,$3,0x6655
	sw	$3,%lo(SYSKEY)($2)
	.loc 1 91 0
	lui	$2,%hi(SYSKEY)
	li	$3,1432748032			# 0x55660000
	ori	$3,$3,0x99aa
	sw	$3,%lo(SYSKEY)($2)
	.loc 1 94 0
	lui	$3,%hi(PB2DIV)
	lhu	$2,%lo(PB2DIV)($3)
	li	$4,1			# 0x1
	ins	$2,$4,0,7
	sh	$2,%lo(PB2DIV)($3)
	.loc 1 97 0
	lui	$3,%hi(PB3DIV)
	lhu	$2,%lo(PB3DIV)($3)
	li	$4,4			# 0x4
	ins	$2,$4,0,7
	sh	$2,%lo(PB3DIV)($3)
	.loc 1 100 0
	lui	$3,%hi(PB4DIV)
	lhu	$2,%lo(PB4DIV)($3)
	ins	$2,$0,0,7
	sh	$2,%lo(PB4DIV)($3)
	.loc 1 102 0
	lui	$2,%hi(SYSKEY)
	sw	$0,%lo(SYSKEY)($2)
	.loc 1 106 0
	di	$2
	ehb
	nop
	.loc 1 107 0
	move	$sp,$fp
.LCFI3 = .
	lw	$31,4($sp)
	lw	$fp,0($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vHardwareConfigurePerformance
.LFE4:
	.size	vHardwareConfigurePerformance, .-vHardwareConfigurePerformance
	.align	2
	.globl	vHardwareUseMultiVectoredInterrupts
.LFB5 = .
	.loc 1 111 0
	.set	nomips16
	.set	nomicromips
	.ent	vHardwareUseMultiVectoredInterrupts
	.type	vHardwareUseMultiVectoredInterrupts, @function
vHardwareUseMultiVectoredInterrupts:
	.frame	$fp,8,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI4 = .
	sw	$31,4($sp)
	sw	$fp,0($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	.loc 1 113 0
	li	$2,8388608			# 0x800000
	mfc0	$3,$13,0
	nop
	or	$2,$3,$2
	mtc0	$2,$13,0
	ehb
	.loc 1 114 0
	lui	$2,%hi(INTCONSET)
	li	$3,4096			# 0x1000
	sw	$3,%lo(INTCONSET)($2)
	.loc 1 115 0
	ei	$2
	.loc 1 116 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,4($sp)
	lw	$fp,0($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vHardwareUseMultiVectoredInterrupts
.LFE5:
	.size	vHardwareUseMultiVectoredInterrupts, .-vHardwareUseMultiVectoredInterrupts
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
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x8
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
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/proc/p32mz2048efg100.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x33e
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"src/ConfigPerformance.c\000"
	.ascii	"C:/Users/User/Desktop/Release/Code/FreeRTOS/Lab10_Adv_Co"
	.ascii	"ncurrency\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"long unsigned int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
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
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x376
	.4byte	0x180
	.uleb128 0x4
	.ascii	"PBDIV\000"
	.byte	0x2
	.2byte	0x377
	.4byte	0x104
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x379
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x37b
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.ascii	"__PB2DIVbits_t\000"
	.byte	0x2
	.2byte	0x37c
	.4byte	0x13f
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x383
	.4byte	0x1d8
	.uleb128 0x4
	.ascii	"PBDIV\000"
	.byte	0x2
	.2byte	0x384
	.4byte	0x104
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x386
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x388
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.ascii	"__PB3DIVbits_t\000"
	.byte	0x2
	.2byte	0x389
	.4byte	0x197
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x390
	.4byte	0x230
	.uleb128 0x4
	.ascii	"PBDIV\000"
	.byte	0x2
	.2byte	0x391
	.4byte	0x104
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x393
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x395
	.4byte	0x104
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.ascii	"__PB4DIVbits_t\000"
	.byte	0x2
	.2byte	0x396
	.4byte	0x1ef
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x7
	.byte	0x1
	.ascii	"vHardwareConfigurePerformance\000"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.ascii	"vHardwareUseMultiVectoredInterrupts\000"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x8
	.ascii	"SYSKEY\000"
	.byte	0x2
	.byte	0x55
	.4byte	0x2c5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x104
	.uleb128 0xa
	.ascii	"PB2DIVbits\000"
	.byte	0x2
	.2byte	0x37d
	.ascii	"PB2DIV\000"
	.4byte	0x2e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x180
	.uleb128 0xa
	.ascii	"PB3DIVbits\000"
	.byte	0x2
	.2byte	0x38a
	.ascii	"PB3DIV\000"
	.4byte	0x307
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x1d8
	.uleb128 0xa
	.ascii	"PB4DIVbits\000"
	.byte	0x2
	.2byte	0x397
	.ascii	"PB4DIV\000"
	.4byte	0x328
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.4byte	0x230
	.uleb128 0xb
	.ascii	"INTCONSET\000"
	.byte	0x2
	.2byte	0x64e
	.4byte	0x2c5
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.ascii	"PBDIVRDY\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
