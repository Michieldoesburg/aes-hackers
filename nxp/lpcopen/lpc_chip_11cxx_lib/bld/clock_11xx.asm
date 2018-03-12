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
	.file	"clock_11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chip_Clock_SetSystemPLLSource,"ax",%progbits
	.align	1
	.global	Chip_Clock_SetSystemPLLSource
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_SetSystemPLLSource, %function
Chip_Clock_SetSystemPLLSource:
.LFB200:
	.file 1 "src/clock_11xx.c"
	.loc 1 91 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 92 0
	ldr	r3, .L2
	str	r0, [r3, #64]
	.loc 1 93 0
	movs	r2, #0
	str	r2, [r3, #68]
	.loc 1 94 0
	adds	r2, r2, #1
	str	r2, [r3, #68]
	.loc 1 95 0
	@ sp needed
	bx	lr
.L3:
	.align	2
.L2:
	.word	1074036736
	.cfi_endproc
.LFE200:
	.size	Chip_Clock_SetSystemPLLSource, .-Chip_Clock_SetSystemPLLSource
	.section	.text.Chip_Clock_SetPLLBypass,"ax",%progbits
	.align	1
	.global	Chip_Clock_SetPLLBypass
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_SetPLLBypass, %function
Chip_Clock_SetPLLBypass:
.LFB201:
	.loc 1 99 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL1:
	.loc 1 100 0
	movs	r3, r0
.LVL2:
	.loc 1 105 0
	cmp	r1, #0
	beq	.L5
	.loc 1 106 0
	movs	r3, #2
	orrs	r3, r0
.LVL3:
.L5:
	.loc 1 109 0
	ldr	r2, .L6
	str	r3, [r2, #32]
	.loc 1 110 0
	@ sp needed
	bx	lr
.L7:
	.align	2
.L6:
	.word	1074036736
	.cfi_endproc
.LFE201:
	.size	Chip_Clock_SetPLLBypass, .-Chip_Clock_SetPLLBypass
	.section	.text.Chip_Clock_SetMainClockSource,"ax",%progbits
	.align	1
	.global	Chip_Clock_SetMainClockSource
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_SetMainClockSource, %function
Chip_Clock_SetMainClockSource:
.LFB202:
	.loc 1 125 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL4:
	.loc 1 126 0
	ldr	r3, .L9
	str	r0, [r3, #112]
	.loc 1 127 0
	movs	r2, #0
	str	r2, [r3, #116]
	.loc 1 128 0
	adds	r2, r2, #1
	str	r2, [r3, #116]
	.loc 1 129 0
	@ sp needed
	bx	lr
.L10:
	.align	2
.L9:
	.word	1074036736
	.cfi_endproc
.LFE202:
	.size	Chip_Clock_SetMainClockSource, .-Chip_Clock_SetMainClockSource
	.section	.text.Chip_Clock_SetWDTClockSource,"ax",%progbits
	.align	1
	.global	Chip_Clock_SetWDTClockSource
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_SetWDTClockSource, %function
Chip_Clock_SetWDTClockSource:
.LFB203:
	.loc 1 146 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL5:
	.loc 1 147 0
	ldr	r3, .L12
	movs	r2, #208
	str	r0, [r3, r2]
	.loc 1 148 0
	adds	r2, r2, #4
	movs	r0, #0
.LVL6:
	str	r0, [r3, r2]
	.loc 1 149 0
	adds	r0, r0, #1
	str	r0, [r3, r2]
	.loc 1 150 0
	adds	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 151 0
	@ sp needed
	bx	lr
.L13:
	.align	2
.L12:
	.word	1074036736
	.cfi_endproc
.LFE203:
	.size	Chip_Clock_SetWDTClockSource, .-Chip_Clock_SetWDTClockSource
	.section	.text.Chip_Clock_SetCLKOUTSource,"ax",%progbits
	.align	1
	.global	Chip_Clock_SetCLKOUTSource
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_SetCLKOUTSource, %function
Chip_Clock_SetCLKOUTSource:
.LFB204:
	.loc 1 158 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL7:
	.loc 1 159 0
	ldr	r3, .L15
	movs	r2, #224
	str	r0, [r3, r2]
	.loc 1 160 0
	adds	r2, r2, #4
	movs	r0, #0
.LVL8:
	str	r0, [r3, r2]
	.loc 1 161 0
	adds	r0, r0, #1
	str	r0, [r3, r2]
	.loc 1 162 0
	adds	r2, r2, #4
	str	r1, [r3, r2]
	.loc 1 163 0
	@ sp needed
	bx	lr
.L16:
	.align	2
.L15:
	.word	1074036736
	.cfi_endproc
.LFE204:
	.size	Chip_Clock_SetCLKOUTSource, .-Chip_Clock_SetCLKOUTSource
	.global	__aeabi_uidiv
	.section	.text.Chip_Clock_GetWDTOSCRate,"ax",%progbits
	.align	1
	.global	Chip_Clock_GetWDTOSCRate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_GetWDTOSCRate, %function
Chip_Clock_GetWDTOSCRate:
.LFB205:
	.loc 1 169 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 170 0
	ldr	r3, .L18
	ldr	r2, [r3, #36]
.LBB10:
.LBB11:
	.loc 1 70 0
	lsls	r3, r2, #23
	.loc 1 74 0
	lsrs	r3, r3, #28
	lsls	r3, r3, #2
	.loc 1 71 0
	movs	r1, #31
	ands	r1, r2
	.loc 1 74 0
	adds	r1, r1, #1
	lsls	r1, r1, #1
	ldr	r2, .L18+4
	ldr	r0, [r3, r2]
	bl	__aeabi_uidiv
.LVL9:
.LBE11:
.LBE10:
	.loc 1 171 0
	@ sp needed
	pop	{r4, pc}
.L19:
	.align	2
.L18:
	.word	1074036736
	.word	.LANCHOR0
	.cfi_endproc
.LFE205:
	.size	Chip_Clock_GetWDTOSCRate, .-Chip_Clock_GetWDTOSCRate
	.section	.text.Chip_Clock_GetSystemPLLInClockRate,"ax",%progbits
	.align	1
	.global	Chip_Clock_GetSystemPLLInClockRate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_GetSystemPLLInClockRate, %function
Chip_Clock_GetSystemPLLInClockRate:
.LFB206:
	.loc 1 184 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 187 0
	ldr	r3, .L25
	ldr	r3, [r3, #64]
	movs	r2, #3
	ands	r3, r2
	beq	.L24
	.loc 1 203 0
	movs	r0, #0
	.loc 1 187 0
	cmp	r3, #1
	bne	.L20
.LBB12:
.LBB13:
	.file 2 "./inc/clock_11xx.h"
	.loc 2 458 0
	ldr	r3, .L25+4
	ldr	r0, [r3]
.L20:
.LBE13:
.LBE12:
	.loc 1 207 0
	@ sp needed
	bx	lr
.L24:
	.loc 1 189 0
	ldr	r0, .L25+8
.LVL10:
	.loc 1 206 0
	b	.L20
.L26:
	.align	2
.L25:
	.word	1074036736
	.word	OscRateIn
	.word	12000000
	.cfi_endproc
.LFE206:
	.size	Chip_Clock_GetSystemPLLInClockRate, .-Chip_Clock_GetSystemPLLInClockRate
	.section	.text.Chip_Clock_GetSystemPLLOutClockRate,"ax",%progbits
	.align	1
	.global	Chip_Clock_GetSystemPLLOutClockRate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_GetSystemPLLOutClockRate, %function
Chip_Clock_GetSystemPLLOutClockRate:
.LFB207:
	.loc 1 211 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 212 0
	ldr	r3, .L28
	ldr	r4, [r3, #8]
	bl	Chip_Clock_GetSystemPLLInClockRate
.LVL11:
.LBB16:
.LBB17:
	.loc 1 80 0
	movs	r3, #31
	ands	r3, r4
	adds	r3, r3, #1
	.loc 1 82 0
	muls	r0, r3
.LBE17:
.LBE16:
	.loc 1 214 0
	@ sp needed
	pop	{r4, pc}
.L29:
	.align	2
.L28:
	.word	1074036736
	.cfi_endproc
.LFE207:
	.size	Chip_Clock_GetSystemPLLOutClockRate, .-Chip_Clock_GetSystemPLLOutClockRate
	.section	.text.Chip_Clock_GetMainClockRate,"ax",%progbits
	.align	1
	.global	Chip_Clock_GetMainClockRate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_GetMainClockRate, %function
Chip_Clock_GetMainClockRate:
.LFB208:
	.loc 1 249 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL12:
	.loc 1 252 0
	ldr	r3, .L39
	ldr	r3, [r3, #112]
	movs	r2, #3
	ands	r3, r2
	cmp	r3, #1
	beq	.L32
	ble	.L38
	cmp	r3, #2
	beq	.L35
	cmp	r3, #3
	bne	.L37
	.loc 1 273 0
	bl	Chip_Clock_GetSystemPLLOutClockRate
.LVL13:
	.loc 1 274 0
	b	.L30
.LVL14:
.L38:
	.loc 1 252 0
	cmp	r3, #0
	bne	.L37
	.loc 1 254 0
	ldr	r0, .L39+4
.LVL15:
.L30:
	.loc 1 278 0
	@ sp needed
	pop	{r4, pc}
.LVL16:
.L32:
	.loc 1 258 0
	bl	Chip_Clock_GetSystemPLLInClockRate
.LVL17:
	.loc 1 259 0
	b	.L30
.LVL18:
.L35:
	.loc 1 268 0
	bl	Chip_Clock_GetWDTOSCRate
.LVL19:
	.loc 1 269 0
	b	.L30
.LVL20:
.L37:
	.loc 1 250 0
	movs	r0, #0
	.loc 1 277 0
	b	.L30
.L40:
	.align	2
.L39:
	.word	1074036736
	.word	12000000
	.cfi_endproc
.LFE208:
	.size	Chip_Clock_GetMainClockRate, .-Chip_Clock_GetMainClockRate
	.section	.text.Chip_Clock_GetSystemClockRate,"ax",%progbits
	.align	1
	.global	Chip_Clock_GetSystemClockRate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_Clock_GetSystemClockRate, %function
Chip_Clock_GetSystemClockRate:
.LFB209:
	.loc 1 282 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 284 0
	bl	Chip_Clock_GetMainClockRate
.LVL21:
	ldr	r3, .L42
	ldr	r1, [r3, #120]
	bl	__aeabi_uidiv
.LVL22:
	.loc 1 285 0
	@ sp needed
	pop	{r4, pc}
.L43:
	.align	2
.L42:
	.word	1074036736
	.cfi_endproc
.LFE209:
	.size	Chip_Clock_GetSystemClockRate, .-Chip_Clock_GetSystemClockRate
	.section	.rodata.wdtOSCRate,"a",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	wdtOSCRate, %object
	.size	wdtOSCRate, 64
wdtOSCRate:
	.word	0
	.word	600000
	.word	1050000
	.word	1400000
	.word	1750000
	.word	2100000
	.word	2400000
	.word	2700000
	.word	3000000
	.word	3250000
	.word	3500000
	.word	3750000
	.word	4000000
	.word	4200000
	.word	4400000
	.word	4600000
	.text
.Letext0:
	.file 3 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./inc/chip.h"
	.file 6 "./inc/sysctl_11xx.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x906
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
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
	.4byte	.LASF84
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x2
	.byte	0x47
	.4byte	0x50c
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
	.byte	0
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x2
	.byte	0x50
	.4byte	0x4e2
	.uleb128 0xd
	.4byte	.LASF85
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x2
	.byte	0x8a
	.4byte	0x589
	.uleb128 0xe
	.4byte	.LASF86
	.byte	0
	.uleb128 0xe
	.4byte	.LASF87
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF88
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF89
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF90
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF91
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF92
	.byte	0x6
	.uleb128 0xe
	.4byte	.LASF93
	.byte	0x7
	.uleb128 0xe
	.4byte	.LASF94
	.byte	0x8
	.uleb128 0xe
	.4byte	.LASF95
	.byte	0x9
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0xa
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0xb
	.uleb128 0xe
	.4byte	.LASF98
	.byte	0xc
	.uleb128 0xe
	.4byte	.LASF99
	.byte	0xd
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0xe
	.uleb128 0xe
	.4byte	.LASF101
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x2
	.byte	0x9b
	.4byte	0x517
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x2
	.byte	0xbb
	.4byte	0x5c4
	.uleb128 0xe
	.4byte	.LASF104
	.byte	0
	.uleb128 0xe
	.4byte	.LASF105
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF106
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x2
	.byte	0xc1
	.4byte	0x594
	.uleb128 0xf
	.4byte	.LASF110
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x2
	.2byte	0x196
	.4byte	0x5f4
	.uleb128 0xe
	.4byte	.LASF111
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x2
	.byte	0
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x2
	.2byte	0x19a
	.4byte	0x5cf
	.uleb128 0xf
	.4byte	.LASF115
	.byte	0x7
	.byte	0x1
	.4byte	0x2c
	.byte	0x2
	.2byte	0x1ae
	.4byte	0x631
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF120
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x2
	.2byte	0x1b4
	.4byte	0x600
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x5
	.2byte	0x11c
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x8b
	.4byte	0x659
	.uleb128 0x8
	.4byte	0x6f
	.byte	0xf
	.byte	0
	.uleb128 0x6
	.4byte	0x649
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0x1
	.byte	0x24
	.4byte	0x659
	.uleb128 0x5
	.byte	0x3
	.4byte	wdtOSCRate
	.uleb128 0x13
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x119
	.4byte	0x76
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x693
	.uleb128 0x14
	.4byte	.LVL21
	.4byte	0x693
	.byte	0
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x1
	.byte	0xf8
	.4byte	0x76
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6d7
	.uleb128 0x16
	.4byte	.LASF126
	.byte	0x1
	.byte	0xfa
	.4byte	0x76
	.4byte	.LLST3
	.uleb128 0x14
	.4byte	.LVL13
	.4byte	0x6d7
	.uleb128 0x14
	.4byte	.LVL17
	.4byte	0x727
	.uleb128 0x14
	.4byte	.LVL19
	.4byte	0x75f
	.byte	0
	.uleb128 0x15
	.4byte	.LASF127
	.byte	0x1
	.byte	0xd2
	.4byte	0x76
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x727
	.uleb128 0x17
	.4byte	0x88b
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0xd4
	.4byte	0x71d
	.uleb128 0x18
	.4byte	0x8a6
	.uleb128 0x18
	.4byte	0x89b
	.uleb128 0x19
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.uleb128 0x1a
	.4byte	0x8b1
	.byte	0
	.byte	0
	.uleb128 0x14
	.4byte	.LVL11
	.4byte	0x727
	.byte	0
	.uleb128 0x15
	.4byte	.LASF128
	.byte	0x1
	.byte	0xb7
	.4byte	0x76
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75f
	.uleb128 0x1b
	.4byte	.LASF126
	.byte	0x1
	.byte	0xb9
	.4byte	0x76
	.4byte	0xb71b00
	.uleb128 0x1c
	.4byte	0x8fc
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0xc1
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x1
	.byte	0xa8
	.4byte	0x76
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7a2
	.uleb128 0x1e
	.4byte	0x8bd
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0xaa
	.uleb128 0x18
	.4byte	0x8cd
	.uleb128 0x19
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x1a
	.4byte	0x8d8
	.uleb128 0x1a
	.4byte	0x8e3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x9d
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d4
	.uleb128 0x20
	.ascii	"src\000"
	.byte	0x1
	.byte	0x9d
	.4byte	0x631
	.4byte	.LLST2
	.uleb128 0x21
	.ascii	"div\000"
	.byte	0x1
	.byte	0x9d
	.4byte	0x76
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF131
	.byte	0x1
	.byte	0x91
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x806
	.uleb128 0x20
	.ascii	"src\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x5f4
	.4byte	.LLST1
	.uleb128 0x21
	.ascii	"div\000"
	.byte	0x1
	.byte	0x91
	.4byte	0x76
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF132
	.byte	0x1
	.byte	0x7c
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x829
	.uleb128 0x21
	.ascii	"src\000"
	.byte	0x1
	.byte	0x7c
	.4byte	0x5c4
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x1
	.byte	0x62
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x868
	.uleb128 0x22
	.4byte	.LASF134
	.byte	0x1
	.byte	0x62
	.4byte	0x97
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x22
	.4byte	.LASF135
	.byte	0x1
	.byte	0x62
	.4byte	0x97
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x16
	.4byte	.LASF136
	.byte	0x1
	.byte	0x64
	.4byte	0x76
	.4byte	.LLST0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF137
	.byte	0x1
	.byte	0x5a
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88b
	.uleb128 0x21
	.ascii	"src\000"
	.byte	0x1
	.byte	0x5a
	.4byte	0x50c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x23
	.4byte	.LASF140
	.byte	0x1
	.byte	0x4e
	.4byte	0x76
	.byte	0x1
	.4byte	0x8bd
	.uleb128 0x24
	.4byte	.LASF138
	.byte	0x1
	.byte	0x4e
	.4byte	0x76
	.uleb128 0x24
	.4byte	.LASF139
	.byte	0x1
	.byte	0x4e
	.4byte	0x76
	.uleb128 0x25
	.4byte	.LASF142
	.byte	0x1
	.byte	0x50
	.4byte	0x76
	.byte	0
	.uleb128 0x23
	.4byte	.LASF141
	.byte	0x1
	.byte	0x40
	.4byte	0x76
	.byte	0x1
	.4byte	0x8ef
	.uleb128 0x26
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x40
	.4byte	0x76
	.uleb128 0x27
	.ascii	"div\000"
	.byte	0x1
	.byte	0x42
	.4byte	0x76
	.uleb128 0x27
	.ascii	"clk\000"
	.byte	0x1
	.byte	0x43
	.4byte	0x589
	.byte	0
	.uleb128 0x28
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x1d1
	.4byte	0x76
	.byte	0x3
	.uleb128 0x28
	.4byte	.LASF144
	.byte	0x2
	.2byte	0x1c8
	.4byte	0x76
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
	.uleb128 0x10
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x16
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x18
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LFE208
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LFE204
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE203
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE201
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB200
	.4byte	.LFE200
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	.LFB202
	.4byte	.LFE202
	.4byte	.LFB203
	.4byte	.LFE203
	.4byte	.LFB204
	.4byte	.LFE204
	.4byte	.LFB205
	.4byte	.LFE205
	.4byte	.LFB206
	.4byte	.LFE206
	.4byte	.LFB207
	.4byte	.LFE207
	.4byte	.LFB208
	.4byte	.LFE208
	.4byte	.LFB209
	.4byte	.LFE209
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF123:
	.ascii	"Chip_Clock_GetSystemClockRate\000"
.LASF43:
	.ascii	"USBCLKSEL\000"
.LASF39:
	.ascii	"SSP0CLKDIV\000"
.LASF74:
	.ascii	"PDWAKECFG\000"
.LASF47:
	.ascii	"WDTCLKSEL\000"
.LASF146:
	.ascii	"src/clock_11xx.c\000"
.LASF100:
	.ascii	"WDTLFO_OSC_4_40\000"
.LASF121:
	.ascii	"CHIP_SYSCTL_CLKOUTSRC_T\000"
.LASF77:
	.ascii	"DEVICEID\000"
.LASF4:
	.ascii	"long int\000"
.LASF117:
	.ascii	"SYSCTL_CLKOUTSRC_MAINOSC\000"
.LASF107:
	.ascii	"SYSCTL_MAINCLKSRC_WDTOSC\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF23:
	.ascii	"WDTOSCCTRL\000"
.LASF114:
	.ascii	"CHIP_SYSCTL_WDTCLKSRC_T\000"
.LASF109:
	.ascii	"CHIP_SYSCTL_MAINCLKSRC_T\000"
.LASF61:
	.ascii	"NMISRC\000"
.LASF125:
	.ascii	"wdtOSCRate\000"
.LASF0:
	.ascii	"signed char\000"
.LASF80:
	.ascii	"SYSCTL_PLLCLKSRC_MAINOSC\000"
.LASF79:
	.ascii	"SYSCTL_PLLCLKSRC_IRC\000"
.LASF56:
	.ascii	"RESERVED10\000"
.LASF55:
	.ascii	"PIOPORCAP\000"
.LASF65:
	.ascii	"RESERVED12\000"
.LASF45:
	.ascii	"USBCLKDIV\000"
.LASF72:
	.ascii	"RESERVED14\000"
.LASF76:
	.ascii	"RESERVED15\000"
.LASF142:
	.ascii	"msel\000"
.LASF78:
	.ascii	"LPC_SYSCTL_T\000"
.LASF145:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF127:
	.ascii	"Chip_Clock_GetSystemPLLOutClockRate\000"
.LASF6:
	.ascii	"long long int\000"
.LASF118:
	.ascii	"SYSCTL_CLKOUTSRC_WDTOSC\000"
.LASF17:
	.ascii	"SYSPLLCTRL\000"
.LASF83:
	.ascii	"CHIP_SYSCTL_PLLCLKSRC_T\000"
.LASF139:
	.ascii	"inputRate\000"
.LASF135:
	.ascii	"highfr\000"
.LASF18:
	.ascii	"SYSPLLSTAT\000"
.LASF92:
	.ascii	"WDTLFO_OSC_2_40\000"
.LASF133:
	.ascii	"Chip_Clock_SetPLLBypass\000"
.LASF63:
	.ascii	"USBCLKCTRL\000"
.LASF96:
	.ascii	"WDTLFO_OSC_3_50\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF49:
	.ascii	"WDTCLKDIV\000"
.LASF57:
	.ascii	"BODCTRL\000"
.LASF106:
	.ascii	"SYSCTL_MAINCLKSRC_LFOSC\000"
.LASF51:
	.ascii	"CLKOUTSEL\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF94:
	.ascii	"WDTLFO_OSC_3_00\000"
.LASF122:
	.ascii	"SystemCoreClock\000"
.LASF103:
	.ascii	"CHIP_SYSCTL_MAINCLKSRC\000"
.LASF62:
	.ascii	"PINTSEL\000"
.LASF5:
	.ascii	"long unsigned int\000"
.LASF89:
	.ascii	"WDTLFO_OSC_1_40\000"
.LASF85:
	.ascii	"CHIP_WDTLFO_OSC\000"
.LASF81:
	.ascii	"SYSCTL_PLLCLKSRC_RESERVED1\000"
.LASF144:
	.ascii	"Chip_Clock_GetMainOscRate\000"
.LASF102:
	.ascii	"CHIP_WDTLFO_OSC_T\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF60:
	.ascii	"IRQLATENCY\000"
.LASF105:
	.ascii	"SYSCTL_MAINCLKSRC_PLLIN\000"
.LASF112:
	.ascii	"SYSCTL_WDTCLKSRC_MAINSYSCLK\000"
.LASF113:
	.ascii	"SYSCTL_WDTCLKSRC_WDTOSC\000"
.LASF67:
	.ascii	"STARTERP0\000"
.LASF71:
	.ascii	"STARTERP1\000"
.LASF25:
	.ascii	"LFOSCCTRL\000"
.LASF2:
	.ascii	"short int\000"
.LASF58:
	.ascii	"SYSTCKCAL\000"
.LASF15:
	.ascii	"SYSMEMREMAP\000"
.LASF138:
	.ascii	"PLLReg\000"
.LASF110:
	.ascii	"CHIP_SYSCTL_WDTCLKSRC\000"
.LASF98:
	.ascii	"WDTLFO_OSC_4_00\000"
.LASF130:
	.ascii	"Chip_Clock_SetCLKOUTSource\000"
.LASF141:
	.ascii	"Chip_Clock_GetWDTLFORate\000"
.LASF22:
	.ascii	"SYSOSCCTRL\000"
.LASF41:
	.ascii	"SSP1CLKDIV\000"
.LASF132:
	.ascii	"Chip_Clock_SetMainClockSource\000"
.LASF31:
	.ascii	"USBPLLCLKUEN\000"
.LASF59:
	.ascii	"RESERVED11\000"
.LASF97:
	.ascii	"WDTLFO_OSC_3_75\000"
.LASF70:
	.ascii	"RESERVED13\000"
.LASF29:
	.ascii	"SYSPLLCLKUEN\000"
.LASF44:
	.ascii	"USBCLKUEN\000"
.LASF19:
	.ascii	"USBPLLCTRL\000"
.LASF53:
	.ascii	"CLKOUTDIV\000"
.LASF40:
	.ascii	"USARTCLKDIV\000"
.LASF82:
	.ascii	"SYSCTL_PLLCLKSRC_RESERVED2\000"
.LASF20:
	.ascii	"USBPLLSTAT\000"
.LASF128:
	.ascii	"Chip_Clock_GetSystemPLLInClockRate\000"
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
.LASF50:
	.ascii	"RESERVED8\000"
.LASF54:
	.ascii	"RESERVED9\000"
.LASF66:
	.ascii	"STARTAPRP0\000"
.LASF12:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF93:
	.ascii	"WDTLFO_OSC_2_70\000"
.LASF116:
	.ascii	"SYSCTL_CLKOUTSRC_IRC\000"
.LASF48:
	.ascii	"WDTCLKUEN\000"
.LASF37:
	.ascii	"SYSAHBCLKCTRL\000"
.LASF111:
	.ascii	"SYSCTL_WDTCLKSRC_IRC\000"
.LASF35:
	.ascii	"SYSAHBCLKDIV\000"
.LASF143:
	.ascii	"Chip_Clock_GetIntOscRate\000"
.LASF75:
	.ascii	"PDRUNCFG\000"
.LASF87:
	.ascii	"WDTLFO_OSC_0_60\000"
.LASF101:
	.ascii	"WDTLFO_OSC_4_60\000"
.LASF11:
	.ascii	"char\000"
.LASF90:
	.ascii	"WDTLFO_OSC_1_75\000"
.LASF99:
	.ascii	"WDTLFO_OSC_4_20\000"
.LASF108:
	.ascii	"SYSCTL_MAINCLKSRC_PLLOUT\000"
.LASF124:
	.ascii	"Chip_Clock_GetMainClockRate\000"
.LASF126:
	.ascii	"clkRate\000"
.LASF34:
	.ascii	"MAINCLKUEN\000"
.LASF115:
	.ascii	"CHIP_SYSCTL_CLKOUTSRC\000"
.LASF86:
	.ascii	"WDTLFO_OSC_ILLEGAL\000"
.LASF147:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF136:
	.ascii	"ctrl\000"
.LASF104:
	.ascii	"SYSCTL_MAINCLKSRC_IRC\000"
.LASF88:
	.ascii	"WDTLFO_OSC_1_05\000"
.LASF91:
	.ascii	"WDTLFO_OSC_2_10\000"
.LASF10:
	.ascii	"uint32_t\000"
.LASF140:
	.ascii	"Chip_Clock_GetPLLFreq\000"
.LASF131:
	.ascii	"Chip_Clock_SetWDTClockSource\000"
.LASF14:
	.ascii	"ExtRateIn\000"
.LASF69:
	.ascii	"STARTSRP0\000"
.LASF95:
	.ascii	"WDTLFO_OSC_3_25\000"
.LASF30:
	.ascii	"USBPLLCLKSEL\000"
.LASF129:
	.ascii	"Chip_Clock_GetWDTOSCRate\000"
.LASF119:
	.ascii	"SYSCTL_CLKOUTSRC_LFOSC\000"
.LASF33:
	.ascii	"MAINCLKSEL\000"
.LASF84:
	.ascii	"CHIP_SYSCTL_PLLCLKSRC\000"
.LASF28:
	.ascii	"SYSPLLCLKSEL\000"
.LASF26:
	.ascii	"SYSRSTSTAT\000"
.LASF73:
	.ascii	"PDSLEEPCFG\000"
.LASF16:
	.ascii	"PRESETCTRL\000"
.LASF137:
	.ascii	"Chip_Clock_SetSystemPLLSource\000"
.LASF24:
	.ascii	"IRCCTRL\000"
.LASF13:
	.ascii	"OscRateIn\000"
.LASF134:
	.ascii	"bypass\000"
.LASF64:
	.ascii	"USBCLKST\000"
.LASF52:
	.ascii	"CLKOUTUEN\000"
.LASF120:
	.ascii	"SYSCTL_CLKOUTSRC_MAINSYSCLK\000"
.LASF68:
	.ascii	"STARTRSRP0CLR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
