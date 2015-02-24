	.file	"main.c"
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

	.global	hOff
	.bss
	.global	hOff
	.align	2
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.global	vOff
	.global	vOff
	.align	2
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.global	upgraded
	.global	upgraded
	.align	2
	.type	upgraded, %object
	.size	upgraded, 4
upgraded:
	.space	4
	.global	collMapSize
	.data
	.align	2
	.type	collMapSize, %object
	.size	collMapSize, 4
collMapSize:
	.word	256
	.global	CharAniCounter
	.bss
	.global	CharAniCounter
	.align	2
	.type	CharAniCounter, %object
	.size	CharAniCounter, 4
CharAniCounter:
	.space	4
	.global	frame
	.global	frame
	.align	2
	.type	frame, %object
	.size	frame, 4
frame:
	.space	4
	.global	CharAniState
	.global	CharAniState
	.align	2
	.type	CharAniState, %object
	.size	CharAniState, 4
CharAniState:
	.space	4
	.global	CharPrevAniState
	.global	CharPrevAniState
	.align	2
	.type	CharPrevAniState, %object
	.size	CharPrevAniState, 4
CharPrevAniState:
	.space	4
	.global	itemCursorState
	.global	itemCursorState
	.align	2
	.type	itemCursorState, %object
	.size	itemCursorState, 4
itemCursorState:
	.space	4
	.global	barrierCounter
	.global	barrierCounter
	.align	2
	.type	barrierCounter, %object
	.size	barrierCounter, 4
barrierCounter:
	.space	4
	.global	bombCounter
	.global	bombCounter
	.align	2
	.type	bombCounter, %object
	.size	bombCounter, 4
bombCounter:
	.space	4
	.global	bombAniCounter
	.global	bombAniCounter
	.align	2
	.type	bombAniCounter, %object
	.size	bombAniCounter, 4
bombAniCounter:
	.space	4
	.global	vblankCounter
	.global	vblankCounter
	.align	2
	.type	vblankCounter, %object
	.size	vblankCounter, 4
vblankCounter:
	.space	4
	.global	soundAStart
	.global	soundAStart
	.align	2
	.type	soundAStart, %object
	.size	soundAStart, 4
soundAStart:
	.space	4
	.global	soundALooping
	.global	soundALooping
	.align	2
	.type	soundALooping, %object
	.size	soundALooping, 4
soundALooping:
	.space	4
	.global	soundALength
	.global	soundALength
	.align	2
	.type	soundALength, %object
	.size	soundALength, 4
soundALength:
	.space	4
	.global	soundAFrequency
	.global	soundAFrequency
	.align	2
	.type	soundAFrequency, %object
	.size	soundAFrequency, 4
soundAFrequency:
	.space	4
	.global	soundADuration
	.global	soundADuration
	.align	2
	.type	soundADuration, %object
	.size	soundADuration, 4
soundADuration:
	.space	4
	.global	soundAPlaying
	.global	soundAPlaying
	.align	2
	.type	soundAPlaying, %object
	.size	soundAPlaying, 4
soundAPlaying:
	.space	4
	.global	soundBStart
	.global	soundBStart
	.align	2
	.type	soundBStart, %object
	.size	soundBStart, 4
soundBStart:
	.space	4
	.global	soundBLooping
	.global	soundBLooping
	.align	2
	.type	soundBLooping, %object
	.size	soundBLooping, 4
soundBLooping:
	.space	4
	.global	soundBLength
	.global	soundBLength
	.align	2
	.type	soundBLength, %object
	.size	soundBLength, 4
soundBLength:
	.space	4
	.global	soundBFrequency
	.global	soundBFrequency
	.align	2
	.type	soundBFrequency, %object
	.size	soundBFrequency, 4
soundBFrequency:
	.space	4
	.global	soundBDuration
	.global	soundBDuration
	.align	2
	.type	soundBDuration, %object
	.size	soundBDuration, 4
soundBDuration:
	.space	4
	.global	soundBPlaying
	.global	soundBPlaying
	.align	2
	.type	soundBPlaying, %object
	.size	soundBPlaying, 4
soundBPlaying:
	.space	4
	.global	actualTimer
	.data
	.align	2
	.type	actualTimer, %object
	.size	actualTimer, 4
actualTimer:
	.word	50
	.global	show1
	.bss
	.global	show1
	.align	2
	.type	show1, %object
	.size	show1, 4
show1:
	.space	4
	.global	show2
	.global	show2
	.align	2
	.type	show2, %object
	.size	show2, 4
show2:
	.space	4
	.global	show3
	.global	show3
	.align	2
	.type	show3, %object
	.size	show3, 4
show3:
	.space	4
	.global	infiniteBombs
	.global	infiniteBombs
	.align	2
	.type	infiniteBombs, %object
	.size	infiniteBombs, 4
infiniteBombs:
	.space	4
	.global	superStrength
	.global	superStrength
	.align	2
	.type	superStrength, %object
	.size	superStrength, 4
superStrength:
	.space	4
	.global	impossibleMode
	.global	impossibleMode
	.align	2
	.type	impossibleMode, %object
	.size	impossibleMode, 4
impossibleMode:
	.space	4
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	mov	r3, #7040
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	add	r3, r3, #1
	mov	r4, #67108864
	mov	r1, #7296
	strh	r3, [r4, #8]	@ movhi 
	add	r1, r1, #7
	mov	r3, #4864	@ movhi
	ldr	r6, .L18
	mov	r2, #100663296
	sub	fp, ip, #4
	strh	r1, [r4, #10]	@ movhi 
	mov	ip, #0
	strh	r3, [r4, #0]	@ movhi 
	mov	r0, #3
	ldr	r1, .L18+4
	add	r2, r2, #65536
	mov	r3, #16384
	ldr	r5, .L18+8
	str	ip, [r6, #0]	@  state
	mov	lr, pc
	bx	r5
	mov	r2, #83886080
	mov	r0, #3
	ldr	r1, .L18+12
	add	r2, r2, #512
	mov	r3, #256
	mov	lr, pc
	bx	r5
	ldr	r2, [r4, #304]
	ldr	r3, .L18+16
	ldr	ip, .L18+20
	str	r2, [r3, #0]	@  buttons
	ldr	r9, .L18+24
	mov	lr, pc
	bx	ip
	mov	lr, pc
	bx	r9
	ldr	r4, .L18+28
	ldr	sl, .L18+32
	ldr	r7, .L18+36
	ldr	r8, .L18+40
.L16:
	ldr	r3, [r6, #0]	@  state
	cmp	r3, #7
	ldrls	pc, [pc, r3, asl #2]
	b	.L16
	.p2align 2
.L13:
	.word	.L6
	.word	.L7
	.word	.L16
	.word	.L8
	.word	.L9
	.word	.L10
	.word	.L12
	.word	.L11
.L6:
	mov	r1, #1441792
	add	r1, r1, #15744
	mov	r2, #11008
	ldr	ip, .L18+44
	add	r1, r1, #32
	add	r2, r2, #17
	mov	r3, #1
	ldr	r0, .L18+48
	mov	lr, pc
	bx	ip
	mov	r3, #67108864
	mov	r2, #0	@ movhi
	strh	r2, [r3, #20]	@ movhi 
	ldr	r0, .L18+52
	strh	r2, [r3, #22]	@ movhi 
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+56
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L18+60
	mov	r2, #100663296
	mov	r3, #32
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+64
	add	r2, r2, #57344
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r3, #14592
	mov	r0, #3
	ldr	r1, .L18+68
	add	r2, r2, #16384
	add	r3, r3, #32
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	sl
	b	.L16
.L7:
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	mov	lr, pc
	bx	r9
	ldr	r0, .L18+72
	mov	lr, pc
	bx	r4
	mov	r0, #3
	ldr	r1, .L18+76
	mov	r2, #100663296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+80
	add	r2, r2, #16384
	mov	r3, #3520
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+84
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+88
	add	r2, r2, #57344
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	ldr	ip, .L18+92
.L17:
	mov	lr, pc
	bx	ip
	b	.L16
.L8:
	ldr	r2, .L18+96
	mov	lr, pc
	bx	r2
	b	.L16
.L9:
	ldr	r3, .L18+100
	mov	lr, pc
	bx	r3
	b	.L16
.L10:
	ldr	r0, .L18+104
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+56
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L18+60
	mov	r2, #100663296
	mov	r3, #32
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+108
	add	r2, r2, #57344
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r3, #17152
	mov	r0, #3
	ldr	r1, .L18+112
	add	r2, r2, #16384
	add	r3, r3, #96
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r7
	b	.L16
.L12:
	ldr	ip, .L18+116
	b	.L17
.L11:
	ldr	r0, .L18+120
	mov	lr, pc
	bx	r4
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+56
	add	r2, r2, #55296
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r0, #3
	ldr	r1, .L18+60
	mov	r2, #100663296
	mov	r3, #32
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+124
	add	r2, r2, #57344
	mov	r3, #1024
	mov	lr, pc
	bx	r5
	mov	r2, #100663296
	mov	r0, #3
	ldr	r1, .L18+128
	add	r2, r2, #16384
	mov	r3, #8960
	mov	lr, pc
	bx	r5
	mov	lr, pc
	bx	r8
	b	.L16
.L19:
	.align	2
.L18:
	.word	state
	.word	spritesTiles
	.word	DMANow
	.word	spritesPal
	.word	buttons
	.word	setupInterrupts
	.word	setupSounds
	.word	loadPalette
	.word	splash
	.word	help
	.word	settings
	.word	playSoundB
	.word	intromusic
	.word	titlePal
	.word	blankbgMap
	.word	blankbgTiles
	.word	titleMap
	.word	titleTiles
	.word	backgroundPal
	.word	itemsoverlayTiles
	.word	backgroundTiles
	.word	itemsoverlayMap
	.word	backgroundMap
	.word	game
	.word	win
	.word	pause
	.word	instructionsPal
	.word	instructionsMap
	.word	instructionsTiles
	.word	lose
	.word	settingsPal
	.word	settingsMap
	.word	settingsTiles
	.size	main, .-main
	.align	2
	.global	splash
	.type	splash, %function
splash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, fp, ip, lr, pc}
	ldr	r3, .L35
	sub	fp, ip, #4
	mov	lr, pc
	bx	r3
	ldr	r0, .L35+4
	mov	r6, #117440512
	mov	r8, #984
	ldr	lr, .L35+8
	ldr	ip, .L35+12
	ldr	sl, .L35+16
	mov	r4, #0	@  startstate
	add	r6, r6, #984
	add	r7, r0, r8
	mov	r5, #89
.L32:
	ldr	r3, [ip, #0]	@  buttons
	str	r3, [lr, #0]	@  oldButtons
	mov	r2, #67108864
	ldr	r2, [r2, #304]
	mvn	r3, r3
	tst	r3, #1
	str	r2, [ip, #0]	@  buttons
	bne	.L24
	mvn	r3, r2
	tst	r3, #1
	beq	.L24
	cmp	r4, #0	@  startstate
	moveq	r3, #1
	beq	.L33
	cmp	r4, #1	@  startstate
	moveq	r3, #5
	streq	r3, [sl, #0]	@  state
	moveq	r3, #512	@ movhi
	streqh	r3, [r6, #0]	@ movhi 	@  <variable>.attr0
	beq	.L22
	cmp	r4, #2	@  startstate
	beq	.L34
.L24:
	ldr	r3, [lr, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #128
	bne	.L28
	ldr	r3, [ip, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #128
	beq	.L28
	cmp	r4, #1	@  startstate
	addls	r4, r4, #1	@  startstate,  startstate
	addls	r5, r5, #13
.L28:
	ldr	r3, [lr, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #64
	bne	.L30
	ldr	r3, [ip, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #64
	beq	.L30
	sub	r3, r4, #1	@  startstate,  startstate
	cmp	r3, #1	@  startstate
	movls	r4, r3	@  startstate,  startstate
	subls	r5, r5, #13
.L30:
	mov	r2, #984
	mov	r3, #16384
	add	r2, r2, #2
	add	r3, r3, #31
	and	r1, r5, #255
	strh	r3, [r0, r2]	@ movhi 	@  <variable>.attr1
	orr	r1, r1, #8192
	mov	r3, #988
	mov	r2, #256	@ movhi
	strh	r1, [r0, r8]	@ movhi 	@  <variable>.attr0
	strh	r2, [r0, r3]	@ movhi 	@  <variable>.attr2
	ldmia	r7, {r2-r3}	@  shadowOAM
	stmia	r6, {r2-r3}
	b	.L32
.L34:
	mov	r3, #7
.L33:
	mov	r2, #512	@ movhi
	str	r3, [sl, #0]	@  state
	strh	r2, [r6, #0]	@ movhi 	@  <variable>.attr0
.L22:
	ldmea	fp, {r4, r5, r6, r7, r8, sl, fp, sp, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	initialize
	.word	shadowOAM
	.word	oldButtons
	.word	buttons
	.word	state
	.size	splash, .-splash
	.align	2
	.global	game
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r0, .L110
	ldr	r3, [r0, #0]	@  state
	cmp	r3, #1
	sub	fp, ip, #4
	beq	.L100
.L95:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L100:
	ldr	r6, .L110+4
	ldr	sl, .L110+8
	ldr	r8, .L110+12
	ldr	r7, .L110+16
	mov	r9, #67108864
.L93:
	ldr	r4, .L110+20
	ldr	r5, .L110+24
	ldr	r1, [r4, #0]	@  hOff
	ldr	r3, [sl, #4]	@  player.col
	ldr	r0, [r5, #0]	@  CharAniCounter
	ldr	r4, .L110+28
	ldr	r5, .L110+32
	ldr	r2, [sl, #0]	@  player.row
	ldr	ip, [r8, #0]	@  vOff
	add	r3, r3, r1
	ldr	r1, .L110+28
	ldr	lr, [r4, #0]	@  CharAniState
	add	r2, r2, ip
	ldr	r4, [r5, #0]	@  buttons
	ldr	r5, [r9, #304]
	str	r3, [sl, #28]	@  player.bigCol
	mov	r3, #8
	cmp	r0, #20
	str	r2, [sl, #24]	@  player.bigRow
	ldr	r0, .L110+36
	str	r3, [r1, #0]	@  CharAniState
	ldr	r2, .L110+40
	ldr	r3, .L110+32
	str	lr, [r0, #0]	@  CharPrevAniState
	str	r4, [r2, #0]	@  oldButtons
	str	r5, [r3, #0]	@  buttons
	ble	.L41
	ldr	r4, .L110+44
	ldr	r3, [r4, #0]	@  frame
	add	r3, r3, #1
	add	r2, r3, r3, lsr #31
	bic	r2, r2, #1
	ldr	r5, .L110+24
	rsb	r3, r2, r3
	mov	r2, #0
	str	r3, [r4, #0]	@  frame
	str	r2, [r5, #0]	@  CharAniCounter
.L41:
	ldr	r3, [r9, #304]
	ldr	lr, .L110+48
	mvn	r3, r3
	ldr	r1, .L110+52
	tst	r3, #64
	ldr	r0, .L110+56
	mov	r3, #200
	str	r3, [lr, #0]	@  colliding
	mov	r2, #0
	mvnne	r3, #0
	str	r2, [r0, #0]	@  nextCol
	str	r2, [r1, #0]	@  nextRow
	strne	r3, [r1, #0]	@  nextRow
	ldr	r3, [r9, #304]
	mvn	r3, r3
	tst	r3, #128
	mov	r4, r1
	movne	r3, #1
	strne	r3, [r4, #0]	@  nextRow
	ldr	r3, [r9, #304]
	mvn	r3, r3
	tst	r3, #32
	mov	r2, r0
	mvnne	r3, #0
	strne	r3, [r2, #0]	@  nextCol
	ldr	r3, [r9, #304]
	mvn	r3, r3
	tst	r3, #16
	movne	r3, #1
	strne	r3, [r2, #0]	@  nextCol
	ldr	r2, .L110+60
	mov	lr, pc
	bx	r2
	ldr	r3, .L110+64
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #0]	@  nextRow
	cmn	r3, #1
	beq	.L101
.L46:
	ldr	r1, .L110+52
	ldr	r3, [r1, #0]	@  nextRow
	cmp	r3, #1
	beq	.L102
.L50:
	ldr	lr, .L110+56
	ldr	r3, [lr, #0]	@  nextCol
	cmn	r3, #1
	beq	.L103
.L55:
	ldr	r5, .L110+56
	ldr	r3, [r5, #0]	@  nextCol
	cmp	r3, #1
	beq	.L104
.L59:
	ldr	r2, .L110+40
	ldr	r3, [r2, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #256
	bne	.L63
	ldr	r4, .L110+32
	ldr	r3, [r4, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #256
	beq	.L63
	ldr	r2, .L110+68
	ldr	r3, [r2, #0]	@  itemCursorState
	cmp	r3, #1
	addle	r3, r3, #1
	strle	r3, [r2, #0]	@  itemCursorState
.L63:
	ldr	r5, .L110+40
	ldr	r3, [r5, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #512
	bne	.L65
	ldr	lr, .L110+32
	ldr	r3, [lr, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #512
	beq	.L65
	ldr	r2, .L110+68
	ldr	r3, [r2, #0]	@  itemCursorState
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r2, #0]	@  itemCursorState
.L65:
	ldr	r0, .L110+40
	ldr	r3, [r0, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #2
	bne	.L67
	ldr	r1, .L110+32
	ldr	r3, [r1, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #2
	beq	.L67
	ldr	r5, .L110+68
	ldr	r3, [r5, #0]	@  itemCursorState
	cmp	r3, #0
	bne	.L68
	ldr	r3, [sl, #36]	@  player.carriedWood
	cmp	r3, #4
	ble	.L68
	ldr	r4, .L110+72
	ldr	r3, [r4, #0]	@  barrierCounter
	cmp	r3, #4
	ble	.L105
.L68:
	ldr	r3, [r5, #0]	@  itemCursorState
	cmp	r3, #1
	beq	.L106
.L69:
	ldr	r1, [r5, #0]	@  itemCursorState
	cmp	r1, #2
	beq	.L107
.L67:
	ldr	r0, .L110+40
	ldr	r3, [r0, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #8
	bne	.L74
	ldr	r1, .L110+32
	ldr	r3, [r1, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #8
	ldrne	r2, .L110
	movne	r3, #4
	strne	r3, [r2, #0]	@  state
.L74:
	ldr	r4, .L110+28
	ldr	r3, [r4, #0]	@  CharAniState
	cmp	r3, #8
	ldreq	r5, .L110+36
	ldrne	r0, .L110+24
	ldreq	r3, [r5, #0]	@  CharPrevAniState
	ldreq	lr, .L110+44
	ldrne	r3, [r0, #0]	@  CharAniCounter
	moveq	r2, #0
	streq	r3, [r4, #0]	@  CharAniState
	streq	r2, [lr, #0]	@  frame
	ldr	r1, .L110+44
	ldr	r4, .L110+28
	addne	r3, r3, #1
	strne	r3, [r0, #0]	@  CharAniCounter
	ldr	r2, [r4, #0]	@  CharAniState
	ldr	r3, [r1, #0]	@  frame
	ldrb	ip, [sl, #0]	@ zero_extendqisi2	@  player.row
	add	r2, r2, r3, asl #5
	ldrh	r1, [sl, #4]	@  player.col
	mov	r2, r2, asl #1
	mov	r3, #1016
	bic	r1, r1, #65024
	add	r2, r2, #128
	mov	r0, #1016
	orr	ip, ip, #8192
	orr	r1, r1, #16384
	orr	r2, r2, #2048
	add	r0, r0, #2
	strh	ip, [r6, r3]	@ movhi 	@  <variable>.attr0
	mov	r3, #1020
	strh	r1, [r6, r0]	@ movhi 	@  <variable>.attr1
	strh	r2, [r6, r3]	@ movhi 	@  <variable>.attr2
	mov	lr, #0	@  i
.L86:
	mov	r3, lr, asl #5	@  i
	ldrh	r2, [r3, r7]	@  <variable>.row
	add	r3, r3, r7
	ldrh	r0, [r3, #4]	@  <variable>.col
	ldr	ip, [r3, #28]	@  <variable>.treeState
	ldrh	r1, [r8, #0]	@  vOff
	mov	r3, lr, asl #3	@  i
	bic	r0, r0, #65024
	orr	r0, r0, #32768
	cmp	ip, #0
	rsb	r2, r1, r2
	add	r1, r3, r6
	mov	r4, #2048
	strh	r0, [r1, #2]	@ movhi 	@  <variable>.attr1
	moveq	r0, #2048	@ movhi
	streqh	r0, [r1, #4]	@ movhi 	@  <variable>.attr2
	mov	r5, r4
	cmp	ip, #1
	add	r4, r4, #4
	streqh	r4, [r1, #4]	@ movhi 	@  <variable>.attr2
	and	r2, r2, #255
	cmp	ip, #2
	add	lr, lr, #1	@  i,  i
	add	r5, r5, #8
	orr	r2, r2, #40960
	streqh	r5, [r1, #4]	@ movhi 	@  <variable>.attr2
	cmp	lr, #82	@  i
	strh	r2, [r3, r6]	@ movhi 	@  <variable>.attr0
	ble	.L86
	ldr	r1, .L110+76
	ldr	r4, .L110+80
	ldr	r5, .L110+84
	mov	lr, pc
	bx	r1
	ldr	r2, .L110+88
	mov	lr, pc
	bx	r2
	ldr	r3, [r4, #0]	@  bombAniCounter
	ldr	r2, [r5, #0]	@  timerCounter
	add	r3, r3, #1
	add	r2, r2, #1
	str	r3, [r4, #0]	@  bombAniCounter
	ldr	r0, .L110+92
	str	r2, [r5, #0]	@  timerCounter
	mov	lr, pc
	bx	r0
	ldr	r1, .L110+96
	mov	lr, pc
	bx	r1
	ldr	r5, .L110+100
	ldr	r2, .L110+104
	mov	lr, pc
	bx	r2
	ldr	r3, .L110+108
	mov	lr, pc
	bx	r3
	ldmia	r5, {r4-r5}	@  shadowOAM
	mov	r3, #117440512
	add	r3, r3, #1016
	stmia	r3, {r4-r5}
	ldr	r1, .L110+112
	mov	r2, #117440512
	ldmia	r1, {r0-r1}	@  shadowOAM
	add	r2, r2, #1008
	stmia	r2, {r0-r1}
	ldr	r5, .L110+116
	mov	r3, #117440512
	ldmia	r5, {r4-r5}	@  shadowOAM
	add	r3, r3, #1000
	mov	r2, #117440512
	stmia	r3, {r4-r5}
	add	r2, r2, #664
	mov	r3, r6
	mov	lr, #82	@  i
.L91:
	ldmia	r3!, {r0-r1}	@  shadowOAM
	subs	lr, lr, #1	@  i,  i
	stmia	r2, {r0-r1}
	sub	r2, r2, #8
	bpl	.L91
	ldr	r1, .L110+120
	ldr	r3, [r1, #0]	@  totalWoodCollected
	cmp	r3, #78
	ldrgt	r5, .L110
	movgt	r3, #3
	strgt	r3, [r5, #0]	@  state
	ldr	lr, .L110
	ldr	r4, .L110+20
	ldr	r3, [lr, #0]	@  state
	ldrh	r2, [r4, #0]	@  hOff
	ldrh	r1, [r8, #0]	@  vOff
	cmp	r3, #1
	strh	r2, [r9, #20]	@ movhi 
	strh	r1, [r9, #22]	@ movhi 
	beq	.L93
	b	.L95
.L107:
	ldr	r2, [sl, #36]	@  player.carriedWood
	cmp	r2, #39
	ble	.L67
	ldr	r0, .L110+124
	ldr	r3, [r0, #0]	@  upgraded
	cmp	r3, #0
	subeq	r2, r2, #40
	moveq	r3, #1
	streq	r3, [r0, #0]	@  upgraded
	streq	r1, [sl, #32]	@  player.strength
	streq	r2, [sl, #36]	@  player.carriedWood
	b	.L67
.L106:
	ldr	r4, .L110+128
	ldr	r3, [r4, #0]	@  bombCounter
	cmp	r3, #4
	bgt	.L69
	ldr	r2, .L110+132
	ldr	r3, [r2, #0]	@  infiniteBombs
	cmp	r3, #0
	bne	.L70
	ldr	r3, [sl, #36]	@  player.carriedWood
	cmp	r3, #9
	bgt	.L108
.L70:
	ldr	lr, .L110+132
	ldr	r3, [lr, #0]	@  infiniteBombs
	cmp	r3, #1
	bne	.L69
	ldr	r2, .L110+136
	mov	lr, pc
	bx	r2
	ldr	r3, [r4, #0]	@  bombCounter
	add	r3, r3, #1
	str	r3, [r4, #0]	@  bombCounter
	b	.L69
.L108:
	ldr	r3, .L110+136
	mov	lr, pc
	bx	r3
	ldr	r2, [sl, #36]	@  player.carriedWood
	ldr	r3, [r4, #0]	@  bombCounter
	sub	r2, r2, #10
	add	r3, r3, #1
	str	r2, [sl, #36]	@  player.carriedWood
	str	r3, [r4, #0]	@  bombCounter
	b	.L70
.L105:
	ldr	r3, .L110+140
	mov	lr, pc
	bx	r3
	ldr	r2, [sl, #36]	@  player.carriedWood
	ldr	r3, [r4, #0]	@  barrierCounter
	sub	r2, r2, #5
	add	r3, r3, #1
	str	r3, [r4, #0]	@  barrierCounter
	str	r2, [sl, #36]	@  player.carriedWood
	b	.L68
.L104:
	ldr	lr, .L110+20
	ldr	r2, [lr, #0]	@  hOff
	ldr	r0, .L110+28
	mov	r3, #4
	cmn	r2, #1
	str	r3, [r0, #0]	@  CharAniState
	ble	.L109
.L60:
	ldr	r2, [sl, #4]	@  player.col
	cmp	r2, #225
	ldrle	r1, .L110+56
	ldrle	r3, [r1, #0]	@  nextCol
	addle	r3, r2, r3
	strle	r3, [sl, #4]	@  player.col
	b	.L59
.L109:
	ldr	r3, [sl, #4]	@  player.col
	cmp	r3, #220
	addgt	r3, r2, #1
	strgt	r3, [lr, #0]	@  hOff
	bgt	.L59
	b	.L60
.L103:
	ldr	r0, .L110+20
	ldr	r2, [r0, #0]	@  hOff
	ldr	r1, .L110+28
	mov	r3, #6
	cmp	r2, #0
	str	r3, [r1, #0]	@  CharAniState
	ble	.L56
	ldr	r3, [sl, #4]	@  player.col
	cmp	r3, #19
	suble	r3, r2, #1
	strle	r3, [r0, #0]	@  hOff
	ble	.L55
.L56:
	ldr	r2, [sl, #4]	@  player.col
	cmp	r2, #0
	ldrgt	r4, .L110+56
	ldrgt	r3, [r4, #0]	@  nextCol
	addgt	r3, r2, r3
	strgt	r3, [sl, #4]	@  player.col
	b	.L55
.L102:
	ldr	r3, [sl, #24]	@  player.bigRow
	ldr	r2, [sl, #12]	@  player.height
	add	r3, r3, r2
	cmp	r3, #239
	bgt	.L50
	ldr	r2, [r8, #0]	@  vOff
	ldr	r4, .L110+28
	mov	r3, #0
	cmp	r2, #95
	str	r3, [r4, #0]	@  CharAniState
	bgt	.L52
	ldr	r3, [sl, #0]	@  player.row
	cmp	r3, #100
	addgt	r3, r2, #1
	strgt	r3, [r8, #0]	@  vOff
	bgt	.L50
.L52:
	ldr	r2, [sl, #0]	@  player.row
	cmp	r2, #145
	ldrle	r5, .L110+52
	ldrle	r3, [r5, #0]	@  nextRow
	addle	r3, r2, r3
	strle	r3, [sl, #0]	@  player.row
	b	.L50
.L101:
	ldr	r4, .L110+12
	ldr	r2, [r4, #0]	@  vOff
	ldr	r5, .L110+28
	mov	r3, #2
	cmp	r2, #0
	str	r3, [r5, #0]	@  CharAniState
	ble	.L47
	ldr	lr, .L110+8
	ldr	r3, [lr, #0]	@  player.row
	cmp	r3, #19
	suble	r3, r2, #1
	strle	r3, [r4, #0]	@  vOff
	ble	.L46
.L47:
	ldr	r2, [sl, #0]	@  player.row
	cmp	r2, #0
	ldrgt	r0, .L110+52
	ldrgt	r3, [r0, #0]	@  nextRow
	addgt	r3, r2, r3
	strgt	r3, [sl, #0]	@  player.row
	b	.L46
.L111:
	.align	2
.L110:
	.word	state
	.word	shadowOAM
	.word	player
	.word	vOff
	.word	theTrees
	.word	hOff
	.word	CharAniCounter
	.word	CharAniState
	.word	buttons
	.word	CharPrevAniState
	.word	oldButtons
	.word	frame
	.word	colliding
	.word	nextRow
	.word	nextCol
	.word	checkTreeCollision
	.word	checkBarrierCollision
	.word	itemCursorState
	.word	barrierCounter
	.word	updateNumbers
	.word	bombAniCounter
	.word	timerCounter
	.word	waitForVblank
	.word	updateTimer
	.word	updateBombs
	.word	shadowOAM+1016
	.word	updateCursor
	.word	updateBarriers
	.word	shadowOAM+1008
	.word	shadowOAM+1000
	.word	totalWoodCollected
	.word	upgraded
	.word	bombCounter
	.word	infiniteBombs
	.word	placeBomb
	.word	placeBarrier
	.size	game, .-game
	.align	2
	.global	win
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	mov	r3, #67108864
	ldr	r1, .L114
	ldr	r0, [r3, #304]
	mov	r2, #976
	mvn	r3, #32512
	add	r2, r2, #2
	sub	r3, r3, #159
	strh	r3, [r1, r2]	@ movhi 	@  <variable>.attr1
	mov	r3, #976
	mov	r2, #8256	@ movhi
	strh	r2, [r1, r3]	@ movhi 	@  <variable>.attr0
	mov	r2, #980
	mov	r3, #524	@ movhi
	strh	r3, [r1, r2]	@ movhi 	@  <variable>.attr2
	add	r1, r1, #976
	ldmia	r1, {r2-r3}	@  shadowOAM
	mvn	r0, r0
	mov	ip, #117440512
	tst	r0, #4
	add	ip, ip, #976
	stmia	ip, {r2-r3}
	ldrne	r3, .L114+4
	movne	r2, #0
	strne	r2, [r3, #0]	@  state
	movne	r3, #512	@ movhi
	@ lr needed for prologue
	strneh	r3, [ip, #0]	@ movhi 	@  <variable>.attr0
	ldmfd	sp!, {r4}
	bx	lr
.L115:
	.align	2
.L114:
	.word	shadowOAM
	.word	state
	.size	win, .-win
	.align	2
	.global	pause
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L125
	mov	r2, #976
	mvn	r3, #32512
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	add	r2, r2, #2
	sub	r3, r3, #159
	strh	r3, [r1, r2]	@ movhi 	@  <variable>.attr1
	mov	r3, #976
	mov	r2, #8256	@ movhi
	strh	r2, [r1, r3]	@ movhi 	@  <variable>.attr0
	ldr	lr, .L125+4
	mov	r2, #980
	mov	r3, #396	@ movhi
	strh	r3, [r1, r2]	@ movhi 	@  <variable>.attr2
	ldr	r0, [lr, #0]	@  state
	add	r1, r1, #976
	mov	ip, #117440512
	ldmia	r1, {r2-r3}	@  shadowOAM
	add	ip, ip, #976
	cmp	r0, #4
	stmia	ip, {r2-r3}
	mov	r6, lr
	beq	.L124
.L123:
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L124:
	ldr	r5, .L125+8
	ldr	r4, .L125+12
	mov	r8, ip
	mov	r7, #1
	mov	ip, #67108864
.L121:
	ldr	r1, [r4, #0]	@  buttons
	ldr	r3, [ip, #304]
	mvn	r2, r1
	tst	r2, #8
	mvn	r0, r3
	str	r1, [r5, #0]	@  oldButtons
	str	r3, [r4, #0]	@  buttons
	bne	.L117
	tst	r0, #8
	movne	r3, #512	@ movhi
	strne	r7, [r6, #0]	@  state
	strneh	r3, [r8, #0]	@ movhi 	@  <variable>.attr0
.L117:
	ldr	r3, [lr, #0]	@  state
	cmp	r3, #4
	ldr	r6, .L125+4
	beq	.L121
	b	.L123
.L126:
	.align	2
.L125:
	.word	shadowOAM
	.word	state
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	help
	.type	help, %function
help:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L136
	ldr	r3, [ip, #0]	@  state
	cmp	r3, #5
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r6, ip
	beq	.L135
.L134:
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
.L135:
	ldr	r5, .L136+4
	ldr	lr, .L136+8
	mov	r4, #67108864
.L132:
	ldr	r3, [lr, #0]	@  buttons
	ldr	r1, [r4, #304]
	mvn	r2, r3
	ands	r2, r2, #4
	mvn	r0, r1
	str	r3, [r5, #0]	@  oldButtons
	str	r1, [lr, #0]	@  buttons
	bne	.L128
	tst	r0, #4
	strne	r2, [r6, #0]	@  state
.L128:
	ldr	r3, [ip, #0]	@  state
	cmp	r3, #5
	ldr	r6, .L136
	beq	.L132
	b	.L134
.L137:
	.align	2
.L136:
	.word	state
	.word	oldButtons
	.word	buttons
	.size	help, .-help
	.align	2
	.global	lose
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r5, .L147
	ldr	r3, [r5, #0]	@  state
	cmp	r3, #6
	beq	.L146
.L145:
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L146:
	ldr	r3, .L147+4
	ldr	r0, .L147+8
	mov	r2, #976
	mov	ip, #117440512
	mvn	r4, #32512
	mov	lr, #260
	ldr	r6, [r3, #0]	@  dma
	ldr	r9, .L147+12
	add	sl, r0, #976
	add	r8, r2, #2
	add	ip, ip, r2
	mov	r1, #0
	sub	r4, r4, #159
	mov	r7, #980
	add	lr, lr, #67108866
.L143:
	mov	r2, #8256	@ movhi
	mov	r3, #976
	strh	r2, [r0, r3]	@ movhi 	@  <variable>.attr0
	mov	r3, #652	@ movhi
	strh	r4, [r0, r8]	@ movhi 	@  <variable>.attr1
	strh	r3, [r0, r7]	@ movhi 	@  <variable>.attr2
	ldmia	sl, {r2-r3}	@  shadowOAM
	str	r1, [r6, #32]	@  <variable>.cnt
	stmia	ip, {r2-r3}
	str	r1, [r9, #0]	@  soundBPlaying
	strh	r1, [lr, #0]	@ movhi 
	mov	r2, #67108864
	ldr	r3, [r2, #304]
	mvn	r3, r3
	tst	r3, #4
	ldrne	r3, .L147
	strne	r1, [r3, #0]	@  state
	ldr	r3, [r5, #0]	@  state
	movne	r2, #512	@ movhi
	strneh	r2, [ip, #0]	@ movhi 	@  <variable>.attr0
	cmp	r3, #6
	beq	.L143
	b	.L145
.L148:
	.align	2
.L147:
	.word	state
	.word	dma
	.word	shadowOAM
	.word	soundBPlaying
	.size	lose, .-lose
	.align	2
	.global	updateCursor
	.type	updateCursor, %function
updateCursor:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r4, [sp, #-4]!
	ldr	r2, .L150
	ldr	r3, [r2, #0]	@  itemCursorState
	add	r3, r3, r3, asl #2
	mov	r3, r3, asl #2
	add	r3, r3, #67
	ldr	r0, .L150+4
	mov	ip, #984
	bic	r3, r3, #65024
	mov	r2, #8320
	add	r1, ip, #2
	orr	r3, r3, #16384
	add	r2, r2, #19
	strh	r3, [r0, r1]	@ movhi 	@  <variable>.attr1
	strh	r2, [r0, ip]	@ movhi 	@  <variable>.attr0
	mov	r3, #988
	mov	r2, #256	@ movhi
	strh	r2, [r0, r3]	@ movhi 	@  <variable>.attr2
	add	r0, r0, ip
	mov	r1, #117440512
	ldmia	r0, {r3-r4}	@  shadowOAM
	add	r1, r1, ip
	@ lr needed for prologue
	stmia	r1, {r3-r4}
	ldmfd	sp!, {r4}
	bx	lr
.L151:
	.align	2
.L150:
	.word	itemCursorState
	.word	shadowOAM
	.size	updateCursor, .-updateCursor
	.align	2
	.global	checkTreeCollision
	.type	checkTreeCollision, %function
checkTreeCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r5, .L175
	sub	fp, ip, #4
	mov	r9, #82	@  i
.L169:
	ldr	r3, [r5, #28]	@  <variable>.treeState
	cmp	r3, #2
	beq	.L155
	ldr	sl, .L175+4
	ldr	r2, .L175+8
	ldr	r0, [r5, #0]	@  <variable>.row
	ldr	r3, [r5, #24]	@  <variable>.height
	ldr	r4, [sl, #24]	@  player.bigRow
	ldr	r6, [r2, #0]	@  nextRow
	add	r7, r0, r3
	add	r1, r4, r6
	cmp	r7, r1
	blt	.L155
	ldr	r3, .L175+12
	ldr	r8, [r5, #4]	@  <variable>.col
	ldr	r2, [r5, #20]	@  <variable>.width
	ldr	ip, [sl, #28]	@  player.bigCol
	ldr	lr, [r3, #0]	@  nextCol
	add	r2, r8, r2
	add	r3, ip, lr
	cmp	r2, r3
	blt	.L155
	ldr	r2, [sl, #12]	@  player.height
	add	r3, r1, r2
	cmp	r0, r3
	bgt	.L155
	ldr	r3, [sl, #8]	@  player.width
	add	r3, ip, r3
	add	r3, r3, lr
	cmp	r8, r3
	bgt	.L155
	add	r3, r4, r2
	add	r3, r3, r6
	cmp	r3, r0
	beq	.L160
	cmp	r1, r7
	beq	.L160
.L159:
	ldr	r1, [sl, #28]	@  player.bigCol
	ldr	r3, [sl, #8]	@  player.width
	ldr	r2, [r5, #4]	@  <variable>.col
	add	r3, r1, r3
	cmp	r3, r2
	beq	.L162
	ldr	r3, [r5, #20]	@  <variable>.width
	add	r3, r2, r3
	cmp	r1, r3
	beq	.L162
.L161:
	ldr	r2, .L175+16
	ldr	r3, [r2, #0]	@  oldButtons
	mvn	r3, r3
	ands	r1, r3, #1
	bne	.L163
	ldr	r2, .L175+20
	ldr	r3, [r2, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #1
	bne	.L172
.L163:
	ldr	r2, [sl, #32]	@  player.strength
	cmp	r2, #1
	beq	.L173
.L164:
	ldr	r3, [sl, #32]	@  player.strength
	cmp	r3, #2
	beq	.L174
.L166:
	ldr	r3, [r5, #16]	@  <variable>.life
	cmp	r3, #0
	bne	.L155
	ldr	r1, .L175+24
	ldr	r3, [sl, #36]	@  player.carriedWood
	ldr	r2, [r1, #0]	@  totalWoodCollected
	add	r3, r3, #1
	add	r2, r2, #1
	str	r3, [sl, #36]	@  player.carriedWood
	mov	r3, #2
	str	r2, [r1, #0]	@  totalWoodCollected
	str	r3, [r5, #28]	@  <variable>.treeState
.L155:
	subs	r9, r9, #1	@  i,  i
	add	r5, r5, #32
	bpl	.L169
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L174:
	ldr	r3, [r5, #16]	@  <variable>.life
	cmp	r3, #4
	moveq	r3, #1
	streq	r3, [r5, #28]	@  <variable>.treeState
	b	.L166
.L173:
	ldr	r3, [r5, #16]	@  <variable>.life
	cmp	r3, #5
	streq	r2, [r5, #28]	@  <variable>.treeState
	b	.L164
.L172:
	ldr	ip, [r5, #16]	@  <variable>.life
	ldr	r3, [sl, #32]	@  player.strength
	mov	r2, #11008
	rsb	ip, r3, ip
	ldr	r0, .L175+28
	mov	r3, r1
	add	r2, r2, #17
	mov	r1, #3744
	str	ip, [r5, #16]	@  <variable>.life
	ldr	r4, .L175+32
	mov	lr, pc
	bx	r4
	b	.L163
.L162:
	ldr	r2, .L175+12
	mov	r3, #0
	str	r3, [r2, #0]	@  nextCol
	b	.L161
.L160:
	ldr	r2, .L175+8
	mov	r3, #0
	str	r3, [r2, #0]	@  nextRow
	b	.L159
.L176:
	.align	2
.L175:
	.word	theTrees
	.word	player
	.word	nextRow
	.word	nextCol
	.word	oldButtons
	.word	buttons
	.word	totalWoodCollected
	.word	chop
	.word	playSoundA
	.size	checkTreeCollision, .-checkTreeCollision
	.align	2
	.global	setupTrees
	.type	setupTrees, %function
setupTrees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	ldr	r3, .L187
	ldr	r2, .L187+4
	ldr	r3, [r3, #0]	@  impossibleMode
	sub	fp, ip, #4
	mov	r0, #0	@  i
	mov	r4, #10
	mov	r5, #20
	mov	lr, #16
	mov	ip, #32
	mov	r1, #82	@  i
.L184:
	cmp	r3, #0
	streq	r4, [r2, #16]	@  <variable>.life
	cmp	r3, #1
	streq	r5, [r2, #16]	@  <variable>.life
	subs	r1, r1, #1	@  i,  i
	str	r0, [r2, #8]	@  i,  <variable>.bigRow
	str	r0, [r2, #12]	@  i,  <variable>.bigCol
	str	lr, [r2, #20]	@  <variable>.width
	str	ip, [r2, #24]	@  <variable>.height
	str	r0, [r2, #28]	@  i,  <variable>.treeState
	add	r2, r2, #32
	bpl	.L184
	ldr	r3, .L187+8
	mov	lr, pc
	bx	r3
	ldr	r2, .L187+12
	mov	lr, pc
	bx	r2
	ldmea	fp, {r4, r5, fp, sp, lr}
	bx	lr
.L188:
	.align	2
.L187:
	.word	impossibleMode
	.word	theTrees
	.word	setupBorderTrees
	.word	setupMiddleTrees
	.size	setupTrees, .-setupTrees
	.section	.rodata
	.align	2
.LC0:
	.word	3
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	14
	.word	3
	.word	4
	.word	5
	.word	6
	.word	8
	.word	9
	.word	10
	.word	11
	.word	13
	.word	14
	.text
	.align	2
	.global	setupBorderTrees
	.type	setupBorderTrees, %function
setupBorderTrees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #120
	ldr	r1, .L199
	sub	r0, fp, #136
	mov	r2, #120
	ldr	r3, .L199+4
	ldr	r4, .L199+8
	mov	lr, pc
	bx	r3
	mov	r1, #0	@  i
	mov	r0, r1	@  col,  i
	sub	lr, fp, #16
	mov	ip, r4
.L196:
	ldr	r3, [lr, #-120]	@  borderRows
	cmp	r3, #14
	mov	r2, r3, asl #4
	sub	r2, r2, #16
	mov	r3, r0, asl #4	@  col
	addeq	r0, r0, #1	@  col,  col
	cmp	r0, #13	@  col
	str	r2, [r4, r1, asl #5]	@  <variable>.row
	add	r1, r1, #1	@  i,  i
	addeq	r0, r0, #1	@  col,  col
	cmp	r1, #29	@  i
	str	r3, [ip, #4]	@  <variable>.col
	add	lr, lr, #4
	add	ip, ip, #32
	ble	.L196
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L200:
	.align	2
.L199:
	.word	.LC0
	.word	memcpy
	.word	theTrees
	.size	setupBorderTrees, .-setupBorderTrees
	.section	.rodata
	.align	2
.LC1:
	.word	1
	.word	2
	.word	4
	.word	5
	.word	8
	.word	9
	.word	2
	.word	4
	.word	5
	.word	9
	.word	0
	.word	1
	.word	2
	.word	5
	.word	8
	.word	9
	.word	0
	.word	2
	.word	0
	.word	1
	.word	2
	.word	5
	.word	7
	.word	8
	.word	9
	.word	1
	.word	2
	.word	5
	.word	7
	.word	8
	.word	9
	.word	2
	.word	4
	.word	5
	.word	0
	.word	1
	.word	2
	.word	4
	.word	5
	.word	7
	.word	8
	.word	0
	.word	1
	.word	2
	.word	4
	.word	8
	.word	9
	.word	0
	.word	1
	.word	5
	.word	7
	.word	8
	.word	9
	.text
	.align	2
	.global	setupMiddleTrees
	.type	setupMiddleTrees, %function
setupMiddleTrees:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 212
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #212
	sub	r0, fp, #232
	ldr	r1, .L213
	mov	r2, #212
	ldr	r3, .L213+4
	ldr	r5, .L213+8
	mov	lr, pc
	bx	r3
	mov	lr, #0	@  i
	mov	ip, lr	@  col,  i
	add	r4, r5, #928
.L210:
	sub	r2, fp, #20
	add	r3, r2, lr, asl #2	@  i
	ldr	r0, [r3, #-212]	@  centerRows
	cmp	r0, #9
	mov	r2, ip, asl #4	@  col
	addeq	ip, ip, #1	@  col,  col
	cmp	r0, #2
	cmpeq	ip, #3	@  col
	addeq	ip, ip, #1	@  col,  col
	cmp	r0, #5
	cmpeq	ip, #6	@  col
	addeq	ip, ip, #1	@  col,  col
	add	r1, lr, #29	@  i
	cmp	r0, #8
	cmpeq	ip, #7	@  col
	mov	r3, r0, asl #4
	add	lr, lr, #1	@  i,  i
	add	r2, r2, #40
	add	r3, r3, #24
	addeq	ip, ip, #1	@  col,  col
	cmp	lr, #52	@  i
	str	r2, [r4, #4]	@  <variable>.col
	str	r3, [r5, r1, asl #5]	@  <variable>.row
	add	r4, r4, #32
	ble	.L210
	ldmea	fp, {r4, r5, fp, sp, lr}
	bx	lr
.L214:
	.align	2
.L213:
	.word	.LC1
	.word	memcpy
	.word	theTrees
	.size	setupMiddleTrees, .-setupMiddleTrees
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, fp, ip, lr, pc}
	mov	r2, #117440512
	sub	fp, ip, #4
	mov	r3, #127	@  i
.L220:
	mov	r1, #512	@ movhi
	subs	r3, r3, #1	@  i,  i
	strh	r1, [r2, #0]	@ movhi 	@  <variable>.attr0
	add	r2, r2, #8
	bpl	.L220
	ldr	r3, .L225
	ldr	r4, [r3, #0]	@  superStrength
	ldr	ip, .L225+4
	ldr	r3, .L225+8
	mov	lr, #0
	mov	r0, #1
	cmp	r4, #0
	streq	r0, [ip, #32]	@  player.strength
	str	lr, [r3, #0]	@  totalWoodCollected
	cmp	r4, #1
	mov	r3, #112
	str	r3, [ip, #4]	@  player.col
	mov	r1, #16
	moveq	r3, #5
	mov	r2, #88
	str	r2, [ip, #0]	@  player.row
	str	r1, [ip, #12]	@  player.height
	str	r1, [ip, #8]	@  player.width
	streq	r3, [ip, #32]	@  player.strength
	str	r0, [ip, #16]	@  player.rvel
	str	r0, [ip, #20]	@  player.cvel
	str	lr, [ip, #24]	@  player.bigRow
	str	lr, [ip, #28]	@  player.bigCol
	mov	r3, #67108864
	mov	r2, #10
	ldr	r0, [r3, #304]
	str	r2, [ip, #36]	@  player.carriedWood
	ldr	r3, .L225+12
	ldr	r2, .L225+16
	mov	r1, #50
	str	r1, [r3, #0]	@  actualTimer
	str	lr, [r2, #0]	@  vOff
	ldr	r3, .L225+20
	ldr	r2, .L225+24
	str	r0, [r3, #0]	@  buttons
	str	lr, [r2, #0]	@  barrierCounter
	ldr	r3, .L225+28
	ldr	r2, .L225+32
	str	lr, [r3, #0]	@  bombCounter
	str	lr, [r2, #0]	@  bombAniCounter
	ldr	r3, .L225+36
	ldr	r2, .L225+40
	str	lr, [r3, #0]	@  timerCounter
	str	lr, [r2, #0]	@  hOff
	bl	setupTrees
	ldr	r3, .L225+44
	mov	lr, pc
	bx	r3
	ldr	r2, .L225+48
	mov	lr, pc
	bx	r2
	ldmea	fp, {r4, fp, sp, lr}
	bx	lr
.L226:
	.align	2
.L225:
	.word	superStrength
	.word	player
	.word	totalWoodCollected
	.word	actualTimer
	.word	vOff
	.word	buttons
	.word	barrierCounter
	.word	bombCounter
	.word	bombAniCounter
	.word	timerCounter
	.word	hOff
	.word	setupBarriers
	.word	setupBombs
	.size	initialize, .-initialize
	.align	2
	.global	updateNumbers
	.type	updateNumbers, %function
updateNumbers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L228
	ldr	r2, .L228+4
	ldr	r0, [r3, #36]	@  player.carriedWood
	smull	r3, ip, r2, r0
	mov	r1, r0, asr #31
	rsb	r1, r1, ip, asr #2	@  leftnum
	add	r3, r1, r1, asl #2	@  leftnum,  leftnum
	ldr	ip, .L228+8
	sub	r0, r0, r3, asl #1	@  rightnum
	mov	r8, #1008
	mov	r2, #16384
	mov	r7, #1000
	add	r5, r2, #165
	mov	r1, r1, asl #6	@  leftnum
	add	r2, r2, #160
	mov	r0, r0, asl #6	@  rightnum
	mov	lr, #8320
	add	r4, r8, #2
	add	lr, lr, #16
	strh	r2, [ip, r4]	@ movhi 	@  <variable>.attr1
	add	r1, r1, #320
	add	r6, r7, #2
	add	r0, r0, #320
	mov	r3, #1012
	mov	r2, #1004
	strh	r1, [ip, r3]	@ movhi 	@  <variable>.attr2
	strh	lr, [ip, r8]	@ movhi 	@  <variable>.attr0
	strh	r0, [ip, r2]	@ movhi 	@  <variable>.attr2
	strh	r5, [ip, r6]	@ movhi 	@  <variable>.attr1
	strh	lr, [ip, r7]	@ movhi 	@  <variable>.attr0
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L229:
	.align	2
.L228:
	.word	player
	.word	1717986919
	.word	shadowOAM
	.size	updateNumbers, .-updateNumbers
	.align	2
	.global	placeBomb
	.type	placeBomb, %function
placeBomb:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	mov	r5, #0	@  i
	ldr	r6, .L239
	ldr	sl, .L239+4
	ldr	r8, .L239+8
	mov	r2, r5	@  bombSelected,  i
	mov	lr, r5	@  i,  bombSelected
	mov	r7, #1	@  bombSelected
	mov	r5, #4	@  i
.L236:
	add	ip, lr, r6	@  i
	ldr	r3, [ip, #24]	@  <variable>.placed
	mov	r4, #2368
	orrs	r3, r3, r2	@  bombSelected
	add	r4, r4, #4
	bne	.L233
	ldr	r3, [sl, #4]	@  player.col
	ldr	r2, [sl, #24]	@  player.bigRow
	sub	r3, r3, #8
	sub	r2, r2, #8
	str	r3, [ip, #4]	@  <variable>.col
	str	r2, [lr, r6]	@  <variable>.row
	ldrh	r1, [ip, #4]	@  <variable>.col
	ldr	r3, [ip, #20]	@  <variable>.OAMnum
	ldrb	r2, [lr, r6]	@ zero_extendqisi2	@  <variable>.row
	mov	r3, r3, asl #3
	bic	r1, r1, #65024
	add	r0, r3, r8
	orr	r2, r2, #8192
	orr	r1, r1, #32768
	strh	r2, [r3, r8]	@ movhi 	@  <variable>.attr0
	strh	r1, [r0, #2]	@ movhi 	@  <variable>.attr1
	strh	r4, [r0, #4]	@ movhi 	@  <variable>.attr2
	add	r1, r3, #117440512
	ldmia	r0, {r3-r4}	@  shadowOAM
	stmia	r1, {r3-r4}
	str	r7, [ip, #24]	@  bombSelected,  <variable>.placed
	mov	r2, r7	@  bombSelected,  bombSelected
.L233:
	subs	r5, r5, #1	@  i,  i
	add	lr, lr, #28	@  i,  i
	bpl	.L236
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L240:
	.align	2
.L239:
	.word	theBombs
	.word	player
	.word	shadowOAM
	.size	placeBomb, .-placeBomb
	.align	2
	.global	updateBombs
	.type	updateBombs, %function
updateBombs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	mov	sl, #0	@  dontUpdate
	ldr	r4, .L259
	sub	fp, ip, #4
	mov	r7, sl	@  i,  dontUpdate
	mov	r6, #4	@  i
.L252:
	ldr	ip, [r4, #24]	@  updated,  <variable>.placed
	cmp	ip, #1	@  updated
	mov	r5, #0	@  updated
	beq	.L257
.L244:
	subs	r6, r6, #1	@  i,  i
	add	r7, r7, #28	@  i,  i
	add	r4, r4, #28
	bpl	.L252
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L257:
	ldr	r8, .L259+4
	ldr	r2, .L259+8
	ldr	r1, [r8, #0]	@  bombAniCounter
	smull	r3, r0, r2, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #5
	add	r3, r3, r3, asl #2
	add	r3, r3, r3, asl #2
	cmp	r1, r3, asl #2
	bne	.L256
	ldr	r3, [r4, #16]	@  <variable>.aniState
	cmp	r3, r5
	bne	.L256
	ldr	r9, .L259+12
	ldr	r2, [r4, #20]	@  <variable>.OAMnum
	mov	r3, #2496
	add	r2, r9, r2, asl #3
	add	r3, r3, #4
	mov	r5, ip	@  updated,  updated
	strh	r3, [r2, #4]	@ movhi 	@  <variable>.attr2
	str	ip, [r4, #16]	@  updated,  <variable>.aniState
.L247:
	ldr	r1, [r8, #0]	@  bombAniCounter
	ldr	r2, .L259+16
	smull	r3, r0, r2, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, asl #2
	cmp	r1, r3
	bne	.L249
	ldr	r3, [r4, #16]	@  <variable>.aniState
	cmp	r3, #1
	cmpeq	r5, #0	@  updated
	bne	.L248
	ldr	r3, [r4, #20]	@  <variable>.OAMnum
	mov	r2, #2624
	add	r3, r9, r3, asl #3
	add	r2, r2, #4
	mov	r1, #2
	strh	r2, [r3, #4]	@ movhi 	@  <variable>.attr2
	str	r1, [r4, #16]	@  <variable>.aniState
	mov	r5, #1	@  updated
.L248:
	ldr	r1, [r8, #0]	@  bombAniCounter
	ldr	r2, .L259+16
	smull	r3, r0, r2, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, asl #2
	cmp	r1, r3
	bne	.L249
	ldr	r3, [r4, #16]	@  <variable>.aniState
	cmp	r3, #2
	cmpeq	r5, #0	@  updated
	beq	.L258
.L249:
	ldr	r1, [r8, #0]	@  bombAniCounter
	ldr	r2, .L259+16
	smull	r3, r0, r2, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #1
	add	r3, r3, r3, asl #2
	subs	r0, r1, r3
	bne	.L250
	ldr	r3, [r4, #16]	@  <variable>.aniState
	cmp	r3, #4
	cmpeq	r5, #0	@  updated
	bne	.L250
	ldr	r1, .L259+20
	ldr	r2, [r4, #20]	@  <variable>.OAMnum
	ldr	r3, [r1, #0]	@  bombCounter
	mov	r2, r2, asl #3
	sub	r3, r3, #1
	str	r3, [r1, #0]	@  bombCounter
	add	r2, r2, #117440512
	mov	r1, #512	@ movhi
	mov	sl, #1	@  dontUpdate
	str	r0, [r4, #24]	@  <variable>.placed
	str	r0, [r4, #16]	@  <variable>.aniState
	strh	r1, [r2, #0]	@ movhi 	@  <variable>.attr0
	mov	r5, sl	@  updated,  dontUpdate
.L250:
	ldr	r3, .L259+24
	ldrh	r0, [r3, #0]	@  vOff
	ldr	r3, .L259
	ldrh	r2, [r7, r3]	@  <variable>.row
	ldr	ip, [r4, #20]	@  <variable>.OAMnum
	ldrh	r1, [r4, #4]	@  <variable>.col
	rsb	r2, r0, r2
	eor	r3, sl, #1	@  dontUpdate
	mov	ip, ip, asl #3
	cmp	r5, #0	@  updated
	movne	r3, #0
	andeq	r3, r3, #1
	and	r2, r2, #255
	bic	r1, r1, #65024
	orr	r2, r2, #8192
	orr	r1, r1, #32768
	add	r0, ip, r9
	cmp	r3, #0
	strh	r2, [ip, r9]	@ movhi 	@  <variable>.attr0
	strh	r1, [r0, #2]	@ movhi 	@  <variable>.attr1
	ldmneia	r0, {r1-r2}	@  shadowOAM
	addne	r3, ip, #117440512
	stmneia	r3, {r1-r2}
	b	.L244
.L258:
	ldr	r2, [r4, #20]	@  <variable>.OAMnum
	mov	r3, #2752
	add	r3, r3, #4
	add	r2, r9, r2, asl #3
	mov	r1, #4
	strh	r3, [r2, #4]	@ movhi 	@  <variable>.attr2
	str	r1, [r4, #16]	@  <variable>.aniState
	ldr	r3, .L259+28
	mov	r5, #1	@  updated
	mov	lr, pc
	bx	r3
	b	.L249
.L256:
	ldr	r9, .L259+12
	b	.L247
.L260:
	.align	2
.L259:
	.word	theBombs
	.word	bombAniCounter
	.word	1374389535
	.word	shadowOAM
	.word	1717986919
	.word	bombCounter
	.word	vOff
	.word	checkBombCollision
	.size	updateBombs, .-updateBombs
	.align	2
	.global	setupBombs
	.type	setupBombs, %function
setupBombs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	ip, #0	@  i
	ldr	r4, .L269
	mov	r0, ip	@  i,  i
	mov	lr, #32
	mov	r1, ip	@  i,  i
.L266:
	rsb	r2, ip, #116	@  i
	add	ip, ip, #1	@  i,  i
	add	r3, r1, r4	@  i
	cmp	ip, #4	@  i
	str	r0, [r1, r4]	@  i,  <variable>.row
	str	r2, [r3, #20]	@  <variable>.OAMnum
	str	r0, [r3, #24]	@  i,  <variable>.placed
	str	r0, [r3, #4]	@  i,  <variable>.col
	str	lr, [r3, #12]	@  <variable>.width
	str	lr, [r3, #8]	@  <variable>.height
	str	r0, [r3, #16]	@  i,  <variable>.aniState
	add	r1, r1, #28	@  i,  i
	ble	.L266
	ldmfd	sp!, {r4, lr}
	bx	lr
.L270:
	.align	2
.L269:
	.word	theBombs
	.size	setupBombs, .-setupBombs
	.align	2
	.global	checkBombCollision
	.type	checkBombCollision, %function
checkBombCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	mov	r8, #0	@  i
	ldr	r7, .L304
	mov	r5, r8	@  i,  i
.L282:
	ldr	r0, .L304+4
	mov	sl, r5	@  i,  i
	add	ip, r5, r7	@  i
	mov	r4, #0	@  k
	mov	lr, #4	@  k
.L281:
	ldr	r3, [ip, #24]	@  <variable>.placed
	cmp	r3, #1
	beq	.L302
.L278:
	subs	lr, lr, #1	@  k,  k
	add	r4, r4, #40	@  k,  k
	add	r0, r0, #40
	bpl	.L281
	add	r8, r8, #1	@  i,  i
	cmp	r8, #4	@  i
	add	r5, r5, #28	@  i,  i
	ble	.L282
	mov	r8, #0	@  i
	ldr	sl, .L304+8
	ldr	r9, .L304+12
	mov	r6, r8	@  i,  i
.L293:
	ldr	r0, .L304+16
	mov	lr, #0	@  k
	add	ip, r6, r7	@  i
.L292:
	ldr	r3, [ip, #24]	@  <variable>.placed
	cmp	r3, #1
	beq	.L303
.L289:
	add	lr, lr, #1	@  k,  k
	cmp	lr, #82	@  k
	add	r0, r0, #32
	ble	.L292
	add	r8, r8, #1	@  i,  i
	cmp	r8, #4	@  i
	add	r6, r6, #28	@  i,  i
	ble	.L293
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L303:
	ldr	r3, [r0, #28]	@  <variable>.treeState
	cmp	r3, #2
	beq	.L289
	ldr	r2, .L304+16
	ldr	r3, [r0, #24]	@  <variable>.height
	ldr	r1, [r2, lr, asl #5]	@  <variable>.row
	ldr	r2, [r6, r7]	@  <variable>.row
	add	r3, r1, r3
	cmp	r3, r2
	blt	.L289
	ldr	r5, [r0, #4]	@  <variable>.col
	ldr	r3, [r0, #20]	@  <variable>.width
	ldr	r4, [ip, #4]	@  <variable>.col
	add	r3, r5, r3
	cmp	r3, r4
	blt	.L289
	ldr	r3, [ip, #8]	@  <variable>.height
	add	r3, r2, r3
	cmp	r1, r3
	bgt	.L289
	ldr	r3, [ip, #12]	@  <variable>.width
	add	r3, r4, r3
	cmp	r5, r3
	bgt	.L289
	ldr	r3, [sl, #36]	@  player.carriedWood
	ldr	r1, [r9, #0]	@  totalWoodCollected
	add	r3, r3, #1
	add	r1, r1, #1
	mov	r2, #2
	str	r2, [r0, #28]	@  <variable>.treeState
	str	r3, [sl, #36]	@  player.carriedWood
	str	r1, [r9, #0]	@  totalWoodCollected
	b	.L289
.L302:
	ldr	r3, [r0, #28]	@  <variable>.placed
	cmp	r3, #1
	bne	.L278
	ldr	r3, .L304+4
	ldr	r2, [r0, #16]	@  <variable>.height
	ldr	r6, [r4, r3]	@  <variable>.row
	ldr	r1, [sl, r7]	@  <variable>.row
	add	r2, r6, r2
	cmp	r2, r1
	blt	.L278
	ldr	r9, [r0, #4]	@  <variable>.col
	ldr	r3, [r0, #20]	@  <variable>.width
	ldr	r2, [ip, #4]	@  <variable>.col
	add	r3, r9, r3
	cmp	r3, r2
	blt	.L278
	ldr	r3, [ip, #8]	@  <variable>.height
	add	r3, r1, r3
	cmp	r6, r3
	bgt	.L278
	ldr	r3, [ip, #12]	@  <variable>.width
	add	r3, r2, r3
	cmp	r9, r3
	bgt	.L278
	ldr	r1, .L304+20
	ldr	r6, .L304+24
	ldr	r2, [r1, #0]	@  barrierCounter
	ldr	r3, [r0, #32]	@  <variable>.OAMnum
	ldr	r1, [r6, #0]	@  actualTimer
	mov	r6, #0
	str	r6, [r0, #36]	@  <variable>.barrierState
	ldr	r6, .L304+20
	sub	r2, r2, #1
	mov	r3, r3, asl #3
	str	r2, [r6, #0]	@  barrierCounter
	add	r3, r3, #117440512
	mov	r2, #512	@ movhi
	strh	r2, [r3, #0]	@ movhi 	@  <variable>.attr0
	ldr	r3, .L304+24
	sub	r1, r1, #15
	str	r1, [r3, #0]	@  actualTimer
	mov	r6, #5
	mov	r1, #0
	str	r6, [r0, #24]	@  <variable>.life
	str	r1, [r0, #28]	@  <variable>.placed
	b	.L278
.L305:
	.align	2
.L304:
	.word	theBombs
	.word	theBarriers
	.word	player
	.word	totalWoodCollected
	.word	theTrees
	.word	barrierCounter
	.word	actualTimer
	.size	checkBombCollision, .-checkBombCollision
	.align	2
	.global	placeBarrier
	.type	placeBarrier, %function
placeBarrier:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldr	r8, .L346
	ldr	r1, [r8, #0]	@  CharAniState
	cmp	r1, #0
	mov	r4, #0	@  barrierSelected
	beq	.L308
	ldr	r3, .L346+4
	ldr	r2, [r3, #0]	@  CharPrevAniState
	cmp	r2, r4
	bne	.L307
	cmp	r1, #8
	beq	.L308
.L307:
	ldr	r1, [r8, #0]	@  CharAniState
	cmp	r1, #2
	beq	.L316
	ldr	r3, .L346+4
	ldr	r2, [r3, #0]	@  CharPrevAniState
	cmp	r2, #2
	beq	.L343
.L315:
	ldr	r1, [r8, #0]	@  CharAniState
	cmp	r1, #6
	beq	.L324
	ldr	r3, .L346+4
	ldr	r2, [r3, #0]	@  CharPrevAniState
	cmp	r2, #6
	beq	.L344
.L323:
	ldr	r1, [r8, #0]	@  CharAniState
	cmp	r1, #4
	beq	.L332
	ldr	r3, .L346+4
	ldr	r2, [r3, #0]	@  CharPrevAniState
	cmp	r2, #4
	beq	.L345
.L306:
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L345:
	cmp	r1, #8
	bne	.L306
.L332:
	cmp	r4, #0	@  barrierSelected
	bne	.L306
	ldr	sl, .L346+8
	ldr	r5, .L346+12
	ldr	r7, .L346+16
	mov	r6, #1	@  barrierSelected
	mov	ip, r4	@  i,  barrierSelected
	mov	lr, #4	@  i
.L338:
	add	r0, ip, sl	@  i
	ldr	r3, [r0, #28]	@  <variable>.placed
	orrs	r3, r3, r4	@  barrierSelected
	bne	.L335
	str	r6, [r0, #28]	@  barrierSelected,  <variable>.placed
	ldr	r2, [r5, #24]	@  player.bigRow
	ldr	r3, [r7, #0]	@  actualTimer
	str	r2, [ip, sl]	@  <variable>.row
	add	r2, r5, #4
	ldmia	r2, {r1, r2}
	add	r1, r1, r2
	add	r3, r3, #10
	add	r1, r1, #2
	str	r1, [r0, #4]	@  <variable>.col
	str	r3, [r7, #0]	@  actualTimer
	mov	r4, r6	@  barrierSelected,  barrierSelected
.L335:
	subs	lr, lr, #1	@  i,  i
	add	ip, ip, #40	@  i,  i
	bpl	.L338
	b	.L306
.L344:
	cmp	r1, #8
	bne	.L323
.L324:
	cmp	r4, #0	@  barrierSelected
	bne	.L323
	ldr	sl, .L346+8
	ldr	r7, .L346+12
	ldr	r6, .L346+16
	mov	r5, #1	@  barrierSelected
	mov	ip, r4	@  i,  barrierSelected
	mov	lr, #4	@  i
.L330:
	add	r0, ip, sl	@  i
	ldr	r3, [r0, #28]	@  <variable>.placed
	orrs	r3, r3, r4	@  barrierSelected
	bne	.L327
	str	r5, [r0, #28]	@  barrierSelected,  <variable>.placed
	ldr	r3, [r7, #24]	@  player.bigRow
	str	r3, [ip, sl]	@  <variable>.row
	ldr	r1, [r0, #20]	@  <variable>.width
	ldr	r2, [r7, #4]	@  player.col
	ldr	r3, [r6, #0]	@  actualTimer
	rsb	r2, r1, r2
	sub	r2, r2, #2
	add	r3, r3, #10
	str	r2, [r0, #4]	@  <variable>.col
	str	r3, [r6, #0]	@  actualTimer
	mov	r4, r5	@  barrierSelected,  barrierSelected
.L327:
	subs	lr, lr, #1	@  i,  i
	add	ip, ip, #40	@  i,  i
	bpl	.L330
	b	.L323
.L343:
	cmp	r1, #8
	bne	.L315
.L316:
	cmp	r4, #0	@  barrierSelected
	bne	.L315
	ldr	sl, .L346+8
	ldr	r6, .L346+12
	ldr	r5, .L346+16
	mov	ip, #1	@  barrierSelected
	mov	r0, r4	@  i,  barrierSelected
	mov	lr, #4	@  i
.L322:
	add	r1, r0, sl	@  i
	ldr	r3, [r1, #28]	@  <variable>.placed
	orrs	r3, r3, r4	@  barrierSelected
	bne	.L319
	str	ip, [r1, #28]	@  barrierSelected,  <variable>.placed
	ldr	r2, [r1, #16]	@  <variable>.height
	ldr	r3, [r6, #24]	@  player.bigRow
	rsb	r3, r2, r3
	sub	r3, r3, #2
	str	r3, [r0, sl]	@  <variable>.row
	ldr	r2, [r5, #0]	@  actualTimer
	ldr	r3, [r6, #4]	@  player.col
	add	r2, r2, #10
	str	r3, [r1, #4]	@  <variable>.col
	str	r2, [r5, #0]	@  actualTimer
	mov	r4, ip	@  barrierSelected,  barrierSelected
.L319:
	subs	lr, lr, #1	@  i,  i
	add	r0, r0, #40	@  i,  i
	bpl	.L322
	b	.L315
.L308:
	ldr	sl, .L346+8
	ldr	r5, .L346+12
	ldr	r7, .L346+16
	mov	r6, #1	@  barrierSelected
	mov	ip, r4	@  i,  barrierSelected
	mov	lr, #4	@  i
.L314:
	add	r0, ip, sl	@  i
	ldr	r3, [r0, #28]	@  <variable>.placed
	orrs	r3, r3, r4	@  barrierSelected
	bne	.L311
	str	r6, [r0, #28]	@  barrierSelected,  <variable>.placed
	ldr	r2, [r5, #12]	@  player.height
	ldr	r3, [r5, #24]	@  player.bigRow
	add	r3, r3, r2
	add	r3, r3, #2
	ldr	r1, [r7, #0]	@  actualTimer
	str	r3, [ip, sl]	@  <variable>.row
	ldr	r2, [r5, #4]	@  player.col
	add	r1, r1, #10
	str	r2, [r0, #4]	@  <variable>.col
	str	r1, [r7, #0]	@  actualTimer
	mov	r4, r6	@  barrierSelected,  barrierSelected
.L311:
	subs	lr, lr, #1	@  i,  i
	add	ip, ip, #40	@  i,  i
	bpl	.L314
	b	.L307
.L347:
	.align	2
.L346:
	.word	CharAniState
	.word	CharPrevAniState
	.word	theBarriers
	.word	player
	.word	actualTimer
	.size	placeBarrier, .-placeBarrier
	.align	2
	.global	checkBarrierCollision
	.type	checkBarrierCollision, %function
checkBarrierCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	sl, .L370
	mov	r6, #0	@  i
	ldr	r8, [sl, #24]	@  player.bigRow
	ldr	lr, .L370+4
	mov	r7, r6	@  i,  i
	mov	r6, #4	@  i
.L364:
	ldr	r1, .L370+4
	ldr	ip, [r7, r1]	@  <variable>.row
	ldr	r1, .L370+8
	ldr	r3, [lr, #16]	@  <variable>.height
	ldr	r2, [r1, #0]	@  nextRow
	add	r4, ip, r3
	add	r0, r8, r2
	cmp	r4, r0
	blt	.L351
	ldr	r9, .L370+12
	ldr	r5, [lr, #4]	@  <variable>.col
	ldr	r3, [lr, #20]	@  <variable>.width
	ldr	r1, [sl, #28]	@  player.bigCol
	ldr	r2, [r9, #0]	@  nextCol
	add	r3, r5, r3
	add	r1, r1, r2
	cmp	r3, r1
	blt	.L351
	ldr	r2, [sl, #12]	@  player.height
	add	r3, r0, r2
	cmp	ip, r3
	bgt	.L351
	ldr	r3, [sl, #8]	@  player.width
	add	r3, r1, r3
	cmp	r5, r3
	bgt	.L351
	ldr	r3, [lr, #28]	@  <variable>.placed
	cmp	r3, #1
	beq	.L367
.L351:
	subs	r6, r6, #1	@  i,  i
	add	r7, r7, #40	@  i,  i
	add	lr, lr, #40
	bpl	.L364
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L367:
	cmp	r8, r4
	beq	.L355
	add	r3, r8, r2
	cmp	r3, ip
	beq	.L355
.L354:
	ldr	r1, [sl, #28]	@  player.bigCol
	ldr	r3, [sl, #8]	@  player.width
	ldr	r2, [lr, #4]	@  <variable>.col
	add	r3, r1, r3
	cmp	r3, r2
	beq	.L357
	ldr	r3, [lr, #20]	@  <variable>.width
	add	r3, r2, r3
	cmp	r1, r3
	beq	.L357
.L356:
	ldr	r2, .L370+16
	ldr	r3, [r2, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #1
	bne	.L358
	ldr	r2, .L370+20
	ldr	r3, [r2, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #1
	ldrne	r3, [lr, #24]	@  <variable>.life
	ldrne	r2, [sl, #32]	@  player.strength
	rsbne	r3, r2, r3
	strne	r3, [lr, #24]	@  <variable>.life
.L358:
	ldr	r2, [sl, #32]	@  player.strength
	cmp	r2, #1
	beq	.L368
.L359:
	ldr	r3, [sl, #32]	@  player.strength
	cmp	r3, #2
	beq	.L369
.L361:
	ldr	r3, [lr, #24]	@  <variable>.life
	cmp	r3, #0
	bgt	.L351
	ldr	r0, .L370+24
	ldr	ip, .L370+28
	ldr	r3, [r0, #0]	@  barrierCounter
	ldr	r2, [ip, #0]	@  actualTimer
	ldr	r1, [lr, #32]	@  <variable>.OAMnum
	sub	r3, r3, #1
	str	r3, [r0, #0]	@  barrierCounter
	sub	r2, r2, #15
	mov	r3, #5
	mov	r1, r1, asl #3
	str	r2, [ip, #0]	@  actualTimer
	add	r1, r1, #117440512
	mov	r2, #0
	str	r3, [lr, #24]	@  <variable>.life
	mov	r3, #512	@ movhi
	str	r2, [lr, #36]	@  <variable>.barrierState
	str	r2, [lr, #28]	@  <variable>.placed
	strh	r3, [r1, #0]	@ movhi 	@  <variable>.attr0
	b	.L351
.L369:
	ldr	r3, [lr, #24]	@  <variable>.life
	cmp	r3, #1
	streq	r3, [lr, #36]	@  <variable>.barrierState
	b	.L361
.L368:
	ldr	r3, [lr, #24]	@  <variable>.life
	cmp	r3, #3
	streq	r2, [lr, #36]	@  <variable>.barrierState
	b	.L359
.L357:
	mov	r1, #0
	str	r1, [r9, #0]	@  nextCol
	b	.L356
.L355:
	ldr	r2, .L370+8
	mov	r3, #0
	str	r3, [r2, #0]	@  nextRow
	b	.L354
.L371:
	.align	2
.L370:
	.word	player
	.word	theBarriers
	.word	nextRow
	.word	nextCol
	.word	oldButtons
	.word	buttons
	.word	barrierCounter
	.word	actualTimer
	.size	checkBarrierCollision, .-checkBarrierCollision
	.align	2
	.global	updateTimer
	.type	updateTimer, %function
updateTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	ldr	r3, .L376
	ldr	r2, .L376+4
	ldr	r1, [r3, #0]	@  timerCounter
	smull	r3, r0, r2, r1
	mov	r3, r1, asr #31
	rsb	r3, r3, r0, asr #5
	add	r3, r3, r3, asl #2
	add	r3, r3, r3, asl #2
	cmp	r1, r3, asl #2
	ldr	r7, .L376+8
	ldrne	r7, .L376+8
	bne	.L373
	ldr	r3, [r7, #0]	@  actualTimer
	sub	r2, r3, #1
	cmp	r3, #0
	strge	r2, [r7, #0]	@  actualTimer
.L373:
	ldr	r7, [r7, #0]	@  actualTimer
	ldr	r2, .L376+12
	smull	r3, r1, r2, r7
	mov	r3, r7, asr #31
	rsb	r3, r3, r1, asr #2	@  leftnum
	add	r2, r3, r3, asl #2	@  leftnum,  leftnum
	ldr	r0, .L376+16
	sub	r2, r7, r2, asl #1	@  rightnum
	mov	r3, r3, asl #6	@  leftnum
	mov	ip, #16384
	add	r3, r3, #320
	mov	r1, #892
	mov	r2, r2, asl #6	@  rightnum
	strh	r3, [r0, r1]	@ movhi 	@  <variable>.attr2
	mov	r4, ip
	add	r2, r2, #320
	mov	r3, #884
	mov	r8, #8320
	mov	lr, #888
	mov	r5, #880
	strh	r2, [r0, r3]	@ movhi 	@  <variable>.attr2
	add	r8, r8, #16
	add	r4, r4, #24
	mov	r1, #888
	mov	r3, #880
	add	lr, lr, #2
	add	ip, ip, #19
	add	r5, r5, #2
	strh	ip, [r0, lr]	@ movhi 	@  <variable>.attr1
	strh	r8, [r0, r1]	@ movhi 	@  <variable>.attr0
	strh	r4, [r0, r5]	@ movhi 	@  <variable>.attr1
	strh	r8, [r0, r3]	@ movhi 	@  <variable>.attr0
	add	r2, r0, r1
	ldmia	r2, {r3-r4}	@  shadowOAM
	mov	r6, #117440512
	add	r6, r6, #888
	stmia	r6, {r3-r4}
	add	r0, r0, #880
	ldmia	r0, {r3-r4}	@  shadowOAM
	mov	sl, #117440512
	cmp	r7, #0
	add	sl, sl, #880
	stmia	sl, {r3-r4}
	ldrle	r3, .L376+20
	movle	r2, #6
	strle	r2, [r3, #0]	@  state
	ldmfd	sp!, {r4, r5, r6, r7, r8, sl, lr}
	bx	lr
.L377:
	.align	2
.L376:
	.word	timerCounter
	.word	1374389535
	.word	actualTimer
	.word	1717986919
	.word	shadowOAM
	.word	state
	.size	updateTimer, .-updateTimer
	.align	2
	.global	updateBarriers
	.type	updateBarriers, %function
updateBarriers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, lr}
	ldr	r3, .L397
	ldr	r7, .L397+4
	ldrh	r8, [r3, #0]	@  vOff
	ldr	r6, .L397+8
	mov	r5, #0	@  i
	mov	lr, #4	@  i
.L385:
	add	r3, r5, r6	@  i
	ldrh	r2, [r5, r6]	@  <variable>.row
	add	r0, r3, #32
	ldmia	r0, {r0, r4}	@ phole ldm
	mov	r0, r0, asl #3
	rsb	r2, r8, r2
	mov	ip, #2048
	ldrh	r1, [r3, #4]	@  <variable>.col
	cmp	r4, #0
	add	r3, r0, r7
	and	r2, r2, #255
	add	ip, ip, #12
	orr	r2, r2, #8192
	streqh	ip, [r3, #4]	@ movhi 	@  <variable>.attr2
	cmp	r4, #1
	bic	r1, r1, #65024
	strh	r2, [r0, r7]	@ movhi 	@  <variable>.attr0
	moveq	r2, #2064	@ movhi
	orr	r1, r1, #16384
	streqh	r2, [r3, #4]	@ movhi 	@  <variable>.attr2
	subs	lr, lr, #1	@  i,  i
	add	r5, r5, #40	@  i,  i
	strh	r1, [r3, #2]	@ movhi 	@  <variable>.attr1
	bpl	.L385
	mov	r1, r6
	mov	lr, #4	@  i
.L391:
	ldr	r3, [r1, #28]	@  <variable>.placed
	cmp	r3, #1
	beq	.L396
.L388:
	subs	lr, lr, #1	@  i,  i
	add	r1, r1, #40
	bpl	.L391
	ldmfd	sp!, {r4, r5, r6, r7, r8, lr}
	bx	lr
.L396:
	ldr	r3, [r1, #32]	@  <variable>.OAMnum
	mov	r3, r3, asl #3
	add	r2, r3, r7
	ldmia	r2, {r4-r5}	@  shadowOAM
	add	r3, r3, #117440512
	stmia	r3, {r4-r5}
	b	.L388
.L398:
	.align	2
.L397:
	.word	vOff
	.word	shadowOAM
	.word	theBarriers
	.size	updateBarriers, .-updateBarriers
	.align	2
	.global	setupBarriers
	.type	setupBarriers, %function
setupBarriers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, lr}
	mov	ip, #0	@  i
	ldr	r4, .L407
	mov	r1, ip	@  i,  i
	mov	lr, #16
	mov	r5, #5
	mov	r0, ip	@  i,  i
.L404:
	rsb	r2, ip, #121	@  i
	add	ip, ip, #1	@  i,  i
	add	r3, r0, r4	@  i
	cmp	ip, #4	@  i
	str	r1, [r0, r4]	@  i,  <variable>.row
	str	r2, [r3, #32]	@  <variable>.OAMnum
	str	r1, [r3, #36]	@  i,  <variable>.barrierState
	str	r1, [r3, #4]	@  i,  <variable>.col
	str	r1, [r3, #8]	@  i,  <variable>.bigRow
	str	r1, [r3, #12]	@  i,  <variable>.bigCol
	str	lr, [r3, #20]	@  <variable>.width
	str	lr, [r3, #16]	@  <variable>.height
	str	r5, [r3, #24]	@  <variable>.life
	str	r1, [r3, #28]	@  i,  <variable>.placed
	add	r0, r0, #40	@  i,  i
	ble	.L404
	ldmfd	sp!, {r4, r5, lr}
	b	updateBarriers
.L408:
	.align	2
.L407:
	.word	theBarriers
	.size	setupBarriers, .-setupBarriers
	.align	2
	.global	settings
	.type	settings, %function
settings:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	ldr	r0, .L440
	ldr	r3, [r0, #0]	@  state
	sub	sp, sp, #16
	mov	r1, #0
	cmp	r3, #7
	str	r1, [sp, #12]	@  settingsstate
	beq	.L433
.L411:
	add	sp, sp, #16
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
	bx	lr
.L433:
	mov	r2, #16384
	add	r2, r2, #23
	str	r2, [sp, #8]
.L431:
	ldr	r4, .L440+4
	ldr	r7, .L440+8
	ldr	r3, [r4, #0]	@  buttons
	str	r3, [r7, #0]	@  oldButtons
	mov	r2, #67108864
	ldr	r2, [r2, #304]
	mvn	r3, r3
	tst	r3, #1
	str	r2, [r4, #0]	@  buttons
	bne	.L413
	mvn	r3, r2
	tst	r3, #1
	beq	.L413
	ldr	ip, [sp, #12]	@  settingsstate
	cmp	ip, #0
	bne	.L414
	ldr	r2, .L440+12
	ldr	r3, [r2, #0]	@  show1
	cmp	r3, #0
	ldrne	r1, [sp, #12]	@  settingsstate
	ldreq	r3, .L440+16
	ldrne	r3, .L440+16
	moveq	r0, #1
	streq	r0, [r2, #0]	@  show1
	streq	r0, [r3, #0]	@  infiniteBombs
	strne	r1, [r2, #0]	@  show1
	strne	r1, [r3, #0]	@  infiniteBombs
.L414:
	ldr	r2, [sp, #12]	@  settingsstate
	cmp	r2, #1
	beq	.L434
.L417:
	ldr	ip, [sp, #12]	@  settingsstate
	cmp	ip, #2
	beq	.L435
.L413:
	ldr	r2, .L440+8
	ldr	r3, [r2, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #128
	bne	.L423
	ldr	r4, .L440+4
	ldr	r3, [r4, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #128
	beq	.L423
	ldr	r7, [sp, #12]	@  settingsstate
	cmp	r7, #1
	addls	r7, r7, #1
	strls	r7, [sp, #12]	@  settingsstate
.L423:
	ldr	ip, .L440+8
	ldr	r3, [ip, #0]	@  oldButtons
	mvn	r3, r3
	tst	r3, #64
	bne	.L425
	ldr	r0, .L440+4
	ldr	r3, [r0, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #64
	beq	.L425
	ldr	r1, [sp, #12]	@  settingsstate
	sub	r3, r1, #1	@  settingsstate
	cmp	r3, #1	@  settingsstate
	movls	r1, r3	@  settingsstate
	str	r1, [sp, #12]	@  settingsstate
.L425:
	ldr	r2, .L440+8
	ldr	r3, [r2, #0]	@  oldButtons
	mvn	r3, r3
	ands	r0, r3, #4
	bne	.L427
	ldr	r4, .L440+4
	ldr	r3, [r4, #0]	@  buttons
	mvn	r3, r3
	tst	r3, #4
	bne	.L436
.L427:
	ldr	r0, [sp, #12]	@  settingsstate
	ldr	r3, .L440+12
	add	r2, r0, r0, asl #1
	add	r2, r0, r2, asl #2
	ldr	r8, .L440+20
	ldr	r7, [r3, #0]	@  show1
	add	r2, r2, #89
	mov	r1, #984
	mov	r3, #16384
	mov	r0, #8256
	and	r2, r2, #255
	add	r1, r1, #2
	add	r3, r3, #31
	strh	r3, [r8, r1]	@ movhi 	@  <variable>.attr1
	mov	ip, r0
	mov	lr, r0
	mov	r1, #984
	add	r0, r0, #25
	mov	r3, #832
	str	r2, [sp, #0]
	orr	r2, r2, #8192
	strh	r2, [r8, r1]	@ movhi 	@  <variable>.attr0
	add	ip, ip, #38
	strh	r0, [r8, r3]	@ movhi 	@  <variable>.attr0
	mov	r2, #824
	mov	r3, #816
	cmp	r7, #1
	add	lr, lr, #51
	mov	r7, #117440512
	strh	ip, [r8, r2]	@ movhi 	@  <variable>.attr0
	add	r7, r7, #816
	strh	lr, [r8, r3]	@ movhi 	@  <variable>.attr0
	mov	r2, #988
	mov	r3, #256	@ movhi
	strh	r3, [r8, r2]	@ movhi 	@  <variable>.attr2
	mov	ip, #260	@ movhi
	mov	sl, #117440512
	str	r7, [sp, #4]
	mov	r3, #836
	ldr	r7, [sp, #8]
	strh	ip, [r8, r3]	@ movhi 	@  <variable>.attr2
	mov	r9, sl
	mov	r3, #828
	mov	r4, #832
	mov	r5, #824
	mov	r6, #816
	ldr	r1, [sp, #4]
	mov	r0, #512	@ movhi
	strh	ip, [r8, r3]	@ movhi 	@  <variable>.attr2
	add	r4, r4, #2
	add	r5, r5, #2
	add	r6, r6, #2
	add	sl, sl, #832
	add	r9, r9, #824
	mov	r3, #820
	strh	r7, [r8, r4]	@ movhi 	@  <variable>.attr1
	strh	r0, [sl, #0]	@ movhi 	@  <variable>.attr0
	strh	r7, [r8, r5]	@ movhi 	@  <variable>.attr1
	strh	r0, [r9, #0]	@ movhi 	@  <variable>.attr0
	strh	r7, [r8, r6]	@ movhi 	@  <variable>.attr1
	strh	ip, [r8, r3]	@ movhi 	@  <variable>.attr2
	strh	r0, [r1, #0]	@ movhi 	@  <variable>.attr0
	beq	.L437
.L428:
	ldr	r3, .L440+24
	ldr	r2, [r3, #0]	@  show2
	cmp	r2, #1
	beq	.L438
.L429:
	ldr	r3, .L440+28
	ldr	r2, [r3, #0]	@  show3
	cmp	r2, #1
	beq	.L439
.L430:
	ldr	r4, .L440
	ldr	r3, [r4, #0]	@  state
	add	r1, r8, #984
	mov	r2, #117440512
	cmp	r3, #7
	ldmia	r1, {r3-r4}	@  shadowOAM
	add	r2, r2, #984
	stmia	r2, {r3-r4}
	beq	.L431
	b	.L411
.L439:
	add	r3, r8, #816
	ldmia	r3, {r0-r1}	@  shadowOAM
	ldr	r2, [sp, #4]
	stmia	r2, {r0-r1}
	b	.L430
.L438:
	add	r3, r8, #824
	ldmia	r3, {r1-r2}	@  shadowOAM
	stmia	r9, {r1-r2}
	b	.L429
.L437:
	add	r3, r8, #832
	ldmia	r3, {r0-r1}	@  shadowOAM
	stmia	sl, {r0-r1}
	b	.L428
.L436:
	mov	r3, #117440512
	mov	r2, r3
	mov	r1, r3
	ldr	r7, .L440
	mov	ip, #512	@ movhi
	add	r3, r3, #832
	add	r2, r2, #824
	add	r1, r1, #816
	strh	ip, [r3, #0]	@ movhi 	@  <variable>.attr0
	str	r0, [r7, #0]	@  state
	strh	ip, [r2, #0]	@ movhi 	@  <variable>.attr0
	strh	ip, [r1, #0]	@ movhi 	@  <variable>.attr0
	b	.L411
.L435:
	ldr	r2, .L440+28
	ldr	r3, [r2, #0]	@  show3
	cmp	r3, #0
	ldreq	r3, .L440+32
	ldrne	r3, .L440+32
	moveq	r0, #1
	movne	r1, #0
	streq	r0, [r2, #0]	@  show3
	streq	r0, [r3, #0]	@  impossibleMode
	strne	r1, [r2, #0]	@  show3
	strne	r1, [r3, #0]	@  impossibleMode
	b	.L413
.L434:
	ldr	r2, .L440+24
	ldr	r3, [r2, #0]	@  show2
	cmp	r3, #0
	ldreq	r3, [sp, #12]	@  settingsstate
	ldreq	r4, [sp, #12]	@  settingsstate
	streq	r3, [r2, #0]	@  show2
	ldrne	r3, .L440+36
	ldreq	r3, .L440+36
	movne	r7, #0
	streq	r4, [r3, #0]	@  superStrength
	strne	r7, [r2, #0]	@  show2
	strne	r7, [r3, #0]	@  superStrength
	b	.L417
.L441:
	.align	2
.L440:
	.word	state
	.word	buttons
	.word	oldButtons
	.word	show1
	.word	infiniteBombs
	.word	shadowOAM
	.word	show2
	.word	show3
	.word	impossibleMode
	.word	superStrength
	.size	settings, .-settings
	.align	2
	.global	setupSounds
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mvn	r2, #1264
	mov	r3, #67108864
	sub	r2, r2, #1
	mov	r1, #128	@ movhi
	strh	r1, [r3, #132]	@ movhi 
	strh	r2, [r3, #130]	@ movhi 
	mov	r2, #0	@ movhi
	@ lr needed for prologue
	strh	r2, [r3, #128]	@ movhi 
	bx	lr
	.size	setupSounds, .-setupSounds
	.global	__divsi3
	.align	2
	.global	playSoundA
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r9, .L446
	ldr	r7, [r9, #0]	@  soundAPlaying
	cmp	r7, #0
	mov	r8, r0	@  sound
	mov	r6, r1	@  length
	sub	fp, ip, #4
	mov	r5, r2	@  frequency
	mov	r0, #-16777216
	mov	r1, r2	@  frequency
	mov	sl, r3	@  isLooping
	beq	.L445
.L443:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L445:
	ldr	r3, .L446+4
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #-1241513984
	mov	r4, r0	@  sound
	add	r2, r2, #160
	mov	r0, #1
	mov	r1, r8	@  sound
	add	r3, r3, #4194304
	ldr	ip, .L446+8
	mov	lr, pc
	bx	ip
	ldr	r3, .L446+12
	mov	r1, #256
	mov	r2, #67108864
	add	r1, r1, #67108866
	ldr	ip, [r3, #0]	@  vblankCounter
	add	r2, r2, #256
	mov	r3, #128	@ movhi
	strh	r7, [r1, #0]	@ movhi 
	strh	r4, [r2, #0]	@ movhi 	@  sound
	strh	r3, [r1, #0]	@ movhi 
	ldr	r3, .L446+16
	ldr	r2, .L446+20
	str	ip, [r3, #0]	@  soundAStart
	mov	r3, #1
	str	r8, [r2, #0]	@  sound,  soundA
	str	r3, [r9, #0]	@  soundAPlaying
	ldr	r2, .L446+24
	ldr	r3, .L446+28
	rsb	r0, r6, r6, asl #4	@  length,  length
	str	r5, [r2, #0]	@  frequency,  soundAFrequency
	str	r6, [r3, #0]	@  length,  soundALength
	mov	r0, r0, asl #2	@  sound
	ldr	r3, .L446+4
	mov	r1, r5	@  frequency
	mov	lr, pc
	bx	r3
	ldr	r3, .L446+32
	ldr	r2, .L446+36
	sub	r0, r0, #1	@  sound
	str	r0, [r3, #0]	@  soundADuration
	str	sl, [r2, #0]	@  isLooping,  soundALooping
	b	.L443
.L447:
	.align	2
.L446:
	.word	soundAPlaying
	.word	__divsi3
	.word	DMANow
	.word	vblankCounter
	.word	soundAStart
	.word	soundA
	.word	soundAFrequency
	.word	soundALength
	.word	soundADuration
	.word	soundALooping
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
	ldr	r9, .L451
	ldr	r7, [r9, #0]	@  soundBPlaying
	cmp	r7, #0
	mov	r8, r0	@  sound
	mov	r6, r1	@  length
	sub	fp, ip, #4
	mov	r5, r2	@  frequency
	mov	r0, #-16777216
	mov	r1, r2	@  frequency
	mov	sl, r3	@  isLooping
	beq	.L450
.L448:
	ldmea	fp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
	bx	lr
.L450:
	ldr	r3, .L451+4
	mov	lr, pc
	bx	r3
	mov	r2, #67108864
	mov	r3, #-1241513984
	mov	r4, r0	@  sound
	add	r2, r2, #164
	mov	r0, #2
	mov	r1, r8	@  sound
	add	r3, r3, #4194304
	ldr	ip, .L451+8
	mov	lr, pc
	bx	ip
	ldr	r3, .L451+12
	mov	r1, #260
	mov	r2, #67108864
	add	r1, r1, #67108866
	ldr	ip, [r3, #0]	@  vblankCounter
	add	r2, r2, #260
	mov	r3, #128	@ movhi
	strh	r7, [r1, #0]	@ movhi 
	strh	r4, [r2, #0]	@ movhi 	@  sound
	strh	r3, [r1, #0]	@ movhi 
	ldr	r3, .L451+16
	ldr	r2, .L451+20
	str	ip, [r3, #0]	@  soundBStart
	mov	r3, #1
	str	r8, [r2, #0]	@  sound,  soundB
	str	r3, [r9, #0]	@  soundBPlaying
	ldr	r2, .L451+24
	ldr	r3, .L451+28
	rsb	r0, r6, r6, asl #4	@  length,  length
	str	r5, [r2, #0]	@  frequency,  soundBFrequency
	str	r6, [r3, #0]	@  length,  soundBLength
	mov	r0, r0, asl #2	@  sound
	ldr	r3, .L451+4
	mov	r1, r5	@  frequency
	mov	lr, pc
	bx	r3
	ldr	r3, .L451+32
	ldr	r2, .L451+36
	sub	r0, r0, #5	@  sound
	str	r0, [r3, #0]	@  soundBDuration
	str	sl, [r2, #0]	@  isLooping,  soundBLooping
	b	.L448
.L452:
	.align	2
.L451:
	.word	soundBPlaying
	.word	__divsi3
	.word	DMANow
	.word	vblankCounter
	.word	soundBStart
	.word	soundB
	.word	soundBFrequency
	.word	soundBLength
	.word	soundBDuration
	.word	soundBLooping
	.size	playSoundB, .-playSoundB
	.align	2
	.global	setupInterrupts
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #67108864
	add	r1, r0, #512
	ldrh	r3, [r1, #0]
	orr	r3, r3, #1
	strh	r3, [r1, #0]	@ movhi 
	mov	r2, #50331648
	ldrh	r1, [r0, #4]
	ldr	r3, .L454
	add	r2, r2, #32512
	str	r3, [r2, #252]
	orr	r1, r1, #8
	add	r3, r0, #520
	mov	r2, #1	@ movhi
	strh	r1, [r0, #4]	@ movhi 
	@ lr needed for prologue
	strh	r2, [r3, #0]	@ movhi 
	bx	lr
.L455:
	.align	2
.L454:
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	interruptHandler
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r3, #67108864
	add	r3, r3, #520
	mov	r1, #0	@ movhi
	mov	r2, #512
	strh	r1, [r3, #0]	@ movhi 
	add	r2, r2, #67108866
	ldrh	r3, [r2, #0]
	tst	r3, #1
	beq	.L457
	ldr	ip, .L462
	ldr	r3, .L462+4
	ldr	r2, .L462+8
	ldr	r1, [r3, #0]	@  soundAStart
	ldr	r0, [r2, #0]	@  soundADuration
	ldr	r3, [ip, #0]	@  vblankCounter
	add	r1, r1, r0
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [ip, #0]	@  vblankCounter
	ble	.L458
	ldr	r3, .L462+12
	ldr	r1, [r3, #0]	@  soundALooping
	cmp	r1, #0
	bne	.L458
	ldr	r0, .L462+16
	ldr	r3, [r0, #0]	@  soundAPlaying
	cmp	r3, #0
	ldrne	r3, .L462+20
	ldrne	r2, [r3, #0]	@  dma
	strne	r1, [r2, #20]	@  <variable>.cnt
	strne	r1, [r0, #0]	@  soundAPlaying
.L458:
	ldr	r0, .L462+24
	ldr	lr, .L462+28
	ldr	r3, [r0, #0]	@  soundBStart
	ldr	r2, [lr, #0]	@  soundBDuration
	ldr	r1, [ip, #0]	@  vblankCounter
	add	r3, r3, r2
	cmp	r1, r3
	ble	.L460
	ldr	r3, .L462+32
	ldr	r1, [r3, #0]	@  soundBLooping
	cmp	r1, #0
	bne	.L459
	ldr	r4, .L462+36
	ldr	r3, [r4, #0]	@  soundBPlaying
	cmp	r3, #0
	ldrne	r3, .L462+20
	ldrne	r2, [r3, #0]	@  dma
	strne	r1, [r2, #32]	@  <variable>.cnt
	strne	r1, [r4, #0]	@  soundBPlaying
.L459:
	ldr	r3, [r0, #0]	@  soundBStart
	ldr	r2, [lr, #0]	@  soundBDuration
	ldr	r1, [ip, #0]	@  vblankCounter
	add	r3, r3, r2
	cmp	r1, r3
	ble	.L460
	ldr	r3, .L462+32
	ldr	r2, [r3, #0]	@  soundBLooping
	cmp	r2, #0
	beq	.L460
	ldr	r0, .L462+36
	ldr	r3, [r0, #0]	@  soundBPlaying
	cmp	r3, #0
	beq	.L460
	ldr	r3, .L462+20
	mov	r2, #-1241513984
	ldr	r1, [r3, #0]	@  dma
	add	r2, r2, #4194304
	mov	r3, #0
	str	r3, [r1, #32]	@  <variable>.cnt
	str	r2, [r1, #32]	@  <variable>.cnt
	str	r3, [r0, #0]	@  soundBPlaying
.L460:
	mov	r3, #512
	add	r3, r3, #67108866
	mov	r2, #1	@ movhi
	strh	r2, [r3, #0]	@ movhi 
.L457:
	mov	r3, #67108864
	add	r3, r3, #520
	mov	r1, #1	@ movhi
	strh	r1, [r3, #0]	@ movhi 
	ldmfd	sp!, {r4, lr}
	bx	lr
.L463:
	.align	2
.L462:
	.word	vblankCounter
	.word	soundAStart
	.word	soundADuration
	.word	soundALooping
	.word	soundAPlaying
	.word	dma
	.word	soundBStart
	.word	soundBDuration
	.word	soundBLooping
	.word	soundBPlaying
	.size	interruptHandler, .-interruptHandler
	.comm	oldButtons, 4, 32
	.comm	buttons, 4, 32
	.comm	state, 4, 32
	.comm	shadowOAM, 1024, 32
	.comm	player, 40, 32
	.comm	totalWoodCollected, 4, 32
	.comm	colliding, 4, 32
	.comm	nextRow, 4, 32
	.comm	nextCol, 4, 32
	.comm	theTrees, 2656, 32
	.comm	bigRow, 4, 32
	.comm	bigCol, 4, 32
	.comm	theBarriers, 200, 32
	.comm	theBombs, 140, 32
	.comm	soundA, 4, 32
	.comm	soundB, 4, 32
	.comm	timerCounter, 4, 32
	.ident	"GCC: (GNU) 3.3.2"
