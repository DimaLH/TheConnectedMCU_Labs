	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:

	.comm	xMutexOLED,4,4

	.comm	rgbOledBmp,512,4
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Task 1\000"
	.align	2
.LC1:
	.ascii	"Task 2\000"
	.section	.text,code
	.align	2
	.globl	main
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/code/freertos/lab10_adv_concurrency/src/main.c"
	.loc 1 128 0
	.set	nomips16
	.set	nomicromips
	.ent	main
	.type	main, @function
main:
	.frame	$fp,32,$31		# vars= 0, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI0 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	.loc 1 130 0
	jal	prvSetupHardware
	nop

	.loc 1 132 0
	jal	CreateTaskSyncStructures
	nop

	.loc 1 134 0
	jal	InitApp
	nop

	.loc 1 138 0
	li	$2,2			# 0x2
	sw	$2,16($sp)
	sw	$0,20($sp)
	lui	$2,%hi(Task1)
	addiu	$4,$2,%lo(Task1)
	lui	$2,%hi(.LC0)
	addiu	$5,$2,%lo(.LC0)
	li	$6,190			# 0xbe
	move	$7,$0
	jal	xTaskCreate
	nop

	.loc 1 139 0
	li	$2,2			# 0x2
	sw	$2,16($sp)
	sw	$0,20($sp)
	lui	$2,%hi(Task2)
	addiu	$4,$2,%lo(Task2)
	lui	$2,%hi(.LC1)
	addiu	$5,$2,%lo(.LC1)
	li	$6,190			# 0xbe
	move	$7,$0
	jal	xTaskCreate
	nop

	.loc 1 144 0
	jal	vTaskStartScheduler
	nop

.L2:
	.loc 1 147 0
	j	.L2
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	main
.LFE4:
	.size	main, .-main
	.align	2
.LFB5 = .
	.loc 1 153 0
	.set	nomips16
	.set	nomicromips
	.ent	prvSetupHardware
	.type	prvSetupHardware, @function
prvSetupHardware:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI3 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI4 = .
	move	$fp,$sp
.LCFI5 = .
	.loc 1 155 0
	jal	vHardwareConfigurePerformance
	nop

	.loc 1 158 0
	jal	vHardwareUseMultiVectoredInterrupts
	nop

.LBB2 = .
	.loc 1 160 0
	mfc0	$2,$12,0
	sw	$2,16($fp)
	lw	$3,16($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0xfc00
	and	$2,$3,$2
	srl	$2,$2,10
	sltu	$2,$2,3
	beq	$2,$0,.L4
	nop

	lw	$2,16($fp)
	ins	$2,$0,10,7
	sw	$2,16($fp)
	lw	$2,16($fp)
	ori	$2,$2,0xc00
	mtc0	$2,$12,0
	ehb
.L4:
.LBE2 = .
	.loc 1 161 0
	jal	InitApp
	nop

	.loc 1 162 0
	move	$sp,$fp
.LCFI6 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvSetupHardware
.LFE5:
	.size	prvSetupHardware, .-prvSetupHardware
	.align	2
.LFB6 = .
	.loc 1 164 0
	.set	nomips16
	.set	nomicromips
	.ent	CreateTaskSyncStructures
	.type	CreateTaskSyncStructures, @function
CreateTaskSyncStructures:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI7 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI8 = .
	move	$fp,$sp
.LCFI9 = .
	.loc 1 167 0
	li	$4,1			# 0x1
	jal	xQueueCreateMutex
	nop

	sw	$2,%gp_rel(xMutexOLED)($28)
	.loc 1 168 0
	lw	$2,%gp_rel(xMutexOLED)($28)
	bne	$2,$0,.L5
	nop

.L7:
	.loc 1 171 0
	j	.L7
	nop

.L5:
	.loc 1 179 0
	move	$sp,$fp
.LCFI10 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	CreateTaskSyncStructures
.LFE6:
	.size	CreateTaskSyncStructures, .-CreateTaskSyncStructures
	.align	2
	.globl	vApplicationStackOverflowHook
.LFB7 = .
	.loc 1 182 0
	.set	nomips16
	.set	nomicromips
	.ent	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
	.frame	$fp,16,$31		# vars= 8, regs= 2/0, args= 0, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI11 = .
	sw	$31,12($sp)
	sw	$fp,8($sp)
.LCFI12 = .
	move	$fp,$sp
.LCFI13 = .
	sw	$4,16($fp)
	sw	$5,20($fp)
.LBB3 = .
	.loc 1 190 0
	mfc0	$2,$12,0
	sw	$2,0($fp)
	lw	$3,0($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0xfc00
	and	$2,$3,$2
	srl	$2,$2,10
	sltu	$2,$2,3
	beq	$2,$0,.L9
	nop

	lw	$2,0($fp)
	ins	$2,$0,10,7
	sw	$2,0($fp)
	lw	$2,0($fp)
	ori	$2,$2,0xc00
	mtc0	$2,$12,0
	ehb
.L9:
.LBE3 = .
	.loc 1 191 0
	j	.L9
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vApplicationStackOverflowHook
.LFE7:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.align	2
	.globl	vApplicationTickHook
.LFB8 = .
	.loc 1 196 0
	.set	nomips16
	.set	nomicromips
	.ent	vApplicationTickHook
	.type	vApplicationTickHook, @function
vApplicationTickHook:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI14 = .
	sw	$fp,4($sp)
.LCFI15 = .
	move	$fp,$sp
.LCFI16 = .
	.loc 1 202 0
	move	$sp,$fp
.LCFI17 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vApplicationTickHook
.LFE8:
	.size	vApplicationTickHook, .-vApplicationTickHook
	.align	2
	.globl	vAssertCalled
.LFB9 = .
	.loc 1 206 0
	.set	nomips16
	.set	nomicromips
	.ent	vAssertCalled
	.type	vAssertCalled, @function
vAssertCalled:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI18 = .
	sw	$fp,12($sp)
.LCFI19 = .
	move	$fp,$sp
.LCFI20 = .
	sw	$4,16($fp)
	sw	$5,20($fp)
	.loc 1 212 0
	lw	$2,16($fp)
	sw	$2,0($fp)
	.loc 1 214 0
	lw	$2,20($fp)
	sw	$2,4($fp)
	.loc 1 218 0
	j	.L12
.L13:
	.loc 1 220 0
 #APP
 # 220 "src/main.c" 1
	NOP
 # 0 "" 2
	.loc 1 221 0
 # 221 "src/main.c" 1
	NOP
 # 0 "" 2
	.loc 1 222 0
 # 222 "src/main.c" 1
	NOP
 # 0 "" 2
	.loc 1 223 0
 # 223 "src/main.c" 1
	NOP
 # 0 "" 2
	.loc 1 224 0
 # 224 "src/main.c" 1
	NOP
 # 0 "" 2
 #NO_APP
.L12:
	.loc 1 218 0
	lw	$2,4($fp)
	bne	$2,$0,.L13
	.loc 1 226 0
	move	$sp,$fp
.LCFI21 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vAssertCalled
.LFE9:
	.size	vAssertCalled, .-vAssertCalled
	.align	2
	.globl	_general_exception_handler
.LFB10 = .
	.loc 1 231 0
	.set	nomips16
	.set	nomicromips
	.ent	_general_exception_handler
	.type	_general_exception_handler, @function
_general_exception_handler:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI22 = .
	sw	$fp,4($sp)
.LCFI23 = .
	move	$fp,$sp
.LCFI24 = .
	.loc 1 254 0
 #APP
 # 254 "src/main.c" 1
	mfc0 $2,$13
 # 0 "" 2
 #NO_APP
	sw	$2,%gp_rel(_epc_code.21517)($28)
	.loc 1 255 0
 #APP
 # 255 "src/main.c" 1
	mfc0 $2,$14
 # 0 "" 2
 #NO_APP
	sw	$2,%gp_rel(_excep_addr.21518)($28)
	.loc 1 257 0
	lw	$2,%gp_rel(_epc_code.21517)($28)
	andi	$2,$2,0x7c
	srl	$2,$2,2
	sw	$2,%gp_rel(_excep_code.21516)($28)
.L15:
	.loc 1 266 0
 #APP
 # 266 "src/main.c" 1
	.set	noreorder
	ssnop
	.set	reorder
 # 0 "" 2
	.loc 1 267 0
 # 267 "src/main.c" 1
	.set	noreorder
	ssnop
	.set	reorder
 # 0 "" 2
	.loc 1 268 0
 # 268 "src/main.c" 1
	.set	noreorder
	ssnop
	.set	reorder
 # 0 "" 2
	.loc 1 269 0
 #NO_APP
	j	.L15
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	_general_exception_handler
.LFE10:
	.size	_general_exception_handler, .-_general_exception_handler
	.section	.sbss,bss
	.align	2
	.type	_epc_code.21517, @object
	.size	_epc_code.21517, 4
_epc_code.21517:
	.space	4
	.align	2
	.type	_excep_addr.21518, @object
	.size	_excep_addr.21518, 4
_excep_addr.21518:
	.space	4
	.align	2
	.type	_excep_code.21516, @object
	.size	_excep_code.21516, 4
_excep_code.21516:
	.space	4
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
	.uleb128 0x20
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI3-.LFB5
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
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
	.4byte	.LCFI7-.LFB6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
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
	.4byte	.LCFI11-.LFB7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI14-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
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
	.4byte	.LCFI18-.LFB9
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
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
	.4byte	.LCFI22-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x1e
	.align	2
.LEFDE12:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 3 "c:/users/user/desktop/release/source/include/task.h"
	.file 4 "c:/users/user/desktop/release/source/include/queue.h"
	.file 5 "c:/users/user/desktop/release/source/include/semphr.h"
	.file 6 "c:/users/user/desktop/release/code/freertos/lab10_adv_concurrency/src/oled/oled.h"
	.file 7 "c:/users/user/desktop/release/code/freertos/lab10_adv_concurrency/src/user.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x4ea
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"src/main.c\000"
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
	.uleb128 0x3
	.ascii	"__uint8_t\000"
	.byte	0x2
	.byte	0x2f
	.4byte	0xd4
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
	.4byte	0x11a
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x3
	.ascii	"TaskHandle_t\000"
	.byte	0x3
	.byte	0x3e
	.4byte	0x155
	.uleb128 0x5
	.byte	0x4
	.4byte	0x17d
	.uleb128 0x6
	.4byte	0x182
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x3
	.ascii	"QueueHandle_t\000"
	.byte	0x4
	.byte	0x2f
	.4byte	0x155
	.uleb128 0x3
	.ascii	"SemaphoreHandle_t\000"
	.byte	0x5
	.byte	0x26
	.4byte	0x18a
	.uleb128 0x3
	.ascii	"BYTE\000"
	.byte	0x6
	.byte	0x28
	.4byte	0xc3
	.uleb128 0x7
	.byte	0x1
	.ascii	"main\000"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.4byte	0xad
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x8
	.ascii	"prvSetupHardware\000"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x21a
	.uleb128 0x9
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xa
	.4byte	.LASF0
	.byte	0x1
	.byte	0xa0
	.4byte	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0xb
	.ascii	"CreateTaskSyncStructures\000"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.ascii	"vApplicationStackOverflowHook\000"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2b3
	.uleb128 0xd
	.ascii	"pxTask\000"
	.byte	0x1
	.byte	0xb5
	.4byte	0x163
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.ascii	"pcTaskName\000"
	.byte	0x1
	.byte	0xb5
	.4byte	0x2b3
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x9
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0xa
	.4byte	.LASF0
	.byte	0x1
	.byte	0xbe
	.4byte	0x108
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x182
	.uleb128 0xe
	.byte	0x1
	.ascii	"vApplicationTickHook\000"
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.ascii	"vAssertCalled\000"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x34f
	.uleb128 0xd
	.ascii	"pcFile\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x177
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.ascii	"ulLine\000"
	.byte	0x1
	.byte	0xcd
	.4byte	0x98
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xf
	.ascii	"pcFileName\000"
	.byte	0x1
	.byte	0xcf
	.4byte	0x34f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xf
	.ascii	"ulLineNumber\000"
	.byte	0x1
	.byte	0xd0
	.4byte	0x35a
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x355
	.uleb128 0x10
	.4byte	0x182
	.uleb128 0x10
	.4byte	0x98
	.uleb128 0xc
	.byte	0x1
	.ascii	"_general_exception_handler\000"
	.byte	0x1
	.byte	0xe6
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x4aa
	.uleb128 0x11
	.byte	0x4
	.byte	0x1
	.byte	0xe8
	.4byte	0x460
	.uleb128 0x12
	.ascii	"EXCEP_IRQ\000"
	.sleb128 0
	.uleb128 0x12
	.ascii	"EXCEP_AdEL\000"
	.sleb128 4
	.uleb128 0x12
	.ascii	"EXCEP_AdES\000"
	.sleb128 5
	.uleb128 0x12
	.ascii	"EXCEP_IBE\000"
	.sleb128 6
	.uleb128 0x12
	.ascii	"EXCEP_DBE\000"
	.sleb128 7
	.uleb128 0x12
	.ascii	"EXCEP_Sys\000"
	.sleb128 8
	.uleb128 0x12
	.ascii	"EXCEP_Bp\000"
	.sleb128 9
	.uleb128 0x12
	.ascii	"EXCEP_RI\000"
	.sleb128 10
	.uleb128 0x12
	.ascii	"EXCEP_CpU\000"
	.sleb128 11
	.uleb128 0x12
	.ascii	"EXCEP_Overflow\000"
	.sleb128 12
	.uleb128 0x12
	.ascii	"EXCEP_Trap\000"
	.sleb128 13
	.uleb128 0x12
	.ascii	"EXCEP_FPE\000"
	.sleb128 15
	.uleb128 0x12
	.ascii	"EXCEP_IS1\000"
	.sleb128 16
	.uleb128 0x12
	.ascii	"EXCEP_CEU\000"
	.sleb128 17
	.uleb128 0x12
	.ascii	"EXCEP_C2E\000"
	.sleb128 18
	.uleb128 0x12
	.ascii	"EXCEP_DSPDis\000"
	.sleb128 26
	.byte	0
	.uleb128 0xf
	.ascii	"_excep_code\000"
	.byte	0x1
	.byte	0xf9
	.4byte	0x38e
	.byte	0x5
	.byte	0x3
	.4byte	_excep_code.21516
	.uleb128 0xf
	.ascii	"_epc_code\000"
	.byte	0x1
	.byte	0xfb
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	_epc_code.21517
	.uleb128 0xf
	.ascii	"_excep_addr\000"
	.byte	0x1
	.byte	0xfc
	.4byte	0x98
	.byte	0x5
	.byte	0x3
	.4byte	_excep_addr.21518
	.byte	0
	.uleb128 0x13
	.ascii	"xMutexOLED\000"
	.byte	0x7
	.byte	0x36
	.4byte	0x19f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xMutexOLED
	.uleb128 0x14
	.4byte	0x1b8
	.4byte	0x4d4
	.uleb128 0x15
	.4byte	0x157
	.2byte	0x1ff
	.byte	0
	.uleb128 0x13
	.ascii	"rgbOledBmp\000"
	.byte	0x6
	.byte	0x66
	.4byte	0x4c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	rgbOledBmp
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2116
	.uleb128 0xc
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.ascii	"ulStatus\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
# Configuration word @ 0xbfc0ffdc
	.section	.config_BFC0FFDC, code, keep, address(0xBFC0FFDC)
	.type	__config_BFC0FFDC, @object
	.size	__config_BFC0FFDC, 4
__config_BFC0FFDC:
	.word	0xFFFFFFFF
# Configuration word @ 0xbfc0ffcc
	.section	.config_BFC0FFCC, code, keep, address(0xBFC0FFCC)
	.type	__config_BFC0FFCC, @object
	.size	__config_BFC0FFCC, 4
__config_BFC0FFCC:
	.word	0xFFFFF7F1
# Configuration word @ 0xbfc0ffc8
	.section	.config_BFC0FFC8, code, keep, address(0xBFC0FFC8)
	.type	__config_BFC0FFC8, @object
	.size	__config_BFC0FFC8, 4
__config_BFC0FFC8:
	.word	0x5F747C39
# Configuration word @ 0xbfc0ffc4
	.section	.config_BFC0FFC4, code, keep, address(0xBFC0FFC4)
	.type	__config_BFC0FFC4, @object
	.size	__config_BFC0FFC4, 4
__config_BFC0FFC4:
	.word	0xBFF9B13A
# Configuration word @ 0xbfc0ffc0
	.section	.config_BFC0FFC0, code, keep, address(0xBFC0FFC0)
	.type	__config_BFC0FFC0, @object
	.size	__config_BFC0FFC0, 4
__config_BFC0FFC0:
	.word	0x84FFFFFF
