	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.section	.bss,bss
	.align	2
	.type	xActiveTimerList1, @object
	.size	xActiveTimerList1, 20
xActiveTimerList1:
	.space	20
	.align	2
	.type	xActiveTimerList2, @object
	.size	xActiveTimerList2, 20
xActiveTimerList2:
	.space	20
	.section	.sbss,bss
	.align	2
	.type	pxCurrentTimerList, @object
	.size	pxCurrentTimerList, 4
pxCurrentTimerList:
	.space	4
	.align	2
	.type	pxOverflowTimerList, @object
	.size	pxOverflowTimerList, 4
pxOverflowTimerList:
	.space	4
	.align	2
	.type	xTimerQueue, @object
	.size	xTimerQueue, 4
xTimerQueue:
	.space	4
	.align	2
	.type	xTimerTaskHandle, @object
	.size	xTimerTaskHandle, 4
xTimerTaskHandle:
	.space	4
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"Tmr Svc\000"
	.align	2
.LC1:
	.ascii	"../../../Source/timers.c\000"
	.section	.text,code
	.align	2
	.globl	xTimerCreateTimerTask
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/source/timers.c"
	.loc 1 225 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerCreateTimerTask
	.type	xTimerCreateTimerTask, @function
xTimerCreateTimerTask:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI0 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	.loc 1 226 0
	sw	$0,24($fp)
	.loc 1 232 0
	jal	prvCheckForValidListAndQueue
	nop

	.loc 1 234 0
	lw	$2,%gp_rel(xTimerQueue)($28)
	beq	$2,$0,.L2
	nop

	.loc 1 258 0
	li	$2,2			# 0x2
	sw	$2,16($sp)
	addiu	$2,$28,%gp_rel(xTimerTaskHandle)
	sw	$2,20($sp)
	lui	$2,%hi(prvTimerTask)
	addiu	$4,$2,%lo(prvTimerTask)
	lui	$2,%hi(.LC0)
	addiu	$5,$2,%lo(.LC0)
	li	$6,380			# 0x17c
	move	$7,$0
	jal	xTaskCreate
	nop

	sw	$2,24($fp)
.L2:
	.loc 1 272 0
	lw	$2,24($fp)
	bne	$2,$0,.L3
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,272			# 0x110
	jal	vAssertCalled
	nop

.L3:
	.loc 1 273 0
	lw	$2,24($fp)
	.loc 1 274 0
	move	$sp,$fp
.LCFI3 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerCreateTimerTask
.LFE4:
	.size	xTimerCreateTimerTask, .-xTimerCreateTimerTask
	.align	2
	.globl	xTimerCreate
.LFB5 = .
	.loc 1 284 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerCreate
	.type	xTimerCreate, @function
xTimerCreate:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI4 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI5 = .
	move	$fp,$sp
.LCFI6 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	.loc 1 287 0
	li	$4,40			# 0x28
	jal	pvPortMalloc
	nop

	sw	$2,24($fp)
	.loc 1 289 0
	lw	$2,24($fp)
	beq	$2,$0,.L6
	nop

	.loc 1 291 0
	lw	$2,56($fp)
	sw	$2,16($sp)
	lw	$2,24($fp)
	sw	$2,20($sp)
	lw	$4,40($fp)
	lw	$5,44($fp)
	lw	$6,48($fp)
	lw	$7,52($fp)
	jal	prvInitialiseNewTimer
	nop

.L6:
	.loc 1 303 0
	lw	$2,24($fp)
	.loc 1 304 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerCreate
.LFE5:
	.size	xTimerCreate, .-xTimerCreate
	.align	2
.LFB6 = .
	.loc 1 359 0
	.set	nomips16
	.set	nomicromips
	.ent	prvInitialiseNewTimer
	.type	prvInitialiseNewTimer, @function
prvInitialiseNewTimer:
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
	sw	$7,36($fp)
	.loc 1 361 0
	lw	$2,28($fp)
	bne	$2,$0,.L9
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,361			# 0x169
	jal	vAssertCalled
	nop

.L9:
	.loc 1 363 0
	lw	$2,44($fp)
	beq	$2,$0,.L8
	nop

	.loc 1 367 0
	jal	prvCheckForValidListAndQueue
	nop

	.loc 1 371 0
	lw	$2,44($fp)
	lw	$3,24($fp)
	sw	$3,0($2)
	.loc 1 372 0
	lw	$2,44($fp)
	lw	$3,28($fp)
	sw	$3,24($2)
	.loc 1 373 0
	lw	$2,44($fp)
	lw	$3,32($fp)
	sw	$3,28($2)
	.loc 1 374 0
	lw	$2,44($fp)
	lw	$3,36($fp)
	sw	$3,32($2)
	.loc 1 375 0
	lw	$2,44($fp)
	lw	$3,40($fp)
	sw	$3,36($2)
	.loc 1 376 0
	lw	$2,44($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	vListInitialiseItem
	nop

.L8:
	.loc 1 379 0
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
	.end	prvInitialiseNewTimer
.LFE6:
	.size	prvInitialiseNewTimer, .-prvInitialiseNewTimer
	.align	2
	.globl	xTimerGenericCommand
.LFB7 = .
	.loc 1 383 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerGenericCommand
	.type	xTimerGenericCommand, @function
xTimerGenericCommand:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI12 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 384 0
	sw	$0,16($fp)
	.loc 1 387 0
	lw	$2,48($fp)
	bne	$2,$0,.L12
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,387			# 0x183
	jal	vAssertCalled
	nop

.L12:
	.loc 1 391 0
	lw	$2,%gp_rel(xTimerQueue)($28)
	beq	$2,$0,.L13
	nop

	.loc 1 394 0
	lw	$2,52($fp)
	sw	$2,20($fp)
	.loc 1 395 0
	lw	$2,56($fp)
	sw	$2,24($fp)
	.loc 1 396 0
	lw	$2,48($fp)
	sw	$2,28($fp)
	.loc 1 398 0
	lw	$2,52($fp)
	slt	$2,$2,6
	beq	$2,$0,.L14
	nop

	.loc 1 400 0
	jal	xTaskGetSchedulerState
	nop

	move	$3,$2
	li	$2,2			# 0x2
	bne	$3,$2,.L15
	nop

	.loc 1 402 0
	lw	$3,%gp_rel(xTimerQueue)($28)
	addiu	$2,$fp,20
	move	$4,$3
	move	$5,$2
	lw	$6,64($fp)
	move	$7,$0
	jal	xQueueGenericSend
	nop

	sw	$2,16($fp)
	j	.L13
	nop

.L15:
	.loc 1 406 0
	lw	$3,%gp_rel(xTimerQueue)($28)
	addiu	$2,$fp,20
	move	$4,$3
	move	$5,$2
	move	$6,$0
	move	$7,$0
	jal	xQueueGenericSend
	nop

	sw	$2,16($fp)
	j	.L13
	nop

.L14:
	.loc 1 411 0
	lw	$3,%gp_rel(xTimerQueue)($28)
	addiu	$2,$fp,20
	move	$4,$3
	move	$5,$2
	lw	$6,60($fp)
	move	$7,$0
	jal	xQueueGenericSendFromISR
	nop

	sw	$2,16($fp)
.L13:
	.loc 1 421 0
	lw	$2,16($fp)
	.loc 1 422 0
	move	$sp,$fp
.LCFI15 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerGenericCommand
.LFE7:
	.size	xTimerGenericCommand, .-xTimerGenericCommand
	.align	2
	.globl	xTimerGetTimerDaemonTaskHandle
.LFB8 = .
	.loc 1 426 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerGetTimerDaemonTaskHandle
	.type	xTimerGetTimerDaemonTaskHandle, @function
xTimerGetTimerDaemonTaskHandle:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI16 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
	.loc 1 429 0
	lw	$2,%gp_rel(xTimerTaskHandle)($28)
	bne	$2,$0,.L20
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,429			# 0x1ad
	jal	vAssertCalled
	nop

.L20:
	.loc 1 430 0
	lw	$2,%gp_rel(xTimerTaskHandle)($28)
	.loc 1 431 0
	move	$sp,$fp
.LCFI19 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerGetTimerDaemonTaskHandle
.LFE8:
	.size	xTimerGetTimerDaemonTaskHandle, .-xTimerGetTimerDaemonTaskHandle
	.align	2
	.globl	xTimerGetPeriod
.LFB9 = .
	.loc 1 435 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerGetPeriod
	.type	xTimerGetPeriod, @function
xTimerGetPeriod:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI20 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI21 = .
	move	$fp,$sp
.LCFI22 = .
	sw	$4,32($fp)
	.loc 1 436 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 438 0
	lw	$2,32($fp)
	bne	$2,$0,.L23
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,438			# 0x1b6
	jal	vAssertCalled
	nop

.L23:
	.loc 1 439 0
	lw	$2,16($fp)
	lw	$2,24($2)
	.loc 1 440 0
	move	$sp,$fp
.LCFI23 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerGetPeriod
.LFE9:
	.size	xTimerGetPeriod, .-xTimerGetPeriod
	.align	2
	.globl	xTimerGetExpiryTime
.LFB10 = .
	.loc 1 444 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerGetExpiryTime
	.type	xTimerGetExpiryTime, @function
xTimerGetExpiryTime:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI24 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI25 = .
	move	$fp,$sp
.LCFI26 = .
	sw	$4,32($fp)
	.loc 1 445 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 448 0
	lw	$2,32($fp)
	bne	$2,$0,.L26
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,448			# 0x1c0
	jal	vAssertCalled
	nop

.L26:
	.loc 1 449 0
	lw	$2,16($fp)
	lw	$2,4($2)
	sw	$2,20($fp)
	.loc 1 450 0
	lw	$2,20($fp)
	.loc 1 451 0
	move	$sp,$fp
.LCFI27 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerGetExpiryTime
.LFE10:
	.size	xTimerGetExpiryTime, .-xTimerGetExpiryTime
	.align	2
	.globl	pcTimerGetName
.LFB11 = .
	.loc 1 455 0
	.set	nomips16
	.set	nomicromips
	.ent	pcTimerGetName
	.type	pcTimerGetName, @function
pcTimerGetName:
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
	.loc 1 456 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 458 0
	lw	$2,32($fp)
	bne	$2,$0,.L29
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,458			# 0x1ca
	jal	vAssertCalled
	nop

.L29:
	.loc 1 459 0
	lw	$2,16($fp)
	lw	$2,0($2)
	.loc 1 460 0
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
	.end	pcTimerGetName
.LFE11:
	.size	pcTimerGetName, .-pcTimerGetName
	.align	2
.LFB12 = .
	.loc 1 464 0
	.set	nomips16
	.set	nomicromips
	.ent	prvProcessExpiredTimer
	.type	prvProcessExpiredTimer, @function
prvProcessExpiredTimer:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI32 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI33 = .
	move	$fp,$sp
.LCFI34 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 466 0
	lw	$2,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,12($2)
	lw	$2,12($2)
	sw	$2,24($fp)
	.loc 1 470 0
	lw	$2,24($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 475 0
	lw	$2,24($fp)
	lw	$3,28($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L32
	nop

	.loc 1 480 0
	lw	$2,24($fp)
	lw	$3,24($2)
	lw	$2,40($fp)
	addu	$2,$3,$2
	lw	$4,24($fp)
	move	$5,$2
	lw	$6,44($fp)
	lw	$7,40($fp)
	jal	prvInsertTimerInActiveList
	nop

	beq	$2,$0,.L32
	nop

	.loc 1 484 0
	sw	$0,16($sp)
	lw	$4,24($fp)
	move	$5,$0
	lw	$6,40($fp)
	move	$7,$0
	jal	xTimerGenericCommand
	nop

	sw	$2,28($fp)
	.loc 1 485 0
	lw	$2,28($fp)
	bne	$2,$0,.L32
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,485			# 0x1e5
	jal	vAssertCalled
	nop

.L32:
	.loc 1 499 0
	lw	$2,24($fp)
	lw	$2,36($2)
	lw	$4,24($fp)
	jalr	$2
	nop

	.loc 1 500 0
	move	$sp,$fp
.LCFI35 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvProcessExpiredTimer
.LFE12:
	.size	prvProcessExpiredTimer, .-prvProcessExpiredTimer
	.align	2
.LFB13 = .
	.loc 1 504 0
	.set	nomips16
	.set	nomicromips
	.ent	prvTimerTask
	.type	prvTimerTask, @function
prvTimerTask:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI36 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI37 = .
	move	$fp,$sp
.LCFI38 = .
	sw	$4,32($fp)
.L35:
	.loc 1 527 0
	addiu	$2,$fp,20
	move	$4,$2
	jal	prvGetNextExpireTime
	nop

	sw	$2,16($fp)
	.loc 1 531 0
	lw	$2,20($fp)
	lw	$4,16($fp)
	move	$5,$2
	jal	prvProcessTimerOrBlockTask
	nop

	.loc 1 534 0
	jal	prvProcessReceivedCommands
	nop

	.loc 1 535 0
	j	.L35
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvTimerTask
.LFE13:
	.size	prvTimerTask, .-prvTimerTask
	.align	2
.LFB14 = .
	.loc 1 540 0
	.set	nomips16
	.set	nomicromips
	.ent	prvProcessTimerOrBlockTask
	.type	prvProcessTimerOrBlockTask, @function
prvProcessTimerOrBlockTask:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI39 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI40 = .
	move	$fp,$sp
.LCFI41 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 544 0
	jal	vTaskSuspendAll
	nop

	.loc 1 551 0
	addiu	$2,$fp,24
	move	$4,$2
	jal	prvSampleTimeNow
	nop

	sw	$2,16($fp)
	.loc 1 552 0
	lw	$2,24($fp)
	bne	$2,$0,.L37
	nop

	.loc 1 555 0
	lw	$2,44($fp)
	bne	$2,$0,.L38
	nop

	lw	$3,40($fp)
	lw	$2,16($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L38
	nop

	.loc 1 557 0
	jal	xTaskResumeAll
	nop

	.loc 1 558 0
	lw	$4,40($fp)
	lw	$5,16($fp)
	jal	prvProcessExpiredTimer
	nop

	j	.L36
	nop

.L38:
	.loc 1 568 0
	lw	$2,44($fp)
	beq	$2,$0,.L40
	nop

	.loc 1 572 0
	lw	$2,%gp_rel(pxOverflowTimerList)($28)
	lw	$2,0($2)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	sw	$2,44($fp)
.L40:
	.loc 1 575 0
	lw	$3,%gp_rel(xTimerQueue)($28)
	lw	$4,40($fp)
	lw	$2,16($fp)
	subu	$2,$4,$2
	move	$4,$3
	move	$5,$2
	lw	$6,44($fp)
	jal	vQueueWaitForMessageRestricted
	nop

	.loc 1 577 0
	jal	xTaskResumeAll
	nop

	bne	$2,$0,.L36
	nop

.LBB2 = .
	.loc 1 583 0
	mfc0	$2,$13,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	ori	$2,$2,0x100
	sw	$2,20($fp)
	lw	$2,20($fp)
	mtc0	$2,$13,0
	ehb
.LBE2 = .
	j	.L36
	nop

.L37:
	.loc 1 593 0
	jal	xTaskResumeAll
	nop

.L36:
	.loc 1 596 0
	move	$sp,$fp
.LCFI42 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvProcessTimerOrBlockTask
.LFE14:
	.size	prvProcessTimerOrBlockTask, .-prvProcessTimerOrBlockTask
	.align	2
.LFB15 = .
	.loc 1 600 0
	.set	nomips16
	.set	nomicromips
	.ent	prvGetNextExpireTime
	.type	prvGetNextExpireTime, @function
prvGetNextExpireTime:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI43 = .
	sw	$fp,12($sp)
.LCFI44 = .
	move	$fp,$sp
.LCFI45 = .
	sw	$4,16($fp)
	.loc 1 610 0
	lw	$2,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,0($2)
	sltu	$2,$2,1
	andi	$2,$2,0x00ff
	move	$3,$2
	lw	$2,16($fp)
	sw	$3,0($2)
	.loc 1 611 0
	lw	$2,16($fp)
	lw	$2,0($2)
	bne	$2,$0,.L43
	nop

	.loc 1 613 0
	lw	$2,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,12($2)
	lw	$2,0($2)
	sw	$2,0($fp)
	j	.L44
	nop

.L43:
	.loc 1 618 0
	sw	$0,0($fp)
.L44:
	.loc 1 621 0
	lw	$2,0($fp)
	.loc 1 622 0
	move	$sp,$fp
.LCFI46 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvGetNextExpireTime
.LFE15:
	.size	prvGetNextExpireTime, .-prvGetNextExpireTime
	.align	2
.LFB16 = .
	.loc 1 626 0
	.set	nomips16
	.set	nomicromips
	.ent	prvSampleTimeNow
	.type	prvSampleTimeNow, @function
prvSampleTimeNow:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI47 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI48 = .
	move	$fp,$sp
.LCFI49 = .
	sw	$4,32($fp)
	.loc 1 630 0
	jal	xTaskGetTickCount
	nop

	sw	$2,16($fp)
	.loc 1 632 0
	lw	$2,%gp_rel(xLastTime.21554)($28)
	lw	$3,16($fp)
	sltu	$2,$3,$2
	beq	$2,$0,.L47
	nop

	.loc 1 634 0
	jal	prvSwitchTimerLists
	nop

	.loc 1 635 0
	lw	$2,32($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L48
	nop

.L47:
	.loc 1 639 0
	lw	$2,32($fp)
	sw	$0,0($2)
.L48:
	.loc 1 642 0
	lw	$2,16($fp)
	sw	$2,%gp_rel(xLastTime.21554)($28)
	.loc 1 644 0
	lw	$2,16($fp)
	.loc 1 645 0
	move	$sp,$fp
.LCFI50 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvSampleTimeNow
.LFE16:
	.size	prvSampleTimeNow, .-prvSampleTimeNow
	.align	2
.LFB17 = .
	.loc 1 649 0
	.set	nomips16
	.set	nomicromips
	.ent	prvInsertTimerInActiveList
	.type	prvInsertTimerInActiveList, @function
prvInsertTimerInActiveList:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI51 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI52 = .
	move	$fp,$sp
.LCFI53 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	.loc 1 650 0
	sw	$0,16($fp)
	.loc 1 652 0
	lw	$2,32($fp)
	lw	$3,36($fp)
	sw	$3,4($2)
	.loc 1 653 0
	lw	$2,32($fp)
	lw	$3,32($fp)
	sw	$3,16($2)
	.loc 1 655 0
	lw	$3,36($fp)
	lw	$2,40($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L51
	nop

	.loc 1 659 0
	lw	$3,40($fp)
	lw	$2,44($fp)
	subu	$3,$3,$2
	lw	$2,32($fp)
	lw	$2,24($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L52
	nop

	.loc 1 663 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L54
	nop

.L52:
	.loc 1 667 0
	lw	$3,%gp_rel(pxOverflowTimerList)($28)
	lw	$2,32($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsert
	nop

	j	.L54
	nop

.L51:
	.loc 1 672 0
	lw	$3,40($fp)
	lw	$2,44($fp)
	sltu	$2,$3,$2
	beq	$2,$0,.L55
	nop

	lw	$3,36($fp)
	lw	$2,44($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L55
	nop

	.loc 1 677 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L54
	nop

.L55:
	.loc 1 681 0
	lw	$3,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,32($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsert
	nop

.L54:
	.loc 1 685 0
	lw	$2,16($fp)
	.loc 1 686 0
	move	$sp,$fp
.LCFI54 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvInsertTimerInActiveList
.LFE17:
	.size	prvInsertTimerInActiveList, .-prvInsertTimerInActiveList
	.align	2
.LFB18 = .
	.loc 1 690 0
	.set	nomips16
	.set	nomicromips
	.ent	prvProcessReceivedCommands
	.type	prvProcessReceivedCommands, @function
prvProcessReceivedCommands:
	.frame	$fp,72,$31		# vars= 40, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-72
.LCFI55 = .
	sw	$31,68($sp)
	sw	$fp,64($sp)
.LCFI56 = .
	move	$fp,$sp
.LCFI57 = .
	.loc 1 696 0
	j	.L58
	nop

.L71:
	.loc 1 702 0
	lw	$2,40($fp)
	bgez	$2,.L59
	nop

.LBB3 = .
	.loc 1 704 0
	addiu	$2,$fp,40
	addiu	$2,$2,4
	sw	$2,24($fp)
	.loc 1 708 0
	lw	$2,24($fp)
	bne	$2,$0,.L60
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,708			# 0x2c4
	jal	vAssertCalled
	nop

.L60:
	.loc 1 711 0
	lw	$2,24($fp)
	lw	$2,0($2)
	lw	$3,24($fp)
	lw	$4,4($3)
	lw	$3,24($fp)
	lw	$3,8($3)
	move	$5,$3
	jalr	$2
	nop

.L59:
.LBE3 = .
	.loc 1 722 0
	lw	$2,40($fp)
	bltz	$2,.L58
	nop

	.loc 1 726 0
	lw	$2,48($fp)
	sw	$2,28($fp)
	.loc 1 728 0
	lw	$2,28($fp)
	lw	$2,20($2)
	beq	$2,$0,.L61
	nop

	.loc 1 731 0
	lw	$2,28($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

.L61:
	.loc 1 746 0
	addiu	$2,$fp,56
	move	$4,$2
	jal	prvSampleTimeNow
	nop

	sw	$2,32($fp)
	.loc 1 748 0
	lw	$2,40($fp)
	sltu	$3,$2,10
	beq	$3,$0,.L72
	nop

	sll	$3,$2,2
	lui	$2,%hi(.L64)
	addiu	$2,$2,%lo(.L64)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L64:
	.word	.L63
	.word	.L63
	.word	.L63
	.word	.L73
	.word	.L66
	.word	.L67
	.word	.L63
	.word	.L63
	.word	.L73
	.word	.L66
.L63:
	.loc 1 756 0
	lw	$3,44($fp)
	lw	$2,28($fp)
	lw	$2,24($2)
	addu	$3,$3,$2
	lw	$2,44($fp)
	lw	$4,28($fp)
	move	$5,$3
	lw	$6,32($fp)
	move	$7,$2
	jal	prvInsertTimerInActiveList
	nop

	beq	$2,$0,.L68
	nop

	.loc 1 760 0
	lw	$2,28($fp)
	lw	$2,36($2)
	lw	$4,28($fp)
	jalr	$2
	nop

	.loc 1 763 0
	lw	$2,28($fp)
	lw	$3,28($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L68
	nop

	.loc 1 765 0
	lw	$3,44($fp)
	lw	$2,28($fp)
	lw	$2,24($2)
	addu	$2,$3,$2
	sw	$0,16($sp)
	lw	$4,28($fp)
	move	$5,$0
	move	$6,$2
	move	$7,$0
	jal	xTimerGenericCommand
	nop

	sw	$2,36($fp)
	.loc 1 766 0
	lw	$2,36($fp)
	bne	$2,$0,.L68
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,766			# 0x2fe
	jal	vAssertCalled
	nop

	.loc 1 778 0
	j	.L58
	nop

.L68:
	j	.L58
	nop

.L66:
	.loc 1 788 0
	lw	$3,44($fp)
	lw	$2,28($fp)
	sw	$3,24($2)
	.loc 1 789 0
	lw	$2,28($fp)
	lw	$2,24($2)
	bne	$2,$0,.L70
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,789			# 0x315
	jal	vAssertCalled
	nop

.L70:
	.loc 1 797 0
	lw	$2,28($fp)
	lw	$3,24($2)
	lw	$2,32($fp)
	addu	$2,$3,$2
	lw	$4,28($fp)
	move	$5,$2
	lw	$6,32($fp)
	lw	$7,32($fp)
	jal	prvInsertTimerInActiveList
	nop

	.loc 1 798 0
	j	.L58
	nop

.L67:
	.loc 1 808 0
	lw	$4,28($fp)
	jal	vPortFree
	nop

	.loc 1 825 0
	j	.L58
	nop

.L72:
	.loc 1 829 0
	nop
	j	.L58
	nop

.L73:
	.loc 1 784 0
	nop
.L58:
	.loc 1 696 0
	lw	$3,%gp_rel(xTimerQueue)($28)
	addiu	$2,$fp,40
	move	$4,$3
	move	$5,$2
	move	$6,$0
	jal	xQueueReceive
	nop

	bne	$2,$0,.L71
	nop

	.loc 1 833 0
	move	$sp,$fp
.LCFI58 = .
	lw	$31,68($sp)
	lw	$fp,64($sp)
	addiu	$sp,$sp,72
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvProcessReceivedCommands
.LFE18:
	.size	prvProcessReceivedCommands, .-prvProcessReceivedCommands
	.align	2
.LFB19 = .
	.loc 1 837 0
	.set	nomips16
	.set	nomicromips
	.ent	prvSwitchTimerLists
	.type	prvSwitchTimerLists, @function
prvSwitchTimerLists:
	.frame	$fp,56,$31		# vars= 24, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
.LCFI59 = .
	sw	$31,52($sp)
	sw	$fp,48($sp)
.LCFI60 = .
	move	$fp,$sp
.LCFI61 = .
	.loc 1 847 0
	j	.L75
	nop

.L78:
	.loc 1 849 0
	lw	$2,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,12($2)
	lw	$2,0($2)
	sw	$2,24($fp)
	.loc 1 852 0
	lw	$2,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,12($2)
	lw	$2,12($2)
	sw	$2,28($fp)
	.loc 1 853 0
	lw	$2,28($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 859 0
	lw	$2,28($fp)
	lw	$2,36($2)
	lw	$4,28($fp)
	jalr	$2
	nop

	.loc 1 861 0
	lw	$2,28($fp)
	lw	$3,28($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L75
	nop

	.loc 1 869 0
	lw	$2,28($fp)
	lw	$3,24($2)
	lw	$2,24($fp)
	addu	$2,$3,$2
	sw	$2,32($fp)
	.loc 1 870 0
	lw	$3,32($fp)
	lw	$2,24($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L76
	nop

	.loc 1 872 0
	lw	$2,28($fp)
	lw	$3,32($fp)
	sw	$3,4($2)
	.loc 1 873 0
	lw	$2,28($fp)
	lw	$3,28($fp)
	sw	$3,16($2)
	.loc 1 874 0
	lw	$3,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,28($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsert
	nop

	j	.L75
	nop

.L76:
	.loc 1 878 0
	sw	$0,16($sp)
	lw	$4,28($fp)
	move	$5,$0
	lw	$6,24($fp)
	move	$7,$0
	jal	xTimerGenericCommand
	nop

	sw	$2,36($fp)
	.loc 1 879 0
	lw	$2,36($fp)
	bne	$2,$0,.L75
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,879			# 0x36f
	jal	vAssertCalled
	nop

.L75:
	.loc 1 847 0
	lw	$2,%gp_rel(pxCurrentTimerList)($28)
	lw	$2,0($2)
	bne	$2,$0,.L78
	nop

	.loc 1 889 0
	lw	$2,%gp_rel(pxCurrentTimerList)($28)
	sw	$2,40($fp)
	.loc 1 890 0
	lw	$2,%gp_rel(pxOverflowTimerList)($28)
	sw	$2,%gp_rel(pxCurrentTimerList)($28)
	.loc 1 891 0
	lw	$2,40($fp)
	sw	$2,%gp_rel(pxOverflowTimerList)($28)
	.loc 1 892 0
	move	$sp,$fp
.LCFI62 = .
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvSwitchTimerLists
.LFE19:
	.size	prvSwitchTimerLists, .-prvSwitchTimerLists
	.align	2
.LFB20 = .
	.loc 1 896 0
	.set	nomips16
	.set	nomicromips
	.ent	prvCheckForValidListAndQueue
	.type	prvCheckForValidListAndQueue, @function
prvCheckForValidListAndQueue:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI63 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI64 = .
	move	$fp,$sp
.LCFI65 = .
	.loc 1 900 0
	jal	vTaskEnterCritical
	nop

	.loc 1 902 0
	lw	$2,%gp_rel(xTimerQueue)($28)
	bne	$2,$0,.L80
	nop

	.loc 1 904 0
	lui	$2,%hi(xActiveTimerList1)
	addiu	$4,$2,%lo(xActiveTimerList1)
	jal	vListInitialise
	nop

	.loc 1 905 0
	lui	$2,%hi(xActiveTimerList2)
	addiu	$4,$2,%lo(xActiveTimerList2)
	jal	vListInitialise
	nop

	.loc 1 906 0
	lui	$2,%hi(xActiveTimerList1)
	addiu	$2,$2,%lo(xActiveTimerList1)
	sw	$2,%gp_rel(pxCurrentTimerList)($28)
	.loc 1 907 0
	lui	$2,%hi(xActiveTimerList2)
	addiu	$2,$2,%lo(xActiveTimerList2)
	sw	$2,%gp_rel(pxOverflowTimerList)($28)
	.loc 1 920 0
	li	$4,5			# 0x5
	li	$5,16			# 0x10
	move	$6,$0
	jal	xQueueGenericCreate
	nop

	sw	$2,%gp_rel(xTimerQueue)($28)
.L80:
	.loc 1 942 0
	jal	vTaskExitCritical
	nop

	.loc 1 943 0
	move	$sp,$fp
.LCFI66 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvCheckForValidListAndQueue
.LFE20:
	.size	prvCheckForValidListAndQueue, .-prvCheckForValidListAndQueue
	.align	2
	.globl	xTimerIsTimerActive
.LFB21 = .
	.loc 1 947 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerIsTimerActive
	.type	xTimerIsTimerActive, @function
xTimerIsTimerActive:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI67 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI68 = .
	move	$fp,$sp
.LCFI69 = .
	sw	$4,32($fp)
	.loc 1 949 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 951 0
	lw	$2,32($fp)
	bne	$2,$0,.L82
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,951			# 0x3b7
	jal	vAssertCalled
	nop

.L82:
	.loc 1 954 0
	jal	vTaskEnterCritical
	nop

	.loc 1 959 0
	lw	$2,16($fp)
	lw	$2,20($2)
	sltu	$2,$0,$2
	andi	$2,$2,0x00ff
	sw	$2,20($fp)
	.loc 1 961 0
	jal	vTaskExitCritical
	nop

	.loc 1 963 0
	lw	$2,20($fp)
	.loc 1 964 0
	move	$sp,$fp
.LCFI70 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerIsTimerActive
.LFE21:
	.size	xTimerIsTimerActive, .-xTimerIsTimerActive
	.align	2
	.globl	pvTimerGetTimerID
.LFB22 = .
	.loc 1 968 0
	.set	nomips16
	.set	nomicromips
	.ent	pvTimerGetTimerID
	.type	pvTimerGetTimerID, @function
pvTimerGetTimerID:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI71 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI72 = .
	move	$fp,$sp
.LCFI73 = .
	sw	$4,32($fp)
	.loc 1 969 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 972 0
	lw	$2,32($fp)
	bne	$2,$0,.L85
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,972			# 0x3cc
	jal	vAssertCalled
	nop

.L85:
	.loc 1 974 0
	jal	vTaskEnterCritical
	nop

	.loc 1 976 0
	lw	$2,16($fp)
	lw	$2,32($2)
	sw	$2,20($fp)
	.loc 1 978 0
	jal	vTaskExitCritical
	nop

	.loc 1 980 0
	lw	$2,20($fp)
	.loc 1 981 0
	move	$sp,$fp
.LCFI74 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pvTimerGetTimerID
.LFE22:
	.size	pvTimerGetTimerID, .-pvTimerGetTimerID
	.align	2
	.globl	vTimerSetTimerID
.LFB23 = .
	.loc 1 985 0
	.set	nomips16
	.set	nomicromips
	.ent	vTimerSetTimerID
	.type	vTimerSetTimerID, @function
vTimerSetTimerID:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI75 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI76 = .
	move	$fp,$sp
.LCFI77 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 986 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 988 0
	lw	$2,32($fp)
	bne	$2,$0,.L88
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,988			# 0x3dc
	jal	vAssertCalled
	nop

.L88:
	.loc 1 990 0
	jal	vTaskEnterCritical
	nop

	.loc 1 992 0
	lw	$2,16($fp)
	lw	$3,36($fp)
	sw	$3,32($2)
	.loc 1 994 0
	jal	vTaskExitCritical
	nop

	.loc 1 995 0
	move	$sp,$fp
.LCFI78 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTimerSetTimerID
.LFE23:
	.size	vTimerSetTimerID, .-vTimerSetTimerID
	.align	2
	.globl	xTimerPendFunctionCallFromISR
.LFB24 = .
	.loc 1 1001 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerPendFunctionCallFromISR
	.type	xTimerPendFunctionCallFromISR, @function
xTimerPendFunctionCallFromISR:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI79 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI80 = .
	move	$fp,$sp
.LCFI81 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 1007 0
	li	$2,-2			# 0xfffffffffffffffe
	sw	$2,20($fp)
	.loc 1 1008 0
	lw	$2,48($fp)
	sw	$2,24($fp)
	.loc 1 1009 0
	lw	$2,52($fp)
	sw	$2,28($fp)
	.loc 1 1010 0
	lw	$2,56($fp)
	sw	$2,32($fp)
	.loc 1 1012 0
	lw	$3,%gp_rel(xTimerQueue)($28)
	addiu	$2,$fp,20
	move	$4,$3
	move	$5,$2
	lw	$6,60($fp)
	move	$7,$0
	jal	xQueueGenericSendFromISR
	nop

	sw	$2,16($fp)
	.loc 1 1016 0
	lw	$2,16($fp)
	.loc 1 1017 0
	move	$sp,$fp
.LCFI82 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerPendFunctionCallFromISR
.LFE24:
	.size	xTimerPendFunctionCallFromISR, .-xTimerPendFunctionCallFromISR
	.align	2
	.globl	xTimerPendFunctionCall
.LFB25 = .
	.loc 1 1025 0
	.set	nomips16
	.set	nomicromips
	.ent	xTimerPendFunctionCall
	.type	xTimerPendFunctionCall, @function
xTimerPendFunctionCall:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI83 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI84 = .
	move	$fp,$sp
.LCFI85 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 1032 0
	lw	$2,%gp_rel(xTimerQueue)($28)
	bne	$2,$0,.L92
	nop

	lui	$2,%hi(.LC1)
	addiu	$4,$2,%lo(.LC1)
	li	$5,1032			# 0x408
	jal	vAssertCalled
	nop

.L92:
	.loc 1 1036 0
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,20($fp)
	.loc 1 1037 0
	lw	$2,48($fp)
	sw	$2,24($fp)
	.loc 1 1038 0
	lw	$2,52($fp)
	sw	$2,28($fp)
	.loc 1 1039 0
	lw	$2,56($fp)
	sw	$2,32($fp)
	.loc 1 1041 0
	lw	$3,%gp_rel(xTimerQueue)($28)
	addiu	$2,$fp,20
	move	$4,$3
	move	$5,$2
	lw	$6,60($fp)
	move	$7,$0
	jal	xQueueGenericSend
	nop

	sw	$2,16($fp)
	.loc 1 1045 0
	lw	$2,16($fp)
	.loc 1 1046 0
	move	$sp,$fp
.LCFI86 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTimerPendFunctionCall
.LFE25:
	.size	xTimerPendFunctionCall, .-xTimerPendFunctionCall
	.section	.sbss,bss
	.align	2
	.type	xLastTime.21554, @object
	.size	xLastTime.21554, 4
xLastTime.21554:
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
	.uleb128 0x28
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
	.uleb128 0x28
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
	.uleb128 0x30
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
	.uleb128 0x18
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x28
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
	.uleb128 0x20
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
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI39-.LFB14
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
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
	.4byte	.LCFI43-.LFB15
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
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
	.4byte	.LCFI47-.LFB16
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
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
	.4byte	.LCFI51-.LFB17
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
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
	.4byte	.LCFI55-.LFB18
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
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
	.4byte	.LCFI59-.LFB19
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
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
	.4byte	.LCFI63-.LFB20
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
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
	.4byte	.LCFI67-.LFB21
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
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
	.4byte	.LCFI71-.LFB22
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI72-.LCFI71
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
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
	.4byte	.LCFI75-.LFB23
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
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
	.4byte	.LCFI79-.LFB24
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
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
	.4byte	.LCFI83-.LFB25
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE42:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 3 "c:/users/user/desktop/release/source/portable/mplab/pic32mz/portmacro.h"
	.file 4 "c:/users/user/desktop/release/source/include/list.h"
	.file 5 "c:/users/user/desktop/release/source/include/task.h"
	.file 6 "c:/users/user/desktop/release/source/include/queue.h"
	.file 7 "c:/users/user/desktop/release/source/include/timers.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0xfcc
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"../../../Source/timers.c\000"
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
	.uleb128 0x3
	.ascii	"__uint8_t\000"
	.byte	0x2
	.byte	0x2f
	.4byte	0xf2
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
	.4byte	0xc2
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
	.byte	0x3
	.byte	0x3b
	.4byte	0x9a
	.uleb128 0x3
	.ascii	"UBaseType_t\000"
	.byte	0x3
	.byte	0x3c
	.4byte	0xa6
	.uleb128 0x3
	.ascii	"TickType_t\000"
	.byte	0x3
	.byte	0x42
	.4byte	0x126
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x5
	.ascii	"xLIST_ITEM\000"
	.byte	0x14
	.byte	0x4
	.byte	0x8c
	.4byte	0x211
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x8f
	.4byte	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"pxNext\000"
	.byte	0x4
	.byte	0x90
	.4byte	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x91
	.4byte	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"pvOwner\000"
	.byte	0x4
	.byte	0x92
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"pvContainer\000"
	.byte	0x4
	.byte	0x93
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1a8
	.uleb128 0x3
	.ascii	"ListItem_t\000"
	.byte	0x4
	.byte	0x96
	.4byte	0x1a8
	.uleb128 0x5
	.ascii	"xMINI_LIST_ITEM\000"
	.byte	0xc
	.byte	0x4
	.byte	0x98
	.4byte	0x26f
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x9b
	.4byte	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"pxNext\000"
	.byte	0x4
	.byte	0x9c
	.4byte	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x9d
	.4byte	0x211
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii	"MiniListItem_t\000"
	.byte	0x4
	.byte	0x9f
	.4byte	0x229
	.uleb128 0x5
	.ascii	"xLIST\000"
	.byte	0x14
	.byte	0x4
	.byte	0xa4
	.4byte	0x2d3
	.uleb128 0x7
	.ascii	"uxNumberOfItems\000"
	.byte	0x4
	.byte	0xa7
	.4byte	0x2d3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"pxIndex\000"
	.byte	0x4
	.byte	0xa8
	.4byte	0x2d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"xListEnd\000"
	.byte	0x4
	.byte	0xa9
	.4byte	0x26f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x177
	.uleb128 0x8
	.byte	0x4
	.4byte	0x217
	.uleb128 0x3
	.ascii	"List_t\000"
	.byte	0x4
	.byte	0xab
	.4byte	0x285
	.uleb128 0x3
	.ascii	"TaskHandle_t\000"
	.byte	0x5
	.byte	0x3e
	.4byte	0x163
	.uleb128 0xa
	.4byte	0x305
	.uleb128 0x8
	.byte	0x4
	.4byte	0x30b
	.uleb128 0xa
	.4byte	0x310
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x3
	.ascii	"QueueHandle_t\000"
	.byte	0x6
	.byte	0x2f
	.4byte	0x163
	.uleb128 0x3
	.ascii	"TimerHandle_t\000"
	.byte	0x7
	.byte	0x4d
	.4byte	0x163
	.uleb128 0x3
	.ascii	"TimerCallbackFunction_t\000"
	.byte	0x7
	.byte	0x52
	.4byte	0x361
	.uleb128 0x8
	.byte	0x4
	.4byte	0x367
	.uleb128 0xb
	.byte	0x1
	.4byte	0x373
	.uleb128 0xc
	.4byte	0x32d
	.byte	0
	.uleb128 0x3
	.ascii	"PendedFunction_t\000"
	.byte	0x7
	.byte	0x58
	.4byte	0x38b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x391
	.uleb128 0xb
	.byte	0x1
	.4byte	0x3a2
	.uleb128 0xc
	.4byte	0x163
	.uleb128 0xc
	.4byte	0x126
	.byte	0
	.uleb128 0x5
	.ascii	"tmrTimerControl\000"
	.byte	0x28
	.byte	0x1
	.byte	0x45
	.4byte	0x41a
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x47
	.4byte	0x305
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"xTimerListItem\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x217
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x1
	.byte	0x49
	.4byte	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x1
	.byte	0x4a
	.4byte	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x1
	.byte	0x4b
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x1
	.byte	0x4c
	.4byte	0x342
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x3
	.ascii	"xTIMER\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x3a2
	.uleb128 0x3
	.ascii	"Timer_t\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x41a
	.uleb128 0x5
	.ascii	"tmrTimerParameters\000"
	.byte	0x8
	.byte	0x1
	.byte	0x5f
	.4byte	0x479
	.uleb128 0x7
	.ascii	"xMessageValue\000"
	.byte	0x1
	.byte	0x61
	.4byte	0x18a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x1
	.byte	0x62
	.4byte	0x479
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x428
	.uleb128 0x3
	.ascii	"TimerParameter_t\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x437
	.uleb128 0x5
	.ascii	"tmrCallbackParameters\000"
	.byte	0xc
	.byte	0x1
	.byte	0x66
	.4byte	0x4e0
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x1
	.byte	0x68
	.4byte	0x373
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF8
	.byte	0x1
	.byte	0x69
	.4byte	0x163
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x1
	.byte	0x6a
	.4byte	0x126
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii	"CallbackParameters_t\000"
	.byte	0x1
	.byte	0x6b
	.4byte	0x497
	.uleb128 0xd
	.byte	0xc
	.byte	0x1
	.byte	0x72
	.4byte	0x538
	.uleb128 0xe
	.ascii	"xTimerParameters\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x47f
	.uleb128 0xe
	.ascii	"xCallbackParameters\000"
	.byte	0x1
	.byte	0x79
	.4byte	0x4e0
	.byte	0
	.uleb128 0x5
	.ascii	"tmrTimerQueueMessage\000"
	.byte	0x10
	.byte	0x1
	.byte	0x6f
	.4byte	0x577
	.uleb128 0x7
	.ascii	"xMessageID\000"
	.byte	0x1
	.byte	0x71
	.4byte	0x165
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"u\000"
	.byte	0x1
	.byte	0x7b
	.4byte	0x4fc
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.ascii	"DaemonTaskMessage_t\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x538
	.uleb128 0xf
	.byte	0x1
	.ascii	"xTimerCreateTimerTask\000"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.4byte	0x165
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x5cf
	.uleb128 0x10
	.4byte	.LASF10
	.byte	0x1
	.byte	0xe2
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"xTimerCreate\000"
	.byte	0x1
	.2byte	0x117
	.byte	0x1
	.4byte	0x32d
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x650
	.uleb128 0x12
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x117
	.4byte	0x300
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x12
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x118
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x12
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x119
	.4byte	0x655
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x12
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x11a
	.4byte	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x12
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x11b
	.4byte	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x13
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x11d
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xa
	.4byte	0x18a
	.uleb128 0xa
	.4byte	0x177
	.uleb128 0xa
	.4byte	0x163
	.uleb128 0x14
	.ascii	"prvInitialiseNewTimer\000"
	.byte	0x1
	.2byte	0x161
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x6e4
	.uleb128 0x12
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x161
	.4byte	0x300
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x12
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x162
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x12
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x163
	.4byte	0x655
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x12
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x164
	.4byte	0x65a
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x12
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x165
	.4byte	0x342
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x12
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x166
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"xTimerGenericCommand\000"
	.byte	0x1
	.2byte	0x17e
	.byte	0x1
	.4byte	0x165
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x78f
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x17e
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x15
	.ascii	"xCommandID\000"
	.byte	0x1
	.2byte	0x17e
	.4byte	0x78f
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x15
	.ascii	"xOptionalValue\000"
	.byte	0x1
	.2byte	0x17e
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x12
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x17e
	.4byte	0x794
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x17e
	.4byte	0x650
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x13
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x180
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x181
	.4byte	0x577
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0xa
	.4byte	0x165
	.uleb128 0xa
	.4byte	0x799
	.uleb128 0x8
	.byte	0x4
	.4byte	0x165
	.uleb128 0x16
	.byte	0x1
	.ascii	"xTimerGetTimerDaemonTaskHandle\000"
	.byte	0x1
	.2byte	0x1a9
	.byte	0x1
	.4byte	0x2ec
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.ascii	"xTimerGetPeriod\000"
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1
	.4byte	0x18a
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x81b
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1b2
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x1b4
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"xTimerGetExpiryTime\000"
	.byte	0x1
	.2byte	0x1bb
	.byte	0x1
	.4byte	0x18a
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x876
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1bb
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x1bd
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x1be
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"pcTimerGetName\000"
	.byte	0x1
	.2byte	0x1c6
	.byte	0x1
	.4byte	0x305
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x8bd
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1c6
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x1c8
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x14
	.ascii	"prvProcessExpiredTimer\000"
	.byte	0x1
	.2byte	0x1cf
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x925
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x1cf
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1d1
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x1d2
	.4byte	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xa
	.4byte	0x479
	.uleb128 0x14
	.ascii	"prvTimerTask\000"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x982
	.uleb128 0x15
	.ascii	"pvParameters\000"
	.byte	0x1
	.2byte	0x1f7
	.4byte	0x163
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1fa
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x14
	.ascii	"prvProcessTimerOrBlockTask\000"
	.byte	0x1
	.2byte	0x21b
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa0b
	.uleb128 0x12
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x21b
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x21b
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x21d
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x21e
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x17
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x18
	.ascii	"ulCause\000"
	.byte	0x1
	.2byte	0x247
	.4byte	0x126
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x19
	.ascii	"prvGetNextExpireTime\000"
	.byte	0x1
	.2byte	0x257
	.byte	0x1
	.4byte	0x18a
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa62
	.uleb128 0x15
	.ascii	"pxListWasEmpty\000"
	.byte	0x1
	.2byte	0x257
	.4byte	0x794
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x259
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x1a
	.ascii	"prvSampleTimeNow\000"
	.byte	0x1
	.2byte	0x271
	.byte	0x1
	.4byte	0x18a
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xad7
	.uleb128 0x15
	.ascii	"pxTimerListsWereSwitched\000"
	.byte	0x1
	.2byte	0x271
	.4byte	0x794
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x273
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.ascii	"xLastTime\000"
	.byte	0x1
	.2byte	0x274
	.4byte	0x18a
	.byte	0x5
	.byte	0x3
	.4byte	xLastTime.21554
	.byte	0
	.uleb128 0x1a
	.ascii	"prvInsertTimerInActiveList\000"
	.byte	0x1
	.2byte	0x288
	.byte	0x1
	.4byte	0x165
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xb78
	.uleb128 0x12
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x288
	.4byte	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x15
	.ascii	"xNextExpiryTime\000"
	.byte	0x1
	.2byte	0x288
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x12
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x288
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x15
	.ascii	"xCommandTime\000"
	.byte	0x1
	.2byte	0x288
	.4byte	0x650
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x18
	.ascii	"xProcessTimerNow\000"
	.byte	0x1
	.2byte	0x28a
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x14
	.ascii	"prvProcessReceivedCommands\000"
	.byte	0x1
	.2byte	0x2b1
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xc13
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x2b3
	.4byte	0x577
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2b4
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x2b5
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x13
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x2b6
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x17
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x18
	.ascii	"pxCallback\000"
	.byte	0x1
	.2byte	0x2c0
	.4byte	0xc13
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xc18
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc1e
	.uleb128 0xa
	.4byte	0x4e0
	.uleb128 0x14
	.ascii	"prvSwitchTimerLists\000"
	.byte	0x1
	.2byte	0x344
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xca2
	.uleb128 0x13
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x346
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.ascii	"xReloadTime\000"
	.byte	0x1
	.2byte	0x346
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.ascii	"pxTemp\000"
	.byte	0x1
	.2byte	0x347
	.4byte	0xca2
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x348
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x13
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x349
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2de
	.uleb128 0x1b
	.ascii	"prvCheckForValidListAndQueue\000"
	.byte	0x1
	.2byte	0x37f
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.ascii	"xTimerIsTimerActive\000"
	.byte	0x1
	.2byte	0x3b2
	.byte	0x1
	.4byte	0x165
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xd41
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x3b2
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.ascii	"xTimerIsInActiveList\000"
	.byte	0x1
	.2byte	0x3b4
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x3b5
	.4byte	0x479
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"pvTimerGetTimerID\000"
	.byte	0x1
	.2byte	0x3c7
	.byte	0x1
	.4byte	0x163
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xd9f
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x3c7
	.4byte	0xd9f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x3c9
	.4byte	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.ascii	"pvReturn\000"
	.byte	0x1
	.2byte	0x3ca
	.4byte	0x163
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0xa
	.4byte	0x32d
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTimerSetTimerID\000"
	.byte	0x1
	.2byte	0x3d8
	.byte	0x1
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xdfc
	.uleb128 0x12
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x3d8
	.4byte	0x32d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x15
	.ascii	"pvNewID\000"
	.byte	0x1
	.2byte	0x3d8
	.4byte	0x163
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x3da
	.4byte	0x925
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"xTimerPendFunctionCallFromISR\000"
	.byte	0x1
	.2byte	0x3e8
	.byte	0x1
	.4byte	0x165
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xe8e
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x3e8
	.4byte	0x373
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x12
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x3e8
	.4byte	0x163
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x12
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x3e8
	.4byte	0x126
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x12
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x3e8
	.4byte	0x799
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x3ea
	.4byte	0x577
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x13
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x3eb
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.ascii	"xTimerPendFunctionCall\000"
	.byte	0x1
	.2byte	0x400
	.byte	0x1
	.4byte	0x165
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xf19
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x400
	.4byte	0x373
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x12
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x400
	.4byte	0x163
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x12
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x400
	.4byte	0x126
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x12
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x400
	.4byte	0x18a
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x402
	.4byte	0x577
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x13
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x403
	.4byte	0x165
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1d
	.ascii	"xActiveTimerList1\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x2de
	.byte	0x5
	.byte	0x3
	.4byte	xActiveTimerList1
	.uleb128 0x1d
	.ascii	"xActiveTimerList2\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x2de
	.byte	0x5
	.byte	0x3
	.4byte	xActiveTimerList2
	.uleb128 0x1d
	.ascii	"pxCurrentTimerList\000"
	.byte	0x1
	.byte	0x86
	.4byte	0xca2
	.byte	0x5
	.byte	0x3
	.4byte	pxCurrentTimerList
	.uleb128 0x1d
	.ascii	"pxOverflowTimerList\000"
	.byte	0x1
	.byte	0x87
	.4byte	0xca2
	.byte	0x5
	.byte	0x3
	.4byte	pxOverflowTimerList
	.uleb128 0x1d
	.ascii	"xTimerQueue\000"
	.byte	0x1
	.byte	0x8a
	.4byte	0x318
	.byte	0x5
	.byte	0x3
	.4byte	xTimerQueue
	.uleb128 0x1d
	.ascii	"xTimerTaskHandle\000"
	.byte	0x1
	.byte	0x8b
	.4byte	0x2ec
	.byte	0x5
	.byte	0x3
	.4byte	xTimerTaskHandle
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
.LASF13:
	.ascii	"pxHigherPriorityTaskWoken\000"
.LASF5:
	.ascii	"pvTimerID\000"
.LASF15:
	.ascii	"xMessage\000"
.LASF6:
	.ascii	"pxCallbackFunction\000"
.LASF4:
	.ascii	"uxAutoReload\000"
.LASF7:
	.ascii	"pxTimer\000"
.LASF18:
	.ascii	"xResult\000"
.LASF10:
	.ascii	"xReturn\000"
.LASF16:
	.ascii	"xNextExpireTime\000"
.LASF1:
	.ascii	"pxPrevious\000"
.LASF3:
	.ascii	"xTimerPeriodInTicks\000"
.LASF12:
	.ascii	"xTimer\000"
.LASF17:
	.ascii	"xTimeNow\000"
.LASF19:
	.ascii	"xListWasEmpty\000"
.LASF0:
	.ascii	"xItemValue\000"
.LASF21:
	.ascii	"xFunctionToPend\000"
.LASF9:
	.ascii	"ulParameter2\000"
.LASF8:
	.ascii	"pvParameter1\000"
.LASF14:
	.ascii	"xTicksToWait\000"
.LASF20:
	.ascii	"xTimerListsWereSwitched\000"
.LASF11:
	.ascii	"pxNewTimer\000"
.LASF2:
	.ascii	"pcTimerName\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
