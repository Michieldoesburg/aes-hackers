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
	.file	"wwdt_11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chip_WWDT_Init,"ax",%progbits
	.align	1
	.global	Chip_WWDT_Init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_WWDT_Init, %function
Chip_WWDT_Init:
.LFB198:
	.file 1 "src/wwdt_11xx.c"
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL1:
.LBB6:
.LBB7:
	.file 2 "./inc/clock_11xx.h"
	.loc 2 297 0
	ldr	r1, .L2
	movs	r2, #128
	ldr	r4, [r1, r2]
	movs	r3, #128
	lsls	r3, r3, #8
	orrs	r3, r4
	str	r3, [r1, r2]
.LVL2:
.LBE7:
.LBE6:
	.loc 1 56 0
	movs	r3, #0
	str	r3, [r0]
	.loc 1 57 0
	adds	r3, r3, #255
	str	r3, [r0, #4]
	.loc 1 62 0
	@ sp needed
	pop	{r4, pc}
.L3:
	.align	2
.L2:
	.word	1074036736
	.cfi_endproc
.LFE198:
	.size	Chip_WWDT_Init, .-Chip_WWDT_Init
	.section	.text.Chip_WWDT_DeInit,"ax",%progbits
	.align	1
	.global	Chip_WWDT_DeInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_WWDT_DeInit, %function
Chip_WWDT_DeInit:
.LFB199:
	.loc 1 66 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL3:
.LBB8:
.LBB9:
	.loc 2 307 0
	ldr	r1, .L5
	movs	r2, #128
	ldr	r3, [r1, r2]
	ldr	r0, .L5+4
.LVL4:
	ands	r3, r0
	str	r3, [r1, r2]
.LVL5:
.LBE9:
.LBE8:
	.loc 1 68 0
	@ sp needed
	bx	lr
.L6:
	.align	2
.L5:
	.word	1074036736
	.word	-32769
	.cfi_endproc
.LFE199:
	.size	Chip_WWDT_DeInit, .-Chip_WWDT_DeInit
	.section	.text.Chip_WWDT_ClearStatusFlag,"ax",%progbits
	.align	1
	.global	Chip_WWDT_ClearStatusFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_WWDT_ClearStatusFlag, %function
Chip_WWDT_ClearStatusFlag:
.LFB200:
	.loc 1 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL6:
	.loc 1 73 0
	lsls	r3, r1, #29
	bpl	.L8
	.loc 1 74 0
	ldr	r2, [r0]
	movs	r3, #27
	ands	r3, r2
	str	r3, [r0]
.L8:
	.loc 1 77 0
	lsls	r3, r1, #28
	bpl	.L7
	.loc 1 78 0
	ldr	r3, [r0]
	movs	r2, #8
	orrs	r3, r2
	str	r3, [r0]
.L7:
	.loc 1 80 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE200:
	.size	Chip_WWDT_ClearStatusFlag, .-Chip_WWDT_ClearStatusFlag
	.text
.Letext0:
	.file 3 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./inc/chip.h"
	.file 6 "./inc/sysctl_11xx.h"
	.file 7 "./inc/wwdt_11xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6a9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF108
	.byte	0xc
	.4byte	.LASF109
	.4byte	.LASF110
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
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
	.byte	0xd3
	.4byte	0x8b
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x5
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
	.byte	0x6
	.byte	0x2f
	.4byte	0x412
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x6
	.byte	0x30
	.4byte	0x81
	.byte	0
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0x31
	.4byte	0x81
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x6
	.byte	0x32
	.4byte	0x81
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x33
	.4byte	0x86
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x34
	.4byte	0x81
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x35
	.4byte	0x86
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x36
	.4byte	0x427
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x37
	.4byte	0x81
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x38
	.4byte	0x81
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x39
	.4byte	0x81
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x3a
	.4byte	0x81
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x3b
	.4byte	0x81
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3c
	.4byte	0xf8
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3d
	.4byte	0x81
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3e
	.4byte	0x81
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3f
	.4byte	0x81
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x40
	.4byte	0x81
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x41
	.4byte	0x446
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x42
	.4byte	0x81
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x43
	.4byte	0x81
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x44
	.4byte	0x81
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x45
	.4byte	0x86
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x46
	.4byte	0x81
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x47
	.4byte	0xde
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x48
	.4byte	0x81
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x49
	.4byte	0x81
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x4a
	.4byte	0x81
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x4b
	.4byte	0x44b
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4c
	.4byte	0x81
	.byte	0xc0
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4d
	.4byte	0x81
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4e
	.4byte	0x81
	.byte	0xc8
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4f
	.4byte	0x86
	.byte	0xcc
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x50
	.4byte	0x81
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x51
	.4byte	0x81
	.byte	0xd4
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x52
	.4byte	0x81
	.byte	0xd8
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x53
	.4byte	0x86
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x54
	.4byte	0x81
	.byte	0xe0
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x55
	.4byte	0x81
	.byte	0xe4
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x56
	.4byte	0x81
	.byte	0xe8
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x57
	.4byte	0x465
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF55
	.byte	0x6
	.byte	0x58
	.4byte	0x42c
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x6
	.byte	0x59
	.4byte	0x47f
	.2byte	0x108
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0x5a
	.4byte	0x81
	.2byte	0x150
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0x5b
	.4byte	0x81
	.2byte	0x154
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0x5c
	.4byte	0x499
	.2byte	0x158
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0x5d
	.4byte	0x81
	.2byte	0x170
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0x5e
	.4byte	0x81
	.2byte	0x174
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0x5f
	.4byte	0xae
	.2byte	0x178
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0x60
	.4byte	0x81
	.2byte	0x198
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0x61
	.4byte	0x86
	.2byte	0x19c
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x6
	.byte	0x62
	.4byte	0x4b8
	.2byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x6
	.byte	0x63
	.4byte	0x81
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x6
	.byte	0x64
	.4byte	0x81
	.2byte	0x204
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x6
	.byte	0x65
	.4byte	0x81
	.2byte	0x208
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x6
	.byte	0x66
	.4byte	0x81
	.2byte	0x20c
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x6
	.byte	0x67
	.4byte	0x86
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x6
	.byte	0x68
	.4byte	0x81
	.2byte	0x214
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x6
	.byte	0x69
	.4byte	0x49e
	.2byte	0x218
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x6
	.byte	0x6a
	.4byte	0x81
	.2byte	0x230
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x6
	.byte	0x6b
	.4byte	0x81
	.2byte	0x234
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x6
	.byte	0x6c
	.4byte	0x81
	.2byte	0x238
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x6
	.byte	0x6d
	.4byte	0x4d2
	.2byte	0x23c
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x6
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
	.byte	0x6
	.byte	0x6f
	.4byte	0xfd
	.uleb128 0xd
	.4byte	.LASF111
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x2
	.byte	0xe4
	.4byte	0x566
	.uleb128 0xe
	.4byte	.LASF79
	.byte	0
	.uleb128 0xe
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF82
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF83
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0xf
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x10
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x11
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x2
	.2byte	0x120
	.4byte	0x4e2
	.uleb128 0x10
	.byte	0x14
	.byte	0x7
	.byte	0x37
	.4byte	0x5b5
	.uleb128 0x11
	.ascii	"MOD\000"
	.byte	0x7
	.byte	0x38
	.4byte	0x81
	.byte	0
	.uleb128 0x11
	.ascii	"TC\000"
	.byte	0x7
	.byte	0x39
	.4byte	0x81
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF99
	.byte	0x7
	.byte	0x3a
	.4byte	0x81
	.byte	0x8
	.uleb128 0x11
	.ascii	"TV\000"
	.byte	0x7
	.byte	0x3b
	.4byte	0x86
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF100
	.byte	0x7
	.byte	0x3f
	.4byte	0x86
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x7
	.byte	0x45
	.4byte	0x572
	.uleb128 0x12
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x11c
	.4byte	0x76
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.byte	0x47
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5fc
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x1
	.byte	0x47
	.4byte	0x5fc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x14
	.4byte	.LASF104
	.byte	0x1
	.byte	0x47
	.4byte	0x76
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x5b5
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.byte	0x41
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x640
	.uleb128 0x16
	.4byte	.LASF103
	.byte	0x1
	.byte	0x41
	.4byte	0x5fc
	.4byte	.LLST1
	.uleb128 0x17
	.4byte	0x67c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x43
	.uleb128 0x18
	.4byte	0x689
	.4byte	.LLST2
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.byte	0x33
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67c
	.uleb128 0x14
	.4byte	.LASF103
	.byte	0x1
	.byte	0x33
	.4byte	0x5fc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x17
	.4byte	0x696
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x35
	.uleb128 0x18
	.4byte	0x69f
	.4byte	.LLST0
	.byte	0
	.byte	0
	.uleb128 0x19
	.4byte	.LASF112
	.byte	0x2
	.2byte	0x131
	.byte	0x3
	.4byte	0x696
	.uleb128 0x1a
	.ascii	"clk\000"
	.byte	0x2
	.2byte	0x131
	.4byte	0x566
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x2
	.2byte	0x127
	.byte	0x3
	.uleb128 0x1a
	.ascii	"clk\000"
	.byte	0x2
	.2byte	0x127
	.4byte	0x566
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LFE199
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF92:
	.ascii	"SYSCTL_CLOCK_ADC\000"
.LASF63:
	.ascii	"USBCLKCTRL\000"
.LASF80:
	.ascii	"SYSCTL_CLOCK_ROM\000"
.LASF96:
	.ascii	"SYSCTL_CLOCK_CAN\000"
.LASF44:
	.ascii	"USBCLKUEN\000"
.LASF69:
	.ascii	"STARTSRP0\000"
.LASF25:
	.ascii	"LFOSCCTRL\000"
.LASF20:
	.ascii	"USBPLLSTAT\000"
.LASF111:
	.ascii	"CHIP_SYSCTL_CLOCK\000"
.LASF67:
	.ascii	"STARTERP0\000"
.LASF71:
	.ascii	"STARTERP1\000"
.LASF45:
	.ascii	"USBCLKDIV\000"
.LASF2:
	.ascii	"short int\000"
.LASF86:
	.ascii	"SYSCTL_CLOCK_CT16B0\000"
.LASF82:
	.ascii	"SYSCTL_CLOCK_FLASHREG\000"
.LASF23:
	.ascii	"WDTOSCCTRL\000"
.LASF83:
	.ascii	"SYSCTL_CLOCK_FLASHARRAY\000"
.LASF15:
	.ascii	"SYSMEMREMAP\000"
.LASF26:
	.ascii	"SYSRSTSTAT\000"
.LASF91:
	.ascii	"SYSCTL_CLOCK_UART0\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF53:
	.ascii	"CLKOUTDIV\000"
.LASF31:
	.ascii	"USBPLLCLKUEN\000"
.LASF17:
	.ascii	"SYSPLLCTRL\000"
.LASF60:
	.ascii	"IRQLATENCY\000"
.LASF61:
	.ascii	"NMISRC\000"
.LASF101:
	.ascii	"LPC_WWDT_T\000"
.LASF108:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF75:
	.ascii	"PDRUNCFG\000"
.LASF43:
	.ascii	"USBCLKSEL\000"
.LASF14:
	.ascii	"ExtRateIn\000"
.LASF52:
	.ascii	"CLKOUTUEN\000"
.LASF50:
	.ascii	"RESERVED8\000"
.LASF84:
	.ascii	"SYSCTL_CLOCK_I2C\000"
.LASF81:
	.ascii	"SYSCTL_CLOCK_RAM\000"
.LASF103:
	.ascii	"pWWDT\000"
.LASF98:
	.ascii	"CHIP_SYSCTL_CLOCK_T\000"
.LASF73:
	.ascii	"PDSLEEPCFG\000"
.LASF6:
	.ascii	"long long int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF112:
	.ascii	"Chip_Clock_DisablePeriphClock\000"
.LASF47:
	.ascii	"WDTCLKSEL\000"
.LASF58:
	.ascii	"SYSTCKCAL\000"
.LASF4:
	.ascii	"long int\000"
.LASF13:
	.ascii	"OscRateIn\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF78:
	.ascii	"LPC_SYSCTL_T\000"
.LASF19:
	.ascii	"USBPLLCTRL\000"
.LASF95:
	.ascii	"SYSCTL_CLOCK_IOCON\000"
.LASF93:
	.ascii	"SYSCTL_CLOCK_RESERVED14\000"
.LASF34:
	.ascii	"MAINCLKUEN\000"
.LASF76:
	.ascii	"RESERVED15\000"
.LASF90:
	.ascii	"SYSCTL_CLOCK_SSP0\000"
.LASF97:
	.ascii	"SYSCTL_CLOCK_SSP1\000"
.LASF77:
	.ascii	"DEVICEID\000"
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
.LASF99:
	.ascii	"FEED\000"
.LASF0:
	.ascii	"signed char\000"
.LASF94:
	.ascii	"SYSCTL_CLOCK_WDT\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF88:
	.ascii	"SYSCTL_CLOCK_CT32B0\000"
.LASF89:
	.ascii	"SYSCTL_CLOCK_CT32B1\000"
.LASF87:
	.ascii	"SYSCTL_CLOCK_CT16B1\000"
.LASF109:
	.ascii	"src/wwdt_11xx.c\000"
.LASF79:
	.ascii	"SYSCTL_CLOCK_SYS\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF104:
	.ascii	"status\000"
.LASF29:
	.ascii	"SYSPLLCLKUEN\000"
.LASF11:
	.ascii	"char\000"
.LASF33:
	.ascii	"MAINCLKSEL\000"
.LASF62:
	.ascii	"PINTSEL\000"
.LASF105:
	.ascii	"Chip_WWDT_ClearStatusFlag\000"
.LASF37:
	.ascii	"SYSAHBCLKCTRL\000"
.LASF30:
	.ascii	"USBPLLCLKSEL\000"
.LASF39:
	.ascii	"SSP0CLKDIV\000"
.LASF24:
	.ascii	"IRCCTRL\000"
.LASF12:
	.ascii	"_Bool\000"
.LASF102:
	.ascii	"SystemCoreClock\000"
.LASF48:
	.ascii	"WDTCLKUEN\000"
.LASF100:
	.ascii	"RESERVED0\000"
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
.LASF49:
	.ascii	"WDTCLKDIV\000"
.LASF110:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF74:
	.ascii	"PDWAKECFG\000"
.LASF18:
	.ascii	"SYSPLLSTAT\000"
.LASF22:
	.ascii	"SYSOSCCTRL\000"
.LASF106:
	.ascii	"Chip_WWDT_DeInit\000"
.LASF41:
	.ascii	"SSP1CLKDIV\000"
.LASF68:
	.ascii	"STARTRSRP0CLR\000"
.LASF28:
	.ascii	"SYSPLLCLKSEL\000"
.LASF35:
	.ascii	"SYSAHBCLKDIV\000"
.LASF113:
	.ascii	"Chip_Clock_EnablePeriphClock\000"
.LASF16:
	.ascii	"PRESETCTRL\000"
.LASF66:
	.ascii	"STARTAPRP0\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF85:
	.ascii	"SYSCTL_CLOCK_GPIO\000"
.LASF107:
	.ascii	"Chip_WWDT_Init\000"
.LASF40:
	.ascii	"USARTCLKDIV\000"
.LASF64:
	.ascii	"USBCLKST\000"
.LASF57:
	.ascii	"BODCTRL\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
