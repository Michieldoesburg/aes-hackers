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
	.file	"cr_startup_lpc11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.after_vectors,"ax",%progbits
	.align	1
	.weak	NMI_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	NMI_Handler, %function
NMI_Handler:
.LFB3:
	.file 1 "src/cr_startup_lpc11xx.c"
	.loc 1 696 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L2:
	b	.L2
	.cfi_endproc
.LFE3:
	.size	NMI_Handler, .-NMI_Handler
	.align	1
	.weak	HardFault_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	HardFault_Handler, %function
HardFault_Handler:
.LFB4:
	.loc 1 703 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L4:
	b	.L4
	.cfi_endproc
.LFE4:
	.size	HardFault_Handler, .-HardFault_Handler
	.align	1
	.weak	SVC_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SVC_Handler, %function
SVC_Handler:
.LFB5:
	.loc 1 710 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L6:
	b	.L6
	.cfi_endproc
.LFE5:
	.size	SVC_Handler, .-SVC_Handler
	.align	1
	.weak	PendSV_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PendSV_Handler, %function
PendSV_Handler:
.LFB6:
	.loc 1 717 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L8:
	b	.L8
	.cfi_endproc
.LFE6:
	.size	PendSV_Handler, .-PendSV_Handler
	.align	1
	.weak	SysTick_Handler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	SysTick_Handler, %function
SysTick_Handler:
.LFB7:
	.loc 1 724 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L10:
	b	.L10
	.cfi_endproc
.LFE7:
	.size	SysTick_Handler, .-SysTick_Handler
	.align	1
	.weak	IntDefaultHandler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	IntDefaultHandler, %function
IntDefaultHandler:
.LFB8:
	.loc 1 738 0
	.cfi_startproc
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.L12:
	b	.L12
	.cfi_endproc
.LFE8:
	.size	IntDefaultHandler, .-IntDefaultHandler
	.weak	WAKEUP_IRQHandler
	.thumb_set WAKEUP_IRQHandler,IntDefaultHandler
	.weak	PIOINT0_IRQHandler
	.thumb_set PIOINT0_IRQHandler,IntDefaultHandler
	.weak	PIOINT1_IRQHandler
	.thumb_set PIOINT1_IRQHandler,IntDefaultHandler
	.weak	PIOINT2_IRQHandler
	.thumb_set PIOINT2_IRQHandler,IntDefaultHandler
	.weak	PIOINT3_IRQHandler
	.thumb_set PIOINT3_IRQHandler,IntDefaultHandler
	.weak	BOD_IRQHandler
	.thumb_set BOD_IRQHandler,IntDefaultHandler
	.weak	WDT_IRQHandler
	.thumb_set WDT_IRQHandler,IntDefaultHandler
	.weak	ADC_IRQHandler
	.thumb_set ADC_IRQHandler,IntDefaultHandler
	.weak	UART_IRQHandler
	.thumb_set UART_IRQHandler,IntDefaultHandler
	.weak	SSP0_IRQHandler
	.thumb_set SSP0_IRQHandler,IntDefaultHandler
	.weak	TIMER32_1_IRQHandler
	.thumb_set TIMER32_1_IRQHandler,IntDefaultHandler
	.weak	TIMER32_0_IRQHandler
	.thumb_set TIMER32_0_IRQHandler,IntDefaultHandler
	.weak	TIMER16_1_IRQHandler
	.thumb_set TIMER16_1_IRQHandler,IntDefaultHandler
	.weak	TIMER16_0_IRQHandler
	.thumb_set TIMER16_0_IRQHandler,IntDefaultHandler
	.weak	I2C_IRQHandler
	.thumb_set I2C_IRQHandler,IntDefaultHandler
	.weak	SSP1_IRQHandler
	.thumb_set SSP1_IRQHandler,IntDefaultHandler
	.weak	CAN_IRQHandler
	.thumb_set CAN_IRQHandler,IntDefaultHandler
	.align	1
	.global	data_init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	data_init, %function
data_init:
.LFB0:
	.loc 1 567 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL0:
	.loc 1 567 0
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LVL1:
	.loc 1 569 0
	movs	r4, r0
.LVL2:
	.loc 1 571 0
	cmp	r2, #0
	beq	.L13
	.loc 1 572 0
	subs	r1, r1, r0
.LVL3:
.L15:
	.loc 1 572 0 is_stmt 0 discriminator 3
	adds	r3, r4, #4
.LVL4:
	ldr	r5, [r4]
	str	r5, [r4, r1]
.LVL5:
	movs	r4, r3
	.loc 1 571 0 is_stmt 1 discriminator 3
	subs	r3, r3, r0
.LVL6:
	cmp	r2, r3
	bhi	.L15
.LVL7:
.L13:
	.loc 1 573 0
	@ sp needed
.LVL8:
	pop	{r4, r5, pc}
	.cfi_endproc
.LFE0:
	.size	data_init, .-data_init
	.align	1
	.global	bss_init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	bss_init, %function
bss_init:
.LFB1:
	.loc 1 576 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL9:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	.loc 1 577 0
	movs	r2, r0
.LVL10:
	.loc 1 579 0
	cmp	r1, #0
	beq	.L17
	.loc 1 580 0
	movs	r4, #0
.LVL11:
.L19:
	.loc 1 580 0 is_stmt 0 discriminator 3
	adds	r3, r2, #4
.LVL12:
	str	r4, [r2]
.LVL13:
	movs	r2, r3
	.loc 1 579 0 is_stmt 1 discriminator 3
	subs	r3, r3, r0
.LVL14:
	cmp	r3, r1
	bcc	.L19
.LVL15:
.L17:
	.loc 1 581 0
	@ sp needed
	pop	{r4, pc}
	.cfi_endproc
.LFE1:
	.size	bss_init, .-bss_init
	.align	1
	.global	ResetISR
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	ResetISR, %function
ResetISR:
.LFB2:
	.loc 1 622 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
.LVL16:
	.loc 1 635 0
	ldr	r2, .L30
	ldr	r3, .L30+4
	cmp	r2, r3
	bcs	.L27
	.loc 1 632 0
	movs	r4, r2
	.loc 1 635 0
	movs	r5, r3
.LVL17:
.L23:
	.loc 1 636 0
	ldr	r0, [r4]
.LVL18:
	.loc 1 637 0
	ldr	r1, [r4, #4]
.LVL19:
	adds	r4, r4, #12
.LVL20:
	.loc 1 638 0
	subs	r3, r4, #4
.LVL21:
	.loc 1 639 0
	ldr	r2, [r3]
	bl	data_init
.LVL22:
	.loc 1 635 0
	cmp	r4, r5
	bcc	.L23
.LVL23:
.L22:
	.loc 1 643 0
	ldr	r3, .L30+8
	cmp	r4, r3
	bcs	.L24
	movs	r5, r4
	adds	r4, r4, #8
.LVL24:
	adds	r3, r3, #7
	subs	r3, r3, r4
	movs	r2, #7
	bics	r3, r2
	adds	r4, r3, r4
.LVL25:
.L25:
	.loc 1 646 0
	ldr	r1, [r5, #4]
	ldr	r0, [r5]
	bl	bss_init
.LVL26:
	adds	r5, r5, #8
.LVL27:
	.loc 1 643 0
	cmp	r5, r4
	bne	.L25
.LVL28:
.L24:
	.loc 1 667 0
	bl	SystemInit
.LVL29:
	.loc 1 680 0
	bl	main
.LVL30:
.L26:
	b	.L26
.LVL31:
.L27:
	.loc 1 632 0
	ldr	r4, .L30
	b	.L22
.L31:
	.align	2
.L30:
	.word	__data_section_table
	.word	__data_section_table_end
	.word	__bss_section_table_end
	.cfi_endproc
.LFE2:
	.size	ResetISR, .-ResetISR
	.global	g_pfnVectors
	.section	.isr_vector,"a",%progbits
	.align	2
	.type	g_pfnVectors, %object
	.size	g_pfnVectors, 192
g_pfnVectors:
	.word	_vStackTop
	.word	ResetISR
	.word	NMI_Handler
	.word	HardFault_Handler
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	SVC_Handler
	.word	0
	.word	0
	.word	PendSV_Handler
	.word	SysTick_Handler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	WAKEUP_IRQHandler
	.word	CAN_IRQHandler
	.word	SSP1_IRQHandler
	.word	I2C_IRQHandler
	.word	TIMER16_0_IRQHandler
	.word	TIMER16_1_IRQHandler
	.word	TIMER32_0_IRQHandler
	.word	TIMER32_1_IRQHandler
	.word	SSP0_IRQHandler
	.word	UART_IRQHandler
	.word	0
	.word	0
	.word	ADC_IRQHandler
	.word	WDT_IRQHandler
	.word	BOD_IRQHandler
	.word	0
	.word	PIOINT3_IRQHandler
	.word	PIOINT2_IRQHandler
	.word	PIOINT1_IRQHandler
	.word	PIOINT0_IRQHandler
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x260
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	0x3b
	.4byte	0x30
	.uleb128 0x3
	.byte	0
	.uleb128 0x4
	.4byte	0x25
	.uleb128 0x5
	.byte	0x4
	.4byte	0x40
	.uleb128 0x4
	.4byte	0x35
	.uleb128 0x6
	.uleb128 0x7
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x10f
	.4byte	0x30
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x9
	.4byte	0x41
	.2byte	0x111
	.uleb128 0x5
	.byte	0x3
	.4byte	g_pfnVectors
	.uleb128 0x7
	.4byte	.LASF1
	.byte	0x1
	.2byte	0x24f
	.4byte	0x4d
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x1
	.2byte	0x250
	.4byte	0x4d
	.uleb128 0x7
	.4byte	.LASF3
	.byte	0x1
	.2byte	0x251
	.4byte	0x4d
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0x1
	.2byte	0x252
	.4byte	0x4d
	.uleb128 0xa
	.4byte	.LASF5
	.byte	0x1
	.2byte	0x2e1
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x2d3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x1
	.2byte	0x2cc
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x1
	.2byte	0x2c5
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x1
	.2byte	0x2be
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x2b7
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x26e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x180
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x274
	.4byte	0x4d
	.4byte	.LLST6
	.uleb128 0xc
	.4byte	.LASF12
	.byte	0x1
	.2byte	0x274
	.4byte	0x4d
	.4byte	.LLST7
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x1
	.2byte	0x274
	.4byte	0x4d
	.4byte	.LLST8
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x275
	.4byte	0x180
	.4byte	.LLST9
	.uleb128 0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x29a
	.uleb128 0xe
	.4byte	.LVL22
	.4byte	0x1d9
	.uleb128 0xe
	.4byte	.LVL26
	.4byte	0x186
	.uleb128 0xe
	.4byte	.LVL29
	.4byte	0x24c
	.uleb128 0xe
	.4byte	.LVL30
	.4byte	0x258
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4d
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.2byte	0x240
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d9
	.uleb128 0xf
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x240
	.4byte	0x4d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x10
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x240
	.4byte	0x4d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x241
	.4byte	0x180
	.4byte	.LLST4
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x242
	.4byte	0x4d
	.4byte	.LLST5
	.byte	0
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x237
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24c
	.uleb128 0xf
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x237
	.4byte	0x4d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x237
	.4byte	0x4d
	.4byte	.LLST0
	.uleb128 0x10
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x237
	.4byte	0x4d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x238
	.4byte	0x180
	.4byte	.LLST1
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x239
	.4byte	0x180
	.4byte	.LLST2
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x23a
	.4byte	0x4d
	.4byte	.LLST3
	.byte	0
	.uleb128 0x12
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x29a
	.uleb128 0x13
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x1
	.byte	0xfc
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x18
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x2
	.byte	0x75
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x74
	.sleb128 -4
	.4byte	.LVL21
	.4byte	.LVL22-1
	.2byte	0x2
	.byte	0x73
	.sleb128 0
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x2
	.byte	0x75
	.sleb128 4
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x74
	.sleb128 4
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x74
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL14
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF23:
	.ascii	"SystemInit\000"
.LASF28:
	.ascii	"unsigned int\000"
.LASF5:
	.ascii	"IntDefaultHandler\000"
.LASF22:
	.ascii	"pulSrc\000"
.LASF17:
	.ascii	"start\000"
.LASF4:
	.ascii	"__bss_section_table_end\000"
.LASF12:
	.ascii	"ExeAddr\000"
.LASF27:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/aes-nxp\000"
.LASF13:
	.ascii	"SectionLen\000"
.LASF9:
	.ascii	"HardFault_Handler\000"
.LASF10:
	.ascii	"NMI_Handler\000"
.LASF20:
	.ascii	"data_init\000"
.LASF7:
	.ascii	"PendSV_Handler\000"
.LASF16:
	.ascii	"bss_init\000"
.LASF24:
	.ascii	"main\000"
.LASF6:
	.ascii	"SysTick_Handler\000"
.LASF14:
	.ascii	"SectionTableAddr\000"
.LASF11:
	.ascii	"LoadAddr\000"
.LASF3:
	.ascii	"__bss_section_table\000"
.LASF0:
	.ascii	"g_pfnVectors\000"
.LASF18:
	.ascii	"pulDest\000"
.LASF8:
	.ascii	"SVC_Handler\000"
.LASF1:
	.ascii	"__data_section_table\000"
.LASF19:
	.ascii	"loop\000"
.LASF25:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections -fno-builtin\000"
.LASF26:
	.ascii	"src/cr_startup_lpc11xx.c\000"
.LASF2:
	.ascii	"__data_section_table_end\000"
.LASF15:
	.ascii	"ResetISR\000"
.LASF21:
	.ascii	"romstart\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
