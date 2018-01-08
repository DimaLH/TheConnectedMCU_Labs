	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.section	.bss,bss
	.align	2
	.type	ucHeap, @object
	.size	ucHeap, 60000
ucHeap:
	.space	60000
	.section	.rodata,code
	.align	2
	.type	xHeapStructSize, @object
	.size	xHeapStructSize, 4
xHeapStructSize:
	.word	8
	.section	.sbss,bss
	.align	2
	.type	xStart, @object
	.size	xStart, 8
xStart:
	.space	8
	.align	2
	.type	pxEnd, @object
	.size	pxEnd, 4
pxEnd:
	.space	4
	.align	2
	.type	xFreeBytesRemaining, @object
	.size	xFreeBytesRemaining, 4
xFreeBytesRemaining:
	.space	4
	.align	2
	.type	xMinimumEverFreeBytesRemaining, @object
	.size	xMinimumEverFreeBytesRemaining, 4
xMinimumEverFreeBytesRemaining:
	.space	4
	.align	2
	.type	xBlockAllocatedBit, @object
	.size	xBlockAllocatedBit, 4
xBlockAllocatedBit:
	.space	4
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"../../../Source/portable/MemMang/heap_4.c\000"
	.section	.text,code
	.align	2
	.globl	pvPortMalloc
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/source/portable/memmang/heap_4.c"
	.loc 1 115 0
	.set	nomips16
	.set	nomicromips
	.ent	pvPortMalloc
	.type	pvPortMalloc, @function
pvPortMalloc:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
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
	sw	$4,40($fp)
	.loc 1 117 0
	sw	$0,24($fp)
	.loc 1 119 0
	jal	vTaskSuspendAll
	nop

	.loc 1 123 0
	lw	$2,%gp_rel(pxEnd)($28)
	bne	$2,$0,.L2
	nop

	.loc 1 125 0
	jal	prvHeapInit
	nop

.L2:
	.loc 1 136 0
	lw	$3,%gp_rel(xBlockAllocatedBit)($28)
	lw	$2,40($fp)
	and	$2,$3,$2
	bne	$2,$0,.L3
	nop

	.loc 1 140 0
	lw	$2,40($fp)
	beq	$2,$0,.L4
	nop

	.loc 1 142 0
	li	$2,8			# 0x8
	lw	$3,40($fp)
	addu	$2,$3,$2
	sw	$2,40($fp)
	.loc 1 146 0
	lw	$2,40($fp)
	andi	$2,$2,0x7
	beq	$2,$0,.L4
	nop

	.loc 1 149 0
	lw	$2,40($fp)
	ins	$2,$0,0,3
	addiu	$2,$2,8
	sw	$2,40($fp)
	.loc 1 150 0
	lw	$2,40($fp)
	andi	$2,$2,0x7
	beq	$2,$0,.L4
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,150			# 0x96
	jal	vAssertCalled
	nop

.L4:
	.loc 1 162 0
	lw	$2,40($fp)
	beq	$2,$0,.L3
	nop

	lw	$2,%gp_rel(xFreeBytesRemaining)($28)
	lw	$3,40($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L3
	nop

	.loc 1 166 0
	addiu	$2,$28,%gp_rel(xStart)
	sw	$2,20($fp)
	.loc 1 167 0
	lw	$2,%gp_rel(xStart)($28)
	sw	$2,16($fp)
	.loc 1 168 0
	j	.L6
	nop

.L8:
	.loc 1 170 0
	lw	$2,16($fp)
	sw	$2,20($fp)
	.loc 1 171 0
	lw	$2,16($fp)
	lw	$2,0($2)
	sw	$2,16($fp)
.L6:
	.loc 1 168 0
	lw	$2,16($fp)
	lw	$3,4($2)
	lw	$2,40($fp)
	sltu	$2,$3,$2
	beq	$2,$0,.L7
	nop

	lw	$2,16($fp)
	lw	$2,0($2)
	bne	$2,$0,.L8
	nop

.L7:
	.loc 1 176 0
	lw	$2,%gp_rel(pxEnd)($28)
	lw	$3,16($fp)
	beq	$3,$2,.L3
	nop

	.loc 1 180 0
	lw	$2,20($fp)
	lw	$3,0($2)
	li	$2,8			# 0x8
	addu	$2,$3,$2
	sw	$2,24($fp)
	.loc 1 184 0
	lw	$2,16($fp)
	lw	$3,0($2)
	lw	$2,20($fp)
	sw	$3,0($2)
	.loc 1 188 0
	lw	$2,16($fp)
	lw	$3,4($2)
	lw	$2,40($fp)
	subu	$3,$3,$2
	li	$2,8			# 0x8
	sll	$2,$2,1
	sltu	$2,$2,$3
	beq	$2,$0,.L9
	nop

	.loc 1 194 0
	lw	$3,16($fp)
	lw	$2,40($fp)
	addu	$2,$3,$2
	sw	$2,28($fp)
	.loc 1 195 0
	lw	$2,28($fp)
	andi	$2,$2,0x7
	beq	$2,$0,.L10
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,195			# 0xc3
	jal	vAssertCalled
	nop

.L10:
	.loc 1 199 0
	lw	$2,16($fp)
	lw	$3,4($2)
	lw	$2,40($fp)
	subu	$3,$3,$2
	lw	$2,28($fp)
	sw	$3,4($2)
	.loc 1 200 0
	lw	$2,16($fp)
	lw	$3,40($fp)
	sw	$3,4($2)
	.loc 1 203 0
	lw	$4,28($fp)
	jal	prvInsertBlockIntoFreeList
	nop

.L9:
	.loc 1 210 0
	lw	$3,%gp_rel(xFreeBytesRemaining)($28)
	lw	$2,16($fp)
	lw	$2,4($2)
	subu	$2,$3,$2
	sw	$2,%gp_rel(xFreeBytesRemaining)($28)
	.loc 1 212 0
	lw	$3,%gp_rel(xFreeBytesRemaining)($28)
	lw	$2,%gp_rel(xMinimumEverFreeBytesRemaining)($28)
	sltu	$2,$3,$2
	beq	$2,$0,.L11
	nop

	.loc 1 214 0
	lw	$2,%gp_rel(xFreeBytesRemaining)($28)
	sw	$2,%gp_rel(xMinimumEverFreeBytesRemaining)($28)
.L11:
	.loc 1 223 0
	lw	$2,16($fp)
	lw	$3,4($2)
	lw	$2,%gp_rel(xBlockAllocatedBit)($28)
	or	$3,$3,$2
	lw	$2,16($fp)
	sw	$3,4($2)
	.loc 1 224 0
	lw	$2,16($fp)
	sw	$0,0($2)
.L3:
	.loc 1 243 0
	jal	xTaskResumeAll
	nop

	.loc 1 259 0
	lw	$2,24($fp)
	andi	$2,$2,0x7
	beq	$2,$0,.L12
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,259			# 0x103
	jal	vAssertCalled
	nop

.L12:
	.loc 1 260 0
	lw	$2,24($fp)
	.loc 1 261 0
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
	.end	pvPortMalloc
.LFE4:
	.size	pvPortMalloc, .-pvPortMalloc
	.align	2
	.globl	vPortFree
.LFB5 = .
	.loc 1 265 0
	.set	nomips16
	.set	nomicromips
	.ent	vPortFree
	.type	vPortFree, @function
vPortFree:
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
	sw	$4,32($fp)
	.loc 1 266 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 269 0
	lw	$2,32($fp)
	beq	$2,$0,.L14
	nop

	.loc 1 273 0
	li	$2,8			# 0x8
	subu	$2,$0,$2
	lw	$3,16($fp)
	addu	$2,$3,$2
	sw	$2,16($fp)
	.loc 1 276 0
	lw	$2,16($fp)
	sw	$2,20($fp)
	.loc 1 279 0
	lw	$2,20($fp)
	lw	$3,4($2)
	lw	$2,%gp_rel(xBlockAllocatedBit)($28)
	and	$2,$3,$2
	bne	$2,$0,.L16
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,279			# 0x117
	jal	vAssertCalled
	nop

.L16:
	.loc 1 280 0
	lw	$2,20($fp)
	lw	$2,0($2)
	beq	$2,$0,.L17
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,280			# 0x118
	jal	vAssertCalled
	nop

.L17:
	.loc 1 282 0
	lw	$2,20($fp)
	lw	$3,4($2)
	lw	$2,%gp_rel(xBlockAllocatedBit)($28)
	and	$2,$3,$2
	beq	$2,$0,.L14
	nop

	.loc 1 284 0
	lw	$2,20($fp)
	lw	$2,0($2)
	bne	$2,$0,.L14
	nop

	.loc 1 288 0
	lw	$2,20($fp)
	lw	$3,4($2)
	lw	$2,%gp_rel(xBlockAllocatedBit)($28)
	nor	$2,$0,$2
	and	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,4($2)
	.loc 1 290 0
	jal	vTaskSuspendAll
	nop

	.loc 1 293 0
	lw	$2,20($fp)
	lw	$3,4($2)
	lw	$2,%gp_rel(xFreeBytesRemaining)($28)
	addu	$2,$3,$2
	sw	$2,%gp_rel(xFreeBytesRemaining)($28)
	.loc 1 295 0
	lw	$4,20($fp)
	jal	prvInsertBlockIntoFreeList
	nop

	.loc 1 297 0
	jal	xTaskResumeAll
	nop

.L14:
	.loc 1 309 0
	move	$sp,$fp
.LCFI7 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vPortFree
.LFE5:
	.size	vPortFree, .-vPortFree
	.align	2
	.globl	xPortGetFreeHeapSize
.LFB6 = .
	.loc 1 313 0
	.set	nomips16
	.set	nomicromips
	.ent	xPortGetFreeHeapSize
	.type	xPortGetFreeHeapSize, @function
xPortGetFreeHeapSize:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI8 = .
	sw	$fp,4($sp)
.LCFI9 = .
	move	$fp,$sp
.LCFI10 = .
	.loc 1 314 0
	lw	$2,%gp_rel(xFreeBytesRemaining)($28)
	.loc 1 315 0
	move	$sp,$fp
.LCFI11 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xPortGetFreeHeapSize
.LFE6:
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.align	2
	.globl	xPortGetMinimumEverFreeHeapSize
.LFB7 = .
	.loc 1 319 0
	.set	nomips16
	.set	nomicromips
	.ent	xPortGetMinimumEverFreeHeapSize
	.type	xPortGetMinimumEverFreeHeapSize, @function
xPortGetMinimumEverFreeHeapSize:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI12 = .
	sw	$fp,4($sp)
.LCFI13 = .
	move	$fp,$sp
.LCFI14 = .
	.loc 1 320 0
	lw	$2,%gp_rel(xMinimumEverFreeBytesRemaining)($28)
	.loc 1 321 0
	move	$sp,$fp
.LCFI15 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xPortGetMinimumEverFreeHeapSize
.LFE7:
	.size	xPortGetMinimumEverFreeHeapSize, .-xPortGetMinimumEverFreeHeapSize
	.align	2
	.globl	vPortInitialiseBlocks
.LFB8 = .
	.loc 1 325 0
	.set	nomips16
	.set	nomicromips
	.ent	vPortInitialiseBlocks
	.type	vPortInitialiseBlocks, @function
vPortInitialiseBlocks:
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
	.loc 1 327 0
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
	.end	vPortInitialiseBlocks
.LFE8:
	.size	vPortInitialiseBlocks, .-vPortInitialiseBlocks
	.align	2
.LFB9 = .
	.loc 1 331 0
	.set	nomips16
	.set	nomicromips
	.ent	prvHeapInit
	.type	prvHeapInit, @function
prvHeapInit:
	.frame	$fp,24,$31		# vars= 16, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI20 = .
	sw	$fp,20($sp)
.LCFI21 = .
	move	$fp,$sp
.LCFI22 = .
	.loc 1 335 0
	li	$2,60000			# 0xea60
	sw	$2,4($fp)
	.loc 1 338 0
	lui	$2,%hi(ucHeap)
	addiu	$2,$2,%lo(ucHeap)
	sw	$2,0($fp)
	.loc 1 340 0
	lw	$2,0($fp)
	andi	$2,$2,0x7
	beq	$2,$0,.L24
	nop

	.loc 1 342 0
	lw	$2,0($fp)
	addiu	$2,$2,7
	sw	$2,0($fp)
	.loc 1 343 0
	lw	$2,0($fp)
	ins	$2,$0,0,3
	sw	$2,0($fp)
	.loc 1 344 0
	lw	$3,4($fp)
	lw	$2,0($fp)
	subu	$3,$3,$2
	lui	$2,%hi(ucHeap)
	addiu	$2,$2,%lo(ucHeap)
	addu	$2,$3,$2
	sw	$2,4($fp)
.L24:
	.loc 1 347 0
	lw	$2,0($fp)
	sw	$2,8($fp)
	.loc 1 351 0
	lw	$2,8($fp)
	sw	$2,%gp_rel(xStart)($28)
	.loc 1 352 0
	sw	$0,%gp_rel(xStart+4)($28)
	.loc 1 356 0
	lw	$3,8($fp)
	lw	$2,4($fp)
	addu	$2,$3,$2
	sw	$2,0($fp)
	.loc 1 357 0
	li	$2,8			# 0x8
	lw	$3,0($fp)
	subu	$2,$3,$2
	sw	$2,0($fp)
	.loc 1 358 0
	lw	$2,0($fp)
	ins	$2,$0,0,3
	sw	$2,0($fp)
	.loc 1 359 0
	lw	$2,0($fp)
	sw	$2,%gp_rel(pxEnd)($28)
	.loc 1 360 0
	lw	$2,%gp_rel(pxEnd)($28)
	sw	$0,4($2)
	.loc 1 361 0
	lw	$2,%gp_rel(pxEnd)($28)
	sw	$0,0($2)
	.loc 1 365 0
	lw	$2,8($fp)
	sw	$2,12($fp)
	.loc 1 366 0
	lw	$2,12($fp)
	lw	$3,0($fp)
	subu	$3,$3,$2
	lw	$2,12($fp)
	sw	$3,4($2)
	.loc 1 367 0
	lw	$3,%gp_rel(pxEnd)($28)
	lw	$2,12($fp)
	sw	$3,0($2)
	.loc 1 370 0
	lw	$2,12($fp)
	lw	$2,4($2)
	sw	$2,%gp_rel(xMinimumEverFreeBytesRemaining)($28)
	.loc 1 371 0
	lw	$2,12($fp)
	lw	$2,4($2)
	sw	$2,%gp_rel(xFreeBytesRemaining)($28)
	.loc 1 374 0
	li	$2,-2147483648			# 0xffffffff80000000
	sw	$2,%gp_rel(xBlockAllocatedBit)($28)
	.loc 1 375 0
	move	$sp,$fp
.LCFI23 = .
	lw	$fp,20($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvHeapInit
.LFE9:
	.size	prvHeapInit, .-prvHeapInit
	.align	2
.LFB10 = .
	.loc 1 379 0
	.set	nomips16
	.set	nomicromips
	.ent	prvInsertBlockIntoFreeList
	.type	prvInsertBlockIntoFreeList, @function
prvInsertBlockIntoFreeList:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI24 = .
	sw	$fp,12($sp)
.LCFI25 = .
	move	$fp,$sp
.LCFI26 = .
	sw	$4,16($fp)
	.loc 1 385 0
	addiu	$2,$28,%gp_rel(xStart)
	sw	$2,0($fp)
	j	.L26
	nop

.L27:
	lw	$2,0($fp)
	lw	$2,0($2)
	sw	$2,0($fp)
.L26:
	lw	$2,0($fp)
	lw	$3,0($2)
	lw	$2,16($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L27
	nop

	.loc 1 392 0
	lw	$2,0($fp)
	sw	$2,4($fp)
	.loc 1 393 0
	lw	$2,0($fp)
	lw	$2,4($2)
	lw	$3,4($fp)
	addu	$3,$3,$2
	lw	$2,16($fp)
	bne	$3,$2,.L28
	nop

	.loc 1 395 0
	lw	$2,0($fp)
	lw	$3,4($2)
	lw	$2,16($fp)
	lw	$2,4($2)
	addu	$3,$3,$2
	lw	$2,0($fp)
	sw	$3,4($2)
	.loc 1 396 0
	lw	$2,0($fp)
	sw	$2,16($fp)
.L28:
	.loc 1 405 0
	lw	$2,16($fp)
	sw	$2,4($fp)
	.loc 1 406 0
	lw	$2,16($fp)
	lw	$2,4($2)
	lw	$3,4($fp)
	addu	$3,$3,$2
	lw	$2,0($fp)
	lw	$2,0($2)
	bne	$3,$2,.L29
	nop

	.loc 1 408 0
	lw	$2,0($fp)
	lw	$3,0($2)
	lw	$2,%gp_rel(pxEnd)($28)
	beq	$3,$2,.L30
	nop

	.loc 1 411 0
	lw	$2,16($fp)
	lw	$3,4($2)
	lw	$2,0($fp)
	lw	$2,0($2)
	lw	$2,4($2)
	addu	$3,$3,$2
	lw	$2,16($fp)
	sw	$3,4($2)
	.loc 1 412 0
	lw	$2,0($fp)
	lw	$2,0($2)
	lw	$3,0($2)
	lw	$2,16($fp)
	sw	$3,0($2)
	j	.L32
	nop

.L30:
	.loc 1 416 0
	lw	$3,%gp_rel(pxEnd)($28)
	lw	$2,16($fp)
	sw	$3,0($2)
	j	.L32
	nop

.L29:
	.loc 1 421 0
	lw	$2,0($fp)
	lw	$3,0($2)
	lw	$2,16($fp)
	sw	$3,0($2)
.L32:
	.loc 1 428 0
	lw	$3,0($fp)
	lw	$2,16($fp)
	beq	$3,$2,.L25
	nop

	.loc 1 430 0
	lw	$2,0($fp)
	lw	$3,16($fp)
	sw	$3,0($2)
.L25:
	.loc 1 436 0
	move	$sp,$fp
.LCFI27 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvInsertBlockIntoFreeList
.LFE10:
	.size	prvInsertBlockIntoFreeList, .-prvInsertBlockIntoFreeList
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
	.uleb128 0x8
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
	.uleb128 0x8
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
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0x9e
	.uleb128 0x1
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
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/stddef.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x527
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"../../../Source/portable/MemMang/heap_4.c\000"
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
	.4byte	0xc5
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
	.byte	0x3
	.byte	0x2f
	.4byte	0x111
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
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x100
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x6
	.ascii	"A_BLOCK_LINK\000"
	.byte	0x8
	.byte	0x1
	.byte	0x46
	.4byte	0x1d1
	.uleb128 0x7
	.ascii	"pxNextFreeBlock\000"
	.byte	0x1
	.byte	0x48
	.4byte	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.ascii	"xBlockSize\000"
	.byte	0x1
	.byte	0x49
	.4byte	0xb7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18c
	.uleb128 0x3
	.ascii	"BlockLink_t\000"
	.byte	0x1
	.byte	0x4a
	.4byte	0x18c
	.uleb128 0x8
	.byte	0x1
	.ascii	"pvPortMalloc\000"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.4byte	0x170
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x27e
	.uleb128 0x9
	.ascii	"xWantedSize\000"
	.byte	0x1
	.byte	0x72
	.4byte	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0xa
	.ascii	"pxBlock\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xa
	.ascii	"pxPreviousBlock\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0xa
	.ascii	"pxNewBlockLink\000"
	.byte	0x1
	.byte	0x74
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0xa
	.ascii	"pvReturn\000"
	.byte	0x1
	.byte	0x75
	.4byte	0x170
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d7
	.uleb128 0xb
	.byte	0x1
	.ascii	"vPortFree\000"
	.byte	0x1
	.2byte	0x108
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x2d3
	.uleb128 0xc
	.ascii	"pv\000"
	.byte	0x1
	.2byte	0x108
	.4byte	0x170
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0xd
	.ascii	"puc\000"
	.byte	0x1
	.2byte	0x10a
	.4byte	0x172
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.ascii	"pxLink\000"
	.byte	0x1
	.2byte	0x10b
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.ascii	"xPortGetFreeHeapSize\000"
	.byte	0x1
	.2byte	0x138
	.byte	0x1
	.4byte	0xb7
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.ascii	"xPortGetMinimumEverFreeHeapSize\000"
	.byte	0x1
	.2byte	0x13e
	.byte	0x1
	.4byte	0xb7
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.ascii	"vPortInitialiseBlocks\000"
	.byte	0x1
	.2byte	0x144
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x10
	.ascii	"prvHeapInit\000"
	.byte	0x1
	.2byte	0x14a
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x3df
	.uleb128 0xd
	.ascii	"pxFirstFreeBlock\000"
	.byte	0x1
	.2byte	0x14c
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.sleb128 12
	.uleb128 0xd
	.ascii	"pucAlignedHeap\000"
	.byte	0x1
	.2byte	0x14d
	.4byte	0x172
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0xd
	.ascii	"uxAddress\000"
	.byte	0x1
	.2byte	0x14e
	.4byte	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.ascii	"xTotalHeapSize\000"
	.byte	0x1
	.2byte	0x14f
	.4byte	0xb7
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x10
	.ascii	"prvInsertBlockIntoFreeList\000"
	.byte	0x1
	.2byte	0x17a
	.byte	0x1
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x44f
	.uleb128 0xc
	.ascii	"pxBlockToInsert\000"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0xd
	.ascii	"pxIterator\000"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x27e
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0xd
	.ascii	"puc\000"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x172
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.uleb128 0x11
	.4byte	0x100
	.4byte	0x460
	.uleb128 0x12
	.4byte	0x178
	.2byte	0xea5f
	.byte	0
	.uleb128 0xa
	.ascii	"ucHeap\000"
	.byte	0x1
	.byte	0x41
	.4byte	0x44f
	.byte	0x5
	.byte	0x3
	.4byte	ucHeap
	.uleb128 0xa
	.ascii	"xHeapStructSize\000"
	.byte	0x1
	.byte	0x60
	.4byte	0x491
	.byte	0x5
	.byte	0x3
	.4byte	xHeapStructSize
	.uleb128 0x13
	.4byte	0xb7
	.uleb128 0xa
	.ascii	"xStart\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x1d7
	.byte	0x5
	.byte	0x3
	.4byte	xStart
	.uleb128 0xa
	.ascii	"pxEnd\000"
	.byte	0x1
	.byte	0x63
	.4byte	0x27e
	.byte	0x5
	.byte	0x3
	.4byte	pxEnd
	.uleb128 0xa
	.ascii	"xFreeBytesRemaining\000"
	.byte	0x1
	.byte	0x67
	.4byte	0xb7
	.byte	0x5
	.byte	0x3
	.4byte	xFreeBytesRemaining
	.uleb128 0xa
	.ascii	"xMinimumEverFreeBytesRemaining\000"
	.byte	0x1
	.byte	0x68
	.4byte	0xb7
	.byte	0x5
	.byte	0x3
	.4byte	xMinimumEverFreeBytesRemaining
	.uleb128 0xa
	.ascii	"xBlockAllocatedBit\000"
	.byte	0x1
	.byte	0x6e
	.4byte	0xb7
	.byte	0x5
	.byte	0x3
	.4byte	xBlockAllocatedBit
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
