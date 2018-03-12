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
	.file	"sysctl_11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chip_SYSCTL_SetDeepSleepPD,"ax",%progbits
	.align	1
	.global	Chip_SYSCTL_SetDeepSleepPD
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_SYSCTL_SetDeepSleepPD, %function
Chip_SYSCTL_SetDeepSleepPD:
.LFB198:
	.file 1 "src/sysctl_11xx.c"
	.loc 1 89 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 91 0
	movs	r3, #255
	ands	r3, r0
	ldr	r0, .L2
.LVL1:
	orrs	r0, r3
	ldr	r2, .L2+4
	movs	r3, #140
	lsls	r3, r3, #2
	str	r0, [r2, r3]
	.loc 1 92 0
	@ sp needed
	bx	lr
.L3:
	.align	2
.L2:
	.word	6327
	.word	1074036736
	.cfi_endproc
.LFE198:
	.size	Chip_SYSCTL_SetDeepSleepPD, .-Chip_SYSCTL_SetDeepSleepPD
	.section	.text.Chip_SYSCTL_SetWakeup,"ax",%progbits
	.align	1
	.global	Chip_SYSCTL_SetWakeup
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_SYSCTL_SetWakeup, %function
Chip_SYSCTL_SetWakeup:
.LFB199:
	.loc 1 96 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL2:
	.loc 1 98 0
	movs	r3, #255
	ands	r3, r0
	movs	r0, #237
.LVL3:
	lsls	r0, r0, #8
	orrs	r0, r3
	ldr	r2, .L5
	movs	r3, #141
	lsls	r3, r3, #2
	str	r0, [r2, r3]
	.loc 1 99 0
	@ sp needed
	bx	lr
.L6:
	.align	2
.L5:
	.word	1074036736
	.cfi_endproc
.LFE199:
	.size	Chip_SYSCTL_SetWakeup, .-Chip_SYSCTL_SetWakeup
	.section	.text.Chip_SYSCTL_PowerDown,"ax",%progbits
	.align	1
	.global	Chip_SYSCTL_PowerDown
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_SYSCTL_PowerDown, %function
Chip_SYSCTL_PowerDown:
.LFB200:
	.loc 1 105 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 108 0
	ldr	r1, .L8
	movs	r2, #142
	lsls	r2, r2, #2
	ldr	r3, [r1, r2]
.LVL5:
	.loc 1 109 0
	orrs	r0, r3
.LVL6:
	movs	r3, #255
.LVL7:
	ands	r3, r0
.LVL8:
	.loc 1 111 0
	movs	r0, #237
	lsls	r0, r0, #8
	orrs	r0, r3
	str	r0, [r1, r2]
	.loc 1 112 0
	@ sp needed
	bx	lr
.L9:
	.align	2
.L8:
	.word	1074036736
	.cfi_endproc
.LFE200:
	.size	Chip_SYSCTL_PowerDown, .-Chip_SYSCTL_PowerDown
	.section	.text.Chip_SYSCTL_PowerUp,"ax",%progbits
	.align	1
	.global	Chip_SYSCTL_PowerUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_SYSCTL_PowerUp, %function
Chip_SYSCTL_PowerUp:
.LFB201:
	.loc 1 116 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL9:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 119 0
	ldr	r4, .L11
	movs	r1, #142
	lsls	r1, r1, #2
	ldr	r3, [r4, r1]
	movs	r2, #255
	ands	r3, r2
.LVL10:
	.loc 1 120 0
	ands	r2, r0
	bics	r3, r2
.LVL11:
	.loc 1 122 0
	movs	r2, #237
	lsls	r2, r2, #8
	orrs	r3, r2
	str	r3, [r4, r1]
	.loc 1 123 0
	@ sp needed
	pop	{r4, pc}
.L12:
	.align	2
.L11:
	.word	1074036736
	.cfi_endproc
.LFE201:
	.size	Chip_SYSCTL_PowerUp, .-Chip_SYSCTL_PowerUp
	.text
.Letext0:
	.file 2 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 3 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 4 "./inc/chip.h"
	.file 5 "./inc/sysctl_11xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x597
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.4byte	0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.4byte	0x48
	.uleb128 0x5
	.4byte	0x76
	.uleb128 0x6
	.4byte	0x81
	.uleb128 0x6
	.4byte	0x76
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0x81
	.4byte	0xae
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x9e
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0xd3
	.4byte	0x8b
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0xe2
	.4byte	0x8b
	.uleb128 0x7
	.4byte	0x86
	.4byte	0xd9
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0xc9
	.uleb128 0x5
	.4byte	0xd9
	.uleb128 0x7
	.4byte	0x86
	.4byte	0xf3
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0xe3
	.uleb128 0x5
	.4byte	0xf3
	.uleb128 0xa
	.2byte	0x3f8
	.byte	0x5
	.byte	0x2f
	.4byte	0x412
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x5
	.byte	0x30
	.4byte	0x81
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x5
	.byte	0x31
	.4byte	0x81
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x5
	.byte	0x32
	.4byte	0x81
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x5
	.byte	0x33
	.4byte	0x86
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0x34
	.4byte	0x81
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x5
	.byte	0x35
	.4byte	0x86
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x5
	.byte	0x36
	.4byte	0x427
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0x37
	.4byte	0x81
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x38
	.4byte	0x81
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x39
	.4byte	0x81
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x3a
	.4byte	0x81
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x3b
	.4byte	0x81
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x5
	.byte	0x3c
	.4byte	0xf8
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x5
	.byte	0x3d
	.4byte	0x81
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3e
	.4byte	0x81
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3f
	.4byte	0x81
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x40
	.4byte	0x81
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x41
	.4byte	0x446
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x42
	.4byte	0x81
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x43
	.4byte	0x81
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x44
	.4byte	0x81
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x45
	.4byte	0x86
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x46
	.4byte	0x81
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x47
	.4byte	0xde
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x48
	.4byte	0x81
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x49
	.4byte	0x81
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x5
	.byte	0x4a
	.4byte	0x81
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x5
	.byte	0x4b
	.4byte	0x44b
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x5
	.byte	0x4c
	.4byte	0x81
	.byte	0xc0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x4d
	.4byte	0x81
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x4e
	.4byte	0x81
	.byte	0xc8
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x5
	.byte	0x4f
	.4byte	0x86
	.byte	0xcc
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x50
	.4byte	0x81
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x51
	.4byte	0x81
	.byte	0xd4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x5
	.byte	0x52
	.4byte	0x81
	.byte	0xd8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0x53
	.4byte	0x86
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0x54
	.4byte	0x81
	.byte	0xe0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0x55
	.4byte	0x81
	.byte	0xe4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0x56
	.4byte	0x81
	.byte	0xe8
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0x57
	.4byte	0x465
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x5
	.byte	0x58
	.4byte	0x42c
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x5
	.byte	0x59
	.4byte	0x47f
	.2byte	0x108
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x5
	.byte	0x5a
	.4byte	0x81
	.2byte	0x150
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x5
	.byte	0x5b
	.4byte	0x81
	.2byte	0x154
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x5
	.byte	0x5c
	.4byte	0x499
	.2byte	0x158
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x5
	.byte	0x5d
	.4byte	0x81
	.2byte	0x170
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x5
	.byte	0x5e
	.4byte	0x81
	.2byte	0x174
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x5
	.byte	0x5f
	.4byte	0xae
	.2byte	0x178
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x5
	.byte	0x60
	.4byte	0x81
	.2byte	0x198
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x5
	.byte	0x61
	.4byte	0x86
	.2byte	0x19c
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x5
	.byte	0x62
	.4byte	0x4b8
	.2byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x5
	.byte	0x63
	.4byte	0x81
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x5
	.byte	0x64
	.4byte	0x81
	.2byte	0x204
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x5
	.byte	0x65
	.4byte	0x81
	.2byte	0x208
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x5
	.byte	0x66
	.4byte	0x81
	.2byte	0x20c
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x5
	.byte	0x67
	.4byte	0x86
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x5
	.byte	0x68
	.4byte	0x81
	.2byte	0x214
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x5
	.byte	0x69
	.4byte	0x49e
	.2byte	0x218
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x5
	.byte	0x6a
	.4byte	0x81
	.2byte	0x230
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x5
	.byte	0x6b
	.4byte	0x81
	.2byte	0x234
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x5
	.byte	0x6c
	.4byte	0x81
	.2byte	0x238
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x5
	.byte	0x6d
	.4byte	0x4d2
	.2byte	0x23c
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x5
	.byte	0x6e
	.4byte	0x86
	.2byte	0x3f4
	.byte	0
	.uleb128 0x7
	.4byte	0x86
	.4byte	0x422
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x412
	.uleb128 0x5
	.4byte	0x422
	.uleb128 0x5
	.4byte	0x422
	.uleb128 0x7
	.4byte	0x86
	.4byte	0x441
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x431
	.uleb128 0x5
	.4byte	0x441
	.uleb128 0x5
	.4byte	0x441
	.uleb128 0x7
	.4byte	0x86
	.4byte	0x460
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x450
	.uleb128 0x5
	.4byte	0x460
	.uleb128 0x7
	.4byte	0x86
	.4byte	0x47a
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x46a
	.uleb128 0x5
	.4byte	0x47a
	.uleb128 0x7
	.4byte	0x86
	.4byte	0x494
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0x484
	.uleb128 0x5
	.4byte	0x494
	.uleb128 0x5
	.4byte	0x494
	.uleb128 0x7
	.4byte	0x86
	.4byte	0x4b3
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x4a3
	.uleb128 0x5
	.4byte	0x4b3
	.uleb128 0x7
	.4byte	0x86
	.4byte	0x4cd
	.uleb128 0x8
	.4byte	0x6f
	.byte	0x6d
	.byte	0
	.uleb128 0x6
	.4byte	0x4bd
	.uleb128 0x5
	.4byte	0x4cd
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x5
	.byte	0x6f
	.4byte	0xfd
	.uleb128 0xd
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x11c
	.4byte	0x76
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x1
	.byte	0x73
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x520
	.uleb128 0xf
	.4byte	.LASF82
	.byte	0x1
	.byte	0x73
	.4byte	0x76
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x1
	.byte	0x75
	.4byte	0x76
	.4byte	.LLST4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x1
	.byte	0x68
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x554
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x1
	.byte	0x68
	.4byte	0x76
	.4byte	.LLST2
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x1
	.byte	0x6a
	.4byte	0x76
	.4byte	.LLST3
	.byte	0
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x1
	.byte	0x5f
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x579
	.uleb128 0x11
	.4byte	.LASF86
	.byte	0x1
	.byte	0x5f
	.4byte	0x76
	.4byte	.LLST1
	.byte	0
	.uleb128 0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x58
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.byte	0x58
	.4byte	0x76
	.4byte	.LLST0
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
	.uleb128 0x3
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x20
	.byte	0xb
	.2byte	0xff00
	.byte	0x21
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0xa
	.byte	0x73
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE200
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE198
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
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB198
	.4byte	.LFE198
	.4byte	.LFB199
	.4byte	.LFE199
	.4byte	.LFB200
	.4byte	.LFE200
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF63:
	.ascii	"USBCLKCTRL\000"
.LASF44:
	.ascii	"USBCLKUEN\000"
.LASF67:
	.ascii	"STARTERP0\000"
.LASF25:
	.ascii	"LFOSCCTRL\000"
.LASF20:
	.ascii	"USBPLLSTAT\000"
.LASF85:
	.ascii	"Chip_SYSCTL_SetWakeup\000"
.LASF80:
	.ascii	"Chip_SYSCTL_PowerUp\000"
.LASF71:
	.ascii	"STARTERP1\000"
.LASF45:
	.ascii	"USBCLKDIV\000"
.LASF2:
	.ascii	"short int\000"
.LASF23:
	.ascii	"WDTOSCCTRL\000"
.LASF15:
	.ascii	"SYSMEMREMAP\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF26:
	.ascii	"SYSRSTSTAT\000"
.LASF81:
	.ascii	"Chip_SYSCTL_PowerDown\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF53:
	.ascii	"CLKOUTDIV\000"
.LASF17:
	.ascii	"SYSPLLCTRL\000"
.LASF60:
	.ascii	"IRQLATENCY\000"
.LASF61:
	.ascii	"NMISRC\000"
.LASF88:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF75:
	.ascii	"PDRUNCFG\000"
.LASF43:
	.ascii	"USBCLKSEL\000"
.LASF52:
	.ascii	"CLKOUTUEN\000"
.LASF50:
	.ascii	"RESERVED8\000"
.LASF77:
	.ascii	"DEVICEID\000"
.LASF73:
	.ascii	"PDSLEEPCFG\000"
.LASF6:
	.ascii	"long long int\000"
.LASF91:
	.ascii	"Chip_SYSCTL_SetDeepSleepPD\000"
.LASF39:
	.ascii	"SSP0CLKDIV\000"
.LASF68:
	.ascii	"STARTRSRP0CLR\000"
.LASF82:
	.ascii	"powerupmask\000"
.LASF4:
	.ascii	"long int\000"
.LASF89:
	.ascii	"src/sysctl_11xx.c\000"
.LASF24:
	.ascii	"IRCCTRL\000"
.LASF78:
	.ascii	"LPC_SYSCTL_T\000"
.LASF19:
	.ascii	"USBPLLCTRL\000"
.LASF34:
	.ascii	"MAINCLKUEN\000"
.LASF31:
	.ascii	"USBPLLCLKUEN\000"
.LASF83:
	.ascii	"powerdownmask\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF51:
	.ascii	"CLKOUTSEL\000"
.LASF56:
	.ascii	"RESERVED10\000"
.LASF59:
	.ascii	"RESERVED11\000"
.LASF65:
	.ascii	"RESERVED12\000"
.LASF70:
	.ascii	"RESERVED13\000"
.LASF72:
	.ascii	"RESERVED14\000"
.LASF76:
	.ascii	"RESERVED15\000"
.LASF0:
	.ascii	"signed char\000"
.LASF14:
	.ascii	"ExtRateIn\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF29:
	.ascii	"SYSPLLCLKUEN\000"
.LASF11:
	.ascii	"char\000"
.LASF33:
	.ascii	"MAINCLKSEL\000"
.LASF62:
	.ascii	"PINTSEL\000"
.LASF58:
	.ascii	"SYSTCKCAL\000"
.LASF37:
	.ascii	"SYSAHBCLKCTRL\000"
.LASF30:
	.ascii	"USBPLLCLKSEL\000"
.LASF12:
	.ascii	"_Bool\000"
.LASF79:
	.ascii	"SystemCoreClock\000"
.LASF69:
	.ascii	"STARTSRP0\000"
.LASF86:
	.ascii	"wakeupmask\000"
.LASF48:
	.ascii	"WDTCLKUEN\000"
.LASF41:
	.ascii	"SSP1CLKDIV\000"
.LASF21:
	.ascii	"RESERVED1\000"
.LASF27:
	.ascii	"RESERVED2\000"
.LASF32:
	.ascii	"RESERVED3\000"
.LASF36:
	.ascii	"RESERVED4\000"
.LASF38:
	.ascii	"RESERVED5\000"
.LASF42:
	.ascii	"RESERVED6\000"
.LASF46:
	.ascii	"RESERVED7\000"
.LASF55:
	.ascii	"PIOPORCAP\000"
.LASF54:
	.ascii	"RESERVED9\000"
.LASF84:
	.ascii	"pdrun\000"
.LASF49:
	.ascii	"WDTCLKDIV\000"
.LASF90:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF74:
	.ascii	"PDWAKECFG\000"
.LASF18:
	.ascii	"SYSPLLSTAT\000"
.LASF22:
	.ascii	"SYSOSCCTRL\000"
.LASF28:
	.ascii	"SYSPLLCLKSEL\000"
.LASF35:
	.ascii	"SYSAHBCLKDIV\000"
.LASF16:
	.ascii	"PRESETCTRL\000"
.LASF87:
	.ascii	"sleepmask\000"
.LASF66:
	.ascii	"STARTAPRP0\000"
.LASF47:
	.ascii	"WDTCLKSEL\000"
.LASF13:
	.ascii	"OscRateIn\000"
.LASF40:
	.ascii	"USARTCLKDIV\000"
.LASF64:
	.ascii	"USBCLKST\000"
.LASF57:
	.ascii	"BODCTRL\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
