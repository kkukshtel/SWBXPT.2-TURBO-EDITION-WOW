	.file	"myLib.c"
@ GNU C version 3.3.2 (arm-thumb-elf)
@	compiled by GNU C version 3.3.1 (cygming special).
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed:  -fpreprocessed -mthumb-interwork -mlong-calls
@ -auxbase-strip -O2 -Wall -fverbose-asm
@ options enabled:  -fdefer-pop -fomit-frame-pointer
@ -foptimize-sibling-calls -fcse-follow-jumps -fcse-skip-blocks
@ -fexpensive-optimizations -fthread-jumps -fstrength-reduce -fpeephole
@ -fforce-mem -ffunction-cse -fkeep-static-consts -fcaller-saves
@ -freg-struct-return -fgcse -fgcse-lm -fgcse-sm -floop-optimize
@ -fcrossjumping -fif-conversion -fif-conversion2 -frerun-cse-after-loop
@ -frerun-loop-opt -fdelete-null-pointer-checks -fschedule-insns
@ -fschedule-insns2 -fsched-interblock -fsched-spec -fbranch-count-reg
@ -freorder-blocks -freorder-functions -fcprop-registers -fcommon
@ -fverbose-asm -fgnu-linker -fregmove -foptimize-register-move
@ -fargument-alias -fstrict-aliasing -fmerge-constants
@ -fzero-initialized-in-bss -fident -fpeephole2 -fguess-branch-probability
@ -fmath-errno -ftrapping-math -mapcs -mapcs-frame -mapcs-32 -msoft-float
@ -mthumb-interwork -mlong-calls

	.global	videoBuffer
	.data
	.align	2
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.global	frontBuffer
	.align	2
	.type	frontBuffer, %object
	.size	frontBuffer, 4
frontBuffer:
	.word	100663296
	.global	backBuffer
	.align	2
	.type	backBuffer, %object
	.size	backBuffer, 4
backBuffer:
	.word	100704256
	.global	dma
	.align	2
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.text
	.align	2
	.global	setPixel3
	.type	setPixel3, %function
setPixel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
	rsb	r0, r0, r0, asl #4	@  row,  row
	add	r1, r1, r0, asl #4	@  col
	ldr	r0, [r3, #0]	@  videoBuffer
	mov	r1, r1, asl #1
	@ lr needed for prologue
	strh	r2, [r1, r0]	@ movhi 
	bx	lr
.L3:
	.align	2
.L2:
	.word	videoBuffer
	.size	setPixel3, .-setPixel3
	.align	2
	.global	drawRect3
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	ip, r3	@  width
	ldrh	r3, [fp, #4]	@ movhi	@  color
	cmp	r2, #0	@  height
	strh	r3, [fp, #-38]	@ movhi 
	ble	.L11
	rsb	r3, r0, r0, asl #4	@  row,  row
	add	r3, r1, r3, asl #4	@  col
	ldr	sl, .L12
	ldr	r8, .L12+4
	orr	r6, ip, #16777216	@  width,  width
	mov	r5, r3, asl #1
	mov	r4, r2	@  i,  height
	sub	r7, fp, #38	@  col
.L9:
	ldr	r2, [sl, #0]	@  videoBuffer
	mov	r0, #3
	add	r2, r2, r5	@  height
	mov	r1, r7	@  col
	mov	r3, r6	@  width
	mov	lr, pc
	bx	r8
	subs	r4, r4, #1	@  i,  i
	add	r5, r5, #480
	bne	.L9
.L11:
	ldmea	fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	videoBuffer
	.word	DMANow
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawImage3
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	cmp	r3, #0	@  height
	sub	fp, ip, #4
	ldr	r7, [fp, #4]	@  width,  width
	mov	ip, r3	@  height
	ble	.L21
	rsb	r3, r1, r1, asl #4	@  row,  row
	add	r3, r2, r3, asl #4	@  col
	ldr	sl, .L22
	ldr	r8, .L22+4
	mov	r6, r3, asl #1
	mov	r5, r0	@  image,  image
	mov	r4, ip	@  i,  height
.L19:
	ldr	r2, [sl, #0]	@  videoBuffer
	mov	r1, r5	@  image
	add	r2, r2, r6	@  col
	mov	r0, #3
	mov	r3, r7	@  width
	mov	lr, pc
	bx	r8
	subs	r4, r4, #1	@  i,  i
	add	r5, r5, r7, asl #1	@  image,  image,  width
	add	r6, r6, #480
	bne	.L19
.L21:
	ldmea	fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx	lr
.L23:
	.align	2
.L22:
	.word	videoBuffer
	.word	DMANow
	.size	drawImage3, .-drawImage3
	.align	2
	.global	fillScreen3
	.type	fillScreen3, %function
fillScreen3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L25
	sub	fp, ip, #4
	sub	sp, sp, #4
	sub	r1, fp, #12
	ldr	r2, [r3, #0]	@  videoBuffer
	mov	r3, #16777216
	strh	r0, [r1, #-2]!	@ movhi 
	add	r3, r3, #38400
	mov	r0, #3
	ldr	ip, .L25+4
	mov	lr, pc
	bx	ip
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	videoBuffer
	.word	DMANow
	.size	fillScreen3, .-fillScreen3
	.align	2
	.global	setPixel4
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	rsb	r0, r0, r0, asl #4	@  row,  row
	ldr	ip, .L31
	add	r3, r1, r1, lsr #31	@  col,  col
	mov	r0, r0, asl #3
	add	r0, r0, r3, asr #1
	ldr	ip, [ip, #0]	@  videoBuffer
	mov	r0, r0, asl #1
	and	r3, r2, #255	@  colorIndex
	ldrsh	r2, [r0, ip]	@  pixels
	tst	r1, #1	@  col
	biceq	r2, r2, #255	@  pixels,  pixels
	andne	r2, r2, #255	@  pixels
	orreq	r3, r2, r3	@  pixels,  colorIndex
	orrne	r3, r2, r3, asl #8	@  pixels,  colorIndex
	@ lr needed for prologue
	strh	r3, [r0, ip]	@ movhi 
	bx	lr
.L32:
	.align	2
.L31:
	.word	videoBuffer
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect4
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #32
	ldrb	r8, [fp, #4]	@ zero_extendqisi2	@  colorIndex,  colorIndex
	mov	sl, #0	@  r
	str	r2, [fp, #-48]	@  height
	cmp	sl, r2	@  r
	orr	r2, r8, r8, asl #8	@  colorIndex,  colorIndex
	strh	r2, [fp, #-42]	@ movhi 
	mov	r6, r1	@  col
	mov	r9, r3	@  width
	bge	.L45
	rsb	r3, r0, r0, asl #4	@  row,  row
	mov	r7, r3, asl #3
	add	r3, r6, #1	@  col
	add	r1, r9, r9, lsr #31	@  width,  width
	add	r3, r3, r3, lsr #31
	str	r3, [fp, #-64]
	and	r2, r6, #1	@  col
	mov	r3, r1, asr #1
	add	ip, r6, r9	@  col,  width
	str	r1, [fp, #-56]
	str	r2, [fp, #-72]
	str	r3, [fp, #-52]
	str	ip, [fp, #-60]
	mov	r4, r0	@  row,  row
	mov	r5, r7
.L43:
	ldr	lr, [fp, #-52]
	add	r3, r6, r6, lsr #31	@  col,  col
	add	ip, r5, r3, asr #1
	orr	r3, lr, #16777216
	ldr	lr, [fp, #-72]
	cmp	lr, #0
	mov	r0, r4	@  row
	mov	r1, r6	@  col
	mov	r2, r8	@  colorIndex
	bne	.L38
	ldr	r1, .L48
	ldr	r2, [r1, #0]	@  videoBuffer
	mov	r0, #3
	add	r2, r2, ip, asl #1	@  height
	sub	r1, fp, #42
	ldr	ip, .L48+4
	mov	lr, pc
	bx	ip
	ldr	ip, [fp, #-52]
	ldr	lr, [fp, #-60]
	sub	r3, r9, ip, asl #1	@  width
	cmp	r3, #1
	mov	r0, r4	@  row
	sub	r1, lr, #1
	mov	r2, r8	@  colorIndex
	beq	.L46
.L36:
	ldr	r1, [fp, #-48]	@  height
	add	sl, sl, #1	@  r,  r
	cmp	sl, r1	@  r
	add	r5, r5, #120
	add	r4, r4, #1	@  row,  row
	add	r7, r7, #120
	blt	.L43
.L45:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L46:
	bl	setPixel4
	b	.L36
.L38:
	bl	setPixel4
	ldr	lr, [fp, #-64]
	ldr	r2, [fp, #-64]
	mov	r0, #3
	rsb	r3, r4, r4, asl #4	@  row,  row
	add	lr, r7, lr, asr #1
	mov	r3, r3, asl r0
	str	lr, [fp, #-68]
	add	lr, r3, r2, asr #1
	ldr	r3, [fp, #-56]
	mov	r2, r3, asr #1
	sub	ip, r2, #1
	orr	r3, r2, #16777216	@  width
	sub	r2, r9, r2, asl #1	@  width
	cmp	r2, #1
	sub	r1, fp, #42
	orr	ip, ip, #16777216	@  width
	beq	.L47
	ldr	r1, .L48
	ldr	r2, [r1, #0]	@  videoBuffer
	mov	r3, ip	@  width
	add	r2, r2, lr, asl #1	@  height
	sub	r1, fp, #42
	mov	r0, #3
	ldr	ip, .L48+4
	mov	lr, pc
	bx	ip
	ldr	lr, [fp, #-60]
	mov	r0, r4	@  row
	sub	r1, lr, #1
	mov	r2, r8	@  colorIndex
	b	.L46
.L47:
	ldr	ip, .L48
	ldr	lr, [fp, #-68]
	ldr	r2, [ip, #0]	@  videoBuffer
	ldr	ip, .L48+4
	add	r2, r2, lr, asl #1	@  height
	mov	lr, pc
	bx	ip
	b	.L36
.L49:
	.align	2
.L48:
	.word	videoBuffer
	.word	DMANow
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen4
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L51
	sub	fp, ip, #4
	sub	sp, sp, #4
	and	r0, r0, #255	@  colorIndex
	orr	r0, r0, r0, asl #8	@  colorIndex,  colorIndex
	sub	r1, fp, #12
	ldr	r2, [r3, #0]	@  videoBuffer
	mov	r3, #16777216
	strh	r0, [r1, #-2]!	@ movhi 
	add	r3, r3, #19200
	mov	r0, #3
	ldr	ip, .L51+4
	mov	lr, pc
	bx	ip
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	videoBuffer
	.word	DMANow
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawBackgroundImage4
	.type	drawBackgroundImage4, %function
drawBackgroundImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	ldr	r3, .L54
	sub	fp, ip, #4
	ldr	r2, [r3, #0]	@  videoBuffer
	mov	r1, r0	@  image
	mov	r3, #19200
	mov	r0, #3
	ldr	ip, .L54+4
	mov	lr, pc
	bx	ip
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	videoBuffer
	.word	DMANow
	.size	drawBackgroundImage4, .-drawBackgroundImage4
	.align	2
	.global	drawImage4
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	tst	r2, #1	@  col
	sub	fp, ip, #4
	mov	ip, r3	@  height
	mov	r8, r2	@  col
	addne	r8, r2, #1	@  col,  col
	cmp	ip, #0	@  height
	ldr	r3, [fp, #4]	@  width,  width
	ble	.L64
	add	r3, r3, r3, lsr #31	@  width,  width
	rsb	r2, r1, r1, asl #4	@  row,  row
	ldr	r9, .L65
	mov	r7, r3, asr #1	@  height
	mov	r6, r2, asl #3
	mov	r5, r0	@  image,  image
	mov	r4, ip	@  r,  height
	mov	sl, r8, asr #31	@  col
.L62:
	ldr	r3, .L65+4
	ldr	r2, [r3, #0]	@  videoBuffer
	add	r3, r8, sl, lsr #31	@  col
	add	r3, r6, r3, asr #1
	add	r2, r2, r3, asl #1	@  col
	mov	r1, r5	@  image
	mov	r0, #3
	mov	r3, r7	@  height
	mov	lr, pc
	bx	r9
	subs	r4, r4, #1	@  r,  r
	add	r5, r5, r7, asl #1	@  image,  image,  height
	add	r6, r6, #120
	bne	.L62
.L64:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L66:
	.align	2
.L65:
	.word	DMANow
	.word	videoBuffer
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawSubImage4
	.type	drawSubImage4, %function
drawSubImage4:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	ldr	r6, [fp, #8]	@  col,  col
	tst	r2, #1	@  sourceCol
	mov	r7, r2	@  sourceCol
	str	r0, [fp, #-44]	@  sourceImage
	ldr	r0, [fp, #12]	@  height
	addne	r7, r7, #1	@  sourceCol,  sourceCol
	mov	r5, #0	@  r
	tst	r6, #1	@  col
	addne	r6, r6, #1	@  col,  col
	cmp	r5, r0	@  r
	str	r1, [fp, #-48]	@  sourceRow
	ldr	r2, [fp, #4]	@  row,  row
	ldr	r1, [fp, #16]	@  width,  width
	bge	.L76
	add	r3, r3, r3, lsr #31	@  sourceWidth,  sourceWidth
	mov	r3, r3, asr #1
	rsb	r2, r2, r2, asl #4	@  row,  row
	str	r3, [fp, #-52]
	mov	r4, r2, asl #3
	add	r9, r1, r1, lsr #31	@  width,  width
	mov	sl, r7, asr #31	@  sourceCol
	mov	r8, r6, asr #31	@  col
.L74:
	ldr	r1, [fp, #-48]	@  sourceRow
	add	r3, r1, r5	@  r
	ldr	r1, [fp, #-52]
	mul	r1, r3, r1
	ldr	r3, .L77
	ldr	ip, [fp, #-44]	@  sourceImage
	ldr	r2, [r3, #0]	@  videoBuffer
	add	r0, r7, sl, lsr #31	@  sourceCol
	add	r3, r6, r8, lsr #31	@  col
	add	r3, r4, r3, asr #1
	add	r1, r1, r0, asr #1
	add	r2, r2, r3, asl #1	@  sourceCol
	add	r1, ip, r1, asl #1	@  sourceRow
	mov	r0, #3
	mov	r3, r9, asr #1
	ldr	ip, .L77+4
	mov	lr, pc
	bx	ip
	ldr	r0, [fp, #12]	@  height
	add	r5, r5, #1	@  r,  r
	cmp	r5, r0	@  r
	add	r4, r4, #120
	blt	.L74
.L76:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	videoBuffer
	.word	DMANow
	.size	drawSubImage4, .-drawSubImage4
	.align	2
	.global	loadPalette
	.type	loadPalette, %function
loadPalette:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	mov	r1, r0	@  palette
	sub	fp, ip, #4
	mov	r0, #3
	mov	r2, #83886080
	mov	r3, #256
	ldr	ip, .L80
	mov	lr, pc
	bx	ip
	ldmea	fp, {fp, sp, lr}
	bx	lr
.L81:
	.align	2
.L80:
	.word	DMANow
	.size	loadPalette, .-loadPalette
	.align	2
	.global	DMANow
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	ip, .L83
	add	r0, r0, r0, asl #1	@  channel,  channel
	ldr	lr, [ip, #0]	@  dma
	mov	r0, r0, asl #2
	add	ip, r0, lr
	orr	r3, r3, #-2147483648	@  control
	str	r1, [r0, lr]	@  source,  <variable>.src
	str	r2, [ip, #4]	@  destination,  <variable>.dst
	str	r3, [ip, #8]	@  <variable>.cnt
	ldr	lr, [sp], #4
	bx	lr
.L84:
	.align	2
.L83:
	.word	dma
	.size	DMANow, .-DMANow
	.align	2
	.global	waitForVblank
	.type	waitForVblank, %function
waitForVblank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	@ lr needed for prologue
	mov	r2, #67108864
.L86:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L86
	mov	r2, #67108864
.L89:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L89
	bx	lr
	.size	waitForVblank, .-waitForVblank
	.align	2
	.global	flipPage
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #67108864
	ldrh	r3, [r1, #0]
	tst	r3, #16
	orr	ip, r3, #16
	bic	r0, r3, #16
	ldrne	r3, .L96
	ldreq	r3, .L96+4
	ldrne	r2, [r3, #0]	@  backBuffer
	ldreq	r2, [r3, #0]	@  frontBuffer
	ldr	r3, .L96+8
	@ lr needed for prologue
	strneh	r0, [r1, #0]	@ movhi 
	streqh	ip, [r1, #0]	@ movhi 
	str	r2, [r3, #0]	@  videoBuffer
	bx	lr
.L97:
	.align	2
.L96:
	.word	backBuffer
	.word	frontBuffer
	.word	videoBuffer
	.size	flipPage, .-flipPage
	.ident	"GCC: (GNU) 3.3.2"
