	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"../../../Source/queue.c\000"
	.section	.text,code
	.align	2
	.globl	xQueueGenericReset
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/source/queue.c"
	.loc 1 249 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueGenericReset
	.type	xQueueGenericReset, @function
xQueueGenericReset:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
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
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 250 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 252 0
	lw	$2,16($fp)
	bne	$2,$0,.L2
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,252			# 0xfc
	jal	vAssertCalled
	nop

.L2:
	.loc 1 254 0
	jal	vTaskEnterCritical
	nop

	.loc 1 256 0
	lw	$2,16($fp)
	lw	$2,0($2)
	lw	$3,16($fp)
	lw	$4,60($3)
	lw	$3,16($fp)
	lw	$3,64($3)
	mult	$4,$3
	mflo	$4
	addu	$3,$2,$4
	lw	$2,16($fp)
	sw	$3,4($2)
	.loc 1 257 0
	lw	$2,16($fp)
	sw	$0,56($2)
	.loc 1 258 0
	lw	$2,16($fp)
	lw	$3,0($2)
	lw	$2,16($fp)
	sw	$3,8($2)
	.loc 1 259 0
	lw	$2,16($fp)
	lw	$2,0($2)
	lw	$3,16($fp)
	lw	$3,60($3)
	addiu	$4,$3,-1
	lw	$3,16($fp)
	lw	$3,64($3)
	mult	$4,$3
	mflo	$4
	addu	$3,$2,$4
	lw	$2,16($fp)
	sw	$3,12($2)
	.loc 1 260 0
	lw	$2,16($fp)
	li	$3,-1			# 0xffffffffffffffff
	sb	$3,68($2)
	.loc 1 261 0
	lw	$2,16($fp)
	li	$3,-1			# 0xffffffffffffffff
	sb	$3,69($2)
	.loc 1 263 0
	lw	$2,36($fp)
	bne	$2,$0,.L3
	nop

	.loc 1 270 0
	lw	$2,16($fp)
	lw	$2,16($2)
	beq	$2,$0,.L4
	nop

	.loc 1 272 0
	lw	$2,16($fp)
	addiu	$2,$2,16
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L4
	nop

.LBB2 = .
	.loc 1 274 0
	mfc0	$2,$13,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	ori	$2,$2,0x100
	sw	$2,20($fp)
	lw	$2,20($fp)
	mtc0	$2,$13,0
	ehb
.LBE2 = .
	j	.L4
	nop

.L3:
	.loc 1 289 0
	lw	$2,16($fp)
	addiu	$2,$2,16
	move	$4,$2
	jal	vListInitialise
	nop

	.loc 1 290 0
	lw	$2,16($fp)
	addiu	$2,$2,36
	move	$4,$2
	jal	vListInitialise
	nop

.L4:
	.loc 1 293 0
	jal	vTaskExitCritical
	nop

	.loc 1 297 0
	li	$2,1			# 0x1
	.loc 1 298 0
	move	$sp,$fp
.LCFI3 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueGenericReset
.LFE4:
	.size	xQueueGenericReset, .-xQueueGenericReset
	.align	2
	.globl	xQueueGenericCreate
.LFB5 = .
	.loc 1 360 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueGenericCreate
	.type	xQueueGenericCreate, @function
xQueueGenericCreate:
	.frame	$fp,48,$31		# vars= 16, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI4 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	move	$2,$6
	sb	$2,56($fp)
	.loc 1 365 0
	lw	$2,48($fp)
	bne	$2,$0,.L7
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,365			# 0x16d
	jal	vAssertCalled
	nop

.L7:
	.loc 1 367 0
	lw	$2,52($fp)
	bne	$2,$0,.L8
	nop

	.loc 1 370 0
	sw	$0,24($fp)
	j	.L9
	nop

.L8:
	.loc 1 376 0
	lw	$3,48($fp)
	lw	$2,52($fp)
	mult	$3,$2
	mflo	$2
	sw	$2,24($fp)
.L9:
	.loc 1 379 0
	lw	$2,24($fp)
	addiu	$2,$2,76
	move	$4,$2
	jal	pvPortMalloc
	nop

	sw	$2,28($fp)
	.loc 1 381 0
	lw	$2,28($fp)
	beq	$2,$0,.L10
	nop

	.loc 1 385 0
	lw	$2,28($fp)
	addiu	$2,$2,76
	sw	$2,32($fp)
	.loc 1 396 0
	lbu	$2,56($fp)
	lw	$3,28($fp)
	sw	$3,16($sp)
	lw	$4,48($fp)
	lw	$5,52($fp)
	lw	$6,32($fp)
	move	$7,$2
	jal	prvInitialiseNewQueue
	nop

.L10:
	.loc 1 403 0
	lw	$2,28($fp)
	.loc 1 404 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueGenericCreate
.LFE5:
	.size	xQueueGenericCreate, .-xQueueGenericCreate
	.align	2
.LFB6 = .
	.loc 1 410 0
	.set	nomips16
	.set	nomicromips
	.ent	prvInitialiseNewQueue
	.type	prvInitialiseNewQueue, @function
prvInitialiseNewQueue:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI8 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	move	$2,$7
	sb	$2,36($fp)
	.loc 1 415 0
	lw	$2,28($fp)
	bne	$2,$0,.L13
	nop

	.loc 1 421 0
	lw	$2,40($fp)
	lw	$3,40($fp)
	sw	$3,0($2)
	j	.L14
	nop

.L13:
	.loc 1 426 0
	lw	$2,40($fp)
	lw	$3,32($fp)
	sw	$3,0($2)
.L14:
	.loc 1 431 0
	lw	$2,40($fp)
	lw	$3,24($fp)
	sw	$3,60($2)
	.loc 1 432 0
	lw	$2,40($fp)
	lw	$3,28($fp)
	sw	$3,64($2)
	.loc 1 433 0
	lw	$4,40($fp)
	li	$5,1			# 0x1
	jal	xQueueGenericReset
	nop

	.loc 1 443 0
	lw	$2,40($fp)
	sw	$0,72($2)
	.loc 1 448 0
	move	$sp,$fp
.LCFI11 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvInitialiseNewQueue
.LFE6:
	.size	prvInitialiseNewQueue, .-prvInitialiseNewQueue
	.align	2
.LFB7 = .
	.loc 1 454 0
	.set	nomips16
	.set	nomicromips
	.ent	prvInitialiseMutex
	.type	prvInitialiseMutex, @function
prvInitialiseMutex:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI12 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	sw	$4,24($fp)
	.loc 1 455 0
	lw	$2,24($fp)
	beq	$2,$0,.L15
	nop

	.loc 1 461 0
	lw	$2,24($fp)
	sw	$0,4($2)
	.loc 1 462 0
	lw	$2,24($fp)
	sw	$0,0($2)
	.loc 1 465 0
	lw	$2,24($fp)
	sw	$0,12($2)
	.loc 1 470 0
	lw	$4,24($fp)
	move	$5,$0
	move	$6,$0
	move	$7,$0
	jal	xQueueGenericSend
	nop

.L15:
	.loc 1 476 0
	move	$sp,$fp
.LCFI15 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvInitialiseMutex
.LFE7:
	.size	prvInitialiseMutex, .-prvInitialiseMutex
	.align	2
	.globl	xQueueCreateMutex
.LFB8 = .
	.loc 1 484 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueCreateMutex
	.type	xQueueCreateMutex, @function
xQueueCreateMutex:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI16 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
	move	$2,$4
	sb	$2,40($fp)
	.loc 1 486 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	sw	$0,20($fp)
	.loc 1 488 0
	lbu	$2,40($fp)
	lw	$4,16($fp)
	lw	$5,20($fp)
	move	$6,$2
	jal	xQueueGenericCreate
	nop

	sw	$2,24($fp)
	.loc 1 489 0
	lw	$4,24($fp)
	jal	prvInitialiseMutex
	nop

	.loc 1 491 0
	lw	$2,24($fp)
	.loc 1 492 0
	move	$sp,$fp
.LCFI19 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueCreateMutex
.LFE8:
	.size	xQueueCreateMutex, .-xQueueCreateMutex
	.align	2
	.globl	xQueueGiveMutexRecursive
.LFB9 = .
	.loc 1 576 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueGiveMutexRecursive
	.type	xQueueGiveMutexRecursive, @function
xQueueGiveMutexRecursive:
	.frame	$fp,40,$31		# vars= 8, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI20 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
.LCFI21 = .
	move	$fp,$sp
.LCFI22 = .
	sw	$4,40($fp)
	.loc 1 578 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 580 0
	lw	$2,20($fp)
	bne	$2,$0,.L20
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,580			# 0x244
	jal	vAssertCalled
	nop

.L20:
	.loc 1 588 0
	lw	$2,20($fp)
	lw	$16,4($2)
	jal	xTaskGetCurrentTaskHandle
	nop

	bne	$16,$2,.L21
	nop

	.loc 1 597 0
	lw	$2,20($fp)
	lw	$2,12($2)
	addiu	$3,$2,-1
	lw	$2,20($fp)
	sw	$3,12($2)
	.loc 1 600 0
	lw	$2,20($fp)
	lw	$2,12($2)
	bne	$2,$0,.L22
	nop

	.loc 1 604 0
	lw	$4,20($fp)
	move	$5,$0
	move	$6,$0
	move	$7,$0
	jal	xQueueGenericSend
	nop

.L22:
	.loc 1 611 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L23
	nop

.L21:
	.loc 1 617 0
	sw	$0,16($fp)
.L23:
	.loc 1 622 0
	lw	$2,16($fp)
	.loc 1 623 0
	move	$sp,$fp
.LCFI23 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueGiveMutexRecursive
.LFE9:
	.size	xQueueGiveMutexRecursive, .-xQueueGiveMutexRecursive
	.align	2
	.globl	xQueueTakeMutexRecursive
.LFB10 = .
	.loc 1 631 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueTakeMutexRecursive
	.type	xQueueTakeMutexRecursive, @function
xQueueTakeMutexRecursive:
	.frame	$fp,40,$31		# vars= 8, regs= 3/0, args= 16, gp= 0
	.mask	0xc0010000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI24 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
	sw	$16,28($sp)
.LCFI25 = .
	move	$fp,$sp
.LCFI26 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 633 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 635 0
	lw	$2,20($fp)
	bne	$2,$0,.L26
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,635			# 0x27b
	jal	vAssertCalled
	nop

.L26:
	.loc 1 642 0
	lw	$2,20($fp)
	lw	$16,4($2)
	jal	xTaskGetCurrentTaskHandle
	nop

	bne	$16,$2,.L27
	nop

	.loc 1 644 0
	lw	$2,20($fp)
	lw	$2,12($2)
	addiu	$3,$2,1
	lw	$2,20($fp)
	sw	$3,12($2)
	.loc 1 645 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L28
	nop

.L27:
	.loc 1 649 0
	lw	$4,20($fp)
	lw	$5,44($fp)
	jal	xQueueSemaphoreTake
	nop

	sw	$2,16($fp)
	.loc 1 654 0
	lw	$2,16($fp)
	beq	$2,$0,.L28
	nop

	.loc 1 656 0
	lw	$2,20($fp)
	lw	$2,12($2)
	addiu	$3,$2,1
	lw	$2,20($fp)
	sw	$3,12($2)
.L28:
	.loc 1 664 0
	lw	$2,16($fp)
	.loc 1 665 0
	move	$sp,$fp
.LCFI27 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	lw	$16,28($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueTakeMutexRecursive
.LFE10:
	.size	xQueueTakeMutexRecursive, .-xQueueTakeMutexRecursive
	.align	2
	.globl	xQueueCreateCountingSemaphore
.LFB11 = .
	.loc 1 701 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueCreateCountingSemaphore
	.type	xQueueCreateCountingSemaphore, @function
xQueueCreateCountingSemaphore:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI28 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI29 = .
	move	$fp,$sp
.LCFI30 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 704 0
	lw	$2,32($fp)
	bne	$2,$0,.L31
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,704			# 0x2c0
	jal	vAssertCalled
	nop

.L31:
	.loc 1 705 0
	lw	$3,36($fp)
	lw	$2,32($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L32
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,705			# 0x2c1
	jal	vAssertCalled
	nop

.L32:
	.loc 1 707 0
	lw	$4,32($fp)
	move	$5,$0
	li	$6,2			# 0x2
	jal	xQueueGenericCreate
	nop

	sw	$2,16($fp)
	.loc 1 709 0
	lw	$2,16($fp)
	beq	$2,$0,.L33
	nop

	.loc 1 711 0
	lw	$2,16($fp)
	lw	$3,36($fp)
	sw	$3,56($2)
.L33:
	.loc 1 720 0
	lw	$2,16($fp)
	.loc 1 721 0
	move	$sp,$fp
.LCFI31 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueCreateCountingSemaphore
.LFE11:
	.size	xQueueCreateCountingSemaphore, .-xQueueCreateCountingSemaphore
	.align	2
	.globl	xQueueGenericSend
.LFB12 = .
	.loc 1 727 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueGenericSend
	.type	xQueueGenericSend, @function
xQueueGenericSend:
	.frame	$fp,64,$31		# vars= 40, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
.LCFI32 = .
	sw	$31,60($sp)
	sw	$fp,56($sp)
.LCFI33 = .
	move	$fp,$sp
.LCFI34 = .
	sw	$4,64($fp)
	sw	$5,68($fp)
	sw	$6,72($fp)
	sw	$7,76($fp)
	.loc 1 728 0
	sw	$0,16($fp)
	.loc 1 730 0
	lw	$2,64($fp)
	sw	$2,20($fp)
	.loc 1 732 0
	lw	$2,20($fp)
	bne	$2,$0,.L36
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,732			# 0x2dc
	jal	vAssertCalled
	nop

.L36:
	.loc 1 733 0
	lw	$2,68($fp)
	bne	$2,$0,.L37
	nop

	lw	$2,20($fp)
	lw	$2,64($2)
	bne	$2,$0,.L38
	nop

.L37:
	li	$2,1			# 0x1
	j	.L39
	nop

.L38:
	move	$2,$0
.L39:
	bne	$2,$0,.L40
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,733			# 0x2dd
	jal	vAssertCalled
	nop

.L40:
	.loc 1 734 0
	lw	$3,76($fp)
	li	$2,2			# 0x2
	bne	$3,$2,.L41
	nop

	lw	$2,20($fp)
	lw	$3,60($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L42
	nop

.L41:
	li	$2,1			# 0x1
	j	.L43
	nop

.L42:
	move	$2,$0
.L43:
	bne	$2,$0,.L44
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,734			# 0x2de
	jal	vAssertCalled
	nop

.L44:
	.loc 1 737 0
	jal	xTaskGetSchedulerState
	nop

	bne	$2,$0,.L45
	nop

	lw	$2,72($fp)
	bne	$2,$0,.L46
	nop

.L45:
	li	$2,1			# 0x1
	j	.L47
	nop

.L46:
	move	$2,$0
.L47:
	bne	$2,$0,.L48
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,737			# 0x2e1
	jal	vAssertCalled
	nop

.L48:
	.loc 1 747 0
	jal	vTaskEnterCritical
	nop

	.loc 1 753 0
	lw	$2,20($fp)
	lw	$3,56($2)
	lw	$2,20($fp)
	lw	$2,60($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L49
	nop

	lw	$3,76($fp)
	li	$2,2			# 0x2
	bne	$3,$2,.L50
	nop

.L49:
	.loc 1 756 0
	lw	$4,20($fp)
	lw	$5,68($fp)
	lw	$6,76($fp)
	jal	prvCopyDataToQueue
	nop

	sw	$2,28($fp)
	.loc 1 760 0
	lw	$2,20($fp)
	lw	$2,72($2)
	beq	$2,$0,.L51
	nop

	.loc 1 762 0
	lw	$4,20($fp)
	lw	$5,76($fp)
	jal	prvNotifyQueueSetContainer
	nop

	beq	$2,$0,.L52
	nop

.LBB3 = .
	.loc 1 767 0
	mfc0	$2,$13,0
	sw	$2,32($fp)
	lw	$2,32($fp)
	ori	$2,$2,0x100
	sw	$2,32($fp)
	lw	$2,32($fp)
	mtc0	$2,$13,0
	ehb
.LBE3 = .
	j	.L52
	nop

.L51:
	.loc 1 778 0
	lw	$2,20($fp)
	lw	$2,36($2)
	beq	$2,$0,.L53
	nop

	.loc 1 780 0
	lw	$2,20($fp)
	addiu	$2,$2,36
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L52
	nop

.LBB4 = .
	.loc 1 786 0
	mfc0	$2,$13,0
	sw	$2,36($fp)
	lw	$2,36($fp)
	ori	$2,$2,0x100
	sw	$2,36($fp)
	lw	$2,36($fp)
	mtc0	$2,$13,0
	ehb
.LBE4 = .
	j	.L52
	nop

.L53:
	.loc 1 793 0
	lw	$2,28($fp)
	beq	$2,$0,.L52
	nop

.LBB5 = .
	.loc 1 799 0
	mfc0	$2,$13,0
	sw	$2,40($fp)
	lw	$2,40($fp)
	ori	$2,$2,0x100
	sw	$2,40($fp)
	lw	$2,40($fp)
	mtc0	$2,$13,0
	ehb
.L52:
.LBE5 = .
	.loc 1 841 0
	jal	vTaskExitCritical
	nop

	.loc 1 842 0
	li	$2,1			# 0x1
	j	.L64
	nop

.L50:
	.loc 1 846 0
	lw	$2,72($fp)
	bne	$2,$0,.L55
	nop

	.loc 1 850 0
	jal	vTaskExitCritical
	nop

	.loc 1 855 0
	move	$2,$0
	j	.L64
	nop

.L55:
	.loc 1 857 0
	lw	$2,16($fp)
	bne	$2,$0,.L56
	nop

	.loc 1 861 0
	addiu	$2,$fp,44
	move	$4,$2
	jal	vTaskInternalSetTimeOutState
	nop

	.loc 1 862 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L56:
	.loc 1 871 0
	jal	vTaskExitCritical
	nop

	.loc 1 876 0
	jal	vTaskSuspendAll
	nop

	.loc 1 877 0
	jal	vTaskEnterCritical
	nop

	lw	$2,20($fp)
	lbu	$2,68($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L57
	nop

	lw	$2,20($fp)
	sb	$0,68($2)
.L57:
	lw	$2,20($fp)
	lbu	$2,69($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L58
	nop

	lw	$2,20($fp)
	sb	$0,69($2)
.L58:
	jal	vTaskExitCritical
	nop

	.loc 1 880 0
	addiu	$3,$fp,44
	addiu	$2,$fp,72
	move	$4,$3
	move	$5,$2
	jal	xTaskCheckForTimeOut
	nop

	bne	$2,$0,.L59
	nop

	.loc 1 882 0
	lw	$4,20($fp)
	jal	prvIsQueueFull
	nop

	beq	$2,$0,.L60
	nop

	.loc 1 885 0
	lw	$2,20($fp)
	addiu	$3,$2,16
	lw	$2,72($fp)
	move	$4,$3
	move	$5,$2
	jal	vTaskPlaceOnEventList
	nop

	.loc 1 892 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 899 0
	jal	xTaskResumeAll
	nop

	bne	$2,$0,.L63
	nop

.LBB6 = .
	.loc 1 901 0
	mfc0	$2,$13,0
	sw	$2,24($fp)
	lw	$2,24($fp)
	ori	$2,$2,0x100
	sw	$2,24($fp)
	lw	$2,24($fp)
	mtc0	$2,$13,0
	ehb
.LBE6 = .
	j	.L63
	nop

.L60:
	.loc 1 907 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 908 0
	jal	xTaskResumeAll
	nop

	.loc 1 920 0
	j	.L48
	nop

.L59:
	.loc 1 914 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 915 0
	jal	xTaskResumeAll
	nop

	.loc 1 918 0
	move	$2,$0
	j	.L64
	nop

.L63:
	.loc 1 920 0
	j	.L48
	nop

.L64:
	.loc 1 921 0
	move	$sp,$fp
.LCFI35 = .
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueGenericSend
.LFE12:
	.size	xQueueGenericSend, .-xQueueGenericSend
	.align	2
	.globl	xQueueGenericSendFromISR
.LFB13 = .
	.loc 1 925 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueGenericSendFromISR
	.type	xQueueGenericSendFromISR, @function
xQueueGenericSendFromISR:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI36 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI37 = .
	move	$fp,$sp
.LCFI38 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	.loc 1 928 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 930 0
	lw	$2,20($fp)
	bne	$2,$0,.L66
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,930			# 0x3a2
	jal	vAssertCalled
	nop

.L66:
	.loc 1 931 0
	lw	$2,44($fp)
	bne	$2,$0,.L67
	nop

	lw	$2,20($fp)
	lw	$2,64($2)
	bne	$2,$0,.L68
	nop

.L67:
	li	$2,1			# 0x1
	j	.L69
	nop

.L68:
	move	$2,$0
.L69:
	bne	$2,$0,.L70
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,931			# 0x3a3
	jal	vAssertCalled
	nop

.L70:
	.loc 1 932 0
	lw	$3,52($fp)
	li	$2,2			# 0x2
	bne	$3,$2,.L71
	nop

	lw	$2,20($fp)
	lw	$3,60($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L72
	nop

.L71:
	li	$2,1			# 0x1
	j	.L73
	nop

.L72:
	move	$2,$0
.L73:
	bne	$2,$0,.L74
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,932			# 0x3a4
	jal	vAssertCalled
	nop

.L74:
	.loc 1 955 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,24($fp)
	.loc 1 957 0
	lw	$2,20($fp)
	lw	$3,56($2)
	lw	$2,20($fp)
	lw	$2,60($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L75
	nop

	lw	$3,52($fp)
	li	$2,2			# 0x2
	bne	$3,$2,.L76
	nop

.L75:
.LBB7 = .
	.loc 1 959 0
	lw	$2,20($fp)
	lbu	$2,69($2)
	sb	$2,28($fp)
	.loc 1 968 0
	lw	$4,20($fp)
	lw	$5,44($fp)
	lw	$6,52($fp)
	jal	prvCopyDataToQueue
	nop

	.loc 1 972 0
	lb	$3,28($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L77
	nop

	.loc 1 976 0
	lw	$2,20($fp)
	lw	$2,72($2)
	beq	$2,$0,.L78
	nop

	.loc 1 978 0
	lw	$4,20($fp)
	lw	$5,52($fp)
	jal	prvNotifyQueueSetContainer
	nop

	beq	$2,$0,.L79
	nop

	.loc 1 983 0
	lw	$2,48($fp)
	beq	$2,$0,.L79
	nop

	.loc 1 985 0
	lw	$2,48($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L79
	nop

.L78:
	.loc 1 999 0
	lw	$2,20($fp)
	lw	$2,36($2)
	beq	$2,$0,.L79
	nop

	.loc 1 1001 0
	lw	$2,20($fp)
	addiu	$2,$2,36
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L79
	nop

	.loc 1 1005 0
	lw	$2,48($fp)
	beq	$2,$0,.L79
	nop

	.loc 1 1007 0
	lw	$2,48($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L79
	nop

.L77:
	.loc 1 1058 0
	lbu	$2,28($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	seb	$3,$2
	lw	$2,20($fp)
	sb	$3,69($2)
.L79:
	.loc 1 1061 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.LBE7 = .
	.loc 1 958 0
	j	.L80
	nop

.L76:
	.loc 1 1066 0
	sw	$0,16($fp)
.L80:
	.loc 1 1069 0
	lw	$4,24($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 1071 0
	lw	$2,16($fp)
	.loc 1 1072 0
	move	$sp,$fp
.LCFI39 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueGenericSendFromISR
.LFE13:
	.size	xQueueGenericSendFromISR, .-xQueueGenericSendFromISR
	.align	2
	.globl	xQueueGiveFromISR
.LFB14 = .
	.loc 1 1076 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueGiveFromISR
	.type	xQueueGiveFromISR, @function
xQueueGiveFromISR:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI40 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI41 = .
	move	$fp,$sp
.LCFI42 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	.loc 1 1079 0
	lw	$2,48($fp)
	sw	$2,20($fp)
	.loc 1 1087 0
	lw	$2,20($fp)
	bne	$2,$0,.L83
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1087			# 0x43f
	jal	vAssertCalled
	nop

.L83:
	.loc 1 1091 0
	lw	$2,20($fp)
	lw	$2,64($2)
	beq	$2,$0,.L84
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1091			# 0x443
	jal	vAssertCalled
	nop

.L84:
	.loc 1 1096 0
	lw	$2,20($fp)
	lw	$2,0($2)
	bne	$2,$0,.L85
	nop

	lw	$2,20($fp)
	lw	$2,4($2)
	bne	$2,$0,.L86
	nop

.L85:
	li	$2,1			# 0x1
	j	.L87
	nop

.L86:
	move	$2,$0
.L87:
	bne	$2,$0,.L88
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1096			# 0x448
	jal	vAssertCalled
	nop

.L88:
	.loc 1 1114 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,24($fp)
.LBB8 = .
	.loc 1 1116 0
	lw	$2,20($fp)
	lw	$2,56($2)
	sw	$2,28($fp)
	.loc 1 1121 0
	lw	$2,20($fp)
	lw	$3,60($2)
	lw	$2,28($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L89
	nop

.LBB9 = .
	.loc 1 1123 0
	lw	$2,20($fp)
	lbu	$2,69($2)
	sb	$2,32($fp)
	.loc 1 1133 0
	lw	$2,28($fp)
	addiu	$3,$2,1
	lw	$2,20($fp)
	sw	$3,56($2)
	.loc 1 1137 0
	lb	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L90
	nop

	.loc 1 1141 0
	lw	$2,20($fp)
	lw	$2,72($2)
	beq	$2,$0,.L91
	nop

	.loc 1 1143 0
	lw	$4,20($fp)
	move	$5,$0
	jal	prvNotifyQueueSetContainer
	nop

	beq	$2,$0,.L92
	nop

	.loc 1 1148 0
	lw	$2,52($fp)
	beq	$2,$0,.L92
	nop

	.loc 1 1150 0
	lw	$2,52($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L92
	nop

.L91:
	.loc 1 1164 0
	lw	$2,20($fp)
	lw	$2,36($2)
	beq	$2,$0,.L92
	nop

	.loc 1 1166 0
	lw	$2,20($fp)
	addiu	$2,$2,36
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L92
	nop

	.loc 1 1170 0
	lw	$2,52($fp)
	beq	$2,$0,.L92
	nop

	.loc 1 1172 0
	lw	$2,52($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L92
	nop

.L90:
	.loc 1 1223 0
	lbu	$2,32($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	seb	$3,$2
	lw	$2,20($fp)
	sb	$3,69($2)
.L92:
	.loc 1 1226 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.LBE9 = .
	j	.L93
	nop

.L89:
	.loc 1 1231 0
	sw	$0,16($fp)
.L93:
.LBE8 = .
	.loc 1 1234 0
	lw	$4,24($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 1236 0
	lw	$2,16($fp)
	.loc 1 1237 0
	move	$sp,$fp
.LCFI43 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueGiveFromISR
.LFE14:
	.size	xQueueGiveFromISR, .-xQueueGiveFromISR
	.align	2
	.globl	xQueueReceive
.LFB15 = .
	.loc 1 1241 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueReceive
	.type	xQueueReceive, @function
xQueueReceive:
	.frame	$fp,56,$31		# vars= 32, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
.LCFI44 = .
	sw	$31,52($sp)
	sw	$fp,48($sp)
.LCFI45 = .
	move	$fp,$sp
.LCFI46 = .
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	.loc 1 1242 0
	sw	$0,16($fp)
	.loc 1 1244 0
	lw	$2,56($fp)
	sw	$2,20($fp)
	.loc 1 1247 0
	lw	$2,20($fp)
	bne	$2,$0,.L96
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1247			# 0x4df
	jal	vAssertCalled
	nop

.L96:
	.loc 1 1251 0
	lw	$2,60($fp)
	bne	$2,$0,.L97
	nop

	lw	$2,20($fp)
	lw	$2,64($2)
	bne	$2,$0,.L98
	nop

.L97:
	li	$2,1			# 0x1
	j	.L99
	nop

.L98:
	move	$2,$0
.L99:
	bne	$2,$0,.L100
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1251			# 0x4e3
	jal	vAssertCalled
	nop

.L100:
	.loc 1 1256 0
	jal	xTaskGetSchedulerState
	nop

	bne	$2,$0,.L101
	nop

	lw	$2,64($fp)
	bne	$2,$0,.L102
	nop

.L101:
	li	$2,1			# 0x1
	j	.L103
	nop

.L102:
	move	$2,$0
.L103:
	bne	$2,$0,.L104
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1256			# 0x4e8
	jal	vAssertCalled
	nop

.L104:
	.loc 1 1267 0
	jal	vTaskEnterCritical
	nop

.LBB10 = .
	.loc 1 1269 0
	lw	$2,20($fp)
	lw	$2,56($2)
	sw	$2,24($fp)
	.loc 1 1273 0
	lw	$2,24($fp)
	beq	$2,$0,.L105
	nop

	.loc 1 1276 0
	lw	$4,20($fp)
	lw	$5,60($fp)
	jal	prvCopyDataFromQueue
	nop

	.loc 1 1278 0
	lw	$2,24($fp)
	addiu	$3,$2,-1
	lw	$2,20($fp)
	sw	$3,56($2)
	.loc 1 1283 0
	lw	$2,20($fp)
	lw	$2,16($2)
	beq	$2,$0,.L106
	nop

	.loc 1 1285 0
	lw	$2,20($fp)
	addiu	$2,$2,16
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L106
	nop

.LBB11 = .
	.loc 1 1287 0
	mfc0	$2,$13,0
	sw	$2,28($fp)
	lw	$2,28($fp)
	ori	$2,$2,0x100
	sw	$2,28($fp)
	lw	$2,28($fp)
	mtc0	$2,$13,0
	ehb
.L106:
.LBE11 = .
	.loc 1 1299 0
	jal	vTaskExitCritical
	nop

	.loc 1 1300 0
	li	$2,1			# 0x1
	j	.L116
	nop

.L105:
	.loc 1 1304 0
	lw	$2,64($fp)
	bne	$2,$0,.L108
	nop

	.loc 1 1308 0
	jal	vTaskExitCritical
	nop

	.loc 1 1310 0
	move	$2,$0
	j	.L116
	nop

.L108:
	.loc 1 1312 0
	lw	$2,16($fp)
	bne	$2,$0,.L109
	nop

	.loc 1 1316 0
	addiu	$2,$fp,36
	move	$4,$2
	jal	vTaskInternalSetTimeOutState
	nop

	.loc 1 1317 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L109:
.LBE10 = .
	.loc 1 1326 0
	jal	vTaskExitCritical
	nop

	.loc 1 1331 0
	jal	vTaskSuspendAll
	nop

	.loc 1 1332 0
	jal	vTaskEnterCritical
	nop

	lw	$2,20($fp)
	lbu	$2,68($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L110
	nop

	lw	$2,20($fp)
	sb	$0,68($2)
.L110:
	lw	$2,20($fp)
	lbu	$2,69($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L111
	nop

	lw	$2,20($fp)
	sb	$0,69($2)
.L111:
	jal	vTaskExitCritical
	nop

	.loc 1 1335 0
	addiu	$3,$fp,36
	addiu	$2,$fp,64
	move	$4,$3
	move	$5,$2
	jal	xTaskCheckForTimeOut
	nop

	bne	$2,$0,.L112
	nop

	.loc 1 1339 0
	lw	$4,20($fp)
	jal	prvIsQueueEmpty
	nop

	beq	$2,$0,.L113
	nop

	.loc 1 1342 0
	lw	$2,20($fp)
	addiu	$3,$2,36
	lw	$2,64($fp)
	move	$4,$3
	move	$5,$2
	jal	vTaskPlaceOnEventList
	nop

	.loc 1 1343 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1344 0
	jal	xTaskResumeAll
	nop

	bne	$2,$0,.L115
	nop

.LBB12 = .
	.loc 1 1346 0
	mfc0	$2,$13,0
	sw	$2,32($fp)
	lw	$2,32($fp)
	ori	$2,$2,0x100
	sw	$2,32($fp)
	lw	$2,32($fp)
	mtc0	$2,$13,0
	ehb
.LBE12 = .
	j	.L115
	nop

.L113:
	.loc 1 1357 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1358 0
	jal	xTaskResumeAll
	nop

	.loc 1 1378 0
	j	.L104
	nop

.L112:
	.loc 1 1365 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1366 0
	jal	xTaskResumeAll
	nop

	.loc 1 1368 0
	lw	$4,20($fp)
	jal	prvIsQueueEmpty
	nop

	beq	$2,$0,.L115
	nop

	.loc 1 1371 0
	move	$2,$0
	j	.L116
	nop

.L115:
	.loc 1 1378 0
	j	.L104
	nop

.L116:
	.loc 1 1379 0
	move	$sp,$fp
.LCFI47 = .
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueReceive
.LFE15:
	.size	xQueueReceive, .-xQueueReceive
	.align	2
	.globl	xQueueSemaphoreTake
.LFB16 = .
	.loc 1 1383 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueSemaphoreTake
	.type	xQueueSemaphoreTake, @function
xQueueSemaphoreTake:
	.frame	$fp,64,$31		# vars= 40, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
.LCFI48 = .
	sw	$31,60($sp)
	sw	$fp,56($sp)
.LCFI49 = .
	move	$fp,$sp
.LCFI50 = .
	sw	$4,64($fp)
	sw	$5,68($fp)
	.loc 1 1384 0
	sw	$0,16($fp)
	.loc 1 1386 0
	lw	$2,64($fp)
	sw	$2,24($fp)
	.loc 1 1389 0
	sw	$0,20($fp)
	.loc 1 1393 0
	lw	$2,24($fp)
	bne	$2,$0,.L118
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1393			# 0x571
	jal	vAssertCalled
	nop

.L118:
	.loc 1 1397 0
	lw	$2,24($fp)
	lw	$2,64($2)
	beq	$2,$0,.L119
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1397			# 0x575
	jal	vAssertCalled
	nop

.L119:
	.loc 1 1402 0
	jal	xTaskGetSchedulerState
	nop

	bne	$2,$0,.L120
	nop

	lw	$2,68($fp)
	bne	$2,$0,.L121
	nop

.L120:
	li	$2,1			# 0x1
	j	.L122
	nop

.L121:
	move	$2,$0
.L122:
	bne	$2,$0,.L123
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1402			# 0x57a
	jal	vAssertCalled
	nop

.L123:
	.loc 1 1413 0
	jal	vTaskEnterCritical
	nop

.LBB13 = .
	.loc 1 1417 0
	lw	$2,24($fp)
	lw	$2,56($2)
	sw	$2,28($fp)
	.loc 1 1421 0
	lw	$2,28($fp)
	beq	$2,$0,.L124
	nop

	.loc 1 1427 0
	lw	$2,28($fp)
	addiu	$3,$2,-1
	lw	$2,24($fp)
	sw	$3,56($2)
	.loc 1 1431 0
	lw	$2,24($fp)
	lw	$2,0($2)
	bne	$2,$0,.L125
	nop

	.loc 1 1435 0
	jal	pvTaskIncrementMutexHeldCount
	nop

	move	$3,$2
	lw	$2,24($fp)
	sw	$3,4($2)
.L125:
	.loc 1 1446 0
	lw	$2,24($fp)
	lw	$2,16($2)
	beq	$2,$0,.L126
	nop

	.loc 1 1448 0
	lw	$2,24($fp)
	addiu	$2,$2,16
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L126
	nop

.LBB14 = .
	.loc 1 1450 0
	mfc0	$2,$13,0
	sw	$2,32($fp)
	lw	$2,32($fp)
	ori	$2,$2,0x100
	sw	$2,32($fp)
	lw	$2,32($fp)
	mtc0	$2,$13,0
	ehb
.L126:
.LBE14 = .
	.loc 1 1462 0
	jal	vTaskExitCritical
	nop

	.loc 1 1463 0
	li	$2,1			# 0x1
	j	.L139
	nop

.L124:
	.loc 1 1467 0
	lw	$2,68($fp)
	bne	$2,$0,.L128
	nop

	.loc 1 1474 0
	lw	$2,20($fp)
	beq	$2,$0,.L129
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1474			# 0x5c2
	jal	vAssertCalled
	nop

.L129:
	.loc 1 1480 0
	jal	vTaskExitCritical
	nop

	.loc 1 1482 0
	move	$2,$0
	j	.L139
	nop

.L128:
	.loc 1 1484 0
	lw	$2,16($fp)
	bne	$2,$0,.L130
	nop

	.loc 1 1488 0
	addiu	$2,$fp,44
	move	$4,$2
	jal	vTaskInternalSetTimeOutState
	nop

	.loc 1 1489 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L130:
.LBE13 = .
	.loc 1 1498 0
	jal	vTaskExitCritical
	nop

	.loc 1 1503 0
	jal	vTaskSuspendAll
	nop

	.loc 1 1504 0
	jal	vTaskEnterCritical
	nop

	lw	$2,24($fp)
	lbu	$2,68($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L131
	nop

	lw	$2,24($fp)
	sb	$0,68($2)
.L131:
	lw	$2,24($fp)
	lbu	$2,69($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L132
	nop

	lw	$2,24($fp)
	sb	$0,69($2)
.L132:
	jal	vTaskExitCritical
	nop

	.loc 1 1507 0
	addiu	$3,$fp,44
	addiu	$2,$fp,68
	move	$4,$3
	move	$5,$2
	jal	xTaskCheckForTimeOut
	nop

	bne	$2,$0,.L133
	nop

	.loc 1 1513 0
	lw	$4,24($fp)
	jal	prvIsQueueEmpty
	nop

	beq	$2,$0,.L134
	nop

	.loc 1 1519 0
	lw	$2,24($fp)
	lw	$2,0($2)
	bne	$2,$0,.L135
	nop

	.loc 1 1521 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1523 0
	lw	$2,24($fp)
	lw	$2,4($2)
	move	$4,$2
	jal	xTaskPriorityInherit
	nop

	sw	$2,20($fp)
	.loc 1 1525 0
	jal	vTaskExitCritical
	nop

.L135:
	.loc 1 1534 0
	lw	$2,24($fp)
	addiu	$3,$2,36
	lw	$2,68($fp)
	move	$4,$3
	move	$5,$2
	jal	vTaskPlaceOnEventList
	nop

	.loc 1 1535 0
	lw	$4,24($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1536 0
	jal	xTaskResumeAll
	nop

	bne	$2,$0,.L137
	nop

.LBB15 = .
	.loc 1 1538 0
	mfc0	$2,$13,0
	sw	$2,36($fp)
	lw	$2,36($fp)
	ori	$2,$2,0x100
	sw	$2,36($fp)
	lw	$2,36($fp)
	mtc0	$2,$13,0
	ehb
.LBE15 = .
	j	.L137
	nop

.L134:
	.loc 1 1549 0
	lw	$4,24($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1550 0
	jal	xTaskResumeAll
	nop

	.loc 1 1597 0
	j	.L123
	nop

.L133:
	.loc 1 1556 0
	lw	$4,24($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1557 0
	jal	xTaskResumeAll
	nop

	.loc 1 1563 0
	lw	$4,24($fp)
	jal	prvIsQueueEmpty
	nop

	beq	$2,$0,.L137
	nop

	.loc 1 1570 0
	lw	$2,20($fp)
	beq	$2,$0,.L138
	nop

	.loc 1 1572 0
	jal	vTaskEnterCritical
	nop

.LBB16 = .
	.loc 1 1581 0
	lw	$4,24($fp)
	jal	prvGetDisinheritPriorityAfterTimeout
	nop

	sw	$2,40($fp)
	.loc 1 1582 0
	lw	$2,24($fp)
	lw	$2,4($2)
	move	$4,$2
	lw	$5,40($fp)
	jal	vTaskPriorityDisinheritAfterTimeout
	nop

.LBE16 = .
	.loc 1 1584 0
	jal	vTaskExitCritical
	nop

.L138:
	.loc 1 1590 0
	move	$2,$0
	j	.L139
	nop

.L137:
	.loc 1 1597 0
	j	.L123
	nop

.L139:
	.loc 1 1598 0
	move	$sp,$fp
.LCFI51 = .
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueSemaphoreTake
.LFE16:
	.size	xQueueSemaphoreTake, .-xQueueSemaphoreTake
	.align	2
	.globl	xQueuePeek
.LFB17 = .
	.loc 1 1602 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueuePeek
	.type	xQueuePeek, @function
xQueuePeek:
	.frame	$fp,56,$31		# vars= 32, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
.LCFI52 = .
	sw	$31,52($sp)
	sw	$fp,48($sp)
.LCFI53 = .
	move	$fp,$sp
.LCFI54 = .
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	.loc 1 1603 0
	sw	$0,16($fp)
	.loc 1 1606 0
	lw	$2,56($fp)
	sw	$2,20($fp)
	.loc 1 1609 0
	lw	$2,20($fp)
	bne	$2,$0,.L141
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1609			# 0x649
	jal	vAssertCalled
	nop

.L141:
	.loc 1 1613 0
	lw	$2,60($fp)
	bne	$2,$0,.L142
	nop

	lw	$2,20($fp)
	lw	$2,64($2)
	bne	$2,$0,.L143
	nop

.L142:
	li	$2,1			# 0x1
	j	.L144
	nop

.L143:
	move	$2,$0
.L144:
	bne	$2,$0,.L145
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1613			# 0x64d
	jal	vAssertCalled
	nop

.L145:
	.loc 1 1618 0
	jal	xTaskGetSchedulerState
	nop

	bne	$2,$0,.L146
	nop

	lw	$2,64($fp)
	bne	$2,$0,.L147
	nop

.L146:
	li	$2,1			# 0x1
	j	.L148
	nop

.L147:
	move	$2,$0
.L148:
	bne	$2,$0,.L149
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1618			# 0x652
	jal	vAssertCalled
	nop

.L149:
	.loc 1 1629 0
	jal	vTaskEnterCritical
	nop

.LBB17 = .
	.loc 1 1631 0
	lw	$2,20($fp)
	lw	$2,56($2)
	sw	$2,24($fp)
	.loc 1 1635 0
	lw	$2,24($fp)
	beq	$2,$0,.L150
	nop

	.loc 1 1640 0
	lw	$2,20($fp)
	lw	$2,12($2)
	sw	$2,28($fp)
	.loc 1 1642 0
	lw	$4,20($fp)
	lw	$5,60($fp)
	jal	prvCopyDataFromQueue
	nop

	.loc 1 1646 0
	lw	$2,20($fp)
	lw	$3,28($fp)
	sw	$3,12($2)
	.loc 1 1650 0
	lw	$2,20($fp)
	lw	$2,36($2)
	beq	$2,$0,.L151
	nop

	.loc 1 1652 0
	lw	$2,20($fp)
	addiu	$2,$2,36
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L151
	nop

.LBB18 = .
	.loc 1 1655 0
	mfc0	$2,$13,0
	sw	$2,32($fp)
	lw	$2,32($fp)
	ori	$2,$2,0x100
	sw	$2,32($fp)
	lw	$2,32($fp)
	mtc0	$2,$13,0
	ehb
.L151:
.LBE18 = .
	.loc 1 1667 0
	jal	vTaskExitCritical
	nop

	.loc 1 1668 0
	li	$2,1			# 0x1
	j	.L161
	nop

.L150:
	.loc 1 1672 0
	lw	$2,64($fp)
	bne	$2,$0,.L153
	nop

	.loc 1 1676 0
	jal	vTaskExitCritical
	nop

	.loc 1 1678 0
	move	$2,$0
	j	.L161
	nop

.L153:
	.loc 1 1680 0
	lw	$2,16($fp)
	bne	$2,$0,.L154
	nop

	.loc 1 1685 0
	addiu	$2,$fp,40
	move	$4,$2
	jal	vTaskInternalSetTimeOutState
	nop

	.loc 1 1686 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L154:
.LBE17 = .
	.loc 1 1695 0
	jal	vTaskExitCritical
	nop

	.loc 1 1700 0
	jal	vTaskSuspendAll
	nop

	.loc 1 1701 0
	jal	vTaskEnterCritical
	nop

	lw	$2,20($fp)
	lbu	$2,68($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L155
	nop

	lw	$2,20($fp)
	sb	$0,68($2)
.L155:
	lw	$2,20($fp)
	lbu	$2,69($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L156
	nop

	lw	$2,20($fp)
	sb	$0,69($2)
.L156:
	jal	vTaskExitCritical
	nop

	.loc 1 1704 0
	addiu	$3,$fp,40
	addiu	$2,$fp,64
	move	$4,$3
	move	$5,$2
	jal	xTaskCheckForTimeOut
	nop

	bne	$2,$0,.L157
	nop

	.loc 1 1708 0
	lw	$4,20($fp)
	jal	prvIsQueueEmpty
	nop

	beq	$2,$0,.L158
	nop

	.loc 1 1711 0
	lw	$2,20($fp)
	addiu	$3,$2,36
	lw	$2,64($fp)
	move	$4,$3
	move	$5,$2
	jal	vTaskPlaceOnEventList
	nop

	.loc 1 1712 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1713 0
	jal	xTaskResumeAll
	nop

	bne	$2,$0,.L160
	nop

.LBB19 = .
	.loc 1 1715 0
	mfc0	$2,$13,0
	sw	$2,36($fp)
	lw	$2,36($fp)
	ori	$2,$2,0x100
	sw	$2,36($fp)
	lw	$2,36($fp)
	mtc0	$2,$13,0
	ehb
.LBE19 = .
	j	.L160
	nop

.L158:
	.loc 1 1726 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1727 0
	jal	xTaskResumeAll
	nop

	.loc 1 1747 0
	j	.L149
	nop

.L157:
	.loc 1 1734 0
	lw	$4,20($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 1735 0
	jal	xTaskResumeAll
	nop

	.loc 1 1737 0
	lw	$4,20($fp)
	jal	prvIsQueueEmpty
	nop

	beq	$2,$0,.L160
	nop

	.loc 1 1740 0
	move	$2,$0
	j	.L161
	nop

.L160:
	.loc 1 1747 0
	j	.L149
	nop

.L161:
	.loc 1 1748 0
	move	$sp,$fp
.LCFI55 = .
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueuePeek
.LFE17:
	.size	xQueuePeek, .-xQueuePeek
	.align	2
	.globl	xQueueReceiveFromISR
.LFB18 = .
	.loc 1 1752 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueReceiveFromISR
	.type	xQueueReceiveFromISR, @function
xQueueReceiveFromISR:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI56 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI57 = .
	move	$fp,$sp
.LCFI58 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	.loc 1 1755 0
	lw	$2,48($fp)
	sw	$2,20($fp)
	.loc 1 1757 0
	lw	$2,20($fp)
	bne	$2,$0,.L163
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1757			# 0x6dd
	jal	vAssertCalled
	nop

.L163:
	.loc 1 1758 0
	lw	$2,52($fp)
	bne	$2,$0,.L164
	nop

	lw	$2,20($fp)
	lw	$2,64($2)
	bne	$2,$0,.L165
	nop

.L164:
	li	$2,1			# 0x1
	j	.L166
	nop

.L165:
	move	$2,$0
.L166:
	bne	$2,$0,.L167
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1758			# 0x6de
	jal	vAssertCalled
	nop

.L167:
	.loc 1 1776 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,24($fp)
.LBB20 = .
	.loc 1 1778 0
	lw	$2,20($fp)
	lw	$2,56($2)
	sw	$2,28($fp)
	.loc 1 1781 0
	lw	$2,28($fp)
	beq	$2,$0,.L168
	nop

.LBB21 = .
	.loc 1 1783 0
	lw	$2,20($fp)
	lbu	$2,68($2)
	sb	$2,32($fp)
	.loc 1 1787 0
	lw	$4,20($fp)
	lw	$5,52($fp)
	jal	prvCopyDataFromQueue
	nop

	.loc 1 1788 0
	lw	$2,28($fp)
	addiu	$3,$2,-1
	lw	$2,20($fp)
	sw	$3,56($2)
	.loc 1 1794 0
	lb	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L169
	nop

	.loc 1 1796 0
	lw	$2,20($fp)
	lw	$2,16($2)
	beq	$2,$0,.L170
	nop

	.loc 1 1798 0
	lw	$2,20($fp)
	addiu	$2,$2,16
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L170
	nop

	.loc 1 1802 0
	lw	$2,56($fp)
	beq	$2,$0,.L170
	nop

	.loc 1 1804 0
	lw	$2,56($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L170
	nop

.L169:
	.loc 1 1825 0
	lbu	$2,32($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	seb	$3,$2
	lw	$2,20($fp)
	sb	$3,68($2)
.L170:
	.loc 1 1828 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.LBE21 = .
	j	.L171
	nop

.L168:
	.loc 1 1832 0
	sw	$0,16($fp)
.L171:
.LBE20 = .
	.loc 1 1836 0
	lw	$4,24($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 1838 0
	lw	$2,16($fp)
	.loc 1 1839 0
	move	$sp,$fp
.LCFI59 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueReceiveFromISR
.LFE18:
	.size	xQueueReceiveFromISR, .-xQueueReceiveFromISR
	.align	2
	.globl	xQueuePeekFromISR
.LFB19 = .
	.loc 1 1843 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueuePeekFromISR
	.type	xQueuePeekFromISR, @function
xQueuePeekFromISR:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI60 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI61 = .
	move	$fp,$sp
.LCFI62 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 1847 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 1849 0
	lw	$2,20($fp)
	bne	$2,$0,.L174
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1849			# 0x739
	jal	vAssertCalled
	nop

.L174:
	.loc 1 1850 0
	lw	$2,44($fp)
	bne	$2,$0,.L175
	nop

	lw	$2,20($fp)
	lw	$2,64($2)
	bne	$2,$0,.L176
	nop

.L175:
	li	$2,1			# 0x1
	j	.L177
	nop

.L176:
	move	$2,$0
.L177:
	bne	$2,$0,.L178
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1850			# 0x73a
	jal	vAssertCalled
	nop

.L178:
	.loc 1 1851 0
	lw	$2,20($fp)
	lw	$2,64($2)
	bne	$2,$0,.L179
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1851			# 0x73b
	jal	vAssertCalled
	nop

.L179:
	.loc 1 1869 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,24($fp)
	.loc 1 1872 0
	lw	$2,20($fp)
	lw	$2,56($2)
	beq	$2,$0,.L180
	nop

	.loc 1 1878 0
	lw	$2,20($fp)
	lw	$2,12($2)
	sw	$2,28($fp)
	.loc 1 1879 0
	lw	$4,20($fp)
	lw	$5,44($fp)
	jal	prvCopyDataFromQueue
	nop

	.loc 1 1880 0
	lw	$2,20($fp)
	lw	$3,28($fp)
	sw	$3,12($2)
	.loc 1 1882 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L181
	nop

.L180:
	.loc 1 1886 0
	sw	$0,16($fp)
.L181:
	.loc 1 1890 0
	lw	$4,24($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 1892 0
	lw	$2,16($fp)
	.loc 1 1893 0
	move	$sp,$fp
.LCFI63 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueuePeekFromISR
.LFE19:
	.size	xQueuePeekFromISR, .-xQueuePeekFromISR
	.align	2
	.globl	uxQueueMessagesWaiting
.LFB20 = .
	.loc 1 1897 0
	.set	nomips16
	.set	nomicromips
	.ent	uxQueueMessagesWaiting
	.type	uxQueueMessagesWaiting, @function
uxQueueMessagesWaiting:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI64 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI65 = .
	move	$fp,$sp
.LCFI66 = .
	sw	$4,32($fp)
	.loc 1 1900 0
	lw	$2,32($fp)
	bne	$2,$0,.L184
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1900			# 0x76c
	jal	vAssertCalled
	nop

.L184:
	.loc 1 1902 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1904 0
	lw	$2,32($fp)
	lw	$2,56($2)
	sw	$2,16($fp)
	.loc 1 1906 0
	jal	vTaskExitCritical
	nop

	.loc 1 1908 0
	lw	$2,16($fp)
	.loc 1 1909 0
	move	$sp,$fp
.LCFI67 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxQueueMessagesWaiting
.LFE20:
	.size	uxQueueMessagesWaiting, .-uxQueueMessagesWaiting
	.align	2
	.globl	uxQueueSpacesAvailable
.LFB21 = .
	.loc 1 1913 0
	.set	nomips16
	.set	nomicromips
	.ent	uxQueueSpacesAvailable
	.type	uxQueueSpacesAvailable, @function
uxQueueSpacesAvailable:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI68 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI69 = .
	move	$fp,$sp
.LCFI70 = .
	sw	$4,32($fp)
	.loc 1 1917 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 1918 0
	lw	$2,16($fp)
	bne	$2,$0,.L187
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1918			# 0x77e
	jal	vAssertCalled
	nop

.L187:
	.loc 1 1920 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1922 0
	lw	$2,16($fp)
	lw	$3,60($2)
	lw	$2,16($fp)
	lw	$2,56($2)
	subu	$2,$3,$2
	sw	$2,20($fp)
	.loc 1 1924 0
	jal	vTaskExitCritical
	nop

	.loc 1 1926 0
	lw	$2,20($fp)
	.loc 1 1927 0
	move	$sp,$fp
.LCFI71 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxQueueSpacesAvailable
.LFE21:
	.size	uxQueueSpacesAvailable, .-uxQueueSpacesAvailable
	.align	2
	.globl	uxQueueMessagesWaitingFromISR
.LFB22 = .
	.loc 1 1931 0
	.set	nomips16
	.set	nomicromips
	.ent	uxQueueMessagesWaitingFromISR
	.type	uxQueueMessagesWaitingFromISR, @function
uxQueueMessagesWaitingFromISR:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI72 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI73 = .
	move	$fp,$sp
.LCFI74 = .
	sw	$4,32($fp)
	.loc 1 1934 0
	lw	$2,32($fp)
	bne	$2,$0,.L190
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1934			# 0x78e
	jal	vAssertCalled
	nop

.L190:
	.loc 1 1936 0
	lw	$2,32($fp)
	lw	$2,56($2)
	sw	$2,16($fp)
	.loc 1 1938 0
	lw	$2,16($fp)
	.loc 1 1939 0
	move	$sp,$fp
.LCFI75 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxQueueMessagesWaitingFromISR
.LFE22:
	.size	uxQueueMessagesWaitingFromISR, .-uxQueueMessagesWaitingFromISR
	.align	2
	.globl	vQueueDelete
.LFB23 = .
	.loc 1 1943 0
	.set	nomips16
	.set	nomicromips
	.ent	vQueueDelete
	.type	vQueueDelete, @function
vQueueDelete:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI76 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI77 = .
	move	$fp,$sp
.LCFI78 = .
	sw	$4,32($fp)
	.loc 1 1944 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 1946 0
	lw	$2,16($fp)
	bne	$2,$0,.L193
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1946			# 0x79a
	jal	vAssertCalled
	nop

.L193:
	.loc 1 1959 0
	lw	$4,16($fp)
	jal	vPortFree
	nop

	.loc 1 1981 0
	move	$sp,$fp
.LCFI79 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vQueueDelete
.LFE23:
	.size	vQueueDelete, .-vQueueDelete
	.align	2
.LFB24 = .
	.loc 1 2017 0
	.set	nomips16
	.set	nomicromips
	.ent	prvGetDisinheritPriorityAfterTimeout
	.type	prvGetDisinheritPriorityAfterTimeout, @function
prvGetDisinheritPriorityAfterTimeout:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI80 = .
	sw	$fp,12($sp)
.LCFI81 = .
	move	$fp,$sp
.LCFI82 = .
	sw	$4,16($fp)
	.loc 1 2026 0
	lw	$2,16($fp)
	lw	$2,36($2)
	beq	$2,$0,.L195
	nop

	.loc 1 2028 0
	lw	$2,16($fp)
	lw	$2,48($2)
	lw	$2,0($2)
	li	$3,8			# 0x8
	subu	$2,$3,$2
	sw	$2,0($fp)
	j	.L196
	nop

.L195:
	.loc 1 2032 0
	sw	$0,0($fp)
.L196:
	.loc 1 2035 0
	lw	$2,0($fp)
	.loc 1 2036 0
	move	$sp,$fp
.LCFI83 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvGetDisinheritPriorityAfterTimeout
.LFE24:
	.size	prvGetDisinheritPriorityAfterTimeout, .-prvGetDisinheritPriorityAfterTimeout
	.align	2
.LFB25 = .
	.loc 1 2042 0
	.set	nomips16
	.set	nomicromips
	.ent	prvCopyDataToQueue
	.type	prvCopyDataToQueue, @function
prvCopyDataToQueue:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI84 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI85 = .
	move	$fp,$sp
.LCFI86 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	.loc 1 2043 0
	sw	$0,16($fp)
	.loc 1 2048 0
	lw	$2,32($fp)
	lw	$2,56($2)
	sw	$2,20($fp)
	.loc 1 2050 0
	lw	$2,32($fp)
	lw	$2,64($2)
	bne	$2,$0,.L199
	nop

	.loc 1 2054 0
	lw	$2,32($fp)
	lw	$2,0($2)
	bne	$2,$0,.L200
	nop

	.loc 1 2057 0
	lw	$2,32($fp)
	lw	$2,4($2)
	move	$4,$2
	jal	xTaskPriorityDisinherit
	nop

	sw	$2,16($fp)
	.loc 1 2058 0
	lw	$2,32($fp)
	sw	$0,4($2)
	j	.L200
	nop

.L199:
	.loc 1 2067 0
	lw	$2,40($fp)
	bne	$2,$0,.L201
	nop

	.loc 1 2069 0
	lw	$2,32($fp)
	lw	$3,8($2)
	lw	$2,32($fp)
	lw	$2,64($2)
	move	$4,$3
	lw	$5,36($fp)
	move	$6,$2
	jal	memcpy
	nop

	.loc 1 2070 0
	lw	$2,32($fp)
	lw	$3,8($2)
	lw	$2,32($fp)
	lw	$2,64($2)
	addu	$3,$3,$2
	lw	$2,32($fp)
	sw	$3,8($2)
	.loc 1 2071 0
	lw	$2,32($fp)
	lw	$3,8($2)
	lw	$2,32($fp)
	lw	$2,4($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L200
	nop

	.loc 1 2073 0
	lw	$2,32($fp)
	lw	$3,0($2)
	lw	$2,32($fp)
	sw	$3,8($2)
	j	.L200
	nop

.L201:
	.loc 1 2082 0
	lw	$2,32($fp)
	lw	$3,12($2)
	lw	$2,32($fp)
	lw	$2,64($2)
	move	$4,$3
	lw	$5,36($fp)
	move	$6,$2
	jal	memcpy
	nop

	.loc 1 2083 0
	lw	$2,32($fp)
	lw	$3,12($2)
	lw	$2,32($fp)
	lw	$2,64($2)
	subu	$2,$0,$2
	addu	$3,$3,$2
	lw	$2,32($fp)
	sw	$3,12($2)
	.loc 1 2084 0
	lw	$2,32($fp)
	lw	$3,12($2)
	lw	$2,32($fp)
	lw	$2,0($2)
	sltu	$2,$3,$2
	beq	$2,$0,.L202
	nop

	.loc 1 2086 0
	lw	$2,32($fp)
	lw	$3,4($2)
	lw	$2,32($fp)
	lw	$2,64($2)
	subu	$2,$0,$2
	addu	$3,$3,$2
	lw	$2,32($fp)
	sw	$3,12($2)
.L202:
	.loc 1 2093 0
	lw	$3,40($fp)
	li	$2,2			# 0x2
	bne	$3,$2,.L200
	nop

	.loc 1 2095 0
	lw	$2,20($fp)
	beq	$2,$0,.L200
	nop

	.loc 1 2101 0
	lw	$2,20($fp)
	addiu	$2,$2,-1
	sw	$2,20($fp)
.L200:
	.loc 1 2114 0
	lw	$2,20($fp)
	addiu	$3,$2,1
	lw	$2,32($fp)
	sw	$3,56($2)
	.loc 1 2116 0
	lw	$2,16($fp)
	.loc 1 2117 0
	move	$sp,$fp
.LCFI87 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvCopyDataToQueue
.LFE25:
	.size	prvCopyDataToQueue, .-prvCopyDataToQueue
	.align	2
.LFB26 = .
	.loc 1 2121 0
	.set	nomips16
	.set	nomicromips
	.ent	prvCopyDataFromQueue
	.type	prvCopyDataFromQueue, @function
prvCopyDataFromQueue:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI88 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI89 = .
	move	$fp,$sp
.LCFI90 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	.loc 1 2122 0
	lw	$2,24($fp)
	lw	$2,64($2)
	beq	$2,$0,.L204
	nop

	.loc 1 2124 0
	lw	$2,24($fp)
	lw	$3,12($2)
	lw	$2,24($fp)
	lw	$2,64($2)
	addu	$3,$3,$2
	lw	$2,24($fp)
	sw	$3,12($2)
	.loc 1 2125 0
	lw	$2,24($fp)
	lw	$3,12($2)
	lw	$2,24($fp)
	lw	$2,4($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L206
	nop

	.loc 1 2127 0
	lw	$2,24($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	sw	$3,12($2)
.L206:
	.loc 1 2133 0
	lw	$2,24($fp)
	lw	$3,12($2)
	lw	$2,24($fp)
	lw	$2,64($2)
	lw	$4,28($fp)
	move	$5,$3
	move	$6,$2
	jal	memcpy
	nop

.L204:
	.loc 1 2135 0
	move	$sp,$fp
.LCFI91 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvCopyDataFromQueue
.LFE26:
	.size	prvCopyDataFromQueue, .-prvCopyDataFromQueue
	.align	2
.LFB27 = .
	.loc 1 2139 0
	.set	nomips16
	.set	nomicromips
	.ent	prvUnlockQueue
	.type	prvUnlockQueue, @function
prvUnlockQueue:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI92 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI93 = .
	move	$fp,$sp
.LCFI94 = .
	sw	$4,32($fp)
	.loc 1 2146 0
	jal	vTaskEnterCritical
	nop

.LBB22 = .
	.loc 1 2148 0
	lw	$2,32($fp)
	lbu	$2,69($2)
	sb	$2,16($fp)
	.loc 1 2151 0
	j	.L208
	nop

.L213:
	.loc 1 2157 0
	lw	$2,32($fp)
	lw	$2,72($2)
	beq	$2,$0,.L209
	nop

	.loc 1 2159 0
	lw	$4,32($fp)
	move	$5,$0
	jal	prvNotifyQueueSetContainer
	nop

	beq	$2,$0,.L210
	nop

	.loc 1 2164 0
	jal	vTaskMissedYield
	nop

	j	.L210
	nop

.L209:
	.loc 1 2176 0
	lw	$2,32($fp)
	lw	$2,36($2)
	beq	$2,$0,.L211
	nop

	.loc 1 2178 0
	lw	$2,32($fp)
	addiu	$2,$2,36
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L210
	nop

	.loc 1 2182 0
	jal	vTaskMissedYield
	nop

	j	.L210
	nop

.L211:
	.loc 1 2191 0
	j	.L212
	nop

.L210:
	.loc 1 2219 0
	lbu	$2,16($fp)
	addiu	$2,$2,-1
	sb	$2,16($fp)
.L208:
	.loc 1 2151 0
	lb	$2,16($fp)
	bgtz	$2,.L213
	nop

.L212:
	.loc 1 2222 0
	lw	$2,32($fp)
	li	$3,-1			# 0xffffffffffffffff
	sb	$3,69($2)
.LBE22 = .
	.loc 1 2224 0
	jal	vTaskExitCritical
	nop

	.loc 1 2227 0
	jal	vTaskEnterCritical
	nop

.LBB23 = .
	.loc 1 2229 0
	lw	$2,32($fp)
	lbu	$2,68($2)
	sb	$2,17($fp)
	.loc 1 2231 0
	j	.L214
	nop

.L218:
	.loc 1 2233 0
	lw	$2,32($fp)
	lw	$2,16($2)
	beq	$2,$0,.L215
	nop

	.loc 1 2235 0
	lw	$2,32($fp)
	addiu	$2,$2,16
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L216
	nop

	.loc 1 2237 0
	jal	vTaskMissedYield
	nop

.L216:
	.loc 1 2244 0
	lbu	$2,17($fp)
	addiu	$2,$2,-1
	sb	$2,17($fp)
	j	.L214
	nop

.L215:
	.loc 1 2248 0
	j	.L217
	nop

.L214:
	.loc 1 2231 0
	lb	$2,17($fp)
	bgtz	$2,.L218
	nop

.L217:
	.loc 1 2252 0
	lw	$2,32($fp)
	li	$3,-1			# 0xffffffffffffffff
	sb	$3,68($2)
.LBE23 = .
	.loc 1 2254 0
	jal	vTaskExitCritical
	nop

	.loc 1 2255 0
	move	$sp,$fp
.LCFI95 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvUnlockQueue
.LFE27:
	.size	prvUnlockQueue, .-prvUnlockQueue
	.align	2
.LFB28 = .
	.loc 1 2259 0
	.set	nomips16
	.set	nomicromips
	.ent	prvIsQueueEmpty
	.type	prvIsQueueEmpty, @function
prvIsQueueEmpty:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI96 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI97 = .
	move	$fp,$sp
.LCFI98 = .
	sw	$4,32($fp)
	.loc 1 2262 0
	jal	vTaskEnterCritical
	nop

	.loc 1 2264 0
	lw	$2,32($fp)
	lw	$2,56($2)
	bne	$2,$0,.L220
	nop

	.loc 1 2266 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L221
	nop

.L220:
	.loc 1 2270 0
	sw	$0,16($fp)
.L221:
	.loc 1 2273 0
	jal	vTaskExitCritical
	nop

	.loc 1 2275 0
	lw	$2,16($fp)
	.loc 1 2276 0
	move	$sp,$fp
.LCFI99 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvIsQueueEmpty
.LFE28:
	.size	prvIsQueueEmpty, .-prvIsQueueEmpty
	.align	2
	.globl	xQueueIsQueueEmptyFromISR
.LFB29 = .
	.loc 1 2280 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueIsQueueEmptyFromISR
	.type	xQueueIsQueueEmptyFromISR, @function
xQueueIsQueueEmptyFromISR:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI100 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI101 = .
	move	$fp,$sp
.LCFI102 = .
	sw	$4,32($fp)
	.loc 1 2283 0
	lw	$2,32($fp)
	bne	$2,$0,.L224
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2283			# 0x8eb
	jal	vAssertCalled
	nop

.L224:
	.loc 1 2284 0
	lw	$2,32($fp)
	lw	$2,56($2)
	bne	$2,$0,.L225
	nop

	.loc 1 2286 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L226
	nop

.L225:
	.loc 1 2290 0
	sw	$0,16($fp)
.L226:
	.loc 1 2293 0
	lw	$2,16($fp)
	.loc 1 2294 0
	move	$sp,$fp
.LCFI103 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueIsQueueEmptyFromISR
.LFE29:
	.size	xQueueIsQueueEmptyFromISR, .-xQueueIsQueueEmptyFromISR
	.align	2
.LFB30 = .
	.loc 1 2298 0
	.set	nomips16
	.set	nomicromips
	.ent	prvIsQueueFull
	.type	prvIsQueueFull, @function
prvIsQueueFull:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI104 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI105 = .
	move	$fp,$sp
.LCFI106 = .
	sw	$4,32($fp)
	.loc 1 2301 0
	jal	vTaskEnterCritical
	nop

	.loc 1 2303 0
	lw	$2,32($fp)
	lw	$3,56($2)
	lw	$2,32($fp)
	lw	$2,60($2)
	bne	$3,$2,.L229
	nop

	.loc 1 2305 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L230
	nop

.L229:
	.loc 1 2309 0
	sw	$0,16($fp)
.L230:
	.loc 1 2312 0
	jal	vTaskExitCritical
	nop

	.loc 1 2314 0
	lw	$2,16($fp)
	.loc 1 2315 0
	move	$sp,$fp
.LCFI107 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvIsQueueFull
.LFE30:
	.size	prvIsQueueFull, .-prvIsQueueFull
	.align	2
	.globl	xQueueIsQueueFullFromISR
.LFB31 = .
	.loc 1 2319 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueIsQueueFullFromISR
	.type	xQueueIsQueueFullFromISR, @function
xQueueIsQueueFullFromISR:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI108 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI109 = .
	move	$fp,$sp
.LCFI110 = .
	sw	$4,32($fp)
	.loc 1 2322 0
	lw	$2,32($fp)
	bne	$2,$0,.L233
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2322			# 0x912
	jal	vAssertCalled
	nop

.L233:
	.loc 1 2323 0
	lw	$2,32($fp)
	lw	$3,56($2)
	lw	$2,32($fp)
	lw	$2,60($2)
	bne	$3,$2,.L234
	nop

	.loc 1 2325 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L235
	nop

.L234:
	.loc 1 2329 0
	sw	$0,16($fp)
.L235:
	.loc 1 2332 0
	lw	$2,16($fp)
	.loc 1 2333 0
	move	$sp,$fp
.LCFI111 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueIsQueueFullFromISR
.LFE31:
	.size	xQueueIsQueueFullFromISR, .-xQueueIsQueueFullFromISR
	.align	2
	.globl	vQueueWaitForMessageRestricted
.LFB32 = .
	.loc 1 2703 0
	.set	nomips16
	.set	nomicromips
	.ent	vQueueWaitForMessageRestricted
	.type	vQueueWaitForMessageRestricted, @function
vQueueWaitForMessageRestricted:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI112 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI113 = .
	move	$fp,$sp
.LCFI114 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	.loc 1 2704 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 2720 0
	jal	vTaskEnterCritical
	nop

	lw	$2,16($fp)
	lbu	$2,68($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L238
	nop

	lw	$2,16($fp)
	sb	$0,68($2)
.L238:
	lw	$2,16($fp)
	lbu	$2,69($2)
	seb	$3,$2
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L239
	nop

	lw	$2,16($fp)
	sb	$0,69($2)
.L239:
	jal	vTaskExitCritical
	nop

	.loc 1 2721 0
	lw	$2,16($fp)
	lw	$2,56($2)
	bne	$2,$0,.L240
	nop

	.loc 1 2724 0
	lw	$2,16($fp)
	addiu	$2,$2,36
	move	$4,$2
	lw	$5,36($fp)
	lw	$6,40($fp)
	jal	vTaskPlaceOnEventListRestricted
	nop

.L240:
	.loc 1 2730 0
	lw	$4,16($fp)
	jal	prvUnlockQueue
	nop

	.loc 1 2731 0
	move	$sp,$fp
.LCFI115 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vQueueWaitForMessageRestricted
.LFE32:
	.size	vQueueWaitForMessageRestricted, .-vQueueWaitForMessageRestricted
	.align	2
	.globl	xQueueCreateSet
.LFB33 = .
	.loc 1 2739 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueCreateSet
	.type	xQueueCreateSet, @function
xQueueCreateSet:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI116 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI117 = .
	move	$fp,$sp
.LCFI118 = .
	sw	$4,32($fp)
	.loc 1 2742 0
	lw	$4,32($fp)
	li	$5,4			# 0x4
	move	$6,$0
	jal	xQueueGenericCreate
	nop

	sw	$2,16($fp)
	.loc 1 2744 0
	lw	$2,16($fp)
	.loc 1 2745 0
	move	$sp,$fp
.LCFI119 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueCreateSet
.LFE33:
	.size	xQueueCreateSet, .-xQueueCreateSet
	.align	2
	.globl	xQueueAddToSet
.LFB34 = .
	.loc 1 2753 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueAddToSet
	.type	xQueueAddToSet, @function
xQueueAddToSet:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI120 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI121 = .
	move	$fp,$sp
.LCFI122 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 2756 0
	jal	vTaskEnterCritical
	nop

	.loc 1 2758 0
	lw	$2,32($fp)
	lw	$2,72($2)
	beq	$2,$0,.L244
	nop

	.loc 1 2761 0
	sw	$0,16($fp)
	j	.L245
	nop

.L244:
	.loc 1 2763 0
	lw	$2,32($fp)
	lw	$2,56($2)
	beq	$2,$0,.L246
	nop

	.loc 1 2767 0
	sw	$0,16($fp)
	j	.L245
	nop

.L246:
	.loc 1 2771 0
	lw	$2,32($fp)
	lw	$3,36($fp)
	sw	$3,72($2)
	.loc 1 2772 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L245:
	.loc 1 2775 0
	jal	vTaskExitCritical
	nop

	.loc 1 2777 0
	lw	$2,16($fp)
	.loc 1 2778 0
	move	$sp,$fp
.LCFI123 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueAddToSet
.LFE34:
	.size	xQueueAddToSet, .-xQueueAddToSet
	.align	2
	.globl	xQueueRemoveFromSet
.LFB35 = .
	.loc 1 2786 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueRemoveFromSet
	.type	xQueueRemoveFromSet, @function
xQueueRemoveFromSet:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI124 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI125 = .
	move	$fp,$sp
.LCFI126 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 2788 0
	lw	$2,32($fp)
	sw	$2,20($fp)
	.loc 1 2790 0
	lw	$2,20($fp)
	lw	$3,72($2)
	lw	$2,36($fp)
	beq	$3,$2,.L249
	nop

	.loc 1 2793 0
	sw	$0,16($fp)
	j	.L250
	nop

.L249:
	.loc 1 2795 0
	lw	$2,20($fp)
	lw	$2,56($2)
	beq	$2,$0,.L251
	nop

	.loc 1 2800 0
	sw	$0,16($fp)
	j	.L250
	nop

.L251:
	.loc 1 2804 0
	jal	vTaskEnterCritical
	nop

	.loc 1 2807 0
	lw	$2,20($fp)
	sw	$0,72($2)
	.loc 1 2809 0
	jal	vTaskExitCritical
	nop

	.loc 1 2810 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L250:
	.loc 1 2813 0
	lw	$2,16($fp)
	.loc 1 2814 0
	move	$sp,$fp
.LCFI127 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueRemoveFromSet
.LFE35:
	.size	xQueueRemoveFromSet, .-xQueueRemoveFromSet
	.align	2
	.globl	xQueueSelectFromSet
.LFB36 = .
	.loc 1 2822 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueSelectFromSet
	.type	xQueueSelectFromSet, @function
xQueueSelectFromSet:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI128 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI129 = .
	move	$fp,$sp
.LCFI130 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 2823 0
	sw	$0,16($fp)
	.loc 1 2825 0
	lw	$4,32($fp)
	addiu	$2,$fp,16
	move	$5,$2
	lw	$6,36($fp)
	jal	xQueueReceive
	nop

	.loc 1 2826 0
	lw	$2,16($fp)
	.loc 1 2827 0
	move	$sp,$fp
.LCFI131 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueSelectFromSet
.LFE36:
	.size	xQueueSelectFromSet, .-xQueueSelectFromSet
	.align	2
	.globl	xQueueSelectFromSetFromISR
.LFB37 = .
	.loc 1 2835 0
	.set	nomips16
	.set	nomicromips
	.ent	xQueueSelectFromSetFromISR
	.type	xQueueSelectFromSetFromISR, @function
xQueueSelectFromSetFromISR:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI132 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI133 = .
	move	$fp,$sp
.LCFI134 = .
	sw	$4,32($fp)
	.loc 1 2836 0
	sw	$0,16($fp)
	.loc 1 2838 0
	lw	$4,32($fp)
	addiu	$2,$fp,16
	move	$5,$2
	move	$6,$0
	jal	xQueueReceiveFromISR
	nop

	.loc 1 2839 0
	lw	$2,16($fp)
	.loc 1 2840 0
	move	$sp,$fp
.LCFI135 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xQueueSelectFromSetFromISR
.LFE37:
	.size	xQueueSelectFromSetFromISR, .-xQueueSelectFromSetFromISR
	.align	2
.LFB38 = .
	.loc 1 2848 0
	.set	nomips16
	.set	nomicromips
	.ent	prvNotifyQueueSetContainer
	.type	prvNotifyQueueSetContainer, @function
prvNotifyQueueSetContainer:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI136 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI137 = .
	move	$fp,$sp
.LCFI138 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 2849 0
	lw	$2,40($fp)
	lw	$2,72($2)
	sw	$2,20($fp)
	.loc 1 2850 0
	sw	$0,16($fp)
	.loc 1 2854 0
	lw	$2,20($fp)
	bne	$2,$0,.L258
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2854			# 0xb26
	jal	vAssertCalled
	nop

.L258:
	.loc 1 2855 0
	lw	$2,20($fp)
	lw	$3,56($2)
	lw	$2,20($fp)
	lw	$2,60($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L259
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2855			# 0xb27
	jal	vAssertCalled
	nop

.L259:
	.loc 1 2857 0
	lw	$2,20($fp)
	lw	$3,56($2)
	lw	$2,20($fp)
	lw	$2,60($2)
	sltu	$2,$3,$2
	beq	$2,$0,.L260
	nop

.LBB24 = .
	.loc 1 2859 0
	lw	$2,20($fp)
	lbu	$2,69($2)
	sb	$2,24($fp)
	.loc 1 2864 0
	lw	$4,20($fp)
	addiu	$5,$fp,40
	lw	$6,44($fp)
	jal	prvCopyDataToQueue
	nop

	sw	$2,16($fp)
	.loc 1 2866 0
	lb	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L261
	nop

	.loc 1 2868 0
	lw	$2,20($fp)
	lw	$2,36($2)
	beq	$2,$0,.L262
	nop

	.loc 1 2870 0
	lw	$2,20($fp)
	addiu	$2,$2,36
	move	$4,$2
	jal	xTaskRemoveFromEventList
	nop

	beq	$2,$0,.L262
	nop

	.loc 1 2873 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L262
	nop

.L261:
	.loc 1 2887 0
	lbu	$2,24($fp)
	addiu	$2,$2,1
	andi	$2,$2,0x00ff
	seb	$3,$2
	lw	$2,20($fp)
	sb	$3,69($2)
.LBE24 = .
	j	.L260
	nop

.L262:
.L260:
	.loc 1 2895 0
	lw	$2,16($fp)
	.loc 1 2896 0
	move	$sp,$fp
.LCFI139 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvNotifyQueueSetContainer
.LFE38:
	.size	prvNotifyQueueSetContainer, .-prvNotifyQueueSetContainer
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
	.uleb128 0x30
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
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
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x3
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
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x3
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
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI28-.LFB11
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
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
	.4byte	.LCFI32-.LFB12
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI36-.LFB13
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI39-.LCFI38
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI40-.LFB14
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI44-.LFB15
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI48-.LFB16
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI52-.LFB17
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI56-.LFB18
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI60-.LFB19
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI64-.LFB20
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI68-.LFB21
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI72-.LFB22
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI76-.LFB23
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI80-.LFB24
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI84-.LFB25
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI88-.LFB26
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI89-.LCFI88
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI92-.LFB27
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI94-.LCFI93
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI95-.LCFI94
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI96-.LFB28
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI98-.LCFI97
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI100-.LFB29
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI101-.LCFI100
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI103-.LCFI102
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI104-.LFB30
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI105-.LCFI104
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI106-.LCFI105
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI107-.LCFI106
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI108-.LFB31
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI110-.LCFI109
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI111-.LCFI110
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI112-.LFB32
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI113-.LCFI112
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI116-.LFB33
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI117-.LCFI116
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI118-.LCFI117
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI119-.LCFI118
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI120-.LFB34
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI121-.LCFI120
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI122-.LCFI121
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI123-.LCFI122
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI124-.LFB35
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI125-.LCFI124
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI126-.LCFI125
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI127-.LCFI126
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI128-.LFB36
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI129-.LCFI128
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI130-.LCFI129
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI131-.LCFI130
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI132-.LFB37
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI133-.LCFI132
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI134-.LCFI133
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI135-.LCFI134
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI136-.LFB38
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI137-.LCFI136
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI139-.LCFI138
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE68:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/stddef.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 4 "c:/users/user/desktop/release/source/portable/mplab/pic32mz/portmacro.h"
	.file 5 "c:/users/user/desktop/release/source/include/list.h"
	.file 6 "c:/users/user/desktop/release/source/include/task.h"
	.file 7 "c:/users/user/desktop/release/source/include/queue.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x167a
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"../../../Source/queue.c\000"
	.ascii	"C:/Users/User/Desktop/Release/Code/FreeRTOS/Lab10_Adv_Co"
	.ascii	"ncurrency\000"
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"long int\000"
	.uleb128 0x3
	.ascii	"size_t\000"
	.byte	0x2
	.byte	0x5
	.4byte	0xb3
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
	.uleb128 0x3
	.ascii	"__int8_t\000"
	.byte	0x3
	.byte	0x2e
	.4byte	0xef
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x3
	.ascii	"__uint8_t\000"
	.byte	0x3
	.byte	0x2f
	.4byte	0x10f
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
	.byte	0x3
	.byte	0x33
	.4byte	0xcf
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
	.ascii	"BaseType_t\000"
	.byte	0x4
	.byte	0x3b
	.4byte	0x99
	.uleb128 0x3
	.ascii	"UBaseType_t\000"
	.byte	0x4
	.byte	0x3c
	.4byte	0xb3
	.uleb128 0x3
	.ascii	"TickType_t\000"
	.byte	0x4
	.byte	0x42
	.4byte	0x143
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x6
	.ascii	"xLIST_ITEM\000"
	.byte	0x14
	.byte	0x5
	.byte	0x8c
	.4byte	0x234
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x8f
	.4byte	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"pxNext\000"
	.byte	0x5
	.byte	0x90
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x5
	.byte	0x91
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii	"pvOwner\000"
	.byte	0x5
	.byte	0x92
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii	"pvContainer\000"
	.byte	0x5
	.byte	0x93
	.4byte	0x180
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1cb
	.uleb128 0x3
	.ascii	"ListItem_t\000"
	.byte	0x5
	.byte	0x96
	.4byte	0x1cb
	.uleb128 0x6
	.ascii	"xMINI_LIST_ITEM\000"
	.byte	0xc
	.byte	0x5
	.byte	0x98
	.4byte	0x292
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x9b
	.4byte	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"pxNext\000"
	.byte	0x5
	.byte	0x9c
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x5
	.byte	0x9d
	.4byte	0x234
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii	"MiniListItem_t\000"
	.byte	0x5
	.byte	0x9f
	.4byte	0x24c
	.uleb128 0x6
	.ascii	"xLIST\000"
	.byte	0x14
	.byte	0x5
	.byte	0xa4
	.4byte	0x2f6
	.uleb128 0x8
	.ascii	"uxNumberOfItems\000"
	.byte	0x5
	.byte	0xa7
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"pxIndex\000"
	.byte	0x5
	.byte	0xa8
	.4byte	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii	"xListEnd\000"
	.byte	0x5
	.byte	0xa9
	.4byte	0x292
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x194
	.uleb128 0x5
	.byte	0x4
	.4byte	0x23a
	.uleb128 0x3
	.ascii	"List_t\000"
	.byte	0x5
	.byte	0xab
	.4byte	0x2a8
	.uleb128 0x6
	.ascii	"xTIME_OUT\000"
	.byte	0x8
	.byte	0x6
	.byte	0x5e
	.4byte	0x355
	.uleb128 0x8
	.ascii	"xOverflowCount\000"
	.byte	0x6
	.byte	0x60
	.4byte	0x182
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"xTimeOnEntering\000"
	.byte	0x6
	.byte	0x61
	.4byte	0x1a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.ascii	"TimeOut_t\000"
	.byte	0x6
	.byte	0x62
	.4byte	0x30f
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x3
	.ascii	"QueueHandle_t\000"
	.byte	0x7
	.byte	0x2f
	.4byte	0x180
	.uleb128 0x3
	.ascii	"QueueSetHandle_t\000"
	.byte	0x7
	.byte	0x36
	.4byte	0x180
	.uleb128 0x3
	.ascii	"QueueSetMemberHandle_t\000"
	.byte	0x7
	.byte	0x3d
	.4byte	0x180
	.uleb128 0xa
	.byte	0x4
	.byte	0x1
	.byte	0x5f
	.4byte	0x3f0
	.uleb128 0xb
	.ascii	"pcReadFrom\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x3f0
	.uleb128 0xb
	.ascii	"uxRecursiveCallCount\000"
	.byte	0x1
	.byte	0x62
	.4byte	0x194
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x6
	.ascii	"QueueDefinition\000"
	.byte	0x4c
	.byte	0x1
	.byte	0x59
	.4byte	0x4e9
	.uleb128 0x8
	.ascii	"pcHead\000"
	.byte	0x1
	.byte	0x5b
	.4byte	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.ascii	"pcTail\000"
	.byte	0x1
	.byte	0x5c
	.4byte	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.ascii	"pcWriteTo\000"
	.byte	0x1
	.byte	0x5d
	.4byte	0x3f0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.ascii	"u\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x3b9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.ascii	"xTasksWaitingToSend\000"
	.byte	0x1
	.byte	0x65
	.4byte	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.ascii	"xTasksWaitingToReceive\000"
	.byte	0x1
	.byte	0x66
	.4byte	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0x68
	.4byte	0x2f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x8
	.ascii	"uxLength\000"
	.byte	0x1
	.byte	0x69
	.4byte	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x1
	.byte	0x6a
	.4byte	0x194
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.byte	0x6c
	.4byte	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x6d
	.4byte	0x4e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x45
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x74
	.4byte	0x4ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.byte	0
	.uleb128 0x9
	.4byte	0xdf
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3f6
	.uleb128 0x3
	.ascii	"xQUEUE\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x3f6
	.uleb128 0x3
	.ascii	"Queue_t\000"
	.byte	0x1
	.byte	0x80
	.4byte	0x4f4
	.uleb128 0xc
	.byte	0x1
	.ascii	"xQueueGenericReset\000"
	.byte	0x1
	.byte	0xf8
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x586
	.uleb128 0xd
	.4byte	.LASF7
	.byte	0x1
	.byte	0xf8
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xe
	.ascii	"xNewQueue\000"
	.byte	0x1
	.byte	0xf8
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0xf
	.4byte	.LASF8
	.byte	0x1
	.byte	0xfa
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x112
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x58b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x502
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueGenericCreate\000"
	.byte	0x1
	.2byte	0x167
	.byte	0x1
	.4byte	0x36e
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x627
	.uleb128 0x14
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x167
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x14
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x167
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x167
	.4byte	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x169
	.4byte	0x58b
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x15
	.ascii	"xQueueSizeInBytes\000"
	.byte	0x1
	.2byte	0x16a
	.4byte	0xa5
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x16b
	.4byte	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0x12
	.4byte	0x194
	.uleb128 0x12
	.4byte	0xfe
	.uleb128 0x16
	.ascii	"prvInitialiseNewQueue\000"
	.byte	0x1
	.2byte	0x199
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x6a7
	.uleb128 0x14
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x199
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x14
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x199
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x14
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x199
	.4byte	0x1b9
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x199
	.4byte	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x199
	.4byte	0x58b
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.byte	0
	.uleb128 0x16
	.ascii	"prvInitialiseMutex\000"
	.byte	0x1
	.2byte	0x1c5
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x6de
	.uleb128 0x14
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1c5
	.4byte	0x58b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueCreateMutex\000"
	.byte	0x1
	.2byte	0x1e3
	.byte	0x1
	.4byte	0x36e
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x758
	.uleb128 0x14
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x1e3
	.4byte	0x62c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x11
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x58b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x15
	.ascii	"uxMutexLength\000"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.ascii	"uxMutexSize\000"
	.byte	0x1
	.2byte	0x1e6
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueGiveMutexRecursive\000"
	.byte	0x1
	.2byte	0x23f
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x7bf
	.uleb128 0x17
	.ascii	"xMutex\000"
	.byte	0x1
	.2byte	0x23f
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x241
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.ascii	"pxMutex\000"
	.byte	0x1
	.2byte	0x242
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueTakeMutexRecursive\000"
	.byte	0x1
	.2byte	0x276
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x835
	.uleb128 0x17
	.ascii	"xMutex\000"
	.byte	0x1
	.2byte	0x276
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x276
	.4byte	0x1a7
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x278
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.ascii	"pxMutex\000"
	.byte	0x1
	.2byte	0x279
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueCreateCountingSemaphore\000"
	.byte	0x1
	.2byte	0x2bc
	.byte	0x1
	.4byte	0x36e
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x8b0
	.uleb128 0x17
	.ascii	"uxMaxCount\000"
	.byte	0x1
	.2byte	0x2bc
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x17
	.ascii	"uxInitialCount\000"
	.byte	0x1
	.2byte	0x2bc
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x15
	.ascii	"xHandle\000"
	.byte	0x1
	.2byte	0x2be
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueGenericSend\000"
	.byte	0x1
	.2byte	0x2d6
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x9d3
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x36e
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x14
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x9d3
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x1a7
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x14
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x2d6
	.4byte	0x9df
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.ascii	"xYieldRequired\000"
	.byte	0x1
	.2byte	0x2d8
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x2d9
	.4byte	0x355
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2da
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x97f
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x2ff
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0x18
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0x99c
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x312
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x9b9
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x31f
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.byte	0
	.uleb128 0x10
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x385
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x9d8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9de
	.uleb128 0x19
	.uleb128 0x12
	.4byte	0x182
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueGenericSendFromISR\000"
	.byte	0x1
	.2byte	0x39c
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa99
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x39c
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x14
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x39c
	.4byte	0x9d3
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x39c
	.4byte	0xa99
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x14
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x39c
	.4byte	0x9df
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x39e
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x39f
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x3a0
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x3bf
	.4byte	0xaa4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0xa9e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x182
	.uleb128 0x12
	.4byte	0xdf
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueGiveFromISR\000"
	.byte	0x1
	.2byte	0x433
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xb52
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x433
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x433
	.4byte	0xa99
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x435
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x436
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x437
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x45c
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x10
	.4byte	.LBB9
	.4byte	.LBE9
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x463
	.4byte	0xaa4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueReceive\000"
	.byte	0x1
	.2byte	0x4d8
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xc24
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x4d8
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x4d8
	.4byte	0xc24
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x4d8
	.4byte	0x1a7
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x4da
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x4db
	.4byte	0x355
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x4dc
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0xc0a
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x4f5
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x10
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x507
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x542
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x180
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueSemaphoreTake\000"
	.byte	0x1
	.2byte	0x566
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xd52
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x566
	.4byte	0x36e
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x566
	.4byte	0x1a7
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x568
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x569
	.4byte	0x355
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x56a
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x15
	.ascii	"xInheritanceOccurred\000"
	.byte	0x1
	.2byte	0x56d
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0xd06
	.uleb128 0x15
	.ascii	"uxSemaphoreCount\000"
	.byte	0x1
	.2byte	0x589
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x10
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x5aa
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0xd23
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x602
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0
	.uleb128 0x10
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0x15
	.ascii	"uxHighestWaitingPriority\000"
	.byte	0x1
	.2byte	0x626
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueuePeek\000"
	.byte	0x1
	.2byte	0x641
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xe30
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x641
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x641
	.4byte	0xc24
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x641
	.4byte	0x1a7
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x11
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x643
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x644
	.4byte	0x355
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x645
	.4byte	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x646
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0xe16
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x65f
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x10
	.4byte	.LBB18
	.4byte	.LBE18
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x677
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x11
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x6b3
	.4byte	0x143
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueReceiveFromISR\000"
	.byte	0x1
	.2byte	0x6d7
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xeeb
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x6d7
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x6d7
	.4byte	0xc24
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x14
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x6d7
	.4byte	0xa99
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x6d9
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x6da
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x6db
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x10
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x6f2
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x10
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x6f7
	.4byte	0xaa4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueuePeekFromISR\000"
	.byte	0x1
	.2byte	0x732
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xf71
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x732
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x732
	.4byte	0xc24
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x734
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x735
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x11
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x736
	.4byte	0x3f0
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x737
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"uxQueueMessagesWaiting\000"
	.byte	0x1
	.2byte	0x768
	.byte	0x1
	.4byte	0x194
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xfc0
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x768
	.4byte	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x76a
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x12
	.4byte	0x36e
	.uleb128 0x13
	.byte	0x1
	.ascii	"uxQueueSpacesAvailable\000"
	.byte	0x1
	.2byte	0x778
	.byte	0x1
	.4byte	0x194
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1023
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x778
	.4byte	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x77a
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x77b
	.4byte	0x58b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"uxQueueMessagesWaitingFromISR\000"
	.byte	0x1
	.2byte	0x78a
	.byte	0x1
	.4byte	0x194
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1079
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x78a
	.4byte	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x78c
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii	"vQueueDelete\000"
	.byte	0x1
	.2byte	0x796
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x10ba
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x796
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x798
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1b
	.ascii	"prvGetDisinheritPriorityAfterTimeout\000"
	.byte	0x1
	.2byte	0x7e0
	.byte	0x1
	.4byte	0x194
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1132
	.uleb128 0x14
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x7e0
	.4byte	0x1132
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.ascii	"uxHighestPriorityOfWaitingTasks\000"
	.byte	0x1
	.2byte	0x7e2
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.4byte	0x1137
	.uleb128 0x5
	.byte	0x4
	.4byte	0x113d
	.uleb128 0x12
	.4byte	0x502
	.uleb128 0x1c
	.ascii	"prvCopyDataToQueue\000"
	.byte	0x1
	.2byte	0x7f9
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x11bf
	.uleb128 0x14
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x7f9
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x14
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x7f9
	.4byte	0x9d8
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x17
	.ascii	"xPosition\000"
	.byte	0x1
	.2byte	0x7f9
	.4byte	0x9df
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x7fb
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x7fc
	.4byte	0x194
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x16
	.ascii	"prvCopyDataFromQueue\000"
	.byte	0x1
	.2byte	0x848
	.byte	0x1
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1207
	.uleb128 0x14
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x848
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x14
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x848
	.4byte	0xc24
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x16
	.ascii	"prvUnlockQueue\000"
	.byte	0x1
	.2byte	0x85a
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1270
	.uleb128 0x14
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x85a
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0x1256
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x864
	.4byte	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x10
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x8b5
	.4byte	0xdf
	.byte	0x2
	.byte	0x91
	.sleb128 17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii	"prvIsQueueEmpty\000"
	.byte	0x1
	.2byte	0x8d2
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x12b7
	.uleb128 0x14
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x8d2
	.4byte	0x1137
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x8d4
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueIsQueueEmptyFromISR\000"
	.byte	0x1
	.2byte	0x8e7
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1309
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x8e7
	.4byte	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x8e9
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1c
	.ascii	"prvIsQueueFull\000"
	.byte	0x1
	.2byte	0x8f9
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x134f
	.uleb128 0x14
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x8f9
	.4byte	0x1137
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x8fb
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueIsQueueFullFromISR\000"
	.byte	0x1
	.2byte	0x90e
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x13a0
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x90e
	.4byte	0xfc0
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x910
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.ascii	"vQueueWaitForMessageRestricted\000"
	.byte	0x1
	.2byte	0xa8e
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x141f
	.uleb128 0x14
	.4byte	.LASF7
	.byte	0x1
	.2byte	0xa8e
	.4byte	0x36e
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.2byte	0xa8e
	.4byte	0x1a7
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x17
	.ascii	"xWaitIndefinitely\000"
	.byte	0x1
	.2byte	0xa8e
	.4byte	0x9df
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xa90
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueCreateSet\000"
	.byte	0x1
	.2byte	0xab2
	.byte	0x1
	.4byte	0x383
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1476
	.uleb128 0x17
	.ascii	"uxEventQueueLength\000"
	.byte	0x1
	.2byte	0xab2
	.4byte	0x627
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xab4
	.4byte	0x383
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueAddToSet\000"
	.byte	0x1
	.2byte	0xac0
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x14cc
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x1
	.2byte	0xac0
	.4byte	0x39b
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0xac0
	.4byte	0x383
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0xac2
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueRemoveFromSet\000"
	.byte	0x1
	.2byte	0xae1
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1545
	.uleb128 0x14
	.4byte	.LASF25
	.byte	0x1
	.2byte	0xae1
	.4byte	0x39b
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0xae1
	.4byte	0x383
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0xae3
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.ascii	"pxQueueOrSemaphore\000"
	.byte	0x1
	.2byte	0xae4
	.4byte	0x586
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueSelectFromSet\000"
	.byte	0x1
	.2byte	0xb05
	.byte	0x1
	.4byte	0x39b
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x15a0
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0xb05
	.4byte	0x383
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x14
	.4byte	.LASF15
	.byte	0x1
	.2byte	0xb05
	.4byte	0x15a0
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0xb07
	.4byte	0x39b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x12
	.4byte	0x1a7
	.uleb128 0x13
	.byte	0x1
	.ascii	"xQueueSelectFromSetFromISR\000"
	.byte	0x1
	.2byte	0xb12
	.byte	0x1
	.4byte	0x39b
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x15f8
	.uleb128 0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0xb12
	.4byte	0x383
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0xb14
	.4byte	0x39b
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1d
	.ascii	"prvNotifyQueueSetContainer\000"
	.byte	0x1
	.2byte	0xb1f
	.byte	0x1
	.4byte	0x182
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x14
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xb1f
	.4byte	0x1132
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x14
	.4byte	.LASF17
	.byte	0x1
	.2byte	0xb1f
	.4byte	0x9df
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x11
	.4byte	.LASF6
	.byte	0x1
	.2byte	0xb21
	.4byte	0x58b
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0xb22
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x10
	.4byte	.LBB24
	.4byte	.LBE24
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0xb2b
	.4byte	0xaa4
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x17
	.uleb128 0x5
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
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
.LASF20:
	.ascii	"pxHigherPriorityTaskWoken\000"
.LASF26:
	.ascii	"xQueueSet\000"
.LASF25:
	.ascii	"xQueueOrSemaphore\000"
.LASF4:
	.ascii	"cRxLock\000"
.LASF11:
	.ascii	"ucQueueType\000"
.LASF12:
	.ascii	"pxNewQueue\000"
.LASF18:
	.ascii	"xEntryTimeSet\000"
.LASF14:
	.ascii	"xReturn\000"
.LASF23:
	.ascii	"pcOriginalReadPosition\000"
.LASF5:
	.ascii	"cTxLock\000"
.LASF13:
	.ascii	"pucQueueStorage\000"
.LASF16:
	.ascii	"pvItemToQueue\000"
.LASF1:
	.ascii	"pxPrevious\000"
.LASF0:
	.ascii	"xItemValue\000"
.LASF22:
	.ascii	"pvBuffer\000"
.LASF8:
	.ascii	"pxQueue\000"
.LASF21:
	.ascii	"uxSavedInterruptStatus\000"
.LASF10:
	.ascii	"uxQueueLength\000"
.LASF2:
	.ascii	"uxMessagesWaiting\000"
.LASF19:
	.ascii	"xTimeOut\000"
.LASF6:
	.ascii	"pxQueueSetContainer\000"
.LASF15:
	.ascii	"xTicksToWait\000"
.LASF3:
	.ascii	"uxItemSize\000"
.LASF9:
	.ascii	"ulCause\000"
.LASF7:
	.ascii	"xQueue\000"
.LASF24:
	.ascii	"uxReturn\000"
.LASF17:
	.ascii	"xCopyPosition\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
