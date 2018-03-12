	.cpu cortex-m0
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"timer_11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chip_TIMER_Init,"ax",%progbits
	.align	1
	.global	Chip_TIMER_Init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_TIMER_Init, %function
Chip_TIMER_Init:
.LFB199:
	.file 1 "src/timer_11xx.c"
	.loc 1 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL1:
.LBB10:
.LBB11:
	.loc 1 50 0
	ldr	r3, .L6
	cmp	r0, r3
	beq	.L3
	.loc 1 53 0
	ldr	r3, .L6+4
	cmp	r0, r3
	beq	.L4
	.loc 1 60 0
	ldr	r3, .L6+8
	mov	ip, r3
	add	r0, r0, ip
.LVL2:
	subs	r3, r0, #1
	sbcs	r0, r0, r3
.LVL3:
	adds	r0, r0, #8
.L2:
.LVL4:
.LBE11:
.LBE10:
.LBB13:
.LBB14:
	.file 2 "./inc/clock_11xx.h"
	.loc 2 297 0
	ldr	r1, .L6+12
	movs	r2, #128
	ldr	r4, [r1, r2]
	movs	r3, #1
	lsls	r3, r3, r0
	orrs	r3, r4
	str	r3, [r1, r2]
.LBE14:
.LBE13:
	.loc 1 74 0
	@ sp needed
	pop	{r4, pc}
.LVL5:
.L3:
.LBB15:
.LBB12:
	.loc 1 51 0
	movs	r0, #10
.LVL6:
	b	.L2
.LVL7:
.L4:
	.loc 1 54 0
	movs	r0, #7
.LVL8:
	b	.L2
.L7:
	.align	2
.L6:
	.word	1073840128
	.word	1073790976
	.word	-1073807360
	.word	1074036736
.LBE12:
.LBE15:
	.cfi_endproc
.LFE199:
	.size	Chip_TIMER_Init, .-Chip_TIMER_Init
	.section	.text.Chip_TIMER_DeInit,"ax",%progbits
	.align	1
	.global	Chip_TIMER_DeInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_TIMER_DeInit, %function
Chip_TIMER_DeInit:
.LFB200:
	.loc 1 78 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL9:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL10:
.LBB20:
.LBB21:
	.loc 1 50 0
	ldr	r3, .L13
	cmp	r0, r3
	beq	.L10
	.loc 1 53 0
	ldr	r3, .L13+4
	cmp	r0, r3
	beq	.L11
	.loc 1 60 0
	ldr	r3, .L13+8
	mov	ip, r3
	add	r0, r0, ip
.LVL11:
	subs	r3, r0, #1
	sbcs	r0, r0, r3
.LVL12:
	adds	r0, r0, #8
.L9:
.LVL13:
.LBE21:
.LBE20:
.LBB23:
.LBB24:
	.loc 2 307 0
	ldr	r4, .L13+12
	movs	r1, #128
	ldr	r3, [r4, r1]
	movs	r2, #1
	lsls	r2, r2, r0
	bics	r3, r2
	str	r3, [r4, r1]
.LBE24:
.LBE23:
	.loc 1 80 0
	@ sp needed
	pop	{r4, pc}
.LVL14:
.L10:
.LBB25:
.LBB22:
	.loc 1 51 0
	movs	r0, #10
.LVL15:
	b	.L9
.LVL16:
.L11:
	.loc 1 54 0
	movs	r0, #7
.LVL17:
	b	.L9
.L14:
	.align	2
.L13:
	.word	1073840128
	.word	1073790976
	.word	-1073807360
	.word	1074036736
.LBE22:
.LBE25:
	.cfi_endproc
.LFE200:
	.size	Chip_TIMER_DeInit, .-Chip_TIMER_DeInit
	.section	.text.Chip_TIMER_Reset,"ax",%progbits
	.align	1
	.global	Chip_TIMER_Reset
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_TIMER_Reset, %function
Chip_TIMER_Reset:
.LFB201:
	.loc 1 84 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL18:
	.loc 1 88 0
	ldr	r2, [r0, #4]
.LVL19:
	.loc 1 89 0
	movs	r3, #0
	str	r3, [r0, #4]
	.loc 1 90 0
	adds	r3, r3, #1
	str	r3, [r0, #8]
	.loc 1 93 0
	adds	r3, r3, #1
	str	r3, [r0, #4]
.L16:
	.loc 1 96 0 discriminator 1
	ldr	r3, [r0, #8]
	cmp	r3, #0
	bne	.L16
	.loc 1 99 0
	str	r2, [r0, #4]
	.loc 1 100 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE201:
	.size	Chip_TIMER_Reset, .-Chip_TIMER_Reset
	.section	.text.Chip_TIMER_ExtMatchControlSet,"ax",%progbits
	.align	1
	.global	Chip_TIMER_ExtMatchControlSet
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_TIMER_ExtMatchControlSet, %function
Chip_TIMER_ExtMatchControlSet:
.LFB202:
	.loc 1 105 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL20:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	.loc 1 109 0
	adds	r6, r3, #2
	lsls	r6, r6, #1
.LVL21:
	.loc 1 110 0
	ldr	r5, [r0, #60]
	.loc 1 109 0
	movs	r4, #1
	lsls	r4, r4, r3
	movs	r7, #3
	lsls	r7, r7, r6
	orrs	r4, r7
.LVL22:
	.loc 1 110 0
	bics	r5, r4
	str	r5, [r0, #60]
.LVL23:
	.loc 1 113 0
	lsls	r1, r1, r3
.LVL24:
	.loc 1 114 0
	lsls	r2, r2, r6
.LVL25:
	.loc 1 113 0
	orrs	r1, r2
	orrs	r1, r5
	str	r1, [r0, #60]
	.loc 1 115 0
	@ sp needed
.LVL26:
.LVL27:
.LVL28:
	pop	{r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE202:
	.size	Chip_TIMER_ExtMatchControlSet, .-Chip_TIMER_ExtMatchControlSet
	.text
.Letext0:
	.file 3 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./inc/chip.h"
	.file 6 "./inc/sysctl_11xx.h"
	.file 7 "./inc/timer_11xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x862
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x3
	.byte	0x29
	.4byte	0x30
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x2
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4f
	.4byte	0x5e
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x4
	.byte	0x14
	.4byte	0x25
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x4
	.byte	0x30
	.4byte	0x53
	.uleb128 0x5
	.4byte	0x8c
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x8c
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0x97
	.4byte	0xc4
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0xb4
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd3
	.4byte	0xa1
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0xe2
	.4byte	0xa1
	.uleb128 0x7
	.4byte	0x97
	.4byte	0xef
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0xdf
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x104
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0xf4
	.uleb128 0x5
	.4byte	0x104
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x11e
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0x10e
	.uleb128 0x5
	.4byte	0x11e
	.uleb128 0xa
	.2byte	0x3f8
	.byte	0x6
	.byte	0x2f
	.4byte	0x43d
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x6
	.byte	0x30
	.4byte	0x97
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x31
	.4byte	0x97
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x32
	.4byte	0x97
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x33
	.4byte	0x9c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x34
	.4byte	0x97
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x35
	.4byte	0x9c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x36
	.4byte	0x452
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x37
	.4byte	0x97
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x38
	.4byte	0x97
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x39
	.4byte	0x97
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3a
	.4byte	0x97
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3b
	.4byte	0x97
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3c
	.4byte	0x123
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3d
	.4byte	0x97
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3e
	.4byte	0x97
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3f
	.4byte	0x97
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x40
	.4byte	0x97
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.4byte	0x471
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x42
	.4byte	0x97
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x43
	.4byte	0x97
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x44
	.4byte	0x97
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x45
	.4byte	0x9c
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x46
	.4byte	0x97
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x47
	.4byte	0x109
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x48
	.4byte	0x97
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x49
	.4byte	0x97
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4a
	.4byte	0x97
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4b
	.4byte	0x476
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4c
	.4byte	0x97
	.byte	0xc0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4d
	.4byte	0x97
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x4e
	.4byte	0x97
	.byte	0xc8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x4f
	.4byte	0x9c
	.byte	0xcc
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x50
	.4byte	0x97
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x51
	.4byte	0x97
	.byte	0xd4
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x52
	.4byte	0x97
	.byte	0xd8
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x53
	.4byte	0x9c
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x54
	.4byte	0x97
	.byte	0xe0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x55
	.4byte	0x97
	.byte	0xe4
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0x56
	.4byte	0x97
	.byte	0xe8
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0x57
	.4byte	0x490
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0x58
	.4byte	0x457
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0x59
	.4byte	0x4aa
	.2byte	0x108
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0x5a
	.4byte	0x97
	.2byte	0x150
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0x5b
	.4byte	0x97
	.2byte	0x154
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0x5c
	.4byte	0x4c4
	.2byte	0x158
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0x5d
	.4byte	0x97
	.2byte	0x170
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0x5e
	.4byte	0x97
	.2byte	0x174
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0x5f
	.4byte	0xc4
	.2byte	0x178
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x6
	.byte	0x60
	.4byte	0x97
	.2byte	0x198
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x6
	.byte	0x61
	.4byte	0x9c
	.2byte	0x19c
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x6
	.byte	0x62
	.4byte	0x4e3
	.2byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x6
	.byte	0x63
	.4byte	0x97
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x6
	.byte	0x64
	.4byte	0x97
	.2byte	0x204
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x6
	.byte	0x65
	.4byte	0x97
	.2byte	0x208
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x6
	.byte	0x66
	.4byte	0x97
	.2byte	0x20c
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x6
	.byte	0x67
	.4byte	0x9c
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x6
	.byte	0x68
	.4byte	0x97
	.2byte	0x214
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x6
	.byte	0x69
	.4byte	0x4c9
	.2byte	0x218
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x6
	.byte	0x6a
	.4byte	0x97
	.2byte	0x230
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x6
	.byte	0x6b
	.4byte	0x97
	.2byte	0x234
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x6
	.byte	0x6c
	.4byte	0x97
	.2byte	0x238
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x6
	.byte	0x6d
	.4byte	0x4fd
	.2byte	0x23c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0x6e
	.4byte	0x9c
	.2byte	0x3f4
	.byte	0
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x44d
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x43d
	.uleb128 0x5
	.4byte	0x44d
	.uleb128 0x5
	.4byte	0x44d
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x46c
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x45c
	.uleb128 0x5
	.4byte	0x46c
	.uleb128 0x5
	.4byte	0x46c
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x48b
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x47b
	.uleb128 0x5
	.4byte	0x48b
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x4a5
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x495
	.uleb128 0x5
	.4byte	0x4a5
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x4bf
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0x4af
	.uleb128 0x5
	.4byte	0x4bf
	.uleb128 0x5
	.4byte	0x4bf
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x4de
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x4ce
	.uleb128 0x5
	.4byte	0x4de
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x4f8
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x6d
	.byte	0
	.uleb128 0x6
	.4byte	0x4e8
	.uleb128 0x5
	.4byte	0x4f8
	.uleb128 0x2
	.4byte	.LASF80
	.byte	0x6
	.byte	0x6f
	.4byte	0x128
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x2
	.byte	0xe4
	.4byte	0x591
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF100
	.byte	0x2
	.2byte	0x120
	.4byte	0x50d
	.uleb128 0x10
	.byte	0x78
	.byte	0x7
	.byte	0x2f
	.4byte	0x63c
	.uleb128 0x11
	.ascii	"IR\000"
	.byte	0x7
	.byte	0x30
	.4byte	0x97
	.byte	0
	.uleb128 0x11
	.ascii	"TCR\000"
	.byte	0x7
	.byte	0x31
	.4byte	0x97
	.byte	0x4
	.uleb128 0x11
	.ascii	"TC\000"
	.byte	0x7
	.byte	0x32
	.4byte	0x97
	.byte	0x8
	.uleb128 0x11
	.ascii	"PR\000"
	.byte	0x7
	.byte	0x33
	.4byte	0x97
	.byte	0xc
	.uleb128 0x11
	.ascii	"PC\000"
	.byte	0x7
	.byte	0x34
	.4byte	0x97
	.byte	0x10
	.uleb128 0x11
	.ascii	"MCR\000"
	.byte	0x7
	.byte	0x35
	.4byte	0x97
	.byte	0x14
	.uleb128 0x11
	.ascii	"MR\000"
	.byte	0x7
	.byte	0x36
	.4byte	0xef
	.byte	0x18
	.uleb128 0x11
	.ascii	"CCR\000"
	.byte	0x7
	.byte	0x37
	.4byte	0x97
	.byte	0x28
	.uleb128 0x11
	.ascii	"CR\000"
	.byte	0x7
	.byte	0x38
	.4byte	0xef
	.byte	0x2c
	.uleb128 0x11
	.ascii	"EMR\000"
	.byte	0x7
	.byte	0x39
	.4byte	0x97
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x7
	.byte	0x3a
	.4byte	0x651
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x7
	.byte	0x3b
	.4byte	0x97
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x7
	.byte	0x3c
	.4byte	0x97
	.byte	0x74
	.byte	0
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x64c
	.uleb128 0x8
	.4byte	0x7a
	.byte	0xb
	.byte	0
	.uleb128 0x6
	.4byte	0x63c
	.uleb128 0x5
	.4byte	0x64c
	.uleb128 0x2
	.4byte	.LASF104
	.byte	0x7
	.byte	0x3d
	.4byte	0x59d
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.2byte	0x186
	.4byte	0x68c
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF110
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x18b
	.4byte	0x661
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x11c
	.4byte	0x8c
	.uleb128 0x14
	.4byte	.LASF118
	.byte	0x1
	.byte	0x67
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x710
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x1
	.byte	0x67
	.4byte	0x710
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x16
	.4byte	.LASF114
	.byte	0x1
	.byte	0x67
	.4byte	0x81
	.4byte	.LLST4
	.uleb128 0x16
	.4byte	.LASF115
	.byte	0x1
	.byte	0x68
	.4byte	0x68c
	.4byte	.LLST5
	.uleb128 0x15
	.4byte	.LASF116
	.byte	0x1
	.byte	0x68
	.4byte	0x81
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x17
	.4byte	.LASF117
	.byte	0x1
	.byte	0x6a
	.4byte	0x8c
	.4byte	.LLST6
	.uleb128 0x18
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x6a
	.4byte	0x8c
	.4byte	.LLST7
	.byte	0
	.uleb128 0x19
	.byte	0x4
	.4byte	0x656
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x1
	.byte	0x53
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x746
	.uleb128 0x15
	.4byte	.LASF113
	.byte	0x1
	.byte	0x53
	.4byte	0x710
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1a
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x55
	.4byte	0x8c
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x1
	.byte	0x4d
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7aa
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0x4d
	.4byte	0x710
	.4byte	.LLST2
	.uleb128 0x1b
	.4byte	0x80e
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x4f
	.4byte	0x794
	.uleb128 0x1c
	.4byte	0x81e
	.4byte	.LLST3
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x1e
	.4byte	0x829
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x835
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x4f
	.uleb128 0x20
	.4byte	0x842
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LASF121
	.byte	0x1
	.byte	0x47
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80e
	.uleb128 0x16
	.4byte	.LASF113
	.byte	0x1
	.byte	0x47
	.4byte	0x710
	.4byte	.LLST0
	.uleb128 0x1b
	.4byte	0x80e
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x49
	.4byte	0x7f8
	.uleb128 0x1c
	.4byte	0x81e
	.4byte	.LLST1
	.uleb128 0x1d
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x1e
	.4byte	0x829
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	0x84f
	.4byte	.LBB13
	.4byte	.LBE13-.LBB13
	.byte	0x1
	.byte	0x49
	.uleb128 0x20
	.4byte	0x858
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0x1
	.byte	0x2f
	.4byte	0x591
	.byte	0x1
	.4byte	0x835
	.uleb128 0x22
	.4byte	.LASF113
	.byte	0x1
	.byte	0x2f
	.4byte	0x710
	.uleb128 0x23
	.4byte	.LASF126
	.byte	0x1
	.byte	0x31
	.4byte	0x591
	.byte	0
	.uleb128 0x24
	.4byte	.LASF127
	.byte	0x2
	.2byte	0x131
	.byte	0x3
	.4byte	0x84f
	.uleb128 0x25
	.ascii	"clk\000"
	.byte	0x2
	.2byte	0x131
	.4byte	0x591
	.byte	0
	.uleb128 0x26
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x127
	.byte	0x3
	.uleb128 0x25
	.ascii	"clk\000"
	.byte	0x2
	.2byte	0x127
	.4byte	0x591
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
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
	.uleb128 0x11
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL24
	.4byte	.LFE202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL20
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL25
	.4byte	.LFE202
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0xa
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x33
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0xa
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x33
	.byte	0x76
	.sleb128 0
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE202
	.2byte	0xc
	.byte	0x31
	.byte	0x73
	.sleb128 0
	.byte	0x24
	.byte	0x33
	.byte	0x73
	.sleb128 2
	.byte	0x31
	.byte	0x24
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x7
	.byte	0x70
	.sleb128 1073807360
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LFE200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x7
	.byte	0x70
	.sleb128 1073807360
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LFE200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x7
	.byte	0x70
	.sleb128 1073807360
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LFE199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x7
	.byte	0x70
	.sleb128 1073807360
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LFE199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	0
	.4byte	0
	.4byte	.LFB199
	.4byte	.LFE199
	.4byte	.LFB200
	.4byte	.LFE200
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	.LFB202
	.4byte	.LFE202
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF45:
	.ascii	"USBCLKSEL\000"
.LASF41:
	.ascii	"SSP0CLKDIV\000"
.LASF94:
	.ascii	"SYSCTL_CLOCK_ADC\000"
.LASF76:
	.ascii	"PDWAKECFG\000"
.LASF49:
	.ascii	"WDTCLKSEL\000"
.LASF43:
	.ascii	"SSP1CLKDIV\000"
.LASF51:
	.ascii	"WDTCLKDIV\000"
.LASF79:
	.ascii	"DEVICEID\000"
.LASF96:
	.ascii	"SYSCTL_CLOCK_WDT\000"
.LASF20:
	.ascii	"SYSPLLSTAT\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF118:
	.ascii	"Chip_TIMER_ExtMatchControlSet\000"
.LASF25:
	.ascii	"WDTOSCCTRL\000"
.LASF99:
	.ascii	"SYSCTL_CLOCK_SSP1\000"
.LASF90:
	.ascii	"SYSCTL_CLOCK_CT32B0\000"
.LASF91:
	.ascii	"SYSCTL_CLOCK_CT32B1\000"
.LASF5:
	.ascii	"__int8_t\000"
.LASF87:
	.ascii	"SYSCTL_CLOCK_GPIO\000"
.LASF63:
	.ascii	"NMISRC\000"
.LASF8:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF123:
	.ascii	"src/timer_11xx.c\000"
.LASF127:
	.ascii	"Chip_Clock_DisablePeriphClock\000"
.LASF58:
	.ascii	"RESERVED10\000"
.LASF57:
	.ascii	"PIOPORCAP\000"
.LASF67:
	.ascii	"RESERVED12\000"
.LASF47:
	.ascii	"USBCLKDIV\000"
.LASF74:
	.ascii	"RESERVED14\000"
.LASF78:
	.ascii	"RESERVED15\000"
.LASF108:
	.ascii	"TIMER_EXTMATCH_CLEAR\000"
.LASF80:
	.ascii	"LPC_SYSCTL_T\000"
.LASF103:
	.ascii	"PWMC\000"
.LASF86:
	.ascii	"SYSCTL_CLOCK_I2C\000"
.LASF122:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF70:
	.ascii	"STARTRSRP0CLR\000"
.LASF19:
	.ascii	"SYSPLLCTRL\000"
.LASF115:
	.ascii	"matchState\000"
.LASF113:
	.ascii	"pTMR\000"
.LASF65:
	.ascii	"USBCLKCTRL\000"
.LASF105:
	.ascii	"CHIP_SYSCTL_CLOCK\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF117:
	.ascii	"mask\000"
.LASF98:
	.ascii	"SYSCTL_CLOCK_CAN\000"
.LASF92:
	.ascii	"SYSCTL_CLOCK_SSP0\000"
.LASF59:
	.ascii	"BODCTRL\000"
.LASF106:
	.ascii	"IP_TIMER_PIN_MATCH_STATE\000"
.LASF95:
	.ascii	"SYSCTL_CLOCK_RESERVED14\000"
.LASF53:
	.ascii	"CLKOUTSEL\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF112:
	.ascii	"SystemCoreClock\000"
.LASF64:
	.ascii	"PINTSEL\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF55:
	.ascii	"CLKOUTDIV\000"
.LASF126:
	.ascii	"tmrClk\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF62:
	.ascii	"IRQLATENCY\000"
.LASF69:
	.ascii	"STARTERP0\000"
.LASF73:
	.ascii	"STARTERP1\000"
.LASF82:
	.ascii	"SYSCTL_CLOCK_ROM\000"
.LASF27:
	.ascii	"LFOSCCTRL\000"
.LASF2:
	.ascii	"short int\000"
.LASF60:
	.ascii	"SYSTCKCAL\000"
.LASF17:
	.ascii	"SYSMEMREMAP\000"
.LASF125:
	.ascii	"Chip_TIMER_GetClock\000"
.LASF114:
	.ascii	"initial_state\000"
.LASF84:
	.ascii	"SYSCTL_CLOCK_FLASHREG\000"
.LASF24:
	.ascii	"SYSOSCCTRL\000"
.LASF85:
	.ascii	"SYSCTL_CLOCK_FLASHARRAY\000"
.LASF33:
	.ascii	"USBPLLCLKUEN\000"
.LASF36:
	.ascii	"MAINCLKUEN\000"
.LASF31:
	.ascii	"SYSPLLCLKUEN\000"
.LASF81:
	.ascii	"SYSCTL_CLOCK_SYS\000"
.LASF46:
	.ascii	"USBCLKUEN\000"
.LASF83:
	.ascii	"SYSCTL_CLOCK_RAM\000"
.LASF21:
	.ascii	"USBPLLCTRL\000"
.LASF42:
	.ascii	"USARTCLKDIV\000"
.LASF104:
	.ascii	"LPC_TIMER_T\000"
.LASF22:
	.ascii	"USBPLLSTAT\000"
.LASF128:
	.ascii	"Chip_Clock_EnablePeriphClock\000"
.LASF89:
	.ascii	"SYSCTL_CLOCK_CT16B1\000"
.LASF101:
	.ascii	"RESERVED0\000"
.LASF23:
	.ascii	"RESERVED1\000"
.LASF29:
	.ascii	"RESERVED2\000"
.LASF34:
	.ascii	"RESERVED3\000"
.LASF38:
	.ascii	"RESERVED4\000"
.LASF40:
	.ascii	"RESERVED5\000"
.LASF44:
	.ascii	"RESERVED6\000"
.LASF48:
	.ascii	"RESERVED7\000"
.LASF52:
	.ascii	"RESERVED8\000"
.LASF56:
	.ascii	"RESERVED9\000"
.LASF68:
	.ascii	"STARTAPRP0\000"
.LASF110:
	.ascii	"TIMER_EXTMATCH_TOGGLE\000"
.LASF14:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF50:
	.ascii	"WDTCLKUEN\000"
.LASF39:
	.ascii	"SYSAHBCLKCTRL\000"
.LASF37:
	.ascii	"SYSAHBCLKDIV\000"
.LASF121:
	.ascii	"Chip_TIMER_Init\000"
.LASF77:
	.ascii	"PDRUNCFG\000"
.LASF93:
	.ascii	"SYSCTL_CLOCK_UART0\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF97:
	.ascii	"SYSCTL_CLOCK_IOCON\000"
.LASF13:
	.ascii	"char\000"
.LASF116:
	.ascii	"matchnum\000"
.LASF28:
	.ascii	"SYSRSTSTAT\000"
.LASF88:
	.ascii	"SYSCTL_CLOCK_CT16B0\000"
.LASF124:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF111:
	.ascii	"TIMER_PIN_MATCH_STATE_T\000"
.LASF11:
	.ascii	"int8_t\000"
.LASF120:
	.ascii	"Chip_TIMER_DeInit\000"
.LASF61:
	.ascii	"RESERVED11\000"
.LASF72:
	.ascii	"RESERVED13\000"
.LASF16:
	.ascii	"ExtRateIn\000"
.LASF71:
	.ascii	"STARTSRP0\000"
.LASF107:
	.ascii	"TIMER_EXTMATCH_DO_NOTHING\000"
.LASF102:
	.ascii	"CTCR\000"
.LASF32:
	.ascii	"USBPLLCLKSEL\000"
.LASF35:
	.ascii	"MAINCLKSEL\000"
.LASF30:
	.ascii	"SYSPLLCLKSEL\000"
.LASF75:
	.ascii	"PDSLEEPCFG\000"
.LASF18:
	.ascii	"PRESETCTRL\000"
.LASF26:
	.ascii	"IRCCTRL\000"
.LASF15:
	.ascii	"OscRateIn\000"
.LASF4:
	.ascii	"long int\000"
.LASF66:
	.ascii	"USBCLKST\000"
.LASF54:
	.ascii	"CLKOUTUEN\000"
.LASF119:
	.ascii	"Chip_TIMER_Reset\000"
.LASF109:
	.ascii	"TIMER_EXTMATCH_SET\000"
.LASF100:
	.ascii	"CHIP_SYSCTL_CLOCK_T\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
