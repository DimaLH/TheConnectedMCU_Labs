	.section .mdebug.abi32
	.previous
	.gnu_attribute 4, 4
	.section	.text,code
.Ltext0:
	.globl	pxCurrentTCB
	.section	.sbss,bss
	.align	2
	.type	pxCurrentTCB, @object
	.size	pxCurrentTCB, 4
pxCurrentTCB:
	.space	4
	.section	.bss,bss
	.align	2
	.type	pxReadyTasksLists, @object
	.size	pxReadyTasksLists, 160
pxReadyTasksLists:
	.space	160
	.align	2
	.type	xDelayedTaskList1, @object
	.size	xDelayedTaskList1, 20
xDelayedTaskList1:
	.space	20
	.align	2
	.type	xDelayedTaskList2, @object
	.size	xDelayedTaskList2, 20
xDelayedTaskList2:
	.space	20
	.section	.sbss,bss
	.align	2
	.type	pxDelayedTaskList, @object
	.size	pxDelayedTaskList, 4
pxDelayedTaskList:
	.space	4
	.align	2
	.type	pxOverflowDelayedTaskList, @object
	.size	pxOverflowDelayedTaskList, 4
pxOverflowDelayedTaskList:
	.space	4
	.section	.bss,bss
	.align	2
	.type	xPendingReadyList, @object
	.size	xPendingReadyList, 20
xPendingReadyList:
	.space	20
	.align	2
	.type	xTasksWaitingTermination, @object
	.size	xTasksWaitingTermination, 20
xTasksWaitingTermination:
	.space	20
	.section	.sbss,bss
	.align	2
	.type	uxDeletedTasksWaitingCleanUp, @object
	.size	uxDeletedTasksWaitingCleanUp, 4
uxDeletedTasksWaitingCleanUp:
	.space	4
	.section	.bss,bss
	.align	2
	.type	xSuspendedTaskList, @object
	.size	xSuspendedTaskList, 20
xSuspendedTaskList:
	.space	20
	.section	.sbss,bss
	.align	2
	.type	uxCurrentNumberOfTasks, @object
	.size	uxCurrentNumberOfTasks, 4
uxCurrentNumberOfTasks:
	.space	4
	.align	2
	.type	xTickCount, @object
	.size	xTickCount, 4
xTickCount:
	.space	4
	.align	2
	.type	uxTopReadyPriority, @object
	.size	uxTopReadyPriority, 4
uxTopReadyPriority:
	.space	4
	.align	2
	.type	xSchedulerRunning, @object
	.size	xSchedulerRunning, 4
xSchedulerRunning:
	.space	4
	.align	2
	.type	uxPendedTicks, @object
	.size	uxPendedTicks, 4
uxPendedTicks:
	.space	4
	.align	2
	.type	xYieldPending, @object
	.size	xYieldPending, 4
xYieldPending:
	.space	4
	.align	2
	.type	xNumOfOverflows, @object
	.size	xNumOfOverflows, 4
xNumOfOverflows:
	.space	4
	.align	2
	.type	uxTaskNumber, @object
	.size	uxTaskNumber, 4
uxTaskNumber:
	.space	4
	.align	2
	.type	xNextTaskUnblockTime, @object
	.size	xNextTaskUnblockTime, 4
xNextTaskUnblockTime:
	.space	4
	.align	2
	.type	xIdleTaskHandle, @object
	.size	xIdleTaskHandle, 4
xIdleTaskHandle:
	.space	4
	.align	2
	.type	uxSchedulerSuspended, @object
	.size	uxSchedulerSuspended, 4
uxSchedulerSuspended:
	.space	4
	.section	.text,code
	.align	2
	.globl	xTaskCreate
.LFB4 = .
	.file 1 "c:/users/user/desktop/release/source/tasks.c"
	.loc 1 738 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskCreate
	.type	xTaskCreate, @function
xTaskCreate:
	.frame	$fp,56,$31		# vars= 16, regs= 2/0, args= 32, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-56
.LCFI0 = .
	sw	$31,52($sp)
	sw	$fp,48($sp)
.LCFI1 = .
	move	$fp,$sp
.LCFI2 = .
	sw	$4,56($fp)
	sw	$5,60($fp)
	move	$2,$6
	sw	$7,68($fp)
	sh	$2,64($fp)
.LBB2 = .
	.loc 1 772 0
	lhu	$2,64($fp)
	sll	$2,$2,2
	move	$4,$2
	jal	pvPortMalloc
	nop

	sw	$2,40($fp)
	.loc 1 774 0
	lw	$2,40($fp)
	beq	$2,$0,.L2
	nop

	.loc 1 777 0
	li	$4,88			# 0x58
	jal	pvPortMalloc
	nop

	sw	$2,32($fp)
	.loc 1 779 0
	lw	$2,32($fp)
	beq	$2,$0,.L3
	nop

	.loc 1 782 0
	lw	$2,32($fp)
	lw	$3,40($fp)
	sw	$3,48($2)
	j	.L5
	nop

.L3:
	.loc 1 788 0
	lw	$4,40($fp)
	jal	vPortFree
	nop

	j	.L5
	nop

.L2:
	.loc 1 793 0
	sw	$0,32($fp)
.L5:
.LBE2 = .
	.loc 1 798 0
	lw	$2,32($fp)
	beq	$2,$0,.L6
	nop

	.loc 1 808 0
	lhu	$2,64($fp)
	lw	$3,72($fp)
	sw	$3,16($sp)
	lw	$3,76($fp)
	sw	$3,20($sp)
	lw	$3,32($fp)
	sw	$3,24($sp)
	sw	$0,28($sp)
	lw	$4,56($fp)
	lw	$5,60($fp)
	move	$6,$2
	lw	$7,68($fp)
	jal	prvInitialiseNewTask
	nop

	.loc 1 809 0
	lw	$4,32($fp)
	jal	prvAddNewTaskToReadyList
	nop

	.loc 1 810 0
	li	$2,1			# 0x1
	sw	$2,36($fp)
	j	.L7
	nop

.L6:
	.loc 1 814 0
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,36($fp)
.L7:
	.loc 1 817 0
	lw	$2,36($fp)
	.loc 1 818 0
	move	$sp,$fp
.LCFI3 = .
	lw	$31,52($sp)
	lw	$fp,48($sp)
	addiu	$sp,$sp,56
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskCreate
.LFE4:
	.size	xTaskCreate, .-xTaskCreate
	.section	.rodata,code
	.align	2
.LC0:
	.ascii	"../../../Source/tasks.c\000"
	.section	.text,code
	.align	2
.LFB5 = .
	.loc 1 831 0
	.set	nomips16
	.set	nomicromips
	.ent	prvInitialiseNewTask
	.type	prvInitialiseNewTask, @function
prvInitialiseNewTask:
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
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	.loc 1 853 0
	lw	$2,56($fp)
	lw	$3,48($2)
	lw	$2,40($fp)
	sll	$2,$2,2
	move	$4,$3
	li	$5,165			# 0xa5
	move	$6,$2
	jal	memset
	nop

	.loc 1 863 0
	lw	$2,56($fp)
	lw	$3,48($2)
	lw	$4,40($fp)
	li	$2,1073676288			# 0x3fff0000
	ori	$2,$2,0xffff
	addu	$2,$4,$2
	sll	$2,$2,2
	addu	$2,$3,$2
	sw	$2,20($fp)
	.loc 1 864 0
	lw	$2,20($fp)
	ins	$2,$0,0,3
	sw	$2,20($fp)
	.loc 1 867 0
	lw	$2,20($fp)
	andi	$2,$2,0x7
	beq	$2,$0,.L10
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,867			# 0x363
	jal	vAssertCalled
	nop

.L10:
	.loc 1 891 0
	sw	$0,16($fp)
	j	.L11
	nop

.L14:
	.loc 1 893 0
	lw	$3,36($fp)
	lw	$2,16($fp)
	addu	$2,$3,$2
	lb	$3,0($2)
	lw	$4,56($fp)
	lw	$2,16($fp)
	addu	$2,$4,$2
	sb	$3,52($2)
	.loc 1 898 0
	lw	$3,36($fp)
	lw	$2,16($fp)
	addu	$2,$3,$2
	lb	$2,0($2)
	bne	$2,$0,.L12
	nop

	.loc 1 900 0
	j	.L13
	nop

.L12:
	.loc 1 891 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L11:
	lw	$2,16($fp)
	sltu	$2,$2,16
	bne	$2,$0,.L14
	nop

.L13:
	.loc 1 910 0
	lw	$2,56($fp)
	sb	$0,67($2)
	.loc 1 914 0
	lw	$2,48($fp)
	sltu	$2,$2,8
	bne	$2,$0,.L15
	nop

	.loc 1 916 0
	li	$2,7			# 0x7
	sw	$2,48($fp)
.L15:
	.loc 1 923 0
	lw	$2,56($fp)
	lw	$3,48($fp)
	sw	$3,44($2)
	.loc 1 926 0
	lw	$2,56($fp)
	lw	$3,48($fp)
	sw	$3,72($2)
	.loc 1 927 0
	lw	$2,56($fp)
	sw	$0,76($2)
	.loc 1 931 0
	lw	$2,56($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	vListInitialiseItem
	nop

	.loc 1 932 0
	lw	$2,56($fp)
	addiu	$2,$2,24
	move	$4,$2
	jal	vListInitialiseItem
	nop

	.loc 1 936 0
	lw	$2,56($fp)
	lw	$3,56($fp)
	sw	$3,16($2)
	.loc 1 939 0
	li	$3,8			# 0x8
	lw	$2,48($fp)
	subu	$3,$3,$2
	lw	$2,56($fp)
	sw	$3,24($2)
	.loc 1 940 0
	lw	$2,56($fp)
	lw	$3,56($fp)
	sw	$3,36($2)
	.loc 1 944 0
	lw	$2,56($fp)
	sw	$0,68($2)
	.loc 1 982 0
	lw	$2,56($fp)
	sw	$0,80($2)
	.loc 1 983 0
	lw	$2,56($fp)
	sb	$0,84($2)
	.loc 1 1010 0
	lw	$4,20($fp)
	lw	$5,32($fp)
	lw	$6,44($fp)
	jal	pxPortInitialiseStack
	nop

	move	$3,$2
	lw	$2,56($fp)
	sw	$3,0($2)
	.loc 1 1014 0
	lw	$2,52($fp)
	beq	$2,$0,.L9
	nop

	.loc 1 1018 0
	lw	$2,52($fp)
	lw	$3,56($fp)
	sw	$3,0($2)
.L9:
	.loc 1 1024 0
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
	.end	prvInitialiseNewTask
.LFE5:
	.size	prvInitialiseNewTask, .-prvInitialiseNewTask
	.align	2
.LFB6 = .
	.loc 1 1028 0
	.set	nomips16
	.set	nomicromips
	.ent	prvAddNewTaskToReadyList
	.type	prvAddNewTaskToReadyList, @function
prvAddNewTaskToReadyList:
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
	sw	$4,32($fp)
	.loc 1 1031 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1033 0
	lw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	.loc 1 1034 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	bne	$2,$0,.L18
	nop

	.loc 1 1038 0
	lw	$2,32($fp)
	sw	$2,%gp_rel(pxCurrentTCB)($28)
	.loc 1 1040 0
	lw	$3,%gp_rel(uxCurrentNumberOfTasks)($28)
	li	$2,1			# 0x1
	bne	$3,$2,.L19
	nop

	.loc 1 1045 0
	jal	prvInitialiseTaskLists
	nop

	j	.L19
	nop

.L18:
	.loc 1 1057 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	bne	$2,$0,.L19
	nop

	.loc 1 1059 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,44($2)
	lw	$2,32($fp)
	lw	$2,44($2)
	sltu	$2,$2,$3
	bne	$2,$0,.L19
	nop

	.loc 1 1061 0
	lw	$2,32($fp)
	sw	$2,%gp_rel(pxCurrentTCB)($28)
.L19:
	.loc 1 1074 0
	lw	$2,%gp_rel(uxTaskNumber)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(uxTaskNumber)($28)
	.loc 1 1084 0
	lw	$2,32($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,32($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,32($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 1088 0
	jal	vTaskExitCritical
	nop

	.loc 1 1090 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	beq	$2,$0,.L17
	nop

	.loc 1 1094 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,44($2)
	lw	$2,32($fp)
	lw	$2,44($2)
	sltu	$2,$3,$2
	beq	$2,$0,.L17
	nop

.LBB3 = .
	.loc 1 1096 0
	mfc0	$2,$13,0
	sw	$2,16($fp)
	lw	$2,16($fp)
	ori	$2,$2,0x100
	sw	$2,16($fp)
	lw	$2,16($fp)
	mtc0	$2,$13,0
	ehb
.L17:
.LBE3 = .
	.loc 1 1107 0
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
	.end	prvAddNewTaskToReadyList
.LFE6:
	.size	prvAddNewTaskToReadyList, .-prvAddNewTaskToReadyList
	.align	2
	.globl	vTaskDelete
.LFB7 = .
	.loc 1 1113 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskDelete
	.type	vTaskDelete, @function
vTaskDelete:
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
	.loc 1 1116 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1120 0
	lw	$2,32($fp)
	bne	$2,$0,.L22
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L23
	nop

.L22:
	lw	$2,32($fp)
.L23:
	sw	$2,16($fp)
	.loc 1 1123 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	bne	$2,$0,.L24
	nop

	.loc 1 1125 0
	lw	$2,16($fp)
	lw	$2,44($2)
	lui	$3,%hi(pxReadyTasksLists)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	lw	$2,0($2)
	bne	$2,$0,.L24
	nop

	lw	$2,16($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$3,$0,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	and	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
.L24:
	.loc 1 1133 0
	lw	$2,16($fp)
	lw	$2,40($2)
	beq	$2,$0,.L26
	nop

	.loc 1 1135 0
	lw	$2,16($fp)
	addiu	$2,$2,24
	move	$4,$2
	jal	uxListRemove
	nop

.L26:
	.loc 1 1146 0
	lw	$2,%gp_rel(uxTaskNumber)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(uxTaskNumber)($28)
	.loc 1 1148 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,16($fp)
	bne	$3,$2,.L27
	nop

	.loc 1 1155 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	lui	$3,%hi(xTasksWaitingTermination)
	addiu	$4,$3,%lo(xTasksWaitingTermination)
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 1160 0
	lw	$2,%gp_rel(uxDeletedTasksWaitingCleanUp)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(uxDeletedTasksWaitingCleanUp)($28)
	j	.L28
	nop

.L27:
	.loc 1 1171 0
	lw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	.loc 1 1172 0
	lw	$4,16($fp)
	jal	prvDeleteTCB
	nop

	.loc 1 1176 0
	jal	prvResetNextTaskUnblockTime
	nop

.L28:
	.loc 1 1181 0
	jal	vTaskExitCritical
	nop

	.loc 1 1185 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	beq	$2,$0,.L21
	nop

	.loc 1 1187 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,16($fp)
	bne	$3,$2,.L21
	nop

	.loc 1 1189 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	beq	$2,$0,.L30
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1189			# 0x4a5
	jal	vAssertCalled
	nop

.L30:
.LBB4 = .
	.loc 1 1190 0
	mfc0	$2,$13,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	ori	$2,$2,0x100
	sw	$2,20($fp)
	lw	$2,20($fp)
	mtc0	$2,$13,0
	ehb
.L21:
.LBE4 = .
	.loc 1 1197 0
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
	.end	vTaskDelete
.LFE7:
	.size	vTaskDelete, .-vTaskDelete
	.align	2
	.globl	vTaskDelayUntil
.LFB8 = .
	.loc 1 1205 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskDelayUntil
	.type	vTaskDelayUntil, @function
vTaskDelayUntil:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI16 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI17 = .
	move	$fp,$sp
.LCFI18 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	.loc 1 1207 0
	sw	$0,16($fp)
	.loc 1 1209 0
	lw	$2,48($fp)
	bne	$2,$0,.L32
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1209			# 0x4b9
	jal	vAssertCalled
	nop

.L32:
	.loc 1 1210 0
	lw	$2,52($fp)
	bne	$2,$0,.L33
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1210			# 0x4ba
	jal	vAssertCalled
	nop

.L33:
	.loc 1 1211 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	beq	$2,$0,.L34
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1211			# 0x4bb
	jal	vAssertCalled
	nop

.L34:
	.loc 1 1213 0
	jal	vTaskSuspendAll
	nop

.LBB5 = .
	.loc 1 1217 0
	lw	$2,%gp_rel(xTickCount)($28)
	sw	$2,20($fp)
	.loc 1 1220 0
	lw	$2,48($fp)
	lw	$3,0($2)
	lw	$2,52($fp)
	addu	$2,$3,$2
	sw	$2,24($fp)
	.loc 1 1222 0
	lw	$2,48($fp)
	lw	$3,0($2)
	lw	$2,20($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L35
	nop

	.loc 1 1229 0
	lw	$2,48($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L36
	nop

	lw	$3,24($fp)
	lw	$2,20($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L36
	nop

	.loc 1 1231 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L36
	nop

.L35:
	.loc 1 1243 0
	lw	$2,48($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L37
	nop

	lw	$3,24($fp)
	lw	$2,20($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L36
	nop

.L37:
	.loc 1 1245 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L36:
	.loc 1 1254 0
	lw	$2,48($fp)
	lw	$3,24($fp)
	sw	$3,0($2)
	.loc 1 1256 0
	lw	$2,16($fp)
	beq	$2,$0,.L38
	nop

	.loc 1 1262 0
	lw	$3,24($fp)
	lw	$2,20($fp)
	subu	$2,$3,$2
	move	$4,$2
	move	$5,$0
	jal	prvAddCurrentTaskToDelayedList
	nop

.L38:
.LBE5 = .
	.loc 1 1269 0
	jal	xTaskResumeAll
	nop

	sw	$2,28($fp)
	.loc 1 1273 0
	lw	$2,28($fp)
	bne	$2,$0,.L31
	nop

.LBB6 = .
	.loc 1 1275 0
	mfc0	$2,$13,0
	sw	$2,32($fp)
	lw	$2,32($fp)
	ori	$2,$2,0x100
	sw	$2,32($fp)
	lw	$2,32($fp)
	mtc0	$2,$13,0
	ehb
.L31:
.LBE6 = .
	.loc 1 1281 0
	move	$sp,$fp
.LCFI19 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskDelayUntil
.LFE8:
	.size	vTaskDelayUntil, .-vTaskDelayUntil
	.align	2
	.globl	vTaskDelay
.LFB9 = .
	.loc 1 1289 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskDelay
	.type	vTaskDelay, @function
vTaskDelay:
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
	.loc 1 1290 0
	sw	$0,16($fp)
	.loc 1 1293 0
	lw	$2,32($fp)
	beq	$2,$0,.L41
	nop

	.loc 1 1295 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	beq	$2,$0,.L42
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1295			# 0x50f
	jal	vAssertCalled
	nop

.L42:
	.loc 1 1296 0
	jal	vTaskSuspendAll
	nop

	.loc 1 1307 0
	lw	$4,32($fp)
	move	$5,$0
	jal	prvAddCurrentTaskToDelayedList
	nop

	.loc 1 1309 0
	jal	xTaskResumeAll
	nop

	sw	$2,16($fp)
.L41:
	.loc 1 1318 0
	lw	$2,16($fp)
	bne	$2,$0,.L40
	nop

.LBB7 = .
	.loc 1 1320 0
	mfc0	$2,$13,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	ori	$2,$2,0x100
	sw	$2,20($fp)
	lw	$2,20($fp)
	mtc0	$2,$13,0
	ehb
.L40:
.LBE7 = .
	.loc 1 1326 0
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
	.end	vTaskDelay
.LFE9:
	.size	vTaskDelay, .-vTaskDelay
	.align	2
	.globl	eTaskGetState
.LFB10 = .
	.loc 1 1334 0
	.set	nomips16
	.set	nomicromips
	.ent	eTaskGetState
	.type	eTaskGetState, @function
eTaskGetState:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI24 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI25 = .
	move	$fp,$sp
.LCFI26 = .
	sw	$4,40($fp)
	.loc 1 1337 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 1339 0
	lw	$2,20($fp)
	bne	$2,$0,.L45
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1339			# 0x53b
	jal	vAssertCalled
	nop

.L45:
	.loc 1 1341 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,20($fp)
	bne	$3,$2,.L46
	nop

	.loc 1 1344 0
	sw	$0,16($fp)
	j	.L47
	nop

.L46:
	.loc 1 1348 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1350 0
	lw	$2,20($fp)
	lw	$2,20($2)
	sw	$2,24($fp)
	.loc 1 1352 0
	jal	vTaskExitCritical
	nop

	.loc 1 1354 0
	lw	$2,%gp_rel(pxDelayedTaskList)($28)
	lw	$3,24($fp)
	beq	$3,$2,.L48
	nop

	lw	$2,%gp_rel(pxOverflowDelayedTaskList)($28)
	lw	$3,24($fp)
	bne	$3,$2,.L49
	nop

.L48:
	.loc 1 1358 0
	li	$2,2			# 0x2
	sw	$2,16($fp)
	j	.L47
	nop

.L49:
	.loc 1 1362 0
	lw	$3,24($fp)
	lui	$2,%hi(xSuspendedTaskList)
	addiu	$2,$2,%lo(xSuspendedTaskList)
	bne	$3,$2,.L50
	nop

	.loc 1 1367 0
	lw	$2,20($fp)
	lw	$2,40($2)
	bne	$2,$0,.L51
	nop

	.loc 1 1369 0
	li	$2,3			# 0x3
	sw	$2,16($fp)
	j	.L47
	nop

.L51:
	.loc 1 1373 0
	li	$2,2			# 0x2
	sw	$2,16($fp)
	j	.L47
	nop

.L50:
	.loc 1 1379 0
	lw	$3,24($fp)
	lui	$2,%hi(xTasksWaitingTermination)
	addiu	$2,$2,%lo(xTasksWaitingTermination)
	beq	$3,$2,.L53
	nop

	lw	$2,24($fp)
	bne	$2,$0,.L54
	nop

.L53:
	.loc 1 1384 0
	li	$2,4			# 0x4
	sw	$2,16($fp)
	j	.L47
	nop

.L54:
	.loc 1 1392 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L47:
	.loc 1 1396 0
	lw	$2,16($fp)
	.loc 1 1397 0
	move	$sp,$fp
.LCFI27 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	eTaskGetState
.LFE10:
	.size	eTaskGetState, .-eTaskGetState
	.align	2
	.globl	uxTaskPriorityGet
.LFB11 = .
	.loc 1 1405 0
	.set	nomips16
	.set	nomicromips
	.ent	uxTaskPriorityGet
	.type	uxTaskPriorityGet, @function
uxTaskPriorityGet:
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
	.loc 1 1409 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1413 0
	lw	$2,32($fp)
	bne	$2,$0,.L57
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L58
	nop

.L57:
	lw	$2,32($fp)
.L58:
	sw	$2,16($fp)
	.loc 1 1414 0
	lw	$2,16($fp)
	lw	$2,44($2)
	sw	$2,20($fp)
	.loc 1 1416 0
	jal	vTaskExitCritical
	nop

	.loc 1 1418 0
	lw	$2,20($fp)
	.loc 1 1419 0
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
	.end	uxTaskPriorityGet
.LFE11:
	.size	uxTaskPriorityGet, .-uxTaskPriorityGet
	.align	2
	.globl	uxTaskPriorityGetFromISR
.LFB12 = .
	.loc 1 1427 0
	.set	nomips16
	.set	nomicromips
	.ent	uxTaskPriorityGetFromISR
	.type	uxTaskPriorityGetFromISR, @function
uxTaskPriorityGetFromISR:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
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
	.loc 1 1449 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,16($fp)
	.loc 1 1453 0
	lw	$2,40($fp)
	bne	$2,$0,.L61
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L62
	nop

.L61:
	lw	$2,40($fp)
.L62:
	sw	$2,20($fp)
	.loc 1 1454 0
	lw	$2,20($fp)
	lw	$2,44($2)
	sw	$2,24($fp)
	.loc 1 1456 0
	lw	$4,16($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 1458 0
	lw	$2,24($fp)
	.loc 1 1459 0
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
	.end	uxTaskPriorityGetFromISR
.LFE12:
	.size	uxTaskPriorityGetFromISR, .-uxTaskPriorityGetFromISR
	.align	2
	.globl	vTaskPrioritySet
.LFB13 = .
	.loc 1 1467 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskPrioritySet
	.type	vTaskPrioritySet, @function
vTaskPrioritySet:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI36 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI37 = .
	move	$fp,$sp
.LCFI38 = .
	sw	$4,48($fp)
	sw	$5,52($fp)
	.loc 1 1470 0
	sw	$0,16($fp)
	.loc 1 1472 0
	lw	$2,52($fp)
	sltu	$2,$2,8
	bne	$2,$0,.L65
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1472			# 0x5c0
	jal	vAssertCalled
	nop

.L65:
	.loc 1 1475 0
	lw	$2,52($fp)
	sltu	$2,$2,8
	bne	$2,$0,.L66
	nop

	.loc 1 1477 0
	li	$2,7			# 0x7
	sw	$2,52($fp)
.L66:
	.loc 1 1484 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1488 0
	lw	$2,48($fp)
	bne	$2,$0,.L67
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L68
	nop

.L67:
	lw	$2,48($fp)
.L68:
	sw	$2,20($fp)
	.loc 1 1494 0
	lw	$2,20($fp)
	lw	$2,72($2)
	sw	$2,24($fp)
	.loc 1 1502 0
	lw	$3,24($fp)
	lw	$2,52($fp)
	beq	$3,$2,.L69
	nop

	.loc 1 1506 0
	lw	$3,52($fp)
	lw	$2,24($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L70
	nop

	.loc 1 1508 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,20($fp)
	beq	$3,$2,.L71
	nop

	.loc 1 1513 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,44($2)
	lw	$2,52($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L71
	nop

	.loc 1 1515 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L71
	nop

.L70:
	.loc 1 1529 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,20($fp)
	bne	$3,$2,.L71
	nop

	.loc 1 1534 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L71:
	.loc 1 1546 0
	lw	$2,20($fp)
	lw	$2,44($2)
	sw	$2,28($fp)
	.loc 1 1552 0
	lw	$2,20($fp)
	lw	$3,72($2)
	lw	$2,20($fp)
	lw	$2,44($2)
	bne	$3,$2,.L72
	nop

	.loc 1 1554 0
	lw	$2,20($fp)
	lw	$3,52($fp)
	sw	$3,44($2)
.L72:
	.loc 1 1562 0
	lw	$2,20($fp)
	lw	$3,52($fp)
	sw	$3,72($2)
	.loc 1 1572 0
	lw	$2,20($fp)
	lw	$2,24($2)
	bltz	$2,.L73
	nop

	.loc 1 1574 0
	li	$3,8			# 0x8
	lw	$2,52($fp)
	subu	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,24($2)
.L73:
	.loc 1 1585 0
	lw	$2,20($fp)
	lw	$3,20($2)
	lw	$2,28($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	lui	$4,%hi(pxReadyTasksLists)
	addiu	$4,$4,%lo(pxReadyTasksLists)
	addu	$2,$2,$4
	bne	$3,$2,.L74
	nop

	li	$2,1			# 0x1
	j	.L75
	nop

.L74:
	move	$2,$0
.L75:
	beq	$2,$0,.L76
	nop

	.loc 1 1590 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	bne	$2,$0,.L77
	nop

	.loc 1 1595 0
	lw	$2,28($fp)
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$3,$0,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	and	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
.L77:
	.loc 1 1601 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

.L76:
	.loc 1 1608 0
	lw	$2,16($fp)
	beq	$2,$0,.L69
	nop

.LBB8 = .
	.loc 1 1610 0
	mfc0	$2,$13,0
	sw	$2,32($fp)
	lw	$2,32($fp)
	ori	$2,$2,0x100
	sw	$2,32($fp)
	lw	$2,32($fp)
	mtc0	$2,$13,0
	ehb
.L69:
.LBE8 = .
	.loc 1 1622 0
	jal	vTaskExitCritical
	nop

	.loc 1 1623 0
	move	$sp,$fp
.LCFI39 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskPrioritySet
.LFE13:
	.size	vTaskPrioritySet, .-vTaskPrioritySet
	.align	2
	.globl	vTaskSuspend
.LFB14 = .
	.loc 1 1631 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskSuspend
	.type	vTaskSuspend, @function
vTaskSuspend:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI40 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI41 = .
	move	$fp,$sp
.LCFI42 = .
	sw	$4,32($fp)
	.loc 1 1634 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1638 0
	lw	$2,32($fp)
	bne	$2,$0,.L79
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L80
	nop

.L79:
	lw	$2,32($fp)
.L80:
	sw	$2,16($fp)
	.loc 1 1644 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	bne	$2,$0,.L81
	nop

	.loc 1 1646 0
	lw	$2,16($fp)
	lw	$2,44($2)
	lui	$3,%hi(pxReadyTasksLists)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	lw	$2,0($2)
	bne	$2,$0,.L81
	nop

	lw	$2,16($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$3,$0,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	and	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
.L81:
	.loc 1 1654 0
	lw	$2,16($fp)
	lw	$2,40($2)
	beq	$2,$0,.L83
	nop

	.loc 1 1656 0
	lw	$2,16($fp)
	addiu	$2,$2,24
	move	$4,$2
	jal	uxListRemove
	nop

.L83:
	.loc 1 1663 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	lui	$3,%hi(xSuspendedTaskList)
	addiu	$4,$3,%lo(xSuspendedTaskList)
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 1667 0
	lw	$2,16($fp)
	lbu	$2,84($2)
	andi	$3,$2,0x00ff
	li	$2,1			# 0x1
	bne	$3,$2,.L84
	nop

	.loc 1 1671 0
	lw	$2,16($fp)
	sb	$0,84($2)
.L84:
	.loc 1 1676 0
	jal	vTaskExitCritical
	nop

	.loc 1 1678 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	beq	$2,$0,.L85
	nop

	.loc 1 1682 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1684 0
	jal	prvResetNextTaskUnblockTime
	nop

	.loc 1 1686 0
	jal	vTaskExitCritical
	nop

.L85:
	.loc 1 1693 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,16($fp)
	bne	$3,$2,.L78
	nop

	.loc 1 1695 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	beq	$2,$0,.L87
	nop

	.loc 1 1698 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	beq	$2,$0,.L88
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1698			# 0x6a2
	jal	vAssertCalled
	nop

.L88:
.LBB9 = .
	.loc 1 1699 0
	mfc0	$2,$13,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	ori	$2,$2,0x100
	sw	$2,20($fp)
	lw	$2,20($fp)
	mtc0	$2,$13,0
	ehb
.LBE9 = .
	j	.L78
	nop

.L87:
	.loc 1 1706 0
	lui	$2,%hi(xSuspendedTaskList)
	lw	$3,%lo(xSuspendedTaskList)($2)
	lw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	bne	$3,$2,.L90
	nop

	.loc 1 1712 0
	sw	$0,%gp_rel(pxCurrentTCB)($28)
	j	.L78
	nop

.L90:
	.loc 1 1716 0
	jal	vTaskSwitchContext
	nop

.L78:
	.loc 1 1724 0
	move	$sp,$fp
.LCFI43 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskSuspend
.LFE14:
	.size	vTaskSuspend, .-vTaskSuspend
	.align	2
.LFB15 = .
	.loc 1 1732 0
	.set	nomips16
	.set	nomicromips
	.ent	prvTaskIsTaskSuspended
	.type	prvTaskIsTaskSuspended, @function
prvTaskIsTaskSuspended:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI44 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI45 = .
	move	$fp,$sp
.LCFI46 = .
	sw	$4,32($fp)
	.loc 1 1733 0
	sw	$0,16($fp)
	.loc 1 1734 0
	lw	$2,32($fp)
	sw	$2,20($fp)
	.loc 1 1740 0
	lw	$2,32($fp)
	bne	$2,$0,.L92
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1740			# 0x6cc
	jal	vAssertCalled
	nop

.L92:
	.loc 1 1743 0
	lw	$2,20($fp)
	lw	$3,20($2)
	lui	$2,%hi(xSuspendedTaskList)
	addiu	$2,$2,%lo(xSuspendedTaskList)
	bne	$3,$2,.L93
	nop

	li	$2,1			# 0x1
	j	.L94
	nop

.L93:
	move	$2,$0
.L94:
	beq	$2,$0,.L95
	nop

	.loc 1 1746 0
	lw	$2,20($fp)
	lw	$3,40($2)
	lui	$2,%hi(xPendingReadyList)
	addiu	$2,$2,%lo(xPendingReadyList)
	beq	$3,$2,.L95
	nop

	.loc 1 1750 0
	lw	$2,20($fp)
	lw	$2,40($2)
	bne	$2,$0,.L96
	nop

	li	$2,1			# 0x1
	j	.L97
	nop

.L96:
	move	$2,$0
.L97:
	beq	$2,$0,.L95
	nop

	.loc 1 1752 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L95:
	.loc 1 1769 0
	lw	$2,16($fp)
	.loc 1 1770 0
	move	$sp,$fp
.LCFI47 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvTaskIsTaskSuspended
.LFE15:
	.size	prvTaskIsTaskSuspended, .-prvTaskIsTaskSuspended
	.align	2
	.globl	vTaskResume
.LFB16 = .
	.loc 1 1778 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskResume
	.type	vTaskResume, @function
vTaskResume:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI48 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI49 = .
	move	$fp,$sp
.LCFI50 = .
	sw	$4,32($fp)
	.loc 1 1779 0
	lw	$2,32($fp)
	sw	$2,16($fp)
	.loc 1 1782 0
	lw	$2,32($fp)
	bne	$2,$0,.L100
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1782			# 0x6f6
	jal	vAssertCalled
	nop

.L100:
	.loc 1 1786 0
	lw	$2,16($fp)
	beq	$2,$0,.L99
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,16($fp)
	beq	$3,$2,.L99
	nop

	.loc 1 1788 0
	jal	vTaskEnterCritical
	nop

	.loc 1 1790 0
	lw	$4,16($fp)
	jal	prvTaskIsTaskSuspended
	nop

	beq	$2,$0,.L102
	nop

	.loc 1 1796 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 1797 0
	lw	$2,16($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,16($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 1800 0
	lw	$2,16($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L102
	nop

.LBB10 = .
	.loc 1 1805 0
	mfc0	$2,$13,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	ori	$2,$2,0x100
	sw	$2,20($fp)
	lw	$2,20($fp)
	mtc0	$2,$13,0
	ehb
.L102:
.LBE10 = .
	.loc 1 1817 0
	jal	vTaskExitCritical
	nop

.L99:
	.loc 1 1823 0
	move	$sp,$fp
.LCFI51 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskResume
.LFE16:
	.size	vTaskResume, .-vTaskResume
	.align	2
	.globl	xTaskResumeFromISR
.LFB17 = .
	.loc 1 1832 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskResumeFromISR
	.type	xTaskResumeFromISR, @function
xTaskResumeFromISR:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI52 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI53 = .
	move	$fp,$sp
.LCFI54 = .
	sw	$4,40($fp)
	.loc 1 1833 0
	sw	$0,16($fp)
	.loc 1 1834 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 1837 0
	lw	$2,40($fp)
	bne	$2,$0,.L104
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,1837			# 0x72d
	jal	vAssertCalled
	nop

.L104:
	.loc 1 1857 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,24($fp)
	.loc 1 1859 0
	lw	$4,20($fp)
	jal	prvTaskIsTaskSuspended
	nop

	beq	$2,$0,.L105
	nop

	.loc 1 1864 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L106
	nop

	.loc 1 1868 0
	lw	$2,20($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L107
	nop

	.loc 1 1870 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L107:
	.loc 1 1877 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 1878 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	j	.L105
	nop

.L106:
	.loc 1 1885 0
	lw	$2,20($fp)
	addiu	$2,$2,24
	lui	$3,%hi(xPendingReadyList)
	addiu	$4,$3,%lo(xPendingReadyList)
	move	$5,$2
	jal	vListInsertEnd
	nop

.L105:
	.loc 1 1893 0
	lw	$4,24($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 1895 0
	lw	$2,16($fp)
	.loc 1 1896 0
	move	$sp,$fp
.LCFI55 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskResumeFromISR
.LFE17:
	.size	xTaskResumeFromISR, .-xTaskResumeFromISR
	.section	.rodata,code
	.align	2
.LC1:
	.ascii	"IDLE\000"
	.section	.text,code
	.align	2
	.globl	vTaskStartScheduler
.LFB18 = .
	.loc 1 1902 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskStartScheduler
	.type	vTaskStartScheduler, @function
vTaskStartScheduler:
	.frame	$fp,40,$31		# vars= 8, regs= 2/0, args= 24, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI56 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI57 = .
	move	$fp,$sp
.LCFI58 = .
	.loc 1 1935 0
	sw	$0,16($sp)
	addiu	$2,$28,%gp_rel(xIdleTaskHandle)
	sw	$2,20($sp)
	lui	$2,%hi(prvIdleTask)
	addiu	$4,$2,%lo(prvIdleTask)
	lui	$2,%hi(.LC1)
	addiu	$5,$2,%lo(.LC1)
	li	$6,190			# 0xbe
	move	$7,$0
	jal	xTaskCreate
	nop

	sw	$2,24($fp)
	.loc 1 1946 0
	lw	$3,24($fp)
	li	$2,1			# 0x1
	bne	$3,$2,.L111
	nop

	.loc 1 1948 0
	jal	xTimerCreateTimerTask
	nop

	sw	$2,24($fp)
.L111:
	.loc 1 1957 0
	lw	$3,24($fp)
	li	$2,1			# 0x1
	bne	$3,$2,.L112
	nop

.LBB11 = .
	.loc 1 1973 0
	mfc0	$2,$12,0
	sw	$2,28($fp)
	lw	$3,28($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0xfc00
	and	$2,$3,$2
	srl	$2,$2,10
	sltu	$2,$2,3
	beq	$2,$0,.L113
	nop

	lw	$2,28($fp)
	ins	$2,$0,10,7
	sw	$2,28($fp)
	lw	$2,28($fp)
	ori	$2,$2,0xc00
	mtc0	$2,$12,0
	ehb
.L113:
.LBE11 = .
	.loc 1 1983 0
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,%gp_rel(xNextTaskUnblockTime)($28)
	.loc 1 1984 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xSchedulerRunning)($28)
	.loc 1 1985 0
	sw	$0,%gp_rel(xTickCount)($28)
	.loc 1 1997 0
	jal	xPortStartScheduler
	nop

	j	.L110
	nop

.L112:
	.loc 1 2012 0
	lw	$3,24($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L110
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2012			# 0x7dc
	jal	vAssertCalled
	nop

.L110:
	.loc 1 2018 0
	move	$sp,$fp
.LCFI59 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskStartScheduler
.LFE18:
	.size	vTaskStartScheduler, .-vTaskStartScheduler
	.align	2
	.globl	vTaskEndScheduler
.LFB19 = .
	.loc 1 2022 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskEndScheduler
	.type	vTaskEndScheduler, @function
vTaskEndScheduler:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI60 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI61 = .
	move	$fp,$sp
.LCFI62 = .
.LBB12 = .
	.loc 1 2026 0
	mfc0	$2,$12,0
	sw	$2,16($fp)
	lw	$3,16($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0xfc00
	and	$2,$3,$2
	srl	$2,$2,10
	sltu	$2,$2,3
	beq	$2,$0,.L116
	nop

	lw	$2,16($fp)
	ins	$2,$0,10,7
	sw	$2,16($fp)
	lw	$2,16($fp)
	ori	$2,$2,0xc00
	mtc0	$2,$12,0
	ehb
.L116:
.LBE12 = .
	.loc 1 2027 0
	sw	$0,%gp_rel(xSchedulerRunning)($28)
	.loc 1 2028 0
	jal	vPortEndScheduler
	nop

	.loc 1 2029 0
	move	$sp,$fp
.LCFI63 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskEndScheduler
.LFE19:
	.size	vTaskEndScheduler, .-vTaskEndScheduler
	.align	2
	.globl	vTaskSuspendAll
.LFB20 = .
	.loc 1 2033 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskSuspendAll
	.type	vTaskSuspendAll, @function
vTaskSuspendAll:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI64 = .
	sw	$fp,4($sp)
.LCFI65 = .
	move	$fp,$sp
.LCFI66 = .
	.loc 1 2038 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(uxSchedulerSuspended)($28)
	.loc 1 2039 0
	move	$sp,$fp
.LCFI67 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskSuspendAll
.LFE20:
	.size	vTaskSuspendAll, .-vTaskSuspendAll
	.align	2
	.globl	xTaskResumeAll
.LFB21 = .
	.loc 1 2106 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskResumeAll
	.type	xTaskResumeAll, @function
xTaskResumeAll:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI68 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI69 = .
	move	$fp,$sp
.LCFI70 = .
	.loc 1 2107 0
	sw	$0,16($fp)
	.loc 1 2108 0
	sw	$0,20($fp)
	.loc 1 2112 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L119
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2112			# 0x840
	jal	vAssertCalled
	nop

.L119:
	.loc 1 2119 0
	jal	vTaskEnterCritical
	nop

	.loc 1 2121 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(uxSchedulerSuspended)($28)
	.loc 1 2123 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L120
	nop

	.loc 1 2125 0
	lw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	beq	$2,$0,.L120
	nop

	.loc 1 2129 0
	j	.L121
	nop

.L122:
	.loc 1 2131 0
	lui	$2,%hi(xPendingReadyList)
	addiu	$2,$2,%lo(xPendingReadyList)
	lw	$2,12($2)
	lw	$2,12($2)
	sw	$2,16($fp)
	.loc 1 2132 0
	lw	$2,16($fp)
	addiu	$2,$2,24
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 2133 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 2134 0
	lw	$2,16($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,16($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 2138 0
	lw	$2,16($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L121
	nop

	.loc 1 2140 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
.L121:
	.loc 1 2129 0
	lui	$2,%hi(xPendingReadyList)
	lw	$2,%lo(xPendingReadyList)($2)
	bne	$2,$0,.L122
	nop

	.loc 1 2148 0
	lw	$2,16($fp)
	beq	$2,$0,.L123
	nop

	.loc 1 2156 0
	jal	prvResetNextTaskUnblockTime
	nop

.L123:
.LBB13 = .
	.loc 1 2164 0
	lw	$2,%gp_rel(uxPendedTicks)($28)
	sw	$2,24($fp)
	.loc 1 2166 0
	lw	$2,24($fp)
	beq	$2,$0,.L124
	nop

.L126:
	.loc 1 2170 0
	jal	xTaskIncrementTick
	nop

	beq	$2,$0,.L125
	nop

	.loc 1 2172 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
.L125:
	.loc 1 2178 0
	lw	$2,24($fp)
	addiu	$2,$2,-1
	sw	$2,24($fp)
	.loc 1 2179 0
	lw	$2,24($fp)
	bne	$2,$0,.L126
	nop

	.loc 1 2181 0
	sw	$0,%gp_rel(uxPendedTicks)($28)
.L124:
.LBE13 = .
	.loc 1 2189 0
	lw	$2,%gp_rel(xYieldPending)($28)
	beq	$2,$0,.L120
	nop

	.loc 1 2193 0
	li	$2,1			# 0x1
	sw	$2,20($fp)
.LBB14 = .
	.loc 1 2196 0
	mfc0	$2,$13,0
	sw	$2,28($fp)
	lw	$2,28($fp)
	ori	$2,$2,0x100
	sw	$2,28($fp)
	lw	$2,28($fp)
	mtc0	$2,$13,0
	ehb
.L120:
.LBE14 = .
	.loc 1 2209 0
	jal	vTaskExitCritical
	nop

	.loc 1 2211 0
	lw	$2,20($fp)
	.loc 1 2212 0
	move	$sp,$fp
.LCFI71 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskResumeAll
.LFE21:
	.size	xTaskResumeAll, .-xTaskResumeAll
	.align	2
	.globl	xTaskGetTickCount
.LFB22 = .
	.loc 1 2216 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskGetTickCount
	.type	xTaskGetTickCount, @function
xTaskGetTickCount:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI72 = .
	sw	$fp,12($sp)
.LCFI73 = .
	move	$fp,$sp
.LCFI74 = .
	.loc 1 2222 0
	lw	$2,%gp_rel(xTickCount)($28)
	sw	$2,0($fp)
	.loc 1 2226 0
	lw	$2,0($fp)
	.loc 1 2227 0
	move	$sp,$fp
.LCFI75 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskGetTickCount
.LFE22:
	.size	xTaskGetTickCount, .-xTaskGetTickCount
	.align	2
	.globl	xTaskGetTickCountFromISR
.LFB23 = .
	.loc 1 2231 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskGetTickCountFromISR
	.type	xTaskGetTickCountFromISR, @function
xTaskGetTickCountFromISR:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI76 = .
	sw	$fp,12($sp)
.LCFI77 = .
	move	$fp,$sp
.LCFI78 = .
	.loc 1 2251 0
	sw	$0,0($fp)
	.loc 1 2253 0
	lw	$2,%gp_rel(xTickCount)($28)
	sw	$2,4($fp)
	.loc 1 2257 0
	lw	$2,4($fp)
	.loc 1 2258 0
	move	$sp,$fp
.LCFI79 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskGetTickCountFromISR
.LFE23:
	.size	xTaskGetTickCountFromISR, .-xTaskGetTickCountFromISR
	.align	2
	.globl	uxTaskGetNumberOfTasks
.LFB24 = .
	.loc 1 2262 0
	.set	nomips16
	.set	nomicromips
	.ent	uxTaskGetNumberOfTasks
	.type	uxTaskGetNumberOfTasks, @function
uxTaskGetNumberOfTasks:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI80 = .
	sw	$fp,4($sp)
.LCFI81 = .
	move	$fp,$sp
.LCFI82 = .
	.loc 1 2265 0
	lw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	.loc 1 2266 0
	move	$sp,$fp
.LCFI83 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxTaskGetNumberOfTasks
.LFE24:
	.size	uxTaskGetNumberOfTasks, .-uxTaskGetNumberOfTasks
	.align	2
	.globl	pcTaskGetName
.LFB25 = .
	.loc 1 2270 0
	.set	nomips16
	.set	nomicromips
	.ent	pcTaskGetName
	.type	pcTaskGetName, @function
pcTaskGetName:
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
	.loc 1 2275 0
	lw	$2,32($fp)
	bne	$2,$0,.L135
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L136
	nop

.L135:
	lw	$2,32($fp)
.L136:
	sw	$2,16($fp)
	.loc 1 2276 0
	lw	$2,16($fp)
	bne	$2,$0,.L137
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2276			# 0x8e4
	jal	vAssertCalled
	nop

.L137:
	.loc 1 2277 0
	lw	$2,16($fp)
	addiu	$2,$2,52
	.loc 1 2278 0
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
	.end	pcTaskGetName
.LFE25:
	.size	pcTaskGetName, .-pcTaskGetName
	.align	2
	.globl	xTaskIncrementTick
.LFB26 = .
	.loc 1 2590 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskIncrementTick
	.type	xTaskIncrementTick, @function
xTaskIncrementTick:
	.frame	$fp,48,$31		# vars= 24, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-48
.LCFI88 = .
	sw	$31,44($sp)
	sw	$fp,40($sp)
.LCFI89 = .
	move	$fp,$sp
.LCFI90 = .
	.loc 1 2593 0
	sw	$0,16($fp)
	.loc 1 2599 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L140
	nop

.LBB15 = .
	.loc 1 2603 0
	lw	$2,%gp_rel(xTickCount)($28)
	addiu	$2,$2,1
	sw	$2,20($fp)
	.loc 1 2607 0
	lw	$2,20($fp)
	sw	$2,%gp_rel(xTickCount)($28)
	.loc 1 2609 0
	lw	$2,20($fp)
	bne	$2,$0,.L141
	nop

.LBB16 = .
	.loc 1 2611 0
	lw	$2,%gp_rel(pxDelayedTaskList)($28)
	lw	$2,0($2)
	beq	$2,$0,.L142
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2611			# 0xa33
	jal	vAssertCalled
	nop

.L142:
	lw	$2,%gp_rel(pxDelayedTaskList)($28)
	sw	$2,24($fp)
	lw	$2,%gp_rel(pxOverflowDelayedTaskList)($28)
	sw	$2,%gp_rel(pxDelayedTaskList)($28)
	lw	$2,24($fp)
	sw	$2,%gp_rel(pxOverflowDelayedTaskList)($28)
	lw	$2,%gp_rel(xNumOfOverflows)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(xNumOfOverflows)($28)
	jal	prvResetNextTaskUnblockTime
	nop

.L141:
.LBE16 = .
	.loc 1 2622 0
	lw	$2,%gp_rel(xNextTaskUnblockTime)($28)
	lw	$3,20($fp)
	sltu	$2,$3,$2
	bne	$2,$0,.L143
	nop

.L150:
	.loc 1 2626 0
	lw	$2,%gp_rel(pxDelayedTaskList)($28)
	lw	$2,0($2)
	bne	$2,$0,.L144
	nop

	li	$2,1			# 0x1
	j	.L145
	nop

.L144:
	move	$2,$0
.L145:
	beq	$2,$0,.L146
	nop

	.loc 1 2633 0
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,%gp_rel(xNextTaskUnblockTime)($28)
	.loc 1 2634 0
	j	.L143
	nop

.L146:
	.loc 1 2642 0
	lw	$2,%gp_rel(pxDelayedTaskList)($28)
	lw	$2,12($2)
	lw	$2,12($2)
	sw	$2,28($fp)
	.loc 1 2643 0
	lw	$2,28($fp)
	lw	$2,4($2)
	sw	$2,32($fp)
	.loc 1 2645 0
	lw	$3,20($fp)
	lw	$2,32($fp)
	sltu	$2,$3,$2
	beq	$2,$0,.L147
	nop

	.loc 1 2652 0
	lw	$2,32($fp)
	sw	$2,%gp_rel(xNextTaskUnblockTime)($28)
	.loc 1 2653 0
	j	.L143
	nop

.L147:
	.loc 1 2661 0
	lw	$2,28($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 2665 0
	lw	$2,28($fp)
	lw	$2,40($2)
	beq	$2,$0,.L148
	nop

	.loc 1 2667 0
	lw	$2,28($fp)
	addiu	$2,$2,24
	move	$4,$2
	jal	uxListRemove
	nop

.L148:
	.loc 1 2676 0
	lw	$2,28($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,28($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,28($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 2686 0
	lw	$2,28($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$3,$2
	bne	$2,$0,.L149
	nop

	.loc 1 2688 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L149:
	.loc 1 2697 0
	j	.L150
	nop

.L143:
	.loc 1 2705 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	lui	$3,%hi(pxReadyTasksLists)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	lw	$2,0($2)
	sltu	$2,$2,2
	bne	$2,$0,.L151
	nop

	.loc 1 2707 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L151:
	.loc 1 2720 0
	lw	$2,%gp_rel(uxPendedTicks)($28)
	bne	$2,$0,.L152
	nop

	.loc 1 2722 0
	jal	vApplicationTickHook
	nop

.L152:
.LBE15 = .
	j	.L153
	nop

.L140:
	.loc 1 2733 0
	lw	$2,%gp_rel(uxPendedTicks)($28)
	addiu	$2,$2,1
	sw	$2,%gp_rel(uxPendedTicks)($28)
	.loc 1 2739 0
	jal	vApplicationTickHook
	nop

.L153:
	.loc 1 2746 0
	lw	$2,%gp_rel(xYieldPending)($28)
	beq	$2,$0,.L154
	nop

	.loc 1 2748 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L154:
	.loc 1 2757 0
	lw	$2,16($fp)
	.loc 1 2758 0
	move	$sp,$fp
.LCFI91 = .
	lw	$31,44($sp)
	lw	$fp,40($sp)
	addiu	$sp,$sp,48
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskIncrementTick
.LFE26:
	.size	xTaskIncrementTick, .-xTaskIncrementTick
	.align	2
	.globl	vTaskSwitchContext
.LFB27 = .
	.loc 1 2852 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskSwitchContext
	.type	vTaskSwitchContext, @function
vTaskSwitchContext:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI92 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI93 = .
	move	$fp,$sp
.LCFI94 = .
	.loc 1 2853 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	beq	$2,$0,.L157
	nop

	.loc 1 2857 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
	j	.L156
	nop

.L157:
	.loc 1 2861 0
	sw	$0,%gp_rel(xYieldPending)($28)
.LBB17 = .
	.loc 1 2892 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,48($2)
	sw	$2,16($fp)
	li	$2,-1515913216			# 0xffffffffa5a50000
	ori	$2,$2,0xa5a5
	sw	$2,20($fp)
	lw	$2,16($fp)
	lw	$3,0($2)
	lw	$2,20($fp)
	bne	$3,$2,.L159
	nop

	lw	$2,16($fp)
	addiu	$2,$2,4
	lw	$3,0($2)
	lw	$2,20($fp)
	bne	$3,$2,.L159
	nop

	lw	$2,16($fp)
	addiu	$2,$2,8
	lw	$3,0($2)
	lw	$2,20($fp)
	bne	$3,$2,.L159
	nop

	lw	$2,16($fp)
	addiu	$2,$2,12
	lw	$3,0($2)
	lw	$2,20($fp)
	beq	$3,$2,.L160
	nop

.L159:
	lw	$3,%gp_rel(pxCurrentTCB)($28)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,52
	move	$4,$3
	move	$5,$2
	jal	vApplicationStackOverflowHook
	nop

.L160:
.LBE17 = .
.LBB18 = .
	.loc 1 2896 0
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	clz	$2,$2
	li	$3,31			# 0x1f
	subu	$2,$3,$2
	sw	$2,24($fp)
	lui	$3,%hi(pxReadyTasksLists)
	lw	$2,24($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	lw	$2,0($2)
	bne	$2,$0,.L161
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2896			# 0xb50
	jal	vAssertCalled
	nop

.L161:
.LBB19 = .
	lw	$2,24($fp)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	sw	$2,28($fp)
	lw	$2,28($fp)
	lw	$2,4($2)
	lw	$3,4($2)
	lw	$2,28($fp)
	sw	$3,4($2)
	lw	$2,28($fp)
	lw	$3,4($2)
	lw	$2,28($fp)
	addiu	$2,$2,8
	bne	$3,$2,.L162
	nop

	lw	$2,28($fp)
	lw	$2,4($2)
	lw	$3,4($2)
	lw	$2,28($fp)
	sw	$3,4($2)
.L162:
	lw	$2,28($fp)
	lw	$2,4($2)
	lw	$2,12($2)
	sw	$2,%gp_rel(pxCurrentTCB)($28)
.L156:
.LBE19 = .
.LBE18 = .
	.loc 1 2907 0
	move	$sp,$fp
.LCFI95 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskSwitchContext
.LFE27:
	.size	vTaskSwitchContext, .-vTaskSwitchContext
	.align	2
	.globl	vTaskPlaceOnEventList
.LFB28 = .
	.loc 1 2911 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskPlaceOnEventList
	.type	vTaskPlaceOnEventList, @function
vTaskPlaceOnEventList:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI96 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI97 = .
	move	$fp,$sp
.LCFI98 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	.loc 1 2912 0
	lw	$2,24($fp)
	bne	$2,$0,.L164
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2912			# 0xb60
	jal	vAssertCalled
	nop

.L164:
	.loc 1 2921 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,24
	lw	$4,24($fp)
	move	$5,$2
	jal	vListInsert
	nop

	.loc 1 2923 0
	lw	$4,28($fp)
	li	$5,1			# 0x1
	jal	prvAddCurrentTaskToDelayedList
	nop

	.loc 1 2924 0
	move	$sp,$fp
.LCFI99 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskPlaceOnEventList
.LFE28:
	.size	vTaskPlaceOnEventList, .-vTaskPlaceOnEventList
	.align	2
	.globl	vTaskPlaceOnUnorderedEventList
.LFB29 = .
	.loc 1 2928 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskPlaceOnUnorderedEventList
	.type	vTaskPlaceOnUnorderedEventList, @function
vTaskPlaceOnUnorderedEventList:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI100 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI101 = .
	move	$fp,$sp
.LCFI102 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	.loc 1 2929 0
	lw	$2,24($fp)
	bne	$2,$0,.L166
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2929			# 0xb71
	jal	vAssertCalled
	nop

.L166:
	.loc 1 2933 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L167
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2933			# 0xb75
	jal	vAssertCalled
	nop

.L167:
	.loc 1 2938 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$4,28($fp)
	li	$3,-2147483648			# 0xffffffff80000000
	or	$3,$4,$3
	sw	$3,24($2)
	.loc 1 2945 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,24
	lw	$4,24($fp)
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 2947 0
	lw	$4,32($fp)
	li	$5,1			# 0x1
	jal	prvAddCurrentTaskToDelayedList
	nop

	.loc 1 2948 0
	move	$sp,$fp
.LCFI103 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskPlaceOnUnorderedEventList
.LFE29:
	.size	vTaskPlaceOnUnorderedEventList, .-vTaskPlaceOnUnorderedEventList
	.align	2
	.globl	vTaskPlaceOnEventListRestricted
.LFB30 = .
	.loc 1 2954 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskPlaceOnEventListRestricted
	.type	vTaskPlaceOnEventListRestricted, @function
vTaskPlaceOnEventListRestricted:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI104 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI105 = .
	move	$fp,$sp
.LCFI106 = .
	sw	$4,24($fp)
	sw	$5,28($fp)
	sw	$6,32($fp)
	.loc 1 2955 0
	lw	$2,24($fp)
	bne	$2,$0,.L169
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,2955			# 0xb8b
	jal	vAssertCalled
	nop

.L169:
	.loc 1 2967 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,24
	lw	$4,24($fp)
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 2972 0
	lw	$2,32($fp)
	beq	$2,$0,.L170
	nop

	.loc 1 2974 0
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,28($fp)
.L170:
	.loc 1 2978 0
	lw	$4,28($fp)
	lw	$5,32($fp)
	jal	prvAddCurrentTaskToDelayedList
	nop

	.loc 1 2979 0
	move	$sp,$fp
.LCFI107 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskPlaceOnEventListRestricted
.LFE30:
	.size	vTaskPlaceOnEventListRestricted, .-vTaskPlaceOnEventListRestricted
	.align	2
	.globl	xTaskRemoveFromEventList
.LFB31 = .
	.loc 1 2985 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskRemoveFromEventList
	.type	xTaskRemoveFromEventList, @function
xTaskRemoveFromEventList:
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
	.loc 1 3002 0
	lw	$2,32($fp)
	lw	$2,12($2)
	lw	$2,12($2)
	sw	$2,20($fp)
	.loc 1 3003 0
	lw	$2,20($fp)
	bne	$2,$0,.L172
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3003			# 0xbbb
	jal	vAssertCalled
	nop

.L172:
	.loc 1 3004 0
	lw	$2,20($fp)
	addiu	$2,$2,24
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 3006 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L173
	nop

	.loc 1 3008 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 3009 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	j	.L174
	nop

.L173:
	.loc 1 3015 0
	lw	$2,20($fp)
	addiu	$2,$2,24
	lui	$3,%hi(xPendingReadyList)
	addiu	$4,$3,%lo(xPendingReadyList)
	move	$5,$2
	jal	vListInsertEnd
	nop

.L174:
	.loc 1 3018 0
	lw	$2,20($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$2,$3
	beq	$2,$0,.L175
	nop

	.loc 1 3023 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	.loc 1 3027 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
	j	.L176
	nop

.L175:
	.loc 1 3031 0
	sw	$0,16($fp)
.L176:
	.loc 1 3048 0
	lw	$2,16($fp)
	.loc 1 3049 0
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
	.end	xTaskRemoveFromEventList
.LFE31:
	.size	xTaskRemoveFromEventList, .-xTaskRemoveFromEventList
	.align	2
	.globl	vTaskRemoveFromUnorderedEventList
.LFB32 = .
	.loc 1 3053 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskRemoveFromUnorderedEventList
	.type	vTaskRemoveFromUnorderedEventList, @function
vTaskRemoveFromUnorderedEventList:
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
	.loc 1 3058 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L179
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3058			# 0xbf2
	jal	vAssertCalled
	nop

.L179:
	.loc 1 3061 0
	lw	$3,36($fp)
	li	$2,-2147483648			# 0xffffffff80000000
	or	$3,$3,$2
	lw	$2,32($fp)
	sw	$3,0($2)
	.loc 1 3065 0
	lw	$2,32($fp)
	lw	$2,12($2)
	sw	$2,16($fp)
	.loc 1 3066 0
	lw	$2,16($fp)
	bne	$2,$0,.L180
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3066			# 0xbfa
	jal	vAssertCalled
	nop

.L180:
	.loc 1 3067 0
	lw	$4,32($fp)
	jal	uxListRemove
	nop

	.loc 1 3072 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 3073 0
	lw	$2,16($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,16($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 3075 0
	lw	$2,16($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$2,$3
	beq	$2,$0,.L178
	nop

	.loc 1 3081 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
.L178:
	.loc 1 3083 0
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
	.end	vTaskRemoveFromUnorderedEventList
.LFE32:
	.size	vTaskRemoveFromUnorderedEventList, .-vTaskRemoveFromUnorderedEventList
	.align	2
	.globl	vTaskSetTimeOutState
.LFB33 = .
	.loc 1 3087 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskSetTimeOutState
	.type	vTaskSetTimeOutState, @function
vTaskSetTimeOutState:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI116 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI117 = .
	move	$fp,$sp
.LCFI118 = .
	sw	$4,24($fp)
	.loc 1 3088 0
	lw	$2,24($fp)
	bne	$2,$0,.L183
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3088			# 0xc10
	jal	vAssertCalled
	nop

.L183:
	.loc 1 3089 0
	jal	vTaskEnterCritical
	nop

	.loc 1 3091 0
	lw	$3,%gp_rel(xNumOfOverflows)($28)
	lw	$2,24($fp)
	sw	$3,0($2)
	.loc 1 3092 0
	lw	$3,%gp_rel(xTickCount)($28)
	lw	$2,24($fp)
	sw	$3,4($2)
	.loc 1 3094 0
	jal	vTaskExitCritical
	nop

	.loc 1 3095 0
	move	$sp,$fp
.LCFI119 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskSetTimeOutState
.LFE33:
	.size	vTaskSetTimeOutState, .-vTaskSetTimeOutState
	.align	2
	.globl	vTaskInternalSetTimeOutState
.LFB34 = .
	.loc 1 3099 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskInternalSetTimeOutState
	.type	vTaskInternalSetTimeOutState, @function
vTaskInternalSetTimeOutState:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI120 = .
	sw	$fp,4($sp)
.LCFI121 = .
	move	$fp,$sp
.LCFI122 = .
	sw	$4,8($fp)
	.loc 1 3101 0
	lw	$3,%gp_rel(xNumOfOverflows)($28)
	lw	$2,8($fp)
	sw	$3,0($2)
	.loc 1 3102 0
	lw	$3,%gp_rel(xTickCount)($28)
	lw	$2,8($fp)
	sw	$3,4($2)
	.loc 1 3103 0
	move	$sp,$fp
.LCFI123 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskInternalSetTimeOutState
.LFE34:
	.size	vTaskInternalSetTimeOutState, .-vTaskInternalSetTimeOutState
	.align	2
	.globl	xTaskCheckForTimeOut
.LFB35 = .
	.loc 1 3107 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskCheckForTimeOut
	.type	xTaskCheckForTimeOut, @function
xTaskCheckForTimeOut:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI124 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI125 = .
	move	$fp,$sp
.LCFI126 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 3110 0
	lw	$2,40($fp)
	bne	$2,$0,.L186
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3110			# 0xc26
	jal	vAssertCalled
	nop

.L186:
	.loc 1 3111 0
	lw	$2,44($fp)
	bne	$2,$0,.L187
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3111			# 0xc27
	jal	vAssertCalled
	nop

.L187:
	.loc 1 3113 0
	jal	vTaskEnterCritical
	nop

.LBB20 = .
	.loc 1 3116 0
	lw	$2,%gp_rel(xTickCount)($28)
	sw	$2,20($fp)
	.loc 1 3117 0
	lw	$2,40($fp)
	lw	$2,4($2)
	lw	$3,20($fp)
	subu	$2,$3,$2
	sw	$2,24($fp)
	.loc 1 3131 0
	lw	$2,44($fp)
	lw	$3,0($2)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L188
	nop

	.loc 1 3136 0
	sw	$0,16($fp)
	j	.L189
	nop

.L188:
	.loc 1 3141 0
	lw	$2,40($fp)
	lw	$3,0($2)
	lw	$2,%gp_rel(xNumOfOverflows)($28)
	beq	$3,$2,.L190
	nop

	lw	$2,40($fp)
	lw	$3,4($2)
	lw	$2,20($fp)
	sltu	$2,$2,$3
	bne	$2,$0,.L190
	nop

	.loc 1 3148 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L189
	nop

.L190:
	.loc 1 3150 0
	lw	$2,44($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	sltu	$2,$2,$3
	beq	$2,$0,.L191
	nop

	.loc 1 3153 0
	lw	$2,44($fp)
	lw	$3,0($2)
	lw	$2,24($fp)
	subu	$3,$3,$2
	lw	$2,44($fp)
	sw	$3,0($2)
	.loc 1 3154 0
	lw	$4,40($fp)
	jal	vTaskInternalSetTimeOutState
	nop

	.loc 1 3155 0
	sw	$0,16($fp)
	j	.L189
	nop

.L191:
	.loc 1 3159 0
	lw	$2,44($fp)
	sw	$0,0($2)
	.loc 1 3160 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L189:
.LBE20 = .
	.loc 1 3163 0
	jal	vTaskExitCritical
	nop

	.loc 1 3165 0
	lw	$2,16($fp)
	.loc 1 3166 0
	move	$sp,$fp
.LCFI127 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskCheckForTimeOut
.LFE35:
	.size	xTaskCheckForTimeOut, .-xTaskCheckForTimeOut
	.align	2
	.globl	vTaskMissedYield
.LFB36 = .
	.loc 1 3170 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskMissedYield
	.type	vTaskMissedYield, @function
vTaskMissedYield:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI128 = .
	sw	$fp,4($sp)
.LCFI129 = .
	move	$fp,$sp
.LCFI130 = .
	.loc 1 3171 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
	.loc 1 3172 0
	move	$sp,$fp
.LCFI131 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskMissedYield
.LFE36:
	.size	vTaskMissedYield, .-vTaskMissedYield
	.align	2
.LFB37 = .
	.loc 1 3225 0
	.set	nomips16
	.set	nomicromips
	.ent	prvIdleTask
	.type	prvIdleTask, @function
prvIdleTask:
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
.L196:
	.loc 1 3241 0
	jal	prvCheckTasksWaitingTermination
	nop

	.loc 1 3264 0
	lui	$2,%hi(pxReadyTasksLists)
	lw	$2,%lo(pxReadyTasksLists)($2)
	sltu	$2,$2,2
	bne	$2,$0,.L195
	nop

.LBB21 = .
	.loc 1 3266 0
	mfc0	$2,$13,0
	sw	$2,16($fp)
	lw	$2,16($fp)
	ori	$2,$2,0x100
	sw	$2,16($fp)
	lw	$2,16($fp)
	mtc0	$2,$13,0
	ehb
.L195:
.LBE21 = .
	.loc 1 3337 0
	j	.L196
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvIdleTask
.LFE37:
	.size	prvIdleTask, .-prvIdleTask
	.align	2
.LFB38 = .
	.loc 1 3437 0
	.set	nomips16
	.set	nomicromips
	.ent	prvInitialiseTaskLists
	.type	prvInitialiseTaskLists, @function
prvInitialiseTaskLists:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI135 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI136 = .
	move	$fp,$sp
.LCFI137 = .
	.loc 1 3440 0
	sw	$0,16($fp)
	j	.L198
	nop

.L199:
	.loc 1 3442 0
	lw	$2,16($fp)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	move	$4,$2
	jal	vListInitialise
	nop

	.loc 1 3440 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
.L198:
	lw	$2,16($fp)
	sltu	$2,$2,8
	bne	$2,$0,.L199
	nop

	.loc 1 3445 0
	lui	$2,%hi(xDelayedTaskList1)
	addiu	$4,$2,%lo(xDelayedTaskList1)
	jal	vListInitialise
	nop

	.loc 1 3446 0
	lui	$2,%hi(xDelayedTaskList2)
	addiu	$4,$2,%lo(xDelayedTaskList2)
	jal	vListInitialise
	nop

	.loc 1 3447 0
	lui	$2,%hi(xPendingReadyList)
	addiu	$4,$2,%lo(xPendingReadyList)
	jal	vListInitialise
	nop

	.loc 1 3451 0
	lui	$2,%hi(xTasksWaitingTermination)
	addiu	$4,$2,%lo(xTasksWaitingTermination)
	jal	vListInitialise
	nop

	.loc 1 3457 0
	lui	$2,%hi(xSuspendedTaskList)
	addiu	$4,$2,%lo(xSuspendedTaskList)
	jal	vListInitialise
	nop

	.loc 1 3463 0
	lui	$2,%hi(xDelayedTaskList1)
	addiu	$2,$2,%lo(xDelayedTaskList1)
	sw	$2,%gp_rel(pxDelayedTaskList)($28)
	.loc 1 3464 0
	lui	$2,%hi(xDelayedTaskList2)
	addiu	$2,$2,%lo(xDelayedTaskList2)
	sw	$2,%gp_rel(pxOverflowDelayedTaskList)($28)
	.loc 1 3465 0
	move	$sp,$fp
.LCFI138 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvInitialiseTaskLists
.LFE38:
	.size	prvInitialiseTaskLists, .-prvInitialiseTaskLists
	.align	2
.LFB39 = .
	.loc 1 3469 0
	.set	nomips16
	.set	nomicromips
	.ent	prvCheckTasksWaitingTermination
	.type	prvCheckTasksWaitingTermination, @function
prvCheckTasksWaitingTermination:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI139 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI140 = .
	move	$fp,$sp
.LCFI141 = .
.LBB22 = .
	.loc 1 3479 0
	j	.L201
	nop

.L202:
	.loc 1 3481 0
	jal	vTaskEnterCritical
	nop

	.loc 1 3483 0
	lui	$2,%hi(xTasksWaitingTermination)
	addiu	$2,$2,%lo(xTasksWaitingTermination)
	lw	$2,12($2)
	lw	$2,12($2)
	sw	$2,16($fp)
	.loc 1 3484 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 3485 0
	lw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(uxCurrentNumberOfTasks)($28)
	.loc 1 3486 0
	lw	$2,%gp_rel(uxDeletedTasksWaitingCleanUp)($28)
	addiu	$2,$2,-1
	sw	$2,%gp_rel(uxDeletedTasksWaitingCleanUp)($28)
	.loc 1 3488 0
	jal	vTaskExitCritical
	nop

	.loc 1 3490 0
	lw	$4,16($fp)
	jal	prvDeleteTCB
	nop

.L201:
	.loc 1 3479 0
	lw	$2,%gp_rel(uxDeletedTasksWaitingCleanUp)($28)
	bne	$2,$0,.L202
	nop

.LBE22 = .
	.loc 1 3494 0
	move	$sp,$fp
.LCFI142 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvCheckTasksWaitingTermination
.LFE39:
	.size	prvCheckTasksWaitingTermination, .-prvCheckTasksWaitingTermination
	.align	2
.LFB40 = .
	.loc 1 3629 0
	.set	nomips16
	.set	nomicromips
	.ent	prvTaskCheckFreeStackSpace
	.type	prvTaskCheckFreeStackSpace, @function
prvTaskCheckFreeStackSpace:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI143 = .
	sw	$fp,12($sp)
.LCFI144 = .
	move	$fp,$sp
.LCFI145 = .
	sw	$4,16($fp)
	.loc 1 3630 0
	sw	$0,0($fp)
	.loc 1 3632 0
	j	.L204
	nop

.L205:
	.loc 1 3634 0
	lw	$2,16($fp)
	addiu	$2,$2,1
	sw	$2,16($fp)
	.loc 1 3635 0
	lw	$2,0($fp)
	addiu	$2,$2,1
	sw	$2,0($fp)
.L204:
	.loc 1 3632 0
	lw	$2,16($fp)
	lbu	$3,0($2)
	li	$2,165			# 0xa5
	beq	$3,$2,.L205
	nop

	.loc 1 3638 0
	lw	$2,0($fp)
	srl	$2,$2,2
	sw	$2,0($fp)
	.loc 1 3640 0
	lw	$2,0($fp)
	andi	$2,$2,0xffff
	.loc 1 3641 0
	move	$sp,$fp
.LCFI146 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvTaskCheckFreeStackSpace
.LFE40:
	.size	prvTaskCheckFreeStackSpace, .-prvTaskCheckFreeStackSpace
	.align	2
	.globl	uxTaskGetStackHighWaterMark
.LFB41 = .
	.loc 1 3649 0
	.set	nomips16
	.set	nomicromips
	.ent	uxTaskGetStackHighWaterMark
	.type	uxTaskGetStackHighWaterMark, @function
uxTaskGetStackHighWaterMark:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI147 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI148 = .
	move	$fp,$sp
.LCFI149 = .
	sw	$4,40($fp)
	.loc 1 3654 0
	lw	$2,40($fp)
	bne	$2,$0,.L208
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L209
	nop

.L208:
	lw	$2,40($fp)
.L209:
	sw	$2,16($fp)
	.loc 1 3658 0
	lw	$2,16($fp)
	lw	$2,48($2)
	sw	$2,20($fp)
	.loc 1 3666 0
	lw	$4,20($fp)
	jal	prvTaskCheckFreeStackSpace
	nop

	sw	$2,24($fp)
	.loc 1 3668 0
	lw	$2,24($fp)
	.loc 1 3669 0
	move	$sp,$fp
.LCFI150 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxTaskGetStackHighWaterMark
.LFE41:
	.size	uxTaskGetStackHighWaterMark, .-uxTaskGetStackHighWaterMark
	.align	2
.LFB42 = .
	.loc 1 3677 0
	.set	nomips16
	.set	nomicromips
	.ent	prvDeleteTCB
	.type	prvDeleteTCB, @function
prvDeleteTCB:
	.frame	$fp,24,$31		# vars= 0, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-24
.LCFI151 = .
	sw	$31,20($sp)
	sw	$fp,16($sp)
.LCFI152 = .
	move	$fp,$sp
.LCFI153 = .
	sw	$4,24($fp)
	.loc 1 3695 0
	lw	$2,24($fp)
	lw	$2,48($2)
	move	$4,$2
	jal	vPortFree
	nop

	.loc 1 3696 0
	lw	$4,24($fp)
	jal	vPortFree
	nop

	.loc 1 3725 0
	move	$sp,$fp
.LCFI154 = .
	lw	$31,20($sp)
	lw	$fp,16($sp)
	addiu	$sp,$sp,24
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvDeleteTCB
.LFE42:
	.size	prvDeleteTCB, .-prvDeleteTCB
	.align	2
.LFB43 = .
	.loc 1 3731 0
	.set	nomips16
	.set	nomicromips
	.ent	prvResetNextTaskUnblockTime
	.type	prvResetNextTaskUnblockTime, @function
prvResetNextTaskUnblockTime:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI155 = .
	sw	$fp,12($sp)
.LCFI156 = .
	move	$fp,$sp
.LCFI157 = .
	.loc 1 3734 0
	lw	$2,%gp_rel(pxDelayedTaskList)($28)
	lw	$2,0($2)
	bne	$2,$0,.L213
	nop

	li	$2,1			# 0x1
	j	.L214
	nop

.L213:
	move	$2,$0
.L214:
	beq	$2,$0,.L215
	nop

	.loc 1 3740 0
	li	$2,-1			# 0xffffffffffffffff
	sw	$2,%gp_rel(xNextTaskUnblockTime)($28)
	j	.L212
	nop

.L215:
	.loc 1 3748 0
	lw	$2,%gp_rel(pxDelayedTaskList)($28)
	lw	$2,12($2)
	lw	$2,12($2)
	sw	$2,0($fp)
	.loc 1 3749 0
	lw	$2,0($fp)
	lw	$2,4($2)
	sw	$2,%gp_rel(xNextTaskUnblockTime)($28)
.L212:
	.loc 1 3751 0
	move	$sp,$fp
.LCFI158 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvResetNextTaskUnblockTime
.LFE43:
	.size	prvResetNextTaskUnblockTime, .-prvResetNextTaskUnblockTime
	.align	2
	.globl	xTaskGetCurrentTaskHandle
.LFB44 = .
	.loc 1 3757 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskGetCurrentTaskHandle
	.type	xTaskGetCurrentTaskHandle, @function
xTaskGetCurrentTaskHandle:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI159 = .
	sw	$fp,12($sp)
.LCFI160 = .
	move	$fp,$sp
.LCFI161 = .
	.loc 1 3763 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	sw	$2,0($fp)
	.loc 1 3765 0
	lw	$2,0($fp)
	.loc 1 3766 0
	move	$sp,$fp
.LCFI162 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskGetCurrentTaskHandle
.LFE44:
	.size	xTaskGetCurrentTaskHandle, .-xTaskGetCurrentTaskHandle
	.align	2
	.globl	xTaskGetSchedulerState
.LFB45 = .
	.loc 1 3774 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskGetSchedulerState
	.type	xTaskGetSchedulerState, @function
xTaskGetSchedulerState:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI163 = .
	sw	$fp,12($sp)
.LCFI164 = .
	move	$fp,$sp
.LCFI165 = .
	.loc 1 3777 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	bne	$2,$0,.L220
	nop

	.loc 1 3779 0
	li	$2,1			# 0x1
	sw	$2,0($fp)
	j	.L221
	nop

.L220:
	.loc 1 3783 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L222
	nop

	.loc 1 3785 0
	li	$2,2			# 0x2
	sw	$2,0($fp)
	j	.L221
	nop

.L222:
	.loc 1 3789 0
	sw	$0,0($fp)
.L221:
	.loc 1 3793 0
	lw	$2,0($fp)
	.loc 1 3794 0
	move	$sp,$fp
.LCFI166 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskGetSchedulerState
.LFE45:
	.size	xTaskGetSchedulerState, .-xTaskGetSchedulerState
	.align	2
	.globl	xTaskPriorityInherit
.LFB46 = .
	.loc 1 3802 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskPriorityInherit
	.type	xTaskPriorityInherit, @function
xTaskPriorityInherit:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI167 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI168 = .
	move	$fp,$sp
.LCFI169 = .
	sw	$4,32($fp)
	.loc 1 3803 0
	lw	$2,32($fp)
	sw	$2,20($fp)
	.loc 1 3804 0
	sw	$0,16($fp)
	.loc 1 3809 0
	lw	$2,32($fp)
	beq	$2,$0,.L225
	nop

	.loc 1 3814 0
	lw	$2,20($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$3,$2
	beq	$2,$0,.L226
	nop

	.loc 1 3819 0
	lw	$2,20($fp)
	lw	$2,24($2)
	bltz	$2,.L227
	nop

	.loc 1 3821 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	li	$3,8			# 0x8
	subu	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,24($2)
.L227:
	.loc 1 3830 0
	lw	$2,20($fp)
	lw	$3,20($2)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	lui	$4,%hi(pxReadyTasksLists)
	addiu	$4,$4,%lo(pxReadyTasksLists)
	addu	$2,$2,$4
	bne	$3,$2,.L228
	nop

	li	$2,1			# 0x1
	j	.L229
	nop

.L228:
	move	$2,$0
.L229:
	beq	$2,$0,.L230
	nop

	.loc 1 3832 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	bne	$2,$0,.L231
	nop

	.loc 1 3834 0
	lw	$2,20($fp)
	lw	$2,44($2)
	lui	$3,%hi(pxReadyTasksLists)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	lw	$2,0($2)
	bne	$2,$0,.L231
	nop

	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$3,$0,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	and	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
.L231:
	.loc 1 3842 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,44($2)
	lw	$2,20($fp)
	sw	$3,44($2)
	.loc 1 3843 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	j	.L233
	nop

.L230:
	.loc 1 3848 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,44($2)
	lw	$2,20($fp)
	sw	$3,44($2)
.L233:
	.loc 1 3854 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L225
	nop

.L226:
	.loc 1 3858 0
	lw	$2,20($fp)
	lw	$3,72($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$3,$2
	beq	$2,$0,.L225
	nop

	.loc 1 3867 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L225:
	.loc 1 3880 0
	lw	$2,16($fp)
	.loc 1 3881 0
	move	$sp,$fp
.LCFI170 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskPriorityInherit
.LFE46:
	.size	xTaskPriorityInherit, .-xTaskPriorityInherit
	.align	2
	.globl	xTaskPriorityDisinherit
.LFB47 = .
	.loc 1 3889 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskPriorityDisinherit
	.type	xTaskPriorityDisinherit, @function
xTaskPriorityDisinherit:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI171 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI172 = .
	move	$fp,$sp
.LCFI173 = .
	sw	$4,32($fp)
	.loc 1 3890 0
	lw	$2,32($fp)
	sw	$2,20($fp)
	.loc 1 3891 0
	sw	$0,16($fp)
	.loc 1 3893 0
	lw	$2,32($fp)
	beq	$2,$0,.L236
	nop

	.loc 1 3899 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,20($fp)
	beq	$3,$2,.L237
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3899			# 0xf3b
	jal	vAssertCalled
	nop

.L237:
	.loc 1 3900 0
	lw	$2,20($fp)
	lw	$2,76($2)
	bne	$2,$0,.L238
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3900			# 0xf3c
	jal	vAssertCalled
	nop

.L238:
	.loc 1 3901 0
	lw	$2,20($fp)
	lw	$2,76($2)
	addiu	$3,$2,-1
	lw	$2,20($fp)
	sw	$3,76($2)
	.loc 1 3905 0
	lw	$2,20($fp)
	lw	$3,44($2)
	lw	$2,20($fp)
	lw	$2,72($2)
	beq	$3,$2,.L236
	nop

	.loc 1 3908 0
	lw	$2,20($fp)
	lw	$2,76($2)
	bne	$2,$0,.L236
	nop

	.loc 1 3915 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	bne	$2,$0,.L239
	nop

	.loc 1 3917 0
	lw	$2,20($fp)
	lw	$2,44($2)
	lui	$3,%hi(pxReadyTasksLists)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	lw	$2,0($2)
	bne	$2,$0,.L239
	nop

	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$3,$0,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	and	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
.L239:
	.loc 1 3927 0
	lw	$2,20($fp)
	lw	$3,72($2)
	lw	$2,20($fp)
	sw	$3,44($2)
	.loc 1 3932 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,8			# 0x8
	subu	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,24($2)
	.loc 1 3933 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 3943 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L236:
	.loc 1 3960 0
	lw	$2,16($fp)
	.loc 1 3961 0
	move	$sp,$fp
.LCFI174 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskPriorityDisinherit
.LFE47:
	.size	xTaskPriorityDisinherit, .-xTaskPriorityDisinherit
	.align	2
	.globl	vTaskPriorityDisinheritAfterTimeout
.LFB48 = .
	.loc 1 3969 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskPriorityDisinheritAfterTimeout
	.type	vTaskPriorityDisinheritAfterTimeout, @function
vTaskPriorityDisinheritAfterTimeout:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI175 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI176 = .
	move	$fp,$sp
.LCFI177 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 3970 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 3972 0
	li	$2,1			# 0x1
	sw	$2,24($fp)
	.loc 1 3974 0
	lw	$2,40($fp)
	beq	$2,$0,.L242
	nop

	.loc 1 3978 0
	lw	$2,20($fp)
	lw	$2,76($2)
	bne	$2,$0,.L244
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,3978			# 0xf8a
	jal	vAssertCalled
	nop

.L244:
	.loc 1 3984 0
	lw	$2,20($fp)
	lw	$3,72($2)
	lw	$2,44($fp)
	sltu	$2,$3,$2
	beq	$2,$0,.L245
	nop

	.loc 1 3986 0
	lw	$2,44($fp)
	sw	$2,16($fp)
	j	.L246
	nop

.L245:
	.loc 1 3990 0
	lw	$2,20($fp)
	lw	$2,72($2)
	sw	$2,16($fp)
.L246:
	.loc 1 3994 0
	lw	$2,20($fp)
	lw	$3,44($2)
	lw	$2,16($fp)
	beq	$3,$2,.L242
	nop

	.loc 1 4000 0
	lw	$2,20($fp)
	lw	$3,76($2)
	lw	$2,24($fp)
	bne	$3,$2,.L242
	nop

	.loc 1 4005 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,20($fp)
	bne	$3,$2,.L247
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4005			# 0xfa5
	jal	vAssertCalled
	nop

.L247:
	.loc 1 4011 0
	lw	$2,20($fp)
	lw	$2,44($2)
	sw	$2,28($fp)
	.loc 1 4012 0
	lw	$2,20($fp)
	lw	$3,16($fp)
	sw	$3,44($2)
	.loc 1 4016 0
	lw	$2,20($fp)
	lw	$2,24($2)
	bltz	$2,.L248
	nop

	.loc 1 4018 0
	li	$3,8			# 0x8
	lw	$2,16($fp)
	subu	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,24($2)
.L248:
	.loc 1 4031 0
	lw	$2,20($fp)
	lw	$3,20($2)
	lw	$2,28($fp)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	lui	$4,%hi(pxReadyTasksLists)
	addiu	$4,$4,%lo(pxReadyTasksLists)
	addu	$2,$2,$4
	bne	$3,$2,.L249
	nop

	li	$2,1			# 0x1
	j	.L250
	nop

.L249:
	move	$2,$0
.L250:
	beq	$2,$0,.L242
	nop

	.loc 1 4033 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	bne	$2,$0,.L251
	nop

	.loc 1 4035 0
	lw	$2,20($fp)
	lw	$2,44($2)
	lui	$3,%hi(pxReadyTasksLists)
	sll	$2,$2,2
	sll	$4,$2,2
	addu	$2,$2,$4
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$2,$2,$3
	lw	$2,0($2)
	bne	$2,$0,.L251
	nop

	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$3,$0,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	and	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
.L251:
	.loc 1 4042 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

.L242:
	.loc 1 4063 0
	move	$sp,$fp
.LCFI178 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskPriorityDisinheritAfterTimeout
.LFE48:
	.size	vTaskPriorityDisinheritAfterTimeout, .-vTaskPriorityDisinheritAfterTimeout
	.align	2
	.globl	vTaskEnterCritical
.LFB49 = .
	.loc 1 4071 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskEnterCritical
	.type	vTaskEnterCritical, @function
vTaskEnterCritical:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI179 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI180 = .
	move	$fp,$sp
.LCFI181 = .
.LBB23 = .
	.loc 1 4072 0
	mfc0	$2,$12,0
	sw	$2,16($fp)
	lw	$3,16($fp)
	li	$2,65536			# 0x10000
	ori	$2,$2,0xfc00
	and	$2,$3,$2
	srl	$2,$2,10
	sltu	$2,$2,3
	beq	$2,$0,.L254
	nop

	lw	$2,16($fp)
	ins	$2,$0,10,7
	sw	$2,16($fp)
	lw	$2,16($fp)
	ori	$2,$2,0xc00
	mtc0	$2,$12,0
	ehb
.L254:
.LBE23 = .
	.loc 1 4074 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	beq	$2,$0,.L253
	nop

	.loc 1 4076 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,68($2)
	addiu	$3,$3,1
	sw	$3,68($2)
	.loc 1 4084 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,68($2)
	li	$2,1			# 0x1
	bne	$3,$2,.L253
	nop

	.loc 1 4086 0
	lw	$2,%gp_rel(uxInterruptNesting)($28)
	beq	$2,$0,.L253
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4086			# 0xff6
	jal	vAssertCalled
	nop

.L253:
	.loc 1 4093 0
	move	$sp,$fp
.LCFI182 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskEnterCritical
.LFE49:
	.size	vTaskEnterCritical, .-vTaskEnterCritical
	.align	2
	.globl	vTaskExitCritical
.LFB50 = .
	.loc 1 4101 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskExitCritical
	.type	vTaskExitCritical, @function
vTaskExitCritical:
	.frame	$fp,16,$31		# vars= 8, regs= 2/0, args= 0, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI183 = .
	sw	$31,12($sp)
	sw	$fp,8($sp)
.LCFI184 = .
	move	$fp,$sp
.LCFI185 = .
	.loc 1 4102 0
	lw	$2,%gp_rel(xSchedulerRunning)($28)
	beq	$2,$0,.L257
	nop

	.loc 1 4104 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,68($2)
	beq	$2,$0,.L257
	nop

	.loc 1 4106 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,68($2)
	addiu	$3,$3,-1
	sw	$3,68($2)
	.loc 1 4108 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,68($2)
	bne	$2,$0,.L257
	nop

.LBB24 = .
	.loc 1 4110 0
	mfc0	$2,$12,0
	sw	$2,0($fp)
	lw	$2,0($fp)
	ins	$2,$0,10,7
	sw	$2,0($fp)
	lw	$2,0($fp)
	mtc0	$2,$12,0
	ehb
.L257:
.LBE24 = .
	.loc 1 4126 0
	move	$sp,$fp
.LCFI186 = .
	lw	$31,12($sp)
	lw	$fp,8($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskExitCritical
.LFE50:
	.size	vTaskExitCritical, .-vTaskExitCritical
	.align	2
	.globl	uxTaskResetEventItemValue
.LFB51 = .
	.loc 1 4380 0
	.set	nomips16
	.set	nomicromips
	.ent	uxTaskResetEventItemValue
	.type	uxTaskResetEventItemValue, @function
uxTaskResetEventItemValue:
	.frame	$fp,16,$31		# vars= 8, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-16
.LCFI187 = .
	sw	$fp,12($sp)
.LCFI188 = .
	move	$fp,$sp
.LCFI189 = .
	.loc 1 4383 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,24($2)
	sw	$2,0($fp)
	.loc 1 4387 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,%gp_rel(pxCurrentTCB)($28)
	lw	$3,44($3)
	li	$4,8			# 0x8
	subu	$3,$4,$3
	sw	$3,24($2)
	.loc 1 4389 0
	lw	$2,0($fp)
	.loc 1 4390 0
	move	$sp,$fp
.LCFI190 = .
	lw	$fp,12($sp)
	addiu	$sp,$sp,16
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	uxTaskResetEventItemValue
.LFE51:
	.size	uxTaskResetEventItemValue, .-uxTaskResetEventItemValue
	.align	2
	.globl	pvTaskIncrementMutexHeldCount
.LFB52 = .
	.loc 1 4396 0
	.set	nomips16
	.set	nomicromips
	.ent	pvTaskIncrementMutexHeldCount
	.type	pvTaskIncrementMutexHeldCount, @function
pvTaskIncrementMutexHeldCount:
	.frame	$fp,8,$31		# vars= 0, regs= 1/0, args= 0, gp= 0
	.mask	0x40000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-8
.LCFI191 = .
	sw	$fp,4($sp)
.LCFI192 = .
	move	$fp,$sp
.LCFI193 = .
	.loc 1 4399 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	beq	$2,$0,.L262
	nop

	.loc 1 4401 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,76($2)
	addiu	$3,$3,1
	sw	$3,76($2)
.L262:
	.loc 1 4404 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	.loc 1 4405 0
	move	$sp,$fp
.LCFI194 = .
	lw	$fp,4($sp)
	addiu	$sp,$sp,8
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	pvTaskIncrementMutexHeldCount
.LFE52:
	.size	pvTaskIncrementMutexHeldCount, .-pvTaskIncrementMutexHeldCount
	.align	2
	.globl	ulTaskNotifyTake
.LFB53 = .
	.loc 1 4413 0
	.set	nomips16
	.set	nomicromips
	.ent	ulTaskNotifyTake
	.type	ulTaskNotifyTake, @function
ulTaskNotifyTake:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI195 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI196 = .
	move	$fp,$sp
.LCFI197 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 4416 0
	jal	vTaskEnterCritical
	nop

	.loc 1 4419 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,80($2)
	bne	$2,$0,.L265
	nop

	.loc 1 4422 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	li	$3,1			# 0x1
	sb	$3,84($2)
	.loc 1 4424 0
	lw	$2,36($fp)
	beq	$2,$0,.L265
	nop

	.loc 1 4426 0
	lw	$4,36($fp)
	li	$5,1			# 0x1
	jal	prvAddCurrentTaskToDelayedList
	nop

.LBB25 = .
	.loc 1 4433 0
	mfc0	$2,$13,0
	sw	$2,16($fp)
	lw	$2,16($fp)
	ori	$2,$2,0x100
	sw	$2,16($fp)
	lw	$2,16($fp)
	mtc0	$2,$13,0
	ehb
.L265:
.LBE25 = .
	.loc 1 4445 0
	jal	vTaskExitCritical
	nop

	.loc 1 4447 0
	jal	vTaskEnterCritical
	nop

	.loc 1 4450 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,80($2)
	sw	$2,20($fp)
	.loc 1 4452 0
	lw	$2,20($fp)
	beq	$2,$0,.L266
	nop

	.loc 1 4454 0
	lw	$2,32($fp)
	beq	$2,$0,.L267
	nop

	.loc 1 4456 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	sw	$0,80($2)
	j	.L266
	nop

.L267:
	.loc 1 4460 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,20($fp)
	addiu	$3,$3,-1
	sw	$3,80($2)
.L266:
	.loc 1 4468 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	sb	$0,84($2)
	.loc 1 4470 0
	jal	vTaskExitCritical
	nop

	.loc 1 4472 0
	lw	$2,20($fp)
	.loc 1 4473 0
	move	$sp,$fp
.LCFI198 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	ulTaskNotifyTake
.LFE53:
	.size	ulTaskNotifyTake, .-ulTaskNotifyTake
	.align	2
	.globl	xTaskNotifyWait
.LFB54 = .
	.loc 1 4481 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskNotifyWait
	.type	xTaskNotifyWait, @function
xTaskNotifyWait:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI199 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI200 = .
	move	$fp,$sp
.LCFI201 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	sw	$6,40($fp)
	sw	$7,44($fp)
	.loc 1 4484 0
	jal	vTaskEnterCritical
	nop

	.loc 1 4487 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lbu	$2,84($2)
	andi	$3,$2,0x00ff
	li	$2,2			# 0x2
	beq	$3,$2,.L271
	nop

	.loc 1 4492 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$4,80($2)
	lw	$3,32($fp)
	nor	$3,$0,$3
	and	$3,$4,$3
	sw	$3,80($2)
	.loc 1 4495 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	li	$3,1			# 0x1
	sb	$3,84($2)
	.loc 1 4497 0
	lw	$2,44($fp)
	beq	$2,$0,.L271
	nop

	.loc 1 4499 0
	lw	$4,44($fp)
	li	$5,1			# 0x1
	jal	prvAddCurrentTaskToDelayedList
	nop

.LBB26 = .
	.loc 1 4506 0
	mfc0	$2,$13,0
	sw	$2,20($fp)
	lw	$2,20($fp)
	ori	$2,$2,0x100
	sw	$2,20($fp)
	lw	$2,20($fp)
	mtc0	$2,$13,0
	ehb
.L271:
.LBE26 = .
	.loc 1 4518 0
	jal	vTaskExitCritical
	nop

	.loc 1 4520 0
	jal	vTaskEnterCritical
	nop

	.loc 1 4524 0
	lw	$2,40($fp)
	beq	$2,$0,.L272
	nop

	.loc 1 4528 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,80($2)
	lw	$2,40($fp)
	sw	$3,0($2)
.L272:
	.loc 1 4535 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lbu	$2,84($2)
	andi	$3,$2,0x00ff
	li	$2,2			# 0x2
	beq	$3,$2,.L273
	nop

	.loc 1 4538 0
	sw	$0,16($fp)
	j	.L274
	nop

.L273:
	.loc 1 4544 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$4,80($2)
	lw	$3,36($fp)
	nor	$3,$0,$3
	and	$3,$4,$3
	sw	$3,80($2)
	.loc 1 4545 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
.L274:
	.loc 1 4548 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	sb	$0,84($2)
	.loc 1 4550 0
	jal	vTaskExitCritical
	nop

	.loc 1 4552 0
	lw	$2,16($fp)
	.loc 1 4553 0
	move	$sp,$fp
.LCFI202 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskNotifyWait
.LFE54:
	.size	xTaskNotifyWait, .-xTaskNotifyWait
	.align	2
	.globl	xTaskGenericNotify
.LFB55 = .
	.loc 1 4561 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskGenericNotify
	.type	xTaskGenericNotify, @function
xTaskGenericNotify:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI203 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI204 = .
	move	$fp,$sp
.LCFI205 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	.loc 1 4563 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	.loc 1 4566 0
	lw	$2,40($fp)
	bne	$2,$0,.L277
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4566			# 0x11d6
	jal	vAssertCalled
	nop

.L277:
	.loc 1 4567 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 4569 0
	jal	vTaskEnterCritical
	nop

	.loc 1 4571 0
	lw	$2,52($fp)
	beq	$2,$0,.L278
	nop

	.loc 1 4573 0
	lw	$2,20($fp)
	lw	$3,80($2)
	lw	$2,52($fp)
	sw	$3,0($2)
.L278:
	.loc 1 4576 0
	lw	$2,20($fp)
	lbu	$2,84($2)
	sb	$2,24($fp)
	.loc 1 4578 0
	lw	$2,20($fp)
	li	$3,2			# 0x2
	sb	$3,84($2)
	.loc 1 4580 0
	lw	$2,48($fp)
	sltu	$2,$2,5
	beq	$2,$0,.L279
	nop

	lw	$2,48($fp)
	sll	$3,$2,2
	lui	$2,%hi(.L281)
	addiu	$2,$2,%lo(.L281)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L281:
	.word	.L291
	.word	.L282
	.word	.L283
	.word	.L284
	.word	.L285
.L282:
	.loc 1 4583 0
	lw	$2,20($fp)
	lw	$3,80($2)
	lw	$2,44($fp)
	or	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,80($2)
	.loc 1 4584 0
	j	.L279
	nop

.L283:
	.loc 1 4587 0
	lw	$2,20($fp)
	lw	$2,80($2)
	addiu	$3,$2,1
	lw	$2,20($fp)
	sw	$3,80($2)
	.loc 1 4588 0
	j	.L279
	nop

.L284:
	.loc 1 4591 0
	lw	$2,20($fp)
	lw	$3,44($fp)
	sw	$3,80($2)
	.loc 1 4592 0
	j	.L279
	nop

.L285:
	.loc 1 4595 0
	lbu	$3,24($fp)
	li	$2,2			# 0x2
	beq	$3,$2,.L286
	nop

	.loc 1 4597 0
	lw	$2,20($fp)
	lw	$3,44($fp)
	sw	$3,80($2)
	.loc 1 4604 0
	j	.L279
	nop

.L286:
	.loc 1 4602 0
	sw	$0,16($fp)
	.loc 1 4604 0
	j	.L279
	nop

.L291:
	.loc 1 4609 0
	nop
.L279:
	.loc 1 4616 0
	lbu	$3,24($fp)
	li	$2,1			# 0x1
	bne	$3,$2,.L288
	nop

	.loc 1 4618 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 4619 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	.loc 1 4622 0
	lw	$2,20($fp)
	lw	$2,40($2)
	beq	$2,$0,.L289
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4622			# 0x120e
	jal	vAssertCalled
	nop

.L289:
	.loc 1 4640 0
	lw	$2,20($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$2,$3
	beq	$2,$0,.L288
	nop

.LBB27 = .
	.loc 1 4644 0
	mfc0	$2,$13,0
	sw	$2,28($fp)
	lw	$2,28($fp)
	ori	$2,$2,0x100
	sw	$2,28($fp)
	lw	$2,28($fp)
	mtc0	$2,$13,0
	ehb
.L288:
.LBE27 = .
	.loc 1 4656 0
	jal	vTaskExitCritical
	nop

	.loc 1 4658 0
	lw	$2,16($fp)
	.loc 1 4659 0
	move	$sp,$fp
.LCFI206 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskGenericNotify
.LFE55:
	.size	xTaskGenericNotify, .-xTaskGenericNotify
	.align	2
	.globl	xTaskGenericNotifyFromISR
.LFB56 = .
	.loc 1 4667 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskGenericNotifyFromISR
	.type	xTaskGenericNotifyFromISR, @function
xTaskGenericNotifyFromISR:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI207 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI208 = .
	move	$fp,$sp
.LCFI209 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	sw	$6,48($fp)
	sw	$7,52($fp)
	.loc 1 4670 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	.loc 1 4673 0
	lw	$2,40($fp)
	bne	$2,$0,.L293
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4673			# 0x1241
	jal	vAssertCalled
	nop

.L293:
	.loc 1 4693 0
	lw	$2,40($fp)
	sw	$2,20($fp)
	.loc 1 4695 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,24($fp)
	.loc 1 4697 0
	lw	$2,52($fp)
	beq	$2,$0,.L294
	nop

	.loc 1 4699 0
	lw	$2,20($fp)
	lw	$3,80($2)
	lw	$2,52($fp)
	sw	$3,0($2)
.L294:
	.loc 1 4702 0
	lw	$2,20($fp)
	lbu	$2,84($2)
	sb	$2,28($fp)
	.loc 1 4703 0
	lw	$2,20($fp)
	li	$3,2			# 0x2
	sb	$3,84($2)
	.loc 1 4705 0
	lw	$2,48($fp)
	sltu	$2,$2,5
	beq	$2,$0,.L295
	nop

	lw	$2,48($fp)
	sll	$3,$2,2
	lui	$2,%hi(.L297)
	addiu	$2,$2,%lo(.L297)
	addu	$2,$3,$2
	lw	$2,0($2)
	j	$2
	nop

	.align	2
	.align	2
.L297:
	.word	.L311
	.word	.L298
	.word	.L299
	.word	.L300
	.word	.L301
.L298:
	.loc 1 4708 0
	lw	$2,20($fp)
	lw	$3,80($2)
	lw	$2,44($fp)
	or	$3,$3,$2
	lw	$2,20($fp)
	sw	$3,80($2)
	.loc 1 4709 0
	j	.L295
	nop

.L299:
	.loc 1 4712 0
	lw	$2,20($fp)
	lw	$2,80($2)
	addiu	$3,$2,1
	lw	$2,20($fp)
	sw	$3,80($2)
	.loc 1 4713 0
	j	.L295
	nop

.L300:
	.loc 1 4716 0
	lw	$2,20($fp)
	lw	$3,44($fp)
	sw	$3,80($2)
	.loc 1 4717 0
	j	.L295
	nop

.L301:
	.loc 1 4720 0
	lbu	$3,28($fp)
	li	$2,2			# 0x2
	beq	$3,$2,.L302
	nop

	.loc 1 4722 0
	lw	$2,20($fp)
	lw	$3,44($fp)
	sw	$3,80($2)
	.loc 1 4729 0
	j	.L295
	nop

.L302:
	.loc 1 4727 0
	sw	$0,16($fp)
	.loc 1 4729 0
	j	.L295
	nop

.L311:
	.loc 1 4734 0
	nop
.L295:
	.loc 1 4741 0
	lbu	$3,28($fp)
	li	$2,1			# 0x1
	bne	$3,$2,.L304
	nop

	.loc 1 4744 0
	lw	$2,20($fp)
	lw	$2,40($2)
	beq	$2,$0,.L305
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4744			# 0x1288
	jal	vAssertCalled
	nop

.L305:
	.loc 1 4746 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L306
	nop

	.loc 1 4748 0
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 4749 0
	lw	$2,20($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,20($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,20($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	j	.L307
	nop

.L306:
	.loc 1 4755 0
	lw	$2,20($fp)
	addiu	$2,$2,24
	lui	$3,%hi(xPendingReadyList)
	addiu	$4,$3,%lo(xPendingReadyList)
	move	$5,$2
	jal	vListInsertEnd
	nop

.L307:
	.loc 1 4758 0
	lw	$2,20($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$2,$3
	beq	$2,$0,.L304
	nop

	.loc 1 4762 0
	lw	$2,56($fp)
	beq	$2,$0,.L308
	nop

	.loc 1 4764 0
	lw	$2,56($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L304
	nop

.L308:
	.loc 1 4771 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
.L304:
	.loc 1 4780 0
	lw	$4,24($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 4782 0
	lw	$2,16($fp)
	.loc 1 4783 0
	move	$sp,$fp
.LCFI210 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskGenericNotifyFromISR
.LFE56:
	.size	xTaskGenericNotifyFromISR, .-xTaskGenericNotifyFromISR
	.align	2
	.globl	vTaskNotifyGiveFromISR
.LFB57 = .
	.loc 1 4791 0
	.set	nomips16
	.set	nomicromips
	.ent	vTaskNotifyGiveFromISR
	.type	vTaskNotifyGiveFromISR, @function
vTaskNotifyGiveFromISR:
	.frame	$fp,40,$31		# vars= 16, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-40
.LCFI211 = .
	sw	$31,36($sp)
	sw	$fp,32($sp)
.LCFI212 = .
	move	$fp,$sp
.LCFI213 = .
	sw	$4,40($fp)
	sw	$5,44($fp)
	.loc 1 4796 0
	lw	$2,40($fp)
	bne	$2,$0,.L313
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4796			# 0x12bc
	jal	vAssertCalled
	nop

.L313:
	.loc 1 4816 0
	lw	$2,40($fp)
	sw	$2,16($fp)
	.loc 1 4818 0
	jal	uxPortSetInterruptMaskFromISR
	nop

	sw	$2,20($fp)
	.loc 1 4820 0
	lw	$2,16($fp)
	lbu	$2,84($2)
	sb	$2,24($fp)
	.loc 1 4821 0
	lw	$2,16($fp)
	li	$3,2			# 0x2
	sb	$3,84($2)
	.loc 1 4825 0
	lw	$2,16($fp)
	lw	$2,80($2)
	addiu	$3,$2,1
	lw	$2,16($fp)
	sw	$3,80($2)
	.loc 1 4831 0
	lbu	$3,24($fp)
	li	$2,1			# 0x1
	bne	$3,$2,.L314
	nop

	.loc 1 4834 0
	lw	$2,16($fp)
	lw	$2,40($2)
	beq	$2,$0,.L315
	nop

	lui	$2,%hi(.LC0)
	addiu	$4,$2,%lo(.LC0)
	li	$5,4834			# 0x12e2
	jal	vAssertCalled
	nop

.L315:
	.loc 1 4836 0
	lw	$2,%gp_rel(uxSchedulerSuspended)($28)
	bne	$2,$0,.L316
	nop

	.loc 1 4838 0
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	.loc 1 4839 0
	lw	$2,16($fp)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$3,$3,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	or	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
	lw	$2,16($fp)
	lw	$2,44($2)
	sll	$2,$2,2
	sll	$3,$2,2
	addu	$2,$2,$3
	lui	$3,%hi(pxReadyTasksLists)
	addiu	$3,$3,%lo(pxReadyTasksLists)
	addu	$3,$2,$3
	lw	$2,16($fp)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsertEnd
	nop

	j	.L317
	nop

.L316:
	.loc 1 4845 0
	lw	$2,16($fp)
	addiu	$2,$2,24
	lui	$3,%hi(xPendingReadyList)
	addiu	$4,$3,%lo(xPendingReadyList)
	move	$5,$2
	jal	vListInsertEnd
	nop

.L317:
	.loc 1 4848 0
	lw	$2,16($fp)
	lw	$3,44($2)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	sltu	$2,$2,$3
	beq	$2,$0,.L314
	nop

	.loc 1 4852 0
	lw	$2,44($fp)
	beq	$2,$0,.L318
	nop

	.loc 1 4854 0
	lw	$2,44($fp)
	li	$3,1			# 0x1
	sw	$3,0($2)
	j	.L314
	nop

.L318:
	.loc 1 4861 0
	li	$2,1			# 0x1
	sw	$2,%gp_rel(xYieldPending)($28)
.L314:
	.loc 1 4870 0
	lw	$4,20($fp)
	jal	vPortClearInterruptMaskFromISR
	nop

	.loc 1 4871 0
	move	$sp,$fp
.LCFI214 = .
	lw	$31,36($sp)
	lw	$fp,32($sp)
	addiu	$sp,$sp,40
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	vTaskNotifyGiveFromISR
.LFE57:
	.size	vTaskNotifyGiveFromISR, .-vTaskNotifyGiveFromISR
	.align	2
	.globl	xTaskNotifyStateClear
.LFB58 = .
	.loc 1 4880 0
	.set	nomips16
	.set	nomicromips
	.ent	xTaskNotifyStateClear
	.type	xTaskNotifyStateClear, @function
xTaskNotifyStateClear:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI215 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI216 = .
	move	$fp,$sp
.LCFI217 = .
	sw	$4,32($fp)
	.loc 1 4886 0
	lw	$2,32($fp)
	bne	$2,$0,.L321
	nop

	lw	$2,%gp_rel(pxCurrentTCB)($28)
	j	.L322
	nop

.L321:
	lw	$2,32($fp)
.L322:
	sw	$2,20($fp)
	.loc 1 4888 0
	jal	vTaskEnterCritical
	nop

	.loc 1 4890 0
	lw	$2,20($fp)
	lbu	$2,84($2)
	andi	$3,$2,0x00ff
	li	$2,2			# 0x2
	bne	$3,$2,.L323
	nop

	.loc 1 4892 0
	lw	$2,20($fp)
	sb	$0,84($2)
	.loc 1 4893 0
	li	$2,1			# 0x1
	sw	$2,16($fp)
	j	.L324
	nop

.L323:
	.loc 1 4897 0
	sw	$0,16($fp)
.L324:
	.loc 1 4900 0
	jal	vTaskExitCritical
	nop

	.loc 1 4902 0
	lw	$2,16($fp)
	.loc 1 4903 0
	move	$sp,$fp
.LCFI218 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	xTaskNotifyStateClear
.LFE58:
	.size	xTaskNotifyStateClear, .-xTaskNotifyStateClear
	.align	2
.LFB59 = .
	.loc 1 4910 0
	.set	nomips16
	.set	nomicromips
	.ent	prvAddCurrentTaskToDelayedList
	.type	prvAddCurrentTaskToDelayedList, @function
prvAddCurrentTaskToDelayedList:
	.frame	$fp,32,$31		# vars= 8, regs= 2/0, args= 16, gp= 0
	.mask	0xc0000000,-4
	.fmask	0x00000000,0
	.set	noreorder
	.set	nomacro
# End mchp_output_function_prologue
	addiu	$sp,$sp,-32
.LCFI219 = .
	sw	$31,28($sp)
	sw	$fp,24($sp)
.LCFI220 = .
	move	$fp,$sp
.LCFI221 = .
	sw	$4,32($fp)
	sw	$5,36($fp)
	.loc 1 4912 0
	lw	$2,%gp_rel(xTickCount)($28)
	sw	$2,16($fp)
	.loc 1 4925 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,4
	move	$4,$2
	jal	uxListRemove
	nop

	bne	$2,$0,.L327
	nop

	.loc 1 4929 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$2,44($2)
	li	$3,1			# 0x1
	sll	$2,$3,$2
	nor	$3,$0,$2
	lw	$2,%gp_rel(uxTopReadyPriority)($28)
	and	$2,$3,$2
	sw	$2,%gp_rel(uxTopReadyPriority)($28)
.L327:
	.loc 1 4938 0
	lw	$3,32($fp)
	li	$2,-1			# 0xffffffffffffffff
	bne	$3,$2,.L328
	nop

	lw	$2,36($fp)
	beq	$2,$0,.L328
	nop

	.loc 1 4943 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,4
	lui	$3,%hi(xSuspendedTaskList)
	addiu	$4,$3,%lo(xSuspendedTaskList)
	move	$5,$2
	jal	vListInsertEnd
	nop

	j	.L326
	nop

.L328:
	.loc 1 4950 0
	lw	$3,16($fp)
	lw	$2,32($fp)
	addu	$2,$3,$2
	sw	$2,20($fp)
	.loc 1 4953 0
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	lw	$3,20($fp)
	sw	$3,4($2)
	.loc 1 4955 0
	lw	$3,20($fp)
	lw	$2,16($fp)
	sltu	$2,$3,$2
	beq	$2,$0,.L330
	nop

	.loc 1 4959 0
	lw	$3,%gp_rel(pxOverflowDelayedTaskList)($28)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsert
	nop

	j	.L326
	nop

.L330:
	.loc 1 4965 0
	lw	$3,%gp_rel(pxDelayedTaskList)($28)
	lw	$2,%gp_rel(pxCurrentTCB)($28)
	addiu	$2,$2,4
	move	$4,$3
	move	$5,$2
	jal	vListInsert
	nop

	.loc 1 4970 0
	lw	$2,%gp_rel(xNextTaskUnblockTime)($28)
	lw	$3,20($fp)
	sltu	$2,$3,$2
	beq	$2,$0,.L326
	nop

	.loc 1 4972 0
	lw	$2,20($fp)
	sw	$2,%gp_rel(xNextTaskUnblockTime)($28)
.L326:
	.loc 1 5018 0
	move	$sp,$fp
.LCFI222 = .
	lw	$31,28($sp)
	lw	$fp,24($sp)
	addiu	$sp,$sp,32
	j	$31
	nop

	.set	macro
	.set	reorder
# Begin mchp_output_function_epilogue
# End mchp_output_function_epilogue
	.end	prvAddCurrentTaskToDelayedList
.LFE59:
	.size	prvAddCurrentTaskToDelayedList, .-prvAddCurrentTaskToDelayedList
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
	.uleb128 0x38
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
	.uleb128 0x30
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
	.uleb128 0x28
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
	.uleb128 0x30
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x28
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
	.uleb128 0x28
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
	.uleb128 0x20
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x28
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x8
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
	.uleb128 0x30
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
	.uleb128 0x28
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x18
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI121-.LCFI120
	.byte	0x9e
	.uleb128 0x1
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
	.uleb128 0x28
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
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI129-.LCFI128
	.byte	0x9e
	.uleb128 0x1
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
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI135-.LFB38
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI136-.LCFI135
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI137-.LCFI136
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI138-.LCFI137
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI139-.LFB39
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI140-.LCFI139
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI141-.LCFI140
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI142-.LCFI141
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI143-.LFB40
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI144-.LCFI143
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI145-.LCFI144
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI146-.LCFI145
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI147-.LFB41
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI148-.LCFI147
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI149-.LCFI148
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI150-.LCFI149
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI151-.LFB42
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI152-.LCFI151
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI153-.LCFI152
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI154-.LCFI153
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI155-.LFB43
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI156-.LCFI155
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI157-.LCFI156
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI158-.LCFI157
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI159-.LFB44
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI160-.LCFI159
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI161-.LCFI160
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI162-.LCFI161
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI163-.LFB45
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI164-.LCFI163
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI165-.LCFI164
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI166-.LCFI165
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI167-.LFB46
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI168-.LCFI167
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI169-.LCFI168
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI170-.LCFI169
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI171-.LFB47
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI172-.LCFI171
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI173-.LCFI172
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI174-.LCFI173
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI175-.LFB48
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI176-.LCFI175
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI177-.LCFI176
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI178-.LCFI177
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI179-.LFB49
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI180-.LCFI179
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI181-.LCFI180
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI182-.LCFI181
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI183-.LFB50
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI184-.LCFI183
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI185-.LCFI184
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI186-.LCFI185
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI187-.LFB51
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI188-.LCFI187
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI189-.LCFI188
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI190-.LCFI189
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI191-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI192-.LCFI191
	.byte	0x9e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI193-.LCFI192
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI194-.LCFI193
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI195-.LFB53
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI196-.LCFI195
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI197-.LCFI196
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI198-.LCFI197
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI199-.LFB54
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI200-.LCFI199
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI201-.LCFI200
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI202-.LCFI201
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI203-.LFB55
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI204-.LCFI203
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI205-.LCFI204
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI206-.LCFI205
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI207-.LFB56
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI208-.LCFI207
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI209-.LCFI208
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI210-.LCFI209
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI211-.LFB57
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI212-.LCFI211
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI213-.LCFI212
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI214-.LCFI213
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI215-.LFB58
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI216-.LCFI215
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI217-.LCFI216
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI218-.LCFI217
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI219-.LFB59
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI220-.LCFI219
	.byte	0x9f
	.uleb128 0x1
	.byte	0x9e
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI221-.LCFI220
	.byte	0xd
	.uleb128 0x1e
	.byte	0x4
	.4byte	.LCFI222-.LCFI221
	.byte	0xd
	.uleb128 0x1d
	.align	2
.LEFDE110:
	.section	.text,code
.Letext0:
	.file 2 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/stddef.h"
	.file 3 "c:/program files (x86)/microchip/xc32/v1.44/pic32mx/include/machine/int_types.h"
	.file 4 "c:/users/user/desktop/release/source/include/projdefs.h"
	.file 5 "c:/users/user/desktop/release/source/portable/mplab/pic32mz/portmacro.h"
	.file 6 "c:/users/user/desktop/release/source/include/list.h"
	.file 7 "c:/users/user/desktop/release/source/include/task.h"
	.section	.debug_info,info
.Ldebug_info0:
	.4byte	0x2106
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.8.3 MPLAB XC32 Compiler v1.44\000"
	.byte	0x1
	.ascii	"../../../Source/tasks.c\000"
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
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"signed char\000"
	.uleb128 0x3
	.ascii	"__uint8_t\000"
	.byte	0x3
	.byte	0x2f
	.4byte	0xff
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.ascii	"unsigned char\000"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.ascii	"short int\000"
	.uleb128 0x3
	.ascii	"__uint16_t\000"
	.byte	0x3
	.byte	0x31
	.4byte	0x12f
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
	.uleb128 0x3
	.ascii	"TaskFunction_t\000"
	.byte	0x4
	.byte	0x24
	.4byte	0x198
	.uleb128 0x4
	.byte	0x4
	.4byte	0x19e
	.uleb128 0x5
	.byte	0x1
	.4byte	0x1aa
	.uleb128 0x6
	.4byte	0x1aa
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x3
	.ascii	"StackType_t\000"
	.byte	0x5
	.byte	0x3a
	.4byte	0x145
	.uleb128 0x3
	.ascii	"BaseType_t\000"
	.byte	0x5
	.byte	0x3b
	.4byte	0x99
	.uleb128 0x3
	.ascii	"UBaseType_t\000"
	.byte	0x5
	.byte	0x3c
	.4byte	0xb3
	.uleb128 0x3
	.ascii	"TickType_t\000"
	.byte	0x5
	.byte	0x42
	.4byte	0x145
	.uleb128 0x4
	.byte	0x4
	.4byte	0xee
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.ascii	"sizetype\000"
	.uleb128 0x8
	.ascii	"xLIST_ITEM\000"
	.byte	0x14
	.byte	0x6
	.byte	0x8c
	.4byte	0x271
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0x6
	.byte	0x8f
	.4byte	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"pxNext\000"
	.byte	0x6
	.byte	0x90
	.4byte	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF1
	.byte	0x6
	.byte	0x91
	.4byte	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.ascii	"pvOwner\000"
	.byte	0x6
	.byte	0x92
	.4byte	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.ascii	"pvContainer\000"
	.byte	0x6
	.byte	0x93
	.4byte	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x208
	.uleb128 0x3
	.ascii	"ListItem_t\000"
	.byte	0x6
	.byte	0x96
	.4byte	0x208
	.uleb128 0x8
	.ascii	"xMINI_LIST_ITEM\000"
	.byte	0xc
	.byte	0x6
	.byte	0x98
	.4byte	0x2cf
	.uleb128 0x9
	.4byte	.LASF0
	.byte	0x6
	.byte	0x9b
	.4byte	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"pxNext\000"
	.byte	0x6
	.byte	0x9c
	.4byte	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.4byte	.LASF1
	.byte	0x6
	.byte	0x9d
	.4byte	0x271
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii	"MiniListItem_t\000"
	.byte	0x6
	.byte	0x9f
	.4byte	0x289
	.uleb128 0x8
	.ascii	"xLIST\000"
	.byte	0x14
	.byte	0x6
	.byte	0xa4
	.4byte	0x333
	.uleb128 0xa
	.ascii	"uxNumberOfItems\000"
	.byte	0x6
	.byte	0xa7
	.4byte	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"pxIndex\000"
	.byte	0x6
	.byte	0xa8
	.4byte	0x338
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.ascii	"xListEnd\000"
	.byte	0x6
	.byte	0xa9
	.4byte	0x2cf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x1d1
	.uleb128 0x4
	.byte	0x4
	.4byte	0x277
	.uleb128 0x3
	.ascii	"List_t\000"
	.byte	0x6
	.byte	0xab
	.4byte	0x2e5
	.uleb128 0x3
	.ascii	"TaskHandle_t\000"
	.byte	0x7
	.byte	0x3e
	.4byte	0x1aa
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.byte	0x48
	.4byte	0x3ab
	.uleb128 0xd
	.ascii	"eRunning\000"
	.sleb128 0
	.uleb128 0xd
	.ascii	"eReady\000"
	.sleb128 1
	.uleb128 0xd
	.ascii	"eBlocked\000"
	.sleb128 2
	.uleb128 0xd
	.ascii	"eSuspended\000"
	.sleb128 3
	.uleb128 0xd
	.ascii	"eDeleted\000"
	.sleb128 4
	.uleb128 0xd
	.ascii	"eInvalid\000"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.ascii	"eTaskState\000"
	.byte	0x7
	.byte	0x4f
	.4byte	0x360
	.uleb128 0xc
	.byte	0x4
	.byte	0x7
	.byte	0x53
	.4byte	0x41f
	.uleb128 0xd
	.ascii	"eNoAction\000"
	.sleb128 0
	.uleb128 0xd
	.ascii	"eSetBits\000"
	.sleb128 1
	.uleb128 0xd
	.ascii	"eIncrement\000"
	.sleb128 2
	.uleb128 0xd
	.ascii	"eSetValueWithOverwrite\000"
	.sleb128 3
	.uleb128 0xd
	.ascii	"eSetValueWithoutOverwrite\000"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.ascii	"eNotifyAction\000"
	.byte	0x7
	.byte	0x59
	.4byte	0x3bd
	.uleb128 0x8
	.ascii	"xTIME_OUT\000"
	.byte	0x8
	.byte	0x7
	.byte	0x5e
	.4byte	0x47a
	.uleb128 0xa
	.ascii	"xOverflowCount\000"
	.byte	0x7
	.byte	0x60
	.4byte	0x1bf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"xTimeOnEntering\000"
	.byte	0x7
	.byte	0x61
	.4byte	0x1e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.ascii	"TimeOut_t\000"
	.byte	0x7
	.byte	0x62
	.4byte	0x434
	.uleb128 0x8
	.ascii	"xMEMORY_REGION\000"
	.byte	0xc
	.byte	0x7
	.byte	0x67
	.4byte	0x4ec
	.uleb128 0xa
	.ascii	"pvBaseAddress\000"
	.byte	0x7
	.byte	0x69
	.4byte	0x1aa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.ascii	"ulLengthInBytes\000"
	.byte	0x7
	.byte	0x6a
	.4byte	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.ascii	"ulParameters\000"
	.byte	0x7
	.byte	0x6b
	.4byte	0x145
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x3
	.ascii	"MemoryRegion_t\000"
	.byte	0x7
	.byte	0x6c
	.4byte	0x48b
	.uleb128 0xe
	.4byte	0x507
	.uleb128 0x4
	.byte	0x4
	.4byte	0x50d
	.uleb128 0xe
	.4byte	0x512
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.ascii	"char\000"
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1ac
	.uleb128 0xf
	.ascii	"tskTaskControlBlock\000"
	.byte	0x58
	.byte	0x1
	.2byte	0x10d
	.4byte	0x63d
	.uleb128 0x10
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x10f
	.4byte	0x63d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.ascii	"xStateListItem\000"
	.byte	0x1
	.2byte	0x115
	.4byte	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.ascii	"xEventListItem\000"
	.byte	0x1
	.2byte	0x116
	.4byte	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x10
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x117
	.4byte	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x11
	.ascii	"pxStack\000"
	.byte	0x1
	.2byte	0x118
	.4byte	0x51a
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x11
	.ascii	"pcTaskName\000"
	.byte	0x1
	.2byte	0x119
	.4byte	0x648
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x11
	.ascii	"uxCriticalNesting\000"
	.byte	0x1
	.2byte	0x120
	.4byte	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x11
	.ascii	"uxBasePriority\000"
	.byte	0x1
	.2byte	0x129
	.4byte	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x11
	.ascii	"uxMutexesHeld\000"
	.byte	0x1
	.2byte	0x12a
	.4byte	0x1d1
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x11
	.ascii	"ulNotifiedValue\000"
	.byte	0x1
	.2byte	0x145
	.4byte	0x658
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x11
	.ascii	"ucNotifyState\000"
	.byte	0x1
	.2byte	0x146
	.4byte	0x65d
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x643
	.uleb128 0xb
	.4byte	0x1ac
	.uleb128 0x12
	.4byte	0x512
	.4byte	0x658
	.uleb128 0x13
	.4byte	0x1fc
	.byte	0xf
	.byte	0
	.uleb128 0xb
	.4byte	0x145
	.uleb128 0xb
	.4byte	0xee
	.uleb128 0x14
	.ascii	"tskTCB\000"
	.byte	0x1
	.2byte	0x153
	.4byte	0x520
	.uleb128 0x14
	.ascii	"TCB_t\000"
	.byte	0x1
	.2byte	0x157
	.4byte	0x662
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskCreate\000"
	.byte	0x1
	.2byte	0x2dc
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB4
	.4byte	.LFE4
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x74a
	.uleb128 0x16
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x2dc
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x17
	.ascii	"pcName\000"
	.byte	0x1
	.2byte	0x2dd
	.4byte	0x502
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x17
	.ascii	"usStackDepth\000"
	.byte	0x1
	.2byte	0x2de
	.4byte	0x74a
	.byte	0x3
	.byte	0x91
	.sleb128 64
	.uleb128 0x16
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x2df
	.4byte	0x74f
	.byte	0x3
	.byte	0x91
	.sleb128 68
	.uleb128 0x16
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x2e0
	.4byte	0x1d1
	.byte	0x3
	.byte	0x91
	.sleb128 72
	.uleb128 0x16
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x2e1
	.4byte	0x754
	.byte	0x3
	.byte	0x91
	.sleb128 76
	.uleb128 0x18
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2e3
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2e4
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x19
	.4byte	.LBB2
	.4byte	.LBE2
	.uleb128 0x1a
	.ascii	"pxStack\000"
	.byte	0x1
	.2byte	0x301
	.4byte	0x51a
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x11d
	.uleb128 0xe
	.4byte	0x1aa
	.uleb128 0xe
	.4byte	0x759
	.uleb128 0x4
	.byte	0x4
	.4byte	0x34c
	.uleb128 0x4
	.byte	0x4
	.4byte	0x671
	.uleb128 0x1b
	.ascii	"prvInitialiseNewTask\000"
	.byte	0x1
	.2byte	0x337
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x834
	.uleb128 0x16
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x337
	.4byte	0x182
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x17
	.ascii	"pcName\000"
	.byte	0x1
	.2byte	0x338
	.4byte	0x502
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x17
	.ascii	"ulStackDepth\000"
	.byte	0x1
	.2byte	0x339
	.4byte	0x834
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x16
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x33a
	.4byte	0x74f
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x16
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x33b
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x16
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x33c
	.4byte	0x754
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x16
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x33d
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x17
	.ascii	"xRegions\000"
	.byte	0x1
	.2byte	0x33e
	.4byte	0x839
	.byte	0x2
	.byte	0x91
	.sleb128 60
	.uleb128 0x18
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x340
	.4byte	0x51a
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0x1
	.2byte	0x341
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0xe
	.4byte	0x145
	.uleb128 0xe
	.4byte	0x83e
	.uleb128 0x4
	.byte	0x4
	.4byte	0x844
	.uleb128 0xe
	.4byte	0x4ec
	.uleb128 0x1b
	.ascii	"prvAddNewTaskToReadyList\000"
	.byte	0x1
	.2byte	0x403
	.byte	0x1
	.4byte	.LFB6
	.4byte	.LFE6
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x89f
	.uleb128 0x16
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x403
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x19
	.4byte	.LBB3
	.4byte	.LBE3
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x448
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskDelete\000"
	.byte	0x1
	.2byte	0x458
	.byte	0x1
	.4byte	.LFB7
	.4byte	.LFE7
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x902
	.uleb128 0x17
	.ascii	"xTaskToDelete\000"
	.byte	0x1
	.2byte	0x458
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x45a
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB4
	.4byte	.LBE4
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x4a6
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskDelayUntil\000"
	.byte	0x1
	.2byte	0x4b4
	.byte	0x1
	.4byte	.LFB8
	.4byte	.LFE8
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x9cc
	.uleb128 0x17
	.ascii	"pxPreviousWakeTime\000"
	.byte	0x1
	.2byte	0x4b4
	.4byte	0x9cc
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x17
	.ascii	"xTimeIncrement\000"
	.byte	0x1
	.2byte	0x4b4
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x18
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x4b6
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x4b7
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1a
	.ascii	"xShouldDelay\000"
	.byte	0x1
	.2byte	0x4b7
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1d
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0x9b2
	.uleb128 0x18
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x4c1
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x19
	.4byte	.LBB6
	.4byte	.LBE6
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x4fb
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x9d1
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1e4
	.uleb128 0xe
	.4byte	0x1e4
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskDelay\000"
	.byte	0x1
	.2byte	0x508
	.byte	0x1
	.4byte	.LFB9
	.4byte	.LFE9
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xa3e
	.uleb128 0x17
	.ascii	"xTicksToDelay\000"
	.byte	0x1
	.2byte	0x508
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x50a
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB7
	.4byte	.LBE7
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x528
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"eTaskGetState\000"
	.byte	0x1
	.2byte	0x535
	.byte	0x1
	.4byte	0x3ab
	.4byte	.LFB10
	.4byte	.LFE10
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xaae
	.uleb128 0x16
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x535
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x1a
	.ascii	"eReturn\000"
	.byte	0x1
	.2byte	0x537
	.4byte	0x3ab
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.ascii	"pxStateList\000"
	.byte	0x1
	.2byte	0x538
	.4byte	0xaae
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x539
	.4byte	0xab4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x33e
	.uleb128 0xe
	.4byte	0xab9
	.uleb128 0x4
	.byte	0x4
	.4byte	0xabf
	.uleb128 0xe
	.4byte	0x671
	.uleb128 0x15
	.byte	0x1
	.ascii	"uxTaskPriorityGet\000"
	.byte	0x1
	.2byte	0x57c
	.byte	0x1
	.4byte	0x1d1
	.4byte	.LFB11
	.4byte	.LFE11
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xb1d
	.uleb128 0x16
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x57c
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x57e
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x57f
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"uxTaskPriorityGetFromISR\000"
	.byte	0x1
	.2byte	0x592
	.byte	0x1
	.4byte	0x1d1
	.4byte	.LFB12
	.4byte	.LFE12
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xb9e
	.uleb128 0x16
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x592
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x594
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x595
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x1a
	.ascii	"uxSavedInterruptState\000"
	.byte	0x1
	.2byte	0x595
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskPrioritySet\000"
	.byte	0x1
	.2byte	0x5ba
	.byte	0x1
	.4byte	.LFB13
	.4byte	.LFE13
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xc54
	.uleb128 0x16
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x5ba
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x17
	.ascii	"uxNewPriority\000"
	.byte	0x1
	.2byte	0x5ba
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x5bc
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1a
	.ascii	"uxCurrentBasePriority\000"
	.byte	0x1
	.2byte	0x5bd
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x5bd
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x5be
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB8
	.4byte	.LBE8
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x64a
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskSuspend\000"
	.byte	0x1
	.2byte	0x65e
	.byte	0x1
	.4byte	.LFB14
	.4byte	.LFE14
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xcb9
	.uleb128 0x17
	.ascii	"xTaskToSuspend\000"
	.byte	0x1
	.2byte	0x65e
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x660
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB9
	.4byte	.LBE9
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x6a3
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x1e
	.ascii	"prvTaskIsTaskSuspended\000"
	.byte	0x1
	.2byte	0x6c3
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB15
	.4byte	.LFE15
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xd16
	.uleb128 0x16
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x6c3
	.4byte	0xd16
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x6c5
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x6c6
	.4byte	0xab4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0xe
	.4byte	0x34c
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskResume\000"
	.byte	0x1
	.2byte	0x6f1
	.byte	0x1
	.4byte	.LFB16
	.4byte	.LFE16
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xd74
	.uleb128 0x16
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x6f1
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x6f3
	.4byte	0xd74
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB10
	.4byte	.LBE10
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x70d
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x75f
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskResumeFromISR\000"
	.byte	0x1
	.2byte	0x727
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB17
	.4byte	.LFE17
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xde2
	.uleb128 0x16
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x727
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x18
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x729
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x72a
	.4byte	0xd74
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x72b
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskStartScheduler\000"
	.byte	0x1
	.2byte	0x76d
	.byte	0x1
	.4byte	.LFB18
	.4byte	.LFE18
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xe34
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x76f
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x18
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x7b5
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskEndScheduler\000"
	.byte	0x1
	.2byte	0x7e5
	.byte	0x1
	.4byte	.LFB19
	.4byte	.LFE19
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xe75
	.uleb128 0x19
	.4byte	.LBB12
	.4byte	.LBE12
	.uleb128 0x18
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x7ea
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.ascii	"vTaskSuspendAll\000"
	.byte	0x1
	.2byte	0x7f0
	.byte	0x1
	.4byte	.LFB20
	.4byte	.LFE20
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskResumeAll\000"
	.byte	0x1
	.2byte	0x839
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB21
	.4byte	.LFE21
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xf1e
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x83b
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x83c
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1d
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0xf04
	.uleb128 0x1a
	.ascii	"uxPendedCounts\000"
	.byte	0x1
	.2byte	0x874
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x19
	.4byte	.LBB14
	.4byte	.LBE14
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x894
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.ascii	"xTaskGetTickCount\000"
	.byte	0x1
	.2byte	0x8a7
	.byte	0x1
	.4byte	0x1e4
	.4byte	.LFB22
	.4byte	.LFE22
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xf5c
	.uleb128 0x1a
	.ascii	"xTicks\000"
	.byte	0x1
	.2byte	0x8a9
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.ascii	"xTaskGetTickCountFromISR\000"
	.byte	0x1
	.2byte	0x8b6
	.byte	0x1
	.4byte	0x1e4
	.4byte	.LFB23
	.4byte	.LFE23
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0xfad
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x8b8
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x18
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x8b9
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.ascii	"uxTaskGetNumberOfTasks\000"
	.byte	0x1
	.2byte	0x8d5
	.byte	0x1
	.4byte	0x1d1
	.4byte	.LFB24
	.4byte	.LFE24
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.ascii	"pcTaskGetName\000"
	.byte	0x1
	.2byte	0x8dd
	.byte	0x1
	.4byte	0x1028
	.4byte	.LFB25
	.4byte	.LFE25
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1028
	.uleb128 0x17
	.ascii	"xTaskToQuery\000"
	.byte	0x1
	.2byte	0x8dd
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x8df
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x512
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskIncrementTick\000"
	.byte	0x1
	.2byte	0xa1d
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB26
	.4byte	.LFE26
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x10c9
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0xa1f
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x18
	.4byte	.LASF0
	.byte	0x1
	.2byte	0xa20
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1a
	.ascii	"xSwitchRequired\000"
	.byte	0x1
	.2byte	0xa21
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB15
	.4byte	.LBE15
	.uleb128 0x18
	.4byte	.LASF13
	.byte	0x1
	.2byte	0xa2b
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x19
	.4byte	.LBB16
	.4byte	.LBE16
	.uleb128 0x1a
	.ascii	"pxTemp\000"
	.byte	0x1
	.2byte	0xa33
	.4byte	0xaae
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskSwitchContext\000"
	.byte	0x1
	.2byte	0xb23
	.byte	0x1
	.4byte	.LFB27
	.4byte	.LFE27
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1170
	.uleb128 0x1d
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0x112b
	.uleb128 0x1a
	.ascii	"pulStack\000"
	.byte	0x1
	.2byte	0xb4c
	.4byte	0x1170
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.ascii	"ulCheckValue\000"
	.byte	0x1
	.2byte	0xb4c
	.4byte	0x834
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x19
	.4byte	.LBB18
	.4byte	.LBE18
	.uleb128 0x1a
	.ascii	"uxTopPriority\000"
	.byte	0x1
	.2byte	0xb50
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	.LBB19
	.4byte	.LBE19
	.uleb128 0x1a
	.ascii	"pxConstList\000"
	.byte	0x1
	.2byte	0xb50
	.4byte	0x117b
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.4byte	0x1175
	.uleb128 0x4
	.byte	0x4
	.4byte	0x834
	.uleb128 0xe
	.4byte	0xaae
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskPlaceOnEventList\000"
	.byte	0x1
	.2byte	0xb5e
	.byte	0x1
	.4byte	.LFB28
	.4byte	.LFE28
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x11ca
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xb5e
	.4byte	0x117b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xb5e
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskPlaceOnUnorderedEventList\000"
	.byte	0x1
	.2byte	0xb6f
	.byte	0x1
	.4byte	.LFB29
	.4byte	.LFE29
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x122c
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xb6f
	.4byte	0xaae
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.4byte	.LASF0
	.byte	0x1
	.2byte	0xb6f
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xb6f
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskPlaceOnEventListRestricted\000"
	.byte	0x1
	.2byte	0xb89
	.byte	0x1
	.4byte	.LFB30
	.4byte	.LFE30
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x129d
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xb89
	.4byte	0x117b
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xb89
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x17
	.ascii	"xWaitIndefinitely\000"
	.byte	0x1
	.2byte	0xb89
	.4byte	0x129d
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.byte	0
	.uleb128 0xe
	.4byte	0x1bf
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskRemoveFromEventList\000"
	.byte	0x1
	.2byte	0xba8
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB31
	.4byte	.LFE31
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1302
	.uleb128 0x16
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xba8
	.4byte	0x1302
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x1
	.2byte	0xbaa
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xbab
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0xe
	.4byte	0x1307
	.uleb128 0x4
	.byte	0x4
	.4byte	0x130d
	.uleb128 0xe
	.4byte	0x33e
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskRemoveFromUnorderedEventList\000"
	.byte	0x1
	.2byte	0xbec
	.byte	0x1
	.4byte	.LFB32
	.4byte	.LFE32
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1383
	.uleb128 0x17
	.ascii	"pxEventListItem\000"
	.byte	0x1
	.2byte	0xbec
	.4byte	0x338
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x16
	.4byte	.LASF0
	.byte	0x1
	.2byte	0xbec
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x18
	.4byte	.LASF23
	.byte	0x1
	.2byte	0xbee
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskSetTimeOutState\000"
	.byte	0x1
	.2byte	0xc0e
	.byte	0x1
	.4byte	.LFB33
	.4byte	.LFE33
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x13bd
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.2byte	0xc0e
	.4byte	0x13bd
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xe
	.4byte	0x13c2
	.uleb128 0x4
	.byte	0x4
	.4byte	0x47a
	.uleb128 0x22
	.byte	0x1
	.ascii	"vTaskInternalSetTimeOutState\000"
	.byte	0x1
	.2byte	0xc1a
	.byte	0x1
	.4byte	.LFB34
	.4byte	.LFE34
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x140a
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.2byte	0xc1a
	.4byte	0x13bd
	.byte	0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskCheckForTimeOut\000"
	.byte	0x1
	.2byte	0xc22
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB35
	.4byte	.LFE35
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x14a1
	.uleb128 0x16
	.4byte	.LASF24
	.byte	0x1
	.2byte	0xc22
	.4byte	0x13bd
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x17
	.ascii	"pxTicksToWait\000"
	.byte	0x1
	.2byte	0xc22
	.4byte	0x9cc
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xc24
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB20
	.4byte	.LBE20
	.uleb128 0x18
	.4byte	.LASF13
	.byte	0x1
	.2byte	0xc2c
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x1a
	.ascii	"xElapsedTime\000"
	.byte	0x1
	.2byte	0xc2d
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.ascii	"vTaskMissedYield\000"
	.byte	0x1
	.2byte	0xc61
	.byte	0x1
	.4byte	.LFB36
	.4byte	.LFE36
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x1b
	.ascii	"prvIdleTask\000"
	.byte	0x1
	.2byte	0xc98
	.byte	0x1
	.4byte	.LFB37
	.4byte	.LFE37
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x150c
	.uleb128 0x16
	.4byte	.LASF5
	.byte	0x1
	.2byte	0xc98
	.4byte	0x1aa
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x19
	.4byte	.LBB21
	.4byte	.LBE21
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0xcc2
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x1b
	.ascii	"prvInitialiseTaskLists\000"
	.byte	0x1
	.2byte	0xd6c
	.byte	0x1
	.4byte	.LFB38
	.4byte	.LFE38
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1547
	.uleb128 0x18
	.4byte	.LASF3
	.byte	0x1
	.2byte	0xd6e
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1b
	.ascii	"prvCheckTasksWaitingTermination\000"
	.byte	0x1
	.2byte	0xd8c
	.byte	0x1
	.4byte	.LFB39
	.4byte	.LFE39
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1595
	.uleb128 0x19
	.4byte	.LBB22
	.4byte	.LBE22
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0xd93
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x23
	.ascii	"prvTaskCheckFreeStackSpace\000"
	.byte	0x1
	.2byte	0xe2c
	.byte	0x1
	.4byte	0x11d
	.4byte	.LFB40
	.4byte	.LFE40
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x15f4
	.uleb128 0x17
	.ascii	"pucStackByte\000"
	.byte	0x1
	.2byte	0xe2c
	.4byte	0x15f4
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.ascii	"ulCount\000"
	.byte	0x1
	.2byte	0xe2e
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x15fa
	.uleb128 0xe
	.4byte	0xee
	.uleb128 0x15
	.byte	0x1
	.ascii	"uxTaskGetStackHighWaterMark\000"
	.byte	0x1
	.2byte	0xe40
	.byte	0x1
	.4byte	0x1d1
	.4byte	.LFB41
	.4byte	.LFE41
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x167b
	.uleb128 0x16
	.4byte	.LASF14
	.byte	0x1
	.2byte	0xe40
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0xe42
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.ascii	"pucEndOfStack\000"
	.byte	0x1
	.2byte	0xe43
	.4byte	0x1f6
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF15
	.byte	0x1
	.2byte	0xe44
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x1b
	.ascii	"prvDeleteTCB\000"
	.byte	0x1
	.2byte	0xe5c
	.byte	0x1
	.4byte	.LFB42
	.4byte	.LFE42
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x16ac
	.uleb128 0x16
	.4byte	.LASF10
	.byte	0x1
	.2byte	0xe5c
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x24
	.ascii	"prvResetNextTaskUnblockTime\000"
	.byte	0x1
	.2byte	0xe92
	.byte	0x1
	.4byte	.LFB43
	.4byte	.LFE43
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x16ec
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0xe94
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.ascii	"xTaskGetCurrentTaskHandle\000"
	.byte	0x1
	.2byte	0xeac
	.byte	0x1
	.4byte	0x34c
	.4byte	.LFB44
	.4byte	.LFE44
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x172f
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xeae
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.ascii	"xTaskGetSchedulerState\000"
	.byte	0x1
	.2byte	0xebd
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB45
	.4byte	.LFE45
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x176f
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xebf
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskPriorityInherit\000"
	.byte	0x1
	.2byte	0xed9
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB46
	.4byte	.LFE46
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x17d8
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.2byte	0xed9
	.4byte	0xd16
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x1a
	.ascii	"pxMutexHolderTCB\000"
	.byte	0x1
	.2byte	0xedb
	.4byte	0xd74
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xedc
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskPriorityDisinherit\000"
	.byte	0x1
	.2byte	0xf30
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB47
	.4byte	.LFE47
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1837
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.2byte	0xf30
	.4byte	0xd16
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0xf32
	.4byte	0xd74
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0xf33
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskPriorityDisinheritAfterTimeout\000"
	.byte	0x1
	.2byte	0xf80
	.byte	0x1
	.4byte	.LFB48
	.4byte	.LFE48
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x18ff
	.uleb128 0x16
	.4byte	.LASF25
	.byte	0x1
	.2byte	0xf80
	.4byte	0xd16
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x17
	.ascii	"uxHighestPriorityWaitingTask\000"
	.byte	0x1
	.2byte	0xf80
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0xf82
	.4byte	0xd74
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF16
	.byte	0x1
	.2byte	0xf83
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x1a
	.ascii	"uxPriorityToUse\000"
	.byte	0x1
	.2byte	0xf83
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x1a
	.ascii	"uxOnlyOneMutexHeld\000"
	.byte	0x1
	.2byte	0xf84
	.4byte	0x18ff
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0xe
	.4byte	0x1d1
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskEnterCritical\000"
	.byte	0x1
	.2byte	0xfe6
	.byte	0x1
	.4byte	.LFB49
	.4byte	.LFE49
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1946
	.uleb128 0x19
	.4byte	.LBB23
	.4byte	.LBE23
	.uleb128 0x18
	.4byte	.LASF20
	.byte	0x1
	.2byte	0xfe8
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.ascii	"vTaskExitCritical\000"
	.byte	0x1
	.2byte	0x1004
	.byte	0x1
	.4byte	.LFB50
	.4byte	.LFE50
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1987
	.uleb128 0x19
	.4byte	.LBB24
	.4byte	.LBE24
	.uleb128 0x18
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x100e
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.ascii	"uxTaskResetEventItemValue\000"
	.byte	0x1
	.2byte	0x111b
	.byte	0x1
	.4byte	0x1e4
	.4byte	.LFB51
	.4byte	.LFE51
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x19ca
	.uleb128 0x18
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x111d
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.ascii	"pvTaskIncrementMutexHeldCount\000"
	.byte	0x1
	.2byte	0x112b
	.byte	0x1
	.4byte	0x1aa
	.4byte	.LFB52
	.4byte	.LFE52
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.ascii	"ulTaskNotifyTake\000"
	.byte	0x1
	.2byte	0x113c
	.byte	0x1
	.4byte	0x145
	.4byte	.LFB53
	.4byte	.LFE53
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1a81
	.uleb128 0x17
	.ascii	"xClearCountOnExit\000"
	.byte	0x1
	.2byte	0x113c
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x113c
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x1a
	.ascii	"ulReturn\000"
	.byte	0x1
	.2byte	0x113e
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x19
	.4byte	.LBB25
	.4byte	.LBE25
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x1151
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskNotifyWait\000"
	.byte	0x1
	.2byte	0x1180
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB54
	.4byte	.LFE54
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1b41
	.uleb128 0x17
	.ascii	"ulBitsToClearOnEntry\000"
	.byte	0x1
	.2byte	0x1180
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x17
	.ascii	"ulBitsToClearOnExit\000"
	.byte	0x1
	.2byte	0x1180
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x17
	.ascii	"pulNotificationValue\000"
	.byte	0x1
	.2byte	0x1180
	.4byte	0x1b41
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1180
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x1182
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x19
	.4byte	.LBB26
	.4byte	.LBE26
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x119a
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x145
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskGenericNotify\000"
	.byte	0x1
	.2byte	0x11d0
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB55
	.4byte	.LFE55
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1bfe
	.uleb128 0x16
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x11d0
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x17
	.ascii	"ulValue\000"
	.byte	0x1
	.2byte	0x11d0
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x17
	.ascii	"eAction\000"
	.byte	0x1
	.2byte	0x11d0
	.4byte	0x41f
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x16
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x11d0
	.4byte	0x1b41
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x11d2
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x11d3
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x11d4
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x19
	.4byte	.LBB27
	.4byte	.LBE27
	.uleb128 0x18
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x1224
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskGenericNotifyFromISR\000"
	.byte	0x1
	.2byte	0x123a
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB56
	.4byte	.LFE56
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1cc1
	.uleb128 0x16
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x123a
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x17
	.ascii	"ulValue\000"
	.byte	0x1
	.2byte	0x123a
	.4byte	0x145
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x17
	.ascii	"eAction\000"
	.byte	0x1
	.2byte	0x123a
	.4byte	0x41f
	.byte	0x2
	.byte	0x91
	.sleb128 48
	.uleb128 0x16
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x123a
	.4byte	0x1b41
	.byte	0x2
	.byte	0x91
	.sleb128 52
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x123a
	.4byte	0x1cc1
	.byte	0x2
	.byte	0x91
	.sleb128 56
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x123c
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x123d
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 28
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x123e
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x123f
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1bf
	.uleb128 0x1c
	.byte	0x1
	.ascii	"vTaskNotifyGiveFromISR\000"
	.byte	0x1
	.2byte	0x12b6
	.byte	0x1
	.4byte	.LFB57
	.4byte	.LFE57
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1d3f
	.uleb128 0x16
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x12b6
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 40
	.uleb128 0x16
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x12b6
	.4byte	0x1cc1
	.byte	0x2
	.byte	0x91
	.sleb128 44
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x12b8
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.uleb128 0x18
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x12b9
	.4byte	0xee
	.byte	0x2
	.byte	0x91
	.sleb128 24
	.uleb128 0x18
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x12ba
	.4byte	0x1d1
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.ascii	"xTaskNotifyStateClear\000"
	.byte	0x1
	.2byte	0x130f
	.byte	0x1
	.4byte	0x1bf
	.4byte	.LFB58
	.4byte	.LFE58
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1d9c
	.uleb128 0x16
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x130f
	.4byte	0x34c
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x18
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x1311
	.4byte	0x75f
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x1312
	.4byte	0x1bf
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x1b
	.ascii	"prvAddCurrentTaskToDelayedList\000"
	.byte	0x1
	.2byte	0x132d
	.byte	0x1
	.4byte	.LFB59
	.4byte	.LFE59
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.4byte	0x1e1e
	.uleb128 0x16
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x132d
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 32
	.uleb128 0x17
	.ascii	"xCanBlockIndefinitely\000"
	.byte	0x1
	.2byte	0x132d
	.4byte	0x129d
	.byte	0x2
	.byte	0x91
	.sleb128 36
	.uleb128 0x18
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x132f
	.4byte	0x1e4
	.byte	0x2
	.byte	0x91
	.sleb128 20
	.uleb128 0x18
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x1330
	.4byte	0x9d7
	.byte	0x2
	.byte	0x91
	.sleb128 16
	.byte	0
	.uleb128 0x12
	.4byte	0x33e
	.4byte	0x1e2e
	.uleb128 0x13
	.4byte	0x1fc
	.byte	0x7
	.byte	0
	.uleb128 0x1a
	.ascii	"pxReadyTasksLists\000"
	.byte	0x1
	.2byte	0x15f
	.4byte	0x1e1e
	.byte	0x5
	.byte	0x3
	.4byte	pxReadyTasksLists
	.uleb128 0x1a
	.ascii	"xDelayedTaskList1\000"
	.byte	0x1
	.2byte	0x160
	.4byte	0x33e
	.byte	0x5
	.byte	0x3
	.4byte	xDelayedTaskList1
	.uleb128 0x1a
	.ascii	"xDelayedTaskList2\000"
	.byte	0x1
	.2byte	0x161
	.4byte	0x33e
	.byte	0x5
	.byte	0x3
	.4byte	xDelayedTaskList2
	.uleb128 0x1a
	.ascii	"pxDelayedTaskList\000"
	.byte	0x1
	.2byte	0x162
	.4byte	0x1eae
	.byte	0x5
	.byte	0x3
	.4byte	pxDelayedTaskList
	.uleb128 0xb
	.4byte	0xaae
	.uleb128 0x1a
	.ascii	"pxOverflowDelayedTaskList\000"
	.byte	0x1
	.2byte	0x163
	.4byte	0x1eae
	.byte	0x5
	.byte	0x3
	.4byte	pxOverflowDelayedTaskList
	.uleb128 0x1a
	.ascii	"xPendingReadyList\000"
	.byte	0x1
	.2byte	0x164
	.4byte	0x33e
	.byte	0x5
	.byte	0x3
	.4byte	xPendingReadyList
	.uleb128 0x1a
	.ascii	"xTasksWaitingTermination\000"
	.byte	0x1
	.2byte	0x168
	.4byte	0x33e
	.byte	0x5
	.byte	0x3
	.4byte	xTasksWaitingTermination
	.uleb128 0x1a
	.ascii	"uxDeletedTasksWaitingCleanUp\000"
	.byte	0x1
	.2byte	0x169
	.4byte	0x333
	.byte	0x5
	.byte	0x3
	.4byte	uxDeletedTasksWaitingCleanUp
	.uleb128 0x1a
	.ascii	"xSuspendedTaskList\000"
	.byte	0x1
	.2byte	0x16f
	.4byte	0x33e
	.byte	0x5
	.byte	0x3
	.4byte	xSuspendedTaskList
	.uleb128 0x1a
	.ascii	"uxCurrentNumberOfTasks\000"
	.byte	0x1
	.2byte	0x174
	.4byte	0x333
	.byte	0x5
	.byte	0x3
	.4byte	uxCurrentNumberOfTasks
	.uleb128 0x1a
	.ascii	"xTickCount\000"
	.byte	0x1
	.2byte	0x175
	.4byte	0x1fac
	.byte	0x5
	.byte	0x3
	.4byte	xTickCount
	.uleb128 0xb
	.4byte	0x1e4
	.uleb128 0x1a
	.ascii	"uxTopReadyPriority\000"
	.byte	0x1
	.2byte	0x176
	.4byte	0x333
	.byte	0x5
	.byte	0x3
	.4byte	uxTopReadyPriority
	.uleb128 0x1a
	.ascii	"xSchedulerRunning\000"
	.byte	0x1
	.2byte	0x177
	.4byte	0x1ff2
	.byte	0x5
	.byte	0x3
	.4byte	xSchedulerRunning
	.uleb128 0xb
	.4byte	0x1bf
	.uleb128 0x1a
	.ascii	"uxPendedTicks\000"
	.byte	0x1
	.2byte	0x178
	.4byte	0x333
	.byte	0x5
	.byte	0x3
	.4byte	uxPendedTicks
	.uleb128 0x1a
	.ascii	"xYieldPending\000"
	.byte	0x1
	.2byte	0x179
	.4byte	0x1ff2
	.byte	0x5
	.byte	0x3
	.4byte	xYieldPending
	.uleb128 0x1a
	.ascii	"xNumOfOverflows\000"
	.byte	0x1
	.2byte	0x17a
	.4byte	0x1ff2
	.byte	0x5
	.byte	0x3
	.4byte	xNumOfOverflows
	.uleb128 0x1a
	.ascii	"uxTaskNumber\000"
	.byte	0x1
	.2byte	0x17b
	.4byte	0x1d1
	.byte	0x5
	.byte	0x3
	.4byte	uxTaskNumber
	.uleb128 0x1a
	.ascii	"xNextTaskUnblockTime\000"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x1fac
	.byte	0x5
	.byte	0x3
	.4byte	xNextTaskUnblockTime
	.uleb128 0x1a
	.ascii	"xIdleTaskHandle\000"
	.byte	0x1
	.2byte	0x17d
	.4byte	0x34c
	.byte	0x5
	.byte	0x3
	.4byte	xIdleTaskHandle
	.uleb128 0x1a
	.ascii	"uxSchedulerSuspended\000"
	.byte	0x1
	.2byte	0x187
	.4byte	0x333
	.byte	0x5
	.byte	0x3
	.4byte	uxSchedulerSuspended
	.uleb128 0x25
	.ascii	"uxInterruptNesting\000"
	.byte	0x5
	.byte	0xbd
	.4byte	0x333
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.ascii	"pxCurrentTCB\000"
	.byte	0x1
	.2byte	0x15c
	.4byte	0x2104
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.4byte	pxCurrentTCB
	.uleb128 0xb
	.4byte	0x75f
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x10
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
.LASF14:
	.ascii	"xTask\000"
.LASF13:
	.ascii	"xConstTickCount\000"
.LASF29:
	.ascii	"pxHigherPriorityTaskWoken\000"
.LASF16:
	.ascii	"uxPriorityUsedOnEntry\000"
.LASF0:
	.ascii	"xItemValue\000"
.LASF12:
	.ascii	"xAlreadyYielded\000"
.LASF28:
	.ascii	"ucOriginalNotifyState\000"
.LASF22:
	.ascii	"xTicksToWait\000"
.LASF26:
	.ascii	"xTaskToNotify\000"
.LASF27:
	.ascii	"pulPreviousNotificationValue\000"
.LASF1:
	.ascii	"pxPrevious\000"
.LASF10:
	.ascii	"pxTCB\000"
.LASF17:
	.ascii	"xYieldRequired\000"
.LASF6:
	.ascii	"pxCreatedTask\000"
.LASF7:
	.ascii	"pxNewTCB\000"
.LASF24:
	.ascii	"pxTimeOut\000"
.LASF8:
	.ascii	"xReturn\000"
.LASF18:
	.ascii	"xTaskToResume\000"
.LASF3:
	.ascii	"uxPriority\000"
.LASF9:
	.ascii	"ulCause\000"
.LASF21:
	.ascii	"pxEventList\000"
.LASF4:
	.ascii	"pxTaskCode\000"
.LASF15:
	.ascii	"uxReturn\000"
.LASF5:
	.ascii	"pvParameters\000"
.LASF25:
	.ascii	"pxMutexHolder\000"
.LASF2:
	.ascii	"pxTopOfStack\000"
.LASF11:
	.ascii	"xTimeToWake\000"
.LASF19:
	.ascii	"uxSavedInterruptStatus\000"
.LASF23:
	.ascii	"pxUnblockedTCB\000"
.LASF20:
	.ascii	"ulStatus\000"
	.ident	"GCC: (Microchip Technology) 4.8.3 MPLAB XC32 Compiler v1.44"
# Begin MCHP vector dispatch table
# End MCHP vector dispatch table
# Microchip Technology PIC32 MCU configuration words
