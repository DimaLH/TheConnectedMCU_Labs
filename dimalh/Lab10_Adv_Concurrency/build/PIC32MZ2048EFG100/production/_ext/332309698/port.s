	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.section	.rodata,code
	.align	2
	.type	ucExpectedStackBytes, @object
	.size	ucExpectedStackBytes, 20
ucExpectedStackBytes:
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.byte	-18
	.globl	uxInterruptNesting
	.section	.sdata,data
	.align	2
	.type	uxInterruptNesting, @object
	.size	uxInterruptNesting, 4
uxInterruptNesting:
	.word	1
	.globl	uxSavedTaskStackPointer
	.section	.sbss,bss
	.align	2
	.type	uxSavedTaskStackPointer, @object
	.size	uxSavedTaskStackPointer, 4
uxSavedTaskStackPointer:
	.space	4
	.globl	xISRStack
	.section	.bss,bss
	.align	3
	.type	xISRStack, @object
	.size	xISRStack, 1600
xISRStack:
	.space	1600
	.globl	xISRStackTop
	.section	.rodata,code
	.align	2
	.type	xISRStackTop, @object
	.size	xISRStackTop, 4
xISRStackTop:
	.word	xISRStack+1568
	.globl	ulTaskHasFPUContext
	.section	.sbss,bss
	.align	2
	.type	ulTaskHasFPUContext, @object
	.size	ulTaskHasFPUContext, 4
ulTaskHasFPUContext:
	.space	4
	.section	.text,code
	.align	2
	.globl	pxPortInitialiseStack
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/source/portable/mplab/pic32mz/port.c"
	.loc 1 175 0
	.set	nomips16
	.set	nomicromips
	.ent	pxPortInitialiseStack
	.type	pxPortInitialiseStack, @function
pxPortInitialiseStack:
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
	sw	$4,8($fp)
	sw	$5,12($fp)
	sw	$6,16($fp)
	.loc 1 177 0
	lw	$2,8($fp)
	addiu	$2,$2,-4
	sw	$2,8($fp)
	.loc 1 178 0
	lw	$2,8($fp)
	addiu	$2,$2,-4
	sw	$2,8($fp)
	.loc 1 180 0
	lw	$2,8($fp)
	li	$3,-559087616			# 0xffffffffdead0000
	ori	$3,$3,0xbeef
	sw	$3,0($2)
	.loc 1 181 0
	lw	$2,8($fp)
	addiu	$2,$2,-4
	sw	$2,8($fp)
	.loc 1 183 0
	lw	$2,8($fp)
	li	$3,305397760			# 0x12340000
	ori	$3,$3,0x5678
	sw	$3,0($2)
	.loc 1 184 0
	lw	$2,8($fp)
	addiu	$2,$2,-4
	sw	$2,8($fp)
	.loc 1 186 0
	mfc0	$3,$13,0
	lw	$2,8($fp)
	sw	$3,0($2)
	.loc 1 187 0
	lw	$2,8($fp)
	addiu	$2,$2,-4
	sw	$2,8($fp)
	.loc 1 189 0
	lw	$2,8($fp)
	li	$3,620756992			# 0x25000000
	ori	$3,$3,0x3
	sw	$3,0($2)
	.loc 1 190 0
	lw	$2,8($fp)
	addiu	$2,$2,-4
	sw	$2,8($fp)
	.loc 1 192 0
	lw	$3,12($fp)
	lw	$2,8($fp)
	sw	$3,0($2)
	.loc 1 193 0
	lw	$2,8($fp)
	addiu	$2,$2,-4
	sw	$2,8($fp)
	.loc 1 195 0
	lw	$2,8($fp)
	sw	$0,0($2)
	.loc 1 196 0
	lw	$2,8($fp)
	addiu	$2,$2,-28
	sw	$2,8($fp)
	.loc 1 198 0
	lui	$2,%hi(prvTaskExitError)
	addiu	$3,$2,%lo(prvTaskExitError)
	lw	$2,8($fp)
	sw	$3,0($2)
	.loc 1 199 0
	lw	$2,8($fp)
	addiu	$2,$2,-60
	sw	$2,8($fp)
	.loc 1 201 0
	lw	$3,16($fp)
	lw	$2,8($fp)
	sw	$3,0($2)
	.loc 1 202 0
	lw	$2,8($fp)
	addiu	$2,$2,-60
	sw	$2,8($fp)
	.loc 1 204 0
	lw	$2,8($fp)
	sw	$0,0($2)
	.loc 1 206 0
	lw	$2,8($fp)
	.loc 1 207 0
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
	.end	pxPortInitialiseStack
.LFE4:
	.size	pxPortInitialiseStack, .-pxPortInitialiseStack
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"../../../Source/portable/MPLAB/PIC32MZ/port.c\000"
	.section	.text,code
	.align	2
.LFB5 = .
	.loc 1 211 0
	.set	nomips16
	.set	nomicromips
	.ent	prvTaskExitError
	.type	prvTaskExitError, @function
prvTaskExitError:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI4 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	.loc 1 218 0
	lw	$2,%gp_rel(uxSavedTaskStackPointer)($28)
	beq	$2,$0,.L4
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,218			# 0xda
	jal	vAssertCalled
	nop

.L4:
.LBB2 = .
	.loc 1 219 0
	mfc0	$2,$12,0
	sw	$2,16($fp)
	lw	$3,16($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0xfc00
	and	$2,$3,$2
	srl	$2,$2,10
	sltu	$2,$2,3
	beq	$2,$0,.L5
	nop

	lw	$2,16($fp)
	ins	$2,$0,10,7
	sw	$2,16($fp)
	lw	$2,16($fp)
	ori	$2,$2,0xc00
	mtc0	$2,$12,0
	ehb
.L5:
.LBE2 = .
	.loc 1 220 0
	j	.L5
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvTaskExitError
.LFE5:
	.size	prvTaskExitError, .-prvTaskExitError
	.align	2
	.weak	vApplicationSetupTickTimerInterrupt
.LFB6 = .
	.loc 1 234 0
	.set	nomips16
	.set	nomicromips
	.ent	vApplicationSetupTickTimerInterrupt
	.type	vApplicationSetupTickTimerInterrupt, @function
vApplicationSetupTickTimerInterrupt:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI7 = .
	sw	$fp,12($sp)
.LCFI8 = .
	move	$fp,$sp
.LCFI9 = .
	.loc 1 235 0
	li	$2,4999			# 0x1387
	sw	$2,0($fp)
	.loc 1 237 0
	lui	$2,%hi(T1CON)
	sw	$0,%lo(T1CON)($2)
	.loc 1 238 0
	lui	$3,%hi(T1CON)
	lhu	$2,%lo(T1CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,4,2
	sh	$2,%lo(T1CON)($3)
	.loc 1 239 0
	lui	$2,%hi(PR1)
	lw	$3,0($fp)
	sw	$3,%lo(PR1)($2)
	.loc 1 240 0
	lui	$3,%hi(IPC1)
	lw	$2,%lo(IPC1)($3)
	li	$4,1			# 0x1
	ins	$2,$4,2,3
	sw	$2,%lo(IPC1)($3)
	.loc 1 243 0
	lui	$3,%hi(IFS0)
	lw	$2,%lo(IFS0)($3)
	ins	$2,$0,4,1
	sw	$2,%lo(IFS0)($3)
	.loc 1 246 0
	lui	$3,%hi(IEC0)
	lw	$2,%lo(IEC0)($3)
	li	$4,1			# 0x1
	ins	$2,$4,4,1
	sw	$2,%lo(IEC0)($3)
	.loc 1 249 0
	lui	$3,%hi(T1CON)
	lhu	$2,%lo(T1CON)($3)
	li	$4,1			# 0x1
	ins	$2,$4,15,1
	sh	$2,%lo(T1CON)($3)
	.loc 1 250 0
	move	$sp,$fp
.LCFI10 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vApplicationSetupTickTimerInterrupt
.LFE6:
	.size	vApplicationSetupTickTimerInterrupt, .-vApplicationSetupTickTimerInterrupt
	.align	2
	.globl	vPortEndScheduler
.LFB7 = .
	.loc 1 254 0
	.set	nomips16
	.set	nomicromips
	.ent	vPortEndScheduler
	.type	vPortEndScheduler, @function
vPortEndScheduler:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI11 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI12 = .
	move	$fp,$sp
.LCFI13 = .
	.loc 1 257 0
	lw	$3,%gp_rel(uxInterruptNesting)($28)
	li	$2,1000			# 0x3e8
	beq	$3,$2,.L7
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,257			# 0x101
	jal	vAssertCalled
	nop

.L7:
	.loc 1 258 0
	move	$sp,$fp
.LCFI14 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vPortEndScheduler
.LFE7:
	.size	vPortEndScheduler, .-vPortEndScheduler
	.align	2
	.globl	xPortStartScheduler
.LFB8 = .
	.loc 1 262 0
	.set	nomips16
	.set	nomicromips
	.ent	xPortStartScheduler
	.type	xPortStartScheduler, @function
xPortStartScheduler:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI15 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI16 = .
	move	$fp,$sp
.LCFI17 = .
	.loc 1 269 0
	lui	$2,%hi(xISRStack)
	addiu	$4,$2,%lo(xISRStack)
	li	$5,238			# 0xee
	li	$6,1600			# 0x640
	jal	memset
	nop

	.loc 1 274 0
	lui	$2,%hi(IFS0CLR)
	li	$3,2			# 0x2
	sw	$3,%lo(IFS0CLR)($2)
	.loc 1 277 0
	lui	$2,%hi(IPC0CLR)
	li	$3,7168			# 0x1c00
	sw	$3,%lo(IPC0CLR)($2)
	.loc 1 278 0
	lui	$2,%hi(IPC0SET)
	li	$3,1024			# 0x400
	sw	$3,%lo(IPC0SET)($2)
	.loc 1 281 0
	lui	$2,%hi(IEC0CLR)
	li	$3,2			# 0x2
	sw	$3,%lo(IEC0CLR)($2)
	.loc 1 282 0
	lui	$2,%hi(IEC0SET)
	li	$3,2			# 0x2
	sw	$3,%lo(IEC0SET)($2)
	.loc 1 286 0
	jal	vApplicationSetupTickTimerInterrupt
	nop

	.loc 1 290 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,0($2)
	sw	$2,%gp_rel(uxSavedTaskStackPointer)($28)
	.loc 1 291 0
	jal	vPortStartFirstTask
	nop

	.loc 1 297 0
	jal	prvTaskExitError
	nop

	.loc 1 299 0
	move	$2,$0
	.loc 1 300 0
	move	$sp,$fp
.LCFI18 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xPortStartScheduler
.LFE8:
	.size	xPortStartScheduler, .-xPortStartScheduler
	.align	2
	.globl	vPortIncrementTick
.LFB9 = .
	.loc 1 304 0
	.set	nomips16
	.set	nomicromips
	.ent	vPortIncrementTick
	.type	vPortIncrementTick, @function
vPortIncrementTick:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI19 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI20 = .
	move	$fp,$sp
.LCFI21 = .
	.loc 1 307 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,16($fp)
	.loc 1 309 0
	jal	xTaskIncrementTick
	nop

	beq	$2,$0,.L12
	nop

	.loc 1 312 0
	li	$2,256			# 0x100
	mfc0	$3,$13,0
	nop
	or	$2,$3,$2
	mtc0	$2,$13,0
	ehb
.L12:
	.loc 1 315 0
	lw	$4,16($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 318 0
	lui	$2,%hi(xISRStack)
	addiu	$4,$2,%lo(xISRStack)
	lui	$2,%hi(ucExpectedStackBytes)
	addiu	$5,$2,%lo(ucExpectedStackBytes)
	li	$6,20			# 0x14
	jal	memcmp
	nop

	beq	$2,$0,.L13
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,318			# 0x13e
	jal	vAssertCalled
	nop

.L13:
	.loc 1 321 0
	lui	$2,%hi(IFS0CLR)
	li	$3,16			# 0x10
	sw	$3,%lo(IFS0CLR)($2)
	.loc 1 322 0
	move	$sp,$fp
.LCFI22 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vPortIncrementTick
.LFE9:
	.size	vPortIncrementTick, .-vPortIncrementTick
	.align	2
	.globl	uxPortSetInterruptMaskFromISR
.LFB10 = .
	.loc 1 326 0
	.set	nomips16
	.set	nomicromips
	.ent	uxPortSetInterruptMaskFromISR
	.type	uxPortSetInterruptMaskFromISR, @function
uxPortSetInterruptMaskFromISR:
	.frame	$fp,16,$31		# vars= 8, regs= 2/0, args= 0, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI23 = .
	sw	$31,12($sp)
	sw	$fp,8($sp)
.LCFI24 = .
	move	$fp,$sp
.LCFI25 = .
	.loc 1 329 0
	di	$2
	ehb
	nop
	.loc 1 330 0
	mfc0	$2,$12,0
	ori	$2,$2,0x1
	sw	$2,0($fp)
	.loc 1 337 0
	lw	$2,0($fp)
	ins	$2,$0,10,7
	ori	$2,$2,0xc00
	mtc0	$2,$12,0
	ehb
	.loc 1 339 0
	lw	$2,0($fp)
	.loc 1 340 0
	move	$sp,$fp
.LCFI26 = .
	lw	$31,12($sp)
	lw	$fp,8($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxPortSetInterruptMaskFromISR
.LFE10:
	.size	uxPortSetInterruptMaskFromISR, .-uxPortSetInterruptMaskFromISR
	.align	2
	.globl	vPortClearInterruptMaskFromISR
.LFB11 = .
	.loc 1 344 0
	.set	nomips16
	.set	nomicromips
	.ent	vPortClearInterruptMaskFromISR
	.type	vPortClearInterruptMaskFromISR, @function
vPortClearInterruptMaskFromISR:
	.frame	$fp,8,$31		# vars= 0, regs= 2/0, args= 0, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI27 = .
	sw	$31,4($sp)
	sw	$fp,0($sp)
.LCFI28 = .
	move	$fp,$sp
.LCFI29 = .
	sw	$4,8($fp)
	.loc 1 345 0
	lw	$2,8($fp)
	mtc0	$2,$12,0
	ehb
	.loc 1 346 0
	move	$sp,$fp
.LCFI30 = .
	lw	$31,4($sp)
	lw	$fp,0($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vPortClearInterruptMaskFromISR
.LFE11:
	.size	vPortClearInterruptMaskFromISR, .-vPortClearInterruptMaskFromISR
	.align	2
	.globl	vPortTaskUsesFPU
.LFB12 = .
	.loc 1 352 0
	.set	nomips16
	.set	nomicromips
	.ent	vPortTaskUsesFPU
	.type	vPortTaskUsesFPU, @function
vPortTaskUsesFPU:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI31 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI32 = .
	move	$fp,$sp
.LCFI33 = .
	.loc 1 355 0
	jal	vTaskEnterCritical
	nop

	.loc 1 358 0
	li	$4,16777216			# 0x1000000
	jal	vPortInitialiseFPSCR
	nop

	.loc 1 362 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(ulTaskHasFPUContext)($28)
	.loc 1 364 0
	jal	vTaskExitCritical
	nop

	.loc 1 365 0
	move	$sp,$fp
.LCFI34 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vPortTaskUsesFPU
.LFE12:
	.size	vPortTaskUsesFPU, .-vPortTaskUsesFPU
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
	.uleb128 0x20
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x18
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
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
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
	.4byte	.LCFI15-.LFB8
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
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
	.4byte	.LCFI19-.LFB9
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
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
	.4byte	.LCFI23-.LFB10
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI27-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI31-.LFB12
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE16:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/proc/p32mz2048efg100.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 4 "c:/users/user/desktop/release/source/include/projdefs.h"
	.file 5 "c:/users/user/desktop/release/source/portable/mplab/pic32mz/portmacro.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0xe77
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"../../../Source/portable/MPLAB/PIC32MZ/port.c\000"
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
	.2byte	0x677
	.4byte	0x34d
	.uleb128 0x4
	.ascii	"CTIF\000"
	.byte	0x2
	.2byte	0x678
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS0IF\000"
	.byte	0x2
	.2byte	0x679
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS1IF\000"
	.byte	0x2
	.2byte	0x67a
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT0IF\000"
	.byte	0x2
	.2byte	0x67b
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T1IF\000"
	.byte	0x2
	.2byte	0x67c
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1EIF\000"
	.byte	0x2
	.2byte	0x67d
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1IF\000"
	.byte	0x2
	.2byte	0x67e
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC1IF\000"
	.byte	0x2
	.2byte	0x67f
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT1IF\000"
	.byte	0x2
	.2byte	0x680
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T2IF\000"
	.byte	0x2
	.2byte	0x681
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2EIF\000"
	.byte	0x2
	.2byte	0x682
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2IF\000"
	.byte	0x2
	.2byte	0x683
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC2IF\000"
	.byte	0x2
	.2byte	0x684
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT2IF\000"
	.byte	0x2
	.2byte	0x685
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T3IF\000"
	.byte	0x2
	.2byte	0x686
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3EIF\000"
	.byte	0x2
	.2byte	0x687
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3IF\000"
	.byte	0x2
	.2byte	0x688
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC3IF\000"
	.byte	0x2
	.2byte	0x689
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT3IF\000"
	.byte	0x2
	.2byte	0x68a
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T4IF\000"
	.byte	0x2
	.2byte	0x68b
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4EIF\000"
	.byte	0x2
	.2byte	0x68c
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4IF\000"
	.byte	0x2
	.2byte	0x68d
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC4IF\000"
	.byte	0x2
	.2byte	0x68e
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT4IF\000"
	.byte	0x2
	.2byte	0x68f
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T5IF\000"
	.byte	0x2
	.2byte	0x690
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5EIF\000"
	.byte	0x2
	.2byte	0x691
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5IF\000"
	.byte	0x2
	.2byte	0x692
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC5IF\000"
	.byte	0x2
	.2byte	0x693
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T6IF\000"
	.byte	0x2
	.2byte	0x694
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6EIF\000"
	.byte	0x2
	.2byte	0x695
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6IF\000"
	.byte	0x2
	.2byte	0x696
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC6IF\000"
	.byte	0x2
	.2byte	0x697
	.4byte	0xaf
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
	.2byte	0x699
	.4byte	0x367
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x69a
	.4byte	0xaf
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
	.2byte	0x676
	.4byte	0x37b
	.uleb128 0x6
	.4byte	0xbf
	.uleb128 0x6
	.4byte	0x34d
	.byte	0
	.uleb128 0x7
	.ascii	"__IFS0bits_t\000"
	.byte	0x2
	.2byte	0x69c
	.4byte	0x367
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x799
	.4byte	0x61e
	.uleb128 0x4
	.ascii	"CTIE\000"
	.byte	0x2
	.2byte	0x79a
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS0IE\000"
	.byte	0x2
	.2byte	0x79b
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"CS1IE\000"
	.byte	0x2
	.2byte	0x79c
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT0IE\000"
	.byte	0x2
	.2byte	0x79d
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T1IE\000"
	.byte	0x2
	.2byte	0x79e
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1EIE\000"
	.byte	0x2
	.2byte	0x79f
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1IE\000"
	.byte	0x2
	.2byte	0x7a0
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC1IE\000"
	.byte	0x2
	.2byte	0x7a1
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT1IE\000"
	.byte	0x2
	.2byte	0x7a2
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T2IE\000"
	.byte	0x2
	.2byte	0x7a3
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2EIE\000"
	.byte	0x2
	.2byte	0x7a4
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC2IE\000"
	.byte	0x2
	.2byte	0x7a5
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC2IE\000"
	.byte	0x2
	.2byte	0x7a6
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT2IE\000"
	.byte	0x2
	.2byte	0x7a7
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T3IE\000"
	.byte	0x2
	.2byte	0x7a8
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3EIE\000"
	.byte	0x2
	.2byte	0x7a9
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC3IE\000"
	.byte	0x2
	.2byte	0x7aa
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC3IE\000"
	.byte	0x2
	.2byte	0x7ab
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT3IE\000"
	.byte	0x2
	.2byte	0x7ac
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T4IE\000"
	.byte	0x2
	.2byte	0x7ad
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4EIE\000"
	.byte	0x2
	.2byte	0x7ae
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC4IE\000"
	.byte	0x2
	.2byte	0x7af
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC4IE\000"
	.byte	0x2
	.2byte	0x7b0
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"INT4IE\000"
	.byte	0x2
	.2byte	0x7b1
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T5IE\000"
	.byte	0x2
	.2byte	0x7b2
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5EIE\000"
	.byte	0x2
	.2byte	0x7b3
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC5IE\000"
	.byte	0x2
	.2byte	0x7b4
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC5IE\000"
	.byte	0x2
	.2byte	0x7b5
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T6IE\000"
	.byte	0x2
	.2byte	0x7b6
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6EIE\000"
	.byte	0x2
	.2byte	0x7b7
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC6IE\000"
	.byte	0x2
	.2byte	0x7b8
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC6IE\000"
	.byte	0x2
	.2byte	0x7b9
	.4byte	0xaf
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
	.2byte	0x7bb
	.4byte	0x638
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x7bc
	.4byte	0xaf
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
	.2byte	0x798
	.4byte	0x64c
	.uleb128 0x6
	.4byte	0x390
	.uleb128 0x6
	.4byte	0x61e
	.byte	0
	.uleb128 0x7
	.ascii	"__IEC0bits_t\000"
	.byte	0x2
	.2byte	0x7be
	.4byte	0x638
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x8d3
	.4byte	0x70b
	.uleb128 0x4
	.ascii	"T1IS\000"
	.byte	0x2
	.2byte	0x8d4
	.4byte	0xaf
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"T1IP\000"
	.byte	0x2
	.2byte	0x8d5
	.4byte	0xaf
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1EIS\000"
	.byte	0x2
	.2byte	0x8d7
	.4byte	0xaf
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1EIP\000"
	.byte	0x2
	.2byte	0x8d8
	.4byte	0xaf
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1IS\000"
	.byte	0x2
	.2byte	0x8da
	.4byte	0xaf
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"IC1IP\000"
	.byte	0x2
	.2byte	0x8db
	.4byte	0xaf
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC1IS\000"
	.byte	0x2
	.2byte	0x8dd
	.4byte	0xaf
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"OC1IP\000"
	.byte	0x2
	.2byte	0x8de
	.4byte	0xaf
	.byte	0x4
	.byte	0x3
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x8e0
	.4byte	0x725
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x8e1
	.4byte	0xaf
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
	.2byte	0x8d2
	.4byte	0x739
	.uleb128 0x6
	.4byte	0x661
	.uleb128 0x6
	.4byte	0x70b
	.byte	0
	.uleb128 0x7
	.ascii	"__IPC1bits_t\000"
	.byte	0x2
	.2byte	0x8e3
	.4byte	0x725
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x21d6
	.4byte	0x7f1
	.uleb128 0x4
	.ascii	"TCS\000"
	.byte	0x2
	.2byte	0x21d8
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TSYNC\000"
	.byte	0x2
	.2byte	0x21d9
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS\000"
	.byte	0x2
	.2byte	0x21db
	.4byte	0xaf
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TGATE\000"
	.byte	0x2
	.2byte	0x21dd
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TWIP\000"
	.byte	0x2
	.2byte	0x21df
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TWDIS\000"
	.byte	0x2
	.2byte	0x21e0
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"SIDL\000"
	.byte	0x2
	.2byte	0x21e1
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"ON\000"
	.byte	0x2
	.2byte	0x21e3
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x21e5
	.4byte	0x825
	.uleb128 0x4
	.ascii	"TCKPS0\000"
	.byte	0x2
	.2byte	0x21e7
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TCKPS1\000"
	.byte	0x2
	.2byte	0x21e8
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x21ea
	.4byte	0x855
	.uleb128 0x4
	.ascii	"TSIDL\000"
	.byte	0x2
	.2byte	0x21ec
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x4
	.ascii	"TON\000"
	.byte	0x2
	.2byte	0x21ee
	.4byte	0xaf
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x2
	.2byte	0x21f0
	.4byte	0x86f
	.uleb128 0x4
	.ascii	"w\000"
	.byte	0x2
	.2byte	0x21f1
	.4byte	0xaf
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
	.2byte	0x21d5
	.4byte	0x88d
	.uleb128 0x6
	.4byte	0x74e
	.uleb128 0x6
	.4byte	0x7f1
	.uleb128 0x6
	.4byte	0x825
	.uleb128 0x6
	.4byte	0x855
	.byte	0
	.uleb128 0x7
	.ascii	"__T1CONbits_t\000"
	.byte	0x2
	.2byte	0x21f3
	.4byte	0x86f
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
	.4byte	0x8eb
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
	.uleb128 0x8
	.ascii	"__uint32_t\000"
	.byte	0x3
	.byte	0x33
	.4byte	0xaf
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.ascii	"long long int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.ascii	"long long unsigned int\000"
	.uleb128 0x8
	.ascii	"TaskFunction_t\000"
	.byte	0x4
	.byte	0x24
	.4byte	0x972
	.uleb128 0x9
	.byte	0x4
	.4byte	0x978
	.uleb128 0xa
	.byte	0x1
	.4byte	0x984
	.uleb128 0xb
	.4byte	0x984
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x8
	.ascii	"StackType_t\000"
	.byte	0x5
	.byte	0x3a
	.4byte	0x91f
	.uleb128 0x8
	.ascii	"BaseType_t\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x8b8
	.uleb128 0x8
	.ascii	"UBaseType_t\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0x8a3
	.uleb128 0x8
	.ascii	"TickType_t\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x91f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0xd
	.4byte	0x9ab
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x9
	.byte	0x4
	.4byte	0x986
	.uleb128 0xe
	.byte	0x1
	.ascii	"pxPortInitialiseStack\000"
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.4byte	0x9e9
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa5d
	.uleb128 0xf
	.ascii	"pxTopOfStack\000"
	.byte	0x1
	.byte	0xae
	.4byte	0x9e9
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xf
	.ascii	"pxCode\000"
	.byte	0x1
	.byte	0xae
	.4byte	0x95c
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xf
	.ascii	"pvParameters\000"
	.byte	0x1
	.byte	0xae
	.4byte	0x984
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x10
	.ascii	"prvTaskExitError\000"
	.byte	0x1
	.byte	0xd2
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa9f
	.uleb128 0x11
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x12
	.ascii	"ulStatus\000"
	.byte	0x1
	.byte	0xdb
	.4byte	0x91f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"vApplicationSetupTickTimerInterrupt\000"
	.byte	0x1
	.byte	0xe9
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xaf1
	.uleb128 0x12
	.ascii	"ulCompareMatch\000"
	.byte	0x1
	.byte	0xeb
	.4byte	0xaf1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.4byte	0x91f
	.uleb128 0x15
	.byte	0x1
	.ascii	"vPortEndScheduler\000"
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.ascii	"xPortStartScheduler\000"
	.byte	0x1
	.2byte	0x105
	.byte	0x1
	.4byte	0x999
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xb6f
	.uleb128 0x17
	.byte	0x1
	.ascii	"vPortStartFirstTask\000"
	.byte	0x1
	.2byte	0x107
	.byte	0x1
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x108
	.4byte	0x984
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii	"vPortIncrementTick\000"
	.byte	0x1
	.2byte	0x12f
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xbb1
	.uleb128 0x1a
	.ascii	"uxSavedStatus\000"
	.byte	0x1
	.2byte	0x131
	.4byte	0x9ab
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.ascii	"uxPortSetInterruptMaskFromISR\000"
	.byte	0x1
	.2byte	0x145
	.byte	0x1
	.4byte	0x9ab
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xbf8
	.uleb128 0x1c
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x147
	.4byte	0x9ab
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.ascii	"vPortClearInterruptMaskFromISR\000"
	.byte	0x1
	.2byte	0x157
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xc3c
	.uleb128 0x1e
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x157
	.4byte	0x9ab
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.ascii	"vPortTaskUsesFPU\000"
	.byte	0x1
	.2byte	0x15f
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xc85
	.uleb128 0x1f
	.byte	0x1
	.ascii	"vPortInitialiseFPSCR\000"
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.4byte	0x91f
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	0x8da
	.4byte	0xc95
	.uleb128 0x21
	.4byte	0x9d0
	.byte	0x13
	.byte	0
	.uleb128 0x12
	.ascii	"ucExpectedStackBytes\000"
	.byte	0x1
	.byte	0x7d
	.4byte	0xcb7
	.byte	0x5
	.byte	0x3
	.4byte	ucExpectedStackBytes
	.uleb128 0x14
	.4byte	0xc85
	.uleb128 0x22
	.ascii	"IFS0bits\000"
	.byte	0x2
	.2byte	0x69d
	.ascii	"IFS0\000"
	.4byte	0xcd4
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x37b
	.uleb128 0x23
	.ascii	"IFS0CLR\000"
	.byte	0x2
	.2byte	0x69e
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0xaf
	.uleb128 0x22
	.ascii	"IEC0bits\000"
	.byte	0x2
	.2byte	0x7bf
	.ascii	"IEC0\000"
	.4byte	0xd08
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x64c
	.uleb128 0x23
	.ascii	"IEC0CLR\000"
	.byte	0x2
	.2byte	0x7c0
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"IEC0SET\000"
	.byte	0x2
	.2byte	0x7c1
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"IPC0CLR\000"
	.byte	0x2
	.2byte	0x8cd
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.ascii	"IPC0SET\000"
	.byte	0x2
	.2byte	0x8ce
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.ascii	"IPC1bits\000"
	.byte	0x2
	.2byte	0x8e4
	.ascii	"IPC1\000"
	.4byte	0xd6d
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x739
	.uleb128 0x23
	.ascii	"T1CON\000"
	.byte	0x2
	.2byte	0x21d4
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.ascii	"T1CONbits\000"
	.byte	0x2
	.2byte	0x21f4
	.ascii	"T1CON\000"
	.4byte	0xd9c
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.4byte	0x88d
	.uleb128 0x23
	.ascii	"PR1\000"
	.byte	0x2
	.2byte	0x21fe
	.4byte	0xceb
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.ascii	"uxInterruptNesting\000"
	.byte	0x1
	.byte	0x95
	.4byte	0x9dc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	uxInterruptNesting
	.uleb128 0x24
	.ascii	"uxSavedTaskStackPointer\000"
	.byte	0x1
	.byte	0x98
	.4byte	0x9ab
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	uxSavedTaskStackPointer
	.uleb128 0x20
	.4byte	0x986
	.4byte	0xe07
	.uleb128 0x25
	.4byte	0x9d0
	.2byte	0x18f
	.byte	0
	.uleb128 0x24
	.ascii	"xISRStack\000"
	.byte	0x1
	.byte	0x9b
	.4byte	0xdf6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xISRStack
	.uleb128 0x24
	.ascii	"xISRStackTop\000"
	.byte	0x1
	.byte	0xa1
	.4byte	0xe3a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	xISRStackTop
	.uleb128 0x14
	.4byte	0xe3f
	.uleb128 0x9
	.byte	0x4
	.4byte	0xe45
	.uleb128 0x14
	.4byte	0x986
	.uleb128 0x24
	.ascii	"ulTaskHasFPUContext\000"
	.byte	0x1
	.byte	0xa6
	.4byte	0x91f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	ulTaskHasFPUContext
	.uleb128 0x18
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x108
	.4byte	0x984
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1d
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1f
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.ascii	"uxSavedStatusRegister\000"
.LASF1:
	.ascii	"pxCurrentTCB\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
