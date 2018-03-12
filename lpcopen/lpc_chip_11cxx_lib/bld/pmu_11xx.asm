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
	.file	"pmu_11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chip_PMU_SleepState,"ax",%progbits
	.align	1
	.global	Chip_PMU_SleepState
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_PMU_SleepState, %function
Chip_PMU_SleepState:
.LFB198:
	.file 1 "src/pmu_11xx.c"
	.loc 1 54 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 55 0
	movs	r3, #0
	str	r3, [r0]
.LBB6:
.LBB7:
	.file 2 "./inc/core_cmInstr.h"
	.loc 2 299 0
	.syntax divided
@ 299 "./inc/core_cmInstr.h" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
.LBE7:
.LBE6:
	.loc 1 59 0
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE198:
	.size	Chip_PMU_SleepState, .-Chip_PMU_SleepState
	.section	.text.Chip_PMU_DeepPowerDownState,"ax",%progbits
	.align	1
	.global	Chip_PMU_DeepPowerDownState
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_PMU_DeepPowerDownState, %function
Chip_PMU_DeepPowerDownState:
.LFB199:
	.loc 1 85 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1:
	.loc 1 86 0
	ldr	r2, .L3
	ldr	r3, [r2, #16]
	movs	r1, #4
	orrs	r3, r1
	str	r3, [r2, #16]
	.loc 1 87 0
	movs	r3, #2
	str	r3, [r0]
.LBB8:
.LBB9:
	.loc 2 299 0
	.syntax divided
@ 299 "./inc/core_cmInstr.h" 1
	wfi
@ 0 "" 2
	.thumb
	.syntax unified
.LBE9:
.LBE8:
	.loc 1 91 0
	@ sp needed
	bx	lr
.L4:
	.align	2
.L3:
	.word	-536810240
	.cfi_endproc
.LFE199:
	.size	Chip_PMU_DeepPowerDownState, .-Chip_PMU_DeepPowerDownState
	.section	.text.Chip_PMU_Sleep,"ax",%progbits
	.align	1
	.global	Chip_PMU_Sleep
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_PMU_Sleep, %function
Chip_PMU_Sleep:
.LFB200:
	.loc 1 95 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 111 0
	cmp	r1, #3
	beq	.L7
.LVL3:
.L5:
	.loc 1 115 0
	@ sp needed
	pop	{r4, pc}
.LVL4:
.L7:
	.loc 1 112 0
	bl	Chip_PMU_DeepPowerDownState
.LVL5:
	.loc 1 115 0
	b	.L5
	.cfi_endproc
.LFE200:
	.size	Chip_PMU_Sleep, .-Chip_PMU_Sleep
	.text
.Letext0:
	.file 3 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./inc/core_cm0.h"
	.file 6 "./inc/chip.h"
	.file 7 "./inc/pmu_11xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x277
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF34
	.byte	0xc
	.4byte	.LASF35
	.4byte	.LASF36
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
	.byte	0x28
	.byte	0x5
	.2byte	0x122
	.4byte	0x11d
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x5
	.2byte	0x124
	.4byte	0x86
	.byte	0
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x5
	.2byte	0x125
	.4byte	0x81
	.byte	0x4
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x5
	.2byte	0x126
	.4byte	0x76
	.byte	0x8
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x5
	.2byte	0x127
	.4byte	0x81
	.byte	0xc
	.uleb128 0x9
	.ascii	"SCR\000"
	.byte	0x5
	.2byte	0x128
	.4byte	0x81
	.byte	0x10
	.uleb128 0x9
	.ascii	"CCR\000"
	.byte	0x5
	.2byte	0x129
	.4byte	0x81
	.byte	0x14
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x12a
	.4byte	0x76
	.byte	0x18
	.uleb128 0x9
	.ascii	"SHP\000"
	.byte	0x5
	.2byte	0x12b
	.4byte	0x12d
	.byte	0x1c
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x12c
	.4byte	0x81
	.byte	0x24
	.byte	0
	.uleb128 0xa
	.4byte	0x81
	.4byte	0x12d
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x11d
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x12d
	.4byte	0x9e
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x6
	.byte	0xd3
	.4byte	0x8b
	.uleb128 0xd
	.4byte	.LASF21
	.byte	0x6
	.byte	0xe2
	.4byte	0x8b
	.uleb128 0xe
	.byte	0x14
	.byte	0x7
	.byte	0x37
	.4byte	0x175
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x7
	.byte	0x38
	.4byte	0x81
	.byte	0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x7
	.byte	0x39
	.4byte	0x185
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	0x81
	.4byte	0x185
	.uleb128 0xb
	.4byte	0x6f
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0x175
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x7
	.byte	0x3a
	.4byte	0x154
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x7
	.byte	0x3f
	.4byte	0x1b3
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x7
	.byte	0x48
	.4byte	0x195
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x11c
	.4byte	0x76
	.uleb128 0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5e
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x207
	.uleb128 0x14
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5e
	.4byte	0x207
	.4byte	.LLST0
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x1
	.byte	0x5e
	.4byte	0x1b3
	.4byte	.LLST1
	.uleb128 0x15
	.4byte	.LVL5
	.4byte	0x20d
	.byte	0
	.uleb128 0x16
	.byte	0x4
	.4byte	0x18a
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.byte	0x54
	.4byte	.LFB199
	.4byte	.LFE199-.LFB199
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23f
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0x54
	.4byte	0x207
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	0x271
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x5a
	.byte	0
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.byte	0x35
	.4byte	.LFB198
	.4byte	.LFE198-.LFB198
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x271
	.uleb128 0x17
	.4byte	.LASF29
	.byte	0x1
	.byte	0x35
	.4byte	0x207
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x18
	.4byte	0x271
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x129
	.byte	0x3
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
	.uleb128 0x8
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0
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
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-1
	.4byte	.LFE200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-1
	.4byte	.LFE200
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
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
.LASF6:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"OscRateIn\000"
.LASF18:
	.ascii	"SHCSR\000"
.LASF30:
	.ascii	"SleepMode\000"
.LASF32:
	.ascii	"Chip_PMU_DeepPowerDownState\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF37:
	.ascii	"CHIP_PMU_MCUPOWER\000"
.LASF15:
	.ascii	"RESERVED0\000"
.LASF17:
	.ascii	"RESERVED1\000"
.LASF34:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF29:
	.ascii	"pPMU\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF36:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF31:
	.ascii	"Chip_PMU_Sleep\000"
.LASF19:
	.ascii	"SCB_Type\000"
.LASF33:
	.ascii	"Chip_PMU_SleepState\000"
.LASF23:
	.ascii	"GPREG\000"
.LASF11:
	.ascii	"char\000"
.LASF14:
	.ascii	"ICSR\000"
.LASF16:
	.ascii	"AIRCR\000"
.LASF24:
	.ascii	"LPC_PMU_T\000"
.LASF21:
	.ascii	"ExtRateIn\000"
.LASF26:
	.ascii	"PMU_MCU_DEEP_PWRDOWN\000"
.LASF13:
	.ascii	"CPUID\000"
.LASF28:
	.ascii	"SystemCoreClock\000"
.LASF27:
	.ascii	"CHIP_PMU_MCUPOWER_T\000"
.LASF2:
	.ascii	"short int\000"
.LASF35:
	.ascii	"src/pmu_11xx.c\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF4:
	.ascii	"long int\000"
.LASF38:
	.ascii	"__WFI\000"
.LASF0:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"_Bool\000"
.LASF22:
	.ascii	"PCON\000"
.LASF25:
	.ascii	"PMU_MCU_SLEEP\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
