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
	.file	"ring_buffer.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RingBuffer_Init,"ax",%progbits
	.align	1
	.global	RingBuffer_Init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RingBuffer_Init, %function
RingBuffer_Init:
.LFB6:
	.file 1 "src/ring_buffer.c"
	.loc 1 56 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 57 0
	str	r1, [r0]
	.loc 1 58 0
	str	r3, [r0, #4]
	.loc 1 59 0
	str	r2, [r0, #8]
	.loc 1 60 0
	movs	r3, #0
.LVL1:
	str	r3, [r0, #16]
	str	r3, [r0, #12]
	.loc 1 63 0
	movs	r0, #1
.LVL2:
	@ sp needed
	bx	lr
	.cfi_endproc
.LFE6:
	.size	RingBuffer_Init, .-RingBuffer_Init
	.section	.text.RingBuffer_Insert,"ax",%progbits
	.align	1
	.global	RingBuffer_Insert
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RingBuffer_Insert, %function
RingBuffer_Insert:
.LFB7:
	.loc 1 67 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL3:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	movs	r4, r0
.LVL4:
.LBB24:
.LBB25:
.LBB26:
.LBB27:
	.file 2 "./inc/ring_buffer.h"
	.loc 2 105 0
	ldr	r3, [r0, #12]
	ldr	r0, [r0, #16]
.LVL5:
.LBE27:
.LBE26:
	.loc 2 125 0
	ldr	r2, [r4, #4]
.LVL6:
.LBB29:
.LBB28:
	.loc 2 105 0
	subs	r3, r3, r0
.LBE28:
.LBE29:
.LBE25:
.LBE24:
	.loc 1 72 0
	movs	r0, #0
	.loc 1 71 0
	cmp	r3, r2
	blt	.L5
.LVL7:
.L2:
	.loc 1 79 0
	@ sp needed
.LVL8:
	pop	{r4, pc}
.LVL9:
.L5:
	.loc 1 74 0
	subs	r2, r2, #1
.LVL10:
	ldr	r3, [r4, #12]
	ands	r2, r3
	ldr	r3, [r4, #8]
	muls	r2, r3
	ldr	r3, [r4]
	adds	r0, r3, r2
	.loc 1 75 0
	ldr	r2, [r4, #8]
	bl	memcpy
.LVL11:
	.loc 1 76 0
	ldr	r3, [r4, #12]
	adds	r3, r3, #1
	str	r3, [r4, #12]
	.loc 1 78 0
	movs	r0, #1
	b	.L2
	.cfi_endproc
.LFE7:
	.size	RingBuffer_Insert, .-RingBuffer_Insert
	.section	.text.RingBuffer_InsertMult,"ax",%progbits
	.align	1
	.global	RingBuffer_InsertMult
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RingBuffer_InsertMult, %function
RingBuffer_InsertMult:
.LFB8:
	.loc 1 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL12:
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r4, r0
	movs	r6, r1
.LVL13:
.LBB30:
.LBB31:
.LBB32:
.LBB33:
	.loc 2 105 0
	ldr	r3, [r0, #12]
	ldr	r1, [r0, #16]
.LVL14:
.LBE33:
.LBE32:
	.loc 2 125 0
	ldr	r7, [r0, #4]
.LVL15:
.LBB35:
.LBB34:
	.loc 2 105 0
	subs	r3, r3, r1
.LBE34:
.LBE35:
.LBE31:
.LBE30:
	.loc 1 89 0
	movs	r0, #0
.LVL16:
	.loc 1 88 0
	cmp	r3, r7
	bge	.L6
.LVL17:
.LBB36:
.LBB37:
.LBB38:
.LBB39:
	.loc 2 105 0
	ldr	r3, [r4, #12]
	ldr	r1, [r4, #16]
.LVL18:
	subs	r3, r3, r1
.LBE39:
.LBE38:
	.loc 2 115 0
	subs	r3, r7, r3
.LVL19:
.LBE37:
.LBE36:
	.loc 1 93 0
	subs	r1, r7, #1
	ldr	r0, [r4, #12]
	ands	r1, r0
	adds	r0, r3, r1
	.loc 1 92 0
	movs	r5, r3
	.loc 1 93 0
	cmp	r0, r7
	bcc	.L8
	.loc 1 94 0
	subs	r5, r7, r1
.LVL20:
.L8:
	.loc 1 84 0
	ldr	r0, [r4]
	.loc 1 95 0
	subs	r3, r3, r5
.LVL21:
	.loc 1 97 0
	cmp	r5, r2
	ble	.L9
	movs	r5, r2
.LVL22:
.L9:
	.loc 1 98 0
	subs	r7, r2, r5
.LVL23:
	.loc 1 100 0
	cmp	r7, r3
	ble	.L10
	movs	r7, r3
.LVL24:
.L10:
	.loc 1 104 0
	ldr	r2, [r4, #8]
.LVL25:
	muls	r1, r2
.LVL26:
	adds	r0, r0, r1
.LVL27:
	.loc 1 105 0
	muls	r2, r5
	movs	r1, r6
	bl	memcpy
.LVL28:
	.loc 1 106 0
	ldr	r3, [r4, #12]
	adds	r0, r5, r3
	str	r0, [r4, #12]
	.loc 1 109 0
	ldr	r1, [r4, #8]
.LVL29:
	ldr	r3, [r4, #4]
	subs	r3, r3, #1
	ands	r0, r3
.LVL30:
	muls	r0, r1
	ldr	r3, [r4]
	mov	ip, r3
	add	r0, r0, ip
	.loc 1 111 0
	movs	r2, r7
	muls	r2, r1
	.loc 1 110 0
	muls	r1, r5
.LVL31:
	adds	r1, r6, r1
.LVL32:
	.loc 1 111 0
	bl	memcpy
.LVL33:
	.loc 1 112 0
	ldr	r3, [r4, #12]
	adds	r3, r3, r7
	str	r3, [r4, #12]
	.loc 1 114 0
	adds	r0, r5, r7
.LVL34:
.L6:
	.loc 1 115 0
	@ sp needed
.LVL35:
	pop	{r3, r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE8:
	.size	RingBuffer_InsertMult, .-RingBuffer_InsertMult
	.section	.text.RingBuffer_Pop,"ax",%progbits
	.align	1
	.global	RingBuffer_Pop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RingBuffer_Pop, %function
RingBuffer_Pop:
.LFB9:
	.loc 1 119 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL36:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	movs	r4, r0
	movs	r3, r1
.LVL37:
.LBB40:
.LBB41:
	.loc 2 135 0
	ldr	r1, [r0, #12]
.LVL38:
	ldr	r2, [r0, #16]
.LVL39:
.LBE41:
.LBE40:
	.loc 1 124 0
	movs	r0, #0
.LVL40:
	.loc 1 123 0
	cmp	r1, r2
	beq	.L13
.LVL41:
	.loc 1 126 0
	ldr	r2, [r4, #4]
	subs	r1, r2, #1
	ldr	r2, [r4, #16]
	ands	r1, r2
	ldr	r2, [r4, #8]
	muls	r1, r2
	ldr	r2, [r4]
	mov	ip, r2
	add	r1, r1, ip
	.loc 1 127 0
	ldr	r2, [r4, #8]
	movs	r0, r3
	bl	memcpy
.LVL42:
	.loc 1 128 0
	ldr	r3, [r4, #16]
	adds	r3, r3, #1
	str	r3, [r4, #16]
	.loc 1 130 0
	movs	r0, #1
.L13:
	.loc 1 131 0
	@ sp needed
.LVL43:
	pop	{r4, pc}
	.cfi_endproc
.LFE9:
	.size	RingBuffer_Pop, .-RingBuffer_Pop
	.section	.text.RingBuffer_PopMult,"ax",%progbits
	.align	1
	.global	RingBuffer_PopMult
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	RingBuffer_PopMult, %function
RingBuffer_PopMult:
.LFB10:
	.loc 1 135 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL44:
	push	{r3, r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	movs	r4, r0
	movs	r7, r1
.LVL45:
.LBB42:
.LBB43:
	.loc 2 135 0
	ldr	r1, [r0, #12]
.LVL46:
	ldr	r3, [r0, #16]
.LVL47:
.LBE43:
.LBE42:
	.loc 1 140 0
	cmp	r1, r3
	beq	.L21
.LVL48:
.LBB44:
.LBB45:
	.loc 2 105 0
	ldr	r3, [r0, #12]
	ldr	r1, [r0, #16]
	subs	r3, r3, r1
.LVL49:
.LBE45:
.LBE44:
	.loc 1 145 0
	ldr	r0, [r0, #4]
.LVL50:
	subs	r1, r0, #1
	ldr	r5, [r4, #16]
	ands	r1, r5
	adds	r6, r1, r3
	.loc 1 144 0
	movs	r5, r3
	.loc 1 145 0
	cmp	r6, r0
	bcc	.L18
	.loc 1 146 0
	subs	r5, r0, r1
.LVL51:
.L18:
	.loc 1 136 0
	ldr	r0, [r4]
	.loc 1 147 0
	subs	r3, r3, r5
.LVL52:
	.loc 1 149 0
	cmp	r5, r2
	ble	.L19
	movs	r5, r2
.LVL53:
.L19:
	.loc 1 150 0
	subs	r6, r2, r5
.LVL54:
	.loc 1 152 0
	cmp	r6, r3
	ble	.L20
	movs	r6, r3
.LVL55:
.L20:
	.loc 1 156 0
	ldr	r3, [r4, #8]
.LVL56:
	.loc 1 157 0
	movs	r2, r5
.LVL57:
	muls	r2, r3
	.loc 1 156 0
	muls	r1, r3
.LVL58:
	adds	r1, r0, r1
.LVL59:
	.loc 1 157 0
	movs	r0, r7
	bl	memcpy
.LVL60:
	.loc 1 158 0
	ldr	r3, [r4, #16]
	adds	r3, r5, r3
	str	r3, [r4, #16]
	.loc 1 161 0
	ldr	r1, [r4, #8]
.LVL61:
	.loc 1 162 0
	movs	r0, r5
	muls	r0, r1
	adds	r0, r7, r0
.LVL62:
	.loc 1 163 0
	movs	r2, r6
	muls	r2, r1
	.loc 1 161 0
	ldr	r7, [r4, #4]
	subs	r7, r7, #1
	ands	r3, r7
.LVL63:
	muls	r1, r3
.LVL64:
	ldr	r3, [r4]
	mov	ip, r3
	add	r1, r1, ip
	.loc 1 163 0
	bl	memcpy
.LVL65:
	.loc 1 164 0
	ldr	r3, [r4, #16]
	adds	r3, r3, r6
	str	r3, [r4, #16]
	.loc 1 166 0
	adds	r0, r5, r6
.LVL66:
.L16:
	.loc 1 167 0
	@ sp needed
.LVL67:
	pop	{r3, r4, r5, r6, r7, pc}
.LVL68:
.L21:
	.loc 1 141 0
	movs	r0, #0
.LVL69:
	b	.L16
	.cfi_endproc
.LFE10:
	.size	RingBuffer_PopMult, .-RingBuffer_PopMult
	.text
.Letext0:
	.file 3 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/lock.h"
	.file 5 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_types.h"
	.file 6 "/Developer/arm/gcc-arm-none-eabi/lib/gcc/arm-none-eabi/7.2.1/include/stddef.h"
	.file 7 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/reent.h"
	.file 8 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xcbb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF146
	.byte	0xc
	.4byte	.LASF147
	.4byte	.LASF148
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x3
	.byte	0x2b
	.4byte	0x53
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0x4f
	.4byte	0x7a
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0x22
	.4byte	0x93
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.4byte	.LASF119
	.uleb128 0x4
	.4byte	.LASF13
	.byte	0x5
	.byte	0x2c
	.4byte	0x68
	.uleb128 0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x72
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x6
	.2byte	0x165
	.4byte	0x2c
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.byte	0xa6
	.4byte	0xdf
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa8
	.4byte	0xb4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0xa9
	.4byte	0xdf
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0xef
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.byte	0x8
	.byte	0x5
	.byte	0xa3
	.4byte	0x110
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa5
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x5
	.byte	0xaa
	.4byte	0xc0
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x5
	.byte	0xab
	.4byte	0xef
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x5
	.byte	0xaf
	.4byte	0x88
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x12e
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xf
	.4byte	0x12e
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x7
	.byte	0x16
	.4byte	0x7a
	.uleb128 0x10
	.4byte	.LASF28
	.byte	0x18
	.byte	0x7
	.byte	0x2f
	.4byte	0x198
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0x31
	.4byte	0x198
	.byte	0
	.uleb128 0x11
	.ascii	"_k\000"
	.byte	0x7
	.byte	0x32
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF25
	.byte	0x7
	.byte	0x32
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x7
	.byte	0x32
	.4byte	0x25
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF27
	.byte	0x7
	.byte	0x32
	.4byte	0x25
	.byte	0x10
	.uleb128 0x11
	.ascii	"_x\000"
	.byte	0x7
	.byte	0x33
	.4byte	0x19e
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x145
	.uleb128 0xa
	.4byte	0x13a
	.4byte	0x1ae
	.uleb128 0xb
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x24
	.byte	0x7
	.byte	0x37
	.4byte	0x227
	.uleb128 0xd
	.4byte	.LASF30
	.byte	0x7
	.byte	0x39
	.4byte	0x25
	.byte	0
	.uleb128 0xd
	.4byte	.LASF31
	.byte	0x7
	.byte	0x3a
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF32
	.byte	0x7
	.byte	0x3b
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF33
	.byte	0x7
	.byte	0x3c
	.4byte	0x25
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF34
	.byte	0x7
	.byte	0x3d
	.4byte	0x25
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF35
	.byte	0x7
	.byte	0x3e
	.4byte	0x25
	.byte	0x14
	.uleb128 0xd
	.4byte	.LASF36
	.byte	0x7
	.byte	0x3f
	.4byte	0x25
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF37
	.byte	0x7
	.byte	0x40
	.4byte	0x25
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF38
	.byte	0x7
	.byte	0x41
	.4byte	0x25
	.byte	0x20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF39
	.2byte	0x108
	.byte	0x7
	.byte	0x4a
	.4byte	0x267
	.uleb128 0xd
	.4byte	.LASF40
	.byte	0x7
	.byte	0x4b
	.4byte	0x267
	.byte	0
	.uleb128 0xd
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4c
	.4byte	0x267
	.byte	0x80
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4e
	.4byte	0x13a
	.2byte	0x100
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x7
	.byte	0x51
	.4byte	0x13a
	.2byte	0x104
	.byte	0
	.uleb128 0xa
	.4byte	0x126
	.4byte	0x277
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.2byte	0x190
	.byte	0x7
	.byte	0x5d
	.4byte	0x2b5
	.uleb128 0xd
	.4byte	.LASF24
	.byte	0x7
	.byte	0x5e
	.4byte	0x2b5
	.byte	0
	.uleb128 0xd
	.4byte	.LASF45
	.byte	0x7
	.byte	0x5f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF46
	.byte	0x7
	.byte	0x61
	.4byte	0x2bb
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF39
	.byte	0x7
	.byte	0x62
	.4byte	0x227
	.byte	0x88
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x277
	.uleb128 0xa
	.4byte	0x2cb
	.4byte	0x2cb
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2d1
	.uleb128 0x14
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x8
	.byte	0x7
	.byte	0x75
	.4byte	0x2f7
	.uleb128 0xd
	.4byte	.LASF48
	.byte	0x7
	.byte	0x76
	.4byte	0x2f7
	.byte	0
	.uleb128 0xd
	.4byte	.LASF49
	.byte	0x7
	.byte	0x77
	.4byte	0x25
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x68
	.byte	0x7
	.byte	0xb5
	.4byte	0x427
	.uleb128 0x11
	.ascii	"_p\000"
	.byte	0x7
	.byte	0xb6
	.4byte	0x2f7
	.byte	0
	.uleb128 0x11
	.ascii	"_r\000"
	.byte	0x7
	.byte	0xb7
	.4byte	0x25
	.byte	0x4
	.uleb128 0x11
	.ascii	"_w\000"
	.byte	0x7
	.byte	0xb8
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF51
	.byte	0x7
	.byte	0xb9
	.4byte	0x5a
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF52
	.byte	0x7
	.byte	0xba
	.4byte	0x5a
	.byte	0xe
	.uleb128 0x11
	.ascii	"_bf\000"
	.byte	0x7
	.byte	0xbb
	.4byte	0x2d2
	.byte	0x10
	.uleb128 0xd
	.4byte	.LASF53
	.byte	0x7
	.byte	0xbc
	.4byte	0x25
	.byte	0x18
	.uleb128 0xd
	.4byte	.LASF54
	.byte	0x7
	.byte	0xc3
	.4byte	0x126
	.byte	0x1c
	.uleb128 0xd
	.4byte	.LASF55
	.byte	0x7
	.byte	0xc5
	.4byte	0x582
	.byte	0x20
	.uleb128 0xd
	.4byte	.LASF56
	.byte	0x7
	.byte	0xc7
	.4byte	0x5ac
	.byte	0x24
	.uleb128 0xd
	.4byte	.LASF57
	.byte	0x7
	.byte	0xca
	.4byte	0x5d0
	.byte	0x28
	.uleb128 0xd
	.4byte	.LASF58
	.byte	0x7
	.byte	0xcb
	.4byte	0x5ea
	.byte	0x2c
	.uleb128 0x11
	.ascii	"_ub\000"
	.byte	0x7
	.byte	0xce
	.4byte	0x2d2
	.byte	0x30
	.uleb128 0x11
	.ascii	"_up\000"
	.byte	0x7
	.byte	0xcf
	.4byte	0x2f7
	.byte	0x38
	.uleb128 0x11
	.ascii	"_ur\000"
	.byte	0x7
	.byte	0xd0
	.4byte	0x25
	.byte	0x3c
	.uleb128 0xd
	.4byte	.LASF59
	.byte	0x7
	.byte	0xd3
	.4byte	0x5f0
	.byte	0x40
	.uleb128 0xd
	.4byte	.LASF60
	.byte	0x7
	.byte	0xd4
	.4byte	0x600
	.byte	0x43
	.uleb128 0x11
	.ascii	"_lb\000"
	.byte	0x7
	.byte	0xd7
	.4byte	0x2d2
	.byte	0x44
	.uleb128 0xd
	.4byte	.LASF61
	.byte	0x7
	.byte	0xda
	.4byte	0x25
	.byte	0x4c
	.uleb128 0xd
	.4byte	.LASF62
	.byte	0x7
	.byte	0xdb
	.4byte	0x9e
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF63
	.byte	0x7
	.byte	0xde
	.4byte	0x445
	.byte	0x54
	.uleb128 0xd
	.4byte	.LASF64
	.byte	0x7
	.byte	0xe2
	.4byte	0x11b
	.byte	0x58
	.uleb128 0xd
	.4byte	.LASF65
	.byte	0x7
	.byte	0xe4
	.4byte	0x110
	.byte	0x5c
	.uleb128 0xd
	.4byte	.LASF66
	.byte	0x7
	.byte	0xe5
	.4byte	0x25
	.byte	0x64
	.byte	0
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x445
	.uleb128 0x16
	.4byte	0x445
	.uleb128 0x16
	.4byte	0x126
	.uleb128 0x16
	.4byte	0x128
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x450
	.uleb128 0xf
	.4byte	0x445
	.uleb128 0x17
	.4byte	.LASF67
	.2byte	0x428
	.byte	0x7
	.2byte	0x239
	.4byte	0x582
	.uleb128 0x18
	.4byte	.LASF68
	.byte	0x7
	.2byte	0x23b
	.4byte	0x25
	.byte	0
	.uleb128 0x18
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x240
	.4byte	0x657
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x240
	.4byte	0x657
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF71
	.byte	0x7
	.2byte	0x240
	.4byte	0x657
	.byte	0xc
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x7
	.2byte	0x242
	.4byte	0x25
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x7
	.2byte	0x243
	.4byte	0x839
	.byte	0x14
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x7
	.2byte	0x246
	.4byte	0x25
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x7
	.2byte	0x247
	.4byte	0x84e
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x7
	.2byte	0x249
	.4byte	0x25
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x7
	.2byte	0x24b
	.4byte	0x85f
	.byte	0x3c
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x7
	.2byte	0x24e
	.4byte	0x198
	.byte	0x40
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x24f
	.4byte	0x25
	.byte	0x44
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x250
	.4byte	0x198
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x251
	.4byte	0x865
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x7
	.2byte	0x254
	.4byte	0x25
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x7
	.2byte	0x255
	.4byte	0x128
	.byte	0x54
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x7
	.2byte	0x278
	.4byte	0x817
	.byte	0x58
	.uleb128 0x19
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x27c
	.4byte	0x2b5
	.2byte	0x148
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x27d
	.4byte	0x277
	.2byte	0x14c
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x281
	.4byte	0x876
	.2byte	0x2dc
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x286
	.4byte	0x61c
	.2byte	0x2e0
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x288
	.4byte	0x882
	.2byte	0x2ec
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x427
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x5a6
	.uleb128 0x16
	.4byte	0x445
	.uleb128 0x16
	.4byte	0x126
	.uleb128 0x16
	.4byte	0x5a6
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x135
	.uleb128 0x5
	.byte	0x4
	.4byte	0x588
	.uleb128 0x15
	.4byte	0xa9
	.4byte	0x5d0
	.uleb128 0x16
	.4byte	0x445
	.uleb128 0x16
	.4byte	0x126
	.uleb128 0x16
	.4byte	0xa9
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5b2
	.uleb128 0x15
	.4byte	0x25
	.4byte	0x5ea
	.uleb128 0x16
	.4byte	0x445
	.uleb128 0x16
	.4byte	0x126
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x5d6
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x600
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0x53
	.4byte	0x610
	.uleb128 0xb
	.4byte	0x2c
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x11f
	.4byte	0x2fd
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0xc
	.byte	0x7
	.2byte	0x123
	.4byte	0x651
	.uleb128 0x18
	.4byte	.LASF24
	.byte	0x7
	.2byte	0x125
	.4byte	0x651
	.byte	0
	.uleb128 0x18
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x126
	.4byte	0x25
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x127
	.4byte	0x657
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x610
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0xe
	.byte	0x7
	.2byte	0x13f
	.4byte	0x692
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x140
	.4byte	0x692
	.byte	0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x141
	.4byte	0x692
	.byte	0x6
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x142
	.4byte	0x61
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.4byte	0x61
	.4byte	0x6a2
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x1b
	.byte	0xd0
	.byte	0x7
	.2byte	0x259
	.4byte	0x7a3
	.uleb128 0x18
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x25b
	.4byte	0x2c
	.byte	0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x25c
	.4byte	0x128
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x25d
	.4byte	0x7a3
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x25e
	.4byte	0x1ae
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF101
	.byte	0x7
	.2byte	0x25f
	.4byte	0x25
	.byte	0x48
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x260
	.4byte	0x81
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x7
	.2byte	0x261
	.4byte	0x65d
	.byte	0x58
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x262
	.4byte	0x110
	.byte	0x68
	.uleb128 0x18
	.4byte	.LASF105
	.byte	0x7
	.2byte	0x263
	.4byte	0x110
	.byte	0x70
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x264
	.4byte	0x110
	.byte	0x78
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x265
	.4byte	0x7b3
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x266
	.4byte	0x7c3
	.byte	0x88
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x7
	.2byte	0x267
	.4byte	0x25
	.byte	0xa0
	.uleb128 0x18
	.4byte	.LASF110
	.byte	0x7
	.2byte	0x268
	.4byte	0x110
	.byte	0xa4
	.uleb128 0x18
	.4byte	.LASF111
	.byte	0x7
	.2byte	0x269
	.4byte	0x110
	.byte	0xac
	.uleb128 0x18
	.4byte	.LASF112
	.byte	0x7
	.2byte	0x26a
	.4byte	0x110
	.byte	0xb4
	.uleb128 0x18
	.4byte	.LASF113
	.byte	0x7
	.2byte	0x26b
	.4byte	0x110
	.byte	0xbc
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x7
	.2byte	0x26c
	.4byte	0x110
	.byte	0xc4
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x7
	.2byte	0x26d
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.uleb128 0xa
	.4byte	0x12e
	.4byte	0x7b3
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.4byte	0x12e
	.4byte	0x7c3
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.4byte	0x12e
	.4byte	0x7d3
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x17
	.byte	0
	.uleb128 0x1b
	.byte	0xf0
	.byte	0x7
	.2byte	0x272
	.4byte	0x7f7
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x7
	.2byte	0x275
	.4byte	0x7f7
	.byte	0
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x7
	.2byte	0x276
	.4byte	0x807
	.byte	0x78
	.byte	0
	.uleb128 0xa
	.4byte	0x2f7
	.4byte	0x807
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.uleb128 0xa
	.4byte	0x2c
	.4byte	0x817
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x1d
	.byte	0
	.uleb128 0x1c
	.byte	0xf0
	.byte	0x7
	.2byte	0x257
	.4byte	0x839
	.uleb128 0x1d
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x26e
	.4byte	0x6a2
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0x7
	.2byte	0x277
	.4byte	0x7d3
	.byte	0
	.uleb128 0xa
	.4byte	0x12e
	.4byte	0x849
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x18
	.byte	0
	.uleb128 0x6
	.4byte	.LASF120
	.uleb128 0x5
	.byte	0x4
	.4byte	0x849
	.uleb128 0x1e
	.4byte	0x85f
	.uleb128 0x16
	.4byte	0x445
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x854
	.uleb128 0x5
	.byte	0x4
	.4byte	0x198
	.uleb128 0x1e
	.4byte	0x876
	.uleb128 0x16
	.4byte	0x25
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x87c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x86b
	.uleb128 0xa
	.4byte	0x610
	.4byte	0x892
	.uleb128 0xb
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF121
	.byte	0x7
	.2byte	0x307
	.4byte	0x445
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x7
	.2byte	0x308
	.4byte	0x44b
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0x8
	.byte	0x18
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0x8
	.byte	0x30
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF125
	.uleb128 0xc
	.byte	0x14
	.byte	0x2
	.byte	0x2d
	.4byte	0x90c
	.uleb128 0xd
	.4byte	.LASF126
	.byte	0x2
	.byte	0x2e
	.4byte	0x126
	.byte	0
	.uleb128 0xd
	.4byte	.LASF127
	.byte	0x2
	.byte	0x2f
	.4byte	0x25
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF128
	.byte	0x2
	.byte	0x30
	.4byte	0x25
	.byte	0x8
	.uleb128 0xd
	.4byte	.LASF129
	.byte	0x2
	.byte	0x31
	.4byte	0x8b5
	.byte	0xc
	.uleb128 0xd
	.4byte	.LASF130
	.byte	0x2
	.byte	0x32
	.4byte	0x8b5
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.4byte	.LASF131
	.byte	0x2
	.byte	0x33
	.4byte	0x8c7
	.uleb128 0x20
	.4byte	.LASF135
	.byte	0x1
	.byte	0x86
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e2
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x86
	.4byte	0x9e2
	.4byte	.LLST21
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x86
	.4byte	0x126
	.4byte	.LLST22
	.uleb128 0x22
	.ascii	"num\000"
	.byte	0x1
	.byte	0x86
	.4byte	0x25
	.4byte	.LLST23
	.uleb128 0x23
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x88
	.4byte	0x9e8
	.4byte	.LLST24
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x1
	.byte	0x89
	.4byte	0x25
	.4byte	.LLST25
	.uleb128 0x24
	.4byte	.LASF134
	.byte	0x1
	.byte	0x89
	.4byte	0x25
	.4byte	.LLST26
	.uleb128 0x25
	.4byte	0xc3f
	.4byte	.LBB42
	.4byte	.LBE42-.LBB42
	.byte	0x1
	.byte	0x8c
	.4byte	0x9a7
	.uleb128 0x26
	.4byte	0xc4f
	.4byte	.LLST27
	.byte	0
	.uleb128 0x25
	.4byte	0xc93
	.4byte	.LBB44
	.4byte	.LBE44-.LBB44
	.byte	0x1
	.byte	0x90
	.4byte	0x9c4
	.uleb128 0x26
	.4byte	0xca3
	.4byte	.LLST28
	.byte	0
	.uleb128 0x27
	.4byte	.LVL60
	.4byte	0xcaf
	.4byte	0x9d8
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL65
	.4byte	0xcaf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x90c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8aa
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0x76
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa63
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x76
	.4byte	0x9e2
	.4byte	.LLST17
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x76
	.4byte	0x126
	.4byte	.LLST18
	.uleb128 0x23
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x78
	.4byte	0x9e8
	.4byte	.LLST19
	.uleb128 0x25
	.4byte	0xc3f
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.byte	0x7b
	.4byte	0xa51
	.uleb128 0x26
	.4byte	0xc4f
	.4byte	.LLST20
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL42
	.4byte	0xcaf
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF137
	.byte	0x1
	.byte	0x52
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb60
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x52
	.4byte	0x9e2
	.4byte	.LLST7
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x52
	.4byte	0xb60
	.4byte	.LLST8
	.uleb128 0x22
	.ascii	"num\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x25
	.4byte	.LLST9
	.uleb128 0x23
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x54
	.4byte	0x9e8
	.4byte	.LLST10
	.uleb128 0x24
	.4byte	.LASF133
	.byte	0x1
	.byte	0x55
	.4byte	0x25
	.4byte	.LLST11
	.uleb128 0x24
	.4byte	.LASF134
	.byte	0x1
	.byte	0x55
	.4byte	0x25
	.4byte	.LLST12
	.uleb128 0x25
	.4byte	0xc5b
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x58
	.4byte	0xb0c
	.uleb128 0x26
	.4byte	0xc6b
	.4byte	.LLST13
	.uleb128 0x2b
	.4byte	0xc93
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x2
	.byte	0x7d
	.uleb128 0x26
	.4byte	0xca3
	.4byte	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	0xc77
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x1
	.byte	0x5c
	.4byte	0xb42
	.uleb128 0x26
	.4byte	0xc87
	.4byte	.LLST15
	.uleb128 0x2c
	.4byte	0xc93
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x2
	.byte	0x73
	.uleb128 0x26
	.4byte	0xca3
	.4byte	.LLST16
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL28
	.4byte	0xcaf
	.4byte	0xb56
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL33
	.4byte	0xcaf
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb66
	.uleb128 0x2d
	.uleb128 0x20
	.4byte	.LASF138
	.byte	0x1
	.byte	0x42
	.4byte	0x25
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbed
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x42
	.4byte	0x9e2
	.4byte	.LLST2
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.byte	0x42
	.4byte	0xb60
	.4byte	.LLST3
	.uleb128 0x23
	.ascii	"ptr\000"
	.byte	0x1
	.byte	0x44
	.4byte	0x9e8
	.4byte	.LLST4
	.uleb128 0x25
	.4byte	0xc5b
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x47
	.4byte	0xbe3
	.uleb128 0x26
	.4byte	0xc6b
	.4byte	.LLST5
	.uleb128 0x2b
	.4byte	0xc93
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0
	.byte	0x2
	.byte	0x7d
	.uleb128 0x26
	.4byte	0xca3
	.4byte	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL11
	.4byte	0xcaf
	.byte	0
	.uleb128 0x20
	.4byte	.LASF139
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc3f
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x37
	.4byte	0x9e2
	.4byte	.LLST0
	.uleb128 0x2e
	.4byte	.LASF140
	.byte	0x1
	.byte	0x37
	.4byte	0x126
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2e
	.4byte	.LASF141
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x37
	.4byte	0x25
	.4byte	.LLST1
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF142
	.byte	0x2
	.byte	0x85
	.4byte	0x25
	.byte	0x3
	.4byte	0xc5b
	.uleb128 0x30
	.4byte	.LASF132
	.byte	0x2
	.byte	0x85
	.4byte	0x9e2
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF143
	.byte	0x2
	.byte	0x7b
	.4byte	0x25
	.byte	0x3
	.4byte	0xc77
	.uleb128 0x30
	.4byte	.LASF132
	.byte	0x2
	.byte	0x7b
	.4byte	0x9e2
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF144
	.byte	0x2
	.byte	0x71
	.4byte	0x25
	.byte	0x3
	.4byte	0xc93
	.uleb128 0x30
	.4byte	.LASF132
	.byte	0x2
	.byte	0x71
	.4byte	0x9e2
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF145
	.byte	0x2
	.byte	0x67
	.4byte	0x25
	.byte	0x3
	.4byte	0xcaf
	.uleb128 0x30
	.4byte	.LASF132
	.byte	0x2
	.byte	0x67
	.4byte	0x9e2
	.byte	0
	.uleb128 0x31
	.4byte	.LASF149
	.4byte	.LASF150
	.byte	0x9
	.byte	0
	.4byte	.LASF149
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
	.uleb128 0x8
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
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST21:
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL69
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL46
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x77
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL68
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL44
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x76
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x9
	.byte	0x73
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x10
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x10
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x11
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65-1
	.2byte	0x12
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1a
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL69
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL51
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL55
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL38
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL42-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x12
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 16
	.byte	0x6
	.byte	0x1a
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL14
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x9
	.byte	0x71
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0xa
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL34
	.2byte	0xa
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x75
	.sleb128 0
	.byte	0x1c
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL16
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x10
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x10
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x70
	.sleb128 0
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x11
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1a
	.byte	0x71
	.sleb128 0
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33-1
	.2byte	0x12
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1a
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL24
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL11-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0xf
	.byte	0x72
	.sleb128 -1
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1a
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x12
	.byte	0x74
	.sleb128 4
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x74
	.sleb128 12
	.byte	0x6
	.byte	0x1a
	.byte	0x74
	.sleb128 8
	.byte	0x6
	.byte	0x1e
	.byte	0x74
	.sleb128 0
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x70
	.sleb128 4
	.4byte	.LVL2
	.4byte	.LFE6
	.2byte	0x5
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF41:
	.ascii	"_dso_handle\000"
.LASF127:
	.ascii	"count\000"
.LASF49:
	.ascii	"_size\000"
.LASF93:
	.ascii	"_rand48\000"
.LASF73:
	.ascii	"_emergency\000"
.LASF133:
	.ascii	"cnt1\000"
.LASF134:
	.ascii	"cnt2\000"
.LASF8:
	.ascii	"__uint8_t\000"
.LASF145:
	.ascii	"RingBuffer_GetCount\000"
.LASF63:
	.ascii	"_data\000"
.LASF113:
	.ascii	"_wcrtomb_state\000"
.LASF114:
	.ascii	"_wcsrtombs_state\000"
.LASF11:
	.ascii	"long long unsigned int\000"
.LASF53:
	.ascii	"_lbfsize\000"
.LASF142:
	.ascii	"RingBuffer_IsEmpty\000"
.LASF120:
	.ascii	"__locale_t\000"
.LASF128:
	.ascii	"itemSz\000"
.LASF111:
	.ascii	"_mbrtowc_state\000"
.LASF30:
	.ascii	"__tm_sec\000"
.LASF1:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"signed char\000"
.LASF59:
	.ascii	"_ubuf\000"
.LASF48:
	.ascii	"_base\000"
.LASF32:
	.ascii	"__tm_hour\000"
.LASF88:
	.ascii	"__sf\000"
.LASF39:
	.ascii	"_on_exit_args\000"
.LASF54:
	.ascii	"_cookie\000"
.LASF87:
	.ascii	"__sglue\000"
.LASF7:
	.ascii	"long int\000"
.LASF146:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF43:
	.ascii	"_is_cxa\000"
.LASF69:
	.ascii	"_stdin\000"
.LASF61:
	.ascii	"_blksize\000"
.LASF129:
	.ascii	"head\000"
.LASF83:
	.ascii	"_cvtbuf\000"
.LASF62:
	.ascii	"_offset\000"
.LASF112:
	.ascii	"_mbsrtowcs_state\000"
.LASF110:
	.ascii	"_mbrlen_state\000"
.LASF40:
	.ascii	"_fnargs\000"
.LASF46:
	.ascii	"_fns\000"
.LASF9:
	.ascii	"__uint32_t\000"
.LASF26:
	.ascii	"_sign\000"
.LASF21:
	.ascii	"_flock_t\000"
.LASF71:
	.ascii	"_stderr\000"
.LASF28:
	.ascii	"_Bigint\000"
.LASF101:
	.ascii	"_gamma_signgam\000"
.LASF55:
	.ascii	"_read\000"
.LASF79:
	.ascii	"_result_k\000"
.LASF29:
	.ascii	"__tm\000"
.LASF144:
	.ascii	"RingBuffer_GetFree\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF17:
	.ascii	"__wchb\000"
.LASF70:
	.ascii	"_stdout\000"
.LASF82:
	.ascii	"_cvtlen\000"
.LASF10:
	.ascii	"long unsigned int\000"
.LASF52:
	.ascii	"_file\000"
.LASF141:
	.ascii	"itemSize\000"
.LASF91:
	.ascii	"_niobs\000"
.LASF126:
	.ascii	"data\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF85:
	.ascii	"_atexit0\000"
.LASF108:
	.ascii	"_signal_buf\000"
.LASF99:
	.ascii	"_asctime_buf\000"
.LASF78:
	.ascii	"_result\000"
.LASF16:
	.ascii	"__wch\000"
.LASF149:
	.ascii	"memcpy\000"
.LASF12:
	.ascii	"_LOCK_T\000"
.LASF139:
	.ascii	"RingBuffer_Init\000"
.LASF15:
	.ascii	"wint_t\000"
.LASF150:
	.ascii	"__builtin_memcpy\000"
.LASF64:
	.ascii	"_lock\000"
.LASF138:
	.ascii	"RingBuffer_Insert\000"
.LASF5:
	.ascii	"short int\000"
.LASF56:
	.ascii	"_write\000"
.LASF35:
	.ascii	"__tm_year\000"
.LASF130:
	.ascii	"tail\000"
.LASF135:
	.ascii	"RingBuffer_PopMult\000"
.LASF2:
	.ascii	"long double\000"
.LASF116:
	.ascii	"_nextf\000"
.LASF34:
	.ascii	"__tm_mon\000"
.LASF44:
	.ascii	"_atexit\000"
.LASF76:
	.ascii	"__sdidinit\000"
.LASF13:
	.ascii	"_off_t\000"
.LASF81:
	.ascii	"_freelist\000"
.LASF106:
	.ascii	"_wctomb_state\000"
.LASF125:
	.ascii	"_Bool\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF84:
	.ascii	"_new\000"
.LASF115:
	.ascii	"_h_errno\000"
.LASF147:
	.ascii	"src/ring_buffer.c\000"
.LASF37:
	.ascii	"__tm_yday\000"
.LASF47:
	.ascii	"__sbuf\000"
.LASF66:
	.ascii	"_flags2\000"
.LASF92:
	.ascii	"_iobs\000"
.LASF89:
	.ascii	"__FILE\000"
.LASF20:
	.ascii	"_mbstate_t\000"
.LASF50:
	.ascii	"__sFILE\000"
.LASF65:
	.ascii	"_mbstate\000"
.LASF102:
	.ascii	"_rand_next\000"
.LASF140:
	.ascii	"buffer\000"
.LASF104:
	.ascii	"_mblen_state\000"
.LASF72:
	.ascii	"_inc\000"
.LASF45:
	.ascii	"_ind\000"
.LASF75:
	.ascii	"_locale\000"
.LASF77:
	.ascii	"__cleanup\000"
.LASF74:
	.ascii	"_unspecified_locale_info\000"
.LASF25:
	.ascii	"_maxwds\000"
.LASF67:
	.ascii	"_reent\000"
.LASF94:
	.ascii	"_seed\000"
.LASF18:
	.ascii	"__count\000"
.LASF119:
	.ascii	"__lock\000"
.LASF19:
	.ascii	"__value\000"
.LASF57:
	.ascii	"_seek\000"
.LASF121:
	.ascii	"_impure_ptr\000"
.LASF14:
	.ascii	"_fpos_t\000"
.LASF68:
	.ascii	"_errno\000"
.LASF22:
	.ascii	"char\000"
.LASF31:
	.ascii	"__tm_min\000"
.LASF132:
	.ascii	"RingBuff\000"
.LASF123:
	.ascii	"uint8_t\000"
.LASF95:
	.ascii	"_mult\000"
.LASF137:
	.ascii	"RingBuffer_InsertMult\000"
.LASF24:
	.ascii	"_next\000"
.LASF98:
	.ascii	"_strtok_last\000"
.LASF148:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF136:
	.ascii	"RingBuffer_Pop\000"
.LASF42:
	.ascii	"_fntypes\000"
.LASF96:
	.ascii	"_add\000"
.LASF23:
	.ascii	"__ULong\000"
.LASF143:
	.ascii	"RingBuffer_IsFull\000"
.LASF109:
	.ascii	"_getdate_err\000"
.LASF122:
	.ascii	"_global_impure_ptr\000"
.LASF124:
	.ascii	"uint32_t\000"
.LASF97:
	.ascii	"_unused_rand\000"
.LASF131:
	.ascii	"RINGBUFF_T\000"
.LASF27:
	.ascii	"_wds\000"
.LASF36:
	.ascii	"__tm_wday\000"
.LASF90:
	.ascii	"_glue\000"
.LASF51:
	.ascii	"_flags\000"
.LASF117:
	.ascii	"_nmalloc\000"
.LASF107:
	.ascii	"_l64a_buf\000"
.LASF86:
	.ascii	"_sig_func\000"
.LASF60:
	.ascii	"_nbuf\000"
.LASF118:
	.ascii	"_unused\000"
.LASF38:
	.ascii	"__tm_isdst\000"
.LASF100:
	.ascii	"_localtime_buf\000"
.LASF58:
	.ascii	"_close\000"
.LASF103:
	.ascii	"_r48\000"
.LASF105:
	.ascii	"_mbtowc_state\000"
.LASF80:
	.ascii	"_p5s\000"
.LASF33:
	.ascii	"__tm_mday\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
