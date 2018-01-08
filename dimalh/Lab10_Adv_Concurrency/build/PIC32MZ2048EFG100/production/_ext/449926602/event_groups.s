	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.align	2
	.globl	xEventGroupCreate
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/source/event_groups.c"
	.loc 1 144 0
	.set	nomips16
	.set	nomicromips
	.ent	xEventGroupCreate
	.type	xEventGroupCreate, @function
xEventGroupCreate:
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
	.loc 1 148 0
	li	$4,24			# 0x18
	jal	pvPortMalloc
	nop

	sw	$2,16($fp)
	.loc 1 150 0
	lw	$2,16($fp)
	beq	$2,$0,.L2
	nop

	.loc 1 152 0
	lw	$2,16($fp)
	sw	$0,0($2)
	.loc 1 153 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	vListInitialise
	nop

.L2:
	.loc 1 171 0
	lw	$2,16($fp)
	.loc 1 172 0
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
	.end	xEventGroupCreate
.LFE4:
	.size	xEventGroupCreate, .-xEventGroupCreate
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"../../../Source/event_groups.c\000"
	.section	.text,code
	.align	2
	.globl	xEventGroupSync
.LFB5 = .
	.loc 1 178 0
	.set	nomips16
	.set	nomicromips
	.ent	xEventGroupSync
	.type	xEventGroupSync, @function
xEventGroupSync:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
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
	sw	$6,56($fp)
	sw	$7,60($fp)
	.loc 1 180 0
	lw	$2,48($fp)
	sw	$2,20($fp)
	.loc 1 182 0
	sw	$0,24($fp)
	.loc 1 184 0
	lw	$2,56($fp)
	ins	$2,$0,0,24
	beq	$2,$0,.L5
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,184			# 0xb8
	jal	vAssertCalled
	nop

.L5:
	.loc 1 185 0
	lw	$2,56($fp)
	bne	$2,$0,.L6
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,185			# 0xb9
	jal	vAssertCalled
	nop

.L6:
	.loc 1 188 0
	jal	xTaskGetSchedulerState
	nop

	bne	$2,$0,.L7
	nop

	lw	$2,60($fp)
	bne	$2,$0,.L8
	nop

.L7:
	li	$2,1			# 0x1
	j	.L9
	nop

.L8:
	move	$2,$0
.L9:
	bne	$2,$0,.L10
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,188			# 0xbc
	jal	vAssertCalled
	nop

.L10:
	.loc 1 192 0
	jal	vTaskSuspendAll
	nop

	.loc 1 194 0
	lw	$2,20($fp)
	lw	$2,0($2)
	sw	$2,28($fp)
	.loc 1 196 0
	lw	$4,48($fp)
	lw	$5,52($fp)
	jal	xEventGroupSetBits
	nop

	.loc 1 198 0
	lw	$3,28($fp)
	lw	$2,52($fp)
	or	$3,$3,$2
	lw	$2,56($fp)
	and	$3,$3,$2
	lw	$2,56($fp)
	bne	$3,$2,.L11
	nop

	.loc 1 201 0
	lw	$3,28($fp)
	lw	$2,52($fp)
	or	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 205 0
	lw	$2,20($fp)
	lw	$3,0($2)
	lw	$2,56($fp)
	nor	$2,$0,$2
	and	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,0($2)
	.loc 1 207 0
	sw	$0,60($fp)
	j	.L12
	nop

.L11:
	.loc 1 211 0
	lw	$2,60($fp)
	beq	$2,$0,.L13
	nop

	.loc 1 218 0
	lw	$2,20($fp)
	addiu	$3,$2,4
	lw	$4,56($fp)
	li	$2,83886080			# 0x5000000
	or	$2,$4,$2
	move	$4,$3
	move	$5,$2
	lw	$6,60($fp)
	jal	vTaskPlaceOnUnorderedEventList
	nop

	.loc 1 224 0
	sw	$0,16($fp)
	j	.L12
	nop

.L13:
	.loc 1 230 0
	lw	$2,20($fp)
	lw	$2,0($2)
	sw	$2,16($fp)
	.loc 1 231 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
.L12:
	.loc 1 235 0
	jal	xTaskResumeAll
	nop

	sw	$2,32($fp)
	.loc 1 237 0
	lw	$2,60($fp)
	beq	$2,$0,.L14
	nop

	.loc 1 239 0
	lw	$2,32($fp)
	bne	$2,$0,.L15
	nop

.LBB2 = .
	.loc 1 241 0
	mfc0	$2,$13,0
	sw	$2,36($fp)
	lw	$2,36($fp)
	ori	$2,$2,0x100
	sw	$2,36($fp)
	lw	$2,36($fp)
	mtc0	$2,$13,0
	ehb
.L15:
.LBE2 = .
	.loc 1 252 0
	jal	uxTaskResetEventItemValue
	nop

	sw	$2,16($fp)
	.loc 1 254 0
	lw	$3,16($fp)
	li	$2,33554432			# 0x2000000
	and	$2,$3,$2
	bne	$2,$0,.L16
	nop

	.loc 1 257 0
	jal	vTaskEnterCritical
	nop

	.loc 1 259 0
	lw	$2,20($fp)
	lw	$2,0($2)
	sw	$2,16($fp)
	.loc 1 265 0
	lw	$3,16($fp)
	lw	$2,56($fp)
	and	$3,$3,$2
	lw	$2,56($fp)
	bne	$3,$2,.L17
	nop

	.loc 1 267 0
	lw	$2,20($fp)
	lw	$3,0($2)
	lw	$2,56($fp)
	nor	$2,$0,$2
	and	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,0($2)
.L17:
	.loc 1 274 0
	jal	vTaskExitCritical
	nop

	.loc 1 276 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
.L16:
	.loc 1 285 0
	lw	$2,16($fp)
	ext	$2,$2,0,24
	sw	$2,16($fp)
.L14:
	.loc 1 293 0
	lw	$2,16($fp)
	.loc 1 294 0
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
	.end	xEventGroupSync
.LFE5:
	.size	xEventGroupSync, .-xEventGroupSync
	.align	2
	.globl	xEventGroupWaitBits
.LFB6 = .
	.loc 1 298 0
	.set	nomips16
	.set	nomicromips
	.ent	xEventGroupWaitBits
	.type	xEventGroupWaitBits, @function
xEventGroupWaitBits:
	.frame	$fp,56,$31		# vars= 32, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
.LCFI8 = .
	sw	$31,52($sp)
	sw	$fp,48($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	sw	$4,56($fp)
	sw	$5,60($fp)
	sw	$6,64($fp)
	sw	$7,68($fp)
	.loc 1 299 0
	lw	$2,56($fp)
	sw	$2,24($fp)
	.loc 1 300 0
	sw	$0,20($fp)
	.loc 1 302 0
	sw	$0,28($fp)
	.loc 1 306 0
	lw	$2,56($fp)
	bne	$2,$0,.L20
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,306			# 0x132
	jal	vAssertCalled
	nop

.L20:
	.loc 1 307 0
	lw	$2,60($fp)
	ins	$2,$0,0,24
	beq	$2,$0,.L21
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,307			# 0x133
	jal	vAssertCalled
	nop

.L21:
	.loc 1 308 0
	lw	$2,60($fp)
	bne	$2,$0,.L22
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,308			# 0x134
	jal	vAssertCalled
	nop

.L22:
	.loc 1 311 0
	jal	xTaskGetSchedulerState
	nop

	bne	$2,$0,.L23
	nop

	lw	$2,72($fp)
	bne	$2,$0,.L24
	nop

.L23:
	li	$2,1			# 0x1
	j	.L25
	nop

.L24:
	move	$2,$0
.L25:
	bne	$2,$0,.L26
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,311			# 0x137
	jal	vAssertCalled
	nop

.L26:
	.loc 1 315 0
	jal	vTaskSuspendAll
	nop

.LBB3 = .
	.loc 1 317 0
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,32($fp)
	.loc 1 320 0
	lw	$4,32($fp)
	lw	$5,60($fp)
	lw	$6,68($fp)
	jal	prvTestWaitCondition
	nop

	sw	$2,36($fp)
	.loc 1 322 0
	lw	$2,36($fp)
	beq	$2,$0,.L27
	nop

	.loc 1 326 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 327 0
	sw	$0,72($fp)
	.loc 1 330 0
	lw	$2,64($fp)
	beq	$2,$0,.L28
	nop

	.loc 1 332 0
	lw	$2,24($fp)
	lw	$3,0($2)
	lw	$2,60($fp)
	nor	$2,$0,$2
	and	$3,$3,$2
	lw	$2,24($fp)
	sw	$3,0($2)
	j	.L28
	nop

.L27:
	.loc 1 339 0
	lw	$2,72($fp)
	bne	$2,$0,.L29
	nop

	.loc 1 343 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 344 0
	li	$2,1			# 0x1
	sw	$2,28($fp)
	j	.L28
	nop

.L29:
	.loc 1 352 0
	lw	$2,64($fp)
	beq	$2,$0,.L30
	nop

	.loc 1 354 0
	lw	$3,20($fp)
	li	$2,16777216			# 0x1000000
	or	$2,$3,$2
	sw	$2,20($fp)
.L30:
	.loc 1 361 0
	lw	$2,68($fp)
	beq	$2,$0,.L31
	nop

	.loc 1 363 0
	lw	$3,20($fp)
	li	$2,67108864			# 0x4000000
	or	$2,$3,$2
	sw	$2,20($fp)
.L31:
	.loc 1 373 0
	lw	$2,24($fp)
	addiu	$3,$2,4
	lw	$4,60($fp)
	lw	$2,20($fp)
	or	$2,$4,$2
	move	$4,$3
	move	$5,$2
	lw	$6,72($fp)
	jal	vTaskPlaceOnUnorderedEventList
	nop

	.loc 1 378 0
	sw	$0,16($fp)
.L28:
.LBE3 = .
	.loc 1 383 0
	jal	xTaskResumeAll
	nop

	sw	$2,40($fp)
	.loc 1 385 0
	lw	$2,72($fp)
	beq	$2,$0,.L32
	nop

	.loc 1 387 0
	lw	$2,40($fp)
	bne	$2,$0,.L33
	nop

.LBB4 = .
	.loc 1 389 0
	mfc0	$2,$13,0
	sw	$2,44($fp)
	lw	$2,44($fp)
	ori	$2,$2,0x100
	sw	$2,44($fp)
	lw	$2,44($fp)
	mtc0	$2,$13,0
	ehb
.L33:
.LBE4 = .
	.loc 1 400 0
	jal	uxTaskResetEventItemValue
	nop

	sw	$2,16($fp)
	.loc 1 402 0
	lw	$3,16($fp)
	li	$2,33554432			# 0x2000000
	and	$2,$3,$2
	bne	$2,$0,.L34
	nop

	.loc 1 404 0
	jal	vTaskEnterCritical
	nop

	.loc 1 407 0
	lw	$2,24($fp)
	lw	$2,0($2)
	sw	$2,16($fp)
	.loc 1 411 0
	lw	$4,16($fp)
	lw	$5,60($fp)
	lw	$6,68($fp)
	jal	prvTestWaitCondition
	nop

	beq	$2,$0,.L35
	nop

	.loc 1 413 0
	lw	$2,64($fp)
	beq	$2,$0,.L35
	nop

	.loc 1 415 0
	lw	$2,24($fp)
	lw	$3,0($2)
	lw	$2,60($fp)
	nor	$2,$0,$2
	and	$3,$3,$2
	lw	$2,24($fp)
	sw	$3,0($2)
.L35:
	.loc 1 426 0
	li	$2,1			# 0x1
	sw	$2,28($fp)
	.loc 1 428 0
	jal	vTaskExitCritical
	nop

.L34:
	.loc 1 436 0
	lw	$2,16($fp)
	ext	$2,$2,0,24
	sw	$2,16($fp)
.L32:
	.loc 1 443 0
	lw	$2,16($fp)
	.loc 1 444 0
	move	$sp,$fp
.LCFI11 = .
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xEventGroupWaitBits
.LFE6:
	.size	xEventGroupWaitBits, .-xEventGroupWaitBits
	.align	2
	.globl	xEventGroupClearBits
.LFB7 = .
	.loc 1 448 0
	.set	nomips16
	.set	nomicromips
	.ent	xEventGroupClearBits
	.type	xEventGroupClearBits, @function
xEventGroupClearBits:
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
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 449 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 454 0
	lw	$2,32($fp)
	bne	$2,$0,.L38
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,454			# 0x1c6
	jal	vAssertCalled
	nop

.L38:
	.loc 1 455 0
	lw	$2,36($fp)
	ins	$2,$0,0,24
	beq	$2,$0,.L39
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,455			# 0x1c7
	jal	vAssertCalled
	nop

.L39:
	.loc 1 457 0
	jal	vTaskEnterCritical
	nop

	.loc 1 463 0
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,20($fp)
	.loc 1 466 0
	lw	$2,16($fp)
	lw	$3,0($2)
	lw	$2,36($fp)
	nor	$2,$0,$2
	and	$3,$3,$2
	lw	$2,16($fp)
	sw	$3,0($2)
	.loc 1 468 0
	jal	vTaskExitCritical
	nop

	.loc 1 470 0
	lw	$2,20($fp)
	.loc 1 471 0
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
	.end	xEventGroupClearBits
.LFE7:
	.size	xEventGroupClearBits, .-xEventGroupClearBits
	.align	2
	.globl	xEventGroupGetBitsFromISR
.LFB8 = .
	.loc 1 490 0
	.set	nomips16
	.set	nomicromips
	.ent	xEventGroupGetBitsFromISR
	.type	xEventGroupGetBitsFromISR, @function
xEventGroupGetBitsFromISR:
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
	sw	$4,40($fp)
	.loc 1 492 0
	lw	$2,40($fp)
	sw	$2,16($fp)
	.loc 1 495 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,20($fp)
	.loc 1 497 0
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,24($fp)
	.loc 1 499 0
	lw	$4,20($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 501 0
	lw	$2,24($fp)
	.loc 1 502 0
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
	.end	xEventGroupGetBitsFromISR
.LFE8:
	.size	xEventGroupGetBitsFromISR, .-xEventGroupGetBitsFromISR
	.align	2
	.globl	xEventGroupSetBits
.LFB9 = .
	.loc 1 506 0
	.set	nomips16
	.set	nomicromips
	.ent	xEventGroupSetBits
	.type	xEventGroupSetBits, @function
xEventGroupSetBits:
	.frame	$fp,64,$31		# vars= 40, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-64
.LCFI20 = .
	sw	$31,60($sp)
	sw	$fp,56($sp)
.LCFI21 = .
	move	$fp,$sp
.LCFI22 = .
	sw	$4,64($fp)
	sw	$5,68($fp)
	.loc 1 510 0
	sw	$0,20($fp)
	.loc 1 511 0
	lw	$2,64($fp)
	sw	$2,28($fp)
	.loc 1 512 0
	sw	$0,24($fp)
	.loc 1 516 0
	lw	$2,64($fp)
	bne	$2,$0,.L44
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,516			# 0x204
	jal	vAssertCalled
	nop

.L44:
	.loc 1 517 0
	lw	$2,68($fp)
	ins	$2,$0,0,24
	beq	$2,$0,.L45
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,517			# 0x205
	jal	vAssertCalled
	nop

.L45:
	.loc 1 519 0
	lw	$2,28($fp)
	addiu	$2,$2,4
	sw	$2,32($fp)
	.loc 1 520 0
	lw	$2,32($fp)
	addiu	$2,$2,8
	sw	$2,36($fp)
	.loc 1 521 0
	jal	vTaskSuspendAll
	nop

	.loc 1 525 0
	lw	$2,32($fp)
	lw	$2,12($2)
	sw	$2,16($fp)
	.loc 1 528 0
	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,68($fp)
	or	$3,$3,$2
	lw	$2,28($fp)
	sw	$3,0($2)
	.loc 1 531 0
	j	.L46
	nop

.L51:
	.loc 1 533 0
	lw	$2,16($fp)
	lw	$2,4($2)
	sw	$2,40($fp)
	.loc 1 534 0
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,44($fp)
	.loc 1 535 0
	sw	$0,24($fp)
	.loc 1 538 0
	lw	$2,44($fp)
	ins	$2,$0,0,24
	sw	$2,48($fp)
	.loc 1 539 0
	lw	$2,44($fp)
	ext	$2,$2,0,24
	sw	$2,44($fp)
	.loc 1 541 0
	lw	$3,48($fp)
	li	$2,67108864			# 0x4000000
	and	$2,$3,$2
	bne	$2,$0,.L47
	nop

	.loc 1 544 0
	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,44($fp)
	and	$2,$3,$2
	beq	$2,$0,.L48
	nop

	.loc 1 546 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
	j	.L48
	nop

.L47:
	.loc 1 553 0
	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,44($fp)
	and	$3,$3,$2
	lw	$2,44($fp)
	bne	$3,$2,.L48
	nop

	.loc 1 556 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
.L48:
	.loc 1 563 0
	lw	$2,24($fp)
	beq	$2,$0,.L49
	nop

	.loc 1 566 0
	lw	$3,48($fp)
	li	$2,16777216			# 0x1000000
	and	$2,$3,$2
	beq	$2,$0,.L50
	nop

	.loc 1 568 0
	lw	$3,20($fp)
	lw	$2,44($fp)
	or	$2,$3,$2
	sw	$2,20($fp)
.L50:
	.loc 1 580 0
	lw	$2,28($fp)
	lw	$3,0($2)
	li	$2,33554432			# 0x2000000
	or	$2,$3,$2
	lw	$4,16($fp)
	move	$5,$2
	jal	vTaskRemoveFromUnorderedEventList
	nop

.L49:
	.loc 1 586 0
	lw	$2,40($fp)
	sw	$2,16($fp)
.L46:
	.loc 1 531 0
	lw	$3,16($fp)
	lw	$2,36($fp)
	bne	$3,$2,.L51
	nop

	.loc 1 591 0
	lw	$2,28($fp)
	lw	$3,0($2)
	lw	$2,20($fp)
	nor	$2,$0,$2
	and	$3,$3,$2
	lw	$2,28($fp)
	sw	$3,0($2)
	.loc 1 593 0
	jal	xTaskResumeAll
	nop

	.loc 1 595 0
	lw	$2,28($fp)
	lw	$2,0($2)
	.loc 1 596 0
	move	$sp,$fp
.LCFI23 = .
	lw	$31,60($sp)
	lw	$fp,56($sp)
	addiu	$sp,$sp,64
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xEventGroupSetBits
.LFE9:
	.size	xEventGroupSetBits, .-xEventGroupSetBits
	.align	2
	.globl	vEventGroupDelete
.LFB10 = .
	.loc 1 600 0
	.set	nomips16
	.set	nomicromips
	.ent	vEventGroupDelete
	.type	vEventGroupDelete, @function
vEventGroupDelete:
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
	.loc 1 601 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 602 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	sw	$2,20($fp)
	.loc 1 604 0
	jal	vTaskSuspendAll
	nop

	.loc 1 608 0
	j	.L54
	nop

.L56:
	.loc 1 612 0
	lw	$2,20($fp)
	lw	$3,12($2)
	lw	$2,20($fp)
	addiu	$2,$2,8
	bne	$3,$2,.L55
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,612			# 0x264
	jal	vAssertCalled
	nop

.L55:
	.loc 1 613 0
	lw	$2,20($fp)
	lw	$2,12($2)
	move	$4,$2
	li	$5,33554432			# 0x2000000
	jal	vTaskRemoveFromUnorderedEventList
	nop

.L54:
	.loc 1 608 0
	lw	$2,20($fp)
	lw	$2,0($2)
	bne	$2,$0,.L56
	nop

	.loc 1 620 0
	lw	$4,16($fp)
	jal	vPortFree
	nop

	.loc 1 637 0
	jal	xTaskResumeAll
	nop

	.loc 1 638 0
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
	.end	vEventGroupDelete
.LFE10:
	.size	vEventGroupDelete, .-vEventGroupDelete
	.align	2
	.globl	vEventGroupSetBitsCallback
.LFB11 = .
	.loc 1 644 0
	.set	nomips16
	.set	nomicromips
	.ent	vEventGroupSetBitsCallback
	.type	vEventGroupSetBitsCallback, @function
vEventGroupSetBitsCallback:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI28 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI29 = .
	move	$fp,$sp
.LCFI30 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	.loc 1 645 0
	lw	$4,24($fp)
	lw	$5,28($fp)
	jal	xEventGroupSetBits
	nop

	.loc 1 646 0
	move	$sp,$fp
.LCFI31 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vEventGroupSetBitsCallback
.LFE11:
	.size	vEventGroupSetBitsCallback, .-vEventGroupSetBitsCallback
	.align	2
	.globl	vEventGroupClearBitsCallback
.LFB12 = .
	.loc 1 652 0
	.set	nomips16
	.set	nomicromips
	.ent	vEventGroupClearBitsCallback
	.type	vEventGroupClearBitsCallback, @function
vEventGroupClearBitsCallback:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI32 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI33 = .
	move	$fp,$sp
.LCFI34 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	.loc 1 653 0
	lw	$4,24($fp)
	lw	$5,28($fp)
	jal	xEventGroupClearBits
	nop

	.loc 1 654 0
	move	$sp,$fp
.LCFI35 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vEventGroupClearBitsCallback
.LFE12:
	.size	vEventGroupClearBitsCallback, .-vEventGroupClearBitsCallback
	.align	2
.LFB13 = .
	.loc 1 658 0
	.set	nomips16
	.set	nomicromips
	.ent	prvTestWaitCondition
	.type	prvTestWaitCondition, @function
prvTestWaitCondition:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI36 = .
	sw	$fp,12($sp)
.LCFI37 = .
	move	$fp,$sp
.LCFI38 = .
	sw	$4,16($fp)
	sw	$5,20($fp)
	sw	$6,24($fp)
	.loc 1 659 0
	sw	$0,0($fp)
	.loc 1 661 0
	lw	$2,24($fp)
	bne	$2,$0,.L60
	nop

	.loc 1 665 0
	lw	$3,16($fp)
	lw	$2,20($fp)
	and	$2,$3,$2
	beq	$2,$0,.L61
	nop

	.loc 1 667 0
	li	$2,1			# 0x1
	sw	$2,0($fp)
	j	.L61
	nop

.L60:
	.loc 1 678 0
	lw	$3,16($fp)
	lw	$2,20($fp)
	and	$3,$3,$2
	lw	$2,20($fp)
	bne	$3,$2,.L61
	nop

	.loc 1 680 0
	li	$2,1			# 0x1
	sw	$2,0($fp)
.L61:
	.loc 1 688 0
	lw	$2,0($fp)
	.loc 1 689 0
	move	$sp,$fp
.LCFI39 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvTestWaitCondition
.LFE13:
	.size	prvTestWaitCondition, .-prvTestWaitCondition
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
	.uleb128 0x38
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
	.uleb128 0x40
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0x9e
	.uleb128 0x1
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
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 3 "c:/users/user/desktop/release/source/portable/mplab/pic32mz/portmacro.h"
	.file 4 "c:/users/user/desktop/release/source/include/list.h"
	.file 5 "c:/users/user/desktop/release/source/include/event_groups.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x92f
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"../../../Source/event_groups.c\000"
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
	.4byte	0xc8
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
	.4byte	0xa0
	.uleb128 0x3
	.ascii	"UBaseType_t\000"
	.byte	0x3
	.byte	0x3c
	.4byte	0xac
	.uleb128 0x3
	.ascii	"TickType_t\000"
	.byte	0x3
	.byte	0x42
	.4byte	0x11b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x5
	.ascii	"xLIST_ITEM\000"
	.byte	0x14
	.byte	0x4
	.byte	0x8c
	.4byte	0x203
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x8f
	.4byte	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x90
	.4byte	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x4
	.byte	0x91
	.4byte	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.ascii	"pvOwner\000"
	.byte	0x4
	.byte	0x92
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.ascii	"pvContainer\000"
	.byte	0x4
	.byte	0x93
	.4byte	0x158
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x19d
	.uleb128 0x3
	.ascii	"ListItem_t\000"
	.byte	0x4
	.byte	0x96
	.4byte	0x19d
	.uleb128 0x5
	.ascii	"xMINI_LIST_ITEM\000"
	.byte	0xc
	.byte	0x4
	.byte	0x98
	.4byte	0x25e
	.uleb128 0x6
	.4byte	.LASF0
	.byte	0x4
	.byte	0x9b
	.4byte	0x17f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x9c
	.4byte	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x4
	.byte	0x9d
	.4byte	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii	"MiniListItem_t\000"
	.byte	0x4
	.byte	0x9f
	.4byte	0x21b
	.uleb128 0x5
	.ascii	"xLIST\000"
	.byte	0x14
	.byte	0x4
	.byte	0xa4
	.4byte	0x2c2
	.uleb128 0x7
	.ascii	"uxNumberOfItems\000"
	.byte	0x4
	.byte	0xa7
	.4byte	0x2c2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"pxIndex\000"
	.byte	0x4
	.byte	0xa8
	.4byte	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.ascii	"xListEnd\000"
	.byte	0x4
	.byte	0xa9
	.4byte	0x25e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x16c
	.uleb128 0x8
	.byte	0x4
	.4byte	0x209
	.uleb128 0x3
	.ascii	"List_t\000"
	.byte	0x4
	.byte	0xab
	.4byte	0x274
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x3
	.ascii	"EventGroupHandle_t\000"
	.byte	0x5
	.byte	0x52
	.4byte	0x158
	.uleb128 0x3
	.ascii	"EventBits_t\000"
	.byte	0x5
	.byte	0x5c
	.4byte	0x17f
	.uleb128 0x5
	.ascii	"xEventGroupDefinition\000"
	.byte	0x18
	.byte	0x1
	.byte	0x40
	.4byte	0x364
	.uleb128 0x7
	.ascii	"uxEventBits\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"xTasksWaitingForBits\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x2cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.ascii	"EventGroup_t\000"
	.byte	0x1
	.byte	0x4c
	.4byte	0x310
	.uleb128 0xa
	.byte	0x1
	.ascii	"xEventGroupCreate\000"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.4byte	0x2e3
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x3b1
	.uleb128 0xb
	.4byte	.LASF7
	.byte	0x1
	.byte	0x91
	.4byte	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x364
	.uleb128 0xa
	.byte	0x1
	.ascii	"xEventGroupSync\000"
	.byte	0x1
	.byte	0xb1
	.byte	0x1
	.4byte	0x2fd
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x489
	.uleb128 0xc
	.4byte	.LASF3
	.byte	0x1
	.byte	0xb1
	.4byte	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0xc
	.4byte	.LASF4
	.byte	0x1
	.byte	0xb1
	.4byte	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0xc
	.4byte	.LASF5
	.byte	0x1
	.byte	0xb1
	.4byte	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0xc
	.4byte	.LASF6
	.byte	0x1
	.byte	0xb1
	.4byte	0x17f
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0xd
	.ascii	"uxOriginalBitValue\000"
	.byte	0x1
	.byte	0xb3
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0x1
	.byte	0xb3
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xb
	.4byte	.LASF7
	.byte	0x1
	.byte	0xb4
	.4byte	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xb
	.4byte	.LASF9
	.byte	0x1
	.byte	0xb5
	.4byte	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xb
	.4byte	.LASF10
	.byte	0x1
	.byte	0xb6
	.4byte	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0xe
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0xd
	.ascii	"ulCause\000"
	.byte	0x1
	.byte	0xf1
	.4byte	0x11b
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x2fd
	.uleb128 0x10
	.byte	0x1
	.ascii	"xEventGroupWaitBits\000"
	.byte	0x1
	.2byte	0x129
	.byte	0x1
	.4byte	0x2fd
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x5a7
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x129
	.4byte	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x129
	.4byte	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x12
	.ascii	"xClearOnExit\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0x5a7
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x129
	.4byte	0x5a7
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x11
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x129
	.4byte	0x17f
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x12b
	.4byte	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x13
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x12c
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x12c
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x13
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x12d
	.4byte	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x13
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x12d
	.4byte	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x13
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x12e
	.4byte	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x14
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0x589
	.uleb128 0x13
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x13d
	.4byte	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0xe
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x15
	.ascii	"ulCause\000"
	.byte	0x1
	.2byte	0x185
	.4byte	0x11b
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x15a
	.uleb128 0x10
	.byte	0x1
	.ascii	"xEventGroupClearBits\000"
	.byte	0x1
	.2byte	0x1bf
	.byte	0x1
	.4byte	0x2fd
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x617
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x11
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x1bf
	.4byte	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x1c1
	.4byte	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x1c2
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"xEventGroupGetBitsFromISR\000"
	.byte	0x1
	.2byte	0x1e9
	.byte	0x1
	.4byte	0x2fd
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x69a
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1e9
	.4byte	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x15
	.ascii	"uxSavedInterruptStatus\000"
	.byte	0x1
	.2byte	0x1eb
	.4byte	0x16c
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x1ec
	.4byte	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.ascii	"xEventGroupSetBits\000"
	.byte	0x1
	.2byte	0x1f9
	.byte	0x1
	.4byte	0x2fd
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x792
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x2e3
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x11
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x1f9
	.4byte	0x489
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x15
	.ascii	"pxListItem\000"
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x2c7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x13
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x1fb
	.4byte	0x2c7
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x15
	.ascii	"pxListEnd\000"
	.byte	0x1
	.2byte	0x1fc
	.4byte	0x792
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x15
	.ascii	"pxList\000"
	.byte	0x1
	.2byte	0x1fd
	.4byte	0x79d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x15
	.ascii	"uxBitsWaitedFor\000"
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x13
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x1fe
	.4byte	0x2fd
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x1ff
	.4byte	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x15
	.ascii	"xMatchFound\000"
	.byte	0x1
	.2byte	0x200
	.4byte	0x15a
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x798
	.uleb128 0xf
	.4byte	0x209
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2cd
	.uleb128 0x16
	.byte	0x1
	.ascii	"vEventGroupDelete\000"
	.byte	0x1
	.2byte	0x257
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x80a
	.uleb128 0x11
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x257
	.4byte	0x2e3
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x13
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x259
	.4byte	0x3b1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x15
	.ascii	"pxTasksWaitingForBits\000"
	.byte	0x1
	.2byte	0x25a
	.4byte	0x80a
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x810
	.uleb128 0xf
	.4byte	0x2cd
	.uleb128 0x16
	.byte	0x1
	.ascii	"vEventGroupSetBitsCallback\000"
	.byte	0x1
	.2byte	0x283
	.byte	0x1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x86c
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x283
	.4byte	0x158
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x12
	.ascii	"ulBitsToSet\000"
	.byte	0x1
	.2byte	0x283
	.4byte	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0xf
	.4byte	0x11b
	.uleb128 0x16
	.byte	0x1
	.ascii	"vEventGroupClearBitsCallback\000"
	.byte	0x1
	.2byte	0x28b
	.byte	0x1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x8cc
	.uleb128 0x11
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x28b
	.4byte	0x158
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x12
	.ascii	"ulBitsToClear\000"
	.byte	0x1
	.2byte	0x28b
	.4byte	0x86c
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x17
	.ascii	"prvTestWaitCondition\000"
	.byte	0x1
	.2byte	0x291
	.byte	0x1
	.4byte	0x15a
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x291
	.4byte	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x11
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x291
	.4byte	0x489
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x11
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x291
	.4byte	0x5a7
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x13
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x293
	.4byte	0x15a
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x17
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
.LASF4:
	.ascii	"uxBitsToSet\000"
.LASF11:
	.ascii	"xWaitForAllBits\000"
.LASF5:
	.ascii	"uxBitsToWaitFor\000"
.LASF16:
	.ascii	"pvEventGroup\000"
.LASF12:
	.ascii	"uxControlBits\000"
.LASF2:
	.ascii	"pxPrevious\000"
.LASF3:
	.ascii	"xEventGroup\000"
.LASF7:
	.ascii	"pxEventBits\000"
.LASF14:
	.ascii	"uxCurrentEventBits\000"
.LASF0:
	.ascii	"xItemValue\000"
.LASF10:
	.ascii	"xTimeoutOccurred\000"
.LASF15:
	.ascii	"uxBitsToClear\000"
.LASF6:
	.ascii	"xTicksToWait\000"
.LASF9:
	.ascii	"xAlreadyYielded\000"
.LASF13:
	.ascii	"xWaitConditionMet\000"
.LASF1:
	.ascii	"pxNext\000"
.LASF8:
	.ascii	"uxReturn\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
