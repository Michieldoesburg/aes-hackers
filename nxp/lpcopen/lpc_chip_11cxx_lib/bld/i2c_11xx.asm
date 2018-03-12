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
	.file	"i2c_11xx.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Chip_I2C_EventHandler,"ax",%progbits
	.align	1
	.global	Chip_I2C_EventHandler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_EventHandler, %function
Chip_I2C_EventHandler:
.LFB212:
	.file 1 "src/i2c_11xx.c"
	.loc 1 329 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL0:
	.loc 1 334 0
	cmp	r1, #1
	beq	.L5
.LVL1:
.L1:
	.loc 1 341 0
	@ sp needed
	bx	lr
.LVL2:
.L5:
	.loc 1 338 0
	lsls	r3, r0, #3
	subs	r0, r3, r0
.LVL3:
	lsls	r0, r0, #2
	ldr	r3, .L6
	adds	r0, r3, r0
	ldr	r2, [r0, #16]
.LVL4:
.L3:
	.loc 1 340 0 discriminator 1
	ldrb	r3, [r2, #20]
	cmp	r3, #4
	beq	.L3
	b	.L1
.L7:
	.align	2
.L6:
	.word	.LANCHOR0
	.cfi_endproc
.LFE212:
	.size	Chip_I2C_EventHandler, .-Chip_I2C_EventHandler
	.section	.text.handleMasterXferState,"ax",%progbits
	.align	1
	.global	handleMasterXferState
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	handleMasterXferState, %function
handleMasterXferState:
.LFB209:
	.loc 1 177 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL5:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
.LVL6:
.LBB38:
.LBB39:
	.loc 1 122 0
	ldr	r2, [r0, #4]
.LVL7:
	movs	r3, #248
	ands	r3, r2
.LBE39:
.LBE38:
	.loc 1 180 0
	cmp	r3, #88
	bhi	.L26
	lsls	r3, r3, #2
	ldr	r2, .L31
	ldr	r3, [r2, r3]
	mov	pc, r3
	.section	.rodata.handleMasterXferState,"a",%progbits
	.align	2
.L11:
	.word	.L10
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L12
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L12
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L13
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L14
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L13
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L14
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L15
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L27
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L14
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L28
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L26
	.word	.L18
	.section	.text.handleMasterXferState
.L12:
	.loc 1 183 0
	ldrb	r3, [r1]
	lsls	r3, r3, #1
	ldr	r2, [r1, #8]
	rsbs	r4, r2, #0
	adcs	r2, r2, r4
	orrs	r3, r2
	str	r3, [r0, #8]
.L19:
	.loc 1 231 0
	movs	r3, #0
	str	r3, [r0]
	.loc 1 232 0
	adds	r3, r3, #60
	str	r3, [r0, #24]
.LVL8:
.L25:
	.loc 1 235 0 discriminator 1
	ldrb	r0, [r1, #20]
.LVL9:
	subs	r0, r0, #2
	.loc 1 239 0 discriminator 1
	subs	r3, r0, #1
	sbcs	r0, r0, r3
.L8:
	.loc 1 242 0
	@ sp needed
	pop	{r4, r5, pc}
.LVL10:
.L13:
	.loc 1 189 0
	ldr	r3, [r1, #8]
	cmp	r3, #0
	bne	.L20
	.loc 1 190 0
	ldr	r3, [r1, #16]
	subs	r2, r3, #1
	sbcs	r3, r3, r2
	rsbs	r3, r3, #0
	movs	r2, #15
	bics	r3, r2
	movs	r2, r3
	subs	r2, r2, #17
	movs	r3, #60
	ands	r3, r2
.LVL11:
	b	.L9
.LVL12:
.L20:
	.loc 1 193 0
	ldr	r3, [r1, #4]
	adds	r2, r3, #1
	str	r2, [r1, #4]
	ldrb	r3, [r3]
	str	r3, [r0, #8]
	.loc 1 194 0
	ldr	r3, [r1, #8]
	subs	r3, r3, #1
	str	r3, [r1, #8]
	b	.L19
.L18:
	.loc 1 200 0
	movs	r3, #44
	b	.L17
.L28:
	.loc 1 178 0
	movs	r3, #60
.L17:
.LVL13:
	.loc 1 203 0
	ldr	r4, [r0, #8]
	ldr	r2, [r1, #12]
	adds	r5, r2, #1
	str	r5, [r1, #12]
	strb	r4, [r2]
	.loc 1 204 0
	ldr	r2, [r1, #16]
	subs	r2, r2, #1
	str	r2, [r1, #16]
.LVL14:
.L16:
	.loc 1 207 0
	ldr	r2, [r1, #16]
	cmp	r2, #1
	ble	.L9
	.loc 1 208 0
	movs	r2, #4
	bics	r3, r2
.LVL15:
.L9:
	.loc 1 231 0
	movs	r2, #60
	eors	r2, r3
	str	r2, [r0]
	.loc 1 232 0
	str	r3, [r0, #24]
	.loc 1 235 0
	lsls	r3, r3, #27
	bmi	.L25
.LVL16:
.L23:
	.loc 1 236 0
	ldrb	r3, [r1, #20]
	.loc 1 239 0
	movs	r0, #0
.LVL17:
	.loc 1 236 0
	cmp	r3, #4
	bne	.L8
	.loc 1 237 0
	movs	r3, #0
	strb	r3, [r1, #20]
	b	.L8
.LVL18:
.L27:
	.loc 1 178 0
	movs	r3, #60
	b	.L16
.L14:
	.loc 1 216 0
	movs	r3, #1
	strb	r3, [r1, #20]
.LVL19:
.L22:
	.loc 1 231 0
	movs	r3, #16
	str	r3, [r0]
	.loc 1 232 0
	adds	r3, r3, #28
	str	r3, [r0, #24]
	b	.L23
.LVL20:
.L15:
	.loc 1 221 0
	movs	r3, #2
	strb	r3, [r1, #20]
	.loc 1 222 0
	b	.L19
.L10:
	.loc 1 226 0
	movs	r3, #3
	strb	r3, [r1, #20]
.LVL21:
	b	.L22
.LVL22:
.L26:
	.loc 1 178 0
	movs	r3, #60
	b	.L9
.L32:
	.align	2
.L31:
	.word	.L11
	.cfi_endproc
.LFE209:
	.size	handleMasterXferState, .-handleMasterXferState
	.section	.text.getSlaveIndex,"ax",%progbits
	.align	1
	.global	getSlaveIndex
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	getSlaveIndex, %function
getSlaveIndex:
.LFB210:
	.loc 1 246 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL23:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL24:
.LBB52:
.LBB53:
	.loc 1 122 0
	ldr	r2, [r0, #4]
.LVL25:
	movs	r3, #248
	ands	r3, r2
.LBE53:
.LBE52:
	.loc 1 247 0
	cmp	r3, #112
	beq	.L35
	ble	.L43
	cmp	r3, #168
	beq	.L35
	cmp	r3, #176
	beq	.L35
	cmp	r3, #120
	beq	.L35
.L37:
	.loc 1 258 0
	movs	r3, #0
.LVL26:
.L34:
	.loc 1 259 0
	movs	r0, r3
	@ sp needed
	pop	{r4, pc}
.LVL27:
.L43:
	.loc 1 247 0
	cmp	r3, #96
	beq	.L35
	cmp	r3, #104
	bne	.L37
.L35:
	.loc 1 254 0
	ldr	r2, [r0, #8]
	uxtb	r2, r2
.LVL28:
.LBB54:
.LBB55:
	.loc 1 155 0
	lsrs	r1, r2, #1
	.loc 1 156 0
	movs	r3, #0
	.loc 1 155 0
	cmp	r1, #0
	beq	.L34
	.loc 1 158 0
	ldr	r1, [r0, #12]
	ldr	r3, [r0, #48]
.LBB56:
.LBB57:
	.loc 1 148 0
	movs	r4, #1
	orrs	r3, r4
	.loc 1 149 0
	uxtb	r3, r3
	eors	r1, r2
	uxtb	r1, r1
	bics	r1, r3
.LBE57:
.LBE56:
	.loc 1 159 0
	movs	r3, #1
	.loc 1 158 0
	cmp	r1, #0
	beq	.L34
	.loc 1 161 0
	ldr	r3, [r0, #32]
	ldr	r1, [r0, #52]
.LBB58:
.LBB59:
	.loc 1 148 0
	orrs	r1, r4
	.loc 1 149 0
	uxtb	r1, r1
	eors	r3, r2
	uxtb	r3, r3
	bics	r3, r1
.LBE59:
.LBE58:
	.loc 1 161 0
	beq	.L40
	.loc 1 164 0
	ldr	r3, [r0, #36]
	ldr	r1, [r0, #56]
.LBB60:
.LBB61:
	.loc 1 148 0
	orrs	r1, r4
	.loc 1 149 0
	uxtb	r1, r1
	eors	r3, r2
	uxtb	r3, r3
	bics	r3, r1
.LBE61:
.LBE60:
	.loc 1 164 0
	beq	.L41
	.loc 1 167 0
	ldr	r3, [r0, #40]
	ldr	r1, [r0, #60]
.LBB62:
.LBB63:
	.loc 1 148 0
	movs	r0, #1
.LVL29:
	orrs	r1, r0
	.loc 1 149 0
	uxtb	r1, r1
	eors	r3, r2
	uxtb	r3, r3
	bics	r3, r1
.LBE63:
.LBE62:
	.loc 1 172 0
	rsbs	r2, r3, #0
	adcs	r3, r3, r2
.LVL30:
	lsls	r3, r3, #2
	b	.L34
.LVL31:
.L40:
	.loc 1 162 0
	movs	r3, #2
	b	.L34
.L41:
	.loc 1 165 0
	movs	r3, #3
	b	.L34
.LBE55:
.LBE54:
	.cfi_endproc
.LFE210:
	.size	getSlaveIndex, .-getSlaveIndex
	.section	.text.handleSlaveXferState,"ax",%progbits
	.align	1
	.global	handleSlaveXferState
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	handleSlaveXferState, %function
handleSlaveXferState:
.LFB211:
	.loc 1 263 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL32:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
.LVL33:
	.loc 1 267 0
	movs	r3, #4
	strb	r3, [r1, #20]
.LVL34:
.LBB64:
.LBB65:
	.loc 1 122 0
	ldr	r2, [r0, #4]
.LVL35:
	adds	r3, r3, #244
	ands	r3, r2
.LBE65:
.LBE64:
	.loc 1 268 0
	subs	r3, r3, #96
	cmp	r3, #104
	bhi	.L52
	lsls	r3, r3, #2
	ldr	r2, .L57
	ldr	r3, [r2, r3]
	mov	pc, r3
	.section	.rodata.handleSlaveXferState,"a",%progbits
	.align	2
.L47:
	.word	.L46
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L46
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L46
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L46
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L48
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L49
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L48
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L49
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L49
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L50
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L50
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L51
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L49
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L52
	.word	.L49
	.section	.text.handleSlaveXferState
.L48:
	.loc 1 271 0
	ldr	r2, [r0, #8]
	ldr	r3, [r1, #12]
	adds	r4, r3, #1
	str	r4, [r1, #12]
	strb	r2, [r3]
	.loc 1 272 0
	ldr	r3, [r1, #16]
	subs	r3, r3, #1
	str	r3, [r1, #16]
.LVL36:
	.loc 1 274 0
	cmp	r3, #1
	ble	.L53
	.loc 1 273 0
	movs	r1, #5
.LVL37:
	.loc 1 275 0
	movs	r2, #56
	b	.L45
.LVL38:
.L46:
	.loc 1 283 0
	ldr	r3, [r0, #8]
	movs	r2, #1
	bics	r3, r2
	strb	r3, [r1]
	.loc 1 284 0
	ldr	r3, [r1, #16]
	cmp	r3, #1
	ble	.L54
	.loc 1 265 0
	movs	r1, #0
.LVL39:
	.loc 1 285 0
	adds	r2, r2, #55
	b	.L45
.LVL40:
.L50:
	.loc 1 291 0
	ldr	r3, [r0, #8]
	movs	r2, #1
	bics	r3, r2
	strb	r3, [r1]
.L51:
	.loc 1 294 0
	ldr	r3, [r1, #4]
	adds	r2, r3, #1
	str	r2, [r1, #4]
	ldrb	r3, [r3]
	str	r3, [r0, #8]
	.loc 1 295 0
	ldr	r3, [r1, #8]
	subs	r3, r3, #1
	str	r3, [r1, #8]
	.loc 1 296 0
	cmp	r3, #0
	ble	.L55
	.loc 1 299 0
	movs	r1, #6
.LVL41:
	.loc 1 297 0
	movs	r2, #56
.LVL42:
.L45:
	.loc 1 317 0
	movs	r3, #60
	eors	r3, r2
	str	r3, [r0]
	.loc 1 318 0
	str	r2, [r0, #24]
	.loc 1 321 0
	movs	r0, r1
.LVL43:
	@ sp needed
	pop	{r4, pc}
.LVL44:
.L49:
	.loc 1 309 0
	movs	r3, #0
	strb	r3, [r1, #20]
	.loc 1 310 0
	ldrb	r3, [r1]
	lsls	r3, r3, #31
	bpl	.L56
	.loc 1 307 0
	movs	r1, #2
.LVL45:
	.loc 1 311 0
	movs	r2, #24
	b	.L45
.LVL46:
.L52:
	.loc 1 265 0
	movs	r1, #0
.LVL47:
	.loc 1 264 0
	movs	r2, #60
	b	.L45
.LVL48:
.L53:
	.loc 1 273 0
	movs	r1, #5
.LVL49:
	.loc 1 264 0
	movs	r2, #60
	b	.L45
.LVL50:
.L54:
	.loc 1 265 0
	movs	r1, #0
.LVL51:
	.loc 1 264 0
	movs	r2, #60
	b	.L45
.LVL52:
.L55:
	.loc 1 299 0
	movs	r1, #6
.LVL53:
	.loc 1 264 0
	movs	r2, #60
	b	.L45
.LVL54:
.L56:
	.loc 1 307 0
	movs	r1, #2
.LVL55:
	.loc 1 308 0
	movs	r2, #56
	b	.L45
.L58:
	.align	2
.L57:
	.word	.L47
	.cfi_endproc
.LFE211:
	.size	handleSlaveXferState, .-handleSlaveXferState
	.section	.text.Chip_I2C_Init,"ax",%progbits
	.align	1
	.global	Chip_I2C_Init
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_Init, %function
Chip_I2C_Init:
.LFB214:
	.loc 1 365 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL56:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
.LVL57:
.LBB66:
.LBB67:
.LBB68:
.LBB69:
	.file 2 "./inc/clock_11xx.h"
	.loc 2 297 0
	ldr	r6, .L60
	movs	r5, #128
	ldr	r7, [r6, r5]
.LBE69:
.LBE68:
	.loc 1 79 0
	ldr	r4, .L60+4
	lsls	r3, r0, #3
	subs	r1, r3, r0
	lsls	r1, r1, #2
	adds	r1, r4, r1
.LBB71:
.LBB70:
	.loc 2 297 0
	ldrb	r1, [r1, #4]
	movs	r2, #1
	lsls	r2, r2, r1
	orrs	r2, r7
	str	r2, [r6, r5]
.LVL58:
.LBE70:
.LBE71:
.LBE67:
.LBE66:
	.loc 1 369 0
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r3, [r3, r4]
	movs	r2, #108
	str	r2, [r3, #24]
	.loc 1 370 0
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L61:
	.align	2
.L60:
	.word	1074036736
	.word	.LANCHOR0
	.cfi_endproc
.LFE214:
	.size	Chip_I2C_Init, .-Chip_I2C_Init
	.section	.text.Chip_I2C_DeInit,"ax",%progbits
	.align	1
	.global	Chip_I2C_DeInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_DeInit, %function
Chip_I2C_DeInit:
.LFB215:
	.loc 1 374 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL59:
	push	{r4, r5, lr}
	.cfi_def_cfa_offset 12
	.cfi_offset 4, -12
	.cfi_offset 5, -8
	.cfi_offset 14, -4
	.loc 1 376 0
	ldr	r2, .L63
	lsls	r3, r0, #3
	subs	r1, r3, r0
	lsls	r1, r1, #2
	ldr	r1, [r1, r2]
	movs	r4, #124
	str	r4, [r1, #24]
.LVL60:
.LBB72:
.LBB73:
.LBB74:
.LBB75:
	.loc 2 307 0
	ldr	r5, .L63+4
	adds	r4, r4, #4
	ldr	r1, [r5, r4]
.LBE75:
.LBE74:
	.loc 1 84 0
	subs	r3, r3, r0
	lsls	r3, r3, #2
	adds	r3, r2, r3
.LBB77:
.LBB76:
	.loc 2 307 0
	ldrb	r2, [r3, #4]
	movs	r3, #1
	lsls	r3, r3, r2
	bics	r1, r3
	str	r1, [r5, r4]
.LVL61:
.LBE76:
.LBE77:
.LBE73:
.LBE72:
	.loc 1 379 0
	@ sp needed
	pop	{r4, r5, pc}
.L64:
	.align	2
.L63:
	.word	.LANCHOR0
	.word	1074036736
	.cfi_endproc
.LFE215:
	.size	Chip_I2C_DeInit, .-Chip_I2C_DeInit
	.global	__aeabi_uidiv
	.section	.text.Chip_I2C_SetClockRate,"ax",%progbits
	.align	1
	.global	Chip_I2C_SetClockRate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_SetClockRate, %function
Chip_I2C_SetClockRate:
.LFB216:
	.loc 1 383 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL62:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	movs	r4, r0
	movs	r5, r1
.LVL63:
.LBB78:
.LBB79:
	.loc 1 90 0
	bl	Chip_Clock_GetMainClockRate
.LVL64:
.LBE79:
.LBE78:
	.loc 1 386 0
	movs	r1, r5
	bl	__aeabi_uidiv
.LVL65:
	.loc 1 387 0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r2, .L66
	ldr	r3, [r3, r2]
	lsrs	r2, r0, #1
	str	r2, [r3, #16]
	.loc 1 388 0
	ldr	r2, [r3, #16]
	subs	r0, r0, r2
.LVL66:
	str	r0, [r3, #20]
	.loc 1 389 0
	@ sp needed
.LVL67:
	pop	{r4, r5, r6, pc}
.L67:
	.align	2
.L66:
	.word	.LANCHOR0
	.cfi_endproc
.LFE216:
	.size	Chip_I2C_SetClockRate, .-Chip_I2C_SetClockRate
	.section	.text.Chip_I2C_GetClockRate,"ax",%progbits
	.align	1
	.global	Chip_I2C_GetClockRate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_GetClockRate, %function
Chip_I2C_GetClockRate:
.LFB217:
	.loc 1 393 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL68:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	movs	r4, r0
.LVL69:
.LBB80:
.LBB81:
	.loc 1 90 0
	bl	Chip_Clock_GetMainClockRate
.LVL70:
.LBE81:
.LBE80:
	.loc 1 394 0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r2, .L69
	ldr	r3, [r3, r2]
	ldr	r1, [r3, #16]
	ldr	r3, [r3, #20]
	adds	r1, r1, r3
	bl	__aeabi_uidiv
.LVL71:
	.loc 1 395 0
	@ sp needed
	pop	{r4, pc}
.L70:
	.align	2
.L69:
	.word	.LANCHOR0
	.cfi_endproc
.LFE217:
	.size	Chip_I2C_GetClockRate, .-Chip_I2C_GetClockRate
	.section	.text.Chip_I2C_SetMasterEventHandler,"ax",%progbits
	.align	1
	.global	Chip_I2C_SetMasterEventHandler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_SetMasterEventHandler, %function
Chip_I2C_SetMasterEventHandler:
.LFB218:
	.loc 1 399 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL72:
	.loc 1 401 0
	lsls	r2, r0, #3
	subs	r2, r2, r0
	lsls	r2, r2, #2
	ldr	r3, .L74
	adds	r2, r3, r2
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L73
.L72:
	.loc 1 404 0
	lsls	r3, r0, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r2, .L74
	adds	r3, r2, r3
	ldr	r0, [r3, #8]
.LVL73:
	subs	r0, r0, r1
	rsbs	r1, r0, #0
	adcs	r0, r0, r1
.LVL74:
	.loc 1 405 0
	@ sp needed
	bx	lr
.LVL75:
.L73:
	.loc 1 402 0
	lsls	r3, r0, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r2, .L74
	adds	r3, r2, r3
	str	r1, [r3, #8]
	b	.L72
.L75:
	.align	2
.L74:
	.word	.LANCHOR0
	.cfi_endproc
.LFE218:
	.size	Chip_I2C_SetMasterEventHandler, .-Chip_I2C_SetMasterEventHandler
	.section	.text.Chip_I2C_GetMasterEventHandler,"ax",%progbits
	.align	1
	.global	Chip_I2C_GetMasterEventHandler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_GetMasterEventHandler, %function
Chip_I2C_GetMasterEventHandler:
.LFB219:
	.loc 1 409 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL76:
	.loc 1 410 0
	lsls	r3, r0, #3
	subs	r0, r3, r0
.LVL77:
	lsls	r0, r0, #2
	ldr	r3, .L77
	adds	r0, r3, r0
	ldr	r0, [r0, #8]
	.loc 1 411 0
	@ sp needed
	bx	lr
.L78:
	.align	2
.L77:
	.word	.LANCHOR0
	.cfi_endproc
.LFE219:
	.size	Chip_I2C_GetMasterEventHandler, .-Chip_I2C_GetMasterEventHandler
	.section	.text.Chip_I2C_MasterTransfer,"ax",%progbits
	.align	1
	.global	Chip_I2C_MasterTransfer
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_MasterTransfer, %function
Chip_I2C_MasterTransfer:
.LFB220:
	.loc 1 415 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL78:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	mov	lr, r8
	push	{lr}
	.cfi_def_cfa_offset 24
	.cfi_offset 8, -24
	movs	r4, r0
	movs	r6, r1
.LVL79:
	.loc 1 418 0
	lsls	r3, r0, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r5, .L85
	adds	r5, r5, r3
	movs	r1, #3
.LVL80:
	ldr	r3, [r5, #8]
	blx	r3
.LVL81:
	.loc 1 419 0
	movs	r3, #4
	strb	r3, [r6, #20]
	.loc 1 420 0
	str	r6, [r5, #16]
	.loc 1 423 0
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L84
.L80:
	.loc 1 426 0
	ldr	r3, .L85
	mov	r8, r3
	lsls	r5, r4, #3
	subs	r7, r5, r4
	lsls	r7, r7, #2
	add	r7, r7, r8
	movs	r1, #1
	movs	r0, r4
	ldr	r3, [r7, #8]
	blx	r3
.LVL82:
	.loc 1 427 0
	movs	r3, #0
	str	r3, [r7, #16]
	.loc 1 430 0
	subs	r5, r5, r4
	lsls	r5, r5, #2
	mov	r3, r8
	ldr	r2, [r5, r3]
.LBB82:
.LBB83:
	.loc 1 116 0
	movs	r1, #16
.L81:
.LVL83:
	.loc 1 116 0 is_stmt 0 discriminator 1
	ldr	r3, [r2]
.LVL84:
.LBE83:
.LBE82:
	.loc 1 430 0 is_stmt 1 discriminator 1
	tst	r1, r3
	bne	.L81
	.loc 1 433 0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r1, .L85
	adds	r3, r1, r3
	ldr	r1, [r3, #24]
	movs	r3, #255
	lsls	r3, r3, #8
	tst	r1, r3
	beq	.L82
.LVL85:
.LBB84:
.LBB85:
	.loc 1 107 0
	movs	r3, #56
	str	r3, [r2, #24]
	.loc 1 110 0
	adds	r3, r3, #12
	str	r3, [r2]
.LVL86:
.L82:
.LBE85:
.LBE84:
	.loc 1 437 0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r2, .L85
	adds	r3, r2, r3
	ldr	r3, [r3, #8]
	movs	r1, #4
	movs	r0, r4
	blx	r3
.LVL87:
	.loc 1 438 0
	ldrb	r0, [r6, #20]
	.loc 1 439 0
	@ sp needed
.LVL88:
.LVL89:
	pop	{r2}
	mov	r8, r2
	pop	{r4, r5, r6, r7, pc}
.LVL90:
.L84:
	.loc 1 424 0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r2, .L85
	ldr	r3, [r3, r2]
.LVL91:
.LBB86:
.LBB87:
	.loc 1 97 0
	movs	r2, #60
	str	r2, [r3, #24]
	.loc 1 100 0
	adds	r2, r2, #36
	str	r2, [r3]
	b	.L80
.L86:
	.align	2
.L85:
	.word	.LANCHOR0
.LBE87:
.LBE86:
	.cfi_endproc
.LFE220:
	.size	Chip_I2C_MasterTransfer, .-Chip_I2C_MasterTransfer
	.section	.text.Chip_I2C_MasterSend,"ax",%progbits
	.align	1
	.global	Chip_I2C_MasterSend
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_MasterSend, %function
Chip_I2C_MasterSend:
.LFB221:
	.loc 1 443 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL92:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	movs	r4, r0
	movs	r7, r1
	movs	r6, r2
	movs	r5, r3
	.loc 1 444 0
	movs	r2, #24
.LVL93:
	movs	r1, #0
.LVL94:
	mov	r0, sp
.LVL95:
	bl	memset
.LVL96:
	.loc 1 445 0
	mov	r3, sp
	strb	r7, [r3]
	.loc 1 446 0
	str	r6, [sp, #4]
	.loc 1 447 0
	str	r5, [sp, #8]
.L88:
	.loc 1 448 0 discriminator 1
	mov	r1, sp
	movs	r0, r4
	bl	Chip_I2C_MasterTransfer
.LVL97:
	cmp	r0, #2
	beq	.L88
	.loc 1 449 0
	ldr	r3, [sp, #8]
	subs	r0, r5, r3
	.loc 1 450 0
	add	sp, sp, #28
	@ sp needed
.LVL98:
	pop	{r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE221:
	.size	Chip_I2C_MasterSend, .-Chip_I2C_MasterSend
	.section	.text.Chip_I2C_MasterCmdRead,"ax",%progbits
	.align	1
	.global	Chip_I2C_MasterCmdRead
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_MasterCmdRead, %function
Chip_I2C_MasterCmdRead:
.LFB222:
	.loc 1 456 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL99:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #36
	.cfi_def_cfa_offset 56
	str	r0, [sp]
	movs	r4, r1
	movs	r6, r3
	mov	r3, sp
.LVL100:
	adds	r7, r3, #7
	strb	r2, [r3, #7]
	.loc 1 457 0
	add	r5, sp, #8
	movs	r2, #24
.LVL101:
	movs	r1, #0
.LVL102:
	movs	r0, r5
.LVL103:
	bl	memset
.LVL104:
	.loc 1 458 0
	strb	r4, [r5]
	.loc 1 459 0
	str	r7, [r5, #4]
	.loc 1 460 0
	movs	r3, #1
	str	r3, [r5, #8]
	.loc 1 461 0
	str	r6, [r5, #12]
	.loc 1 462 0
	ldr	r3, [sp, #56]
	str	r3, [r5, #16]
.L91:
	.loc 1 463 0 discriminator 1
	add	r1, sp, #8
	ldr	r0, [sp]
	bl	Chip_I2C_MasterTransfer
.LVL105:
	cmp	r0, #2
	beq	.L91
	.loc 1 464 0
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #24]
	subs	r0, r3, r2
	.loc 1 465 0
	add	sp, sp, #36
	@ sp needed
.LVL106:
	pop	{r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE222:
	.size	Chip_I2C_MasterCmdRead, .-Chip_I2C_MasterCmdRead
	.section	.text.Chip_I2C_MasterRead,"ax",%progbits
	.align	1
	.global	Chip_I2C_MasterRead
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_MasterRead, %function
Chip_I2C_MasterRead:
.LFB223:
	.loc 1 469 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL107:
	push	{r4, r5, r6, r7, lr}
	.cfi_def_cfa_offset 20
	.cfi_offset 4, -20
	.cfi_offset 5, -16
	.cfi_offset 6, -12
	.cfi_offset 7, -8
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 48
	movs	r4, r0
	movs	r7, r1
	movs	r6, r2
	movs	r5, r3
	.loc 1 470 0
	movs	r2, #24
.LVL108:
	movs	r1, #0
.LVL109:
	mov	r0, sp
.LVL110:
	bl	memset
.LVL111:
	.loc 1 471 0
	mov	r3, sp
	strb	r7, [r3]
	.loc 1 472 0
	str	r6, [sp, #12]
	.loc 1 473 0
	str	r5, [sp, #16]
.L94:
	.loc 1 474 0 discriminator 1
	mov	r1, sp
	movs	r0, r4
	bl	Chip_I2C_MasterTransfer
.LVL112:
	cmp	r0, #2
	beq	.L94
	.loc 1 475 0
	ldr	r3, [sp, #16]
	subs	r0, r5, r3
	.loc 1 476 0
	add	sp, sp, #28
	@ sp needed
.LVL113:
.LVL114:
	pop	{r4, r5, r6, r7, pc}
	.cfi_endproc
.LFE223:
	.size	Chip_I2C_MasterRead, .-Chip_I2C_MasterRead
	.section	.text.Chip_I2C_IsMasterActive,"ax",%progbits
	.align	1
	.global	Chip_I2C_IsMasterActive
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_IsMasterActive, %function
Chip_I2C_IsMasterActive:
.LFB224:
	.loc 1 480 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL115:
	.loc 1 481 0
	lsls	r3, r0, #3
	subs	r0, r3, r0
.LVL116:
	lsls	r0, r0, #2
	ldr	r3, .L97
	ldr	r3, [r0, r3]
.LVL117:
.LBB88:
.LBB89:
.LBB90:
.LBB91:
	.loc 1 122 0
	ldr	r2, [r3, #4]
.LVL118:
	movs	r3, #248
	ands	r3, r2
.LBE91:
.LBE90:
	.loc 1 128 0
	lsrs	r0, r3, #31
	movs	r2, #95
	movs	r1, #0
	cmp	r2, r3
	adcs	r0, r0, r1
.LBE89:
.LBE88:
	.loc 1 482 0
	@ sp needed
	bx	lr
.L98:
	.align	2
.L97:
	.word	.LANCHOR0
	.cfi_endproc
.LFE224:
	.size	Chip_I2C_IsMasterActive, .-Chip_I2C_IsMasterActive
	.section	.text.Chip_I2C_MasterStateHandler,"ax",%progbits
	.align	1
	.global	Chip_I2C_MasterStateHandler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_MasterStateHandler, %function
Chip_I2C_MasterStateHandler:
.LFB225:
	.loc 1 486 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL119:
	push	{r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	movs	r4, r0
	.loc 1 487 0
	ldr	r0, .L101
.LVL120:
	lsls	r3, r4, #3
	subs	r2, r3, r4
	lsls	r2, r2, #2
	adds	r2, r0, r2
	ldr	r1, [r2, #16]
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r0, [r3, r0]
	bl	handleMasterXferState
.LVL121:
	cmp	r0, #0
	bne	.L99
	.loc 1 488 0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r2, .L101
	adds	r3, r2, r3
	ldr	r3, [r3, #8]
	movs	r1, #2
	movs	r0, r4
	blx	r3
.LVL122:
.L99:
	.loc 1 490 0
	@ sp needed
	pop	{r4, pc}
.L102:
	.align	2
.L101:
	.word	.LANCHOR0
	.cfi_endproc
.LFE225:
	.size	Chip_I2C_MasterStateHandler, .-Chip_I2C_MasterStateHandler
	.section	.text.Chip_I2C_SlaveSetup,"ax",%progbits
	.align	1
	.global	Chip_I2C_SlaveSetup
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_SlaveSetup, %function
Chip_I2C_SlaveSetup:
.LFB226:
	.loc 1 498 0
	.cfi_startproc
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL123:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	add	r4, sp, #16
.LVL124:
	ldrb	r6, [r4]
.LVL125:
	.loc 1 501 0
	ldr	r5, .L110
	lsls	r4, r0, #2
.LVL126:
	adds	r4, r4, r0
	adds	r4, r4, r1
	lsls	r4, r4, #3
	str	r2, [r4, r5]
	.loc 1 502 0
	adds	r4, r5, r4
	str	r3, [r4, #4]
	.loc 1 505 0
	cmp	r1, #0
	bne	.L107
.LVL127:
.L104:
	.loc 1 509 0
	lsls	r3, r0, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r2, .L110+4
	adds	r3, r2, r3
	ldr	r4, [r3, #24]
	movs	r3, #255
	lsls	r3, r3, #8
	tst	r4, r3
	bne	.L106
	.loc 1 509 0 is_stmt 0 discriminator 1
	lsls	r2, r0, #3
	subs	r2, r2, r0
	lsls	r2, r2, #2
	ldr	r3, .L110+4
	adds	r2, r3, r2
	ldr	r3, [r2, #16]
	cmp	r3, #0
	beq	.L108
.L106:
	.loc 1 512 0 is_stmt 1
	lsls	r2, r0, #3
	subs	r0, r2, r0
.LVL128:
	lsls	r0, r0, #2
	ldr	r2, .L110+4
	adds	r0, r2, r0
	adds	r1, r1, #8
.LVL129:
	movs	r3, #1
	lsls	r3, r3, r1
	orrs	r3, r4
	str	r3, [r0, #24]
	.loc 1 513 0
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL130:
.L107:
	.loc 1 506 0
	lsls	r3, r0, #3
.LVL131:
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r4, .L110+4
.LVL132:
	ldr	r3, [r3, r4]
	ldrb	r4, [r2]
.LVL133:
.LBB97:
.LBB98:
	.loc 1 135 0
	movs	r2, r1
.LVL134:
	adds	r2, r2, #11
	lsls	r2, r2, #2
	str	r6, [r2, r3]
	.loc 1 136 0
	cmp	r1, #1
	beq	.L109
.LVL135:
.LBB99:
	.loc 1 140 0
	adds	r3, r3, #32
.LVL136:
	.loc 1 141 0
	ldr	r2, .L110+8
	adds	r2, r1, r2
	lsls	r2, r2, #2
	adds	r3, r3, r2
.LVL137:
	str	r4, [r3]
	b	.L104
.LVL138:
.L109:
.LBE99:
	.loc 1 137 0
	str	r4, [r3, #12]
	b	.L104
.LVL139:
.L108:
.LBE98:
.LBE97:
	.loc 1 510 0
	lsls	r3, r0, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r2, .L110+4
	ldr	r3, [r3, r2]
.LVL140:
.LBB100:
.LBB101:
	.loc 1 107 0
	movs	r2, #56
	str	r2, [r3, #24]
	.loc 1 110 0
	adds	r2, r2, #12
	str	r2, [r3]
	b	.L106
.L111:
	.align	2
.L110:
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	1073741822
.LBE101:
.LBE100:
	.cfi_endproc
.LFE226:
	.size	Chip_I2C_SlaveSetup, .-Chip_I2C_SlaveSetup
	.section	.text.Chip_I2C_SlaveStateHandler,"ax",%progbits
	.align	1
	.global	Chip_I2C_SlaveStateHandler
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_SlaveStateHandler, %function
Chip_I2C_SlaveStateHandler:
.LFB227:
	.loc 1 517 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL141:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	movs	r4, r0
.LVL142:
	.loc 1 522 0
	lsls	r3, r0, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r2, .L117
	adds	r3, r2, r3
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L116
.LVL143:
.L113:
	.loc 1 531 0
	ldr	r1, .L117
	lsls	r3, r4, #3
	subs	r2, r3, r4
	lsls	r2, r2, #2
	adds	r2, r1, r2
	ldr	r5, [r2, #20]
	ldr	r2, [r2, #16]
	subs	r0, r2, #1
	sbcs	r2, r2, r0
	ldrb	r0, [r5]
	orrs	r2, r0
	strb	r2, [r5]
	.loc 1 532 0
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r0, [r3, r1]
	movs	r1, r5
	bl	handleSlaveXferState
.LVL144:
	.loc 1 533 0
	cmp	r0, #0
	beq	.L112
	.loc 1 534 0
	ldrb	r3, [r5, #20]
	cmp	r3, #0
	bne	.L115
	.loc 1 535 0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r2, .L117
	adds	r3, r2, r3
	movs	r2, #0
	str	r2, [r3, #20]
.L115:
	.loc 1 537 0
	uxtb	r1, r0
	lsls	r3, r4, #3
	subs	r3, r3, r4
	lsls	r3, r3, #2
	ldr	r2, .L117
	adds	r3, r2, r3
	ldr	r3, [r3, #12]
	movs	r0, r4
.LVL145:
	blx	r3
.LVL146:
.L112:
	.loc 1 539 0
	@ sp needed
.LVL147:
	pop	{r4, r5, r6, pc}
.LVL148:
.L116:
.LBB102:
	.loc 1 525 0
	movs	r6, r2
	lsls	r5, r0, #3
	subs	r3, r5, r0
	lsls	r3, r3, #2
	ldr	r0, [r3, r2]
.LVL149:
	bl	getSlaveIndex
.LVL150:
	.loc 1 527 0
	subs	r5, r5, r4
	lsls	r5, r5, #2
	adds	r5, r6, r5
	ldr	r2, .L117+4
	lsls	r3, r4, #2
	adds	r3, r3, r4
	adds	r0, r3, r0
.LVL151:
	lsls	r0, r0, #3
	ldr	r3, [r0, r2]
	str	r3, [r5, #20]
	.loc 1 528 0
	adds	r0, r2, r0
	ldr	r3, [r0, #4]
	str	r3, [r5, #12]
	b	.L113
.L118:
	.align	2
.L117:
	.word	.LANCHOR0
	.word	.LANCHOR1
.LBE102:
	.cfi_endproc
.LFE227:
	.size	Chip_I2C_SlaveStateHandler, .-Chip_I2C_SlaveStateHandler
	.section	.text.Chip_I2C_Disable,"ax",%progbits
	.align	1
	.global	Chip_I2C_Disable
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_Disable, %function
Chip_I2C_Disable:
.LFB228:
	.loc 1 543 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL152:
	.loc 1 544 0
	lsls	r3, r0, #3
	subs	r0, r3, r0
.LVL153:
	lsls	r0, r0, #2
	ldr	r3, .L120
	ldr	r3, [r0, r3]
	movs	r2, #64
	str	r2, [r3, #24]
	.loc 1 545 0
	@ sp needed
	bx	lr
.L121:
	.align	2
.L120:
	.word	.LANCHOR0
	.cfi_endproc
.LFE228:
	.size	Chip_I2C_Disable, .-Chip_I2C_Disable
	.section	.text.Chip_I2C_IsStateChanged,"ax",%progbits
	.align	1
	.global	Chip_I2C_IsStateChanged
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_IsStateChanged, %function
Chip_I2C_IsStateChanged:
.LFB229:
	.loc 1 549 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LVL154:
	.loc 1 550 0
	lsls	r3, r0, #3
	subs	r0, r3, r0
.LVL155:
	lsls	r0, r0, #2
	ldr	r3, .L123
	ldr	r3, [r0, r3]
	ldr	r0, [r3]
	lsls	r0, r0, #28
	lsrs	r0, r0, #31
	.loc 1 551 0
	@ sp needed
	bx	lr
.L124:
	.align	2
.L123:
	.word	.LANCHOR0
	.cfi_endproc
.LFE229:
	.size	Chip_I2C_IsStateChanged, .-Chip_I2C_IsStateChanged
	.section	.text.Chip_I2C_EventHandlerPolling,"ax",%progbits
	.align	1
	.global	Chip_I2C_EventHandlerPolling
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	Chip_I2C_EventHandlerPolling, %function
Chip_I2C_EventHandlerPolling:
.LFB213:
	.loc 1 345 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL156:
	push	{r4, r5, r6, lr}
	.cfi_def_cfa_offset 16
	.cfi_offset 4, -16
	.cfi_offset 5, -12
	.cfi_offset 6, -8
	.cfi_offset 14, -4
	movs	r4, r0
.LVL157:
	.loc 1 350 0
	cmp	r1, #1
	beq	.L131
.LVL158:
.L125:
	.loc 1 361 0
	@ sp needed
	pop	{r4, r5, r6, pc}
.LVL159:
.L131:
	.loc 1 354 0
	lsls	r3, r0, #3
	subs	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r2, .L132
	adds	r3, r2, r3
	ldr	r5, [r3, #16]
.LVL160:
.L128:
	.loc 1 356 0
	ldrb	r3, [r5, #20]
	cmp	r3, #4
	bne	.L125
	.loc 1 357 0
	movs	r0, r4
	bl	Chip_I2C_IsStateChanged
.LVL161:
	cmp	r0, #0
	beq	.L128
	.loc 1 358 0
	movs	r0, r4
	bl	Chip_I2C_MasterStateHandler
.LVL162:
	b	.L128
.L133:
	.align	2
.L132:
	.word	.LANCHOR0
	.cfi_endproc
.LFE213:
	.size	Chip_I2C_EventHandlerPolling, .-Chip_I2C_EventHandlerPolling
	.section	.bss.i2c_slave,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	i2c_slave, %object
	.size	i2c_slave, 40
i2c_slave:
	.space	40
	.section	.data.i2c,"aw",%progbits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	i2c, %object
	.size	i2c, 28
i2c:
	.word	1073741824
	.byte	5
	.space	3
	.word	Chip_I2C_EventHandler
	.word	0
	.word	0
	.word	0
	.word	0
	.text
.Letext0:
	.file 3 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/machine/_default_types.h"
	.file 4 "/Developer/arm/gcc-arm-none-eabi/arm-none-eabi/include/sys/_stdint.h"
	.file 5 "./inc/chip.h"
	.file 6 "./inc/sysctl_11xx.h"
	.file 7 "./inc/i2c_11xx.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1441
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF206
	.byte	0xc
	.4byte	.LASF207
	.4byte	.LASF208
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x4
	.byte	0x18
	.4byte	0x2c
	.uleb128 0x5
	.4byte	0x81
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x30
	.4byte	0x53
	.uleb128 0x6
	.4byte	0x91
	.uleb128 0x5
	.4byte	0x9c
	.uleb128 0x5
	.4byte	0x91
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0xc9
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.4byte	0xb9
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd3
	.4byte	0xa6
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0xe2
	.4byte	0xa6
	.uleb128 0x7
	.4byte	0x9c
	.4byte	0xf4
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.4byte	0xe4
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x109
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.4byte	0xf9
	.uleb128 0x6
	.4byte	0x109
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x123
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	0x113
	.uleb128 0x6
	.4byte	0x123
	.uleb128 0xa
	.2byte	0x3f8
	.byte	0x6
	.byte	0x2f
	.4byte	0x442
	.uleb128 0xb
	.4byte	.LASF17
	.byte	0x6
	.byte	0x30
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x31
	.4byte	0x9c
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x32
	.4byte	0x9c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x33
	.4byte	0xa1
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF21
	.byte	0x6
	.byte	0x34
	.4byte	0x9c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF22
	.byte	0x6
	.byte	0x35
	.4byte	0xa1
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0x36
	.4byte	0x457
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF24
	.byte	0x6
	.byte	0x37
	.4byte	0x9c
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0x38
	.4byte	0x9c
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF26
	.byte	0x6
	.byte	0x39
	.4byte	0x9c
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x6
	.byte	0x3a
	.4byte	0x9c
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF28
	.byte	0x6
	.byte	0x3b
	.4byte	0x9c
	.byte	0x30
	.uleb128 0xb
	.4byte	.LASF29
	.byte	0x6
	.byte	0x3c
	.4byte	0x128
	.byte	0x34
	.uleb128 0xb
	.4byte	.LASF30
	.byte	0x6
	.byte	0x3d
	.4byte	0x9c
	.byte	0x40
	.uleb128 0xb
	.4byte	.LASF31
	.byte	0x6
	.byte	0x3e
	.4byte	0x9c
	.byte	0x44
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x6
	.byte	0x3f
	.4byte	0x9c
	.byte	0x48
	.uleb128 0xb
	.4byte	.LASF33
	.byte	0x6
	.byte	0x40
	.4byte	0x9c
	.byte	0x4c
	.uleb128 0xb
	.4byte	.LASF34
	.byte	0x6
	.byte	0x41
	.4byte	0x476
	.byte	0x50
	.uleb128 0xb
	.4byte	.LASF35
	.byte	0x6
	.byte	0x42
	.4byte	0x9c
	.byte	0x70
	.uleb128 0xb
	.4byte	.LASF36
	.byte	0x6
	.byte	0x43
	.4byte	0x9c
	.byte	0x74
	.uleb128 0xb
	.4byte	.LASF37
	.byte	0x6
	.byte	0x44
	.4byte	0x9c
	.byte	0x78
	.uleb128 0xb
	.4byte	.LASF38
	.byte	0x6
	.byte	0x45
	.4byte	0xa1
	.byte	0x7c
	.uleb128 0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0x46
	.4byte	0x9c
	.byte	0x80
	.uleb128 0xb
	.4byte	.LASF40
	.byte	0x6
	.byte	0x47
	.4byte	0x10e
	.byte	0x84
	.uleb128 0xb
	.4byte	.LASF41
	.byte	0x6
	.byte	0x48
	.4byte	0x9c
	.byte	0x94
	.uleb128 0xb
	.4byte	.LASF42
	.byte	0x6
	.byte	0x49
	.4byte	0x9c
	.byte	0x98
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x6
	.byte	0x4a
	.4byte	0x9c
	.byte	0x9c
	.uleb128 0xb
	.4byte	.LASF44
	.byte	0x6
	.byte	0x4b
	.4byte	0x47b
	.byte	0xa0
	.uleb128 0xb
	.4byte	.LASF45
	.byte	0x6
	.byte	0x4c
	.4byte	0x9c
	.byte	0xc0
	.uleb128 0xb
	.4byte	.LASF46
	.byte	0x6
	.byte	0x4d
	.4byte	0x9c
	.byte	0xc4
	.uleb128 0xb
	.4byte	.LASF47
	.byte	0x6
	.byte	0x4e
	.4byte	0x9c
	.byte	0xc8
	.uleb128 0xb
	.4byte	.LASF48
	.byte	0x6
	.byte	0x4f
	.4byte	0xa1
	.byte	0xcc
	.uleb128 0xb
	.4byte	.LASF49
	.byte	0x6
	.byte	0x50
	.4byte	0x9c
	.byte	0xd0
	.uleb128 0xb
	.4byte	.LASF50
	.byte	0x6
	.byte	0x51
	.4byte	0x9c
	.byte	0xd4
	.uleb128 0xb
	.4byte	.LASF51
	.byte	0x6
	.byte	0x52
	.4byte	0x9c
	.byte	0xd8
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x6
	.byte	0x53
	.4byte	0xa1
	.byte	0xdc
	.uleb128 0xb
	.4byte	.LASF53
	.byte	0x6
	.byte	0x54
	.4byte	0x9c
	.byte	0xe0
	.uleb128 0xb
	.4byte	.LASF54
	.byte	0x6
	.byte	0x55
	.4byte	0x9c
	.byte	0xe4
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x6
	.byte	0x56
	.4byte	0x9c
	.byte	0xe8
	.uleb128 0xb
	.4byte	.LASF56
	.byte	0x6
	.byte	0x57
	.4byte	0x495
	.byte	0xec
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x6
	.byte	0x58
	.4byte	0x45c
	.2byte	0x100
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x6
	.byte	0x59
	.4byte	0x4af
	.2byte	0x108
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x6
	.byte	0x5a
	.4byte	0x9c
	.2byte	0x150
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0x5b
	.4byte	0x9c
	.2byte	0x154
	.uleb128 0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0x5c
	.4byte	0x4c9
	.2byte	0x158
	.uleb128 0xc
	.4byte	.LASF62
	.byte	0x6
	.byte	0x5d
	.4byte	0x9c
	.2byte	0x170
	.uleb128 0xc
	.4byte	.LASF63
	.byte	0x6
	.byte	0x5e
	.4byte	0x9c
	.2byte	0x174
	.uleb128 0xc
	.4byte	.LASF64
	.byte	0x6
	.byte	0x5f
	.4byte	0xc9
	.2byte	0x178
	.uleb128 0xc
	.4byte	.LASF65
	.byte	0x6
	.byte	0x60
	.4byte	0x9c
	.2byte	0x198
	.uleb128 0xc
	.4byte	.LASF66
	.byte	0x6
	.byte	0x61
	.4byte	0xa1
	.2byte	0x19c
	.uleb128 0xc
	.4byte	.LASF67
	.byte	0x6
	.byte	0x62
	.4byte	0x4e8
	.2byte	0x1a0
	.uleb128 0xc
	.4byte	.LASF68
	.byte	0x6
	.byte	0x63
	.4byte	0x9c
	.2byte	0x200
	.uleb128 0xc
	.4byte	.LASF69
	.byte	0x6
	.byte	0x64
	.4byte	0x9c
	.2byte	0x204
	.uleb128 0xc
	.4byte	.LASF70
	.byte	0x6
	.byte	0x65
	.4byte	0x9c
	.2byte	0x208
	.uleb128 0xc
	.4byte	.LASF71
	.byte	0x6
	.byte	0x66
	.4byte	0x9c
	.2byte	0x20c
	.uleb128 0xc
	.4byte	.LASF72
	.byte	0x6
	.byte	0x67
	.4byte	0xa1
	.2byte	0x210
	.uleb128 0xc
	.4byte	.LASF73
	.byte	0x6
	.byte	0x68
	.4byte	0x9c
	.2byte	0x214
	.uleb128 0xc
	.4byte	.LASF74
	.byte	0x6
	.byte	0x69
	.4byte	0x4ce
	.2byte	0x218
	.uleb128 0xc
	.4byte	.LASF75
	.byte	0x6
	.byte	0x6a
	.4byte	0x9c
	.2byte	0x230
	.uleb128 0xc
	.4byte	.LASF76
	.byte	0x6
	.byte	0x6b
	.4byte	0x9c
	.2byte	0x234
	.uleb128 0xc
	.4byte	.LASF77
	.byte	0x6
	.byte	0x6c
	.4byte	0x9c
	.2byte	0x238
	.uleb128 0xc
	.4byte	.LASF78
	.byte	0x6
	.byte	0x6d
	.4byte	0x502
	.2byte	0x23c
	.uleb128 0xc
	.4byte	.LASF79
	.byte	0x6
	.byte	0x6e
	.4byte	0xa1
	.2byte	0x3f4
	.byte	0
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x452
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	0x442
	.uleb128 0x6
	.4byte	0x452
	.uleb128 0x6
	.4byte	0x452
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x471
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	0x461
	.uleb128 0x6
	.4byte	0x471
	.uleb128 0x6
	.4byte	0x471
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x490
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	0x480
	.uleb128 0x6
	.4byte	0x490
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x4aa
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x11
	.byte	0
	.uleb128 0x5
	.4byte	0x49a
	.uleb128 0x6
	.4byte	0x4aa
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x4c4
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.4byte	0x4b4
	.uleb128 0x6
	.4byte	0x4c4
	.uleb128 0x6
	.4byte	0x4c4
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x4e3
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x17
	.byte	0
	.uleb128 0x5
	.4byte	0x4d3
	.uleb128 0x6
	.4byte	0x4e3
	.uleb128 0x7
	.4byte	0xa1
	.4byte	0x4fd
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x6d
	.byte	0
	.uleb128 0x5
	.4byte	0x4ed
	.uleb128 0x6
	.4byte	0x4fd
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x6
	.byte	0x6f
	.4byte	0x12d
	.uleb128 0xd
	.4byte	.LASF134
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x2
	.byte	0xe4
	.4byte	0x596
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
	.4byte	0x512
	.uleb128 0x10
	.byte	0x40
	.byte	0x7
	.byte	0x31
	.4byte	0x647
	.uleb128 0xb
	.4byte	.LASF101
	.byte	0x7
	.byte	0x32
	.4byte	0x9c
	.byte	0
	.uleb128 0xb
	.4byte	.LASF102
	.byte	0x7
	.byte	0x33
	.4byte	0xa1
	.byte	0x4
	.uleb128 0x11
	.ascii	"DAT\000"
	.byte	0x7
	.byte	0x34
	.4byte	0x9c
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF103
	.byte	0x7
	.byte	0x35
	.4byte	0x9c
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF104
	.byte	0x7
	.byte	0x36
	.4byte	0x9c
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF105
	.byte	0x7
	.byte	0x37
	.4byte	0x9c
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF106
	.byte	0x7
	.byte	0x38
	.4byte	0x9c
	.byte	0x18
	.uleb128 0xb
	.4byte	.LASF107
	.byte	0x7
	.byte	0x39
	.4byte	0x9c
	.byte	0x1c
	.uleb128 0xb
	.4byte	.LASF108
	.byte	0x7
	.byte	0x3a
	.4byte	0x9c
	.byte	0x20
	.uleb128 0xb
	.4byte	.LASF109
	.byte	0x7
	.byte	0x3b
	.4byte	0x9c
	.byte	0x24
	.uleb128 0xb
	.4byte	.LASF110
	.byte	0x7
	.byte	0x3c
	.4byte	0x9c
	.byte	0x28
	.uleb128 0xb
	.4byte	.LASF111
	.byte	0x7
	.byte	0x3d
	.4byte	0xa1
	.byte	0x2c
	.uleb128 0xb
	.4byte	.LASF112
	.byte	0x7
	.byte	0x3e
	.4byte	0xf4
	.byte	0x30
	.byte	0
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x7
	.byte	0x3f
	.4byte	0x5a2
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xf1
	.4byte	0x684
	.uleb128 0xe
	.4byte	.LASF114
	.byte	0
	.uleb128 0xe
	.4byte	.LASF115
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF116
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF118
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF119
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x7
	.byte	0xf8
	.4byte	0x652
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.byte	0xfd
	.4byte	0x6bb
	.uleb128 0xe
	.4byte	.LASF121
	.byte	0
	.uleb128 0xe
	.4byte	.LASF122
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF123
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF124
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF125
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x7
	.2byte	0x103
	.4byte	0x68f
	.uleb128 0x6
	.4byte	0x6bb
	.uleb128 0x13
	.byte	0x18
	.byte	0x7
	.2byte	0x108
	.4byte	0x724
	.uleb128 0x14
	.4byte	.LASF127
	.byte	0x7
	.2byte	0x109
	.4byte	0x81
	.byte	0
	.uleb128 0x14
	.4byte	.LASF128
	.byte	0x7
	.2byte	0x10a
	.4byte	0x724
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x7
	.2byte	0x10b
	.4byte	0x73
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF130
	.byte	0x7
	.2byte	0x10d
	.4byte	0x72a
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF131
	.byte	0x7
	.2byte	0x10e
	.4byte	0x73
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x7
	.2byte	0x110
	.4byte	0x6bb
	.byte	0x14
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x15
	.byte	0x4
	.4byte	0x81
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x7
	.2byte	0x111
	.4byte	0x6cc
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.2byte	0x11b
	.4byte	0x75b
	.uleb128 0xe
	.4byte	.LASF136
	.byte	0
	.uleb128 0xe
	.4byte	.LASF137
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x7
	.2byte	0x11e
	.4byte	0x73c
	.uleb128 0x17
	.byte	0x7
	.byte	0x1
	.4byte	0x37
	.byte	0x7
	.2byte	0x123
	.4byte	0x79a
	.uleb128 0xe
	.4byte	.LASF139
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF140
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF141
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF142
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF143
	.byte	0x5
	.uleb128 0xe
	.4byte	.LASF144
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF145
	.byte	0x7
	.2byte	0x12a
	.4byte	0x767
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x7
	.2byte	0x12f
	.4byte	0x7b2
	.uleb128 0x15
	.byte	0x4
	.4byte	0x7b8
	.uleb128 0x18
	.4byte	0x7c8
	.uleb128 0x19
	.4byte	0x75b
	.uleb128 0x19
	.4byte	0x79a
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x5
	.2byte	0x11c
	.4byte	0x91
	.uleb128 0x1b
	.4byte	.LASF153
	.byte	0x1c
	.byte	0x1
	.byte	0x2e
	.4byte	0x834
	.uleb128 0x11
	.ascii	"ip\000"
	.byte	0x1
	.byte	0x2f
	.4byte	0x834
	.byte	0
	.uleb128 0x11
	.ascii	"clk\000"
	.byte	0x1
	.byte	0x30
	.4byte	0x596
	.byte	0x4
	.uleb128 0xb
	.4byte	.LASF148
	.byte	0x1
	.byte	0x31
	.4byte	0x7a6
	.byte	0x8
	.uleb128 0xb
	.4byte	.LASF149
	.byte	0x1
	.byte	0x32
	.4byte	0x7a6
	.byte	0xc
	.uleb128 0xb
	.4byte	.LASF150
	.byte	0x1
	.byte	0x33
	.4byte	0x83a
	.byte	0x10
	.uleb128 0xb
	.4byte	.LASF151
	.byte	0x1
	.byte	0x34
	.4byte	0x83a
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF152
	.byte	0x1
	.byte	0x35
	.4byte	0x91
	.byte	0x18
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x647
	.uleb128 0x15
	.byte	0x4
	.4byte	0x730
	.uleb128 0x1b
	.4byte	.LASF154
	.byte	0x8
	.byte	0x1
	.byte	0x39
	.4byte	0x865
	.uleb128 0xb
	.4byte	.LASF155
	.byte	0x1
	.byte	0x3a
	.4byte	0x83a
	.byte	0
	.uleb128 0xb
	.4byte	.LASF156
	.byte	0x1
	.byte	0x3b
	.4byte	0x7a6
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x7d4
	.4byte	0x875
	.uleb128 0x8
	.4byte	0x7a
	.byte	0
	.byte	0
	.uleb128 0x1c
	.ascii	"i2c\000"
	.byte	0x1
	.byte	0x3f
	.4byte	0x865
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c
	.uleb128 0x7
	.4byte	0x840
	.4byte	0x89c
	.uleb128 0x8
	.4byte	0x7a
	.byte	0
	.uleb128 0x8
	.4byte	0x7a
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF157
	.byte	0x1
	.byte	0x43
	.4byte	0x886
	.uleb128 0x5
	.byte	0x3
	.4byte	i2c_slave
	.uleb128 0x1e
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x224
	.4byte	0x73
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8d7
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x224
	.4byte	0x75b
	.4byte	.LLST68
	.byte	0
	.uleb128 0x20
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x21e
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8fd
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x21e
	.4byte	0x75b
	.4byte	.LLST67
	.byte	0
	.uleb128 0x20
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x204
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x99a
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x204
	.4byte	0x75b
	.4byte	.LLST62
	.uleb128 0x21
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x206
	.4byte	0x73
	.4byte	.LLST63
	.uleb128 0x21
	.ascii	"iic\000"
	.byte	0x1
	.2byte	0x207
	.4byte	0x99a
	.4byte	.LLST64
	.uleb128 0x22
	.4byte	.LBB102
	.4byte	.LBE102-.LBB102
	.4byte	0x979
	.uleb128 0x23
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x20b
	.4byte	0x9a0
	.4byte	.LLST65
	.uleb128 0x21
	.ascii	"sid\000"
	.byte	0x1
	.2byte	0x20d
	.4byte	0x684
	.4byte	.LLST66
	.uleb128 0x24
	.4byte	.LVL150
	.4byte	0x112a
	.byte	0
	.uleb128 0x25
	.4byte	.LVL144
	.4byte	0x10b5
	.4byte	0x98d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL146
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x7d4
	.uleb128 0x15
	.byte	0x4
	.4byte	0x840
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x1ed
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa7
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x1ed
	.4byte	0x75b
	.4byte	.LLST49
	.uleb128 0x1f
	.ascii	"sid\000"
	.byte	0x1
	.2byte	0x1ee
	.4byte	0x684
	.4byte	.LLST50
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1ef
	.4byte	0x83a
	.4byte	.LLST51
	.uleb128 0x28
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x1f0
	.4byte	0x7a6
	.4byte	.LLST52
	.uleb128 0x28
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1f1
	.4byte	0x81
	.4byte	.LLST53
	.uleb128 0x21
	.ascii	"iic\000"
	.byte	0x1
	.2byte	0x1f3
	.4byte	0x99a
	.4byte	.LLST54
	.uleb128 0x23
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x1f4
	.4byte	0x9a0
	.4byte	.LLST55
	.uleb128 0x29
	.4byte	0x12d1
	.4byte	.LBB97
	.4byte	.LBE97-.LBB97
	.byte	0x1
	.2byte	0x1fa
	.4byte	0xa8e
	.uleb128 0x2a
	.4byte	0x12fe
	.4byte	.LLST56
	.uleb128 0x2a
	.4byte	0x12f3
	.4byte	.LLST57
	.uleb128 0x2a
	.4byte	0x12e8
	.4byte	.LLST58
	.uleb128 0x2a
	.4byte	0x12dd
	.4byte	.LLST59
	.uleb128 0x2b
	.4byte	.LBB98
	.4byte	.LBE98-.LBB98
	.uleb128 0x2c
	.4byte	0x1309
	.4byte	.LLST60
	.uleb128 0x2d
	.4byte	0x1314
	.4byte	.LBB99
	.4byte	.LBE99-.LBB99
	.uleb128 0x2c
	.4byte	0x1315
	.4byte	.LLST61
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	0x137c
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x1fe
	.uleb128 0x2f
	.4byte	0x1388
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1e5
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xae7
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x1e5
	.4byte	0x75b
	.4byte	.LLST48
	.uleb128 0x24
	.4byte	.LVL121
	.4byte	0x121a
	.uleb128 0x27
	.4byte	.LVL122
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1df
	.4byte	0x73
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb44
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x1df
	.4byte	0x75b
	.4byte	.LLST45
	.uleb128 0x2e
	.4byte	0x1328
	.4byte	.LBB88
	.4byte	.LBE88-.LBB88
	.byte	0x1
	.2byte	0x1e1
	.uleb128 0x2a
	.4byte	0x1338
	.4byte	.LLST46
	.uleb128 0x30
	.4byte	0x1344
	.4byte	.LBB90
	.4byte	.LBE90-.LBB90
	.byte	0x1
	.byte	0x80
	.uleb128 0x2a
	.4byte	0x1354
	.4byte	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x73
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbe1
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x75b
	.4byte	.LLST41
	.uleb128 0x28
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x81
	.4byte	.LLST42
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x72a
	.4byte	.LLST43
	.uleb128 0x1f
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x1d4
	.4byte	0x73
	.4byte	.LLST44
	.uleb128 0x31
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1d6
	.4byte	0x730
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LVL111
	.4byte	0x1429
	.4byte	0xbca
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL112
	.4byte	0xd2c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x73
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8f
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x75b
	.4byte	.LLST37
	.uleb128 0x28
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x81
	.4byte	.LLST38
	.uleb128 0x1f
	.ascii	"cmd\000"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x81
	.4byte	.LLST39
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x72a
	.4byte	.LLST40
	.uleb128 0x33
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x1c7
	.4byte	0x73
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1c9
	.4byte	0x730
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LVL104
	.4byte	0x1429
	.4byte	0xc76
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL105
	.4byte	0xd2c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x4
	.byte	0x7d
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x73
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2c
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x75b
	.4byte	.LLST33
	.uleb128 0x28
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x81
	.4byte	.LLST34
	.uleb128 0x28
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x724
	.4byte	.LLST35
	.uleb128 0x1f
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x1ba
	.4byte	0x81
	.4byte	.LLST36
	.uleb128 0x31
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x1bc
	.4byte	0x730
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x25
	.4byte	.LVL96
	.4byte	0x1429
	.4byte	0xd15
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x32
	.4byte	.LVL97
	.4byte	0xd2c
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x19e
	.4byte	0x73
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe09
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x19e
	.4byte	0x75b
	.4byte	.LLST28
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x19e
	.4byte	0x83a
	.4byte	.LLST29
	.uleb128 0x21
	.ascii	"iic\000"
	.byte	0x1
	.2byte	0x1a0
	.4byte	0x99a
	.4byte	.LLST30
	.uleb128 0x29
	.4byte	0x1360
	.4byte	.LBB82
	.4byte	.LBE82-.LBB82
	.byte	0x1
	.2byte	0x1ae
	.4byte	0xd93
	.uleb128 0x2a
	.4byte	0x1370
	.4byte	.LLST31
	.byte	0
	.uleb128 0x29
	.4byte	0x137c
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x1b2
	.4byte	0xdb1
	.uleb128 0x2a
	.4byte	0x1388
	.4byte	.LLST32
	.byte	0
	.uleb128 0x29
	.4byte	0x1394
	.4byte	.LBB86
	.4byte	.LBE86-.LBB86
	.byte	0x1
	.2byte	0x1a8
	.4byte	0xdcd
	.uleb128 0x2f
	.4byte	0x13a0
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x34
	.4byte	.LVL81
	.4byte	0xde2
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x34
	.4byte	.LVL82
	.4byte	0xdf7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x27
	.4byte	.LVL87
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x198
	.4byte	0x7a6
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe33
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x198
	.4byte	0x75b
	.4byte	.LLST27
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x18e
	.4byte	0x73
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7d
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x18e
	.4byte	0x75b
	.4byte	.LLST24
	.uleb128 0x28
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x18e
	.4byte	0x7a6
	.4byte	.LLST25
	.uleb128 0x21
	.ascii	"iic\000"
	.byte	0x1
	.2byte	0x190
	.4byte	0x99a
	.4byte	.LLST26
	.byte	0
	.uleb128 0x35
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x188
	.4byte	0x91
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xeca
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x188
	.4byte	0x75b
	.4byte	.LLST22
	.uleb128 0x2e
	.4byte	0x13ac
	.4byte	.LBB80
	.4byte	.LBE80-.LBB80
	.byte	0x1
	.2byte	0x18a
	.uleb128 0x2a
	.4byte	0x13bc
	.4byte	.LLST23
	.uleb128 0x24
	.4byte	.LVL70
	.4byte	0x1438
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x17e
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf33
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x17e
	.4byte	0x75b
	.4byte	.LLST18
	.uleb128 0x28
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x17e
	.4byte	0x91
	.4byte	.LLST19
	.uleb128 0x23
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x180
	.4byte	0x91
	.4byte	.LLST20
	.uleb128 0x2e
	.4byte	0x13ac
	.4byte	.LBB78
	.4byte	.LBE78-.LBB78
	.byte	0x1
	.2byte	0x182
	.uleb128 0x2a
	.4byte	0x13bc
	.4byte	.LLST21
	.uleb128 0x24
	.4byte	.LVL64
	.4byte	0x1438
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x175
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8a
	.uleb128 0x33
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x175
	.4byte	0x75b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2e
	.4byte	0x13c7
	.4byte	.LBB72
	.4byte	.LBE72-.LBB72
	.byte	0x1
	.2byte	0x17a
	.uleb128 0x2a
	.4byte	0x13d3
	.4byte	.LLST16
	.uleb128 0x37
	.4byte	0x13f5
	.4byte	.LBB74
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x54
	.uleb128 0x2a
	.4byte	0x1402
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x16c
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe1
	.uleb128 0x33
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x16c
	.4byte	0x75b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2e
	.4byte	0x13de
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.byte	0x1
	.2byte	0x16e
	.uleb128 0x2a
	.4byte	0x13ea
	.4byte	.LLST14
	.uleb128 0x37
	.4byte	0x140f
	.4byte	.LBB68
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4f
	.uleb128 0x2a
	.4byte	0x141c
	.4byte	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x158
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105b
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x158
	.4byte	0x75b
	.4byte	.LLST69
	.uleb128 0x28
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x158
	.4byte	0x79a
	.4byte	.LLST70
	.uleb128 0x21
	.ascii	"iic\000"
	.byte	0x1
	.2byte	0x15a
	.4byte	0x99a
	.4byte	.LLST71
	.uleb128 0x31
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x15b
	.4byte	0x105b
	.uleb128 0x3
	.byte	0x75
	.sleb128 20
	.byte	0x9f
	.uleb128 0x25
	.4byte	.LVL161
	.4byte	0x8ad
	.4byte	0x104a
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.4byte	.LVL162
	.4byte	0xaa7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x6c7
	.uleb128 0x20
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x148
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b5
	.uleb128 0x1f
	.ascii	"id\000"
	.byte	0x1
	.2byte	0x148
	.4byte	0x75b
	.4byte	.LLST0
	.uleb128 0x38
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x148
	.4byte	0x79a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x21
	.ascii	"iic\000"
	.byte	0x1
	.2byte	0x14a
	.4byte	0x99a
	.4byte	.LLST1
	.uleb128 0x31
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x14b
	.4byte	0x105b
	.uleb128 0x3
	.byte	0x72
	.sleb128 20
	.byte	0x9f
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x106
	.4byte	0x73
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x112a
	.uleb128 0x28
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x106
	.4byte	0x834
	.4byte	.LLST9
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x106
	.4byte	0x83a
	.4byte	.LLST10
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x108
	.4byte	0x91
	.4byte	.LLST11
	.uleb128 0x21
	.ascii	"ret\000"
	.byte	0x1
	.2byte	0x109
	.4byte	0x73
	.4byte	.LLST12
	.uleb128 0x2e
	.4byte	0x1344
	.4byte	.LBB64
	.4byte	.LBE64-.LBB64
	.byte	0x1
	.2byte	0x10c
	.uleb128 0x2a
	.4byte	0x1354
	.4byte	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF185
	.byte	0x1
	.byte	0xf5
	.4byte	0x684
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x121a
	.uleb128 0x3a
	.4byte	.LASF183
	.byte	0x1
	.byte	0xf5
	.4byte	0x834
	.4byte	.LLST5
	.uleb128 0x3b
	.4byte	0x1344
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0xf7
	.4byte	0x116f
	.uleb128 0x2a
	.4byte	0x1354
	.4byte	.LLST6
	.byte	0
	.uleb128 0x30
	.4byte	0x1278
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0xfe
	.uleb128 0x2a
	.4byte	0x1293
	.4byte	.LLST7
	.uleb128 0x2a
	.4byte	0x1288
	.4byte	.LLST8
	.uleb128 0x3b
	.4byte	0x129f
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.byte	0x1
	.byte	0x9e
	.4byte	0x11b3
	.uleb128 0x3c
	.4byte	0x12c5
	.uleb128 0x3c
	.4byte	0x12ba
	.uleb128 0x3c
	.4byte	0x12af
	.byte	0
	.uleb128 0x3b
	.4byte	0x129f
	.4byte	.LBB58
	.4byte	.LBE58-.LBB58
	.byte	0x1
	.byte	0xa1
	.4byte	0x11d6
	.uleb128 0x3c
	.4byte	0x12c5
	.uleb128 0x3c
	.4byte	0x12ba
	.uleb128 0x3c
	.4byte	0x12af
	.byte	0
	.uleb128 0x3b
	.4byte	0x129f
	.4byte	.LBB60
	.4byte	.LBE60-.LBB60
	.byte	0x1
	.byte	0xa4
	.4byte	0x11f9
	.uleb128 0x3c
	.4byte	0x12c5
	.uleb128 0x3c
	.4byte	0x12ba
	.uleb128 0x3c
	.4byte	0x12af
	.byte	0
	.uleb128 0x30
	.4byte	0x129f
	.4byte	.LBB62
	.4byte	.LBE62-.LBB62
	.byte	0x1
	.byte	0xa7
	.uleb128 0x3c
	.4byte	0x12c5
	.uleb128 0x3c
	.4byte	0x12ba
	.uleb128 0x3c
	.4byte	0x12af
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF186
	.byte	0x1
	.byte	0xb0
	.4byte	0x73
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1278
	.uleb128 0x3a
	.4byte	.LASF183
	.byte	0x1
	.byte	0xb0
	.4byte	0x834
	.4byte	.LLST2
	.uleb128 0x3d
	.4byte	.LASF155
	.byte	0x1
	.byte	0xb0
	.4byte	0x83a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3e
	.4byte	.LASF184
	.byte	0x1
	.byte	0xb2
	.4byte	0x91
	.4byte	.LLST3
	.uleb128 0x30
	.4byte	0x1344
	.4byte	.LBB38
	.4byte	.LBE38-.LBB38
	.byte	0x1
	.byte	0xb4
	.uleb128 0x2a
	.4byte	0x1354
	.4byte	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF187
	.byte	0x1
	.byte	0x99
	.4byte	0x684
	.byte	0x1
	.4byte	0x129f
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x1
	.byte	0x99
	.4byte	0x834
	.uleb128 0x40
	.4byte	.LASF127
	.byte	0x1
	.byte	0x99
	.4byte	0x81
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF188
	.byte	0x1
	.byte	0x92
	.4byte	0x73
	.byte	0x1
	.4byte	0x12d1
	.uleb128 0x40
	.4byte	.LASF189
	.byte	0x1
	.byte	0x92
	.4byte	0x81
	.uleb128 0x40
	.4byte	.LASF190
	.byte	0x1
	.byte	0x92
	.4byte	0x81
	.uleb128 0x40
	.4byte	.LASF191
	.byte	0x1
	.byte	0x92
	.4byte	0x81
	.byte	0
	.uleb128 0x41
	.4byte	.LASF198
	.byte	0x1
	.byte	0x84
	.byte	0x1
	.4byte	0x1322
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x1
	.byte	0x84
	.4byte	0x834
	.uleb128 0x42
	.ascii	"sid\000"
	.byte	0x1
	.byte	0x84
	.4byte	0x684
	.uleb128 0x40
	.4byte	.LASF192
	.byte	0x1
	.byte	0x84
	.4byte	0x81
	.uleb128 0x40
	.4byte	.LASF191
	.byte	0x1
	.byte	0x84
	.4byte	0x81
	.uleb128 0x43
	.4byte	.LASF193
	.byte	0x1
	.byte	0x86
	.4byte	0x91
	.uleb128 0x44
	.uleb128 0x43
	.4byte	.LASF194
	.byte	0x1
	.byte	0x8c
	.4byte	0x1322
	.byte	0
	.byte	0
	.uleb128 0x15
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x3f
	.4byte	.LASF195
	.byte	0x1
	.byte	0x7e
	.4byte	0x73
	.byte	0x3
	.4byte	0x1344
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x1
	.byte	0x7e
	.4byte	0x834
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF196
	.byte	0x1
	.byte	0x78
	.4byte	0x73
	.byte	0x3
	.4byte	0x1360
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x1
	.byte	0x78
	.4byte	0x834
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF197
	.byte	0x1
	.byte	0x72
	.4byte	0x73
	.byte	0x3
	.4byte	0x137c
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x1
	.byte	0x72
	.4byte	0x834
	.byte	0
	.uleb128 0x41
	.4byte	.LASF199
	.byte	0x1
	.byte	0x68
	.byte	0x3
	.4byte	0x1394
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x1
	.byte	0x68
	.4byte	0x834
	.byte	0
	.uleb128 0x41
	.4byte	.LASF200
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.4byte	0x13ac
	.uleb128 0x40
	.4byte	.LASF183
	.byte	0x1
	.byte	0x5e
	.4byte	0x834
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF201
	.byte	0x1
	.byte	0x58
	.4byte	0x91
	.byte	0x3
	.4byte	0x13c7
	.uleb128 0x42
	.ascii	"id\000"
	.byte	0x1
	.byte	0x58
	.4byte	0x75b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF202
	.byte	0x1
	.byte	0x52
	.byte	0x3
	.4byte	0x13de
	.uleb128 0x42
	.ascii	"id\000"
	.byte	0x1
	.byte	0x52
	.4byte	0x75b
	.byte	0
	.uleb128 0x41
	.4byte	.LASF203
	.byte	0x1
	.byte	0x4d
	.byte	0x3
	.4byte	0x13f5
	.uleb128 0x42
	.ascii	"id\000"
	.byte	0x1
	.byte	0x4d
	.4byte	0x75b
	.byte	0
	.uleb128 0x45
	.4byte	.LASF204
	.byte	0x2
	.2byte	0x131
	.byte	0x3
	.4byte	0x140f
	.uleb128 0x46
	.ascii	"clk\000"
	.byte	0x2
	.2byte	0x131
	.4byte	0x596
	.byte	0
	.uleb128 0x45
	.4byte	.LASF205
	.byte	0x2
	.2byte	0x127
	.byte	0x3
	.4byte	0x1429
	.uleb128 0x46
	.ascii	"clk\000"
	.byte	0x2
	.2byte	0x127
	.4byte	0x596
	.byte	0
	.uleb128 0x47
	.4byte	.LASF209
	.4byte	.LASF210
	.byte	0x8
	.byte	0
	.4byte	.LASF209
	.uleb128 0x48
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x2
	.2byte	0x213
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2117
	.uleb128 0x19
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
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
	.uleb128 0x21
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x47
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
	.uleb128 0x48
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LLST68:
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL155
	.4byte	.LFE229
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL153
	.4byte	.LFE228
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL149
	.4byte	.LFE227
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL147
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LFE227
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x10
	.byte	0x74
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	i2c_slave
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL123
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LFE226
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL123
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LFE226
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL134
	.4byte	.LFE226
	.2byte	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL123
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x2
	.byte	0x74
	.sleb128 4
	.4byte	.LVL132
	.4byte	.LFE226
	.2byte	0x11
	.byte	0x70
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	.LVL126
	.4byte	.LFE226
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LFE226
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x10
	.byte	0x70
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	i2c_slave
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LFE226
	.2byte	0x10
	.byte	0x70
	.sleb128 0
	.byte	0x35
	.byte	0x1e
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	i2c_slave
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL133
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL133
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL133
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0xf
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL133
	.4byte	.LVL139
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x3
	.byte	0x73
	.sleb128 32
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x13
	.byte	0x70
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x70
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL120
	.4byte	.LFE225
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL116
	.4byte	.LFE224
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL110
	.4byte	.LFE223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL109
	.4byte	.LFE223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL108
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL114
	.4byte	.LFE223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL107
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL111-1
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL113
	.4byte	.LFE223
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL103
	.4byte	.LFE222
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL102
	.4byte	.LFE222
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL101
	.4byte	.LVL104-1
	.2byte	0x2
	.byte	0x77
	.sleb128 0
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL106
	.4byte	.LFE222
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL95
	.4byte	.LFE221
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL94
	.4byte	.LFE221
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL93
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL98
	.4byte	.LFE221
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL92
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL96-1
	.4byte	.LFE221
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL78
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL81-1
	.4byte	.LFE220
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL80
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE220
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL79
	.4byte	.LVL81-1
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL81-1
	.4byte	.LVL88
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE220
	.2byte	0xb
	.byte	0x74
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0xa
	.byte	0x74
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77
	.4byte	.LFE219
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE218
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE218
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE218
	.2byte	0xb
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL68
	.4byte	.LVL70-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL70-1
	.4byte	.LFE217
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64-1
	.4byte	.LFE216
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL62
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL64-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL67
	.4byte	.LFE216
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c+4
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0xa
	.byte	0x70
	.sleb128 0
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c+4
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL160
	.4byte	.LFE213
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL160
	.4byte	.LFE213
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LFE213
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE212
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
	.2byte	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0xe
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE212
	.2byte	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.4byte	i2c
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE211
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL55
	.4byte	.LFE211
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x8
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE211
	.2byte	0x3
	.byte	0x8
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE211
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE210
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL31
	.4byte	.LFE210
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE210
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE209
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x8
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x8
	.byte	0x2c
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE209
	.2byte	0x3
	.byte	0x8
	.byte	0x3c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xbc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LFB212
	.4byte	.LFE212
	.4byte	.LFB209
	.4byte	.LFE209
	.4byte	.LFB210
	.4byte	.LFE210
	.4byte	.LFB211
	.4byte	.LFE211
	.4byte	.LFB214
	.4byte	.LFE214
	.4byte	.LFB215
	.4byte	.LFE215
	.4byte	.LFB216
	.4byte	.LFE216
	.4byte	.LFB217
	.4byte	.LFE217
	.4byte	.LFB218
	.4byte	.LFE218
	.4byte	.LFB219
	.4byte	.LFE219
	.4byte	.LFB220
	.4byte	.LFE220
	.4byte	.LFB221
	.4byte	.LFE221
	.4byte	.LFB222
	.4byte	.LFE222
	.4byte	.LFB223
	.4byte	.LFE223
	.4byte	.LFB224
	.4byte	.LFE224
	.4byte	.LFB225
	.4byte	.LFE225
	.4byte	.LFB226
	.4byte	.LFE226
	.4byte	.LFB227
	.4byte	.LFE227
	.4byte	.LFB228
	.4byte	.LFE228
	.4byte	.LFB229
	.4byte	.LFE229
	.4byte	.LFB213
	.4byte	.LFE213
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF127:
	.ascii	"slaveAddr\000"
.LASF41:
	.ascii	"SSP0CLKDIV\000"
.LASF94:
	.ascii	"SYSCTL_CLOCK_ADC\000"
.LASF133:
	.ascii	"I2C_XFER_T\000"
.LASF76:
	.ascii	"PDWAKECFG\000"
.LASF49:
	.ascii	"WDTCLKSEL\000"
.LASF43:
	.ascii	"SSP1CLKDIV\000"
.LASF51:
	.ascii	"WDTCLKDIV\000"
.LASF140:
	.ascii	"I2C_EVENT_DONE\000"
.LASF5:
	.ascii	"__uint8_t\000"
.LASF177:
	.ascii	"Chip_I2C_DeInit\000"
.LASF123:
	.ascii	"I2C_STATUS_ARBLOST\000"
.LASF96:
	.ascii	"SYSCTL_CLOCK_WDT\000"
.LASF185:
	.ascii	"getSlaveIndex\000"
.LASF210:
	.ascii	"__builtin_memset\000"
.LASF9:
	.ascii	"long long unsigned int\000"
.LASF25:
	.ascii	"WDTOSCCTRL\000"
.LASF192:
	.ascii	"addr\000"
.LASF99:
	.ascii	"SYSCTL_CLOCK_SSP1\000"
.LASF90:
	.ascii	"SYSCTL_CLOCK_CT32B0\000"
.LASF91:
	.ascii	"SYSCTL_CLOCK_CT32B1\000"
.LASF184:
	.ascii	"cclr\000"
.LASF87:
	.ascii	"SYSCTL_CLOCK_GPIO\000"
.LASF145:
	.ascii	"I2C_EVENT_T\000"
.LASF122:
	.ascii	"I2C_STATUS_NAK\000"
.LASF180:
	.ascii	"stat\000"
.LASF8:
	.ascii	"long long int\000"
.LASF0:
	.ascii	"signed char\000"
.LASF203:
	.ascii	"enableClk\000"
.LASF160:
	.ascii	"si2c\000"
.LASF204:
	.ascii	"Chip_Clock_DisablePeriphClock\000"
.LASF179:
	.ascii	"Chip_I2C_EventHandlerPolling\000"
.LASF58:
	.ascii	"RESERVED10\000"
.LASF57:
	.ascii	"PIOPORCAP\000"
.LASF67:
	.ascii	"RESERVED12\000"
.LASF47:
	.ascii	"USBCLKDIV\000"
.LASF162:
	.ascii	"addrMask\000"
.LASF78:
	.ascii	"RESERVED15\000"
.LASF167:
	.ascii	"buff\000"
.LASF163:
	.ascii	"Chip_I2C_MasterStateHandler\000"
.LASF80:
	.ascii	"LPC_SYSCTL_T\000"
.LASF86:
	.ascii	"SYSCTL_CLOCK_I2C\000"
.LASF200:
	.ascii	"startMasterXfer\000"
.LASF206:
	.ascii	"GNU C11 7.2.1 20170904 (release) [ARM/embedded-7-br"
	.ascii	"anch revision 255204] -mthumb -mcpu=cortex-m0 -g -O"
	.ascii	"1 -ffunction-sections -fdata-sections\000"
.LASF155:
	.ascii	"xfer\000"
.LASF112:
	.ascii	"MASK\000"
.LASF165:
	.ascii	"Chip_I2C_IsMasterActive\000"
.LASF125:
	.ascii	"I2C_STATUS_BUSY\000"
.LASF197:
	.ascii	"isI2CBusFree\000"
.LASF111:
	.ascii	"DATA_BUFFER\000"
.LASF153:
	.ascii	"i2c_interface\000"
.LASF70:
	.ascii	"STARTRSRP0CLR\000"
.LASF17:
	.ascii	"SYSMEMREMAP\000"
.LASF19:
	.ascii	"SYSPLLCTRL\000"
.LASF20:
	.ascii	"SYSPLLSTAT\000"
.LASF175:
	.ascii	"clockrate\000"
.LASF65:
	.ascii	"USBCLKCTRL\000"
.LASF157:
	.ascii	"i2c_slave\000"
.LASF71:
	.ascii	"STARTSRP0\000"
.LASF134:
	.ascii	"CHIP_SYSCTL_CLOCK\000"
.LASF6:
	.ascii	"__uint32_t\000"
.LASF191:
	.ascii	"mask\000"
.LASF98:
	.ascii	"SYSCTL_CLOCK_CAN\000"
.LASF92:
	.ascii	"SYSCTL_CLOCK_SSP0\000"
.LASF59:
	.ascii	"BODCTRL\000"
.LASF178:
	.ascii	"Chip_I2C_Init\000"
.LASF136:
	.ascii	"I2C0\000"
.LASF95:
	.ascii	"SYSCTL_CLOCK_RESERVED14\000"
.LASF143:
	.ascii	"I2C_EVENT_SLAVE_RX\000"
.LASF130:
	.ascii	"rxBuff\000"
.LASF53:
	.ascii	"CLKOUTSEL\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF113:
	.ascii	"LPC_I2C_T\000"
.LASF79:
	.ascii	"DEVICEID\000"
.LASF147:
	.ascii	"SystemCoreClock\000"
.LASF176:
	.ascii	"SCLValue\000"
.LASF150:
	.ascii	"mXfer\000"
.LASF64:
	.ascii	"PINTSEL\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF60:
	.ascii	"SYSTCKCAL\000"
.LASF166:
	.ascii	"Chip_I2C_MasterRead\000"
.LASF104:
	.ascii	"SCLH\000"
.LASF172:
	.ascii	"Chip_I2C_SetMasterEventHandler\000"
.LASF182:
	.ascii	"handleSlaveXferState\000"
.LASF105:
	.ascii	"SCLL\000"
.LASF168:
	.ascii	"Chip_I2C_MasterCmdRead\000"
.LASF156:
	.ascii	"event\000"
.LASF121:
	.ascii	"I2C_STATUS_DONE\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF62:
	.ascii	"IRQLATENCY\000"
.LASF202:
	.ascii	"disableClk\000"
.LASF114:
	.ascii	"I2C_SLAVE_GENERAL\000"
.LASF174:
	.ascii	"Chip_I2C_SetClockRate\000"
.LASF69:
	.ascii	"STARTERP0\000"
.LASF73:
	.ascii	"STARTERP1\000"
.LASF82:
	.ascii	"SYSCTL_CLOCK_ROM\000"
.LASF27:
	.ascii	"LFOSCCTRL\000"
.LASF151:
	.ascii	"sXfer\000"
.LASF194:
	.ascii	"abase\000"
.LASF188:
	.ascii	"isSlaveAddrMatching\000"
.LASF190:
	.ascii	"addr2\000"
.LASF45:
	.ascii	"USBCLKSEL\000"
.LASF2:
	.ascii	"short int\000"
.LASF93:
	.ascii	"SYSCTL_CLOCK_UART0\000"
.LASF18:
	.ascii	"PRESETCTRL\000"
.LASF164:
	.ascii	"Chip_I2C_IsStateChanged\000"
.LASF120:
	.ascii	"I2C_SLAVE_ID\000"
.LASF129:
	.ascii	"txSz\000"
.LASF148:
	.ascii	"mEvent\000"
.LASF63:
	.ascii	"NMISRC\000"
.LASF84:
	.ascii	"SYSCTL_CLOCK_FLASHREG\000"
.LASF107:
	.ascii	"MMCTRL\000"
.LASF154:
	.ascii	"i2c_slave_interface\000"
.LASF39:
	.ascii	"SYSAHBCLKCTRL\000"
.LASF24:
	.ascii	"SYSOSCCTRL\000"
.LASF85:
	.ascii	"SYSCTL_CLOCK_FLASHARRAY\000"
.LASF33:
	.ascii	"USBPLLCLKUEN\000"
.LASF103:
	.ascii	"ADR0\000"
.LASF189:
	.ascii	"addr1\000"
.LASF109:
	.ascii	"ADR2\000"
.LASF36:
	.ascii	"MAINCLKUEN\000"
.LASF135:
	.ascii	"I2C_ID\000"
.LASF72:
	.ascii	"RESERVED13\000"
.LASF97:
	.ascii	"SYSCTL_CLOCK_IOCON\000"
.LASF31:
	.ascii	"SYSPLLCLKUEN\000"
.LASF81:
	.ascii	"SYSCTL_CLOCK_SYS\000"
.LASF46:
	.ascii	"USBCLKUEN\000"
.LASF83:
	.ascii	"SYSCTL_CLOCK_RAM\000"
.LASF144:
	.ascii	"I2C_EVENT_SLAVE_TX\000"
.LASF21:
	.ascii	"USBPLLCTRL\000"
.LASF55:
	.ascii	"CLKOUTDIV\000"
.LASF170:
	.ascii	"Chip_I2C_MasterTransfer\000"
.LASF42:
	.ascii	"USARTCLKDIV\000"
.LASF142:
	.ascii	"I2C_EVENT_UNLOCK\000"
.LASF138:
	.ascii	"I2C_ID_T\000"
.LASF205:
	.ascii	"Chip_Clock_EnablePeriphClock\000"
.LASF89:
	.ascii	"SYSCTL_CLOCK_CT16B1\000"
.LASF181:
	.ascii	"Chip_I2C_EventHandler\000"
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
.LASF198:
	.ascii	"setSlaveAddr\000"
.LASF14:
	.ascii	"_Bool\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF183:
	.ascii	"pI2C\000"
.LASF137:
	.ascii	"I2C_NUM_INTERFACE\000"
.LASF50:
	.ascii	"WDTCLKUEN\000"
.LASF126:
	.ascii	"I2C_STATUS_T\000"
.LASF209:
	.ascii	"memset\000"
.LASF196:
	.ascii	"getCurState\000"
.LASF37:
	.ascii	"SYSAHBCLKDIV\000"
.LASF131:
	.ascii	"rxSz\000"
.LASF187:
	.ascii	"lookupSlaveIndex\000"
.LASF106:
	.ascii	"CONCLR\000"
.LASF77:
	.ascii	"PDRUNCFG\000"
.LASF201:
	.ascii	"getClkRate\000"
.LASF141:
	.ascii	"I2C_EVENT_LOCK\000"
.LASF195:
	.ascii	"isMasterState\000"
.LASF199:
	.ascii	"startSlaverXfer\000"
.LASF128:
	.ascii	"txBuff\000"
.LASF13:
	.ascii	"char\000"
.LASF115:
	.ascii	"I2C_SLAVE_0\000"
.LASF116:
	.ascii	"I2C_SLAVE_1\000"
.LASF117:
	.ascii	"I2C_SLAVE_2\000"
.LASF118:
	.ascii	"I2C_SLAVE_3\000"
.LASF207:
	.ascii	"src/i2c_11xx.c\000"
.LASF186:
	.ascii	"handleMasterXferState\000"
.LASF28:
	.ascii	"SYSRSTSTAT\000"
.LASF88:
	.ascii	"SYSCTL_CLOCK_CT16B0\000"
.LASF211:
	.ascii	"Chip_Clock_GetMainClockRate\000"
.LASF193:
	.ascii	"index\000"
.LASF149:
	.ascii	"sEvent\000"
.LASF208:
	.ascii	"/Users/Carlo/Documents/Uni/TUDelft/Courses/Q7_Hacki"
	.ascii	"ng-Lab/Code/lpcopen/lpc_chip_11cxx_lib\000"
.LASF146:
	.ascii	"I2C_EVENTHANDLER_T\000"
.LASF61:
	.ascii	"RESERVED11\000"
.LASF139:
	.ascii	"I2C_EVENT_WAIT\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF102:
	.ascii	"STAT\000"
.LASF16:
	.ascii	"ExtRateIn\000"
.LASF74:
	.ascii	"RESERVED14\000"
.LASF119:
	.ascii	"I2C_SLAVE_NUM_INTERFACE\000"
.LASF132:
	.ascii	"status\000"
.LASF32:
	.ascii	"USBPLLCLKSEL\000"
.LASF22:
	.ascii	"USBPLLSTAT\000"
.LASF152:
	.ascii	"flags\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF35:
	.ascii	"MAINCLKSEL\000"
.LASF108:
	.ascii	"ADR1\000"
.LASF101:
	.ascii	"CONSET\000"
.LASF110:
	.ascii	"ADR3\000"
.LASF30:
	.ascii	"SYSPLLCLKSEL\000"
.LASF75:
	.ascii	"PDSLEEPCFG\000"
.LASF173:
	.ascii	"Chip_I2C_GetClockRate\000"
.LASF26:
	.ascii	"IRCCTRL\000"
.LASF15:
	.ascii	"OscRateIn\000"
.LASF159:
	.ascii	"Chip_I2C_SlaveStateHandler\000"
.LASF4:
	.ascii	"long int\000"
.LASF161:
	.ascii	"Chip_I2C_SlaveSetup\000"
.LASF169:
	.ascii	"Chip_I2C_MasterSend\000"
.LASF66:
	.ascii	"USBCLKST\000"
.LASF54:
	.ascii	"CLKOUTUEN\000"
.LASF158:
	.ascii	"Chip_I2C_Disable\000"
.LASF171:
	.ascii	"Chip_I2C_GetMasterEventHandler\000"
.LASF100:
	.ascii	"CHIP_SYSCTL_CLOCK_T\000"
.LASF124:
	.ascii	"I2C_STATUS_BUSERR\000"
	.ident	"GCC: (GNU Tools for Arm Embedded Processors 7-2017-q4-major) 7.2.1 20170904 (release) [ARM/embedded-7-branch revision 255204]"
