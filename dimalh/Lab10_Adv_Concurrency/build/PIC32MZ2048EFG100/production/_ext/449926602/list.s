	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.align	2
	.globl	vListInitialise
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/source/list.c"
	.loc 1 39 0
	.set	nomips16
	.set	nomicromips
	.ent	vListInitialise
	.type	vListInitialise, @function
vListInitialise:
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
	sw	$4,8($fp)
	.loc 1 43 0
	lw	$2,8($fp)
	addiu	$3,$2,8
	lw	$2,8($fp)
	sw	$3,4($2)
	.loc 1 47 0
	lw	$2,8($fp)
	li	$3,-1			# 0xffffffffffffffff
	sw	$3,8($2)
	.loc 1 51 0
	lw	$2,8($fp)
	addiu	$3,$2,8
	lw	$2,8($fp)
	sw	$3,12($2)
	.loc 1 52 0
	lw	$2,8($fp)
	addiu	$3,$2,8
	lw	$2,8($fp)
	sw	$3,16($2)
	.loc 1 54 0
	lw	$2,8($fp)
	sw	$0,0($2)
	.loc 1 60 0
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
	.end	vListInitialise
.LFE4:
	.size	vListInitialise, .-vListInitialise
	.align	2
	.globl	vListInitialiseItem
.LFB5 = .
	.loc 1 64 0
	.set	nomips16
	.set	nomicromips
	.ent	vListInitialiseItem
	.type	vListInitialiseItem, @function
vListInitialiseItem:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI4 = .
	sw	$fp,4($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	sw	$4,8($fp)
	.loc 1 66 0
	lw	$2,8($fp)
	sw	$0,16($2)
	.loc 1 72 0
	move	$sp,$fp
.LCFI7 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vListInitialiseItem
.LFE5:
	.size	vListInitialiseItem, .-vListInitialiseItem
	.align	2
	.globl	vListInsertEnd
.LFB6 = .
	.loc 1 76 0
	.set	nomips16
	.set	nomicromips
	.ent	vListInsertEnd
	.type	vListInsertEnd, @function
vListInsertEnd:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI8 = .
	sw	$fp,12($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	sw	$4,16($fp)
	sw	$5,20($fp)
	.loc 1 77 0
	lw	$2,16($fp)
	lw	$2,4($2)
	sw	$2,0($fp)
	.loc 1 88 0
	lw	$2,20($fp)
	lw	$3,0($fp)
	sw	$3,4($2)
	.loc 1 89 0
	lw	$2,0($fp)
	lw	$3,8($2)
	lw	$2,20($fp)
	sw	$3,8($2)
	.loc 1 94 0
	lw	$2,0($fp)
	lw	$2,8($2)
	lw	$3,20($fp)
	sw	$3,4($2)
	.loc 1 95 0
	lw	$2,0($fp)
	lw	$3,20($fp)
	sw	$3,8($2)
	.loc 1 98 0
	lw	$2,20($fp)
	lw	$3,16($fp)
	sw	$3,16($2)
	.loc 1 100 0
	lw	$2,16($fp)
	lw	$2,0($2)
	addiu	$3,$2,1
	lw	$2,16($fp)
	sw	$3,0($2)
	.loc 1 101 0
	move	$sp,$fp
.LCFI11 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vListInsertEnd
.LFE6:
	.size	vListInsertEnd, .-vListInsertEnd
	.align	2
	.globl	vListInsert
.LFB7 = .
	.loc 1 105 0
	.set	nomips16
	.set	nomicromips
	.ent	vListInsert
	.type	vListInsert, @function
vListInsert:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI12 = .
	sw	$fp,12($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	sw	$4,16($fp)
	sw	$5,20($fp)
	.loc 1 107 0
	lw	$2,20($fp)
	lw	$2,0($2)
	sw	$2,4($fp)
	.loc 1 123 0
	lw	$3,4($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L5
	nop

	.loc 1 125 0
	lw	$2,16($fp)
	lw	$2,16($2)
	sw	$2,0($fp)
	j	.L6
	nop

.L5:
	.loc 1 151 0
	lw	$2,16($fp)
	addiu	$2,$2,8
	sw	$2,0($fp)
	j	.L7
	nop

.L8:
	lw	$2,0($fp)
	lw	$2,4($2)
	sw	$2,0($fp)
.L7:
	lw	$2,0($fp)
	lw	$2,4($2)
	lw	$3,0($2)
	lw	$2,4($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L8
	nop

.L6:
	.loc 1 158 0
	lw	$2,0($fp)
	lw	$3,4($2)
	lw	$2,20($fp)
	sw	$3,4($2)
	.loc 1 159 0
	lw	$2,20($fp)
	lw	$2,4($2)
	lw	$3,20($fp)
	sw	$3,8($2)
	.loc 1 160 0
	lw	$2,20($fp)
	lw	$3,0($fp)
	sw	$3,8($2)
	.loc 1 161 0
	lw	$2,0($fp)
	lw	$3,20($fp)
	sw	$3,4($2)
	.loc 1 165 0
	lw	$2,20($fp)
	lw	$3,16($fp)
	sw	$3,16($2)
	.loc 1 167 0
	lw	$2,16($fp)
	lw	$2,0($2)
	addiu	$3,$2,1
	lw	$2,16($fp)
	sw	$3,0($2)
	.loc 1 168 0
	move	$sp,$fp
.LCFI15 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vListInsert
.LFE7:
	.size	vListInsert, .-vListInsert
	.align	2
	.globl	uxListRemove
.LFB8 = .
	.loc 1 172 0
	.set	nomips16
	.set	nomicromips
	.ent	uxListRemove
	.type	uxListRemove, @function
uxListRemove:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI16 = .
	sw	$fp,12($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
	sw	$4,16($fp)
	.loc 1 175 0
	lw	$2,16($fp)
	lw	$2,16($2)
	sw	$2,0($fp)
	.loc 1 177 0
	lw	$2,16($fp)
	lw	$2,4($2)
	lw	$3,16($fp)
	lw	$3,8($3)
	sw	$3,8($2)
	.loc 1 178 0
	lw	$2,16($fp)
	lw	$2,8($2)
	lw	$3,16($fp)
	lw	$3,4($3)
	sw	$3,4($2)
	.loc 1 184 0
	lw	$2,0($fp)
	lw	$3,4($2)
	lw	$2,16($fp)
	bne	$3,$2,.L10
	nop

	.loc 1 186 0
	lw	$2,16($fp)
	lw	$3,8($2)
	lw	$2,0($fp)
	sw	$3,4($2)
.L10:
	.loc 1 193 0
	lw	$2,16($fp)
	sw	$0,16($2)
	.loc 1 194 0
	lw	$2,0($fp)
	lw	$2,0($2)
	addiu	$3,$2,-1
	lw	$2,0($fp)
	sw	$3,0($2)
	.loc 1 196 0
	lw	$2,0($fp)
	lw	$2,0($2)
	.loc 1 197 0
	move	$sp,$fp
.LCFI19 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxListRemove
.LFE8:
	.size	uxListRemove, .-uxListRemove
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x10
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
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 3 "c:/users/user/desktop/release/source/portable/mplab/pic32mz/portmacro.h"
	.file 4 "c:/users/user/desktop/release/source/include/list.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x44f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"../../../Source/list.c\000"
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
	.byte	0x4
	.byte	0x7
	.ascii	"unsigned int\000"
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
	.uleb128 0x3
	.ascii	"__uint32_t\000"
	.byte	0x2
	.byte	0x33
	.4byte	0xc0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x3
	.ascii	"UBaseType_t\000"
	.byte	0x3
	.byte	0x3c
	.4byte	0xa4
	.uleb128 0x3
	.ascii	"TickType_t\000"
	.byte	0x3
	.byte	0x42
	.4byte	0x113
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x5
	.ascii	"xLIST_ITEM\000"
	.byte	0x14
	.byte	0x4
	.byte	0x8c
	.4byte	0x1ec
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x8f
	.4byte	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"pxNext\000"
	.byte	0x4
	.byte	0x90
	.4byte	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x91
	.4byte	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"pvOwner\000"
	.byte	0x4
	.byte	0x92
	.4byte	0x150
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"pvContainer\000"
	.byte	0x4
	.byte	0x93
	.4byte	0x150
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x183
	.uleb128 0x3
	.ascii	"ListItem_t\000"
	.byte	0x4
	.byte	0x96
	.4byte	0x183
	.uleb128 0x5
	.ascii	"xMINI_LIST_ITEM\000"
	.byte	0xc
	.byte	0x4
	.byte	0x98
	.4byte	0x24a
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x9b
	.4byte	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"pxNext\000"
	.byte	0x4
	.byte	0x9c
	.4byte	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x9d
	.4byte	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii	"MiniListItem_t\000"
	.byte	0x4
	.byte	0x9f
	.4byte	0x204
	.uleb128 0x5
	.ascii	"xLIST\000"
	.byte	0x14
	.byte	0x4
	.byte	0xa4
	.4byte	0x2ae
	.uleb128 0x7
	.ascii	"uxNumberOfItems\000"
	.byte	0x4
	.byte	0xa7
	.4byte	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"pxIndex\000"
	.byte	0x4
	.byte	0xa8
	.4byte	0x2b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"xListEnd\000"
	.byte	0x4
	.byte	0xa9
	.4byte	0x24a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x152
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1f2
	.uleb128 0x3
	.ascii	"List_t\000"
	.byte	0x4
	.byte	0xab
	.4byte	0x260
	.uleb128 0xa
	.byte	0x1
	.ascii	"vListInitialise\000"
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2fa
	.uleb128 0xb
	.4byte	.LASF2
	.byte	0x1
	.byte	0x26
	.4byte	0x2fa
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xc
	.4byte	0x2ff
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2b9
	.uleb128 0xa
	.byte	0x1
	.ascii	"vListInitialiseItem\000"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x33f
	.uleb128 0xd
	.ascii	"pxItem\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x33f
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0xc
	.4byte	0x2b3
	.uleb128 0xa
	.byte	0x1
	.ascii	"vListInsertEnd\000"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x396
	.uleb128 0xb
	.4byte	.LASF2
	.byte	0x1
	.byte	0x4b
	.4byte	0x2fa
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xb
	.4byte	.LASF3
	.byte	0x1
	.byte	0x4b
	.4byte	0x33f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xe
	.ascii	"pxIndex\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x33f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.ascii	"vListInsert\000"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x404
	.uleb128 0xb
	.4byte	.LASF2
	.byte	0x1
	.byte	0x68
	.4byte	0x2fa
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xb
	.4byte	.LASF3
	.byte	0x1
	.byte	0x68
	.4byte	0x33f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xe
	.ascii	"pxIterator\000"
	.byte	0x1
	.byte	0x6a
	.4byte	0x2b3
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xe
	.ascii	"xValueOfInsertion\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x404
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.4byte	0x165
	.uleb128 0xf
	.byte	0x1
	.ascii	"uxListRemove\000"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.4byte	0x152
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xd
	.ascii	"pxItemToRemove\000"
	.byte	0x1
	.byte	0xab
	.4byte	0x33f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.4byte	.LASF2
	.byte	0x1
	.byte	0xaf
	.4byte	0x2fa
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
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
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
.LASF1:
	.ascii	"pxPrevious\000"
.LASF2:
	.ascii	"pxList\000"
.LASF3:
	.ascii	"pxNewListItem\000"
.LASF0:
	.ascii	"xItemValue\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
