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
	.file	"sysinit_11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chip_SystemInit,"ax",%progbits
	.align	1
	.global	Chip_SystemInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_SystemInit, %function
Chip_SystemInit:
.LFB198:
	.file 1 "src/sysinit_11xx.c"
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 54 0
	movs	r0, #2
	bl	Chip_SYSCTL_PowerUp
.LVL0:
	.loc 1 55 0
	movs	r0, #1
	bl	Chip_SYSCTL_PowerUp
.LVL1:
	.loc 1 58 0
	movs	r0, #0
	bl	Chip_Clock_SetSystemPLLSource
.LVL2:
	.loc 1 61 0
	movs	r0, #128
	bl	Chip_SYSCTL_PowerDown
.LVL3:
.LBB12:
.LBB13:
	.file 2 "./inc/clock_11xx.h"
	.loc 2 56 0
	ldr	r3, .L4
	movs	r2, #35
	str	r2, [r3, #8]
.LVL4:
.LBE13:
.LBE12:
	.loc 1 70 0
	movs	r0, #128
	bl	Chip_SYSCTL_PowerUp
.LVL5:
.LBB14:
.LBB15:
	.loc 2 65 0
	ldr	r1, .L4
	movs	r2, #1
.L2:
	.loc 2 65 0 is_stmt 0 discriminator 1
	ldr	r3, [r1, #12]
.LBE15:
.LBE14:
	.loc 1 73 0 is_stmt 1 discriminator 1
	tst	r2, r3
	beq	.L2
.LVL6:
.LBB16:
.LBB17:
	.loc 2 222 0
	ldr	r4, .L4
	movs	r3, #1
	str	r3, [r4, #120]
.LVL7:
.LBE17:
.LBE16:
.LBB18:
.LBB19:
	.file 3 "./inc/fmc_11xx.h"
	.loc 3 87 0
	ldr	r2, .L4+4
	ldr	r3, [r2, #16]
.LVL8:
	movs	r1, #3
	bics	r3, r1
.LVL9:
	.loc 3 90 0
	subs	r1, r1, #1
	orrs	r3, r1
	str	r3, [r2, #16]
.LVL10:
.LBE19:
.LBE18:
	.loc 1 83 0
	movs	r0, #3
	bl	Chip_Clock_SetMainClockSource
.LVL11:
.LBB20:
.LBB21:
	.loc 2 297 0
	movs	r2, #128
	ldr	r1, [r4, r2]
	movs	r3, #128
	lsls	r3, r3, #9
	orrs	r3, r1
	str	r3, [r4, r2]
.LVL12:
.LBE21:
.LBE20:
	.loc 1 87 0
	@ sp needed
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	1074036736
	.word	1073987584
	.cfi_endproc
.LFE198:
	.size	Chip_SystemInit, .-Chip_SystemInit
	.text
.Letext0:
	.file 4 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 5 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 6 "./inc/chip.h"
	.file 7 "./inc/sysctl_11xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x8fd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF139
	.byte	0xc
	.4byte	.LASF140
	.4byte	.LASF141
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2b
	.4byte	0x37
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
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4f
	.4byte	0x5e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x5
	.byte	0x30
	.4byte	0x53
	.uleb128 0x5
	.4byte	0x8c
	.uleb128 0x6
	.4byte	0x97
	.uleb128 0x6
	.4byte	0x8c
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
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
	.byte	0x6
	.byte	0xd3
	.4byte	0xa1
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x6
	.byte	0xe2
	.4byte	0xa1
	.uleb128 0xa
	.2byte	0xff0
	.byte	0x3
	.byte	0x2f
	.4byte	0x1a0
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.4byte	0x1b5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x3
	.byte	0x31
	.4byte	0x97
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x3
	.byte	0x32
	.4byte	0x1d9
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0x33
	.4byte	0x97
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x3
	.byte	0x34
	.4byte	0x97
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x3
	.byte	0x35
	.4byte	0x9c
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x3
	.byte	0x36
	.4byte	0x1ba
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x3
	.byte	0x37
	.4byte	0x1f8
	.byte	0x3c
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x3
	.byte	0x3b
	.4byte	0x97
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x3
	.byte	0x3c
	.4byte	0x97
	.byte	0xa4
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x3
	.byte	0x3d
	.4byte	0x9c
	.byte	0xa8
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x3
	.byte	0x3e
	.4byte	0x213
	.byte	0xac
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x3
	.byte	0x40
	.4byte	0x9c
	.2byte	0xfe4
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x3
	.byte	0x41
	.4byte	0x9c
	.2byte	0xfe8
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x3
	.byte	0x42
	.4byte	0x97
	.2byte	0xfec
	.byte	0
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x1b0
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0x1a0
	.uleb128 0x5
	.4byte	0x1b0
	.uleb128 0x5
	.4byte	0x1b0
	.uleb128 0x5
	.4byte	0x1b0
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x1d4
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.4byte	0x1c4
	.uleb128 0x5
	.4byte	0x1d4
	.uleb128 0x5
	.4byte	0x1d4
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x1f3
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	0x1e3
	.uleb128 0x5
	.4byte	0x1f3
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x20e
	.uleb128 0xd
	.4byte	0x7a
	.2byte	0x3cd
	.byte	0
	.uleb128 0x6
	.4byte	0x1fd
	.uleb128 0x5
	.4byte	0x20e
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x3
	.byte	0x43
	.4byte	0xdf
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x3
	.byte	0x48
	.4byte	0x243
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x3
	.byte	0x4c
	.4byte	0x223
	.uleb128 0xa
	.2byte	0x3f8
	.byte	0x7
	.byte	0x2f
	.4byte	0x563
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x7
	.byte	0x30
	.4byte	0x97
	.byte	0
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x31
	.4byte	0x97
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x32
	.4byte	0x97
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0x33
	.4byte	0x9c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x7
	.byte	0x34
	.4byte	0x97
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x7
	.byte	0x35
	.4byte	0x9c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x7
	.byte	0x36
	.4byte	0x578
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x7
	.byte	0x37
	.4byte	0x97
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x7
	.byte	0x38
	.4byte	0x97
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x7
	.byte	0x39
	.4byte	0x97
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x7
	.byte	0x3a
	.4byte	0x97
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x7
	.byte	0x3b
	.4byte	0x97
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x7
	.byte	0x3c
	.4byte	0x1de
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x3d
	.4byte	0x97
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x7
	.byte	0x3e
	.4byte	0x97
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x7
	.byte	0x3f
	.4byte	0x97
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x7
	.byte	0x40
	.4byte	0x97
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x7
	.byte	0x41
	.4byte	0x597
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x7
	.byte	0x42
	.4byte	0x97
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x7
	.byte	0x43
	.4byte	0x97
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x7
	.byte	0x44
	.4byte	0x97
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x7
	.byte	0x45
	.4byte	0x9c
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x7
	.byte	0x46
	.4byte	0x97
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x7
	.byte	0x47
	.4byte	0x1bf
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x7
	.byte	0x48
	.4byte	0x97
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF57
	.byte	0x7
	.byte	0x49
	.4byte	0x97
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF58
	.byte	0x7
	.byte	0x4a
	.4byte	0x97
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4b
	.4byte	0x59c
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF59
	.byte	0x7
	.byte	0x4c
	.4byte	0x97
	.byte	0xc0
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0x7
	.byte	0x4d
	.4byte	0x97
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF61
	.byte	0x7
	.byte	0x4e
	.4byte	0x97
	.byte	0xc8
	.uleb128 0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0x4f
	.4byte	0x9c
	.byte	0xcc
	.uleb128 0xb
	.4byte	.LASF63
	.byte	0x7
	.byte	0x50
	.4byte	0x97
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF64
	.byte	0x7
	.byte	0x51
	.4byte	0x97
	.byte	0xd4
	.uleb128 0xb
	.4byte	.LASF65
	.byte	0x7
	.byte	0x52
	.4byte	0x97
	.byte	0xd8
	.uleb128 0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0x53
	.4byte	0x9c
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF67
	.byte	0x7
	.byte	0x54
	.4byte	0x97
	.byte	0xe0
	.uleb128 0xb
	.4byte	.LASF68
	.byte	0x7
	.byte	0x55
	.4byte	0x97
	.byte	0xe4
	.uleb128 0xb
	.4byte	.LASF69
	.byte	0x7
	.byte	0x56
	.4byte	0x97
	.byte	0xe8
	.uleb128 0xb
	.4byte	.LASF70
	.byte	0x7
	.byte	0x57
	.4byte	0x5b6
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x7
	.byte	0x58
	.4byte	0x57d
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x7
	.byte	0x59
	.4byte	0x5d0
	.2byte	0x108
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x7
	.byte	0x5a
	.4byte	0x97
	.2byte	0x150
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x7
	.byte	0x5b
	.4byte	0x97
	.2byte	0x154
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x7
	.byte	0x5c
	.4byte	0x5ea
	.2byte	0x158
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x7
	.byte	0x5d
	.4byte	0x97
	.2byte	0x170
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x7
	.byte	0x5e
	.4byte	0x97
	.2byte	0x174
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x7
	.byte	0x5f
	.4byte	0xc4
	.2byte	0x178
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x7
	.byte	0x60
	.4byte	0x97
	.2byte	0x198
	.uleb128 0xc
	.4byte	.LASF80
	.byte	0x7
	.byte	0x61
	.4byte	0x9c
	.2byte	0x19c
	.uleb128 0xc
	.4byte	.LASF81
	.byte	0x7
	.byte	0x62
	.4byte	0x609
	.2byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF82
	.byte	0x7
	.byte	0x63
	.4byte	0x97
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF83
	.byte	0x7
	.byte	0x64
	.4byte	0x97
	.2byte	0x204
	.uleb128 0xc
	.4byte	.LASF84
	.byte	0x7
	.byte	0x65
	.4byte	0x97
	.2byte	0x208
	.uleb128 0xc
	.4byte	.LASF85
	.byte	0x7
	.byte	0x66
	.4byte	0x97
	.2byte	0x20c
	.uleb128 0xc
	.4byte	.LASF86
	.byte	0x7
	.byte	0x67
	.4byte	0x9c
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF87
	.byte	0x7
	.byte	0x68
	.4byte	0x97
	.2byte	0x214
	.uleb128 0xc
	.4byte	.LASF88
	.byte	0x7
	.byte	0x69
	.4byte	0x5ef
	.2byte	0x218
	.uleb128 0xc
	.4byte	.LASF89
	.byte	0x7
	.byte	0x6a
	.4byte	0x97
	.2byte	0x230
	.uleb128 0xc
	.4byte	.LASF90
	.byte	0x7
	.byte	0x6b
	.4byte	0x97
	.2byte	0x234
	.uleb128 0xc
	.4byte	.LASF91
	.byte	0x7
	.byte	0x6c
	.4byte	0x97
	.2byte	0x238
	.uleb128 0xc
	.4byte	.LASF92
	.byte	0x7
	.byte	0x6d
	.4byte	0x623
	.2byte	0x23c
	.uleb128 0xc
	.4byte	.LASF93
	.byte	0x7
	.byte	0x6e
	.4byte	0x9c
	.2byte	0x3f4
	.byte	0
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x573
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x563
	.uleb128 0x5
	.4byte	0x573
	.uleb128 0x5
	.4byte	0x573
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x592
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0x582
	.uleb128 0x5
	.4byte	0x592
	.uleb128 0x5
	.4byte	0x592
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x5b1
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	0x5a1
	.uleb128 0x5
	.4byte	0x5b1
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x5cb
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x11
	.byte	0
	.uleb128 0x6
	.4byte	0x5bb
	.uleb128 0x5
	.4byte	0x5cb
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x5e5
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.4byte	0x5d5
	.uleb128 0x5
	.4byte	0x5e5
	.uleb128 0x5
	.4byte	0x5e5
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x604
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x17
	.byte	0
	.uleb128 0x6
	.4byte	0x5f4
	.uleb128 0x5
	.4byte	0x604
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0x61e
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x6d
	.byte	0
	.uleb128 0x6
	.4byte	0x60e
	.uleb128 0x5
	.4byte	0x61e
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x7
	.byte	0x6f
	.4byte	0x24e
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x2
	.byte	0x47
	.4byte	0x65d
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0
	.uleb128 0xf
	.4byte	.LASF96
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF97
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x2
	.byte	0xbb
	.4byte	0x68d
	.uleb128 0xf
	.4byte	.LASF101
	.byte	0
	.uleb128 0xf
	.4byte	.LASF102
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF103
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF104
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF105
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x2
	.byte	0xe4
	.4byte	0x711
	.uleb128 0xf
	.4byte	.LASF107
	.byte	0
	.uleb128 0xf
	.4byte	.LASF108
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF109
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF113
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF114
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF116
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF117
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x120
	.4byte	0x68d
	.uleb128 0x12
	.4byte	.LASF127
	.byte	0x6
	.2byte	0x11c
	.4byte	0x8c
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.byte	0x33
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84e
	.uleb128 0x14
	.4byte	0x88c
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x43
	.4byte	0x764
	.uleb128 0x15
	.4byte	0x8a3
	.4byte	.LLST0
	.uleb128 0x15
	.4byte	0x898
	.4byte	.LLST1
	.byte	0
	.uleb128 0x16
	.4byte	0x880
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.byte	0x49
	.uleb128 0x14
	.4byte	0x868
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x4c
	.4byte	0x790
	.uleb128 0x15
	.4byte	0x874
	.4byte	.LLST2
	.byte	0
	.uleb128 0x14
	.4byte	0x8af
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x4f
	.4byte	0x7c0
	.uleb128 0x15
	.4byte	0x8bb
	.4byte	.LLST3
	.uleb128 0x17
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.uleb128 0x18
	.4byte	0x8c6
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	0x84e
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x56
	.4byte	0x7dd
	.uleb128 0x15
	.4byte	0x85b
	.4byte	.LLST5
	.byte	0
	.uleb128 0x19
	.4byte	.LVL0
	.4byte	0x8d2
	.4byte	0x7f0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x19
	.4byte	.LVL1
	.4byte	0x8d2
	.4byte	0x803
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x19
	.4byte	.LVL2
	.4byte	0x8de
	.4byte	0x816
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x19
	.4byte	.LVL3
	.4byte	0x8e9
	.4byte	0x82a
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x19
	.4byte	.LVL5
	.4byte	0x8d2
	.4byte	0x83e
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.uleb128 0x1b
	.4byte	.LVL11
	.4byte	0x8f5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF128
	.byte	0x2
	.2byte	0x127
	.byte	0x3
	.4byte	0x868
	.uleb128 0x1d
	.ascii	"clk\000"
	.byte	0x2
	.2byte	0x127
	.4byte	0x711
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x2
	.byte	0xdc
	.byte	0x3
	.4byte	0x880
	.uleb128 0x1f
	.ascii	"div\000"
	.byte	0x2
	.byte	0xdc
	.4byte	0x8c
	.byte	0
	.uleb128 0x20
	.4byte	.LASF143
	.byte	0x2
	.byte	0x3f
	.4byte	0xad
	.byte	0x3
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x2
	.byte	0x36
	.byte	0x3
	.4byte	0x8af
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x2
	.byte	0x36
	.4byte	0x81
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x2
	.byte	0x36
	.4byte	0x81
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x3
	.byte	0x55
	.byte	0x3
	.4byte	0x8d2
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x3
	.byte	0x55
	.4byte	0x243
	.uleb128 0x22
	.ascii	"tmp\000"
	.byte	0x3
	.byte	0x57
	.4byte	0x8c
	.byte	0
	.uleb128 0x23
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0x7
	.2byte	0x292
	.uleb128 0x24
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0x2
	.byte	0x59
	.uleb128 0x23
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x7
	.2byte	0x28b
	.uleb128 0x24
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x2
	.byte	0xca
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB198
	.4byte	.LFE198
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF36:
	.ascii	"FMC_FLASHTIM_T\000"
.LASF59:
	.ascii	"USBCLKSEL\000"
.LASF56:
	.ascii	"SSP0CLKDIV\000"
.LASF120:
	.ascii	"SYSCTL_CLOCK_ADC\000"
.LASF90:
	.ascii	"PDWAKECFG\000"
.LASF63:
	.ascii	"WDTCLKSEL\000"
.LASF104:
	.ascii	"SYSCTL_MAINCLKSRC_WDTOSC\000"
.LASF58:
	.ascii	"SSP1CLKDIV\000"
.LASF93:
	.ascii	"DEVICEID\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF29:
	.ascii	"FMSTAT\000"
.LASF122:
	.ascii	"SYSCTL_CLOCK_WDT\000"
.LASF21:
	.ascii	"FMSSTOP\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF44:
	.ascii	"WDTOSCCTRL\000"
.LASF125:
	.ascii	"SYSCTL_CLOCK_SSP1\000"
.LASF116:
	.ascii	"SYSCTL_CLOCK_CT32B0\000"
.LASF117:
	.ascii	"SYSCTL_CLOCK_CT32B1\000"
.LASF113:
	.ascii	"SYSCTL_CLOCK_GPIO\000"
.LASF77:
	.ascii	"NMISRC\000"
.LASF33:
	.ascii	"FLASHTIM_20MHZ_CPU\000"
.LASF8:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF96:
	.ascii	"SYSCTL_PLLCLKSRC_MAINOSC\000"
.LASF95:
	.ascii	"SYSCTL_PLLCLKSRC_IRC\000"
.LASF72:
	.ascii	"RESERVED10\000"
.LASF71:
	.ascii	"PIOPORCAP\000"
.LASF81:
	.ascii	"RESERVED12\000"
.LASF61:
	.ascii	"USBCLKDIV\000"
.LASF88:
	.ascii	"RESERVED14\000"
.LASF92:
	.ascii	"RESERVED15\000"
.LASF131:
	.ascii	"msel\000"
.LASF133:
	.ascii	"Chip_FMC_SetFLASHAccess\000"
.LASF23:
	.ascii	"FMSW\000"
.LASF94:
	.ascii	"LPC_SYSCTL_T\000"
.LASF112:
	.ascii	"SYSCTL_CLOCK_I2C\000"
.LASF139:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF84:
	.ascii	"STARTRSRP0CLR\000"
.LASF130:
	.ascii	"Chip_Clock_SetupSystemPLL\000"
.LASF39:
	.ascii	"SYSPLLCTRL\000"
.LASF40:
	.ascii	"SYSPLLSTAT\000"
.LASF79:
	.ascii	"USBCLKCTRL\000"
.LASF106:
	.ascii	"CHIP_SYSCTL_CLOCK\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF65:
	.ascii	"WDTCLKDIV\000"
.LASF25:
	.ascii	"EEMSSTART\000"
.LASF118:
	.ascii	"SYSCTL_CLOCK_SSP0\000"
.LASF73:
	.ascii	"BODCTRL\000"
.LASF103:
	.ascii	"SYSCTL_MAINCLKSRC_LFOSC\000"
.LASF121:
	.ascii	"SYSCTL_CLOCK_RESERVED14\000"
.LASF67:
	.ascii	"CLKOUTSEL\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF127:
	.ascii	"SystemCoreClock\000"
.LASF137:
	.ascii	"Chip_SYSCTL_PowerDown\000"
.LASF100:
	.ascii	"CHIP_SYSCTL_MAINCLKSRC\000"
.LASF78:
	.ascii	"PINTSEL\000"
.LASF34:
	.ascii	"FLASHTIM_40MHZ_CPU\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF134:
	.ascii	"clks\000"
.LASF26:
	.ascii	"EEMSSTOP\000"
.LASF97:
	.ascii	"SYSCTL_PLLCLKSRC_RESERVED1\000"
.LASF98:
	.ascii	"SYSCTL_PLLCLKSRC_RESERVED2\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF76:
	.ascii	"IRQLATENCY\000"
.LASF102:
	.ascii	"SYSCTL_MAINCLKSRC_PLLIN\000"
.LASF83:
	.ascii	"STARTERP0\000"
.LASF87:
	.ascii	"STARTERP1\000"
.LASF108:
	.ascii	"SYSCTL_CLOCK_ROM\000"
.LASF46:
	.ascii	"LFOSCCTRL\000"
.LASF2:
	.ascii	"short int\000"
.LASF74:
	.ascii	"SYSTCKCAL\000"
.LASF37:
	.ascii	"SYSMEMREMAP\000"
.LASF32:
	.ascii	"LPC_FMC_T\000"
.LASF110:
	.ascii	"SYSCTL_CLOCK_FLASHREG\000"
.LASF43:
	.ascii	"SYSOSCCTRL\000"
.LASF111:
	.ascii	"SYSCTL_CLOCK_FLASHARRAY\000"
.LASF138:
	.ascii	"Chip_Clock_SetMainClockSource\000"
.LASF51:
	.ascii	"USBPLLCLKUEN\000"
.LASF75:
	.ascii	"RESERVED11\000"
.LASF53:
	.ascii	"MAINCLKUEN\000"
.LASF20:
	.ascii	"FMSSTART\000"
.LASF49:
	.ascii	"SYSPLLCLKUEN\000"
.LASF107:
	.ascii	"SYSCTL_CLOCK_SYS\000"
.LASF60:
	.ascii	"USBCLKUEN\000"
.LASF109:
	.ascii	"SYSCTL_CLOCK_RAM\000"
.LASF41:
	.ascii	"USBPLLCTRL\000"
.LASF69:
	.ascii	"CLKOUTDIV\000"
.LASF57:
	.ascii	"USARTCLKDIV\000"
.LASF27:
	.ascii	"EEMSSIG\000"
.LASF42:
	.ascii	"USBPLLSTAT\000"
.LASF128:
	.ascii	"Chip_Clock_EnablePeriphClock\000"
.LASF115:
	.ascii	"SYSCTL_CLOCK_CT16B1\000"
.LASF17:
	.ascii	"RESERVED1\000"
.LASF19:
	.ascii	"RESERVED2\000"
.LASF22:
	.ascii	"RESERVED3\000"
.LASF24:
	.ascii	"RESERVED4\000"
.LASF28:
	.ascii	"RESERVED5\000"
.LASF30:
	.ascii	"RESERVED6\000"
.LASF62:
	.ascii	"RESERVED7\000"
.LASF66:
	.ascii	"RESERVED8\000"
.LASF70:
	.ascii	"RESERVED9\000"
.LASF82:
	.ascii	"STARTAPRP0\000"
.LASF14:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF64:
	.ascii	"WDTCLKUEN\000"
.LASF55:
	.ascii	"SYSAHBCLKCTRL\000"
.LASF143:
	.ascii	"Chip_Clock_IsSystemPLLLocked\000"
.LASF54:
	.ascii	"SYSAHBCLKDIV\000"
.LASF18:
	.ascii	"FLASHTIM\000"
.LASF91:
	.ascii	"PDRUNCFG\000"
.LASF119:
	.ascii	"SYSCTL_CLOCK_UART0\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF35:
	.ascii	"FLASHTIM_50MHZ_CPU\000"
.LASF31:
	.ascii	"FMSTATCLR\000"
.LASF123:
	.ascii	"SYSCTL_CLOCK_IOCON\000"
.LASF13:
	.ascii	"char\000"
.LASF47:
	.ascii	"SYSRSTSTAT\000"
.LASF140:
	.ascii	"src/sysinit_11xx.c\000"
.LASF114:
	.ascii	"SYSCTL_CLOCK_CT16B0\000"
.LASF105:
	.ascii	"SYSCTL_MAINCLKSRC_PLLOUT\000"
.LASF141:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF101:
	.ascii	"SYSCTL_MAINCLKSRC_IRC\000"
.LASF132:
	.ascii	"psel\000"
.LASF86:
	.ascii	"RESERVED13\000"
.LASF16:
	.ascii	"ExtRateIn\000"
.LASF85:
	.ascii	"STARTSRP0\000"
.LASF142:
	.ascii	"Chip_SystemInit\000"
.LASF50:
	.ascii	"USBPLLCLKSEL\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF52:
	.ascii	"MAINCLKSEL\000"
.LASF99:
	.ascii	"CHIP_SYSCTL_PLLCLKSRC\000"
.LASF48:
	.ascii	"SYSPLLCLKSEL\000"
.LASF124:
	.ascii	"SYSCTL_CLOCK_CAN\000"
.LASF89:
	.ascii	"PDSLEEPCFG\000"
.LASF129:
	.ascii	"Chip_Clock_SetSysClockDiv\000"
.LASF38:
	.ascii	"PRESETCTRL\000"
.LASF136:
	.ascii	"Chip_Clock_SetSystemPLLSource\000"
.LASF45:
	.ascii	"IRCCTRL\000"
.LASF15:
	.ascii	"OscRateIn\000"
.LASF4:
	.ascii	"long int\000"
.LASF135:
	.ascii	"Chip_SYSCTL_PowerUp\000"
.LASF80:
	.ascii	"USBCLKST\000"
.LASF68:
	.ascii	"CLKOUTUEN\000"
.LASF126:
	.ascii	"CHIP_SYSCTL_CLOCK_T\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
