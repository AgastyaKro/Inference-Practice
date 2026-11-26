	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 4	sdk_version 15, 4
	.globl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii ; -- Begin function _Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
	.p2align	2
__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii: ; @_Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x4
	mov	x21, x3
	mov	x22, x2
	mov	x23, x1
	mov	x24, x0
	mov	x25, x8
	mul	w8, w4, w2
	stp	xzr, xzr, [x25]
	str	xzr, [x25, #16]
	cbz	w8, LBB0_4
; %bb.1:
	sxtw	x27, w8
	tbnz	w27, #31, LBB0_32
; %bb.2:
	lsl	x26, x27, #2
Ltmp0:
	mov	x0, x26
	bl	__Znwm
Ltmp1:
; %bb.3:
	mov	x19, x0
	str	x0, [x25]
	add	x27, x0, x27, lsl #2
	str	x27, [x25, #16]
	mov	x1, x26
	bl	_bzero
	str	x27, [x25, #8]
	cmp	w22, #1
	b.ge	LBB0_5
	b	LBB0_31
LBB0_4:
	mov	x19, #0                         ; =0x0
	cmp	w22, #1
	b.lt	LBB0_31
LBB0_5:
	cmp	w20, #1
	b.lt	LBB0_31
; %bb.6:
	cmp	w21, #1
	b.lt	LBB0_31
; %bb.7:
	mov	w8, w20
	mov	w9, w21
	ldr	x10, [x24]
	ldr	x11, [x23]
	mov	w12, w22
	cmp	w21, #15
	b.hi	LBB0_14
; %bb.8:
	mov	x13, #0                         ; =0x0
	lsl	x14, x8, #2
	lsl	x15, x9, #2
LBB0_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_10 Depth 2
                                        ;       Child Loop BB0_11 Depth 3
	mov	x16, #0                         ; =0x0
	mul	x17, x13, x8
	mov	x0, x11
LBB0_10:                                ;   Parent Loop BB0_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_11 Depth 3
	add	x1, x16, x17
	ldr	s0, [x19, x1, lsl #2]
	mov	x2, x10
	mov	x3, x0
	mov	x4, x9
LBB0_11:                                ;   Parent Loop BB0_9 Depth=1
                                        ;     Parent Loop BB0_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x2], #4
	ldr	s2, [x3]
	fmadd	s0, s1, s2, s0
	str	s0, [x19, x1, lsl #2]
	add	x3, x3, x14
	subs	x4, x4, #1
	b.ne	LBB0_11
; %bb.12:                               ;   in Loop: Header=BB0_10 Depth=2
	add	x16, x16, #1
	add	x0, x0, #4
	cmp	x16, x8
	b.ne	LBB0_10
; %bb.13:                               ;   in Loop: Header=BB0_9 Depth=1
	add	x13, x13, #1
	add	x10, x10, x15
	cmp	x13, x12
	b.ne	LBB0_9
	b	LBB0_31
LBB0_14:
	ubfiz	x13, x20, #2, #32
	ubfiz	x14, x21, #2, #32
	cmp	w20, #1
	b.ne	LBB0_25
; %bb.15:
	mov	x15, #0                         ; =0x0
	add	x16, x13, x14
	add	x16, x11, x16
	sub	x16, x16, #4
	add	x17, x10, x14
	and	x0, x9, #0x7ffffff0
	add	x1, x10, #32
	lsl	x2, x9, #2
	add	x3, x11, #32
	sub	x4, x9, x0
	ubfx	x7, x9, #4, #27
	umull	x5, w8, w7
	add	x5, x11, x5, lsl #6
	lsl	x6, x8, #2
	add	x7, x10, x7, lsl #6
	mov	x20, x10
	b	LBB0_17
LBB0_16:                                ;   in Loop: Header=BB0_17 Depth=1
	add	x15, x15, #1
	add	x1, x1, x2
	add	x7, x7, x2
	add	x20, x20, x2
	cmp	x15, x12
	b.eq	LBB0_31
LBB0_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_20 Depth 2
                                        ;     Child Loop BB0_22 Depth 2
                                        ;     Child Loop BB0_24 Depth 2
	mul	x22, x13, x15
	add	x21, x19, x13
	add	x23, x21, x22
	mul	x24, x14, x15
	add	x25, x17, x24
	mul	x21, x15, x8
	add	x26, x19, x22
	cmp	x26, x16
	ccmp	x11, x23, #2, lo
	cset	w22, lo
	add	x24, x10, x24
	cmp	x24, x23
	ccmp	x26, x25, #2, lo
	ldr	s0, [x19, x21, lsl #2]
	b.lo	LBB0_23
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=1
	tbnz	w22, #0, LBB0_23
; %bb.19:                               ;   in Loop: Header=BB0_17 Depth=1
	mov	x22, x3
	mov	x23, x1
	mov	x24, x0
LBB0_20:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q1, q2, [x23, #-32]
	ldp	q3, q4, [x23], #64
	ldp	q5, q6, [x22, #-32]
	ldp	q7, q16, [x22], #64
	fmul.4s	v1, v1, v5
	mov	s5, v1[3]
	mov	s17, v1[2]
	mov	s18, v1[1]
	fmul.4s	v2, v2, v6
	mov	s6, v2[3]
	mov	s19, v2[2]
	mov	s20, v2[1]
	fmul.4s	v3, v3, v7
	mov	s7, v3[3]
	mov	s21, v3[2]
	mov	s22, v3[1]
	fmul.4s	v4, v4, v16
	mov	s16, v4[3]
	mov	s23, v4[2]
	mov	s24, v4[1]
	fadd	s0, s0, s1
	fadd	s0, s0, s18
	fadd	s0, s0, s17
	fadd	s0, s0, s5
	fadd	s0, s0, s2
	fadd	s0, s0, s20
	fadd	s0, s0, s19
	fadd	s0, s0, s6
	fadd	s0, s0, s3
	fadd	s0, s0, s22
	fadd	s0, s0, s21
	fadd	s0, s0, s7
	fadd	s0, s0, s4
	fadd	s0, s0, s24
	fadd	s0, s0, s23
	fadd	s0, s0, s16
	subs	x24, x24, #16
	b.ne	LBB0_20
; %bb.21:                               ;   in Loop: Header=BB0_17 Depth=1
	str	s0, [x19, x21, lsl #2]
	mov	x22, x7
	mov	x23, x5
	mov	x24, x4
	cmp	x9, x0
	b.eq	LBB0_16
LBB0_22:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s1, [x22], #4
	ldr	s2, [x23]
	fmadd	s0, s1, s2, s0
	str	s0, [x19, x21, lsl #2]
	add	x23, x23, x6
	subs	x24, x24, #1
	b.ne	LBB0_22
	b	LBB0_16
LBB0_23:                                ;   in Loop: Header=BB0_17 Depth=1
	mov	x22, x20
	mov	x23, x11
	mov	x24, x9
LBB0_24:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s1, [x22], #4
	ldr	s2, [x23]
	fmadd	s0, s1, s2, s0
	str	s0, [x19, x21, lsl #2]
	add	x23, x23, x6
	subs	x24, x24, #1
	b.ne	LBB0_24
	b	LBB0_16
LBB0_25:
	mov	x15, #0                         ; =0x0
LBB0_26:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_27 Depth 2
                                        ;       Child Loop BB0_28 Depth 3
	mov	x16, #0                         ; =0x0
	mul	x17, x15, x8
	mov	x0, x11
LBB0_27:                                ;   Parent Loop BB0_26 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB0_28 Depth 3
	add	x1, x16, x17
	ldr	s0, [x19, x1, lsl #2]
	mov	x2, x9
	mov	x3, x0
	mov	x4, x10
LBB0_28:                                ;   Parent Loop BB0_26 Depth=1
                                        ;     Parent Loop BB0_27 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x4], #4
	ldr	s2, [x3]
	fmadd	s0, s1, s2, s0
	str	s0, [x19, x1, lsl #2]
	add	x3, x3, x13
	subs	x2, x2, #1
	b.ne	LBB0_28
; %bb.29:                               ;   in Loop: Header=BB0_27 Depth=2
	add	x16, x16, #1
	add	x0, x0, #4
	cmp	x16, x8
	b.ne	LBB0_27
; %bb.30:                               ;   in Loop: Header=BB0_26 Depth=1
	add	x15, x15, #1
	add	x10, x10, x14
	cmp	x15, x12
	b.ne	LBB0_26
LBB0_31:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB0_32:
Ltmp2:
	mov	x0, x25
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp3:
; %bb.33:
	brk	#0x1
LBB0_34:
Ltmp4:
	mov	x19, x0
	ldr	x0, [x25]
	cbz	x0, LBB0_36
; %bb.35:
	str	x0, [x25, #8]
	bl	__ZdlPv
LBB0_36:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table0:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp1-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp2-Ltmp1                    ;   Call between Ltmp1 and Ltmp2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp2-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp3-Ltmp2                    ;   Call between Ltmp2 and Ltmp3
	.uleb128 Ltmp4-Lfunc_begin0             ;     jumps to Ltmp4
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Lfunc_end0-Ltmp3               ;   Call between Ltmp3 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii ; -- Begin function _Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
	.p2align	2
__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii: ; @_Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	stp	x26, x25, [sp, #16]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #32]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x4
	mov	x21, x3
	mov	x22, x2
	mov	x23, x1
	mov	x24, x0
	mov	x25, x8
	mul	w8, w4, w2
	stp	xzr, xzr, [x25]
	str	xzr, [x25, #16]
	cbz	w8, LBB1_4
; %bb.1:
	sxtw	x27, w8
	tbnz	w27, #31, LBB1_29
; %bb.2:
	lsl	x26, x27, #2
Ltmp5:
	mov	x0, x26
	bl	__Znwm
Ltmp6:
; %bb.3:
	mov	x19, x0
	str	x0, [x25]
	add	x27, x0, x27, lsl #2
	str	x27, [x25, #16]
	mov	x1, x26
	bl	_bzero
	str	x27, [x25, #8]
	cmp	w22, #1
	b.ge	LBB1_5
	b	LBB1_14
LBB1_4:
	mov	x19, #0                         ; =0x0
	cmp	w22, #1
	b.lt	LBB1_14
LBB1_5:
	cmp	w21, #1
	b.lt	LBB1_14
; %bb.6:
	cmp	w20, #1
	b.lt	LBB1_14
; %bb.7:
	ldr	x8, [x24]
	mov	w9, w20
	mov	w10, w21
	ldr	x11, [x23]
	mov	w12, w22
	cmp	w20, #16
	b.hs	LBB1_15
; %bb.8:
	mov	x13, #0                         ; =0x0
	lsl	x14, x9, #2
LBB1_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_10 Depth 2
                                        ;       Child Loop BB1_11 Depth 3
	mov	x15, #0                         ; =0x0
	mul	x16, x13, x10
	add	x16, x8, x16, lsl #2
	mov	x17, x11
LBB1_10:                                ;   Parent Loop BB1_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_11 Depth 3
	ldr	s0, [x16, x15, lsl #2]
	mov	x0, x17
	mov	x1, x19
	mov	x2, x9
LBB1_11:                                ;   Parent Loop BB1_9 Depth=1
                                        ;     Parent Loop BB1_10 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x0], #4
	ldr	s2, [x1]
	fmadd	s1, s0, s1, s2
	str	s1, [x1], #4
	subs	x2, x2, #1
	b.ne	LBB1_11
; %bb.12:                               ;   in Loop: Header=BB1_10 Depth=2
	add	x15, x15, #1
	add	x17, x17, x14
	cmp	x15, x10
	b.ne	LBB1_10
; %bb.13:                               ;   in Loop: Header=BB1_9 Depth=1
	add	x13, x13, #1
	add	x19, x19, x14
	cmp	x13, x12
	b.ne	LBB1_9
LBB1_14:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB1_15:
	mov	x13, #0                         ; =0x0
	ubfiz	x14, x20, #2, #32
	umull	x15, w20, w21
	add	x15, x11, x15, lsl #2
	and	x16, x9, #0x7ffffff0
	add	x17, x19, #32
	lsl	x0, x9, #2
	add	x1, x11, #32
	ubfx	x2, x9, #4, #27
	lsl	x3, x2, #6
	add	x2, x11, x3
	add	x3, x19, x3
	sub	x4, x9, x16
	mov	x5, x19
	b	LBB1_17
LBB1_16:                                ;   in Loop: Header=BB1_17 Depth=1
	add	x13, x13, #1
	add	x17, x17, x0
	add	x3, x3, x0
	add	x5, x5, x0
	cmp	x13, x12
	b.eq	LBB1_14
LBB1_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_26 Depth 2
                                        ;       Child Loop BB1_27 Depth 3
                                        ;     Child Loop BB1_20 Depth 2
                                        ;       Child Loop BB1_21 Depth 3
                                        ;       Child Loop BB1_24 Depth 3
	mul	x7, x14, x13
	add	x6, x19, x14
	add	x20, x6, x7
	mul	x6, x13, x10
	add	x6, x8, x6, lsl #2
	add	x7, x19, x7
	cmp	x7, x15
	mov	x7, #0                          ; =0x0
	ccmp	x11, x20, #2, lo
	b.lo	LBB1_25
; %bb.18:                               ;   in Loop: Header=BB1_17 Depth=1
	mov	x20, x2
	mov	x21, x1
	b	LBB1_20
LBB1_19:                                ;   in Loop: Header=BB1_20 Depth=2
	add	x7, x7, #1
	add	x21, x21, x0
	add	x20, x20, x0
	cmp	x7, x10
	b.eq	LBB1_16
LBB1_20:                                ;   Parent Loop BB1_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_21 Depth 3
                                        ;       Child Loop BB1_24 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	dup.4s	v1, v0[0]
	mov	x22, x21
	mov	x23, x17
	mov	x24, x16
LBB1_21:                                ;   Parent Loop BB1_17 Depth=1
                                        ;     Parent Loop BB1_20 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q2, q3, [x22, #-32]
	ldp	q4, q5, [x22], #64
	ldp	q6, q7, [x23, #-32]
	ldp	q16, q17, [x23]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x23, #-32]
	stp	q16, q17, [x23], #64
	subs	x24, x24, #16
	b.ne	LBB1_21
; %bb.22:                               ;   in Loop: Header=BB1_20 Depth=2
	cmp	x9, x16
	b.eq	LBB1_19
; %bb.23:                               ;   in Loop: Header=BB1_20 Depth=2
	mov	x22, x4
	mov	x23, x3
	mov	x24, x20
LBB1_24:                                ;   Parent Loop BB1_17 Depth=1
                                        ;     Parent Loop BB1_20 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x24], #4
	ldr	s2, [x23]
	fmadd	s1, s0, s1, s2
	str	s1, [x23], #4
	subs	x22, x22, #1
	b.ne	LBB1_24
	b	LBB1_19
LBB1_25:                                ;   in Loop: Header=BB1_17 Depth=1
	mov	x20, x11
LBB1_26:                                ;   Parent Loop BB1_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB1_27 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	mov	x21, x20
	mov	x22, x5
	mov	x23, x9
LBB1_27:                                ;   Parent Loop BB1_17 Depth=1
                                        ;     Parent Loop BB1_26 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x21], #4
	ldr	s2, [x22]
	fmadd	s1, s0, s1, s2
	str	s1, [x22], #4
	subs	x23, x23, #1
	b.ne	LBB1_27
; %bb.28:                               ;   in Loop: Header=BB1_26 Depth=2
	add	x7, x7, #1
	add	x20, x20, x0
	cmp	x7, x10
	b.ne	LBB1_26
	b	LBB1_16
LBB1_29:
Ltmp7:
	mov	x0, x25
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp8:
; %bb.30:
	brk	#0x1
LBB1_31:
Ltmp9:
	mov	x19, x0
	ldr	x0, [x25]
	cbz	x0, LBB1_33
; %bb.32:
	str	x0, [x25, #8]
	bl	__ZdlPv
LBB1_33:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table1:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Ltmp5-Lfunc_begin1             ; >> Call Site 1 <<
	.uleb128 Ltmp6-Ltmp5                    ;   Call between Ltmp5 and Ltmp6
	.uleb128 Ltmp9-Lfunc_begin1             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin1             ; >> Call Site 2 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp7-Lfunc_begin1             ; >> Call Site 3 <<
	.uleb128 Ltmp8-Ltmp7                    ;   Call between Ltmp7 and Ltmp8
	.uleb128 Ltmp9-Lfunc_begin1             ;     jumps to Ltmp9
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp8-Lfunc_begin1             ; >> Call Site 4 <<
	.uleb128 Lfunc_end1-Ltmp8               ;   Call between Ltmp8 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z20matmul_tiled_reuse_aRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii ; -- Begin function _Z20matmul_tiled_reuse_aRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
	.p2align	2
__Z20matmul_tiled_reuse_aRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii: ; @_Z20matmul_tiled_reuse_aRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #336
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #256]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #272]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #288]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	mov	x20, x5
	mov	x21, x4
	mov	x22, x3
	mov	x28, x2
	mov	x24, x1
	mov	x25, x0
	mov	x26, x8
	mul	w8, w4, w2
	stp	xzr, xzr, [x26]
	str	xzr, [x26, #16]
	cbz	w8, LBB2_4
; %bb.1:
	sxtw	x19, w8
	tbnz	w19, #31, LBB2_37
; %bb.2:
	lsl	x27, x19, #2
Ltmp10:
	mov	x0, x27
	bl	__Znwm
Ltmp11:
; %bb.3:
	mov	x23, x0
	str	x0, [x26]
	add	x19, x0, x19, lsl #2
	str	x19, [x26, #16]
	mov	x1, x27
	bl	_bzero
	str	x19, [x26, #8]
	cmp	w28, #1
	b.ge	LBB2_5
	b	LBB2_36
LBB2_4:
	mov	x23, #0                         ; =0x0
	cmp	w28, #1
	b.lt	LBB2_36
LBB2_5:
	cmp	w22, #1
	b.lt	LBB2_36
; %bb.6:
	cmp	w21, #1
	b.lt	LBB2_36
; %bb.7:
	mov	x9, #0                          ; =0x0
	sxtw	x15, w20
	mov	w8, w21
	mov	w12, w22
	ldr	x13, [x25]
	stp	x8, x21, [sp, #136]             ; 16-byte Folded Spill
	mul	x8, x15, x8
	lsl	x8, x8, #2
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	sbfiz	x8, x20, #2, #32
	stp	x20, x8, [sp, #152]             ; 16-byte Folded Spill
	ldr	x8, [x24]
	ubfiz	x17, x21, #2, #32
	add	x10, x23, #32
	stp	x23, x10, [sp, #40]             ; 16-byte Folded Spill
	stp	xzr, x8, [sp, #24]              ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	w22, [sp, #60]                  ; 4-byte Folded Spill
	str	w28, [sp, #20]                  ; 4-byte Folded Spill
	stur	x15, [x29, #-152]               ; 8-byte Folded Spill
	b	LBB2_9
LBB2_8:                                 ;   in Loop: Header=BB2_9 Depth=1
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #40]                   ; 8-byte Folded Spill
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	add	x9, x9, x15
	ldr	w28, [sp, #20]                  ; 4-byte Folded Reload
	cmp	w9, w28
	b.ge	LBB2_36
LBB2_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB2_12 Depth 2
                                        ;       Child Loop BB2_15 Depth 3
                                        ;         Child Loop BB2_25 Depth 4
                                        ;           Child Loop BB2_27 Depth 5
                                        ;             Child Loop BB2_28 Depth 6
                                        ;           Child Loop BB2_31 Depth 5
                                        ;             Child Loop BB2_32 Depth 6
                                        ;             Child Loop BB2_35 Depth 6
                                        ;         Child Loop BB2_18 Depth 4
                                        ;           Child Loop BB2_19 Depth 5
                                        ;             Child Loop BB2_20 Depth 6
	add	w8, w9, w20
	cmp	w8, w28
	csel	w8, w8, w28, lt
	str	x9, [sp, #128]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB2_8
; %bb.10:                               ;   in Loop: Header=BB2_9 Depth=1
	mov	x10, #0                         ; =0x0
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	ldr	x11, [sp, #64]                  ; 8-byte Folded Reload
	mul	x9, x11, x9
	str	x9, [sp, #104]                  ; 8-byte Folded Spill
	add	x9, x9, #4
	stp	xzr, x9, [sp, #88]              ; 16-byte Folded Spill
	sxtw	x7, w8
	ldr	x9, [sp, #32]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	stp	x8, x9, [sp, #72]               ; 16-byte Folded Spill
	b	LBB2_12
LBB2_11:                                ;   in Loop: Header=BB2_12 Depth=2
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	add	x11, x8, #1
	ldp	x8, x9, [sp, #64]               ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #72]                   ; 8-byte Folded Spill
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #80]              ; 16-byte Folded Spill
	add	x10, x10, x15
	ldr	w22, [sp, #60]                  ; 4-byte Folded Reload
	cmp	w10, w22
	b.ge	LBB2_8
LBB2_12:                                ;   Parent Loop BB2_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB2_15 Depth 3
                                        ;         Child Loop BB2_25 Depth 4
                                        ;           Child Loop BB2_27 Depth 5
                                        ;             Child Loop BB2_28 Depth 6
                                        ;           Child Loop BB2_31 Depth 5
                                        ;             Child Loop BB2_32 Depth 6
                                        ;             Child Loop BB2_35 Depth 6
                                        ;         Child Loop BB2_18 Depth 4
                                        ;           Child Loop BB2_19 Depth 5
                                        ;             Child Loop BB2_20 Depth 6
	add	w8, w10, w20
	cmp	w8, w22
	csel	w8, w8, w22, lt
	cmp	w8, w10
	b.le	LBB2_11
; %bb.13:                               ;   in Loop: Header=BB2_12 Depth=2
	stur	xzr, [x29, #-112]               ; 8-byte Folded Spill
	mov	x0, #0                          ; =0x0
	mov	x14, #0                         ; =0x0
	ldr	x16, [sp, #88]                  ; 8-byte Folded Reload
	madd	w9, w20, w16, w20
	sxtw	x9, w9
	cmp	x12, x9
	csel	x9, x12, x9, lt
	add	x11, x10, #1
	cmp	x9, x11
	csinc	x9, x9, x10, gt
	mul	x11, x16, x15
	mvn	x11, x11
	add	x9, x9, x11
	sxtw	x28, w8
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	ldr	x11, [sp, #32]                  ; 8-byte Folded Reload
	madd	x8, x8, x16, x11
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	madd	x8, x17, x9, x8
	add	x8, x8, #4
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #40]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-96]                 ; 8-byte Folded Spill
	ldp	x19, x26, [sp, #72]             ; 16-byte Folded Reload
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-120]                ; 8-byte Folded Spill
	mov	w16, #1                         ; =0x1
	mov	x11, x20
	b	LBB2_15
LBB2_14:                                ;   in Loop: Header=BB2_15 Depth=3
	ldp	x8, x0, [x29, #-112]            ; 16-byte Folded Reload
	add	x0, x0, #1
	ldr	x20, [sp, #152]                 ; 8-byte Folded Reload
	ldp	x11, x16, [x29, #-136]          ; 16-byte Folded Reload
	add	w11, w11, w20
	ldur	x15, [x29, #-152]               ; 8-byte Folded Reload
	add	x16, x16, x15
	sub	x8, x8, x15
	stur	x8, [x29, #-112]                ; 8-byte Folded Spill
	ldr	x8, [sp, #160]                  ; 8-byte Folded Reload
	ldur	x9, [x29, #-120]                ; 8-byte Folded Reload
	add	x9, x9, x8
	stur	x9, [x29, #-120]                ; 8-byte Folded Spill
	add	x19, x19, x8
	add	x26, x26, x8
	ldur	x9, [x29, #-96]                 ; 8-byte Folded Reload
	add	x9, x9, x8
	stur	x9, [x29, #-96]                 ; 8-byte Folded Spill
	ldur	x8, [x29, #-144]                ; 8-byte Folded Reload
	mov	x14, x8
	ldr	x21, [sp, #144]                 ; 8-byte Folded Reload
	cmp	w8, w21
	b.ge	LBB2_11
LBB2_15:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB2_25 Depth 4
                                        ;           Child Loop BB2_27 Depth 5
                                        ;             Child Loop BB2_28 Depth 6
                                        ;           Child Loop BB2_31 Depth 5
                                        ;             Child Loop BB2_32 Depth 6
                                        ;             Child Loop BB2_35 Depth 6
                                        ;         Child Loop BB2_18 Depth 4
                                        ;           Child Loop BB2_19 Depth 5
                                        ;             Child Loop BB2_20 Depth 6
	stur	x11, [x29, #-136]               ; 8-byte Folded Spill
	sxtw	x8, w11
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	cmp	x8, x11
	csel	x8, x8, x11, lt
	cmp	x8, x16
	stur	x16, [x29, #-128]               ; 8-byte Folded Spill
	csel	x8, x8, x16, gt
	stur	x0, [x29, #-104]                ; 8-byte Folded Spill
	madd	w9, w20, w0, w20
	sxtw	x9, w9
	cmp	x11, x9
	csel	x9, x11, x9, lt
	add	x11, x14, #1
	cmp	x9, x11
	csinc	x9, x9, x14, gt
	add	x11, x14, x15
	cmp	w11, w21
	stur	x11, [x29, #-144]               ; 8-byte Folded Spill
	csel	w15, w11, w21, lt
	cmp	w15, w14
	b.le	LBB2_14
; %bb.16:                               ;   in Loop: Header=BB2_15 Depth=3
	ldur	x11, [x29, #-152]               ; 8-byte Folded Reload
	ldur	x16, [x29, #-104]               ; 8-byte Folded Reload
	mul	x11, x16, x11
	sub	x1, x9, x11
	sxtw	x5, w15
	cmp	x1, #16
	b.hs	LBB2_23
; %bb.17:                               ;   in Loop: Header=BB2_15 Depth=3
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
LBB2_18:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB2_19 Depth 5
                                        ;             Child Loop BB2_20 Depth 6
	mul	x11, x9, x12
	add	x11, x13, x11, lsl #2
	mov	x15, x26
	mov	x16, x10
LBB2_19:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ;         Parent Loop BB2_18 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB2_20 Depth 6
	mov	x0, #0                          ; =0x0
	ldr	s0, [x11, x16, lsl #2]
LBB2_20:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ;         Parent Loop BB2_18 Depth=4
                                        ;           Parent Loop BB2_19 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	s1, [x15, x0, lsl #2]
	ldr	s2, [x8, x0, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x8, x0, lsl #2]
	add	x0, x0, #1
	add	x1, x14, x0
	cmp	x1, x5
	b.lt	LBB2_20
; %bb.21:                               ;   in Loop: Header=BB2_19 Depth=5
	add	x16, x16, #1
	add	x15, x15, x17
	cmp	x16, x28
	b.lt	LBB2_19
; %bb.22:                               ;   in Loop: Header=BB2_18 Depth=4
	add	x9, x9, #1
	add	x8, x8, x17
	cmp	x9, x7
	b.lt	LBB2_18
	b	LBB2_14
LBB2_23:                                ;   in Loop: Header=BB2_15 Depth=3
	mov	x30, #0                         ; =0x0
	ldp	x27, x15, [x29, #-120]          ; 16-byte Folded Reload
	add	x8, x8, x15
	and	x22, x8, #0xfffffffffffffff0
	ldr	x8, [sp, #160]                  ; 8-byte Folded Reload
	mul	x15, x8, x16
	ldp	x8, x16, [sp, #104]             ; 16-byte Folded Reload
	add	x8, x8, x15
	mvn	x11, x11
	add	x9, x9, x11
	lsl	x11, x9, #2
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	add	x9, x9, x15
	add	x3, x9, x11
	ldr	x9, [sp, #120]                  ; 8-byte Folded Reload
	add	x9, x9, x15
	add	x15, x16, x15
	add	x21, x15, x11
	and	x20, x1, #0xfffffffffffffff0
	ldur	x2, [x29, #-96]                 ; 8-byte Folded Reload
	ldr	x15, [sp, #128]                 ; 8-byte Folded Reload
	b	LBB2_25
LBB2_24:                                ;   in Loop: Header=BB2_25 Depth=4
	add	x15, x15, #1
	add	x30, x30, #1
	add	x27, x27, x17
	add	x2, x2, x17
	cmp	x15, x7
	b.ge	LBB2_14
LBB2_25:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB2_27 Depth 5
                                        ;             Child Loop BB2_28 Depth 6
                                        ;           Child Loop BB2_31 Depth 5
                                        ;             Child Loop BB2_32 Depth 6
                                        ;             Child Loop BB2_35 Depth 6
	mul	x11, x17, x30
	add	x16, x8, x11
	add	x16, x23, x16
	add	x11, x3, x11
	add	x11, x23, x11
	mul	x0, x15, x12
	add	x6, x13, x0, lsl #2
	cmp	x16, x21
	ccmp	x9, x11, #2, lo
	mov	x24, x26
	mov	x11, x19
	mov	x4, x10
	b.hs	LBB2_31
; %bb.26:                               ;   in Loop: Header=BB2_25 Depth=4
	mov	x11, x26
	mov	x16, x10
LBB2_27:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ;         Parent Loop BB2_25 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB2_28 Depth 6
	mov	x0, #0                          ; =0x0
	ldr	s0, [x6, x16, lsl #2]
LBB2_28:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ;         Parent Loop BB2_25 Depth=4
                                        ;           Parent Loop BB2_27 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	s1, [x11, x0, lsl #2]
	ldr	s2, [x2, x0, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x2, x0, lsl #2]
	add	x0, x0, #1
	add	x4, x14, x0
	cmp	x4, x5
	b.lt	LBB2_28
; %bb.29:                               ;   in Loop: Header=BB2_27 Depth=5
	add	x16, x16, #1
	add	x11, x11, x17
	cmp	x16, x28
	b.lt	LBB2_27
	b	LBB2_24
LBB2_30:                                ;   in Loop: Header=BB2_31 Depth=5
	add	x4, x4, #1
	add	x11, x11, x17
	add	x24, x24, x17
	cmp	x4, x28
	b.ge	LBB2_24
LBB2_31:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ;         Parent Loop BB2_25 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB2_32 Depth 6
                                        ;             Child Loop BB2_35 Depth 6
	ldr	s0, [x6, x4, lsl #2]
	dup.4s	v1, v0[0]
	mov	x25, x11
	mov	x0, x27
	mov	x16, x22
LBB2_32:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ;         Parent Loop BB2_25 Depth=4
                                        ;           Parent Loop BB2_31 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldp	q2, q3, [x25, #-32]
	ldp	q4, q5, [x25], #64
	ldp	q6, q7, [x0, #-32]
	ldp	q16, q17, [x0]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x0, #-32]
	stp	q16, q17, [x0], #64
	subs	x16, x16, #16
	b.ne	LBB2_32
; %bb.33:                               ;   in Loop: Header=BB2_31 Depth=5
	cmp	x1, x20
	b.eq	LBB2_30
; %bb.34:                               ;   in Loop: Header=BB2_31 Depth=5
	mov	x16, x22
LBB2_35:                                ;   Parent Loop BB2_9 Depth=1
                                        ;     Parent Loop BB2_12 Depth=2
                                        ;       Parent Loop BB2_15 Depth=3
                                        ;         Parent Loop BB2_25 Depth=4
                                        ;           Parent Loop BB2_31 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	s1, [x24, x16, lsl #2]
	ldr	s2, [x2, x16, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x2, x16, lsl #2]
	add	x16, x16, #1
	add	x0, x14, x16
	cmp	x0, x5
	b.lt	LBB2_35
	b	LBB2_30
LBB2_36:
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #304]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #288]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #272]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB2_37:
Ltmp12:
	mov	x0, x26
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp13:
; %bb.38:
	brk	#0x1
LBB2_39:
Ltmp14:
	mov	x19, x0
	ldr	x0, [x26]
	cbz	x0, LBB2_41
; %bb.40:
	str	x0, [x26, #8]
	bl	__ZdlPv
LBB2_41:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table2:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp10-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp11-Ltmp10                  ;   Call between Ltmp10 and Ltmp11
	.uleb128 Ltmp14-Lfunc_begin2            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp12-Ltmp11                  ;   Call between Ltmp11 and Ltmp12
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp12-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp13-Ltmp12                  ;   Call between Ltmp12 and Ltmp13
	.uleb128 Ltmp14-Lfunc_begin2            ;     jumps to Ltmp14
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp13-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Lfunc_end2-Ltmp13              ;   Call between Ltmp13 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z30matmul_tiled_accumulate_outputRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii ; -- Begin function _Z30matmul_tiled_accumulate_outputRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
	.p2align	2
__Z30matmul_tiled_accumulate_outputRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii: ; @_Z30matmul_tiled_accumulate_outputRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #336
	stp	x28, x27, [sp, #240]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #256]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #272]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #288]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #304]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #320]            ; 16-byte Folded Spill
	add	x29, sp, #320
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
                                        ; kill: def $w5 killed $w5 def $x5
	stur	x5, [x29, #-152]                ; 8-byte Folded Spill
	mov	x20, x4
	mov	x21, x3
	mov	x22, x2
	mov	x24, x1
	mov	x25, x0
	mov	x26, x8
	mul	w8, w4, w2
	stp	xzr, xzr, [x26]
	str	xzr, [x26, #16]
	cbz	w8, LBB3_4
; %bb.1:
	sxtw	x19, w8
	tbnz	w19, #31, LBB3_40
; %bb.2:
	lsl	x27, x19, #2
Ltmp15:
	mov	x0, x27
	bl	__Znwm
Ltmp16:
; %bb.3:
	mov	x23, x0
	str	x0, [x26]
	add	x19, x0, x19, lsl #2
	str	x19, [x26, #16]
	mov	x1, x27
	bl	_bzero
	str	x19, [x26, #8]
	cmp	w22, #1
	b.ge	LBB3_5
	b	LBB3_39
LBB3_4:
	mov	x23, #0                         ; =0x0
	cmp	w22, #1
	b.lt	LBB3_39
LBB3_5:
	cmp	w20, #1
	b.lt	LBB3_39
; %bb.6:
	cmp	w21, #1
	b.lt	LBB3_39
; %bb.7:
	str	xzr, [sp, #40]                  ; 8-byte Folded Spill
	mov	x10, #0                         ; =0x0
	ldur	x9, [x29, #-152]                ; 8-byte Folded Reload
	sxtw	x8, w9
	mov	w11, w20
	mov	w12, w21
	ldr	x13, [x25]
	stur	x8, [x29, #-112]                ; 8-byte Folded Spill
	str	x11, [sp, #72]                  ; 8-byte Folded Spill
	mul	x8, x8, x11
	lsl	x8, x8, #2
	stur	x8, [x29, #-120]                ; 8-byte Folded Spill
	sbfiz	x8, x9, #2, #32
	stp	x20, x8, [sp, #80]              ; 16-byte Folded Spill
	ldr	x8, [x24]
	ubfiz	x17, x20, #2, #32
	add	x9, x23, #32
	stp	x23, x9, [sp, #24]              ; 16-byte Folded Spill
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	str	w21, [sp, #156]                 ; 4-byte Folded Spill
	str	w22, [sp, #20]                  ; 4-byte Folded Spill
	b	LBB3_9
LBB3_8:                                 ;   in Loop: Header=BB3_9 Depth=1
	ldp	x9, x8, [sp, #32]               ; 16-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	ldur	x8, [x29, #-120]                ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #32]                   ; 8-byte Folded Spill
	ldr	x9, [sp, #24]                   ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #24]                   ; 8-byte Folded Spill
	ldr	x10, [sp, #160]                 ; 8-byte Folded Reload
	ldur	x8, [x29, #-112]                ; 8-byte Folded Reload
	add	x10, x10, x8
	ldr	w22, [sp, #20]                  ; 4-byte Folded Reload
	cmp	w10, w22
	b.ge	LBB3_39
LBB3_9:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_12 Depth 2
                                        ;       Child Loop BB3_25 Depth 3
                                        ;         Child Loop BB3_28 Depth 4
                                        ;           Child Loop BB3_30 Depth 5
                                        ;             Child Loop BB3_31 Depth 6
                                        ;           Child Loop BB3_34 Depth 5
                                        ;             Child Loop BB3_35 Depth 6
                                        ;             Child Loop BB3_38 Depth 6
                                        ;       Child Loop BB3_16 Depth 3
                                        ;         Child Loop BB3_18 Depth 4
                                        ;           Child Loop BB3_19 Depth 5
                                        ;             Child Loop BB3_20 Depth 6
	ldur	x8, [x29, #-152]                ; 8-byte Folded Reload
	add	w8, w10, w8
	cmp	w8, w22
	csel	w8, w8, w22, lt
	str	x10, [sp, #160]                 ; 8-byte Folded Spill
	cmp	w8, w10
	b.le	LBB3_8
; %bb.10:                               ;   in Loop: Header=BB3_9 Depth=1
	mov	x11, #0                         ; =0x0
	mov	x4, #0                          ; =0x0
	ldr	x9, [sp, #40]                   ; 8-byte Folded Reload
	ldur	x10, [x29, #-120]               ; 8-byte Folded Reload
	mul	x9, x10, x9
	str	x9, [sp, #56]                   ; 8-byte Folded Spill
	add	x9, x9, #4
	str	x9, [sp, #48]                   ; 8-byte Folded Spill
	sxtw	x7, w8
	ldr	x8, [sp, #64]                   ; 8-byte Folded Reload
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #24]                   ; 8-byte Folded Reload
	stur	x8, [x29, #-144]                ; 8-byte Folded Spill
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #32]                   ; 8-byte Folded Reload
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	b	LBB3_12
LBB3_11:                                ;   in Loop: Header=BB3_12 Depth=2
	ldr	x11, [sp, #104]                 ; 8-byte Folded Reload
	add	x11, x11, #1
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #96]                   ; 8-byte Folded Spill
	ldur	x9, [x29, #-144]                ; 8-byte Folded Reload
	add	x9, x9, x8
	stur	x9, [x29, #-144]                ; 8-byte Folded Spill
	ldr	x9, [sp, #112]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #112]                  ; 8-byte Folded Spill
	ldur	x8, [x29, #-112]                ; 8-byte Folded Reload
	add	x4, x4, x8
	ldr	x20, [sp, #80]                  ; 8-byte Folded Reload
	cmp	w4, w20
	b.ge	LBB3_8
LBB3_12:                                ;   Parent Loop BB3_9 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB3_25 Depth 3
                                        ;         Child Loop BB3_28 Depth 4
                                        ;           Child Loop BB3_30 Depth 5
                                        ;             Child Loop BB3_31 Depth 6
                                        ;           Child Loop BB3_34 Depth 5
                                        ;             Child Loop BB3_35 Depth 6
                                        ;             Child Loop BB3_38 Depth 6
                                        ;       Child Loop BB3_16 Depth 3
                                        ;         Child Loop BB3_18 Depth 4
                                        ;           Child Loop BB3_19 Depth 5
                                        ;             Child Loop BB3_20 Depth 6
	ldur	x10, [x29, #-152]               ; 8-byte Folded Reload
	str	x11, [sp, #104]                 ; 8-byte Folded Spill
	madd	w8, w10, w11, w10
	sxtw	x8, w8
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	cmp	x9, x8
	csel	x8, x9, x8, lt
	add	x9, x4, #1
	cmp	x8, x9
	csinc	x8, x8, x4, gt
	add	w9, w4, w10
	cmp	w9, w20
	csel	w10, w9, w20, lt
	cmp	w10, w4
	b.le	LBB3_11
; %bb.13:                               ;   in Loop: Header=BB3_12 Depth=2
	ldur	x9, [x29, #-112]                ; 8-byte Folded Reload
	ldr	x11, [sp, #104]                 ; 8-byte Folded Reload
	mul	x9, x11, x9
	sub	x30, x8, x9
	sxtw	x28, w10
	cmp	x30, #16
	b.hs	LBB3_23
; %bb.14:                               ;   in Loop: Header=BB3_12 Depth=2
	mov	x9, #0                          ; =0x0
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	b	LBB3_16
LBB3_15:                                ;   in Loop: Header=BB3_16 Depth=3
	ldur	x9, [x29, #-120]                ; 8-byte Folded Reload
	add	x8, x8, x9
	mov	x9, x10
	cmp	w10, w21
	b.ge	LBB3_11
LBB3_16:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB3_18 Depth 4
                                        ;           Child Loop BB3_19 Depth 5
                                        ;             Child Loop BB3_20 Depth 6
	ldur	x10, [x29, #-112]               ; 8-byte Folded Reload
	add	x10, x9, x10
	cmp	w10, w21
	csel	w11, w10, w21, lt
	cmp	w11, w9
	b.le	LBB3_15
; %bb.17:                               ;   in Loop: Header=BB3_16 Depth=3
	sxtw	x11, w11
	ldur	x14, [x29, #-144]               ; 8-byte Folded Reload
	ldr	x15, [sp, #160]                 ; 8-byte Folded Reload
LBB3_18:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_16 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB3_19 Depth 5
                                        ;             Child Loop BB3_20 Depth 6
	mul	x16, x15, x12
	add	x16, x13, x16, lsl #2
	mov	x0, x8
	mov	x1, x9
LBB3_19:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_16 Depth=3
                                        ;         Parent Loop BB3_18 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB3_20 Depth 6
	mov	x2, #0                          ; =0x0
	ldr	s0, [x16, x1, lsl #2]
LBB3_20:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_16 Depth=3
                                        ;         Parent Loop BB3_18 Depth=4
                                        ;           Parent Loop BB3_19 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	s1, [x0, x2, lsl #2]
	ldr	s2, [x14, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x14, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x4, x2
	cmp	x3, x28
	b.lt	LBB3_20
; %bb.21:                               ;   in Loop: Header=BB3_19 Depth=5
	add	x1, x1, #1
	add	x0, x0, x17
	cmp	x1, x11
	b.lt	LBB3_19
; %bb.22:                               ;   in Loop: Header=BB3_18 Depth=4
	add	x15, x15, #1
	add	x14, x14, x17
	cmp	x15, x7
	b.lt	LBB3_18
	b	LBB3_15
LBB3_23:                                ;   in Loop: Header=BB3_12 Depth=2
	mov	x15, #0                         ; =0x0
	mov	x20, #0                         ; =0x0
	ldr	x10, [sp, #88]                  ; 8-byte Folded Reload
	mul	x10, x10, x11
	ldr	x11, [sp, #56]                  ; 8-byte Folded Reload
	add	x11, x11, x10
	stur	x11, [x29, #-96]                ; 8-byte Folded Spill
	mvn	x9, x9
	add	x8, x8, x9
	lsl	x8, x8, #2
	ldr	x9, [sp, #48]                   ; 8-byte Folded Reload
	add	x9, x9, x10
	add	x6, x9, x8
	ldr	x14, [sp, #64]                  ; 8-byte Folded Reload
	add	x9, x14, x10
	add	x8, x9, x8
	add	x8, x8, #4
	stp	x8, x9, [sp, #128]              ; 16-byte Folded Spill
	and	x22, x30, #0xfffffffffffffff0
	add	x2, x4, x22
	lsr	x8, x30, #4
	ldur	x9, [x29, #-144]                ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	stur	x8, [x29, #-104]                ; 8-byte Folded Spill
	ldr	x1, [sp, #96]                   ; 8-byte Folded Reload
	b	LBB3_25
LBB3_24:                                ;   in Loop: Header=BB3_25 Depth=3
	ldp	x15, x8, [x29, #-128]           ; 16-byte Folded Reload
	add	x15, x15, #1
	add	x1, x1, x8
	add	x14, x14, x8
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	add	x9, x9, x8
	stur	x9, [x29, #-104]                ; 8-byte Folded Spill
	ldur	x8, [x29, #-136]                ; 8-byte Folded Reload
	mov	x20, x8
	ldr	w21, [sp, #156]                 ; 4-byte Folded Reload
	cmp	w8, w21
	b.ge	LBB3_11
LBB3_25:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB3_28 Depth 4
                                        ;           Child Loop BB3_30 Depth 5
                                        ;             Child Loop BB3_31 Depth 6
                                        ;           Child Loop BB3_34 Depth 5
                                        ;             Child Loop BB3_35 Depth 6
                                        ;             Child Loop BB3_38 Depth 6
	ldur	x8, [x29, #-152]                ; 8-byte Folded Reload
	madd	w8, w8, w15, w8
	sxtw	x8, w8
	cmp	x12, x8
	csel	x8, x12, x8, lt
	add	x9, x20, #1
	cmp	x8, x9
	csinc	x9, x8, x20, gt
	ldur	x8, [x29, #-112]                ; 8-byte Folded Reload
	add	x8, x20, x8
	cmp	w8, w21
	stp	x8, x15, [x29, #-136]           ; 16-byte Folded Spill
	csel	w10, w8, w21, lt
	cmp	w10, w20
	b.le	LBB3_24
; %bb.26:                               ;   in Loop: Header=BB3_25 Depth=3
	mov	x8, #0                          ; =0x0
	ldp	x0, x11, [x29, #-128]           ; 16-byte Folded Reload
	mul	x15, x11, x0
	ldp	x16, x11, [sp, #128]            ; 16-byte Folded Reload
	add	x11, x11, x15
	add	x15, x16, x15
	ldur	x16, [x29, #-112]               ; 8-byte Folded Reload
	mul	x16, x0, x16
	mvn	x16, x16
	add	x9, x9, x16
	madd	x5, x17, x9, x15
	sxtw	x9, w10
	ldur	x25, [x29, #-144]               ; 8-byte Folded Reload
	ldr	x19, [sp, #120]                 ; 8-byte Folded Reload
	ldr	x24, [sp, #144]                 ; 8-byte Folded Reload
	ldr	x3, [sp, #160]                  ; 8-byte Folded Reload
	b	LBB3_28
LBB3_27:                                ;   in Loop: Header=BB3_28 Depth=4
	add	x3, x3, #1
	add	x8, x8, #1
	add	x24, x24, x17
	add	x19, x19, x17
	add	x25, x25, x17
	cmp	x3, x7
	b.ge	LBB3_24
LBB3_28:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_25 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB3_30 Depth 5
                                        ;             Child Loop BB3_31 Depth 6
                                        ;           Child Loop BB3_34 Depth 5
                                        ;             Child Loop BB3_35 Depth 6
                                        ;             Child Loop BB3_38 Depth 6
	mul	x10, x17, x8
	ldur	x15, [x29, #-96]                ; 8-byte Folded Reload
	add	x15, x15, x10
	add	x15, x23, x15
	add	x10, x6, x10
	add	x16, x23, x10
	mul	x10, x3, x12
	add	x10, x13, x10, lsl #2
	cmp	x15, x5
	ccmp	x11, x16, #2, lo
	mov	x15, x14
	mov	x21, x1
	mov	x16, x20
	b.hs	LBB3_34
; %bb.29:                               ;   in Loop: Header=BB3_28 Depth=4
	ldur	x15, [x29, #-104]               ; 8-byte Folded Reload
	mov	x16, x20
LBB3_30:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_25 Depth=3
                                        ;         Parent Loop BB3_28 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB3_31 Depth 6
	mov	x0, #0                          ; =0x0
	ldr	s0, [x10, x16, lsl #2]
LBB3_31:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_25 Depth=3
                                        ;         Parent Loop BB3_28 Depth=4
                                        ;           Parent Loop BB3_30 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	s1, [x15, x0, lsl #2]
	ldr	s2, [x25, x0, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x25, x0, lsl #2]
	add	x0, x0, #1
	add	x21, x4, x0
	cmp	x21, x28
	b.lt	LBB3_31
; %bb.32:                               ;   in Loop: Header=BB3_30 Depth=5
	add	x16, x16, #1
	add	x15, x15, x17
	cmp	x16, x9
	b.lt	LBB3_30
	b	LBB3_27
LBB3_33:                                ;   in Loop: Header=BB3_34 Depth=5
	add	x16, x16, #1
	add	x21, x21, x17
	add	x15, x15, x17
	cmp	x16, x9
	b.ge	LBB3_27
LBB3_34:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_25 Depth=3
                                        ;         Parent Loop BB3_28 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB3_35 Depth 6
                                        ;             Child Loop BB3_38 Depth 6
	ldr	s0, [x10, x16, lsl #2]
	dup.4s	v1, v0[0]
	mov	x26, x21
	mov	x27, x24
	mov	x0, x22
LBB3_35:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_25 Depth=3
                                        ;         Parent Loop BB3_28 Depth=4
                                        ;           Parent Loop BB3_34 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldp	q2, q3, [x26, #-32]
	ldp	q4, q5, [x26], #64
	ldp	q6, q7, [x27, #-32]
	ldp	q16, q17, [x27]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x27, #-32]
	stp	q16, q17, [x27], #64
	subs	x0, x0, #16
	b.ne	LBB3_35
; %bb.36:                               ;   in Loop: Header=BB3_34 Depth=5
	cmp	x30, x22
	b.eq	LBB3_33
; %bb.37:                               ;   in Loop: Header=BB3_34 Depth=5
	mov	x0, x19
	mov	x26, x2
LBB3_38:                                ;   Parent Loop BB3_9 Depth=1
                                        ;     Parent Loop BB3_12 Depth=2
                                        ;       Parent Loop BB3_25 Depth=3
                                        ;         Parent Loop BB3_28 Depth=4
                                        ;           Parent Loop BB3_34 Depth=5
                                        ; =>          This Inner Loop Header: Depth=6
	ldr	s1, [x15, x26, lsl #2]
	ldr	s2, [x0]
	fmadd	s1, s0, s1, s2
	str	s1, [x0], #4
	add	x26, x26, #1
	cmp	x26, x28
	b.lt	LBB3_38
	b	LBB3_33
LBB3_39:
	ldp	x29, x30, [sp, #320]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #304]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #288]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #272]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #256]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #240]            ; 16-byte Folded Reload
	add	sp, sp, #336
	ret
LBB3_40:
Ltmp17:
	mov	x0, x26
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp18:
; %bb.41:
	brk	#0x1
LBB3_42:
Ltmp19:
	mov	x19, x0
	ldr	x0, [x26]
	cbz	x0, LBB3_44
; %bb.43:
	str	x0, [x26, #8]
	bl	__ZdlPv
LBB3_44:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table3:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Ltmp15-Lfunc_begin3            ; >> Call Site 1 <<
	.uleb128 Ltmp16-Ltmp15                  ;   Call between Ltmp15 and Ltmp16
	.uleb128 Ltmp19-Lfunc_begin3            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp17-Ltmp16                  ;   Call between Ltmp16 and Ltmp17
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp18-Ltmp17                  ;   Call between Ltmp17 and Ltmp18
	.uleb128 Ltmp19-Lfunc_begin3            ;     jumps to Ltmp19
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp18-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Lfunc_end3-Ltmp18              ;   Call between Ltmp18 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii ; -- Begin function _Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
	.p2align	2
__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii: ; @_Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	sub	sp, sp, #496
	stp	x28, x27, [sp, #400]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #416]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #432]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #448]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #464]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #480]            ; 16-byte Folded Spill
	add	x29, sp, #480
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
                                        ; kill: def $w4 killed $w4 def $x4
                                        ; kill: def $w3 killed $w3 def $x3
	mov	x20, x2
	mov	x23, x8
	cmp	w5, #3
	stur	x4, [x29, #-96]                 ; 8-byte Folded Spill
	str	x3, [sp, #184]                  ; 8-byte Folded Spill
	b.le	LBB4_8
; %bb.1:
	cmp	w5, #4
	str	x20, [sp, #16]                  ; 8-byte Folded Spill
	b.eq	LBB4_14
; %bb.2:
	cmp	w5, #8
	b.eq	LBB4_18
; %bb.3:
	cmp	w5, #16
	b.ne	LBB4_181
; %bb.4:
	ldr	x11, [x0]
	ldr	x10, [x1]
	negs	w8, w20
	and	w8, w8, #0xf
	and	w9, w20, #0xf
	csneg	w21, w9, w8, mi
	mul	w8, w4, w20
	stp	xzr, xzr, [x23, #8]
	str	xzr, [x23]
	stp	x10, x11, [x29, #-144]          ; 16-byte Folded Spill
	cbz	w8, LBB4_108
; %bb.5:
	sxtw	x19, w8
	tbnz	w19, #31, LBB4_183
; %bb.6:
	lsl	x24, x19, #2
Ltmp20:
	mov	x0, x24
	bl	__Znwm
Ltmp21:
; %bb.7:
	str	x0, [x23]
	add	x19, x0, x19, lsl #2
	str	x19, [x23, #16]
	stur	x0, [x29, #-160]                ; 8-byte Folded Spill
	mov	x1, x24
	bl	_bzero
	str	x19, [x23, #8]
	stur	w21, [x29, #-168]               ; 4-byte Folded Spill
	sub	w8, w20, w21
	stur	x8, [x29, #-120]                ; 8-byte Folded Spill
	cmp	w8, #1
	b.ge	LBB4_109
	b	LBB4_117
LBB4_8:
	cmp	w5, #1
	b.eq	LBB4_22
; %bb.9:
	cmp	w5, #2
	b.ne	LBB4_181
; %bb.10:
	ldr	x8, [x0]
	stur	x8, [x29, #-104]                ; 8-byte Folded Spill
	ldr	x25, [x1]
	and	w8, w20, #0x1
	cmp	w20, #0
	cneg	w21, w8, lt
	mul	w8, w4, w20
	stp	xzr, xzr, [x23, #8]
	str	xzr, [x23]
	cbz	w8, LBB4_139
; %bb.11:
	sxtw	x19, w8
	tbnz	w19, #31, LBB4_184
; %bb.12:
	lsl	x24, x19, #2
Ltmp35:
	mov	x0, x24
	bl	__Znwm
Ltmp36:
; %bb.13:
	mov	x22, x0
	str	x0, [x23]
	add	x19, x0, x19, lsl #2
	str	x19, [x23, #16]
	mov	x1, x24
	bl	_bzero
	str	x19, [x23, #8]
	str	x20, [sp, #16]                  ; 8-byte Folded Spill
	stur	w21, [x29, #-168]               ; 4-byte Folded Spill
	sub	w8, w20, w21
	cmp	w8, #1
	b.ge	LBB4_140
	b	LBB4_168
LBB4_14:
	ldr	x10, [x0]
	ldr	x8, [x1]
	stur	x8, [x29, #-128]                ; 8-byte Folded Spill
	negs	w8, w20
	and	w8, w8, #0x3
	and	w9, w20, #0x3
	csneg	w22, w9, w8, mi
	mul	w8, w4, w20
	stp	xzr, xzr, [x23, #8]
	str	xzr, [x23]
	stur	x10, [x29, #-224]               ; 8-byte Folded Spill
	cbz	w8, LBB4_23
; %bb.15:
	sxtw	x19, w8
	tbnz	w19, #31, LBB4_185
; %bb.16:
	lsl	x24, x19, #2
Ltmp30:
	mov	x0, x24
	bl	__Znwm
Ltmp31:
; %bb.17:
	str	x0, [x23]
	add	x19, x0, x19, lsl #2
	str	x19, [x23, #16]
	mov	x1, x24
	mov	x21, x0
	bl	_bzero
	mov	x9, x21
	str	x19, [x23, #8]
	ldur	x4, [x29, #-96]                 ; 8-byte Folded Reload
	str	w22, [sp, #236]                 ; 4-byte Folded Spill
	sub	w8, w20, w22
	stur	x8, [x29, #-136]                ; 8-byte Folded Spill
	cmp	w8, #1
	b.ge	LBB4_24
	b	LBB4_46
LBB4_18:
	ldr	x8, [x0]
	str	x8, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x8, [x1]
	stur	x8, [x29, #-136]                ; 8-byte Folded Spill
	negs	w8, w20
	and	w8, w8, #0x7
	and	w9, w20, #0x7
	csneg	w21, w9, w8, mi
	mul	w8, w4, w20
	stp	xzr, xzr, [x23, #8]
	str	xzr, [x23]
	cbz	w8, LBB4_68
; %bb.19:
	sxtw	x19, w8
	tbnz	w19, #31, LBB4_186
; %bb.20:
	lsl	x24, x19, #2
Ltmp25:
	mov	x0, x24
	bl	__Znwm
Ltmp26:
; %bb.21:
	str	x0, [x23]
	add	x19, x0, x19, lsl #2
	str	x19, [x23, #16]
	str	x0, [sp, #176]                  ; 8-byte Folded Spill
	mov	x1, x24
	bl	_bzero
	str	x19, [x23, #8]
	str	w21, [sp, #12]                  ; 4-byte Folded Spill
	sub	w8, w20, w21
	stur	x8, [x29, #-144]                ; 8-byte Folded Spill
	cmp	w8, #1
	b.ge	LBB4_69
	b	LBB4_86
LBB4_22:
	mov	x8, x23
	mov	x2, x20
                                        ; kill: def $w3 killed $w3 killed $x3
                                        ; kill: def $w4 killed $w4 killed $x4
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #464]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #448]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #432]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #416]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #400]            ; 16-byte Folded Reload
	add	sp, sp, #496
	b	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
LBB4_23:
	mov	x9, #0                          ; =0x0
	str	w22, [sp, #236]                 ; 4-byte Folded Spill
	sub	w8, w20, w22
	stur	x8, [x29, #-136]                ; 8-byte Folded Spill
	cmp	w8, #1
	b.lt	LBB4_46
LBB4_24:
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	cmp	w8, #1
	b.lt	LBB4_46
; %bb.25:
	cmp	w4, #1
	b.lt	LBB4_46
; %bb.26:
	mov	x6, #0                          ; =0x0
	mov	x10, #0                         ; =0x0
	sxtw	x1, w4
	mov	w12, w4
	add	x8, x1, x1, lsl #1
	ldr	x5, [sp, #184]                  ; 8-byte Folded Reload
	sxtw	x13, w5
	add	x11, x13, x13, lsl #1
	ubfiz	x14, x4, #2, #32
	lsl	x15, x1, #2
	lsl	x16, x1, #3
	lsl	x17, x8, #2
	umull	x8, w4, w5
	and	x0, x12, #0x7ffffffc
	add	x7, x9, x17
	add	x2, x9, x16
	add	x3, x9, x15
	mov	x4, x9
	ldur	x9, [x29, #-128]                ; 8-byte Folded Reload
	add	x19, x9, #12
	str	x19, [sp, #240]                 ; 8-byte Folded Spill
	add	x19, x4, x14
	stp	x19, x3, [x29, #-168]           ; 16-byte Folded Spill
	stur	x1, [x29, #-232]                ; 8-byte Folded Spill
	lsl	x19, x1, #4
	lsl	x1, x13, #4
	stp	x1, x19, [x29, #-184]           ; 16-byte Folded Spill
	add	x1, x15, x14
	add	x1, x4, x1
	lsl	x23, x13, #3
	lsl	x24, x11, #2
	add	x11, x16, x14
	add	x11, x4, x11
	stp	x11, x1, [x29, #-200]           ; 16-byte Folded Spill
	add	x11, x17, x14
	add	x11, x4, x11
	stur	x11, [x29, #-208]               ; 8-byte Folded Spill
	ldur	x11, [x29, #-224]               ; 8-byte Folded Reload
	stur	x11, [x29, #-104]               ; 8-byte Folded Spill
	stp	x2, x7, [x29, #-152]            ; 16-byte Folded Spill
	mov	x1, x7
	mov	x21, x4
	mov	w11, w5
	add	x8, x9, x8, lsl #2
	stur	x8, [x29, #-216]                ; 8-byte Folded Spill
	mov	x9, x4
	b	LBB4_28
LBB4_27:                                ;   in Loop: Header=BB4_28 Depth=1
	add	x10, x10, #4
	add	x6, x6, #1
	ldp	x8, x19, [x29, #-184]           ; 16-byte Folded Reload
	add	x21, x21, x19
	add	x1, x1, x19
	add	x2, x2, x19
	add	x3, x3, x19
	ldur	x4, [x29, #-104]                ; 8-byte Folded Reload
	add	x4, x4, x8
	stur	x4, [x29, #-104]                ; 8-byte Folded Spill
	ldur	x8, [x29, #-136]                ; 8-byte Folded Reload
	cmp	x10, x8
	b.hs	LBB4_46
LBB4_28:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_40 Depth 2
                                        ;       Child Loop BB4_43 Depth 3
                                        ;       Child Loop BB4_45 Depth 3
                                        ;     Child Loop BB4_31 Depth 2
	stur	x6, [x29, #-112]                ; 8-byte Folded Spill
	mul	x8, x19, x6
	add	x4, x9, x8
	ldur	x5, [x29, #-168]                ; 8-byte Folded Reload
	add	x22, x5, x8
	ldur	x5, [x29, #-200]                ; 8-byte Folded Reload
	add	x27, x5, x8
	ldur	x5, [x29, #-160]                ; 8-byte Folded Reload
	add	x26, x5, x8
	ldur	x5, [x29, #-208]                ; 8-byte Folded Reload
	add	x30, x5, x8
	ldp	x6, x5, [x29, #-152]            ; 16-byte Folded Reload
	add	x28, x6, x8
	add	x5, x5, x8
	orr	x7, x10, #0x1
	orr	x20, x10, #0x2
	orr	x6, x10, #0x3
	stur	x6, [x29, #-120]                ; 8-byte Folded Spill
	ldur	x6, [x29, #-192]                ; 8-byte Folded Reload
	add	x8, x6, x8
	cmp	x4, x8
	ccmp	x26, x22, #2, lo
	cset	w6, lo
	cmp	x4, x27
	ccmp	x28, x22, #2, lo
	csinc	w6, w6, wzr, hs
	cmp	x4, x30
	ccmp	x5, x22, #2, lo
	csinc	w6, w6, wzr, hs
	mov	x19, x10
	ldur	x10, [x29, #-216]               ; 8-byte Folded Reload
	cmp	x4, x10
	mov	x25, x9
	ldur	x9, [x29, #-128]                ; 8-byte Folded Reload
	ccmp	x9, x22, #2, lo
	csinc	w4, w6, wzr, hs
	cmp	x26, x27
	ccmp	x28, x8, #2, lo
	csinc	w4, w4, wzr, hs
	cmp	x26, x30
	ccmp	x5, x8, #2, lo
	csinc	w4, w4, wzr, hs
	cmp	x26, x10
	ccmp	x9, x8, #2, lo
	csinc	w22, w4, wzr, hs
	cmp	x28, x30
	ccmp	x5, x27, #2, lo
	cset	w26, lo
	cmp	x28, x10
	ccmp	x9, x27, #2, lo
	cset	w28, lo
	cmp	x5, x10
	ccmp	x9, x30, #2, lo
	cset	w30, lo
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w8, #8
	b.hs	LBB4_38
; %bb.29:                               ;   in Loop: Header=BB4_28 Depth=1
	ldur	x9, [x29, #-232]                ; 8-byte Folded Reload
	mul	x8, x19, x9
	mul	x4, x7, x9
	mul	x5, x20, x9
	add	x8, x25, x8, lsl #2
	add	x27, x25, x4, lsl #2
	ldur	x10, [x29, #-120]               ; 8-byte Folded Reload
	mul	x6, x10, x9
	add	x4, x25, x5, lsl #2
	add	x20, x25, x6, lsl #2
	ldp	x30, x5, [x29, #-104]           ; 16-byte Folded Reload
	ldr	x28, [sp, #240]                 ; 8-byte Folded Reload
	mov	x7, x11
	mov	x9, x25
	ldur	x6, [x29, #-112]                ; 8-byte Folded Reload
	mov	x10, x19
	b	LBB4_31
LBB4_30:                                ;   in Loop: Header=BB4_31 Depth=2
	add	x30, x30, #4
	add	x28, x28, x14
	subs	x7, x7, #1
	b.eq	LBB4_27
LBB4_31:                                ;   Parent Loop BB4_28 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s3, [x30]
	ldr	s2, [x30, x13, lsl #2]
	ldr	s1, [x30, x23]
	ldr	s0, [x30, x24]
	ldur	s4, [x28, #-12]
	ldr	s5, [x8]
	fmadd	s5, s3, s4, s5
	str	s5, [x8]
	ldr	s5, [x27]
	fmadd	s5, s2, s4, s5
	str	s5, [x27]
	ldr	s5, [x4]
	fmadd	s5, s1, s4, s5
	str	s5, [x4]
	ldr	s5, [x20]
	fmadd	s4, s0, s4, s5
	str	s4, [x20]
	cmp	w5, #1
	b.eq	LBB4_30
; %bb.32:                               ;   in Loop: Header=BB4_31 Depth=2
	ldur	s4, [x28, #-8]
	ldr	s5, [x8, #4]
	fmadd	s5, s3, s4, s5
	str	s5, [x8, #4]
	ldr	s5, [x27, #4]
	fmadd	s5, s2, s4, s5
	str	s5, [x27, #4]
	ldr	s5, [x4, #4]
	fmadd	s5, s1, s4, s5
	str	s5, [x4, #4]
	ldr	s5, [x20, #4]
	fmadd	s4, s0, s4, s5
	str	s4, [x20, #4]
	cmp	w5, #2
	b.eq	LBB4_30
; %bb.33:                               ;   in Loop: Header=BB4_31 Depth=2
	ldur	s4, [x28, #-4]
	ldr	s5, [x8, #8]
	fmadd	s5, s3, s4, s5
	str	s5, [x8, #8]
	ldr	s5, [x27, #8]
	fmadd	s5, s2, s4, s5
	str	s5, [x27, #8]
	ldr	s5, [x4, #8]
	fmadd	s5, s1, s4, s5
	str	s5, [x4, #8]
	ldr	s5, [x20, #8]
	fmadd	s4, s0, s4, s5
	str	s4, [x20, #8]
	cmp	w5, #3
	b.eq	LBB4_30
; %bb.34:                               ;   in Loop: Header=BB4_31 Depth=2
	ldr	s4, [x28]
	ldr	s5, [x8, #12]
	fmadd	s5, s3, s4, s5
	str	s5, [x8, #12]
	ldr	s5, [x27, #12]
	fmadd	s5, s2, s4, s5
	str	s5, [x27, #12]
	ldr	s5, [x4, #12]
	fmadd	s5, s1, s4, s5
	str	s5, [x4, #12]
	ldr	s5, [x20, #12]
	fmadd	s4, s0, s4, s5
	str	s4, [x20, #12]
	cmp	w5, #4
	b.eq	LBB4_30
; %bb.35:                               ;   in Loop: Header=BB4_31 Depth=2
	ldr	s4, [x28, #4]
	ldr	s5, [x8, #16]
	fmadd	s5, s3, s4, s5
	str	s5, [x8, #16]
	ldr	s5, [x27, #16]
	fmadd	s5, s2, s4, s5
	str	s5, [x27, #16]
	ldr	s5, [x4, #16]
	fmadd	s5, s1, s4, s5
	str	s5, [x4, #16]
	ldr	s5, [x20, #16]
	fmadd	s4, s0, s4, s5
	str	s4, [x20, #16]
	cmp	w5, #5
	b.eq	LBB4_30
; %bb.36:                               ;   in Loop: Header=BB4_31 Depth=2
	ldr	s4, [x28, #8]
	ldr	s5, [x8, #20]
	fmadd	s5, s3, s4, s5
	str	s5, [x8, #20]
	ldr	s5, [x27, #20]
	fmadd	s5, s2, s4, s5
	str	s5, [x27, #20]
	ldr	s5, [x4, #20]
	fmadd	s5, s1, s4, s5
	str	s5, [x4, #20]
	ldr	s5, [x20, #20]
	fmadd	s4, s0, s4, s5
	str	s4, [x20, #20]
	cmp	w5, #6
	b.eq	LBB4_30
; %bb.37:                               ;   in Loop: Header=BB4_31 Depth=2
	ldr	s4, [x28, #12]
	ldr	s5, [x8, #24]
	fmadd	s3, s3, s4, s5
	str	s3, [x8, #24]
	ldr	s3, [x27, #24]
	fmadd	s2, s2, s4, s3
	str	s2, [x27, #24]
	ldr	s2, [x4, #24]
	fmadd	s1, s1, s4, s2
	str	s1, [x4, #24]
	ldr	s1, [x20, #24]
	fmadd	s0, s0, s4, s1
	str	s0, [x20, #24]
	b	LBB4_30
LBB4_38:                                ;   in Loop: Header=BB4_28 Depth=1
	mov	x8, #0                          ; =0x0
	mul	x4, x19, x13
	ldur	x6, [x29, #-224]                ; 8-byte Folded Reload
	add	x4, x6, x4, lsl #2
	mul	x5, x7, x13
	add	x7, x6, x5, lsl #2
	mul	x5, x20, x13
	add	x20, x6, x5, lsl #2
	ldur	x10, [x29, #-120]               ; 8-byte Folded Reload
	mul	x5, x10, x13
	add	x27, x6, x5, lsl #2
	orr	w5, w26, w28
	orr	w5, w5, w30
	orr	w28, w22, w5
	mov	x26, x9
	mov	x9, x25
	ldur	x6, [x29, #-112]                ; 8-byte Folded Reload
	mov	x10, x19
	b	LBB4_40
LBB4_39:                                ;   in Loop: Header=BB4_40 Depth=2
	add	x8, x8, #1
	add	x26, x26, x14
	cmp	x8, x11
	b.eq	LBB4_27
LBB4_40:                                ;   Parent Loop BB4_28 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_43 Depth 3
                                        ;       Child Loop BB4_45 Depth 3
	ldr	s0, [x4, x8, lsl #2]
	ldr	s1, [x7, x8, lsl #2]
	ldr	s2, [x20, x8, lsl #2]
	ldr	s3, [x27, x8, lsl #2]
	tbz	w28, #0, LBB4_42
; %bb.41:                               ;   in Loop: Header=BB4_40 Depth=2
	mov	x19, #0                         ; =0x0
	b	LBB4_45
LBB4_42:                                ;   in Loop: Header=BB4_40 Depth=2
	dup.4s	v4, v0[0]
	dup.4s	v5, v1[0]
	dup.4s	v6, v2[0]
	mov	x19, x0
	mov	x22, x21
	mov	x30, x26
	dup.4s	v7, v3[0]
LBB4_43:                                ;   Parent Loop BB4_28 Depth=1
                                        ;     Parent Loop BB4_40 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	q16, [x30], #16
	ldr	q17, [x22, x15]
	ldr	q18, [x22]
	fmla.4s	v17, v16, v5
	str	q17, [x22, x15]
	ldr	q17, [x22, x16]
	fmla.4s	v18, v16, v4
	fmla.4s	v17, v16, v6
	str	q17, [x22, x16]
	ldr	q17, [x22, x17]
	str	q18, [x22]
	fmla.4s	v17, v16, v7
	str	q17, [x22, x17]
	add	x22, x22, #16
	subs	x19, x19, #4
	b.ne	LBB4_43
; %bb.44:                               ;   in Loop: Header=BB4_40 Depth=2
	mov	x19, x0
	cmp	x0, x12
	b.eq	LBB4_39
LBB4_45:                                ;   Parent Loop BB4_28 Depth=1
                                        ;     Parent Loop BB4_40 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s4, [x26, x19, lsl #2]
	ldr	s5, [x21, x19, lsl #2]
	fmadd	s5, s0, s4, s5
	str	s5, [x21, x19, lsl #2]
	ldr	s5, [x3, x19, lsl #2]
	fmadd	s5, s1, s4, s5
	str	s5, [x3, x19, lsl #2]
	ldr	s5, [x2, x19, lsl #2]
	fmadd	s5, s2, s4, s5
	str	s5, [x2, x19, lsl #2]
	ldr	s5, [x1, x19, lsl #2]
	fmadd	s4, s3, s4, s5
	str	s4, [x1, x19, lsl #2]
	add	x19, x19, #1
	cmp	x12, x19
	b.ne	LBB4_45
	b	LBB4_39
LBB4_46:
	ldr	w15, [sp, #236]                 ; 4-byte Folded Reload
	cmp	w15, #1
	ldr	x17, [sp, #184]                 ; 8-byte Folded Reload
	ldur	x24, [x29, #-224]               ; 8-byte Folded Reload
	ldur	x25, [x29, #-128]               ; 8-byte Folded Reload
	b.lt	LBB4_180
; %bb.47:
	cmp	w17, #1
	b.lt	LBB4_180
; %bb.48:
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w8, #1
	b.lt	LBB4_180
; %bb.49:
	mov	x8, #0                          ; =0x0
	ldur	x16, [x29, #-96]                ; 8-byte Folded Reload
	mov	x5, x9
	mov	w9, w16
	ldur	x10, [x29, #-136]               ; 8-byte Folded Reload
	sxtw	x10, w10
	mov	w11, w17
	ldr	x14, [sp, #16]                  ; 8-byte Folded Reload
                                        ; kill: def $w14 killed $w14 killed $x14 def $x14
	sxtw	x12, w14
	mul	x13, x10, x9
	lsl	x1, x13, #2
	ubfiz	x13, x16, #2, #32
	sbfiz	x14, x14, #2, #32
	sub	x14, x14, w15, uxtw #2
	add	x15, x14, #4
	umull	x14, w16, w17
	add	x14, x25, x14, lsl #2
	mul	x4, x15, x9
	and	x15, x9, #0x7ffffff0
	add	x16, x5, x1
	add	x17, x16, #32
	add	x0, x25, #32
	ubfx	x2, x9, #4, #27
	lsl	x3, x2, #6
	add	x2, x5, x3
	add	x1, x2, x1
	and	x2, x9, #0xffffffff8000000f
	add	x3, x25, x3
	add	x4, x5, x4
	mov	x5, x16
	b	LBB4_51
LBB4_50:                                ;   in Loop: Header=BB4_51 Depth=1
	add	x10, x10, #1
	add	x8, x8, #1
	add	x17, x17, x13
	add	x1, x1, x13
	add	x5, x5, x13
	cmp	x10, x12
	b.ge	LBB4_180
LBB4_51:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_65 Depth 2
                                        ;       Child Loop BB4_66 Depth 3
                                        ;     Child Loop BB4_59 Depth 2
                                        ;       Child Loop BB4_60 Depth 3
                                        ;       Child Loop BB4_63 Depth 3
                                        ;     Child Loop BB4_53 Depth 2
                                        ;       Child Loop BB4_54 Depth 3
	mul	x6, x10, x11
	add	x6, x24, x6, lsl #2
	ldur	x7, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w7, #15
	b.hi	LBB4_56
; %bb.52:                               ;   in Loop: Header=BB4_51 Depth=1
	mov	x7, #0                          ; =0x0
	mov	x19, x25
LBB4_53:                                ;   Parent Loop BB4_51 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_54 Depth 3
	mov	x20, #0                         ; =0x0
	ldr	s0, [x6, x7, lsl #2]
LBB4_54:                                ;   Parent Loop BB4_51 Depth=1
                                        ;     Parent Loop BB4_53 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x19, x20]
	ldr	s2, [x5, x20]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x20]
	add	x20, x20, #4
	cmp	x13, x20
	b.ne	LBB4_54
; %bb.55:                               ;   in Loop: Header=BB4_53 Depth=2
	add	x7, x7, #1
	add	x19, x19, x13
	cmp	x7, x11
	b.ne	LBB4_53
	b	LBB4_50
LBB4_56:                                ;   in Loop: Header=BB4_51 Depth=1
	mul	x7, x13, x8
	add	x19, x4, x7
	add	x7, x16, x7
	cmp	x7, x14
	mov	x7, #0                          ; =0x0
	ccmp	x25, x19, #2, lo
	b.lo	LBB4_64
; %bb.57:                               ;   in Loop: Header=BB4_51 Depth=1
	mov	x19, x3
	mov	x20, x0
	b	LBB4_59
LBB4_58:                                ;   in Loop: Header=BB4_59 Depth=2
	add	x7, x7, #1
	add	x20, x20, x13
	add	x19, x19, x13
	cmp	x7, x11
	b.eq	LBB4_50
LBB4_59:                                ;   Parent Loop BB4_51 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_60 Depth 3
                                        ;       Child Loop BB4_63 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	dup.4s	v1, v0[0]
	mov	x21, x20
	mov	x22, x17
	mov	x23, x15
LBB4_60:                                ;   Parent Loop BB4_51 Depth=1
                                        ;     Parent Loop BB4_59 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q2, q3, [x21, #-32]
	ldp	q4, q5, [x21], #64
	ldp	q6, q7, [x22, #-32]
	ldp	q16, q17, [x22]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x22, #-32]
	stp	q16, q17, [x22], #64
	subs	x23, x23, #16
	b.ne	LBB4_60
; %bb.61:                               ;   in Loop: Header=BB4_59 Depth=2
	cmp	x9, x15
	b.eq	LBB4_58
; %bb.62:                               ;   in Loop: Header=BB4_59 Depth=2
	mov	x21, x19
	mov	x22, x1
	mov	x23, x2
LBB4_63:                                ;   Parent Loop BB4_51 Depth=1
                                        ;     Parent Loop BB4_59 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x21], #4
	ldr	s2, [x22]
	fmadd	s1, s0, s1, s2
	str	s1, [x22], #4
	subs	x23, x23, #1
	b.ne	LBB4_63
	b	LBB4_58
LBB4_64:                                ;   in Loop: Header=BB4_51 Depth=1
	mov	x19, x25
LBB4_65:                                ;   Parent Loop BB4_51 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_66 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	mov	x20, x19
	mov	x21, x5
	mov	x22, x9
LBB4_66:                                ;   Parent Loop BB4_51 Depth=1
                                        ;     Parent Loop BB4_65 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x20], #4
	ldr	s2, [x21]
	fmadd	s1, s0, s1, s2
	str	s1, [x21], #4
	subs	x22, x22, #1
	b.ne	LBB4_66
; %bb.67:                               ;   in Loop: Header=BB4_65 Depth=2
	add	x7, x7, #1
	add	x19, x19, x13
	cmp	x7, x11
	b.ne	LBB4_65
	b	LBB4_50
LBB4_68:
	str	xzr, [sp, #176]                 ; 8-byte Folded Spill
	str	w21, [sp, #12]                  ; 4-byte Folded Spill
	sub	w8, w20, w21
	stur	x8, [x29, #-144]                ; 8-byte Folded Spill
	cmp	w8, #1
	b.lt	LBB4_86
LBB4_69:
	ldr	x13, [sp, #184]                 ; 8-byte Folded Reload
	cmp	w13, #1
	ldur	x16, [x29, #-136]               ; 8-byte Folded Reload
	b.lt	LBB4_180
; %bb.70:
	stp	xzr, xzr, [x29, #-120]          ; 16-byte Folded Spill
	ldur	x10, [x29, #-96]                ; 8-byte Folded Reload
	sxtw	x8, w10
	mov	w11, w10
	add	x9, x8, x8, lsl #1
	sxtw	x12, w13
	str	x12, [sp, #160]                 ; 8-byte Folded Spill
	lsl	x0, x8, #5
	ubfiz	x14, x10, #2, #32
	lsl	x15, x8, #2
	lsl	x12, x8, #3
	add	x17, x15, x8
	stur	x0, [x29, #-128]                ; 8-byte Folded Spill
	sub	x0, x0, x15
	add	x1, x0, x14
	lsl	x2, x9, #2
	lsl	x9, x9, #3
	umull	x6, w10, w13
	and	x10, x11, #0x7ffffffc
	stur	x10, [x29, #-104]               ; 8-byte Folded Spill
	ldr	x22, [sp, #176]                 ; 8-byte Folded Reload
	add	x10, x22, x0
	add	x0, x22, x9
	lsl	x17, x17, #2
	add	x7, x22, x17
	lsl	x8, x8, #4
	add	x19, x22, x8
	add	x3, x22, x2
	add	x4, x22, x12
	add	x5, x22, x15
	add	x1, x22, x1
	add	x9, x9, x14
	add	x9, x22, x9
	stp	x9, x1, [sp, #88]               ; 16-byte Folded Spill
	add	x9, x17, x14
	add	x9, x22, x9
	add	x8, x8, x14
	add	x8, x22, x8
	stp	x8, x9, [sp, #72]               ; 16-byte Folded Spill
	add	x8, x2, x14
	add	x8, x22, x8
	str	x8, [sp, #64]                   ; 8-byte Folded Spill
	add	x8, x12, x14
	add	x8, x22, x8
	str	x8, [sp, #56]                   ; 8-byte Folded Spill
	add	x8, x15, x14
	add	x8, x22, x8
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	add	x8, x22, x14
	str	x8, [sp, #40]                   ; 8-byte Folded Spill
	stp	x5, x4, [sp, #104]              ; 16-byte Folded Spill
	stp	x3, x19, [sp, #120]             ; 16-byte Folded Spill
	mov	x2, x19
	stp	x7, x0, [sp, #136]              ; 16-byte Folded Spill
	mov	x1, x7
	add	x8, x16, x6, lsl #2
	str	x10, [sp, #152]                 ; 8-byte Folded Spill
	mov	x17, x10
	mov	w6, w13
	stp	x6, x8, [sp, #24]               ; 16-byte Folded Spill
	b	LBB4_72
LBB4_71:                                ;   in Loop: Header=BB4_72 Depth=1
	ldp	x9, x8, [x29, #-120]            ; 16-byte Folded Reload
	add	x9, x9, #8
	add	x8, x8, #1
	stp	x9, x8, [x29, #-120]            ; 16-byte Folded Spill
	ldur	x8, [x29, #-128]                ; 8-byte Folded Reload
	add	x22, x22, x8
	add	x17, x17, x8
	add	x0, x0, x8
	add	x1, x1, x8
	add	x2, x2, x8
	add	x3, x3, x8
	add	x4, x4, x8
	add	x5, x5, x8
	ldur	x8, [x29, #-144]                ; 8-byte Folded Reload
	cmp	x9, x8
	b.hs	LBB4_86
LBB4_72:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_80 Depth 2
                                        ;       Child Loop BB4_83 Depth 3
                                        ;       Child Loop BB4_85 Depth 3
                                        ;     Child Loop BB4_75 Depth 2
                                        ;       Child Loop BB4_76 Depth 3
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB4_71
; %bb.73:                               ;   in Loop: Header=BB4_72 Depth=1
	ldur	x8, [x29, #-112]                ; 8-byte Folded Reload
	ldur	x9, [x29, #-128]                ; 8-byte Folded Reload
	mul	x27, x9, x8
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	add	x26, x8, x27
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x13, x8, x27
	cmp	x13, x26
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x8, x8, x27
	ldr	x9, [sp, #152]                  ; 8-byte Folded Reload
	add	x7, x9, x27
	ldr	x9, [sp, #88]                   ; 8-byte Folded Reload
	add	x20, x9, x27
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x21, x9, x27
	ldr	x9, [sp, #80]                   ; 8-byte Folded Reload
	add	x23, x9, x27
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	add	x24, x9, x27
	ldr	x9, [sp, #72]                   ; 8-byte Folded Reload
	add	x25, x9, x27
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	add	x28, x9, x27
	ldr	x9, [sp, #64]                   ; 8-byte Folded Reload
	add	x30, x9, x27
	ldp	x9, x10, [sp, #112]             ; 16-byte Folded Reload
	add	x19, x10, x27
	add	x12, x9, x27
	ldr	x9, [sp, #56]                   ; 8-byte Folded Reload
	add	x9, x9, x27
	ldr	x10, [sp, #104]                 ; 8-byte Folded Reload
	add	x10, x10, x27
	ldr	x16, [sp, #40]                  ; 8-byte Folded Reload
	add	x27, x16, x27
	ccmp	x10, x27, #2, lo
	cset	w16, lo
	cmp	x13, x9
	ccmp	x12, x27, #2, lo
	csinc	w16, w16, wzr, hs
	cmp	x13, x30
	ccmp	x19, x27, #2, lo
	csinc	w16, w16, wzr, hs
	cmp	x13, x25
	ccmp	x28, x27, #2, lo
	csinc	w16, w16, wzr, hs
	cmp	x13, x23
	ccmp	x24, x27, #2, lo
	csinc	w16, w16, wzr, hs
	cmp	x13, x20
	ccmp	x21, x27, #2, lo
	csinc	w16, w16, wzr, hs
	cmp	x13, x8
	ccmp	x7, x27, #2, lo
	csinc	w16, w16, wzr, hs
	stur	w16, [x29, #-152]               ; 4-byte Folded Spill
	ldr	x6, [sp, #32]                   ; 8-byte Folded Reload
	cmp	x13, x6
	ldur	x13, [x29, #-136]               ; 8-byte Folded Reload
	ccmp	x13, x27, #2, lo
	cset	w16, lo
	stur	w16, [x29, #-160]               ; 4-byte Folded Spill
	cmp	x10, x9
	ccmp	x12, x26, #2, lo
	cset	w16, lo
	stur	w16, [x29, #-168]               ; 4-byte Folded Spill
	cmp	x10, x30
	ccmp	x19, x26, #2, lo
	cset	w16, lo
	stur	w16, [x29, #-176]               ; 4-byte Folded Spill
	cmp	x10, x25
	ccmp	x28, x26, #2, lo
	cset	w16, lo
	stur	w16, [x29, #-184]               ; 4-byte Folded Spill
	cmp	x10, x23
	ccmp	x24, x26, #2, lo
	cset	w16, lo
	stur	w16, [x29, #-192]               ; 4-byte Folded Spill
	cmp	x10, x20
	ccmp	x21, x26, #2, lo
	cset	w16, lo
	stur	w16, [x29, #-200]               ; 4-byte Folded Spill
	cmp	x10, x8
	ccmp	x7, x26, #2, lo
	cset	w16, lo
	stur	w16, [x29, #-208]               ; 4-byte Folded Spill
	cmp	x10, x6
	ccmp	x13, x26, #2, lo
	cset	w10, lo
	stur	w10, [x29, #-216]               ; 4-byte Folded Spill
	cmp	x12, x30
	ccmp	x19, x9, #2, lo
	cset	w10, lo
	stur	w10, [x29, #-224]               ; 4-byte Folded Spill
	cmp	x12, x25
	ccmp	x28, x9, #2, lo
	cset	w10, lo
	stur	w10, [x29, #-232]               ; 4-byte Folded Spill
	cmp	x12, x23
	ccmp	x24, x9, #2, lo
	cset	w10, lo
	str	w10, [sp, #240]                 ; 4-byte Folded Spill
	cmp	x12, x20
	ccmp	x21, x9, #2, lo
	cset	w10, lo
	str	w10, [sp, #236]                 ; 4-byte Folded Spill
	cmp	x12, x8
	ccmp	x7, x9, #2, lo
	cset	w10, lo
	cmp	x12, x6
	ccmp	x13, x9, #2, lo
	cset	w9, lo
	stp	w9, w10, [sp, #228]             ; 8-byte Folded Spill
	cmp	x19, x25
	ccmp	x28, x30, #2, lo
	cset	w10, lo
	cmp	x19, x23
	ccmp	x24, x30, #2, lo
	cset	w9, lo
	stp	w9, w10, [sp, #220]             ; 8-byte Folded Spill
	cmp	x19, x20
	ccmp	x21, x30, #2, lo
	cset	w10, lo
	cmp	x19, x8
	ccmp	x7, x30, #2, lo
	cset	w9, lo
	stp	w9, w10, [sp, #212]             ; 8-byte Folded Spill
	cmp	x19, x6
	ccmp	x13, x30, #2, lo
	cset	w10, lo
	cmp	x28, x23
	ccmp	x24, x25, #2, lo
	cset	w9, lo
	stp	w9, w10, [sp, #204]             ; 8-byte Folded Spill
	cmp	x28, x20
	ccmp	x21, x25, #2, lo
	cset	w10, lo
	cmp	x28, x8
	ccmp	x7, x25, #2, lo
	cset	w9, lo
	stp	w9, w10, [sp, #196]             ; 8-byte Folded Spill
	cmp	x28, x6
	ccmp	x13, x25, #2, lo
	mov	x16, x13
	cset	w25, lo
	cmp	x24, x20
	ccmp	x21, x23, #2, lo
	cset	w26, lo
	cmp	x24, x8
	ccmp	x7, x23, #2, lo
	cset	w12, lo
	cmp	x24, x6
	ccmp	x13, x23, #2, lo
	cset	w27, lo
	cmp	x21, x8
	ccmp	x7, x20, #2, lo
	cset	w9, lo
	cmp	x21, x6
	ccmp	x13, x20, #2, lo
	cset	w10, lo
	str	w10, [sp, #192]                 ; 4-byte Folded Spill
	cmp	x7, x6
	ldur	x19, [x29, #-120]               ; 8-byte Folded Reload
	ldp	x20, x13, [sp, #160]            ; 16-byte Folded Reload
	mul	x10, x19, x20
	add	x30, x13, x10, lsl #2
	ccmp	x16, x8, #2, lo
	orr	x8, x19, #0x1
	mul	x8, x8, x20
	add	x28, x13, x8, lsl #2
	orr	x8, x19, #0x2
	mul	x8, x8, x20
	add	x24, x13, x8, lsl #2
	orr	x8, x19, #0x3
	mul	x8, x8, x20
	add	x23, x13, x8, lsl #2
	orr	x8, x19, #0x4
	mul	x8, x8, x20
	add	x7, x13, x8, lsl #2
	mov	w8, #5                          ; =0x5
	orr	x8, x19, x8
	mul	x8, x8, x20
	add	x21, x13, x8, lsl #2
	orr	x8, x19, #0x6
	mul	x8, x8, x20
	add	x8, x13, x8, lsl #2
	orr	x10, x19, #0x7
	mul	x10, x10, x20
	add	x20, x13, x10, lsl #2
	cset	w19, lo
	ldur	x10, [x29, #-96]                ; 8-byte Folded Reload
	cmp	w10, #20
	b.hs	LBB4_78
; %bb.74:                               ;   in Loop: Header=BB4_72 Depth=1
	mov	x12, #0                         ; =0x0
	mov	x19, x16
	ldr	x6, [sp, #24]                   ; 8-byte Folded Reload
LBB4_75:                                ;   Parent Loop BB4_72 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_76 Depth 3
	mov	x9, #0                          ; =0x0
	ldr	s0, [x30, x12, lsl #2]
	ldr	s1, [x28, x12, lsl #2]
	ldr	s2, [x24, x12, lsl #2]
	ldr	s3, [x23, x12, lsl #2]
	ldr	s4, [x7, x12, lsl #2]
	ldr	s5, [x21, x12, lsl #2]
	ldr	s6, [x8, x12, lsl #2]
	ldr	s7, [x20, x12, lsl #2]
LBB4_76:                                ;   Parent Loop BB4_72 Depth=1
                                        ;     Parent Loop BB4_75 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s16, [x19, x9]
	add	x10, x22, x9
	add	x13, x10, x15
	ldr	s17, [x13]
	fmadd	s17, s1, s16, s17
	str	s17, [x13]
	add	x13, x13, x15
	add	x16, x13, x15
	ldr	s17, [x13]
	fmadd	s17, s2, s16, s17
	str	s17, [x13]
	ldr	s17, [x16]
	fmadd	s17, s3, s16, s17
	str	s17, [x16]
	add	x13, x16, x15
	add	x16, x13, x15
	ldr	s17, [x13]
	fmadd	s17, s4, s16, s17
	str	s17, [x13]
	ldr	s17, [x10]
	fmadd	s17, s0, s16, s17
	ldr	s18, [x16]
	fmadd	s18, s5, s16, s18
	str	s17, [x10]
	str	s18, [x16]
	add	x10, x16, x15
	ldr	s17, [x10]
	ldr	s18, [x10, x15]
	fmadd	s17, s6, s16, s17
	str	s17, [x10]
	fmadd	s16, s7, s16, s18
	str	s16, [x10, x15]
	add	x9, x9, #4
	cmp	x14, x9
	b.ne	LBB4_76
; %bb.77:                               ;   in Loop: Header=BB4_75 Depth=2
	add	x12, x12, #1
	add	x19, x19, x14
	cmp	x12, x6
	b.ne	LBB4_75
	b	LBB4_71
LBB4_78:                                ;   in Loop: Header=BB4_72 Depth=1
	mov	x16, x9
	mov	x9, x27
	mov	x27, x12
	mov	x12, x26
	mov	x26, x25
	mov	x25, #0                         ; =0x0
	ldur	w10, [x29, #-160]               ; 4-byte Folded Reload
	ldur	w13, [x29, #-168]               ; 4-byte Folded Reload
	orr	w10, w10, w13
	ldur	w13, [x29, #-176]               ; 4-byte Folded Reload
	orr	w10, w10, w13
	ldur	w13, [x29, #-184]               ; 4-byte Folded Reload
	orr	w10, w10, w13
	ldur	w13, [x29, #-192]               ; 4-byte Folded Reload
	orr	w10, w10, w13
	ldur	w13, [x29, #-200]               ; 4-byte Folded Reload
	orr	w10, w10, w13
	ldur	w13, [x29, #-208]               ; 4-byte Folded Reload
	orr	w10, w10, w13
	ldur	w13, [x29, #-152]               ; 4-byte Folded Reload
	orr	w10, w13, w10
	ldur	w13, [x29, #-216]               ; 4-byte Folded Reload
	ldur	w6, [x29, #-224]                ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldur	w6, [x29, #-232]                ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #240]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #236]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #232]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #228]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #224]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	orr	w10, w10, w13
	ldp	w6, w13, [sp, #216]             ; 8-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #212]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #208]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #204]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #200]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	ldr	w6, [sp, #196]                  ; 4-byte Folded Reload
	orr	w13, w13, w6
	orr	w13, w13, w26
	orr	w13, w13, w12
	orr	w10, w10, w13
	orr	w12, w27, w9
	orr	w12, w12, w16
	ldr	w9, [sp, #192]                  ; 4-byte Folded Reload
	orr	w9, w12, w9
	orr	w9, w9, w19
	orr	w26, w10, w9
	ldur	x9, [x29, #-136]                ; 8-byte Folded Reload
	ldr	x6, [sp, #24]                   ; 8-byte Folded Reload
	b	LBB4_80
LBB4_79:                                ;   in Loop: Header=BB4_80 Depth=2
	add	x25, x25, #1
	add	x9, x9, x14
	cmp	x25, x6
	b.eq	LBB4_71
LBB4_80:                                ;   Parent Loop BB4_72 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_83 Depth 3
                                        ;       Child Loop BB4_85 Depth 3
	ldr	s0, [x30, x25, lsl #2]
	ldr	s1, [x28, x25, lsl #2]
	ldr	s2, [x24, x25, lsl #2]
	ldr	s3, [x23, x25, lsl #2]
	ldr	s4, [x7, x25, lsl #2]
	ldr	s5, [x21, x25, lsl #2]
	ldr	s6, [x8, x25, lsl #2]
	ldr	s7, [x20, x25, lsl #2]
	tbz	w26, #0, LBB4_82
; %bb.81:                               ;   in Loop: Header=BB4_80 Depth=2
	mov	x12, #0                         ; =0x0
	b	LBB4_85
LBB4_82:                                ;   in Loop: Header=BB4_80 Depth=2
	dup.4s	v16, v0[0]
	dup.4s	v17, v1[0]
	dup.4s	v18, v2[0]
	dup.4s	v19, v3[0]
	dup.4s	v20, v4[0]
	dup.4s	v21, v5[0]
	dup.4s	v22, v6[0]
	ldur	x19, [x29, #-104]               ; 8-byte Folded Reload
	mov	x27, x22
	mov	x12, x9
	dup.4s	v23, v7[0]
LBB4_83:                                ;   Parent Loop BB4_72 Depth=1
                                        ;     Parent Loop BB4_80 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	q24, [x12], #16
	add	x10, x27, x15
	add	x13, x10, x15
	ldr	q25, [x10]
	fmla.4s	v25, v24, v17
	str	q25, [x10]
	ldr	q25, [x13]
	fmla.4s	v25, v24, v18
	str	q25, [x13]
	add	x10, x13, x15
	add	x13, x10, x15
	ldr	q25, [x10]
	fmla.4s	v25, v24, v19
	str	q25, [x10]
	ldr	q25, [x13]
	fmla.4s	v25, v24, v20
	str	q25, [x13]
	add	x10, x13, x15
	add	x13, x10, x15
	ldr	q25, [x10]
	fmla.4s	v25, v24, v21
	str	q25, [x10]
	ldr	q25, [x27]
	fmla.4s	v25, v24, v16
	str	q25, [x27], #16
	ldr	q25, [x13]
	fmla.4s	v25, v24, v22
	ldr	q26, [x13, x15]
	str	q25, [x13]
	fmla.4s	v26, v24, v23
	str	q26, [x13, x15]
	subs	x19, x19, #4
	b.ne	LBB4_83
; %bb.84:                               ;   in Loop: Header=BB4_80 Depth=2
	ldur	x10, [x29, #-104]               ; 8-byte Folded Reload
	mov	x12, x10
	cmp	x10, x11
	b.eq	LBB4_79
LBB4_85:                                ;   Parent Loop BB4_72 Depth=1
                                        ;     Parent Loop BB4_80 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s16, [x9, x12, lsl #2]
	ldr	s17, [x22, x12, lsl #2]
	fmadd	s17, s0, s16, s17
	str	s17, [x22, x12, lsl #2]
	ldr	s17, [x5, x12, lsl #2]
	fmadd	s17, s1, s16, s17
	str	s17, [x5, x12, lsl #2]
	ldr	s17, [x4, x12, lsl #2]
	fmadd	s17, s2, s16, s17
	str	s17, [x4, x12, lsl #2]
	ldr	s17, [x3, x12, lsl #2]
	fmadd	s17, s3, s16, s17
	str	s17, [x3, x12, lsl #2]
	ldr	s17, [x2, x12, lsl #2]
	fmadd	s17, s4, s16, s17
	str	s17, [x2, x12, lsl #2]
	ldr	s17, [x1, x12, lsl #2]
	fmadd	s17, s5, s16, s17
	str	s17, [x1, x12, lsl #2]
	ldr	s17, [x0, x12, lsl #2]
	fmadd	s17, s6, s16, s17
	str	s17, [x0, x12, lsl #2]
	ldr	s17, [x17, x12, lsl #2]
	fmadd	s16, s7, s16, s17
	str	s16, [x17, x12, lsl #2]
	add	x12, x12, #1
	cmp	x11, x12
	b.ne	LBB4_85
	b	LBB4_79
LBB4_86:
	ldr	w15, [sp, #12]                  ; 4-byte Folded Reload
	cmp	w15, #1
	ldr	x17, [sp, #184]                 ; 8-byte Folded Reload
	ldr	x24, [sp, #168]                 ; 8-byte Folded Reload
	ldur	x25, [x29, #-136]               ; 8-byte Folded Reload
	b.lt	LBB4_180
; %bb.87:
	cmp	w17, #1
	b.lt	LBB4_180
; %bb.88:
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w8, #1
	b.lt	LBB4_180
; %bb.89:
	mov	x8, #0                          ; =0x0
	ldur	x16, [x29, #-96]                ; 8-byte Folded Reload
	mov	w9, w16
	ldur	x10, [x29, #-144]               ; 8-byte Folded Reload
	sxtw	x10, w10
	mov	w11, w17
	ldr	x14, [sp, #16]                  ; 8-byte Folded Reload
                                        ; kill: def $w14 killed $w14 killed $x14 def $x14
	sxtw	x12, w14
	mul	x13, x10, x9
	lsl	x1, x13, #2
	ubfiz	x13, x16, #2, #32
	sbfiz	x14, x14, #2, #32
	sub	x14, x14, w15, uxtw #2
	add	x15, x14, #4
	umull	x14, w16, w17
	add	x14, x25, x14, lsl #2
	mul	x4, x15, x9
	and	x15, x9, #0x7ffffff0
	ldr	x5, [sp, #176]                  ; 8-byte Folded Reload
	add	x16, x5, x1
	add	x17, x16, #32
	add	x0, x25, #32
	ubfx	x2, x9, #4, #27
	lsl	x3, x2, #6
	add	x2, x5, x3
	add	x1, x2, x1
	and	x2, x9, #0xffffffff8000000f
	add	x3, x25, x3
	add	x4, x5, x4
	mov	x5, x16
	b	LBB4_91
LBB4_90:                                ;   in Loop: Header=BB4_91 Depth=1
	add	x10, x10, #1
	add	x8, x8, #1
	add	x17, x17, x13
	add	x1, x1, x13
	add	x5, x5, x13
	cmp	x10, x12
	b.ge	LBB4_180
LBB4_91:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_105 Depth 2
                                        ;       Child Loop BB4_106 Depth 3
                                        ;     Child Loop BB4_99 Depth 2
                                        ;       Child Loop BB4_100 Depth 3
                                        ;       Child Loop BB4_103 Depth 3
                                        ;     Child Loop BB4_93 Depth 2
                                        ;       Child Loop BB4_94 Depth 3
	mul	x6, x10, x11
	add	x6, x24, x6, lsl #2
	ldur	x7, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w7, #15
	b.hi	LBB4_96
; %bb.92:                               ;   in Loop: Header=BB4_91 Depth=1
	mov	x7, #0                          ; =0x0
	mov	x19, x25
LBB4_93:                                ;   Parent Loop BB4_91 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_94 Depth 3
	mov	x20, #0                         ; =0x0
	ldr	s0, [x6, x7, lsl #2]
LBB4_94:                                ;   Parent Loop BB4_91 Depth=1
                                        ;     Parent Loop BB4_93 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x19, x20]
	ldr	s2, [x5, x20]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x20]
	add	x20, x20, #4
	cmp	x13, x20
	b.ne	LBB4_94
; %bb.95:                               ;   in Loop: Header=BB4_93 Depth=2
	add	x7, x7, #1
	add	x19, x19, x13
	cmp	x7, x11
	b.ne	LBB4_93
	b	LBB4_90
LBB4_96:                                ;   in Loop: Header=BB4_91 Depth=1
	mul	x7, x13, x8
	add	x19, x4, x7
	add	x7, x16, x7
	cmp	x7, x14
	mov	x7, #0                          ; =0x0
	ccmp	x25, x19, #2, lo
	b.lo	LBB4_104
; %bb.97:                               ;   in Loop: Header=BB4_91 Depth=1
	mov	x19, x3
	mov	x20, x0
	b	LBB4_99
LBB4_98:                                ;   in Loop: Header=BB4_99 Depth=2
	add	x7, x7, #1
	add	x20, x20, x13
	add	x19, x19, x13
	cmp	x7, x11
	b.eq	LBB4_90
LBB4_99:                                ;   Parent Loop BB4_91 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_100 Depth 3
                                        ;       Child Loop BB4_103 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	dup.4s	v1, v0[0]
	mov	x21, x20
	mov	x22, x17
	mov	x23, x15
LBB4_100:                               ;   Parent Loop BB4_91 Depth=1
                                        ;     Parent Loop BB4_99 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q2, q3, [x21, #-32]
	ldp	q4, q5, [x21], #64
	ldp	q6, q7, [x22, #-32]
	ldp	q16, q17, [x22]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x22, #-32]
	stp	q16, q17, [x22], #64
	subs	x23, x23, #16
	b.ne	LBB4_100
; %bb.101:                              ;   in Loop: Header=BB4_99 Depth=2
	cmp	x9, x15
	b.eq	LBB4_98
; %bb.102:                              ;   in Loop: Header=BB4_99 Depth=2
	mov	x21, x19
	mov	x22, x1
	mov	x23, x2
LBB4_103:                               ;   Parent Loop BB4_91 Depth=1
                                        ;     Parent Loop BB4_99 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x21], #4
	ldr	s2, [x22]
	fmadd	s1, s0, s1, s2
	str	s1, [x22], #4
	subs	x23, x23, #1
	b.ne	LBB4_103
	b	LBB4_98
LBB4_104:                               ;   in Loop: Header=BB4_91 Depth=1
	mov	x19, x25
LBB4_105:                               ;   Parent Loop BB4_91 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_106 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	mov	x20, x19
	mov	x21, x5
	mov	x22, x9
LBB4_106:                               ;   Parent Loop BB4_91 Depth=1
                                        ;     Parent Loop BB4_105 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x20], #4
	ldr	s2, [x21]
	fmadd	s1, s0, s1, s2
	str	s1, [x21], #4
	subs	x22, x22, #1
	b.ne	LBB4_106
; %bb.107:                              ;   in Loop: Header=BB4_105 Depth=2
	add	x7, x7, #1
	add	x19, x19, x13
	cmp	x7, x11
	b.ne	LBB4_105
	b	LBB4_90
LBB4_108:
	stur	xzr, [x29, #-160]               ; 8-byte Folded Spill
	stur	w21, [x29, #-168]               ; 4-byte Folded Spill
	sub	w8, w20, w21
	stur	x8, [x29, #-120]                ; 8-byte Folded Spill
	cmp	w8, #1
	b.lt	LBB4_117
LBB4_109:
	ldr	x10, [sp, #184]                 ; 8-byte Folded Reload
	cmp	w10, #1
	b.lt	LBB4_180
; %bb.110:
	sxtw	x8, w10
	stur	x8, [x29, #-152]                ; 8-byte Folded Spill
	ldur	x9, [x29, #-96]                 ; 8-byte Folded Reload
	sxtw	x11, w9
	lsl	x8, x11, #6
	stur	x8, [x29, #-128]                ; 8-byte Folded Spill
	ubfiz	x8, x9, #2, #32
	stp	xzr, x8, [x29, #-112]           ; 16-byte Folded Spill
	lsl	x14, x11, #2
	ldur	x25, [x29, #-160]               ; 8-byte Folded Reload
	mov	w19, w9
	mov	w4, w10
	b	LBB4_112
LBB4_111:                               ;   in Loop: Header=BB4_112 Depth=1
	ldur	x9, [x29, #-112]                ; 8-byte Folded Reload
	add	x9, x9, #16
	ldp	x10, x8, [x29, #-128]           ; 16-byte Folded Reload
	add	x25, x25, x10
	stur	x9, [x29, #-112]                ; 8-byte Folded Spill
	cmp	x9, x8
	b.hs	LBB4_117
LBB4_112:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_114 Depth 2
                                        ;       Child Loop BB4_115 Depth 3
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w8, #0
	b.le	LBB4_111
; %bb.113:                              ;   in Loop: Header=BB4_112 Depth=1
	mov	x5, #0                          ; =0x0
	ldur	x10, [x29, #-112]               ; 8-byte Folded Reload
	ldur	x13, [x29, #-152]               ; 8-byte Folded Reload
	mul	x8, x10, x13
	ldur	x9, [x29, #-136]                ; 8-byte Folded Reload
	add	x6, x9, x8, lsl #2
	orr	x8, x10, #0x1
	mul	x8, x8, x13
	add	x7, x9, x8, lsl #2
	orr	x8, x10, #0x2
	mul	x8, x8, x13
	add	x21, x9, x8, lsl #2
	orr	x8, x10, #0x3
	mul	x8, x8, x13
	add	x23, x9, x8, lsl #2
	orr	x8, x10, #0x4
	mul	x8, x8, x13
	add	x24, x9, x8, lsl #2
	mov	w8, #5                          ; =0x5
	orr	x8, x10, x8
	mul	x8, x8, x13
	add	x27, x9, x8, lsl #2
	orr	x8, x10, #0x6
	mul	x8, x8, x13
	add	x28, x9, x8, lsl #2
	orr	x8, x10, #0x7
	mul	x8, x8, x13
	add	x30, x9, x8, lsl #2
	orr	x8, x10, #0x8
	mov	w12, #9                         ; =0x9
	orr	x12, x10, x12
	mov	w15, #10                        ; =0xa
	orr	x15, x10, x15
	mul	x8, x8, x13
	mov	w16, #11                        ; =0xb
	orr	x16, x10, x16
	orr	x17, x10, #0xc
	mov	w0, #13                         ; =0xd
	orr	x0, x10, x0
	mul	x12, x12, x13
	orr	x2, x10, #0xe
	add	x20, x9, x8, lsl #2
	mul	x1, x15, x13
	orr	x3, x10, #0xf
	ldur	x8, [x29, #-144]                ; 8-byte Folded Reload
	mul	x22, x16, x13
	add	x15, x9, x12, lsl #2
	add	x16, x9, x1, lsl #2
	mul	x12, x17, x13
	add	x17, x9, x22, lsl #2
	mul	x1, x0, x13
	add	x0, x9, x12, lsl #2
	add	x1, x9, x1, lsl #2
	mul	x12, x2, x13
	add	x22, x9, x12, lsl #2
	mul	x12, x3, x13
	add	x12, x9, x12, lsl #2
LBB4_114:                               ;   Parent Loop BB4_112 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_115 Depth 3
	ldr	s0, [x6, x5, lsl #2]
	ldr	s1, [x7, x5, lsl #2]
	ldr	s2, [x21, x5, lsl #2]
	ldr	s3, [x23, x5, lsl #2]
	ldr	s4, [x24, x5, lsl #2]
	ldr	s5, [x27, x5, lsl #2]
	ldr	s6, [x28, x5, lsl #2]
	ldr	s7, [x30, x5, lsl #2]
	ldr	s16, [x20, x5, lsl #2]
	ldr	s17, [x15, x5, lsl #2]
	ldr	s18, [x16, x5, lsl #2]
	ldr	s19, [x17, x5, lsl #2]
	ldr	s20, [x0, x5, lsl #2]
	mov	x26, x8
	ldr	s21, [x1, x5, lsl #2]
	ldr	s22, [x22, x5, lsl #2]
	mov	x2, x25
	mov	x3, x19
	ldr	s23, [x12, x5, lsl #2]
LBB4_115:                               ;   Parent Loop BB4_112 Depth=1
                                        ;     Parent Loop BB4_114 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s24, [x26], #4
	add	x10, x2, x11, lsl #2
	ldr	s25, [x10]
	fmadd	s25, s1, s24, s25
	str	s25, [x10]
	add	x10, x10, x14
	ldr	s25, [x2]
	add	x9, x10, x14
	ldr	s26, [x10]
	fmadd	s26, s2, s24, s26
	str	s26, [x10]
	ldr	s26, [x9]
	fmadd	s25, s0, s24, s25
	fmadd	s26, s3, s24, s26
	str	s26, [x9]
	add	x9, x9, x14
	add	x10, x9, x14
	ldr	s26, [x9]
	str	s25, [x2], #4
	fmadd	s25, s4, s24, s26
	str	s25, [x9]
	ldr	s25, [x10]
	fmadd	s25, s5, s24, s25
	add	x9, x10, x14
	str	s25, [x10]
	add	x10, x9, x14
	ldr	s25, [x10]
	fmadd	s25, s7, s24, s25
	str	s25, [x10]
	add	x10, x10, x14
	ldr	s25, [x9]
	add	x13, x10, x14
	ldr	s26, [x10]
	fmadd	s26, s16, s24, s26
	str	s26, [x10]
	ldr	s26, [x13]
	fmadd	s25, s6, s24, s25
	fmadd	s26, s17, s24, s26
	str	s26, [x13]
	add	x10, x13, x14
	add	x13, x10, x14
	ldr	s26, [x10]
	str	s25, [x9]
	fmadd	s25, s18, s24, s26
	str	s25, [x10]
	ldr	s25, [x13]
	fmadd	s25, s19, s24, s25
	add	x9, x13, x14
	str	s25, [x13]
	add	x10, x9, x14
	ldr	s25, [x10]
	fmadd	s25, s21, s24, s25
	str	s25, [x10]
	add	x10, x10, x14
	ldr	s25, [x9]
	ldr	s26, [x10]
	fmadd	s26, s22, s24, s26
	str	s26, [x10]
	ldr	s26, [x10, x14]
	fmadd	s25, s20, s24, s25
	str	s25, [x9]
	fmadd	s24, s23, s24, s26
	str	s24, [x10, x14]
	subs	x3, x3, #1
	b.ne	LBB4_115
; %bb.116:                              ;   in Loop: Header=BB4_114 Depth=2
	add	x5, x5, #1
	ldur	x9, [x29, #-104]                ; 8-byte Folded Reload
	add	x8, x8, x9
	cmp	x5, x4
	b.ne	LBB4_114
	b	LBB4_111
LBB4_117:
	ldur	w15, [x29, #-168]               ; 4-byte Folded Reload
	cmp	w15, #1
	ldr	x17, [sp, #184]                 ; 8-byte Folded Reload
	ldp	x25, x24, [x29, #-144]          ; 16-byte Folded Reload
	b.lt	LBB4_180
; %bb.118:
	cmp	w17, #1
	b.lt	LBB4_180
; %bb.119:
	ldur	x8, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w8, #1
	b.lt	LBB4_180
; %bb.120:
	mov	x9, #0                          ; =0x0
	ldur	x16, [x29, #-96]                ; 8-byte Folded Reload
	mov	w10, w16
	ldur	x8, [x29, #-120]                ; 8-byte Folded Reload
	sxtw	x8, w8
	mov	w11, w17
	ldr	x14, [sp, #16]                  ; 8-byte Folded Reload
                                        ; kill: def $w14 killed $w14 killed $x14 def $x14
	sxtw	x12, w14
	mul	x13, x8, x10
	lsl	x1, x13, #2
	ubfiz	x13, x16, #2, #32
	sbfiz	x14, x14, #2, #32
	sub	x14, x14, w15, uxtw #2
	add	x15, x14, #4
	umull	x14, w16, w17
	add	x14, x25, x14, lsl #2
	mul	x4, x15, x10
	and	x15, x10, #0x7ffffff0
	ldur	x5, [x29, #-160]                ; 8-byte Folded Reload
	add	x16, x5, x1
	add	x17, x16, #32
	add	x0, x25, #32
	ubfx	x2, x10, #4, #27
	lsl	x3, x2, #6
	add	x2, x5, x3
	add	x1, x2, x1
	and	x2, x10, #0xffffffff8000000f
	add	x3, x25, x3
	add	x4, x5, x4
	mov	x5, x16
	b	LBB4_122
LBB4_121:                               ;   in Loop: Header=BB4_122 Depth=1
	add	x8, x8, #1
	add	x9, x9, #1
	add	x17, x17, x13
	add	x1, x1, x13
	add	x5, x5, x13
	cmp	x8, x12
	b.ge	LBB4_180
LBB4_122:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_136 Depth 2
                                        ;       Child Loop BB4_137 Depth 3
                                        ;     Child Loop BB4_130 Depth 2
                                        ;       Child Loop BB4_131 Depth 3
                                        ;       Child Loop BB4_134 Depth 3
                                        ;     Child Loop BB4_124 Depth 2
                                        ;       Child Loop BB4_125 Depth 3
	mul	x6, x8, x11
	add	x6, x24, x6, lsl #2
	ldur	x7, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w7, #15
	b.hi	LBB4_127
; %bb.123:                              ;   in Loop: Header=BB4_122 Depth=1
	mov	x7, #0                          ; =0x0
	mov	x19, x25
LBB4_124:                               ;   Parent Loop BB4_122 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_125 Depth 3
	mov	x20, #0                         ; =0x0
	ldr	s0, [x6, x7, lsl #2]
LBB4_125:                               ;   Parent Loop BB4_122 Depth=1
                                        ;     Parent Loop BB4_124 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x19, x20]
	ldr	s2, [x5, x20]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x20]
	add	x20, x20, #4
	cmp	x13, x20
	b.ne	LBB4_125
; %bb.126:                              ;   in Loop: Header=BB4_124 Depth=2
	add	x7, x7, #1
	add	x19, x19, x13
	cmp	x7, x11
	b.ne	LBB4_124
	b	LBB4_121
LBB4_127:                               ;   in Loop: Header=BB4_122 Depth=1
	mul	x7, x13, x9
	add	x19, x4, x7
	add	x7, x16, x7
	cmp	x7, x14
	mov	x7, #0                          ; =0x0
	ccmp	x25, x19, #2, lo
	b.lo	LBB4_135
; %bb.128:                              ;   in Loop: Header=BB4_122 Depth=1
	mov	x19, x3
	mov	x20, x0
	b	LBB4_130
LBB4_129:                               ;   in Loop: Header=BB4_130 Depth=2
	add	x7, x7, #1
	add	x20, x20, x13
	add	x19, x19, x13
	cmp	x7, x11
	b.eq	LBB4_121
LBB4_130:                               ;   Parent Loop BB4_122 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_131 Depth 3
                                        ;       Child Loop BB4_134 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	dup.4s	v1, v0[0]
	mov	x21, x20
	mov	x22, x17
	mov	x23, x15
LBB4_131:                               ;   Parent Loop BB4_122 Depth=1
                                        ;     Parent Loop BB4_130 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q2, q3, [x21, #-32]
	ldp	q4, q5, [x21], #64
	ldp	q6, q7, [x22, #-32]
	ldp	q16, q17, [x22]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x22, #-32]
	stp	q16, q17, [x22], #64
	subs	x23, x23, #16
	b.ne	LBB4_131
; %bb.132:                              ;   in Loop: Header=BB4_130 Depth=2
	cmp	x10, x15
	b.eq	LBB4_129
; %bb.133:                              ;   in Loop: Header=BB4_130 Depth=2
	mov	x21, x19
	mov	x22, x1
	mov	x23, x2
LBB4_134:                               ;   Parent Loop BB4_122 Depth=1
                                        ;     Parent Loop BB4_130 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x21], #4
	ldr	s2, [x22]
	fmadd	s1, s0, s1, s2
	str	s1, [x22], #4
	subs	x23, x23, #1
	b.ne	LBB4_134
	b	LBB4_129
LBB4_135:                               ;   in Loop: Header=BB4_122 Depth=1
	mov	x19, x25
LBB4_136:                               ;   Parent Loop BB4_122 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_137 Depth 3
	ldr	s0, [x6, x7, lsl #2]
	mov	x20, x19
	mov	x21, x5
	mov	x22, x10
LBB4_137:                               ;   Parent Loop BB4_122 Depth=1
                                        ;     Parent Loop BB4_136 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s1, [x20], #4
	ldr	s2, [x21]
	fmadd	s1, s0, s1, s2
	str	s1, [x21], #4
	subs	x22, x22, #1
	b.ne	LBB4_137
; %bb.138:                              ;   in Loop: Header=BB4_136 Depth=2
	add	x7, x7, #1
	add	x19, x19, x13
	cmp	x7, x11
	b.ne	LBB4_136
	b	LBB4_121
LBB4_139:
	mov	x22, #0                         ; =0x0
	str	x20, [sp, #16]                  ; 8-byte Folded Spill
	stur	w21, [x29, #-168]               ; 4-byte Folded Spill
	sub	w8, w20, w21
	cmp	w8, #1
	b.lt	LBB4_168
LBB4_140:
	ldr	x9, [sp, #184]                  ; 8-byte Folded Reload
	cmp	w9, #1
	b.lt	LBB4_168
; %bb.141:
	ldur	x9, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w9, #1
	b.lt	LBB4_168
; %bb.142:
	mov	x9, #0                          ; =0x0
	mov	x10, #0                         ; =0x0
	ldur	x16, [x29, #-96]                ; 8-byte Folded Reload
	mov	w11, w16
	ldr	x1, [sp, #184]                  ; 8-byte Folded Reload
	sxtw	x12, w1
	sxtw	x17, w16
	lsl	x14, x17, #3
	ubfiz	x15, x16, #2, #32
	umull	x16, w16, w1
	and	x13, x11, #0x7ffffff8
	stur	x17, [x29, #-112]               ; 8-byte Folded Spill
	lsl	x17, x17, #2
	add	x2, x25, #16
	add	x24, x22, #16
	add	x26, x24, x17
	and	x3, x11, #0xffffffff80000007
	ubfx	x0, x11, #3, #28
	lsl	x0, x0, #5
	add	x4, x22, x0
	add	x0, x25, x0
	stp	x0, x2, [x29, #-160]            ; 16-byte Folded Spill
	lsl	x6, x12, #3
	add	x2, x25, #12
	add	x0, x17, x15
	add	x0, x22, x0
	stp	x0, x2, [x29, #-128]            ; 16-byte Folded Spill
	add	x0, x22, x17
	stur	x0, [x29, #-136]                ; 8-byte Folded Spill
	add	x0, x22, x15
	stur	x0, [x29, #-144]                ; 8-byte Folded Spill
	ldur	x27, [x29, #-104]               ; 8-byte Folded Reload
	mov	x28, x22
	mov	w30, w1
	add	x20, x25, x16, lsl #2
	b	LBB4_144
LBB4_143:                               ;   in Loop: Header=BB4_144 Depth=1
	add	x10, x10, #2
	add	x9, x9, #1
	add	x26, x26, x14
	add	x24, x24, x14
	add	x4, x4, x14
	add	x28, x28, x14
	add	x27, x27, x6
	cmp	x10, x8
	b.hs	LBB4_168
LBB4_144:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_159 Depth 2
                                        ;       Child Loop BB4_160 Depth 3
                                        ;       Child Loop BB4_163 Depth 3
                                        ;     Child Loop BB4_165 Depth 2
                                        ;       Child Loop BB4_166 Depth 3
                                        ;     Child Loop BB4_147 Depth 2
	orr	x16, x10, #0x1
	ldur	x0, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w0, #7
	b.hi	LBB4_154
; %bb.145:                              ;   in Loop: Header=BB4_144 Depth=1
	ldp	x7, x1, [x29, #-120]            ; 16-byte Folded Reload
	mul	x0, x10, x1
	mul	x16, x16, x1
	add	x0, x22, x0, lsl #2
	add	x5, x22, x16, lsl #2
	mov	x19, x27
	mov	x23, x30
	b	LBB4_147
LBB4_146:                               ;   in Loop: Header=BB4_147 Depth=2
	add	x19, x19, #4
	add	x7, x7, x15
	subs	x23, x23, #1
	b.eq	LBB4_143
LBB4_147:                               ;   Parent Loop BB4_144 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s1, [x19]
	ldr	s0, [x19, x12, lsl #2]
	ldur	s2, [x7, #-12]
	ldr	s3, [x0]
	fmadd	s3, s1, s2, s3
	str	s3, [x0]
	ldr	s3, [x5]
	fmadd	s2, s0, s2, s3
	str	s2, [x5]
	ldur	x16, [x29, #-96]                ; 8-byte Folded Reload
	cmp	w16, #1
	b.eq	LBB4_146
; %bb.148:                              ;   in Loop: Header=BB4_147 Depth=2
	ldur	s2, [x7, #-8]
	ldr	s3, [x0, #4]
	fmadd	s3, s1, s2, s3
	str	s3, [x0, #4]
	ldr	s3, [x5, #4]
	fmadd	s2, s0, s2, s3
	str	s2, [x5, #4]
	cmp	w16, #2
	b.eq	LBB4_146
; %bb.149:                              ;   in Loop: Header=BB4_147 Depth=2
	ldur	s2, [x7, #-4]
	ldr	s3, [x0, #8]
	fmadd	s3, s1, s2, s3
	str	s3, [x0, #8]
	ldr	s3, [x5, #8]
	fmadd	s2, s0, s2, s3
	str	s2, [x5, #8]
	cmp	w16, #3
	b.eq	LBB4_146
; %bb.150:                              ;   in Loop: Header=BB4_147 Depth=2
	ldr	s2, [x7]
	ldr	s3, [x0, #12]
	fmadd	s3, s1, s2, s3
	str	s3, [x0, #12]
	ldr	s3, [x5, #12]
	fmadd	s2, s0, s2, s3
	str	s2, [x5, #12]
	cmp	w16, #4
	b.eq	LBB4_146
; %bb.151:                              ;   in Loop: Header=BB4_147 Depth=2
	ldr	s2, [x7, #4]
	ldr	s3, [x0, #16]
	fmadd	s3, s1, s2, s3
	str	s3, [x0, #16]
	ldr	s3, [x5, #16]
	fmadd	s2, s0, s2, s3
	str	s2, [x5, #16]
	cmp	w16, #5
	b.eq	LBB4_146
; %bb.152:                              ;   in Loop: Header=BB4_147 Depth=2
	ldr	s2, [x7, #8]
	ldr	s3, [x0, #20]
	fmadd	s3, s1, s2, s3
	str	s3, [x0, #20]
	ldr	s3, [x5, #20]
	fmadd	s2, s0, s2, s3
	str	s2, [x5, #20]
	cmp	w16, #6
	b.eq	LBB4_146
; %bb.153:                              ;   in Loop: Header=BB4_147 Depth=2
	ldr	s2, [x7, #12]
	ldr	s3, [x0, #24]
	fmadd	s1, s1, s2, s3
	str	s1, [x0, #24]
	ldr	s1, [x5, #24]
	fmadd	s0, s0, s2, s1
	str	s0, [x5, #24]
	b	LBB4_146
LBB4_154:                               ;   in Loop: Header=BB4_144 Depth=1
	mul	x0, x10, x12
	ldur	x1, [x29, #-104]                ; 8-byte Folded Reload
	add	x0, x1, x0, lsl #2
	mul	x16, x16, x12
	add	x5, x1, x16, lsl #2
	mul	x16, x14, x9
	ldp	x1, x7, [x29, #-136]            ; 16-byte Folded Reload
	add	x2, x7, x16
	add	x7, x1, x16
	ldur	x1, [x29, #-144]                ; 8-byte Folded Reload
	add	x19, x1, x16
	add	x21, x22, x16
	cmp	x21, x20
	ccmp	x25, x19, #2, lo
	cset	w16, lo
	cmp	x7, x20
	ccmp	x25, x2, #2, lo
	cset	w1, lo
	cmp	x7, x19
	ccmp	x21, x2, #2, lo
	b.lo	LBB4_164
; %bb.155:                              ;   in Loop: Header=BB4_144 Depth=1
	tbnz	w16, #0, LBB4_164
; %bb.156:                              ;   in Loop: Header=BB4_144 Depth=1
	tbnz	w1, #0, LBB4_164
; %bb.157:                              ;   in Loop: Header=BB4_144 Depth=1
	mov	x19, #0                         ; =0x0
	ldp	x7, x21, [x29, #-160]           ; 16-byte Folded Reload
	b	LBB4_159
LBB4_158:                               ;   in Loop: Header=BB4_159 Depth=2
	add	x19, x19, #1
	add	x21, x21, x15
	add	x7, x7, x15
	cmp	x19, x30
	b.eq	LBB4_143
LBB4_159:                               ;   Parent Loop BB4_144 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_160 Depth 3
                                        ;       Child Loop BB4_163 Depth 3
	ldr	s0, [x0, x19, lsl #2]
	ldr	s1, [x5, x19, lsl #2]
	dup.4s	v2, v0[0]
	dup.4s	v3, v1[0]
	mov	x1, x24
	mov	x2, x26
	mov	x23, x21
	mov	x16, x13
LBB4_160:                               ;   Parent Loop BB4_144 Depth=1
                                        ;     Parent Loop BB4_159 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldp	q4, q5, [x23, #-16]
	ldp	q6, q7, [x1, #-16]
	fmla.4s	v6, v4, v2
	fmla.4s	v7, v5, v2
	stp	q6, q7, [x1, #-16]
	ldp	q6, q7, [x2, #-16]
	fmla.4s	v6, v4, v3
	fmla.4s	v7, v5, v3
	stp	q6, q7, [x2, #-16]
	add	x23, x23, #32
	add	x2, x2, #32
	add	x1, x1, #32
	subs	x16, x16, #8
	b.ne	LBB4_160
; %bb.161:                              ;   in Loop: Header=BB4_159 Depth=2
	cmp	x11, x13
	b.eq	LBB4_158
; %bb.162:                              ;   in Loop: Header=BB4_159 Depth=2
	mov	x16, x7
	mov	x1, x4
	mov	x2, x3
LBB4_163:                               ;   Parent Loop BB4_144 Depth=1
                                        ;     Parent Loop BB4_159 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s2, [x16], #4
	ldr	s3, [x1]
	fmadd	s3, s0, s2, s3
	str	s3, [x1]
	ldr	s3, [x1, x17]
	fmadd	s2, s1, s2, s3
	str	s2, [x1, x17]
	add	x1, x1, #4
	subs	x2, x2, #1
	b.ne	LBB4_163
	b	LBB4_158
LBB4_164:                               ;   in Loop: Header=BB4_144 Depth=1
	mov	x7, #0                          ; =0x0
	mov	x19, x25
LBB4_165:                               ;   Parent Loop BB4_144 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB4_166 Depth 3
	ldr	s0, [x0, x7, lsl #2]
	ldr	s1, [x5, x7, lsl #2]
	mov	x16, x19
	mov	x1, x28
	mov	x2, x11
LBB4_166:                               ;   Parent Loop BB4_144 Depth=1
                                        ;     Parent Loop BB4_165 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	ldr	s2, [x16], #4
	ldr	s3, [x1]
	fmadd	s3, s0, s2, s3
	str	s3, [x1]
	ldr	s3, [x1, x17]
	fmadd	s2, s1, s2, s3
	str	s2, [x1, x17]
	add	x1, x1, #4
	subs	x2, x2, #1
	b.ne	LBB4_166
; %bb.167:                              ;   in Loop: Header=BB4_165 Depth=2
	add	x7, x7, #1
	add	x19, x19, x15
	cmp	x7, x30
	b.ne	LBB4_165
	b	LBB4_143
LBB4_168:
	ldur	w15, [x29, #-168]               ; 4-byte Folded Reload
	cmp	w15, #1
	ldr	x14, [sp, #184]                 ; 8-byte Folded Reload
	b.lt	LBB4_180
; %bb.169:
	cmp	w14, #1
	b.lt	LBB4_180
; %bb.170:
	ldur	x9, [x29, #-96]                 ; 8-byte Folded Reload
	cmp	w9, #1
	b.lt	LBB4_180
; %bb.171:
	mov	x9, #0                          ; =0x0
	sxtw	x12, w8
	mov	w8, w14
	mul	x10, x12, x8
	ldp	x11, x17, [x29, #-104]          ; 16-byte Folded Reload
	add	x10, x11, x10, lsl #2
	mov	w11, w17
	mul	x12, x12, x11
	add	x12, x22, x12, lsl #2
	ldr	x13, [sp, #16]                  ; 8-byte Folded Reload
	sbfiz	x13, x13, #2, #32
	sub	x13, x13, w15, uxtw #2
	add	x13, x13, #4
	madd	x13, x13, x11, x22
	umull	x14, w17, w14
	add	x14, x25, x14, lsl #2
	cmp	w17, #16
	cset	w15, lo
	cmp	x12, x14
	ccmp	x25, x13, #2, lo
	cset	w14, lo
	and	x13, x11, #0x7ffffff0
	orr	w14, w15, w14
	add	x15, x12, #32
	add	x16, x25, #32
                                        ; kill: def $w17 killed $w17 killed $x17 def $x17
	ubfiz	x17, x17, #2, #32
	b	LBB4_173
LBB4_172:                               ;   in Loop: Header=BB4_173 Depth=1
	add	x9, x9, #1
	add	x16, x16, x17
	add	x25, x25, x17
	cmp	x9, x8
	b.eq	LBB4_180
LBB4_173:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_176 Depth 2
                                        ;     Child Loop BB4_179 Depth 2
	ldr	s0, [x10, x9, lsl #2]
	tbz	w14, #0, LBB4_175
; %bb.174:                              ;   in Loop: Header=BB4_173 Depth=1
	mov	x1, #0                          ; =0x0
	b	LBB4_178
LBB4_175:                               ;   in Loop: Header=BB4_173 Depth=1
	dup.4s	v1, v0[0]
	mov	x0, x16
	mov	x1, x15
	mov	x2, x13
LBB4_176:                               ;   Parent Loop BB4_173 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldp	q2, q3, [x0, #-32]
	ldp	q4, q5, [x0], #64
	ldp	q6, q7, [x1, #-32]
	ldp	q16, q17, [x1]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x1, #-32]
	stp	q16, q17, [x1], #64
	subs	x2, x2, #16
	b.ne	LBB4_176
; %bb.177:                              ;   in Loop: Header=BB4_173 Depth=1
	mov	x1, x13
	cmp	x13, x11
	b.eq	LBB4_172
LBB4_178:                               ;   in Loop: Header=BB4_173 Depth=1
	sub	x0, x11, x1
	lsl	x2, x1, #2
	add	x1, x12, x2
	add	x2, x25, x2
LBB4_179:                               ;   Parent Loop BB4_173 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	s1, [x2], #4
	ldr	s2, [x1]
	fmadd	s1, s0, s1, s2
	str	s1, [x1], #4
	subs	x0, x0, #1
	b.ne	LBB4_179
	b	LBB4_172
LBB4_180:
	ldp	x29, x30, [sp, #480]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #464]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #448]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #432]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #416]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #400]            ; 16-byte Folded Reload
	add	sp, sp, #496
	ret
LBB4_181:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x20, x0
Ltmp40:
Lloh0:
	adrp	x1, l_.str@PAGE
Lloh1:
	add	x1, x1, l_.str@PAGEOFF
	bl	__ZNSt16invalid_argumentC1B8ne190102EPKc
Ltmp41:
; %bb.182:
Lloh2:
	adrp	x1, __ZTISt16invalid_argument@GOTPAGE
Lloh3:
	ldr	x1, [x1, __ZTISt16invalid_argument@GOTPAGEOFF]
Lloh4:
	adrp	x2, __ZNSt16invalid_argumentD1Ev@GOTPAGE
Lloh5:
	ldr	x2, [x2, __ZNSt16invalid_argumentD1Ev@GOTPAGEOFF]
	mov	x0, x20
	bl	___cxa_throw
LBB4_183:
Ltmp22:
	mov	x0, x23
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp23:
	b	LBB4_187
LBB4_184:
Ltmp37:
	mov	x0, x23
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp38:
	b	LBB4_187
LBB4_185:
Ltmp32:
	mov	x0, x23
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp33:
	b	LBB4_187
LBB4_186:
Ltmp27:
	mov	x0, x23
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp28:
LBB4_187:
	brk	#0x1
LBB4_188:
Ltmp42:
	mov	x19, x0
	mov	x0, x20
	bl	___cxa_free_exception
	mov	x0, x19
	bl	__Unwind_Resume
LBB4_189:
Ltmp29:
	b	LBB4_193
LBB4_190:
Ltmp34:
	b	LBB4_193
LBB4_191:
Ltmp39:
	b	LBB4_193
LBB4_192:
Ltmp24:
LBB4_193:
	mov	x19, x0
	ldr	x0, [x23]
	cbz	x0, LBB4_195
; %bb.194:
	str	x0, [x23, #8]
	bl	__ZdlPv
LBB4_195:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpLdrGot	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table4:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp20-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp21-Ltmp20                  ;   Call between Ltmp20 and Ltmp21
	.uleb128 Ltmp24-Lfunc_begin4            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp21-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp35-Ltmp21                  ;   Call between Ltmp21 and Ltmp35
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp39-Lfunc_begin4            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp36-Lfunc_begin4            ; >> Call Site 4 <<
	.uleb128 Ltmp30-Ltmp36                  ;   Call between Ltmp36 and Ltmp30
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin4            ; >> Call Site 5 <<
	.uleb128 Ltmp31-Ltmp30                  ;   Call between Ltmp30 and Ltmp31
	.uleb128 Ltmp34-Lfunc_begin4            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp31-Lfunc_begin4            ; >> Call Site 6 <<
	.uleb128 Ltmp25-Ltmp31                  ;   Call between Ltmp31 and Ltmp25
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin4            ; >> Call Site 7 <<
	.uleb128 Ltmp26-Ltmp25                  ;   Call between Ltmp25 and Ltmp26
	.uleb128 Ltmp29-Lfunc_begin4            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp26-Lfunc_begin4            ; >> Call Site 8 <<
	.uleb128 Ltmp40-Ltmp26                  ;   Call between Ltmp26 and Ltmp40
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp40-Lfunc_begin4            ; >> Call Site 9 <<
	.uleb128 Ltmp41-Ltmp40                  ;   Call between Ltmp40 and Ltmp41
	.uleb128 Ltmp42-Lfunc_begin4            ;     jumps to Ltmp42
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin4            ; >> Call Site 10 <<
	.uleb128 Ltmp22-Ltmp41                  ;   Call between Ltmp41 and Ltmp22
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin4            ; >> Call Site 11 <<
	.uleb128 Ltmp23-Ltmp22                  ;   Call between Ltmp22 and Ltmp23
	.uleb128 Ltmp24-Lfunc_begin4            ;     jumps to Ltmp24
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp37-Lfunc_begin4            ; >> Call Site 12 <<
	.uleb128 Ltmp38-Ltmp37                  ;   Call between Ltmp37 and Ltmp38
	.uleb128 Ltmp39-Lfunc_begin4            ;     jumps to Ltmp39
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin4            ; >> Call Site 13 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin4            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin4            ; >> Call Site 14 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin4            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp28-Lfunc_begin4            ; >> Call Site 15 <<
	.uleb128 Lfunc_end4-Ltmp28              ;   Call between Ltmp28 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt16invalid_argumentC1B8ne190102EPKc ; -- Begin function _ZNSt16invalid_argumentC1B8ne190102EPKc
	.globl	__ZNSt16invalid_argumentC1B8ne190102EPKc
	.weak_def_can_be_hidden	__ZNSt16invalid_argumentC1B8ne190102EPKc
	.p2align	2
__ZNSt16invalid_argumentC1B8ne190102EPKc: ; @_ZNSt16invalid_argumentC1B8ne190102EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh6:
	adrp	x8, __ZTVSt16invalid_argument@GOTPAGE
Lloh7:
	ldr	x8, [x8, __ZTVSt16invalid_argument@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh6, Lloh7
	.cfi_endproc
                                        ; -- End function
	.globl	__Z13random_matrixiii           ; -- Begin function _Z13random_matrixiii
	.p2align	2
__Z13random_matrixiii:                  ; @_Z13random_matrixiii
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	stp	x28, x27, [sp, #-64]!           ; 16-byte Folded Spill
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	sub	sp, sp, #2512
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w27, -56
	.cfi_offset w28, -64
	mov	x20, x8
	str	w2, [sp, #8]
	mov	w8, #1                          ; =0x1
	mov	w9, #35173                      ; =0x8965
	movk	w9, #27655, lsl #16
	add	x10, sp, #8
LBB6_1:                                 ; =>This Inner Loop Header: Depth=1
	eor	w11, w2, w2, lsr #30
	madd	w2, w11, w9, w8
	str	w2, [x10, x8, lsl #2]
	add	x8, x8, #1
	cmp	x8, #624
	b.ne	LBB6_1
; %bb.2:
	mul	w8, w1, w0
	stp	xzr, xzr, [x20]
	str	xzr, [x20, #16]
	cbz	w8, LBB6_7
; %bb.3:
	sxtw	x22, w8
	tbnz	w22, #31, LBB6_8
; %bb.4:
	lsl	x19, x22, #2
Ltmp43:
	mov	x0, x19
	bl	__Znwm
Ltmp44:
; %bb.5:
	mov	x21, x0
	str	x0, [x20]
	add	x8, x0, x22, lsl #2
	str	x8, [x20, #16]
	mov	x1, x19
	bl	_bzero
	mov	x14, #0                         ; =0x0
	add	x8, x21, x19
	str	x8, [x20, #8]
	add	x8, sp, #8
	mov	x9, #3361                       ; =0xd21
	movk	x9, #8402, lsl #16
	movk	x9, #53773, lsl #32
	movk	x9, #3360, lsl #48
	mov	w10, #624                       ; =0x270
	mov	w11, #45279                     ; =0xb0df
	movk	w11, #39176, lsl #16
	mov	w12, #22144                     ; =0x5680
	movk	w12, #40236, lsl #16
	mov	w13, #-272236544                ; =0xefc60000
	fmov	s0, #-1.00000000
	fmov	s1, #2.00000000
LBB6_6:                                 ; =>This Inner Loop Header: Depth=1
	add	x15, x14, #1
	cmp	x15, #624
	csinc	x15, xzr, x14, eq
	ldr	w16, [x8, x14, lsl #2]
	ldr	w17, [x8, x15, lsl #2]
	and	w16, w16, #0x80000000
	and	w0, w17, #0x7ffffffe
	orr	w16, w0, w16
	add	x0, x14, #397
	lsr	x1, x0, #4
	umulh	x1, x1, x9
	lsr	x1, x1, #1
	msub	x0, x1, x10, x0
	ldr	w0, [x8, x0, lsl #2]
	tst	w17, #0x1
	csel	w17, w11, wzr, ne
	eor	w17, w17, w0
	eor	w16, w17, w16, lsr #1
	str	w16, [x8, x14, lsl #2]
	eor	w14, w16, w16, lsr #11
	and	w16, w12, w14, lsl #7
	eor	w14, w16, w14
	and	w16, w13, w14, lsl #15
	eor	w14, w16, w14
	eor	w14, w14, w14, lsr #18
	ucvtf	s2, w14, #32
	fmadd	s2, s2, s1, s0
	str	s2, [x21], #4
	mov	x14, x15
	subs	x19, x19, #4
	b.ne	LBB6_6
LBB6_7:
	add	sp, sp, #2512
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #64             ; 16-byte Folded Reload
	ret
LBB6_8:
Ltmp45:
	mov	x0, x20
	bl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
Ltmp46:
; %bb.9:
	brk	#0x1
LBB6_10:
Ltmp47:
	mov	x19, x0
	ldr	x0, [x20]
	cbz	x0, LBB6_12
; %bb.11:
	str	x0, [x20, #8]
	bl	__ZdlPv
LBB6_12:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table6:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp43-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp44-Ltmp43                  ;   Call between Ltmp43 and Ltmp44
	.uleb128 Ltmp47-Lfunc_begin5            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp45-Ltmp44                  ;   Call between Ltmp44 and Ltmp45
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Ltmp46-Ltmp45                  ;   Call between Ltmp45 and Ltmp46
	.uleb128 Ltmp47-Lfunc_begin5            ;     jumps to Ltmp47
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp46-Lfunc_begin5            ; >> Call Site 4 <<
	.uleb128 Lfunc_end5-Ltmp46              ;   Call between Ltmp46 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_ ; -- Begin function _Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
	.p2align	2
__Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_: ; @_Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #128
	stp	d9, d8, [sp, #64]               ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	ldp	x8, x11, [x0]
	sub	x10, x11, x8
	ldp	x9, x12, [x1]
	sub	x12, x12, x9
	cmp	x10, x12
	b.ne	LBB7_7
; %bb.1:
	cmp	x11, x8
	b.eq	LBB7_6
; %bb.2:
	asr	x10, x10, #2
	cmp	x10, #1
	csinc	x10, x10, xzr, hi
	movi	d0, #0000000000000000
LBB7_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	s1, [x8], #4
	ldr	s2, [x9], #4
	fabd	s1, s1, s2
	fcmp	s0, s1
	fcsel	s0, s1, s0, mi
	subs	x10, x10, #1
	b.ne	LBB7_3
; %bb.4:
	mov	w8, #4719                       ; =0x126f
	movk	w8, #14979, lsl #16
	fmov	s1, w8
	fcmp	s0, s1
	b.gt	LBB7_9
; %bb.5:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB7_6:
	movi	d0, #0000000000000000
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB7_7:
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp48:
Lloh8:
	adrp	x1, l_.str.1@PAGE
Lloh9:
	add	x1, x1, l_.str.1@PAGEOFF
	bl	__ZNSt13runtime_errorC1EPKc
Ltmp49:
; %bb.8:
Lloh10:
	adrp	x1, __ZTISt13runtime_error@GOTPAGE
Lloh11:
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]
Lloh12:
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE
Lloh13:
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB7_9:
	mov	w0, #16                         ; =0x10
	fmov	s8, s0
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp51:
	add	x8, sp, #8
	fmov	s0, s8
	bl	__ZNSt3__19to_stringEf
Ltmp52:
; %bb.10:
Ltmp54:
Lloh14:
	adrp	x2, l_.str.2@PAGE
Lloh15:
	add	x2, x2, l_.str.2@PAGEOFF
	add	x0, sp, #8
	mov	x1, #0                          ; =0x0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc
Ltmp55:
; %bb.11:
	ldr	q0, [x0]
	ldr	x8, [x0, #16]
	str	x8, [sp, #48]
	str	q0, [sp, #32]
	stp	xzr, xzr, [x0, #8]
	str	xzr, [x0]
	mov	w21, #1                         ; =0x1
Ltmp57:
	add	x1, sp, #32
	mov	x0, x19
	bl	__ZNSt13runtime_errorC1ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE
Ltmp58:
; %bb.12:
Ltmp59:
	mov	w21, #0                         ; =0x0
Lloh16:
	adrp	x1, __ZTISt13runtime_error@GOTPAGE
Lloh17:
	ldr	x1, [x1, __ZTISt13runtime_error@GOTPAGEOFF]
Lloh18:
	adrp	x2, __ZNSt13runtime_errorD1Ev@GOTPAGE
Lloh19:
	ldr	x2, [x2, __ZNSt13runtime_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
Ltmp60:
; %bb.13:
	brk	#0x1
LBB7_14:
Ltmp61:
	mov	x20, x0
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB7_16
; %bb.15:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
LBB7_16:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB7_18
; %bb.17:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	tbnz	w21, #0, LBB7_24
	b	LBB7_25
LBB7_18:
	cbnz	w21, LBB7_24
	b	LBB7_25
LBB7_19:
Ltmp56:
	mov	x20, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB7_24
; %bb.20:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	b	LBB7_24
LBB7_21:
Ltmp53:
	b	LBB7_23
LBB7_22:
Ltmp50:
LBB7_23:
	mov	x20, x0
LBB7_24:
	mov	x0, x19
	bl	___cxa_free_exception
LBB7_25:
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpLdrGot	Lloh12, Lloh13
	.loh AdrpLdrGot	Lloh10, Lloh11
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpLdrGot	Lloh18, Lloh19
	.loh AdrpLdrGot	Lloh16, Lloh17
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table7:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp48-Lfunc_begin6            ;   Call between Lfunc_begin6 and Ltmp48
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp48-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp49-Ltmp48                  ;   Call between Ltmp48 and Ltmp49
	.uleb128 Ltmp50-Lfunc_begin6            ;     jumps to Ltmp50
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp49-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Ltmp51-Ltmp49                  ;   Call between Ltmp49 and Ltmp51
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp51-Lfunc_begin6            ; >> Call Site 4 <<
	.uleb128 Ltmp52-Ltmp51                  ;   Call between Ltmp51 and Ltmp52
	.uleb128 Ltmp53-Lfunc_begin6            ;     jumps to Ltmp53
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp54-Lfunc_begin6            ; >> Call Site 5 <<
	.uleb128 Ltmp55-Ltmp54                  ;   Call between Ltmp54 and Ltmp55
	.uleb128 Ltmp56-Lfunc_begin6            ;     jumps to Ltmp56
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp57-Lfunc_begin6            ; >> Call Site 6 <<
	.uleb128 Ltmp60-Ltmp57                  ;   Call between Ltmp57 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin6            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp60-Lfunc_begin6            ; >> Call Site 7 <<
	.uleb128 Lfunc_end6-Ltmp60              ;   Call between Ltmp60 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z12print_resultRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEdiii ; -- Begin function _Z12print_resultRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEdiii
	.p2align	2
__Z12print_resultRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEdiii: ; @_Z12print_resultRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEdiii
	.cfi_startproc
; %bb.0:
	stp	d9, d8, [sp, #-48]!             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	fmov	d9, d0
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	scvtf	d0, w1
	fadd	d0, d0, d0
	scvtf	d1, w2
	fmul	d0, d0, d1
	scvtf	d1, w3
	fmul	d0, d0, d1
	fmov	d1, x8
	fmul	d1, d9, d1
	fdiv	d8, d0, d1
Lloh20:
	adrp	x8, __ZNSt3__14coutE@GOTPAGE
Lloh21:
	ldr	x8, [x8, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x9, [x8]
	ldur	x10, [x9, #-24]
	add	x10, x8, x10
	ldr	w11, [x10, #8]
	mov	w12, #-177                      ; =0xffffff4f
	and	w11, w11, w12
	orr	w11, w11, #0x20
	str	w11, [x10, #8]
	ldur	x9, [x9, #-24]
	add	x9, x8, x9
	mov	w10, #52                        ; =0x34
	str	x10, [x9, #24]
	ldrb	w9, [x0, #23]
	sxtb	w10, w9
	ldp	x11, x12, [x0]
	cmp	w10, #0
	csel	x1, x11, x0, lt
	csel	x2, x12, x9, lt
	mov	x0, x8
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xffffffcf
	orr	w10, w10, #0x80
	str	w10, [x9, #8]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	mov	w19, #12                        ; =0xc
	str	x19, [x9, #24]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #3                          ; =0x3
	str	x9, [x8, #16]
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh22:
	adrp	x1, l_.str.3@PAGE
Lloh23:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	str	x19, [x9, #24]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #2                          ; =0x2
	str	x9, [x8, #16]
	fmov	d0, d8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Lloh24:
	adrp	x1, l_.str.4@PAGE
Lloh25:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #9                          ; =0x9
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #48               ; 16-byte Folded Reload
	b	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.loh AdrpAdd	Lloh24, Lloh25
	.loh AdrpAdd	Lloh22, Lloh23
	.loh AdrpLdrGot	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
; %bb.0:
	stp	d13, d12, [sp, #-144]!          ; 16-byte Folded Spill
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #48]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #64]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #80]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #96]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #112]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #128]            ; 16-byte Folded Spill
	add	x29, sp, #128
	sub	sp, sp, #560
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
	mov	x10, #0                         ; =0x0
	mov	x8, #512                        ; =0x200
	movk	x8, #1024, lsl #32
Lloh26:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh27:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh28:
	ldr	x9, [x9]
	stur	x9, [x29, #-144]
	stur	x8, [x29, #-152]
	movi	d10, #0000000000000000
	fmov	d11, #5.00000000
	b	LBB9_2
LBB9_1:                                 ;   in Loop: Header=BB9_2 Depth=1
	ldr	x10, [sp]                       ; 8-byte Folded Reload
	add	x10, x10, #4
	cmp	x10, #8
	b.eq	LBB9_518
LBB9_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB9_39 Depth 2
                                        ;     Child Loop BB9_67 Depth 2
                                        ;       Child Loop BB9_72 Depth 3
                                        ;         Child Loop BB9_75 Depth 4
                                        ;           Child Loop BB9_78 Depth 5
                                        ;             Child Loop BB9_88 Depth 6
                                        ;               Child Loop BB9_90 Depth 7
                                        ;                 Child Loop BB9_91 Depth 8
                                        ;               Child Loop BB9_94 Depth 7
                                        ;                 Child Loop BB9_95 Depth 8
                                        ;                 Child Loop BB9_98 Depth 8
                                        ;             Child Loop BB9_81 Depth 6
                                        ;               Child Loop BB9_82 Depth 7
                                        ;                 Child Loop BB9_83 Depth 8
                                        ;       Child Loop BB9_108 Depth 3
                                        ;         Child Loop BB9_111 Depth 4
                                        ;           Child Loop BB9_124 Depth 5
                                        ;             Child Loop BB9_127 Depth 6
                                        ;               Child Loop BB9_129 Depth 7
                                        ;                 Child Loop BB9_130 Depth 8
                                        ;               Child Loop BB9_133 Depth 7
                                        ;                 Child Loop BB9_134 Depth 8
                                        ;                 Child Loop BB9_137 Depth 8
                                        ;           Child Loop BB9_115 Depth 5
                                        ;             Child Loop BB9_117 Depth 6
                                        ;               Child Loop BB9_118 Depth 7
                                        ;                 Child Loop BB9_119 Depth 8
                                        ;       Child Loop BB9_153 Depth 3
                                        ;         Child Loop BB9_156 Depth 4
                                        ;           Child Loop BB9_159 Depth 5
                                        ;             Child Loop BB9_169 Depth 6
                                        ;               Child Loop BB9_171 Depth 7
                                        ;                 Child Loop BB9_172 Depth 8
                                        ;               Child Loop BB9_175 Depth 7
                                        ;                 Child Loop BB9_176 Depth 8
                                        ;                 Child Loop BB9_179 Depth 8
                                        ;             Child Loop BB9_162 Depth 6
                                        ;               Child Loop BB9_163 Depth 7
                                        ;                 Child Loop BB9_164 Depth 8
                                        ;       Child Loop BB9_188 Depth 3
                                        ;         Child Loop BB9_191 Depth 4
                                        ;           Child Loop BB9_194 Depth 5
                                        ;             Child Loop BB9_204 Depth 6
                                        ;               Child Loop BB9_206 Depth 7
                                        ;                 Child Loop BB9_207 Depth 8
                                        ;               Child Loop BB9_210 Depth 7
                                        ;                 Child Loop BB9_211 Depth 8
                                        ;                 Child Loop BB9_214 Depth 8
                                        ;             Child Loop BB9_197 Depth 6
                                        ;               Child Loop BB9_198 Depth 7
                                        ;                 Child Loop BB9_199 Depth 8
                                        ;       Child Loop BB9_220 Depth 3
                                        ;         Child Loop BB9_223 Depth 4
                                        ;           Child Loop BB9_226 Depth 5
                                        ;             Child Loop BB9_236 Depth 6
                                        ;               Child Loop BB9_238 Depth 7
                                        ;                 Child Loop BB9_239 Depth 8
                                        ;               Child Loop BB9_242 Depth 7
                                        ;                 Child Loop BB9_243 Depth 8
                                        ;                 Child Loop BB9_246 Depth 8
                                        ;             Child Loop BB9_229 Depth 6
                                        ;               Child Loop BB9_230 Depth 7
                                        ;                 Child Loop BB9_231 Depth 8
                                        ;       Child Loop BB9_252 Depth 3
                                        ;         Child Loop BB9_255 Depth 4
                                        ;           Child Loop BB9_258 Depth 5
                                        ;             Child Loop BB9_268 Depth 6
                                        ;               Child Loop BB9_270 Depth 7
                                        ;                 Child Loop BB9_271 Depth 8
                                        ;               Child Loop BB9_274 Depth 7
                                        ;                 Child Loop BB9_275 Depth 8
                                        ;                 Child Loop BB9_278 Depth 8
                                        ;             Child Loop BB9_261 Depth 6
                                        ;               Child Loop BB9_262 Depth 7
                                        ;                 Child Loop BB9_263 Depth 8
                                        ;       Child Loop BB9_284 Depth 3
                                        ;         Child Loop BB9_287 Depth 4
                                        ;           Child Loop BB9_290 Depth 5
                                        ;             Child Loop BB9_300 Depth 6
                                        ;               Child Loop BB9_302 Depth 7
                                        ;                 Child Loop BB9_303 Depth 8
                                        ;               Child Loop BB9_306 Depth 7
                                        ;                 Child Loop BB9_307 Depth 8
                                        ;                 Child Loop BB9_310 Depth 8
                                        ;             Child Loop BB9_293 Depth 6
                                        ;               Child Loop BB9_294 Depth 7
                                        ;                 Child Loop BB9_295 Depth 8
                                        ;       Child Loop BB9_326 Depth 3
                                        ;         Child Loop BB9_329 Depth 4
                                        ;           Child Loop BB9_342 Depth 5
                                        ;             Child Loop BB9_345 Depth 6
                                        ;               Child Loop BB9_347 Depth 7
                                        ;                 Child Loop BB9_348 Depth 8
                                        ;               Child Loop BB9_351 Depth 7
                                        ;                 Child Loop BB9_352 Depth 8
                                        ;                 Child Loop BB9_355 Depth 8
                                        ;           Child Loop BB9_333 Depth 5
                                        ;             Child Loop BB9_335 Depth 6
                                        ;               Child Loop BB9_336 Depth 7
                                        ;                 Child Loop BB9_337 Depth 8
                                        ;       Child Loop BB9_364 Depth 3
                                        ;         Child Loop BB9_367 Depth 4
                                        ;           Child Loop BB9_380 Depth 5
                                        ;             Child Loop BB9_383 Depth 6
                                        ;               Child Loop BB9_385 Depth 7
                                        ;                 Child Loop BB9_386 Depth 8
                                        ;               Child Loop BB9_389 Depth 7
                                        ;                 Child Loop BB9_390 Depth 8
                                        ;                 Child Loop BB9_393 Depth 8
                                        ;           Child Loop BB9_371 Depth 5
                                        ;             Child Loop BB9_373 Depth 6
                                        ;               Child Loop BB9_374 Depth 7
                                        ;                 Child Loop BB9_375 Depth 8
                                        ;       Child Loop BB9_399 Depth 3
                                        ;         Child Loop BB9_402 Depth 4
                                        ;           Child Loop BB9_415 Depth 5
                                        ;             Child Loop BB9_418 Depth 6
                                        ;               Child Loop BB9_420 Depth 7
                                        ;                 Child Loop BB9_421 Depth 8
                                        ;               Child Loop BB9_424 Depth 7
                                        ;                 Child Loop BB9_425 Depth 8
                                        ;                 Child Loop BB9_428 Depth 8
                                        ;           Child Loop BB9_406 Depth 5
                                        ;             Child Loop BB9_408 Depth 6
                                        ;               Child Loop BB9_409 Depth 7
                                        ;                 Child Loop BB9_410 Depth 8
                                        ;       Child Loop BB9_434 Depth 3
                                        ;         Child Loop BB9_437 Depth 4
                                        ;           Child Loop BB9_450 Depth 5
                                        ;             Child Loop BB9_453 Depth 6
                                        ;               Child Loop BB9_455 Depth 7
                                        ;                 Child Loop BB9_456 Depth 8
                                        ;               Child Loop BB9_459 Depth 7
                                        ;                 Child Loop BB9_460 Depth 8
                                        ;                 Child Loop BB9_463 Depth 8
                                        ;           Child Loop BB9_441 Depth 5
                                        ;             Child Loop BB9_443 Depth 6
                                        ;               Child Loop BB9_444 Depth 7
                                        ;                 Child Loop BB9_445 Depth 8
                                        ;       Child Loop BB9_469 Depth 3
                                        ;         Child Loop BB9_472 Depth 4
                                        ;           Child Loop BB9_485 Depth 5
                                        ;             Child Loop BB9_488 Depth 6
                                        ;               Child Loop BB9_490 Depth 7
                                        ;                 Child Loop BB9_491 Depth 8
                                        ;               Child Loop BB9_494 Depth 7
                                        ;                 Child Loop BB9_495 Depth 8
                                        ;                 Child Loop BB9_498 Depth 8
                                        ;           Child Loop BB9_476 Depth 5
                                        ;             Child Loop BB9_478 Depth 6
                                        ;               Child Loop BB9_479 Depth 7
                                        ;                 Child Loop BB9_480 Depth 8
	str	x10, [sp]                       ; 8-byte Folded Spill
	sub	x8, x29, #152
	ldr	w20, [x8, x10]
Ltmp62:
	sub	x8, x29, #240
	mov	x0, x20
	mov	x1, x20
	mov	w2, #42                         ; =0x2a
	bl	__Z13random_matrixiii
Ltmp63:
; %bb.3:                                ;   in Loop: Header=BB9_2 Depth=1
Ltmp65:
	add	x8, sp, #424
	mov	x0, x20
	mov	x1, x20
	mov	w2, #123                        ; =0x7b
	bl	__Z13random_matrixiii
Ltmp66:
; %bb.4:                                ;   in Loop: Header=BB9_2 Depth=1
	sxtw	x21, w20
Ltmp68:
	add	x8, sp, #400
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	bl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp69:
; %bb.5:                                ;   in Loop: Header=BB9_2 Depth=1
Ltmp71:
	sub	x8, x29, #176
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	bl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp72:
; %bb.6:                                ;   in Loop: Header=BB9_2 Depth=1
Ltmp74:
	add	x0, sp, #400
	sub	x1, x29, #176
	bl	__Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
Ltmp75:
; %bb.7:                                ;   in Loop: Header=BB9_2 Depth=1
	fmov	s8, s0
	ldur	x0, [x29, #-176]
	cbz	x0, LBB9_9
; %bb.8:                                ;   in Loop: Header=BB9_2 Depth=1
	stur	x0, [x29, #-168]
	bl	__ZdlPv
LBB9_9:                                 ;   in Loop: Header=BB9_2 Depth=1
Ltmp77:
Lloh29:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh30:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh31:
	adrp	x1, l_.str.5@PAGE
Lloh32:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	w2, #14                         ; =0xe
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp78:
; %bb.10:                               ;   in Loop: Header=BB9_2 Depth=1
Ltmp79:
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp80:
; %bb.11:                               ;   in Loop: Header=BB9_2 Depth=1
Ltmp81:
Lloh33:
	adrp	x1, l_.str.6@PAGE
Lloh34:
	add	x1, x1, l_.str.6@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp82:
; %bb.12:                               ;   in Loop: Header=BB9_2 Depth=1
Ltmp83:
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp84:
; %bb.13:                               ;   in Loop: Header=BB9_2 Depth=1
	mov	w8, #10                         ; =0xa
	sturb	w8, [x29, #-176]
Ltmp85:
	sub	x1, x29, #176
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp86:
; %bb.14:                               ;   in Loop: Header=BB9_2 Depth=1
	mov	w8, #13                         ; =0xd
	strb	w8, [sp, #391]
Lloh35:
	adrp	x9, l_.str.7@PAGE
Lloh36:
	add	x9, x9, l_.str.7@PAGEOFF
	ldr	x8, [x9]
	str	x8, [sp, #368]
	ldur	x8, [x9, #5]
	add	x9, sp, #118
	stur	x8, [x9, #255]
	strb	wzr, [sp, #381]
Ltmp87:
	sub	x8, x29, #176
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	bl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp88:
; %bb.15:                               ;   in Loop: Header=BB9_2 Depth=1
	ldp	x9, x8, [x29, #-176]
	sub	x8, x8, x9
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x9, x8]
	str	s0, [sp, #336]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
Ltmp89:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	bl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp90:
; %bb.16:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
Ltmp91:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	bl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp92:
; %bb.17:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x24, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x25, x0
Ltmp93:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	bl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp94:
; %bb.18:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x27, x0
Ltmp95:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	bl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp96:
; %bb.19:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x28, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
Ltmp97:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	bl	__Z12matmul_naiveRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp98:
; %bb.20:                               ;   in Loop: Header=BB9_2 Depth=1
	str	x20, [sp, #304]                 ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x20, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	ldur	x0, [x29, #-176]
	cbz	x0, LBB9_22
; %bb.21:                               ;   in Loop: Header=BB9_2 Depth=1
	stur	x0, [x29, #-168]
	bl	__ZdlPv
LBB9_22:                                ;   in Loop: Header=BB9_2 Depth=1
	ldr	x8, [sp, #296]                  ; 8-byte Folded Reload
	sub	x8, x8, x22
	scvtf	d0, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	fadd	d0, d0, d10
	sub	x8, x24, x23
	scvtf	d2, x8
	fdiv	d2, d2, d1
	fadd	d0, d0, d2
	sub	x8, x26, x25
	scvtf	d2, x8
	fdiv	d2, d2, d1
	fadd	d0, d0, d2
	sub	x8, x28, x27
	scvtf	d2, x8
	fdiv	d2, d2, d1
	fadd	d0, d0, d2
	sub	x8, x20, x19
	scvtf	d2, x8
	fdiv	d1, d2, d1
	fadd	d0, d0, d1
	fdiv	d0, d0, d11
Ltmp100:
	add	x0, sp, #368
	mov	x1, x21
	ldr	x20, [sp, #304]                 ; 8-byte Folded Reload
	mov	x2, x20
	mov	x3, x21
	bl	__Z12print_resultRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEdiii
Ltmp101:
; %bb.23:                               ;   in Loop: Header=BB9_2 Depth=1
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_25
; %bb.24:                               ;   in Loop: Header=BB9_2 Depth=1
	ldr	x0, [sp, #368]
	bl	__ZdlPv
LBB9_25:                                ;   in Loop: Header=BB9_2 Depth=1
	mov	w8, #17                         ; =0x11
	strb	w8, [sp, #391]
Lloh37:
	adrp	x8, l_.str.8@PAGE
Lloh38:
	add	x8, x8, l_.str.8@PAGEOFF
Lloh39:
	ldr	q0, [x8]
	str	q0, [sp, #368]
	mov	w8, #41                         ; =0x29
	strh	w8, [sp, #384]
Ltmp103:
	sub	x8, x29, #176
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	bl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp104:
; %bb.26:                               ;   in Loop: Header=BB9_2 Depth=1
	ldp	x9, x8, [x29, #-176]
	sub	x8, x8, x9
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x9, x8]
	str	s0, [sp, #336]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
Ltmp105:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	bl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp106:
; %bb.27:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
Ltmp107:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	bl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp108:
; %bb.28:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x24, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x25, x0
Ltmp109:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	bl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp110:
; %bb.29:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x27, x0
Ltmp111:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	bl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp112:
; %bb.30:                               ;   in Loop: Header=BB9_2 Depth=1
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x28, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
Ltmp113:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	bl	__Z16matmul_reorderedRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iii
Ltmp114:
; %bb.31:                               ;   in Loop: Header=BB9_2 Depth=1
	mov	x20, x22
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	ldur	x0, [x29, #-176]
	cbz	x0, LBB9_33
; %bb.32:                               ;   in Loop: Header=BB9_2 Depth=1
	stur	x0, [x29, #-168]
	bl	__ZdlPv
LBB9_33:                                ;   in Loop: Header=BB9_2 Depth=1
	ldr	x8, [sp, #296]                  ; 8-byte Folded Reload
	sub	x8, x8, x20
	scvtf	d0, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	fadd	d0, d0, d10
	sub	x8, x24, x23
	scvtf	d2, x8
	fdiv	d2, d2, d1
	fadd	d0, d0, d2
	sub	x8, x26, x25
	scvtf	d2, x8
	fdiv	d2, d2, d1
	fadd	d0, d0, d2
	sub	x8, x28, x27
	scvtf	d2, x8
	fdiv	d2, d2, d1
	fadd	d0, d0, d2
	sub	x8, x22, x19
	scvtf	d2, x8
	fdiv	d1, d2, d1
	fadd	d0, d0, d1
	fdiv	d0, d0, d11
Ltmp116:
	add	x0, sp, #368
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	mov	x1, x27
	mov	x2, x21
	mov	x3, x27
	bl	__Z12print_resultRKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEdiii
Ltmp117:
; %bb.34:                               ;   in Loop: Header=BB9_2 Depth=1
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_36
; %bb.35:                               ;   in Loop: Header=BB9_2 Depth=1
	ldr	x0, [sp, #368]
	bl	__ZdlPv
LBB9_36:                                ;   in Loop: Header=BB9_2 Depth=1
	mov	x20, #0                         ; =0x0
	scvtf	d0, w21
	fadd	d1, d0, d0
	fmul	d1, d1, d0
	fmul	d12, d1, d0
	b	LBB9_39
LBB9_37:                                ;   in Loop: Header=BB9_39 Depth=2
	ldr	x0, [sp, #336]
	bl	__ZdlPv
	ldrsb	w8, [sp, #335]
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	tbnz	w8, #31, LBB9_63
LBB9_38:                                ;   in Loop: Header=BB9_39 Depth=2
	add	x20, x20, #4
	cmp	x20, #16
	b.eq	LBB9_64
LBB9_39:                                ;   Parent Loop BB9_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
Lloh40:
	adrp	x8, l___const.main.row_counts@PAGE
Lloh41:
	add	x8, x8, l___const.main.row_counts@PAGEOFF
	ldr	w19, [x8, x20]
Ltmp119:
	sub	x8, x29, #176
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x27
	mov	x3, x21
	mov	x4, x27
	mov	x5, x19
	bl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp120:
; %bb.40:                               ;   in Loop: Header=BB9_39 Depth=2
Ltmp122:
	add	x0, sp, #400
	sub	x1, x29, #176
	bl	__Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
Ltmp123:
; %bb.41:                               ;   in Loop: Header=BB9_39 Depth=2
	fcmp	s8, s0
	fcsel	s8, s0, s8, mi
	ldur	x0, [x29, #-176]
	cbz	x0, LBB9_43
; %bb.42:                               ;   in Loop: Header=BB9_39 Depth=2
	stur	x0, [x29, #-168]
	bl	__ZdlPv
LBB9_43:                                ;   in Loop: Header=BB9_39 Depth=2
Ltmp125:
	add	x8, sp, #312
	mov	x0, x19
	bl	__ZNSt3__19to_stringEi
Ltmp126:
; %bb.44:                               ;   in Loop: Header=BB9_39 Depth=2
Ltmp128:
	add	x0, sp, #312
	mov	x1, #0                          ; =0x0
Lloh42:
	adrp	x2, l_.str.9@PAGE
Lloh43:
	add	x2, x2, l_.str.9@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc
Ltmp129:
; %bb.45:                               ;   in Loop: Header=BB9_39 Depth=2
	ldr	q0, [x0]
	ldr	x8, [x0, #16]
	str	x8, [sp, #352]
	str	q0, [sp, #336]
	stp	xzr, xzr, [x0, #8]
	str	xzr, [x0]
Ltmp131:
	add	x0, sp, #336
Lloh44:
	adrp	x1, l_.str.10@PAGE
Lloh45:
	add	x1, x1, l_.str.10@PAGEOFF
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
Ltmp132:
; %bb.46:                               ;   in Loop: Header=BB9_39 Depth=2
	str	x20, [sp, #280]                 ; 8-byte Folded Spill
	ldr	q0, [x0]
	ldr	x8, [x0, #16]
	str	x8, [sp, #384]
	str	q0, [sp, #368]
	stp	xzr, xzr, [x0, #8]
	str	xzr, [x0]
Ltmp134:
	sub	x8, x29, #176
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x27
	mov	x3, x21
	mov	x4, x27
	mov	x5, x19
	bl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp135:
; %bb.47:                               ;   in Loop: Header=BB9_39 Depth=2
	ldp	x9, x8, [x29, #-176]
	sub	x8, x8, x9
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x9, x8]
	stur	s0, [x29, #-180]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #296]                  ; 8-byte Folded Spill
Ltmp136:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	ldr	x20, [sp, #304]                 ; 8-byte Folded Reload
	mov	x3, x20
	mov	x4, x21
	mov	x5, x19
	bl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp137:
; %bb.48:                               ;   in Loop: Header=BB9_39 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #288]                  ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	stur	s0, [x29, #-212]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x24, x0
Ltmp138:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	mov	x5, x19
	bl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp139:
; %bb.49:                               ;   in Loop: Header=BB9_39 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x25, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	stur	s0, [x29, #-212]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x26, x0
Ltmp140:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	mov	x5, x19
	bl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp141:
; %bb.50:                               ;   in Loop: Header=BB9_39 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x27, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	stur	s0, [x29, #-212]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x28, x0
Ltmp142:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x20
	mov	x3, x21
	mov	x4, x20
	mov	x5, x19
	bl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp143:
; %bb.51:                               ;   in Loop: Header=BB9_39 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	stur	s0, [x29, #-212]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x23, x0
Ltmp144:
	sub	x8, x29, #208
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x20
	mov	x4, x21
	mov	x5, x19
	bl	__Z15matmul_multirowRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp145:
; %bb.52:                               ;   in Loop: Header=BB9_39 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x0, x8, [x29, #-208]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	stur	s0, [x29, #-212]
	stur	x0, [x29, #-200]
	bl	__ZdlPv
	ldur	x0, [x29, #-176]
	cbz	x0, LBB9_54
; %bb.53:                               ;   in Loop: Header=BB9_39 Depth=2
	stur	x0, [x29, #-168]
	bl	__ZdlPv
LBB9_54:                                ;   in Loop: Header=BB9_39 Depth=2
Lloh46:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh47:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	mov	w11, #-177                      ; =0xffffff4f
	and	w10, w10, w11
	orr	w10, w10, #0x20
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #52                         ; =0x34
	str	x9, [x8, #24]
	ldrb	w8, [sp, #391]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #368]
	cmp	w9, #0
	add	x9, sp, #368
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp147:
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp148:
; %bb.55:                               ;   in Loop: Header=BB9_39 Depth=2
	ldp	x9, x8, [sp, #288]              ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d0, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d13, x8
	fdiv	d0, d0, d13
	fadd	d0, d0, d10
	sub	x8, x25, x24
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	sub	x8, x27, x26
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	sub	x8, x22, x28
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	sub	x8, x19, x23
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	fdiv	d9, d0, d11
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xffffffcf
	orr	w10, w10, #0x80
	str	w10, [x9, #8]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	mov	w10, #12                        ; =0xc
	str	x10, [x9, #24]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #3                          ; =0x3
	str	x9, [x8, #16]
Ltmp149:
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp150:
; %bb.56:                               ;   in Loop: Header=BB9_39 Depth=2
Ltmp151:
Lloh48:
	adrp	x1, l_.str.3@PAGE
Lloh49:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp152:
; %bb.57:                               ;   in Loop: Header=BB9_39 Depth=2
	fmul	d0, d9, d13
	fdiv	d0, d12, d0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	mov	w10, #12                        ; =0xc
	str	x10, [x9, #24]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #2                          ; =0x2
	str	x9, [x8, #16]
Ltmp153:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp154:
; %bb.58:                               ;   in Loop: Header=BB9_39 Depth=2
Ltmp155:
Lloh50:
	adrp	x1, l_.str.4@PAGE
Lloh51:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp156:
; %bb.59:                               ;   in Loop: Header=BB9_39 Depth=2
	ldrsb	w8, [sp, #391]
	tbnz	w8, #31, LBB9_61
; %bb.60:                               ;   in Loop: Header=BB9_39 Depth=2
	ldrsb	w8, [sp, #359]
	ldr	x20, [sp, #280]                 ; 8-byte Folded Reload
	tbz	w8, #31, LBB9_62
	b	LBB9_37
LBB9_61:                                ;   in Loop: Header=BB9_39 Depth=2
	ldr	x0, [sp, #368]
	bl	__ZdlPv
	ldrsb	w8, [sp, #359]
	ldr	x20, [sp, #280]                 ; 8-byte Folded Reload
	tbnz	w8, #31, LBB9_37
LBB9_62:                                ;   in Loop: Header=BB9_39 Depth=2
	ldrsb	w8, [sp, #335]
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	tbz	w8, #31, LBB9_38
LBB9_63:                                ;   in Loop: Header=BB9_39 Depth=2
	ldr	x0, [sp, #312]
	bl	__ZdlPv
	add	x20, x20, #4
	cmp	x20, #16
	b.ne	LBB9_39
LBB9_64:                                ;   in Loop: Header=BB9_2 Depth=1
	mov	x19, #0                         ; =0x0
	mul	w8, w21, w27
	ubfiz	x20, x8, #2, #32
	lsl	x24, x27, #2
	str	x21, [sp, #280]                 ; 8-byte Folded Spill
	stp	x8, x20, [sp, #104]             ; 16-byte Folded Spill
	b	LBB9_67
LBB9_65:                                ;   in Loop: Header=BB9_67 Depth=2
	ldr	x0, [sp, #368]
	bl	__ZdlPv
	ldursb	w8, [x29, #-185]
	ldr	x19, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	tbnz	w8, #31, LBB9_508
LBB9_66:                                ;   in Loop: Header=BB9_67 Depth=2
	add	x19, x19, #4
	cmp	x19, #24
	b.eq	LBB9_509
LBB9_67:                                ;   Parent Loop BB9_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB9_72 Depth 3
                                        ;         Child Loop BB9_75 Depth 4
                                        ;           Child Loop BB9_78 Depth 5
                                        ;             Child Loop BB9_88 Depth 6
                                        ;               Child Loop BB9_90 Depth 7
                                        ;                 Child Loop BB9_91 Depth 8
                                        ;               Child Loop BB9_94 Depth 7
                                        ;                 Child Loop BB9_95 Depth 8
                                        ;                 Child Loop BB9_98 Depth 8
                                        ;             Child Loop BB9_81 Depth 6
                                        ;               Child Loop BB9_82 Depth 7
                                        ;                 Child Loop BB9_83 Depth 8
                                        ;       Child Loop BB9_108 Depth 3
                                        ;         Child Loop BB9_111 Depth 4
                                        ;           Child Loop BB9_124 Depth 5
                                        ;             Child Loop BB9_127 Depth 6
                                        ;               Child Loop BB9_129 Depth 7
                                        ;                 Child Loop BB9_130 Depth 8
                                        ;               Child Loop BB9_133 Depth 7
                                        ;                 Child Loop BB9_134 Depth 8
                                        ;                 Child Loop BB9_137 Depth 8
                                        ;           Child Loop BB9_115 Depth 5
                                        ;             Child Loop BB9_117 Depth 6
                                        ;               Child Loop BB9_118 Depth 7
                                        ;                 Child Loop BB9_119 Depth 8
                                        ;       Child Loop BB9_153 Depth 3
                                        ;         Child Loop BB9_156 Depth 4
                                        ;           Child Loop BB9_159 Depth 5
                                        ;             Child Loop BB9_169 Depth 6
                                        ;               Child Loop BB9_171 Depth 7
                                        ;                 Child Loop BB9_172 Depth 8
                                        ;               Child Loop BB9_175 Depth 7
                                        ;                 Child Loop BB9_176 Depth 8
                                        ;                 Child Loop BB9_179 Depth 8
                                        ;             Child Loop BB9_162 Depth 6
                                        ;               Child Loop BB9_163 Depth 7
                                        ;                 Child Loop BB9_164 Depth 8
                                        ;       Child Loop BB9_188 Depth 3
                                        ;         Child Loop BB9_191 Depth 4
                                        ;           Child Loop BB9_194 Depth 5
                                        ;             Child Loop BB9_204 Depth 6
                                        ;               Child Loop BB9_206 Depth 7
                                        ;                 Child Loop BB9_207 Depth 8
                                        ;               Child Loop BB9_210 Depth 7
                                        ;                 Child Loop BB9_211 Depth 8
                                        ;                 Child Loop BB9_214 Depth 8
                                        ;             Child Loop BB9_197 Depth 6
                                        ;               Child Loop BB9_198 Depth 7
                                        ;                 Child Loop BB9_199 Depth 8
                                        ;       Child Loop BB9_220 Depth 3
                                        ;         Child Loop BB9_223 Depth 4
                                        ;           Child Loop BB9_226 Depth 5
                                        ;             Child Loop BB9_236 Depth 6
                                        ;               Child Loop BB9_238 Depth 7
                                        ;                 Child Loop BB9_239 Depth 8
                                        ;               Child Loop BB9_242 Depth 7
                                        ;                 Child Loop BB9_243 Depth 8
                                        ;                 Child Loop BB9_246 Depth 8
                                        ;             Child Loop BB9_229 Depth 6
                                        ;               Child Loop BB9_230 Depth 7
                                        ;                 Child Loop BB9_231 Depth 8
                                        ;       Child Loop BB9_252 Depth 3
                                        ;         Child Loop BB9_255 Depth 4
                                        ;           Child Loop BB9_258 Depth 5
                                        ;             Child Loop BB9_268 Depth 6
                                        ;               Child Loop BB9_270 Depth 7
                                        ;                 Child Loop BB9_271 Depth 8
                                        ;               Child Loop BB9_274 Depth 7
                                        ;                 Child Loop BB9_275 Depth 8
                                        ;                 Child Loop BB9_278 Depth 8
                                        ;             Child Loop BB9_261 Depth 6
                                        ;               Child Loop BB9_262 Depth 7
                                        ;                 Child Loop BB9_263 Depth 8
                                        ;       Child Loop BB9_284 Depth 3
                                        ;         Child Loop BB9_287 Depth 4
                                        ;           Child Loop BB9_290 Depth 5
                                        ;             Child Loop BB9_300 Depth 6
                                        ;               Child Loop BB9_302 Depth 7
                                        ;                 Child Loop BB9_303 Depth 8
                                        ;               Child Loop BB9_306 Depth 7
                                        ;                 Child Loop BB9_307 Depth 8
                                        ;                 Child Loop BB9_310 Depth 8
                                        ;             Child Loop BB9_293 Depth 6
                                        ;               Child Loop BB9_294 Depth 7
                                        ;                 Child Loop BB9_295 Depth 8
                                        ;       Child Loop BB9_326 Depth 3
                                        ;         Child Loop BB9_329 Depth 4
                                        ;           Child Loop BB9_342 Depth 5
                                        ;             Child Loop BB9_345 Depth 6
                                        ;               Child Loop BB9_347 Depth 7
                                        ;                 Child Loop BB9_348 Depth 8
                                        ;               Child Loop BB9_351 Depth 7
                                        ;                 Child Loop BB9_352 Depth 8
                                        ;                 Child Loop BB9_355 Depth 8
                                        ;           Child Loop BB9_333 Depth 5
                                        ;             Child Loop BB9_335 Depth 6
                                        ;               Child Loop BB9_336 Depth 7
                                        ;                 Child Loop BB9_337 Depth 8
                                        ;       Child Loop BB9_364 Depth 3
                                        ;         Child Loop BB9_367 Depth 4
                                        ;           Child Loop BB9_380 Depth 5
                                        ;             Child Loop BB9_383 Depth 6
                                        ;               Child Loop BB9_385 Depth 7
                                        ;                 Child Loop BB9_386 Depth 8
                                        ;               Child Loop BB9_389 Depth 7
                                        ;                 Child Loop BB9_390 Depth 8
                                        ;                 Child Loop BB9_393 Depth 8
                                        ;           Child Loop BB9_371 Depth 5
                                        ;             Child Loop BB9_373 Depth 6
                                        ;               Child Loop BB9_374 Depth 7
                                        ;                 Child Loop BB9_375 Depth 8
                                        ;       Child Loop BB9_399 Depth 3
                                        ;         Child Loop BB9_402 Depth 4
                                        ;           Child Loop BB9_415 Depth 5
                                        ;             Child Loop BB9_418 Depth 6
                                        ;               Child Loop BB9_420 Depth 7
                                        ;                 Child Loop BB9_421 Depth 8
                                        ;               Child Loop BB9_424 Depth 7
                                        ;                 Child Loop BB9_425 Depth 8
                                        ;                 Child Loop BB9_428 Depth 8
                                        ;           Child Loop BB9_406 Depth 5
                                        ;             Child Loop BB9_408 Depth 6
                                        ;               Child Loop BB9_409 Depth 7
                                        ;                 Child Loop BB9_410 Depth 8
                                        ;       Child Loop BB9_434 Depth 3
                                        ;         Child Loop BB9_437 Depth 4
                                        ;           Child Loop BB9_450 Depth 5
                                        ;             Child Loop BB9_453 Depth 6
                                        ;               Child Loop BB9_455 Depth 7
                                        ;                 Child Loop BB9_456 Depth 8
                                        ;               Child Loop BB9_459 Depth 7
                                        ;                 Child Loop BB9_460 Depth 8
                                        ;                 Child Loop BB9_463 Depth 8
                                        ;           Child Loop BB9_441 Depth 5
                                        ;             Child Loop BB9_443 Depth 6
                                        ;               Child Loop BB9_444 Depth 7
                                        ;                 Child Loop BB9_445 Depth 8
                                        ;       Child Loop BB9_469 Depth 3
                                        ;         Child Loop BB9_472 Depth 4
                                        ;           Child Loop BB9_485 Depth 5
                                        ;             Child Loop BB9_488 Depth 6
                                        ;               Child Loop BB9_490 Depth 7
                                        ;                 Child Loop BB9_491 Depth 8
                                        ;               Child Loop BB9_494 Depth 7
                                        ;                 Child Loop BB9_495 Depth 8
                                        ;                 Child Loop BB9_498 Depth 8
                                        ;           Child Loop BB9_476 Depth 5
                                        ;             Child Loop BB9_478 Depth 6
                                        ;               Child Loop BB9_479 Depth 7
                                        ;                 Child Loop BB9_480 Depth 8
	str	x19, [sp, #8]                   ; 8-byte Folded Spill
Lloh52:
	adrp	x8, l___const.main.block_sizes@PAGE
Lloh53:
	add	x8, x8, l___const.main.block_sizes@PAGEOFF
	ldr	w22, [x8, x19]
	sxtw	x19, w22
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	stp	x22, x19, [sp, #288]            ; 16-byte Folded Spill
	cbz	w27, LBB9_100
; %bb.68:                               ;   in Loop: Header=BB9_67 Depth=2
Ltmp158:
	mov	x0, x20
	bl	__Znwm
Ltmp159:
; %bb.69:                               ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	cmp	w27, #1
	str	x23, [sp, #120]                 ; 8-byte Folded Spill
	b.lt	LBB9_101
; %bb.70:                               ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	ldr	x19, [sp, #296]                 ; 8-byte Folded Reload
	mul	x8, x24, x19
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x19, #2
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	stp	xzr, x8, [sp, #128]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	add	x8, x23, #32
	stp	x23, x8, [sp, #144]             ; 16-byte Folded Spill
	b	LBB9_72
LBB9_71:                                ;   in Loop: Header=BB9_72 Depth=3
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #152]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #224]                  ; 8-byte Folded Reload
	add	x9, x9, x19
	cmp	w27, w9
	b.le	LBB9_99
LBB9_72:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_75 Depth 4
                                        ;           Child Loop BB9_78 Depth 5
                                        ;             Child Loop BB9_88 Depth 6
                                        ;               Child Loop BB9_90 Depth 7
                                        ;                 Child Loop BB9_91 Depth 8
                                        ;               Child Loop BB9_94 Depth 7
                                        ;                 Child Loop BB9_95 Depth 8
                                        ;                 Child Loop BB9_98 Depth 8
                                        ;             Child Loop BB9_81 Depth 6
                                        ;               Child Loop BB9_82 Depth 7
                                        ;                 Child Loop BB9_83 Depth 8
	add	w8, w22, w9
	cmp	w8, w21
	csel	w8, w8, w21, lt
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_71
; %bb.73:                               ;   in Loop: Header=BB9_72 Depth=3
	mov	x28, #0                         ; =0x0
	sxtw	x1, w8
	ldp	x11, x8, [sp, #120]             ; 16-byte Folded Reload
	ldr	x9, [sp, #160]                  ; 8-byte Folded Reload
	madd	x8, x9, x8, x11
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	stp	xzr, x8, [sp, #184]             ; 16-byte Folded Spill
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	stp	x8, x9, [sp, #168]              ; 16-byte Folded Spill
	b	LBB9_75
LBB9_74:                                ;   in Loop: Header=BB9_75 Depth=4
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	add	x11, x8, #1
	ldp	x8, x9, [sp, #160]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #176]             ; 16-byte Folded Spill
	add	x28, x28, x14
	cmp	w27, w28
	mov	x19, x14
	b.le	LBB9_71
LBB9_75:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_78 Depth 5
                                        ;             Child Loop BB9_88 Depth 6
                                        ;               Child Loop BB9_90 Depth 7
                                        ;                 Child Loop BB9_91 Depth 8
                                        ;               Child Loop BB9_94 Depth 7
                                        ;                 Child Loop BB9_95 Depth 8
                                        ;                 Child Loop BB9_98 Depth 8
                                        ;             Child Loop BB9_81 Depth 6
                                        ;               Child Loop BB9_82 Depth 7
                                        ;                 Child Loop BB9_83 Depth 8
	add	w8, w22, w28
	cmp	w8, w21
	csel	w8, w8, w21, lt
	cmp	w8, w28
	mov	x14, x19
	b.le	LBB9_74
; %bb.76:                               ;   in Loop: Header=BB9_75 Depth=4
	str	xzr, [sp, #264]                 ; 8-byte Folded Spill
	mov	x15, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
	ldp	x19, x13, [sp, #176]            ; 16-byte Folded Reload
	madd	w9, w22, w13, w22
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x28, #1
	cmp	x9, x11
	csinc	x9, x9, x28, gt
	mul	x11, x13, x14
	mvn	x11, x11
	add	x9, x9, x11
	sxtw	x23, w8
	ldp	x8, x26, [sp, #160]             ; 16-byte Folded Reload
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	madd	x8, x8, x13, x11
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	madd	x8, x24, x9, x8
	add	x8, x8, #4
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #144]              ; 16-byte Folded Reload
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	str	x8, [sp, #256]                  ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	mov	x13, x22
	b	LBB9_78
LBB9_77:                                ;   in Loop: Header=BB9_78 Depth=5
	add	x15, x20, #1
	ldp	x22, x14, [sp, #288]            ; 16-byte Folded Reload
	ldp	x13, x11, [sp, #248]            ; 16-byte Folded Reload
	add	w13, w13, w22
	add	x8, x8, x14
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	sub	x9, x9, x14
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x26, x26, x9
	add	x11, x11, x9
	str	x11, [sp, #256]                 ; 8-byte Folded Spill
	ldp	x11, x21, [sp, #272]            ; 16-byte Folded Reload
	add	x11, x11, x9
	str	x11, [sp, #272]                 ; 8-byte Folded Spill
	add	x19, x19, x9
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	mov	x12, x9
	cmp	w27, w9
	b.le	LBB9_74
LBB9_78:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_88 Depth 6
                                        ;               Child Loop BB9_90 Depth 7
                                        ;                 Child Loop BB9_91 Depth 8
                                        ;               Child Loop BB9_94 Depth 7
                                        ;                 Child Loop BB9_95 Depth 8
                                        ;                 Child Loop BB9_98 Depth 8
                                        ;             Child Loop BB9_81 Depth 6
                                        ;               Child Loop BB9_82 Depth 7
                                        ;                 Child Loop BB9_83 Depth 8
	str	x13, [sp, #248]                 ; 8-byte Folded Spill
	sxtw	x9, w13
	cmp	x21, x9
	csel	x9, x21, x9, lt
	cmp	x9, x8
	csel	x9, x9, x8, gt
	mov	x20, x15
	madd	w11, w22, w15, w22
	cmp	w21, w11
	csel	w11, w21, w11, lt
	sxtw	x11, w11
	add	x13, x12, #1
	cmp	x11, x13
	csinc	x13, x11, x12, gt
	add	x11, x12, x14
	cmp	w11, w21
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	csel	w15, w11, w21, lt
	cmp	w15, w12
	b.le	LBB9_77
; %bb.79:                               ;   in Loop: Header=BB9_78 Depth=5
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x14, x20, x11
	sub	x11, x13, x14
	sxtw	x16, w15
	cmp	x11, #16
	b.hs	LBB9_86
; %bb.80:                               ;   in Loop: Header=BB9_78 Depth=5
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #224]                 ; 8-byte Folded Reload
LBB9_81:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_82 Depth 7
                                        ;                 Child Loop BB9_83 Depth 8
	mul	x9, x13, x27
	add	x9, x10, x9, lsl #2
	mov	x14, x19
	mov	x15, x28
LBB9_82:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ;             Parent Loop BB9_81 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_83 Depth 8
	mov	x17, #0                         ; =0x0
	ldr	s0, [x9, x15, lsl #2]
LBB9_83:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ;             Parent Loop BB9_81 Depth=6
                                        ;               Parent Loop BB9_82 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x14, x17, lsl #2]
	ldr	s2, [x11, x17, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x11, x17, lsl #2]
	add	x17, x17, #1
	add	x0, x12, x17
	cmp	x0, x16
	b.lt	LBB9_83
; %bb.84:                               ;   in Loop: Header=BB9_82 Depth=7
	add	x15, x15, #1
	add	x14, x14, x24
	cmp	x15, x23
	b.lt	LBB9_82
; %bb.85:                               ;   in Loop: Header=BB9_81 Depth=6
	add	x13, x13, #1
	add	x11, x11, x24
	cmp	x13, x1
	b.lt	LBB9_81
	b	LBB9_77
LBB9_86:                                ;   in Loop: Header=BB9_78 Depth=5
	mov	x3, #0                          ; =0x0
	ldp	x15, x30, [sp, #264]            ; 16-byte Folded Reload
	add	x9, x9, x15
	and	x7, x9, #0xfffffffffffffff0
	ldp	x21, x9, [sp, #224]             ; 16-byte Folded Reload
	mul	x9, x9, x20
	mvn	x14, x14
	add	x13, x13, x14
	lsl	x13, x13, #2
	ldp	x14, x15, [sp, #208]            ; 16-byte Folded Reload
	add	x22, x15, x9
	add	x14, x14, x9
	add	x25, x14, x13
	ldp	x14, x15, [sp, #192]            ; 16-byte Folded Reload
	add	x4, x15, x9
	add	x9, x14, x9
	add	x14, x9, x13
	and	x17, x11, #0xfffffffffffffff0
	ldr	x9, [sp, #256]                  ; 8-byte Folded Reload
	b	LBB9_88
LBB9_87:                                ;   in Loop: Header=BB9_88 Depth=6
	add	x21, x21, #1
	add	x3, x3, #1
	add	x9, x9, x24
	add	x30, x30, x24
	cmp	x21, x1
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	b.ge	LBB9_77
LBB9_88:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_90 Depth 7
                                        ;                 Child Loop BB9_91 Depth 8
                                        ;               Child Loop BB9_94 Depth 7
                                        ;                 Child Loop BB9_95 Depth 8
                                        ;                 Child Loop BB9_98 Depth 8
	mul	x15, x24, x3
	add	x0, x14, x15
	mul	x13, x21, x27
	add	x13, x10, x13, lsl #2
	add	x15, x4, x15
	cmp	x15, x25
	ccmp	x22, x0, #2, lo
	mov	x27, x19
	mov	x6, x26
	mov	x0, x28
	b.hs	LBB9_94
; %bb.89:                               ;   in Loop: Header=BB9_88 Depth=6
	mov	x15, x19
	mov	x0, x28
LBB9_90:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ;             Parent Loop BB9_88 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_91 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x13, x0, lsl #2]
LBB9_91:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ;             Parent Loop BB9_88 Depth=6
                                        ;               Parent Loop BB9_90 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x15, x2, lsl #2]
	ldr	s2, [x30, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x2, lsl #2]
	add	x2, x2, #1
	add	x5, x12, x2
	cmp	x5, x16
	b.lt	LBB9_91
; %bb.92:                               ;   in Loop: Header=BB9_90 Depth=7
	add	x0, x0, #1
	add	x15, x15, x24
	cmp	x0, x23
	b.lt	LBB9_90
	b	LBB9_87
LBB9_93:                                ;   in Loop: Header=BB9_94 Depth=7
	add	x0, x0, #1
	add	x6, x6, x24
	add	x27, x27, x24
	cmp	x0, x23
	b.ge	LBB9_87
LBB9_94:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ;             Parent Loop BB9_88 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_95 Depth 8
                                        ;                 Child Loop BB9_98 Depth 8
	ldr	s0, [x13, x0, lsl #2]
	dup.4s	v1, v0[0]
	mov	x15, x9
	mov	x5, x6
	mov	x2, x7
LBB9_95:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ;             Parent Loop BB9_88 Depth=6
                                        ;               Parent Loop BB9_94 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x5, #-32]
	ldp	q4, q5, [x5], #64
	ldp	q6, q7, [x15, #-32]
	ldp	q16, q17, [x15]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x15, #-32]
	stp	q16, q17, [x15], #64
	subs	x2, x2, #16
	b.ne	LBB9_95
; %bb.96:                               ;   in Loop: Header=BB9_94 Depth=7
	cmp	x11, x17
	b.eq	LBB9_93
; %bb.97:                               ;   in Loop: Header=BB9_94 Depth=7
	mov	x15, x7
LBB9_98:                                ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_72 Depth=3
                                        ;         Parent Loop BB9_75 Depth=4
                                        ;           Parent Loop BB9_78 Depth=5
                                        ;             Parent Loop BB9_88 Depth=6
                                        ;               Parent Loop BB9_94 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x27, x15, lsl #2]
	ldr	s2, [x30, x15, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x15, lsl #2]
	add	x15, x15, #1
	add	x2, x12, x15
	cmp	x2, x16
	b.lt	LBB9_98
	b	LBB9_93
LBB9_99:                                ;   in Loop: Header=BB9_67 Depth=2
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	b	LBB9_102
LBB9_100:                               ;   in Loop: Header=BB9_67 Depth=2
	str	xzr, [sp, #120]                 ; 8-byte Folded Spill
	b	LBB9_102
LBB9_101:                               ;   in Loop: Header=BB9_67 Depth=2
	ldr	x19, [sp, #296]                 ; 8-byte Folded Reload
LBB9_102:                               ;   in Loop: Header=BB9_67 Depth=2
Ltmp161:
	add	x0, sp, #400
	sub	x1, x29, #176
	bl	__Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
Ltmp162:
; %bb.103:                              ;   in Loop: Header=BB9_67 Depth=2
	fmov	s9, s0
	stp	xzr, xzr, [x29, #-208]
	stur	xzr, [x29, #-192]
	cbz	w21, LBB9_139
; %bb.104:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp164:
	mov	x0, x20
	bl	__Znwm
Ltmp165:
; %bb.105:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-208]
	stur	x19, [x29, #-192]
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-200]
	cmp	w21, #1
	b.lt	LBB9_140
; %bb.106:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	ldr	x19, [sp, #296]                 ; 8-byte Folded Reload
	mul	x8, x24, x19
	str	x8, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x19, #2
	stp	x8, x11, [sp, #168]             ; 16-byte Folded Spill
	add	x8, x8, #32
	stp	x8, x23, [sp, #88]              ; 16-byte Folded Spill
	add	x8, x23, #32
	stp	x8, xzr, [sp, #136]             ; 16-byte Folded Spill
	str	x23, [sp, #128]                 ; 8-byte Folded Spill
	b	LBB9_108
LBB9_107:                               ;   in Loop: Header=BB9_108 Depth=3
	ldp	x9, x8, [sp, #136]              ; 16-byte Folded Reload
	add	x11, x8, #1
	ldr	x8, [sp, #264]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #136]             ; 16-byte Folded Spill
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #128]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	add	x9, x9, x19
	cmp	w21, w9
	b.le	LBB9_138
LBB9_108:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_111 Depth 4
                                        ;           Child Loop BB9_124 Depth 5
                                        ;             Child Loop BB9_127 Depth 6
                                        ;               Child Loop BB9_129 Depth 7
                                        ;                 Child Loop BB9_130 Depth 8
                                        ;               Child Loop BB9_133 Depth 7
                                        ;                 Child Loop BB9_134 Depth 8
                                        ;                 Child Loop BB9_137 Depth 8
                                        ;           Child Loop BB9_115 Depth 5
                                        ;             Child Loop BB9_117 Depth 6
                                        ;               Child Loop BB9_118 Depth 7
                                        ;                 Child Loop BB9_119 Depth 8
	add	w8, w22, w9
	cmp	w8, w27
	csel	w8, w8, w27, lt
	str	x9, [sp, #240]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_107
; %bb.109:                              ;   in Loop: Header=BB9_108 Depth=3
	mov	x11, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x12, [sp, #264]                 ; 8-byte Folded Reload
	madd	x8, x12, x8, x9
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #128]              ; 16-byte Folded Reload
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	b	LBB9_111
LBB9_110:                               ;   in Loop: Header=BB9_111 Depth=4
	ldp	x9, x11, [sp, #184]             ; 16-byte Folded Reload
	add	x11, x11, #1
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #200]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x22, x19, [sp, #288]            ; 16-byte Folded Reload
	add	x0, x0, x19
	cmp	w21, w0
	b.le	LBB9_107
LBB9_111:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_124 Depth 5
                                        ;             Child Loop BB9_127 Depth 6
                                        ;               Child Loop BB9_129 Depth 7
                                        ;                 Child Loop BB9_130 Depth 8
                                        ;               Child Loop BB9_133 Depth 7
                                        ;                 Child Loop BB9_134 Depth 8
                                        ;                 Child Loop BB9_137 Depth 8
                                        ;           Child Loop BB9_115 Depth 5
                                        ;             Child Loop BB9_117 Depth 6
                                        ;               Child Loop BB9_118 Depth 7
                                        ;                 Child Loop BB9_119 Depth 8
	str	x11, [sp, #192]                 ; 8-byte Folded Spill
	add	w8, w22, w0
	cmp	w8, w27
	csel	w8, w8, w27, lt
	cmp	w8, w0
	b.le	LBB9_110
; %bb.112:                              ;   in Loop: Header=BB9_111 Depth=4
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #192]                 ; 8-byte Folded Reload
	madd	w9, w9, w12, w9
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x0, #1
	cmp	x9, x11
	csinc	x9, x9, x0, gt
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x11, x12, x11
	sub	x19, x9, x11
	sxtw	x25, w8
	cmp	x19, #16
	b.hs	LBB9_122
; %bb.113:                              ;   in Loop: Header=BB9_111 Depth=4
	mov	x9, #0                          ; =0x0
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	b	LBB9_115
LBB9_114:                               ;   in Loop: Header=BB9_115 Depth=5
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	mov	x9, x11
	cmp	w21, w11
	b.le	LBB9_110
LBB9_115:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_117 Depth 6
                                        ;               Child Loop BB9_118 Depth 7
                                        ;                 Child Loop BB9_119 Depth 8
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	add	x11, x9, x11
	cmp	w11, w27
	csel	w12, w11, w27, lt
	cmp	w12, w9
	b.le	LBB9_114
; %bb.116:                              ;   in Loop: Header=BB9_115 Depth=5
	sxtw	x12, w12
	ldp	x14, x13, [sp, #240]            ; 16-byte Folded Reload
LBB9_117:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_115 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_118 Depth 7
                                        ;                 Child Loop BB9_119 Depth 8
	mul	x15, x14, x27
	add	x15, x10, x15, lsl #2
	mov	x16, x8
	mov	x17, x9
LBB9_118:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_115 Depth=5
                                        ;             Parent Loop BB9_117 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_119 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x15, x17, lsl #2]
LBB9_119:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_115 Depth=5
                                        ;             Parent Loop BB9_117 Depth=6
                                        ;               Parent Loop BB9_118 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x16, x2, lsl #2]
	ldr	s2, [x13, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x13, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x0, x2
	cmp	x3, x25
	b.lt	LBB9_119
; %bb.120:                              ;   in Loop: Header=BB9_118 Depth=7
	add	x17, x17, #1
	add	x16, x16, x24
	cmp	x17, x12
	b.lt	LBB9_118
; %bb.121:                              ;   in Loop: Header=BB9_117 Depth=6
	add	x14, x14, #1
	add	x13, x13, x24
	cmp	x14, x1
	b.lt	LBB9_117
	b	LBB9_114
LBB9_122:                               ;   in Loop: Header=BB9_111 Depth=4
	mov	x16, #0                         ; =0x0
	mov	x13, #0                         ; =0x0
	mvn	x8, x11
	add	x8, x9, x8
	lsl	x8, x8, #2
	ldp	x15, x9, [sp, #168]             ; 16-byte Folded Reload
	mul	x9, x9, x12
	add	x11, x15, x9
	str	x11, [sp, #224]                 ; 8-byte Folded Spill
	add	x11, x11, x8
	add	x11, x11, #4
	str	x11, [sp, #216]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	add	x30, x11, x9
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	add	x9, x11, x9
	add	x14, x9, x8
	and	x4, x19, #0xfffffffffffffff0
	add	x3, x0, x4
	lsr	x8, x19, #4
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x22, [sp, #184]                 ; 8-byte Folded Reload
	b	LBB9_124
LBB9_123:                               ;   in Loop: Header=BB9_124 Depth=5
	add	x16, x20, #1
	ldp	x8, x9, [sp, #264]              ; 16-byte Folded Reload
	add	x22, x22, x8
	add	x15, x15, x8
	add	x9, x9, x8
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	mov	x13, x8
	ldr	x21, [sp, #280]                 ; 8-byte Folded Reload
	cmp	w21, w8
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	b.le	LBB9_110
LBB9_124:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_127 Depth 6
                                        ;               Child Loop BB9_129 Depth 7
                                        ;                 Child Loop BB9_130 Depth 8
                                        ;               Child Loop BB9_133 Depth 7
                                        ;                 Child Loop BB9_134 Depth 8
                                        ;                 Child Loop BB9_137 Depth 8
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	mov	x20, x16
	madd	w8, w8, w16, w8
	cmp	w21, w8
	csel	w8, w21, w8, lt
	sxtw	x8, w8
	add	x9, x13, #1
	cmp	x8, x9
	csinc	x8, x8, x13, gt
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	add	x9, x13, x9
	cmp	w9, w27
	str	x9, [sp, #256]                  ; 8-byte Folded Spill
	csel	w9, w9, w27, lt
	cmp	w9, w13
	b.le	LBB9_123
; %bb.125:                              ;   in Loop: Header=BB9_124 Depth=5
	mov	x16, #0                         ; =0x0
	ldr	x11, [sp, #264]                 ; 8-byte Folded Reload
	mul	x11, x11, x20
	ldp	x17, x12, [sp, #216]            ; 16-byte Folded Reload
	add	x12, x12, x11
	add	x11, x17, x11
	ldr	x17, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x20, x17
	mvn	x17, x17
	add	x8, x8, x17
	madd	x27, x24, x8, x11
	sxtw	x2, w9
	ldp	x9, x5, [sp, #240]              ; 16-byte Folded Reload
	ldr	x26, [sp, #208]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
	b	LBB9_127
LBB9_126:                               ;   in Loop: Header=BB9_127 Depth=6
	add	x9, x9, #1
	add	x16, x16, #1
	add	x11, x11, x24
	add	x26, x26, x24
	add	x5, x5, x24
	cmp	x9, x1
	b.ge	LBB9_123
LBB9_127:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_124 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_129 Depth 7
                                        ;                 Child Loop BB9_130 Depth 8
                                        ;               Child Loop BB9_133 Depth 7
                                        ;                 Child Loop BB9_134 Depth 8
                                        ;                 Child Loop BB9_137 Depth 8
	mul	x8, x24, x16
	add	x17, x14, x8
	ldr	x6, [sp, #304]                  ; 8-byte Folded Reload
	mul	x6, x9, x6
	add	x21, x10, x6, lsl #2
	add	x8, x30, x8
	cmp	x8, x27
	ccmp	x12, x17, #2, lo
	mov	x28, x15
	mov	x17, x22
	mov	x8, x13
	b.hs	LBB9_133
; %bb.128:                              ;   in Loop: Header=BB9_127 Depth=6
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	mov	x17, x13
LBB9_129:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_124 Depth=5
                                        ;             Parent Loop BB9_127 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_130 Depth 8
	mov	x6, #0                          ; =0x0
	ldr	s0, [x21, x17, lsl #2]
LBB9_130:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_124 Depth=5
                                        ;             Parent Loop BB9_127 Depth=6
                                        ;               Parent Loop BB9_129 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x8, x6, lsl #2]
	ldr	s2, [x5, x6, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x6, lsl #2]
	add	x6, x6, #1
	add	x7, x0, x6
	cmp	x7, x25
	b.lt	LBB9_130
; %bb.131:                              ;   in Loop: Header=BB9_129 Depth=7
	add	x17, x17, #1
	add	x8, x8, x24
	cmp	x17, x2
	b.lt	LBB9_129
	b	LBB9_126
LBB9_132:                               ;   in Loop: Header=BB9_133 Depth=7
	add	x8, x8, #1
	add	x17, x17, x24
	add	x28, x28, x24
	cmp	x8, x2
	b.ge	LBB9_126
LBB9_133:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_124 Depth=5
                                        ;             Parent Loop BB9_127 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_134 Depth 8
                                        ;                 Child Loop BB9_137 Depth 8
	ldr	s0, [x21, x8, lsl #2]
	dup.4s	v1, v0[0]
	mov	x6, x11
	mov	x7, x17
	mov	x23, x4
LBB9_134:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_124 Depth=5
                                        ;             Parent Loop BB9_127 Depth=6
                                        ;               Parent Loop BB9_133 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x7, #-32]
	ldp	q4, q5, [x7], #64
	ldp	q6, q7, [x6, #-32]
	ldp	q16, q17, [x6]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x6, #-32]
	stp	q16, q17, [x6], #64
	subs	x23, x23, #16
	b.ne	LBB9_134
; %bb.135:                              ;   in Loop: Header=BB9_133 Depth=7
	cmp	x19, x4
	b.eq	LBB9_132
; %bb.136:                              ;   in Loop: Header=BB9_133 Depth=7
	mov	x6, x26
	mov	x7, x3
LBB9_137:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_108 Depth=3
                                        ;         Parent Loop BB9_111 Depth=4
                                        ;           Parent Loop BB9_124 Depth=5
                                        ;             Parent Loop BB9_127 Depth=6
                                        ;               Parent Loop BB9_133 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x28, x7, lsl #2]
	ldr	s2, [x6]
	fmadd	s1, s0, s1, s2
	str	s1, [x6], #4
	add	x7, x7, #1
	cmp	x7, x25
	b.lt	LBB9_137
	b	LBB9_132
LBB9_138:                               ;   in Loop: Header=BB9_67 Depth=2
	ldr	x23, [sp, #96]                  ; 8-byte Folded Reload
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	b	LBB9_141
LBB9_139:                               ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, #0                         ; =0x0
	b	LBB9_141
LBB9_140:                               ;   in Loop: Header=BB9_67 Depth=2
	ldr	x19, [sp, #296]                 ; 8-byte Folded Reload
LBB9_141:                               ;   in Loop: Header=BB9_67 Depth=2
Ltmp167:
	add	x0, sp, #400
	sub	x1, x29, #208
	bl	__Z17check_correctnessRKNSt3__16vectorIfNS_9allocatorIfEEEES5_
Ltmp168:
; %bb.142:                              ;   in Loop: Header=BB9_67 Depth=2
	fcmp	s8, s9
	fcsel	s1, s9, s8, mi
	fcmp	s1, s0
	fcsel	s8, s0, s1, mi
	cbz	x23, LBB9_144
; %bb.143:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x0, x23
	bl	__ZdlPv
LBB9_144:                               ;   in Loop: Header=BB9_67 Depth=2
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	cbz	x0, LBB9_146
; %bb.145:                              ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZdlPv
LBB9_146:                               ;   in Loop: Header=BB9_67 Depth=2
Ltmp170:
	sub	x8, x29, #208
	mov	x0, x22
	bl	__ZNSt3__19to_stringEi
Ltmp171:
; %bb.147:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp173:
	add	x8, sp, #368
	sub	x1, x29, #208
Lloh54:
	adrp	x0, l_.str.11@PAGE
Lloh55:
	add	x0, x0, l_.str.11@PAGEOFF
	bl	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
Ltmp174:
; %bb.148:                              ;   in Loop: Header=BB9_67 Depth=2
	cbz	w27, LBB9_181
; %bb.149:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp176:
	mov	x0, x20
	bl	__Znwm
Ltmp177:
; %bb.150:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x25, x0, x8, lsl #2
	mov	x1, x20
	bl	_bzero
	cmp	w21, #1
	b.lt	LBB9_182
; %bb.151:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x19
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x19, #2
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	stp	xzr, x8, [sp, #128]             ; 16-byte Folded Spill
	add	x8, x8, #32
	stp	x25, x8, [sp, #88]              ; 16-byte Folded Spill
	add	x8, x23, #32
	stp	x23, x8, [sp, #144]             ; 16-byte Folded Spill
	str	x23, [sp, #120]                 ; 8-byte Folded Spill
	b	LBB9_153
LBB9_152:                               ;   in Loop: Header=BB9_153 Depth=3
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #152]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #224]                  ; 8-byte Folded Reload
	add	x9, x9, x19
	cmp	w21, w9
	b.le	LBB9_180
LBB9_153:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_156 Depth 4
                                        ;           Child Loop BB9_159 Depth 5
                                        ;             Child Loop BB9_169 Depth 6
                                        ;               Child Loop BB9_171 Depth 7
                                        ;                 Child Loop BB9_172 Depth 8
                                        ;               Child Loop BB9_175 Depth 7
                                        ;                 Child Loop BB9_176 Depth 8
                                        ;                 Child Loop BB9_179 Depth 8
                                        ;             Child Loop BB9_162 Depth 6
                                        ;               Child Loop BB9_163 Depth 7
                                        ;                 Child Loop BB9_164 Depth 8
	add	w8, w22, w9
	cmp	w8, w27
	csel	w8, w8, w27, lt
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_152
; %bb.154:                              ;   in Loop: Header=BB9_153 Depth=3
	mov	x15, #0                         ; =0x0
	sxtw	x1, w8
	ldp	x9, x8, [sp, #120]              ; 16-byte Folded Reload
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	madd	x8, x11, x8, x9
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	stp	xzr, x8, [sp, #184]             ; 16-byte Folded Spill
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	stp	x8, x9, [sp, #168]              ; 16-byte Folded Spill
	b	LBB9_156
LBB9_155:                               ;   in Loop: Header=BB9_156 Depth=4
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	add	x11, x8, #1
	ldp	x8, x9, [sp, #160]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #176]             ; 16-byte Folded Spill
	add	x15, x15, x13
	cmp	w21, w15
	mov	x22, x12
	mov	x19, x13
	b.le	LBB9_152
LBB9_156:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_159 Depth 5
                                        ;             Child Loop BB9_169 Depth 6
                                        ;               Child Loop BB9_171 Depth 7
                                        ;                 Child Loop BB9_172 Depth 8
                                        ;               Child Loop BB9_175 Depth 7
                                        ;                 Child Loop BB9_176 Depth 8
                                        ;                 Child Loop BB9_179 Depth 8
                                        ;             Child Loop BB9_162 Depth 6
                                        ;               Child Loop BB9_163 Depth 7
                                        ;                 Child Loop BB9_164 Depth 8
	add	w8, w22, w15
	cmp	w8, w27
	csel	w8, w8, w27, lt
	cmp	w8, w15
	mov	x12, x22
	mov	x13, x19
	b.le	LBB9_155
; %bb.157:                              ;   in Loop: Header=BB9_156 Depth=4
	str	xzr, [sp, #264]                 ; 8-byte Folded Spill
	mov	x16, #0                         ; =0x0
	mov	x19, #0                         ; =0x0
	ldp	x26, x14, [sp, #176]            ; 16-byte Folded Reload
	madd	w9, w12, w14, w12
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x15, #1
	cmp	x9, x11
	csinc	x9, x9, x15, gt
	mul	x11, x14, x13
	mvn	x11, x11
	add	x9, x9, x11
	sxtw	x25, w8
	ldp	x8, x22, [sp, #160]             ; 16-byte Folded Reload
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	madd	x8, x8, x14, x11
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	madd	x8, x24, x9, x8
	add	x8, x8, #4
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #144]              ; 16-byte Folded Reload
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	str	x8, [sp, #256]                  ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	mov	x14, x12
	b	LBB9_159
LBB9_158:                               ;   in Loop: Header=BB9_159 Depth=5
	add	x16, x20, #1
	ldp	x12, x13, [sp, #288]            ; 16-byte Folded Reload
	ldp	x14, x11, [sp, #248]            ; 16-byte Folded Reload
	add	w14, w14, w12
	add	x8, x8, x13
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	sub	x9, x9, x13
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x22, x22, x9
	add	x11, x11, x9
	str	x11, [sp, #256]                 ; 8-byte Folded Spill
	ldp	x11, x21, [sp, #272]            ; 16-byte Folded Reload
	add	x11, x11, x9
	str	x11, [sp, #272]                 ; 8-byte Folded Spill
	add	x26, x26, x9
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	mov	x19, x9
	cmp	w21, w9
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	b.le	LBB9_155
LBB9_159:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_169 Depth 6
                                        ;               Child Loop BB9_171 Depth 7
                                        ;                 Child Loop BB9_172 Depth 8
                                        ;               Child Loop BB9_175 Depth 7
                                        ;                 Child Loop BB9_176 Depth 8
                                        ;                 Child Loop BB9_179 Depth 8
                                        ;             Child Loop BB9_162 Depth 6
                                        ;               Child Loop BB9_163 Depth 7
                                        ;                 Child Loop BB9_164 Depth 8
	sxtw	x9, w14
	cmp	x21, x9
	csel	x9, x21, x9, lt
	cmp	x9, x8
	csel	x9, x9, x8, gt
	mov	x20, x16
	madd	w11, w12, w16, w12
	cmp	w21, w11
	csel	w11, w21, w11, lt
	sxtw	x11, w11
	add	x12, x19, #1
	cmp	x11, x12
	csinc	x12, x11, x19, gt
	add	x11, x19, x13
	cmp	w11, w27
	stp	x11, x14, [sp, #240]            ; 16-byte Folded Spill
	csel	w14, w11, w27, lt
	cmp	w14, w19
	b.le	LBB9_158
; %bb.160:                              ;   in Loop: Header=BB9_159 Depth=5
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x13, x20, x11
	sub	x11, x12, x13
	sxtw	x23, w14
	cmp	x11, #16
	b.hs	LBB9_167
; %bb.161:                              ;   in Loop: Header=BB9_159 Depth=5
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	ldr	x12, [sp, #224]                 ; 8-byte Folded Reload
LBB9_162:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_163 Depth 7
                                        ;                 Child Loop BB9_164 Depth 8
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	mul	x9, x12, x9
	add	x9, x10, x9, lsl #2
	mov	x13, x26
	mov	x14, x15
LBB9_163:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ;             Parent Loop BB9_162 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_164 Depth 8
	mov	x16, #0                         ; =0x0
	ldr	s0, [x9, x14, lsl #2]
LBB9_164:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ;             Parent Loop BB9_162 Depth=6
                                        ;               Parent Loop BB9_163 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x13, x16, lsl #2]
	ldr	s2, [x11, x16, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x11, x16, lsl #2]
	add	x16, x16, #1
	add	x17, x19, x16
	cmp	x17, x23
	b.lt	LBB9_164
; %bb.165:                              ;   in Loop: Header=BB9_163 Depth=7
	add	x14, x14, #1
	add	x13, x13, x24
	cmp	x14, x25
	b.lt	LBB9_163
; %bb.166:                              ;   in Loop: Header=BB9_162 Depth=6
	add	x12, x12, #1
	add	x11, x11, x24
	cmp	x12, x1
	b.lt	LBB9_162
	b	LBB9_158
LBB9_167:                               ;   in Loop: Header=BB9_159 Depth=5
	mov	x3, #0                          ; =0x0
	ldp	x14, x16, [sp, #264]            ; 16-byte Folded Reload
	add	x9, x9, x14
	and	x7, x9, #0xfffffffffffffff0
	ldp	x21, x9, [sp, #224]             ; 16-byte Folded Reload
	mul	x9, x9, x20
	mvn	x13, x13
	add	x12, x12, x13
	lsl	x13, x12, #2
	ldp	x12, x14, [sp, #208]            ; 16-byte Folded Reload
	add	x27, x14, x9
	add	x12, x12, x9
	add	x12, x12, x13
	ldr	x14, [sp, #200]                 ; 8-byte Folded Reload
	add	x4, x14, x9
	ldr	x14, [sp, #192]                 ; 8-byte Folded Reload
	add	x9, x14, x9
	add	x14, x9, x13
	and	x17, x11, #0xfffffffffffffff0
	ldr	x9, [sp, #256]                  ; 8-byte Folded Reload
	b	LBB9_169
LBB9_168:                               ;   in Loop: Header=BB9_169 Depth=6
	add	x21, x21, #1
	add	x3, x3, #1
	add	x9, x9, x24
	add	x16, x16, x24
	cmp	x21, x1
	b.ge	LBB9_158
LBB9_169:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_171 Depth 7
                                        ;                 Child Loop BB9_172 Depth 8
                                        ;               Child Loop BB9_175 Depth 7
                                        ;                 Child Loop BB9_176 Depth 8
                                        ;                 Child Loop BB9_179 Depth 8
	mul	x0, x24, x3
	add	x2, x14, x0
	ldr	x13, [sp, #304]                 ; 8-byte Folded Reload
	mul	x13, x21, x13
	add	x13, x10, x13, lsl #2
	add	x0, x4, x0
	cmp	x0, x12
	ccmp	x27, x2, #2, lo
	mov	x30, x26
	mov	x6, x22
	mov	x0, x15
	b.hs	LBB9_175
; %bb.170:                              ;   in Loop: Header=BB9_169 Depth=6
	mov	x0, x26
	mov	x2, x15
LBB9_171:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ;             Parent Loop BB9_169 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_172 Depth 8
	mov	x5, #0                          ; =0x0
	ldr	s0, [x13, x2, lsl #2]
LBB9_172:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ;             Parent Loop BB9_169 Depth=6
                                        ;               Parent Loop BB9_171 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x0, x5, lsl #2]
	ldr	s2, [x16, x5, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x16, x5, lsl #2]
	add	x5, x5, #1
	add	x6, x19, x5
	cmp	x6, x23
	b.lt	LBB9_172
; %bb.173:                              ;   in Loop: Header=BB9_171 Depth=7
	add	x2, x2, #1
	add	x0, x0, x24
	cmp	x2, x25
	b.lt	LBB9_171
	b	LBB9_168
LBB9_174:                               ;   in Loop: Header=BB9_175 Depth=7
	add	x0, x0, #1
	add	x6, x6, x24
	add	x30, x30, x24
	cmp	x0, x25
	b.ge	LBB9_168
LBB9_175:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ;             Parent Loop BB9_169 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_176 Depth 8
                                        ;                 Child Loop BB9_179 Depth 8
	ldr	s0, [x13, x0, lsl #2]
	dup.4s	v1, v0[0]
	mov	x28, x9
	mov	x5, x6
	mov	x2, x7
LBB9_176:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ;             Parent Loop BB9_169 Depth=6
                                        ;               Parent Loop BB9_175 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x5, #-32]
	ldp	q4, q5, [x5], #64
	ldp	q6, q7, [x28, #-32]
	ldp	q16, q17, [x28]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x28, #-32]
	stp	q16, q17, [x28], #64
	subs	x2, x2, #16
	b.ne	LBB9_176
; %bb.177:                              ;   in Loop: Header=BB9_175 Depth=7
	cmp	x11, x17
	b.eq	LBB9_174
; %bb.178:                              ;   in Loop: Header=BB9_175 Depth=7
	mov	x2, x7
LBB9_179:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_153 Depth=3
                                        ;         Parent Loop BB9_156 Depth=4
                                        ;           Parent Loop BB9_159 Depth=5
                                        ;             Parent Loop BB9_169 Depth=6
                                        ;               Parent Loop BB9_175 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x30, x2, lsl #2]
	ldr	s2, [x16, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x16, x2, lsl #2]
	add	x2, x2, #1
	add	x5, x19, x2
	cmp	x5, x23
	b.lt	LBB9_179
	b	LBB9_174
LBB9_180:                               ;   in Loop: Header=BB9_67 Depth=2
	ldr	x23, [sp, #120]                 ; 8-byte Folded Reload
	ldr	x25, [sp, #88]                  ; 8-byte Folded Reload
	b	LBB9_182
LBB9_181:                               ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, #0                         ; =0x0
	mov	x25, #0                         ; =0x0
LBB9_182:                               ;   in Loop: Header=BB9_67 Depth=2
	sub	x8, x25, x23
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x23, x8]
	str	s0, [sp, #336]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
Ltmp179:
	sub	x8, x29, #176
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x21
	mov	x3, x27
	mov	x4, x21
	mov	x5, x22
	bl	__Z20matmul_tiled_reuse_aRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp180:
; %bb.183:                              ;   in Loop: Header=BB9_67 Depth=2
	str	x19, [sp, #80]                  ; 8-byte Folded Spill
	str	x23, [sp, #120]                 ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w21, LBB9_215
; %bb.184:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp182:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp183:
; %bb.185:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x16, [sp, #296]                 ; 8-byte Folded Reload
	cmp	w27, #1
	str	x23, [sp, #96]                  ; 8-byte Folded Spill
	b.lt	LBB9_215
; %bb.186:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x16
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x16, #2
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	stp	xzr, x8, [sp, #128]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x11, x8, #32
	stp	x8, x11, [sp, #144]             ; 16-byte Folded Spill
	b	LBB9_188
LBB9_187:                               ;   in Loop: Header=BB9_188 Depth=3
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #152]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #224]                  ; 8-byte Folded Reload
	add	x9, x9, x16
	cmp	w27, w9
	b.le	LBB9_215
LBB9_188:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_191 Depth 4
                                        ;           Child Loop BB9_194 Depth 5
                                        ;             Child Loop BB9_204 Depth 6
                                        ;               Child Loop BB9_206 Depth 7
                                        ;                 Child Loop BB9_207 Depth 8
                                        ;               Child Loop BB9_210 Depth 7
                                        ;                 Child Loop BB9_211 Depth 8
                                        ;                 Child Loop BB9_214 Depth 8
                                        ;             Child Loop BB9_197 Depth 6
                                        ;               Child Loop BB9_198 Depth 7
                                        ;                 Child Loop BB9_199 Depth 8
	add	w8, w22, w9
	cmp	w8, w21
	csel	w8, w8, w21, lt
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_187
; %bb.189:                              ;   in Loop: Header=BB9_188 Depth=3
	mov	x15, #0                         ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	madd	x8, x11, x8, x9
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	stp	xzr, x8, [sp, #184]             ; 16-byte Folded Spill
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	stp	x8, x9, [sp, #168]              ; 16-byte Folded Spill
	b	LBB9_191
LBB9_190:                               ;   in Loop: Header=BB9_191 Depth=4
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	add	x11, x8, #1
	ldp	x8, x9, [sp, #160]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #176]             ; 16-byte Folded Spill
	add	x15, x15, x16
	cmp	w27, w15
	b.le	LBB9_187
LBB9_191:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_194 Depth 5
                                        ;             Child Loop BB9_204 Depth 6
                                        ;               Child Loop BB9_206 Depth 7
                                        ;                 Child Loop BB9_207 Depth 8
                                        ;               Child Loop BB9_210 Depth 7
                                        ;                 Child Loop BB9_211 Depth 8
                                        ;                 Child Loop BB9_214 Depth 8
                                        ;             Child Loop BB9_197 Depth 6
                                        ;               Child Loop BB9_198 Depth 7
                                        ;                 Child Loop BB9_199 Depth 8
	add	w8, w22, w15
	cmp	w8, w21
	csel	w8, w8, w21, lt
	cmp	w8, w15
	b.le	LBB9_190
; %bb.192:                              ;   in Loop: Header=BB9_191 Depth=4
	str	xzr, [sp, #264]                 ; 8-byte Folded Spill
	mov	x17, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
	ldp	x14, x13, [sp, #176]            ; 16-byte Folded Reload
	madd	w9, w22, w13, w22
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x15, #1
	cmp	x9, x11
	csinc	x9, x9, x15, gt
	mul	x11, x13, x16
	mvn	x11, x11
	add	x9, x9, x11
	sxtw	x25, w8
	ldp	x8, x26, [sp, #160]             ; 16-byte Folded Reload
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	madd	x8, x8, x13, x11
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	madd	x8, x24, x9, x8
	add	x8, x8, #4
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #144]              ; 16-byte Folded Reload
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	str	x8, [sp, #256]                  ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	mov	x13, x22
	b	LBB9_194
LBB9_193:                               ;   in Loop: Header=BB9_194 Depth=5
	add	x17, x20, #1
	ldp	x22, x16, [sp, #288]            ; 16-byte Folded Reload
	ldp	x13, x11, [sp, #248]            ; 16-byte Folded Reload
	add	w13, w13, w22
	add	x8, x8, x16
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	sub	x9, x9, x16
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x26, x26, x9
	add	x11, x11, x9
	str	x11, [sp, #256]                 ; 8-byte Folded Spill
	ldp	x11, x21, [sp, #272]            ; 16-byte Folded Reload
	add	x11, x11, x9
	str	x11, [sp, #272]                 ; 8-byte Folded Spill
	add	x14, x14, x9
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	mov	x12, x9
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	cmp	w27, w9
	b.le	LBB9_190
LBB9_194:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_204 Depth 6
                                        ;               Child Loop BB9_206 Depth 7
                                        ;                 Child Loop BB9_207 Depth 8
                                        ;               Child Loop BB9_210 Depth 7
                                        ;                 Child Loop BB9_211 Depth 8
                                        ;                 Child Loop BB9_214 Depth 8
                                        ;             Child Loop BB9_197 Depth 6
                                        ;               Child Loop BB9_198 Depth 7
                                        ;                 Child Loop BB9_199 Depth 8
	str	x13, [sp, #248]                 ; 8-byte Folded Spill
	sxtw	x9, w13
	cmp	x21, x9
	csel	x9, x21, x9, lt
	cmp	x9, x8
	csel	x9, x9, x8, gt
	mov	x20, x17
	madd	w11, w22, w17, w22
	cmp	w21, w11
	csel	w11, w21, w11, lt
	sxtw	x11, w11
	add	x13, x12, #1
	cmp	x11, x13
	csinc	x13, x11, x12, gt
	add	x11, x12, x16
	cmp	w11, w21
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	csel	w16, w11, w21, lt
	cmp	w16, w12
	b.le	LBB9_193
; %bb.195:                              ;   in Loop: Header=BB9_194 Depth=5
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x20, x11
	sub	x11, x13, x17
	sxtw	x16, w16
	cmp	x11, #16
	b.hs	LBB9_202
; %bb.196:                              ;   in Loop: Header=BB9_194 Depth=5
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #224]                 ; 8-byte Folded Reload
LBB9_197:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_198 Depth 7
                                        ;                 Child Loop BB9_199 Depth 8
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	mul	x9, x13, x9
	add	x9, x10, x9, lsl #2
	mov	x17, x14
	mov	x0, x15
LBB9_198:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ;             Parent Loop BB9_197 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_199 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x9, x0, lsl #2]
LBB9_199:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ;             Parent Loop BB9_197 Depth=6
                                        ;               Parent Loop BB9_198 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x17, x2, lsl #2]
	ldr	s2, [x11, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x11, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x12, x2
	cmp	x3, x16
	b.lt	LBB9_199
; %bb.200:                              ;   in Loop: Header=BB9_198 Depth=7
	add	x0, x0, #1
	add	x17, x17, x24
	cmp	x0, x25
	b.lt	LBB9_198
; %bb.201:                              ;   in Loop: Header=BB9_197 Depth=6
	add	x13, x13, #1
	add	x11, x11, x24
	cmp	x13, x1
	b.lt	LBB9_197
	b	LBB9_193
LBB9_202:                               ;   in Loop: Header=BB9_194 Depth=5
	mov	x3, #0                          ; =0x0
	ldp	x0, x30, [sp, #264]             ; 16-byte Folded Reload
	add	x9, x9, x0
	and	x7, x9, #0xfffffffffffffff0
	ldp	x21, x9, [sp, #224]             ; 16-byte Folded Reload
	mul	x9, x9, x20
	mvn	x17, x17
	add	x13, x13, x17
	lsl	x13, x13, #2
	ldr	x17, [sp, #216]                 ; 8-byte Folded Reload
	add	x27, x17, x9
	ldr	x17, [sp, #208]                 ; 8-byte Folded Reload
	add	x17, x17, x9
	add	x22, x17, x13
	ldr	x17, [sp, #200]                 ; 8-byte Folded Reload
	add	x4, x17, x9
	ldr	x17, [sp, #192]                 ; 8-byte Folded Reload
	add	x9, x17, x9
	add	x19, x9, x13
	and	x17, x11, #0xfffffffffffffff0
	ldr	x9, [sp, #256]                  ; 8-byte Folded Reload
	b	LBB9_204
LBB9_203:                               ;   in Loop: Header=BB9_204 Depth=6
	add	x21, x21, #1
	add	x3, x3, #1
	add	x9, x9, x24
	add	x30, x30, x24
	cmp	x21, x1
	b.ge	LBB9_193
LBB9_204:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_206 Depth 7
                                        ;                 Child Loop BB9_207 Depth 8
                                        ;               Child Loop BB9_210 Depth 7
                                        ;                 Child Loop BB9_211 Depth 8
                                        ;                 Child Loop BB9_214 Depth 8
	mul	x0, x24, x3
	add	x2, x19, x0
	ldr	x13, [sp, #304]                 ; 8-byte Folded Reload
	mul	x13, x21, x13
	add	x13, x10, x13, lsl #2
	add	x0, x4, x0
	cmp	x0, x22
	ccmp	x27, x2, #2, lo
	mov	x23, x14
	mov	x6, x26
	mov	x0, x15
	b.hs	LBB9_210
; %bb.205:                              ;   in Loop: Header=BB9_204 Depth=6
	mov	x0, x14
	mov	x2, x15
LBB9_206:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ;             Parent Loop BB9_204 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_207 Depth 8
	mov	x5, #0                          ; =0x0
	ldr	s0, [x13, x2, lsl #2]
LBB9_207:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ;             Parent Loop BB9_204 Depth=6
                                        ;               Parent Loop BB9_206 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x0, x5, lsl #2]
	ldr	s2, [x30, x5, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x5, lsl #2]
	add	x5, x5, #1
	add	x6, x12, x5
	cmp	x6, x16
	b.lt	LBB9_207
; %bb.208:                              ;   in Loop: Header=BB9_206 Depth=7
	add	x2, x2, #1
	add	x0, x0, x24
	cmp	x2, x25
	b.lt	LBB9_206
	b	LBB9_203
LBB9_209:                               ;   in Loop: Header=BB9_210 Depth=7
	add	x0, x0, #1
	add	x6, x6, x24
	add	x23, x23, x24
	cmp	x0, x25
	b.ge	LBB9_203
LBB9_210:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ;             Parent Loop BB9_204 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_211 Depth 8
                                        ;                 Child Loop BB9_214 Depth 8
	ldr	s0, [x13, x0, lsl #2]
	dup.4s	v1, v0[0]
	mov	x28, x9
	mov	x5, x6
	mov	x2, x7
LBB9_211:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ;             Parent Loop BB9_204 Depth=6
                                        ;               Parent Loop BB9_210 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x5, #-32]
	ldp	q4, q5, [x5], #64
	ldp	q6, q7, [x28, #-32]
	ldp	q16, q17, [x28]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x28, #-32]
	stp	q16, q17, [x28], #64
	subs	x2, x2, #16
	b.ne	LBB9_211
; %bb.212:                              ;   in Loop: Header=BB9_210 Depth=7
	cmp	x11, x17
	b.eq	LBB9_209
; %bb.213:                              ;   in Loop: Header=BB9_210 Depth=7
	mov	x2, x7
LBB9_214:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_188 Depth=3
                                        ;         Parent Loop BB9_191 Depth=4
                                        ;           Parent Loop BB9_194 Depth=5
                                        ;             Parent Loop BB9_204 Depth=6
                                        ;               Parent Loop BB9_210 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x23, x2, lsl #2]
	ldr	s2, [x30, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x2, lsl #2]
	add	x2, x2, #1
	add	x5, x12, x2
	cmp	x5, x16
	b.lt	LBB9_214
	b	LBB9_209
LBB9_215:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w27, LBB9_247
; %bb.216:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp185:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp186:
; %bb.217:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x16, [sp, #296]                 ; 8-byte Folded Reload
	cmp	w21, #1
	str	x23, [sp, #96]                  ; 8-byte Folded Spill
	b.lt	LBB9_247
; %bb.218:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x16
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x16, #2
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	stp	xzr, x8, [sp, #128]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x11, x8, #32
	stp	x8, x11, [sp, #144]             ; 16-byte Folded Spill
	b	LBB9_220
LBB9_219:                               ;   in Loop: Header=BB9_220 Depth=3
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #152]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #224]                  ; 8-byte Folded Reload
	add	x9, x9, x16
	cmp	w27, w9
	b.le	LBB9_247
LBB9_220:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_223 Depth 4
                                        ;           Child Loop BB9_226 Depth 5
                                        ;             Child Loop BB9_236 Depth 6
                                        ;               Child Loop BB9_238 Depth 7
                                        ;                 Child Loop BB9_239 Depth 8
                                        ;               Child Loop BB9_242 Depth 7
                                        ;                 Child Loop BB9_243 Depth 8
                                        ;                 Child Loop BB9_246 Depth 8
                                        ;             Child Loop BB9_229 Depth 6
                                        ;               Child Loop BB9_230 Depth 7
                                        ;                 Child Loop BB9_231 Depth 8
	add	w8, w22, w9
	cmp	w8, w21
	csel	w8, w8, w21, lt
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_219
; %bb.221:                              ;   in Loop: Header=BB9_220 Depth=3
	mov	x15, #0                         ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	madd	x8, x11, x8, x9
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	stp	xzr, x8, [sp, #184]             ; 16-byte Folded Spill
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	stp	x8, x9, [sp, #168]              ; 16-byte Folded Spill
	b	LBB9_223
LBB9_222:                               ;   in Loop: Header=BB9_223 Depth=4
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	add	x11, x8, #1
	ldp	x8, x9, [sp, #160]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #176]             ; 16-byte Folded Spill
	add	x15, x15, x16
	cmp	w27, w15
	b.le	LBB9_219
LBB9_223:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_226 Depth 5
                                        ;             Child Loop BB9_236 Depth 6
                                        ;               Child Loop BB9_238 Depth 7
                                        ;                 Child Loop BB9_239 Depth 8
                                        ;               Child Loop BB9_242 Depth 7
                                        ;                 Child Loop BB9_243 Depth 8
                                        ;                 Child Loop BB9_246 Depth 8
                                        ;             Child Loop BB9_229 Depth 6
                                        ;               Child Loop BB9_230 Depth 7
                                        ;                 Child Loop BB9_231 Depth 8
	add	w8, w22, w15
	cmp	w8, w21
	csel	w8, w8, w21, lt
	cmp	w8, w15
	b.le	LBB9_222
; %bb.224:                              ;   in Loop: Header=BB9_223 Depth=4
	str	xzr, [sp, #264]                 ; 8-byte Folded Spill
	mov	x17, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
	ldp	x14, x13, [sp, #176]            ; 16-byte Folded Reload
	madd	w9, w22, w13, w22
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x15, #1
	cmp	x9, x11
	csinc	x9, x9, x15, gt
	mul	x11, x13, x16
	mvn	x11, x11
	add	x9, x9, x11
	sxtw	x25, w8
	ldp	x8, x26, [sp, #160]             ; 16-byte Folded Reload
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	madd	x8, x8, x13, x11
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	madd	x8, x24, x9, x8
	add	x8, x8, #4
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #144]              ; 16-byte Folded Reload
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	str	x8, [sp, #256]                  ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	mov	x13, x22
	b	LBB9_226
LBB9_225:                               ;   in Loop: Header=BB9_226 Depth=5
	add	x17, x20, #1
	ldp	x22, x16, [sp, #288]            ; 16-byte Folded Reload
	ldp	x13, x11, [sp, #248]            ; 16-byte Folded Reload
	add	w13, w13, w22
	add	x8, x8, x16
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	sub	x9, x9, x16
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x26, x26, x9
	add	x11, x11, x9
	str	x11, [sp, #256]                 ; 8-byte Folded Spill
	ldp	x11, x21, [sp, #272]            ; 16-byte Folded Reload
	add	x11, x11, x9
	str	x11, [sp, #272]                 ; 8-byte Folded Spill
	add	x14, x14, x9
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	mov	x12, x9
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	cmp	w27, w9
	b.le	LBB9_222
LBB9_226:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_236 Depth 6
                                        ;               Child Loop BB9_238 Depth 7
                                        ;                 Child Loop BB9_239 Depth 8
                                        ;               Child Loop BB9_242 Depth 7
                                        ;                 Child Loop BB9_243 Depth 8
                                        ;                 Child Loop BB9_246 Depth 8
                                        ;             Child Loop BB9_229 Depth 6
                                        ;               Child Loop BB9_230 Depth 7
                                        ;                 Child Loop BB9_231 Depth 8
	str	x13, [sp, #248]                 ; 8-byte Folded Spill
	sxtw	x9, w13
	cmp	x21, x9
	csel	x9, x21, x9, lt
	cmp	x9, x8
	csel	x9, x9, x8, gt
	mov	x20, x17
	madd	w11, w22, w17, w22
	cmp	w21, w11
	csel	w11, w21, w11, lt
	sxtw	x11, w11
	add	x13, x12, #1
	cmp	x11, x13
	csinc	x13, x11, x12, gt
	add	x11, x12, x16
	cmp	w11, w21
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	csel	w16, w11, w21, lt
	cmp	w16, w12
	b.le	LBB9_225
; %bb.227:                              ;   in Loop: Header=BB9_226 Depth=5
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x20, x11
	sub	x11, x13, x17
	sxtw	x16, w16
	cmp	x11, #16
	b.hs	LBB9_234
; %bb.228:                              ;   in Loop: Header=BB9_226 Depth=5
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #224]                 ; 8-byte Folded Reload
LBB9_229:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_230 Depth 7
                                        ;                 Child Loop BB9_231 Depth 8
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	mul	x9, x13, x9
	add	x9, x10, x9, lsl #2
	mov	x17, x14
	mov	x0, x15
LBB9_230:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ;             Parent Loop BB9_229 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_231 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x9, x0, lsl #2]
LBB9_231:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ;             Parent Loop BB9_229 Depth=6
                                        ;               Parent Loop BB9_230 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x17, x2, lsl #2]
	ldr	s2, [x11, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x11, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x12, x2
	cmp	x3, x16
	b.lt	LBB9_231
; %bb.232:                              ;   in Loop: Header=BB9_230 Depth=7
	add	x0, x0, #1
	add	x17, x17, x24
	cmp	x0, x25
	b.lt	LBB9_230
; %bb.233:                              ;   in Loop: Header=BB9_229 Depth=6
	add	x13, x13, #1
	add	x11, x11, x24
	cmp	x13, x1
	b.lt	LBB9_229
	b	LBB9_225
LBB9_234:                               ;   in Loop: Header=BB9_226 Depth=5
	mov	x3, #0                          ; =0x0
	ldp	x0, x30, [sp, #264]             ; 16-byte Folded Reload
	add	x9, x9, x0
	and	x7, x9, #0xfffffffffffffff0
	ldp	x21, x9, [sp, #224]             ; 16-byte Folded Reload
	mul	x9, x9, x20
	mvn	x17, x17
	add	x13, x13, x17
	lsl	x13, x13, #2
	ldr	x17, [sp, #216]                 ; 8-byte Folded Reload
	add	x27, x17, x9
	ldr	x17, [sp, #208]                 ; 8-byte Folded Reload
	add	x17, x17, x9
	add	x22, x17, x13
	ldr	x17, [sp, #200]                 ; 8-byte Folded Reload
	add	x4, x17, x9
	ldr	x17, [sp, #192]                 ; 8-byte Folded Reload
	add	x9, x17, x9
	add	x19, x9, x13
	and	x17, x11, #0xfffffffffffffff0
	ldr	x9, [sp, #256]                  ; 8-byte Folded Reload
	b	LBB9_236
LBB9_235:                               ;   in Loop: Header=BB9_236 Depth=6
	add	x21, x21, #1
	add	x3, x3, #1
	add	x9, x9, x24
	add	x30, x30, x24
	cmp	x21, x1
	b.ge	LBB9_225
LBB9_236:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_238 Depth 7
                                        ;                 Child Loop BB9_239 Depth 8
                                        ;               Child Loop BB9_242 Depth 7
                                        ;                 Child Loop BB9_243 Depth 8
                                        ;                 Child Loop BB9_246 Depth 8
	mul	x0, x24, x3
	add	x2, x19, x0
	ldr	x13, [sp, #304]                 ; 8-byte Folded Reload
	mul	x13, x21, x13
	add	x13, x10, x13, lsl #2
	add	x0, x4, x0
	cmp	x0, x22
	ccmp	x27, x2, #2, lo
	mov	x23, x14
	mov	x6, x26
	mov	x0, x15
	b.hs	LBB9_242
; %bb.237:                              ;   in Loop: Header=BB9_236 Depth=6
	mov	x0, x14
	mov	x2, x15
LBB9_238:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ;             Parent Loop BB9_236 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_239 Depth 8
	mov	x5, #0                          ; =0x0
	ldr	s0, [x13, x2, lsl #2]
LBB9_239:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ;             Parent Loop BB9_236 Depth=6
                                        ;               Parent Loop BB9_238 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x0, x5, lsl #2]
	ldr	s2, [x30, x5, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x5, lsl #2]
	add	x5, x5, #1
	add	x6, x12, x5
	cmp	x6, x16
	b.lt	LBB9_239
; %bb.240:                              ;   in Loop: Header=BB9_238 Depth=7
	add	x2, x2, #1
	add	x0, x0, x24
	cmp	x2, x25
	b.lt	LBB9_238
	b	LBB9_235
LBB9_241:                               ;   in Loop: Header=BB9_242 Depth=7
	add	x0, x0, #1
	add	x6, x6, x24
	add	x23, x23, x24
	cmp	x0, x25
	b.ge	LBB9_235
LBB9_242:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ;             Parent Loop BB9_236 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_243 Depth 8
                                        ;                 Child Loop BB9_246 Depth 8
	ldr	s0, [x13, x0, lsl #2]
	dup.4s	v1, v0[0]
	mov	x28, x9
	mov	x5, x6
	mov	x2, x7
LBB9_243:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ;             Parent Loop BB9_236 Depth=6
                                        ;               Parent Loop BB9_242 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x5, #-32]
	ldp	q4, q5, [x5], #64
	ldp	q6, q7, [x28, #-32]
	ldp	q16, q17, [x28]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x28, #-32]
	stp	q16, q17, [x28], #64
	subs	x2, x2, #16
	b.ne	LBB9_243
; %bb.244:                              ;   in Loop: Header=BB9_242 Depth=7
	cmp	x11, x17
	b.eq	LBB9_241
; %bb.245:                              ;   in Loop: Header=BB9_242 Depth=7
	mov	x2, x7
LBB9_246:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_220 Depth=3
                                        ;         Parent Loop BB9_223 Depth=4
                                        ;           Parent Loop BB9_226 Depth=5
                                        ;             Parent Loop BB9_236 Depth=6
                                        ;               Parent Loop BB9_242 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x23, x2, lsl #2]
	ldr	s2, [x30, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x2, lsl #2]
	add	x2, x2, #1
	add	x5, x12, x2
	cmp	x5, x16
	b.lt	LBB9_246
	b	LBB9_241
LBB9_247:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w21, LBB9_279
; %bb.248:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp188:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp189:
; %bb.249:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x16, [sp, #296]                 ; 8-byte Folded Reload
	cmp	w27, #1
	str	x23, [sp, #96]                  ; 8-byte Folded Spill
	b.lt	LBB9_279
; %bb.250:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x16
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x16, #2
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	stp	xzr, x8, [sp, #128]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x11, x8, #32
	stp	x8, x11, [sp, #144]             ; 16-byte Folded Spill
	b	LBB9_252
LBB9_251:                               ;   in Loop: Header=BB9_252 Depth=3
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #152]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #224]                  ; 8-byte Folded Reload
	add	x9, x9, x16
	cmp	w27, w9
	b.le	LBB9_279
LBB9_252:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_255 Depth 4
                                        ;           Child Loop BB9_258 Depth 5
                                        ;             Child Loop BB9_268 Depth 6
                                        ;               Child Loop BB9_270 Depth 7
                                        ;                 Child Loop BB9_271 Depth 8
                                        ;               Child Loop BB9_274 Depth 7
                                        ;                 Child Loop BB9_275 Depth 8
                                        ;                 Child Loop BB9_278 Depth 8
                                        ;             Child Loop BB9_261 Depth 6
                                        ;               Child Loop BB9_262 Depth 7
                                        ;                 Child Loop BB9_263 Depth 8
	add	w8, w22, w9
	cmp	w8, w21
	csel	w8, w8, w21, lt
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_251
; %bb.253:                              ;   in Loop: Header=BB9_252 Depth=3
	mov	x15, #0                         ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	madd	x8, x11, x8, x9
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	stp	xzr, x8, [sp, #184]             ; 16-byte Folded Spill
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	stp	x8, x9, [sp, #168]              ; 16-byte Folded Spill
	b	LBB9_255
LBB9_254:                               ;   in Loop: Header=BB9_255 Depth=4
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	add	x11, x8, #1
	ldp	x8, x9, [sp, #160]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #176]             ; 16-byte Folded Spill
	add	x15, x15, x16
	cmp	w27, w15
	b.le	LBB9_251
LBB9_255:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_258 Depth 5
                                        ;             Child Loop BB9_268 Depth 6
                                        ;               Child Loop BB9_270 Depth 7
                                        ;                 Child Loop BB9_271 Depth 8
                                        ;               Child Loop BB9_274 Depth 7
                                        ;                 Child Loop BB9_275 Depth 8
                                        ;                 Child Loop BB9_278 Depth 8
                                        ;             Child Loop BB9_261 Depth 6
                                        ;               Child Loop BB9_262 Depth 7
                                        ;                 Child Loop BB9_263 Depth 8
	add	w8, w22, w15
	cmp	w8, w21
	csel	w8, w8, w21, lt
	cmp	w8, w15
	b.le	LBB9_254
; %bb.256:                              ;   in Loop: Header=BB9_255 Depth=4
	str	xzr, [sp, #264]                 ; 8-byte Folded Spill
	mov	x17, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
	ldp	x14, x13, [sp, #176]            ; 16-byte Folded Reload
	madd	w9, w22, w13, w22
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x15, #1
	cmp	x9, x11
	csinc	x9, x9, x15, gt
	mul	x11, x13, x16
	mvn	x11, x11
	add	x9, x9, x11
	sxtw	x25, w8
	ldp	x8, x26, [sp, #160]             ; 16-byte Folded Reload
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	madd	x8, x8, x13, x11
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	madd	x8, x24, x9, x8
	add	x8, x8, #4
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #144]              ; 16-byte Folded Reload
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	str	x8, [sp, #256]                  ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	mov	x13, x22
	b	LBB9_258
LBB9_257:                               ;   in Loop: Header=BB9_258 Depth=5
	add	x17, x20, #1
	ldp	x22, x16, [sp, #288]            ; 16-byte Folded Reload
	ldp	x13, x11, [sp, #248]            ; 16-byte Folded Reload
	add	w13, w13, w22
	add	x8, x8, x16
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	sub	x9, x9, x16
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x26, x26, x9
	add	x11, x11, x9
	str	x11, [sp, #256]                 ; 8-byte Folded Spill
	ldp	x11, x21, [sp, #272]            ; 16-byte Folded Reload
	add	x11, x11, x9
	str	x11, [sp, #272]                 ; 8-byte Folded Spill
	add	x14, x14, x9
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	mov	x12, x9
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	cmp	w27, w9
	b.le	LBB9_254
LBB9_258:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_268 Depth 6
                                        ;               Child Loop BB9_270 Depth 7
                                        ;                 Child Loop BB9_271 Depth 8
                                        ;               Child Loop BB9_274 Depth 7
                                        ;                 Child Loop BB9_275 Depth 8
                                        ;                 Child Loop BB9_278 Depth 8
                                        ;             Child Loop BB9_261 Depth 6
                                        ;               Child Loop BB9_262 Depth 7
                                        ;                 Child Loop BB9_263 Depth 8
	str	x13, [sp, #248]                 ; 8-byte Folded Spill
	sxtw	x9, w13
	cmp	x21, x9
	csel	x9, x21, x9, lt
	cmp	x9, x8
	csel	x9, x9, x8, gt
	mov	x20, x17
	madd	w11, w22, w17, w22
	cmp	w21, w11
	csel	w11, w21, w11, lt
	sxtw	x11, w11
	add	x13, x12, #1
	cmp	x11, x13
	csinc	x13, x11, x12, gt
	add	x11, x12, x16
	cmp	w11, w21
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	csel	w16, w11, w21, lt
	cmp	w16, w12
	b.le	LBB9_257
; %bb.259:                              ;   in Loop: Header=BB9_258 Depth=5
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x20, x11
	sub	x11, x13, x17
	sxtw	x16, w16
	cmp	x11, #16
	b.hs	LBB9_266
; %bb.260:                              ;   in Loop: Header=BB9_258 Depth=5
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #224]                 ; 8-byte Folded Reload
LBB9_261:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_262 Depth 7
                                        ;                 Child Loop BB9_263 Depth 8
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	mul	x9, x13, x9
	add	x9, x10, x9, lsl #2
	mov	x17, x14
	mov	x0, x15
LBB9_262:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ;             Parent Loop BB9_261 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_263 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x9, x0, lsl #2]
LBB9_263:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ;             Parent Loop BB9_261 Depth=6
                                        ;               Parent Loop BB9_262 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x17, x2, lsl #2]
	ldr	s2, [x11, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x11, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x12, x2
	cmp	x3, x16
	b.lt	LBB9_263
; %bb.264:                              ;   in Loop: Header=BB9_262 Depth=7
	add	x0, x0, #1
	add	x17, x17, x24
	cmp	x0, x25
	b.lt	LBB9_262
; %bb.265:                              ;   in Loop: Header=BB9_261 Depth=6
	add	x13, x13, #1
	add	x11, x11, x24
	cmp	x13, x1
	b.lt	LBB9_261
	b	LBB9_257
LBB9_266:                               ;   in Loop: Header=BB9_258 Depth=5
	mov	x3, #0                          ; =0x0
	ldp	x0, x30, [sp, #264]             ; 16-byte Folded Reload
	add	x9, x9, x0
	and	x7, x9, #0xfffffffffffffff0
	ldp	x21, x9, [sp, #224]             ; 16-byte Folded Reload
	mul	x9, x9, x20
	mvn	x17, x17
	add	x13, x13, x17
	lsl	x13, x13, #2
	ldr	x17, [sp, #216]                 ; 8-byte Folded Reload
	add	x27, x17, x9
	ldr	x17, [sp, #208]                 ; 8-byte Folded Reload
	add	x17, x17, x9
	add	x22, x17, x13
	ldr	x17, [sp, #200]                 ; 8-byte Folded Reload
	add	x4, x17, x9
	ldr	x17, [sp, #192]                 ; 8-byte Folded Reload
	add	x9, x17, x9
	add	x19, x9, x13
	and	x17, x11, #0xfffffffffffffff0
	ldr	x9, [sp, #256]                  ; 8-byte Folded Reload
	b	LBB9_268
LBB9_267:                               ;   in Loop: Header=BB9_268 Depth=6
	add	x21, x21, #1
	add	x3, x3, #1
	add	x9, x9, x24
	add	x30, x30, x24
	cmp	x21, x1
	b.ge	LBB9_257
LBB9_268:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_270 Depth 7
                                        ;                 Child Loop BB9_271 Depth 8
                                        ;               Child Loop BB9_274 Depth 7
                                        ;                 Child Loop BB9_275 Depth 8
                                        ;                 Child Loop BB9_278 Depth 8
	mul	x0, x24, x3
	add	x2, x19, x0
	ldr	x13, [sp, #304]                 ; 8-byte Folded Reload
	mul	x13, x21, x13
	add	x13, x10, x13, lsl #2
	add	x0, x4, x0
	cmp	x0, x22
	ccmp	x27, x2, #2, lo
	mov	x23, x14
	mov	x6, x26
	mov	x0, x15
	b.hs	LBB9_274
; %bb.269:                              ;   in Loop: Header=BB9_268 Depth=6
	mov	x0, x14
	mov	x2, x15
LBB9_270:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ;             Parent Loop BB9_268 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_271 Depth 8
	mov	x5, #0                          ; =0x0
	ldr	s0, [x13, x2, lsl #2]
LBB9_271:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ;             Parent Loop BB9_268 Depth=6
                                        ;               Parent Loop BB9_270 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x0, x5, lsl #2]
	ldr	s2, [x30, x5, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x5, lsl #2]
	add	x5, x5, #1
	add	x6, x12, x5
	cmp	x6, x16
	b.lt	LBB9_271
; %bb.272:                              ;   in Loop: Header=BB9_270 Depth=7
	add	x2, x2, #1
	add	x0, x0, x24
	cmp	x2, x25
	b.lt	LBB9_270
	b	LBB9_267
LBB9_273:                               ;   in Loop: Header=BB9_274 Depth=7
	add	x0, x0, #1
	add	x6, x6, x24
	add	x23, x23, x24
	cmp	x0, x25
	b.ge	LBB9_267
LBB9_274:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ;             Parent Loop BB9_268 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_275 Depth 8
                                        ;                 Child Loop BB9_278 Depth 8
	ldr	s0, [x13, x0, lsl #2]
	dup.4s	v1, v0[0]
	mov	x28, x9
	mov	x5, x6
	mov	x2, x7
LBB9_275:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ;             Parent Loop BB9_268 Depth=6
                                        ;               Parent Loop BB9_274 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x5, #-32]
	ldp	q4, q5, [x5], #64
	ldp	q6, q7, [x28, #-32]
	ldp	q16, q17, [x28]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x28, #-32]
	stp	q16, q17, [x28], #64
	subs	x2, x2, #16
	b.ne	LBB9_275
; %bb.276:                              ;   in Loop: Header=BB9_274 Depth=7
	cmp	x11, x17
	b.eq	LBB9_273
; %bb.277:                              ;   in Loop: Header=BB9_274 Depth=7
	mov	x2, x7
LBB9_278:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_252 Depth=3
                                        ;         Parent Loop BB9_255 Depth=4
                                        ;           Parent Loop BB9_258 Depth=5
                                        ;             Parent Loop BB9_268 Depth=6
                                        ;               Parent Loop BB9_274 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x23, x2, lsl #2]
	ldr	s2, [x30, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x30, x2, lsl #2]
	add	x2, x2, #1
	add	x5, x12, x2
	cmp	x5, x16
	b.lt	LBB9_278
	b	LBB9_273
LBB9_279:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w27, LBB9_311
; %bb.280:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp191:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp192:
; %bb.281:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x16, [sp, #296]                 ; 8-byte Folded Reload
	cmp	w21, #1
	str	x23, [sp, #96]                  ; 8-byte Folded Spill
	b.lt	LBB9_311
; %bb.282:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x16
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x16, #2
	str	x11, [sp, #232]                 ; 8-byte Folded Spill
	stp	xzr, x8, [sp, #128]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x11, x8, #32
	stp	x8, x11, [sp, #144]             ; 16-byte Folded Spill
	b	LBB9_284
LBB9_283:                               ;   in Loop: Header=BB9_284 Depth=3
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #152]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #224]                  ; 8-byte Folded Reload
	add	x9, x9, x16
	cmp	w27, w9
	b.le	LBB9_311
LBB9_284:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_287 Depth 4
                                        ;           Child Loop BB9_290 Depth 5
                                        ;             Child Loop BB9_300 Depth 6
                                        ;               Child Loop BB9_302 Depth 7
                                        ;                 Child Loop BB9_303 Depth 8
                                        ;               Child Loop BB9_306 Depth 7
                                        ;                 Child Loop BB9_307 Depth 8
                                        ;                 Child Loop BB9_310 Depth 8
                                        ;             Child Loop BB9_293 Depth 6
                                        ;               Child Loop BB9_294 Depth 7
                                        ;                 Child Loop BB9_295 Depth 8
	add	w8, w22, w9
	cmp	w8, w21
	csel	w8, w8, w21, lt
	str	x9, [sp, #224]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_283
; %bb.285:                              ;   in Loop: Header=BB9_284 Depth=3
	mov	x15, #0                         ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #128]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	madd	x8, x11, x8, x9
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	stp	xzr, x8, [sp, #184]             ; 16-byte Folded Spill
	ldr	x9, [sp, #136]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	stp	x8, x9, [sp, #168]              ; 16-byte Folded Spill
	b	LBB9_287
LBB9_286:                               ;   in Loop: Header=BB9_287 Depth=4
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	add	x11, x8, #1
	ldp	x8, x9, [sp, #160]              ; 16-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #168]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #176]             ; 16-byte Folded Spill
	add	x15, x15, x16
	cmp	w27, w15
	b.le	LBB9_283
LBB9_287:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_290 Depth 5
                                        ;             Child Loop BB9_300 Depth 6
                                        ;               Child Loop BB9_302 Depth 7
                                        ;                 Child Loop BB9_303 Depth 8
                                        ;               Child Loop BB9_306 Depth 7
                                        ;                 Child Loop BB9_307 Depth 8
                                        ;                 Child Loop BB9_310 Depth 8
                                        ;             Child Loop BB9_293 Depth 6
                                        ;               Child Loop BB9_294 Depth 7
                                        ;                 Child Loop BB9_295 Depth 8
	add	w8, w22, w15
	cmp	w8, w21
	csel	w8, w8, w21, lt
	cmp	w8, w15
	b.le	LBB9_286
; %bb.288:                              ;   in Loop: Header=BB9_287 Depth=4
	str	xzr, [sp, #264]                 ; 8-byte Folded Spill
	mov	x17, #0                         ; =0x0
	mov	x12, #0                         ; =0x0
	ldp	x14, x13, [sp, #176]            ; 16-byte Folded Reload
	madd	w9, w22, w13, w22
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x15, #1
	cmp	x9, x11
	csinc	x9, x9, x15, gt
	mul	x11, x13, x16
	mvn	x11, x11
	add	x9, x9, x11
	sxtw	x30, w8
	ldp	x8, x26, [sp, #160]             ; 16-byte Folded Reload
	ldr	x11, [sp, #136]                 ; 8-byte Folded Reload
	madd	x8, x8, x13, x11
	str	x8, [sp, #216]                  ; 8-byte Folded Spill
	madd	x8, x24, x9, x8
	add	x8, x8, #4
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #144]              ; 16-byte Folded Reload
	str	x9, [sp, #272]                  ; 8-byte Folded Spill
	str	x8, [sp, #256]                  ; 8-byte Folded Spill
	mov	w8, #1                          ; =0x1
	mov	x13, x22
	b	LBB9_290
LBB9_289:                               ;   in Loop: Header=BB9_290 Depth=5
	add	x17, x20, #1
	ldp	x22, x16, [sp, #288]            ; 16-byte Folded Reload
	ldp	x13, x11, [sp, #248]            ; 16-byte Folded Reload
	add	w13, w13, w22
	add	x8, x8, x16
	ldr	x9, [sp, #264]                  ; 8-byte Folded Reload
	sub	x9, x9, x16
	str	x9, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x26, x26, x9
	add	x11, x11, x9
	str	x11, [sp, #256]                 ; 8-byte Folded Spill
	ldp	x11, x21, [sp, #272]            ; 16-byte Folded Reload
	add	x11, x11, x9
	str	x11, [sp, #272]                 ; 8-byte Folded Spill
	add	x14, x14, x9
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	mov	x12, x9
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	cmp	w27, w9
	b.le	LBB9_286
LBB9_290:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_300 Depth 6
                                        ;               Child Loop BB9_302 Depth 7
                                        ;                 Child Loop BB9_303 Depth 8
                                        ;               Child Loop BB9_306 Depth 7
                                        ;                 Child Loop BB9_307 Depth 8
                                        ;                 Child Loop BB9_310 Depth 8
                                        ;             Child Loop BB9_293 Depth 6
                                        ;               Child Loop BB9_294 Depth 7
                                        ;                 Child Loop BB9_295 Depth 8
	str	x13, [sp, #248]                 ; 8-byte Folded Spill
	sxtw	x9, w13
	cmp	x21, x9
	csel	x9, x21, x9, lt
	cmp	x9, x8
	csel	x9, x9, x8, gt
	mov	x20, x17
	madd	w11, w22, w17, w22
	cmp	w21, w11
	csel	w11, w21, w11, lt
	sxtw	x11, w11
	add	x13, x12, #1
	cmp	x11, x13
	csinc	x13, x11, x12, gt
	add	x11, x12, x16
	cmp	w11, w21
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	csel	w17, w11, w21, lt
	cmp	w17, w12
	b.le	LBB9_289
; %bb.291:                              ;   in Loop: Header=BB9_290 Depth=5
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x16, x20, x11
	sub	x11, x13, x16
	sxtw	x22, w17
	cmp	x11, #16
	b.hs	LBB9_298
; %bb.292:                              ;   in Loop: Header=BB9_290 Depth=5
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	ldr	x13, [sp, #224]                 ; 8-byte Folded Reload
LBB9_293:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_294 Depth 7
                                        ;                 Child Loop BB9_295 Depth 8
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	mul	x9, x13, x9
	add	x9, x10, x9, lsl #2
	mov	x16, x14
	mov	x17, x15
LBB9_294:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ;             Parent Loop BB9_293 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_295 Depth 8
	mov	x0, #0                          ; =0x0
	ldr	s0, [x9, x17, lsl #2]
LBB9_295:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ;             Parent Loop BB9_293 Depth=6
                                        ;               Parent Loop BB9_294 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x16, x0, lsl #2]
	ldr	s2, [x11, x0, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x11, x0, lsl #2]
	add	x0, x0, #1
	add	x2, x12, x0
	cmp	x2, x22
	b.lt	LBB9_295
; %bb.296:                              ;   in Loop: Header=BB9_294 Depth=7
	add	x17, x17, #1
	add	x16, x16, x24
	cmp	x17, x30
	b.lt	LBB9_294
; %bb.297:                              ;   in Loop: Header=BB9_293 Depth=6
	add	x13, x13, #1
	add	x11, x11, x24
	cmp	x13, x1
	b.lt	LBB9_293
	b	LBB9_289
LBB9_298:                               ;   in Loop: Header=BB9_290 Depth=5
	mov	x3, #0                          ; =0x0
	ldr	x17, [sp, #264]                 ; 8-byte Folded Reload
	add	x9, x9, x17
	and	x7, x9, #0xfffffffffffffff0
	ldp	x21, x9, [sp, #224]             ; 16-byte Folded Reload
	mul	x9, x9, x20
	mvn	x16, x16
	add	x13, x13, x16
	lsl	x13, x13, #2
	ldp	x16, x17, [sp, #208]            ; 16-byte Folded Reload
	add	x19, x17, x9
	add	x16, x16, x9
	add	x27, x16, x13
	ldp	x16, x17, [sp, #192]            ; 16-byte Folded Reload
	add	x4, x17, x9
	add	x9, x16, x9
	add	x25, x9, x13
	and	x17, x11, #0xfffffffffffffff0
	ldr	x16, [sp, #272]                 ; 8-byte Folded Reload
	ldr	x9, [sp, #256]                  ; 8-byte Folded Reload
	b	LBB9_300
LBB9_299:                               ;   in Loop: Header=BB9_300 Depth=6
	add	x21, x21, #1
	add	x3, x3, #1
	add	x9, x9, x24
	add	x16, x16, x24
	cmp	x21, x1
	b.ge	LBB9_289
LBB9_300:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_302 Depth 7
                                        ;                 Child Loop BB9_303 Depth 8
                                        ;               Child Loop BB9_306 Depth 7
                                        ;                 Child Loop BB9_307 Depth 8
                                        ;                 Child Loop BB9_310 Depth 8
	mul	x0, x24, x3
	add	x2, x25, x0
	ldr	x13, [sp, #304]                 ; 8-byte Folded Reload
	mul	x13, x21, x13
	add	x13, x10, x13, lsl #2
	add	x0, x4, x0
	cmp	x0, x27
	ccmp	x19, x2, #2, lo
	mov	x23, x14
	mov	x6, x26
	mov	x0, x15
	b.hs	LBB9_306
; %bb.301:                              ;   in Loop: Header=BB9_300 Depth=6
	mov	x0, x14
	mov	x2, x15
LBB9_302:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ;             Parent Loop BB9_300 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_303 Depth 8
	mov	x5, #0                          ; =0x0
	ldr	s0, [x13, x2, lsl #2]
LBB9_303:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ;             Parent Loop BB9_300 Depth=6
                                        ;               Parent Loop BB9_302 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x0, x5, lsl #2]
	ldr	s2, [x16, x5, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x16, x5, lsl #2]
	add	x5, x5, #1
	add	x6, x12, x5
	cmp	x6, x22
	b.lt	LBB9_303
; %bb.304:                              ;   in Loop: Header=BB9_302 Depth=7
	add	x2, x2, #1
	add	x0, x0, x24
	cmp	x2, x30
	b.lt	LBB9_302
	b	LBB9_299
LBB9_305:                               ;   in Loop: Header=BB9_306 Depth=7
	add	x0, x0, #1
	add	x6, x6, x24
	add	x23, x23, x24
	cmp	x0, x30
	b.ge	LBB9_299
LBB9_306:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ;             Parent Loop BB9_300 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_307 Depth 8
                                        ;                 Child Loop BB9_310 Depth 8
	ldr	s0, [x13, x0, lsl #2]
	dup.4s	v1, v0[0]
	mov	x28, x9
	mov	x5, x6
	mov	x2, x7
LBB9_307:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ;             Parent Loop BB9_300 Depth=6
                                        ;               Parent Loop BB9_306 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x5, #-32]
	ldp	q4, q5, [x5], #64
	ldp	q6, q7, [x28, #-32]
	ldp	q16, q17, [x28]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x28, #-32]
	stp	q16, q17, [x28], #64
	subs	x2, x2, #16
	b.ne	LBB9_307
; %bb.308:                              ;   in Loop: Header=BB9_306 Depth=7
	cmp	x11, x17
	b.eq	LBB9_305
; %bb.309:                              ;   in Loop: Header=BB9_306 Depth=7
	mov	x2, x7
LBB9_310:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_284 Depth=3
                                        ;         Parent Loop BB9_287 Depth=4
                                        ;           Parent Loop BB9_290 Depth=5
                                        ;             Parent Loop BB9_300 Depth=6
                                        ;               Parent Loop BB9_306 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x23, x2, lsl #2]
	ldr	s2, [x16, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x16, x2, lsl #2]
	add	x2, x2, #1
	add	x5, x12, x2
	cmp	x5, x22
	b.lt	LBB9_310
	b	LBB9_305
LBB9_311:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x19, x0
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	cbz	x0, LBB9_313
; %bb.312:                              ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZdlPv
LBB9_313:                               ;   in Loop: Header=BB9_67 Depth=2
Lloh56:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh57:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	mov	w11, #-177                      ; =0xffffff4f
	and	w10, w10, w11
	orr	w10, w10, #0x20
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #52                         ; =0x34
	str	x9, [x8, #24]
	ldrb	w8, [sp, #391]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #368]
	cmp	w9, #0
	add	x9, sp, #368
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp194:
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp195:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
; %bb.314:                              ;   in Loop: Header=BB9_67 Depth=2
	ldp	x9, x8, [sp, #72]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d0, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d13, x8
	fdiv	d0, d0, d13
	fadd	d0, d0, d10
	ldp	x9, x8, [sp, #56]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	ldp	x9, x8, [sp, #40]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	ldp	x9, x8, [sp, #24]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	sub	x8, x19, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	fdiv	d9, d0, d11
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xffffffcf
	orr	w10, w10, #0x80
	str	w10, [x9, #8]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	mov	w10, #12                        ; =0xc
	str	x10, [x9, #24]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #3                          ; =0x3
	str	x9, [x8, #16]
Ltmp196:
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp197:
; %bb.315:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp198:
Lloh58:
	adrp	x1, l_.str.3@PAGE
Lloh59:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp199:
; %bb.316:                              ;   in Loop: Header=BB9_67 Depth=2
	fmul	d0, d9, d13
	fdiv	d0, d12, d0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	mov	w10, #12                        ; =0xc
	str	x10, [x9, #24]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #2                          ; =0x2
	str	x9, [x8, #16]
Ltmp200:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp201:
; %bb.317:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp202:
Lloh60:
	adrp	x1, l_.str.4@PAGE
Lloh61:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp203:
; %bb.318:                              ;   in Loop: Header=BB9_67 Depth=2
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_320
; %bb.319:                              ;   in Loop: Header=BB9_67 Depth=2
	ldr	x0, [sp, #368]
	bl	__ZdlPv
LBB9_320:                               ;   in Loop: Header=BB9_67 Depth=2
Ltmp205:
	add	x8, sp, #368
	sub	x1, x29, #208
Lloh62:
	adrp	x0, l_.str.12@PAGE
Lloh63:
	add	x0, x0, l_.str.12@PAGEOFF
	bl	__ZNSt3__1plIcNS_11char_traitsIcEENS_9allocatorIcEEEENS_12basic_stringIT_T0_T1_EEPKS6_RKS9_
Ltmp206:
	ldr	x19, [sp, #296]                 ; 8-byte Folded Reload
; %bb.321:                              ;   in Loop: Header=BB9_67 Depth=2
	cbz	w21, LBB9_357
; %bb.322:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp208:
	mov	x0, x20
	bl	__Znwm
Ltmp209:
; %bb.323:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, x0
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x25, x0, x8, lsl #2
	mov	x1, x20
	bl	_bzero
	cmp	w27, #1
	b.lt	LBB9_358
; %bb.324:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x19
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x19, #2
	stp	x8, x11, [sp, #168]             ; 16-byte Folded Spill
	add	x8, x8, #32
	stp	x25, x8, [sp, #88]              ; 16-byte Folded Spill
	add	x8, x23, #32
	stp	x8, xzr, [sp, #136]             ; 16-byte Folded Spill
	stp	x23, x23, [sp, #120]            ; 16-byte Folded Spill
	b	LBB9_326
LBB9_325:                               ;   in Loop: Header=BB9_326 Depth=3
	ldp	x9, x8, [sp, #136]              ; 16-byte Folded Reload
	add	x11, x8, #1
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #136]             ; 16-byte Folded Spill
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #128]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	add	x9, x9, x19
	cmp	w27, w9
	b.le	LBB9_356
LBB9_326:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_329 Depth 4
                                        ;           Child Loop BB9_342 Depth 5
                                        ;             Child Loop BB9_345 Depth 6
                                        ;               Child Loop BB9_347 Depth 7
                                        ;                 Child Loop BB9_348 Depth 8
                                        ;               Child Loop BB9_351 Depth 7
                                        ;                 Child Loop BB9_352 Depth 8
                                        ;                 Child Loop BB9_355 Depth 8
                                        ;           Child Loop BB9_333 Depth 5
                                        ;             Child Loop BB9_335 Depth 6
                                        ;               Child Loop BB9_336 Depth 7
                                        ;                 Child Loop BB9_337 Depth 8
	add	w8, w22, w9
	cmp	w8, w21
	csel	w8, w8, w21, lt
	str	x9, [sp, #240]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_325
; %bb.327:                              ;   in Loop: Header=BB9_326 Depth=3
	mov	x12, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #120]                  ; 8-byte Folded Reload
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	madd	x8, x11, x9, x8
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #128]              ; 16-byte Folded Reload
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	b	LBB9_329
LBB9_328:                               ;   in Loop: Header=BB9_329 Depth=4
	ldp	x9, x12, [sp, #184]             ; 16-byte Folded Reload
	add	x12, x12, #1
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #200]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x22, x19, [sp, #288]            ; 16-byte Folded Reload
	add	x0, x0, x19
	cmp	w27, w0
	b.le	LBB9_325
LBB9_329:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_342 Depth 5
                                        ;             Child Loop BB9_345 Depth 6
                                        ;               Child Loop BB9_347 Depth 7
                                        ;                 Child Loop BB9_348 Depth 8
                                        ;               Child Loop BB9_351 Depth 7
                                        ;                 Child Loop BB9_352 Depth 8
                                        ;                 Child Loop BB9_355 Depth 8
                                        ;           Child Loop BB9_333 Depth 5
                                        ;             Child Loop BB9_335 Depth 6
                                        ;               Child Loop BB9_336 Depth 7
                                        ;                 Child Loop BB9_337 Depth 8
	str	x12, [sp, #192]                 ; 8-byte Folded Spill
	add	w8, w22, w0
	cmp	w8, w21
	csel	w8, w8, w21, lt
	cmp	w8, w0
	b.le	LBB9_328
; %bb.330:                              ;   in Loop: Header=BB9_329 Depth=4
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #192]                 ; 8-byte Folded Reload
	madd	w9, w9, w12, w9
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x0, #1
	cmp	x9, x11
	csinc	x9, x9, x0, gt
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x11, x12, x11
	sub	x22, x9, x11
	sxtw	x25, w8
	cmp	x22, #16
	b.hs	LBB9_340
; %bb.331:                              ;   in Loop: Header=BB9_329 Depth=4
	mov	x9, #0                          ; =0x0
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	b	LBB9_333
LBB9_332:                               ;   in Loop: Header=BB9_333 Depth=5
	ldr	x9, [sp, #272]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	mov	x9, x11
	cmp	w21, w11
	b.le	LBB9_328
LBB9_333:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_335 Depth 6
                                        ;               Child Loop BB9_336 Depth 7
                                        ;                 Child Loop BB9_337 Depth 8
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	add	x11, x9, x11
	cmp	w11, w27
	csel	w12, w11, w27, lt
	cmp	w12, w9
	b.le	LBB9_332
; %bb.334:                              ;   in Loop: Header=BB9_333 Depth=5
	sxtw	x12, w12
	ldp	x14, x13, [sp, #240]            ; 16-byte Folded Reload
LBB9_335:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_333 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_336 Depth 7
                                        ;                 Child Loop BB9_337 Depth 8
	mul	x15, x14, x27
	add	x15, x10, x15, lsl #2
	mov	x16, x8
	mov	x17, x9
LBB9_336:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_333 Depth=5
                                        ;             Parent Loop BB9_335 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_337 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x15, x17, lsl #2]
LBB9_337:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_333 Depth=5
                                        ;             Parent Loop BB9_335 Depth=6
                                        ;               Parent Loop BB9_336 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x16, x2, lsl #2]
	ldr	s2, [x13, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x13, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x0, x2
	cmp	x3, x25
	b.lt	LBB9_337
; %bb.338:                              ;   in Loop: Header=BB9_336 Depth=7
	add	x17, x17, #1
	add	x16, x16, x24
	cmp	x17, x12
	b.lt	LBB9_336
; %bb.339:                              ;   in Loop: Header=BB9_335 Depth=6
	add	x14, x14, #1
	add	x13, x13, x24
	cmp	x14, x1
	b.lt	LBB9_335
	b	LBB9_332
LBB9_340:                               ;   in Loop: Header=BB9_329 Depth=4
	mov	x14, #0                         ; =0x0
	mov	x13, #0                         ; =0x0
	mvn	x8, x11
	add	x8, x9, x8
	lsl	x8, x8, #2
	ldp	x15, x9, [sp, #168]             ; 16-byte Folded Reload
	mul	x9, x9, x12
	add	x11, x15, x9
	str	x11, [sp, #224]                 ; 8-byte Folded Spill
	add	x11, x11, x8
	add	x11, x11, #4
	str	x11, [sp, #216]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	add	x23, x11, x9
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	add	x9, x11, x9
	add	x19, x9, x8
	and	x20, x22, #0xfffffffffffffff0
	add	x3, x0, x20
	lsr	x8, x22, #4
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldr	x4, [sp, #200]                  ; 8-byte Folded Reload
	ldr	x26, [sp, #184]                 ; 8-byte Folded Reload
	b	LBB9_342
LBB9_341:                               ;   in Loop: Header=BB9_342 Depth=5
	ldp	x14, x8, [sp, #264]             ; 16-byte Folded Reload
	add	x14, x14, #1
	add	x26, x26, x8
	add	x15, x15, x8
	add	x4, x4, x8
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	mov	x13, x8
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	cmp	w27, w8
	ldr	x21, [sp, #280]                 ; 8-byte Folded Reload
	b.le	LBB9_328
LBB9_342:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_345 Depth 6
                                        ;               Child Loop BB9_347 Depth 7
                                        ;                 Child Loop BB9_348 Depth 8
                                        ;               Child Loop BB9_351 Depth 7
                                        ;                 Child Loop BB9_352 Depth 8
                                        ;                 Child Loop BB9_355 Depth 8
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	madd	w8, w8, w14, w8
	cmp	w21, w8
	csel	w8, w21, w8, lt
	sxtw	x8, w8
	add	x9, x13, #1
	cmp	x8, x9
	csinc	x8, x8, x13, gt
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	add	x9, x13, x9
	cmp	w9, w21
	stp	x9, x14, [sp, #256]             ; 16-byte Folded Spill
	csel	w9, w9, w21, lt
	cmp	w9, w13
	b.le	LBB9_341
; %bb.343:                              ;   in Loop: Header=BB9_342 Depth=5
	mov	x16, #0                         ; =0x0
	ldp	x17, x11, [sp, #264]            ; 16-byte Folded Reload
	mul	x11, x11, x17
	ldp	x14, x12, [sp, #216]            ; 16-byte Folded Reload
	add	x12, x12, x11
	add	x11, x14, x11
	ldr	x14, [sp, #296]                 ; 8-byte Folded Reload
	mul	x14, x17, x14
	mvn	x14, x14
	add	x8, x8, x14
	madd	x30, x24, x8, x11
	sxtw	x2, w9
	ldp	x9, x5, [sp, #240]              ; 16-byte Folded Reload
	ldr	x27, [sp, #208]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
	b	LBB9_345
LBB9_344:                               ;   in Loop: Header=BB9_345 Depth=6
	add	x9, x9, #1
	add	x16, x16, #1
	add	x11, x11, x24
	add	x27, x27, x24
	add	x5, x5, x24
	cmp	x9, x1
	b.ge	LBB9_341
LBB9_345:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_342 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_347 Depth 7
                                        ;                 Child Loop BB9_348 Depth 8
                                        ;               Child Loop BB9_351 Depth 7
                                        ;                 Child Loop BB9_352 Depth 8
                                        ;                 Child Loop BB9_355 Depth 8
	mul	x8, x24, x16
	add	x14, x19, x8
	ldr	x17, [sp, #304]                 ; 8-byte Folded Reload
	mul	x17, x9, x17
	add	x21, x10, x17, lsl #2
	add	x8, x23, x8
	cmp	x8, x30
	ccmp	x12, x14, #2, lo
	mov	x28, x15
	mov	x17, x26
	mov	x8, x13
	b.hs	LBB9_351
; %bb.346:                              ;   in Loop: Header=BB9_345 Depth=6
	mov	x8, x4
	mov	x14, x13
LBB9_347:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_342 Depth=5
                                        ;             Parent Loop BB9_345 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_348 Depth 8
	mov	x17, #0                         ; =0x0
	ldr	s0, [x21, x14, lsl #2]
LBB9_348:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_342 Depth=5
                                        ;             Parent Loop BB9_345 Depth=6
                                        ;               Parent Loop BB9_347 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x8, x17, lsl #2]
	ldr	s2, [x5, x17, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x17, lsl #2]
	add	x17, x17, #1
	add	x6, x0, x17
	cmp	x6, x25
	b.lt	LBB9_348
; %bb.349:                              ;   in Loop: Header=BB9_347 Depth=7
	add	x14, x14, #1
	add	x8, x8, x24
	cmp	x14, x2
	b.lt	LBB9_347
	b	LBB9_344
LBB9_350:                               ;   in Loop: Header=BB9_351 Depth=7
	add	x8, x8, #1
	add	x17, x17, x24
	add	x28, x28, x24
	cmp	x8, x2
	b.ge	LBB9_344
LBB9_351:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_342 Depth=5
                                        ;             Parent Loop BB9_345 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_352 Depth 8
                                        ;                 Child Loop BB9_355 Depth 8
	ldr	s0, [x21, x8, lsl #2]
	dup.4s	v1, v0[0]
	mov	x6, x11
	mov	x7, x17
	mov	x14, x20
LBB9_352:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_342 Depth=5
                                        ;             Parent Loop BB9_345 Depth=6
                                        ;               Parent Loop BB9_351 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x7, #-32]
	ldp	q4, q5, [x7], #64
	ldp	q6, q7, [x6, #-32]
	ldp	q16, q17, [x6]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x6, #-32]
	stp	q16, q17, [x6], #64
	subs	x14, x14, #16
	b.ne	LBB9_352
; %bb.353:                              ;   in Loop: Header=BB9_351 Depth=7
	cmp	x22, x20
	b.eq	LBB9_350
; %bb.354:                              ;   in Loop: Header=BB9_351 Depth=7
	mov	x14, x27
	mov	x6, x3
LBB9_355:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_326 Depth=3
                                        ;         Parent Loop BB9_329 Depth=4
                                        ;           Parent Loop BB9_342 Depth=5
                                        ;             Parent Loop BB9_345 Depth=6
                                        ;               Parent Loop BB9_351 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x28, x6, lsl #2]
	ldr	s2, [x14]
	fmadd	s1, s0, s1, s2
	str	s1, [x14], #4
	add	x6, x6, #1
	cmp	x6, x25
	b.lt	LBB9_355
	b	LBB9_350
LBB9_356:                               ;   in Loop: Header=BB9_67 Depth=2
	ldr	x23, [sp, #120]                 ; 8-byte Folded Reload
	ldr	x25, [sp, #88]                  ; 8-byte Folded Reload
	b	LBB9_358
LBB9_357:                               ;   in Loop: Header=BB9_67 Depth=2
	mov	x23, #0                         ; =0x0
	mov	x25, #0                         ; =0x0
LBB9_358:                               ;   in Loop: Header=BB9_67 Depth=2
	sub	x8, x25, x23
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x23, x8]
	str	s0, [sp, #336]
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #80]                   ; 8-byte Folded Spill
Ltmp211:
	sub	x8, x29, #176
	sub	x0, x29, #240
	add	x1, sp, #424
	mov	x2, x27
	mov	x3, x21
	mov	x4, x27
	mov	x5, x22
	bl	__Z30matmul_tiled_accumulate_outputRKNSt3__16vectorIfNS_9allocatorIfEEEES5_iiii
Ltmp212:
; %bb.359:                              ;   in Loop: Header=BB9_67 Depth=2
	str	x23, [sp, #120]                 ; 8-byte Folded Spill
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #72]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #64]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w27, LBB9_394
; %bb.360:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp214:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp215:
; %bb.361:                              ;   in Loop: Header=BB9_67 Depth=2
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	cmp	w21, #1
	b.lt	LBB9_394
; %bb.362:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x11, #0                         ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x9
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x12, x9, #2
	stp	x8, x12, [sp, #168]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x12, x8, #32
	stp	x12, xzr, [sp, #136]            ; 16-byte Folded Spill
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	b	LBB9_364
LBB9_363:                               ;   in Loop: Header=BB9_364 Depth=3
	ldp	x11, x8, [sp, #136]             ; 16-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	add	x11, x11, x8
	str	x11, [sp, #136]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #128]                 ; 8-byte Folded Reload
	add	x11, x11, x8
	str	x11, [sp, #128]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #240]                 ; 8-byte Folded Reload
	add	x11, x11, x9
	cmp	w21, w11
	b.le	LBB9_394
LBB9_364:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_367 Depth 4
                                        ;           Child Loop BB9_380 Depth 5
                                        ;             Child Loop BB9_383 Depth 6
                                        ;               Child Loop BB9_385 Depth 7
                                        ;                 Child Loop BB9_386 Depth 8
                                        ;               Child Loop BB9_389 Depth 7
                                        ;                 Child Loop BB9_390 Depth 8
                                        ;                 Child Loop BB9_393 Depth 8
                                        ;           Child Loop BB9_371 Depth 5
                                        ;             Child Loop BB9_373 Depth 6
                                        ;               Child Loop BB9_374 Depth 7
                                        ;                 Child Loop BB9_375 Depth 8
	add	w8, w22, w11
	cmp	w8, w27
	csel	w8, w8, w27, lt
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	cmp	w8, w11
	b.le	LBB9_363
; %bb.365:                              ;   in Loop: Header=BB9_364 Depth=3
	mov	x12, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	madd	x8, x11, x9, x8
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #128]              ; 16-byte Folded Reload
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	b	LBB9_367
LBB9_366:                               ;   in Loop: Header=BB9_367 Depth=4
	ldp	x9, x12, [sp, #184]             ; 16-byte Folded Reload
	add	x12, x12, #1
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #200]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x22, x9, [sp, #288]             ; 16-byte Folded Reload
	add	x0, x0, x9
	cmp	w21, w0
	b.le	LBB9_363
LBB9_367:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_380 Depth 5
                                        ;             Child Loop BB9_383 Depth 6
                                        ;               Child Loop BB9_385 Depth 7
                                        ;                 Child Loop BB9_386 Depth 8
                                        ;               Child Loop BB9_389 Depth 7
                                        ;                 Child Loop BB9_390 Depth 8
                                        ;                 Child Loop BB9_393 Depth 8
                                        ;           Child Loop BB9_371 Depth 5
                                        ;             Child Loop BB9_373 Depth 6
                                        ;               Child Loop BB9_374 Depth 7
                                        ;                 Child Loop BB9_375 Depth 8
	str	x12, [sp, #192]                 ; 8-byte Folded Spill
	add	w8, w22, w0
	cmp	w8, w27
	csel	w8, w8, w27, lt
	cmp	w8, w0
	b.le	LBB9_366
; %bb.368:                              ;   in Loop: Header=BB9_367 Depth=4
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #192]                 ; 8-byte Folded Reload
	madd	w9, w9, w12, w9
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x0, #1
	cmp	x9, x11
	csinc	x9, x9, x0, gt
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x11, x12, x11
	sub	x22, x9, x11
	sxtw	x25, w8
	cmp	x22, #16
	b.hs	LBB9_378
; %bb.369:                              ;   in Loop: Header=BB9_367 Depth=4
	mov	x9, #0                          ; =0x0
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	b	LBB9_371
LBB9_370:                               ;   in Loop: Header=BB9_371 Depth=5
	ldr	x9, [sp, #272]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	mov	x9, x11
	cmp	w21, w11
	b.le	LBB9_366
LBB9_371:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_373 Depth 6
                                        ;               Child Loop BB9_374 Depth 7
                                        ;                 Child Loop BB9_375 Depth 8
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	add	x11, x9, x11
	cmp	w11, w27
	csel	w12, w11, w27, lt
	cmp	w12, w9
	b.le	LBB9_370
; %bb.372:                              ;   in Loop: Header=BB9_371 Depth=5
	sxtw	x12, w12
	ldp	x14, x13, [sp, #240]            ; 16-byte Folded Reload
LBB9_373:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_371 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_374 Depth 7
                                        ;                 Child Loop BB9_375 Depth 8
	mul	x15, x14, x27
	add	x15, x10, x15, lsl #2
	mov	x16, x8
	mov	x17, x9
LBB9_374:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_371 Depth=5
                                        ;             Parent Loop BB9_373 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_375 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x15, x17, lsl #2]
LBB9_375:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_371 Depth=5
                                        ;             Parent Loop BB9_373 Depth=6
                                        ;               Parent Loop BB9_374 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x16, x2, lsl #2]
	ldr	s2, [x13, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x13, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x0, x2
	cmp	x3, x25
	b.lt	LBB9_375
; %bb.376:                              ;   in Loop: Header=BB9_374 Depth=7
	add	x17, x17, #1
	add	x16, x16, x24
	cmp	x17, x12
	b.lt	LBB9_374
; %bb.377:                              ;   in Loop: Header=BB9_373 Depth=6
	add	x14, x14, #1
	add	x13, x13, x24
	cmp	x14, x1
	b.lt	LBB9_373
	b	LBB9_370
LBB9_378:                               ;   in Loop: Header=BB9_367 Depth=4
	mov	x16, #0                         ; =0x0
	mov	x13, #0                         ; =0x0
	mvn	x8, x11
	add	x8, x9, x8
	lsl	x8, x8, #2
	ldp	x15, x9, [sp, #168]             ; 16-byte Folded Reload
	mul	x9, x9, x12
	add	x11, x15, x9
	str	x11, [sp, #224]                 ; 8-byte Folded Spill
	add	x11, x11, x8
	add	x11, x11, #4
	str	x11, [sp, #216]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	add	x23, x11, x9
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	add	x9, x11, x9
	add	x14, x9, x8
	and	x19, x22, #0xfffffffffffffff0
	add	x3, x0, x19
	lsr	x8, x22, #4
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldr	x4, [sp, #200]                  ; 8-byte Folded Reload
	ldr	x26, [sp, #184]                 ; 8-byte Folded Reload
	b	LBB9_380
LBB9_379:                               ;   in Loop: Header=BB9_380 Depth=5
	ldp	x16, x8, [sp, #264]             ; 16-byte Folded Reload
	add	x16, x16, #1
	add	x26, x26, x8
	add	x15, x15, x8
	add	x4, x4, x8
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	mov	x13, x8
	ldr	x21, [sp, #280]                 ; 8-byte Folded Reload
	cmp	w21, w8
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	b.le	LBB9_366
LBB9_380:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_383 Depth 6
                                        ;               Child Loop BB9_385 Depth 7
                                        ;                 Child Loop BB9_386 Depth 8
                                        ;               Child Loop BB9_389 Depth 7
                                        ;                 Child Loop BB9_390 Depth 8
                                        ;                 Child Loop BB9_393 Depth 8
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	madd	w8, w8, w16, w8
	cmp	w21, w8
	csel	w8, w21, w8, lt
	sxtw	x8, w8
	add	x9, x13, #1
	cmp	x8, x9
	csinc	x8, x8, x13, gt
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	add	x9, x13, x9
	cmp	w9, w27
	stp	x9, x16, [sp, #256]             ; 16-byte Folded Spill
	csel	w9, w9, w27, lt
	cmp	w9, w13
	b.le	LBB9_379
; %bb.381:                              ;   in Loop: Header=BB9_380 Depth=5
	mov	x16, #0                         ; =0x0
	ldp	x2, x11, [sp, #264]             ; 16-byte Folded Reload
	mul	x11, x11, x2
	ldp	x17, x12, [sp, #216]            ; 16-byte Folded Reload
	add	x12, x12, x11
	add	x11, x17, x11
	ldr	x17, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x2, x17
	mvn	x17, x17
	add	x8, x8, x17
	madd	x30, x24, x8, x11
	sxtw	x2, w9
	ldp	x9, x5, [sp, #240]              ; 16-byte Folded Reload
	ldr	x27, [sp, #208]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
	b	LBB9_383
LBB9_382:                               ;   in Loop: Header=BB9_383 Depth=6
	add	x9, x9, #1
	add	x16, x16, #1
	add	x11, x11, x24
	add	x27, x27, x24
	add	x5, x5, x24
	cmp	x9, x1
	b.ge	LBB9_379
LBB9_383:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_380 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_385 Depth 7
                                        ;                 Child Loop BB9_386 Depth 8
                                        ;               Child Loop BB9_389 Depth 7
                                        ;                 Child Loop BB9_390 Depth 8
                                        ;                 Child Loop BB9_393 Depth 8
	mul	x8, x24, x16
	add	x17, x14, x8
	ldr	x6, [sp, #304]                  ; 8-byte Folded Reload
	mul	x6, x9, x6
	add	x21, x10, x6, lsl #2
	add	x8, x23, x8
	cmp	x8, x30
	ccmp	x12, x17, #2, lo
	mov	x28, x15
	mov	x17, x26
	mov	x8, x13
	b.hs	LBB9_389
; %bb.384:                              ;   in Loop: Header=BB9_383 Depth=6
	mov	x8, x4
	mov	x17, x13
LBB9_385:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_380 Depth=5
                                        ;             Parent Loop BB9_383 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_386 Depth 8
	mov	x6, #0                          ; =0x0
	ldr	s0, [x21, x17, lsl #2]
LBB9_386:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_380 Depth=5
                                        ;             Parent Loop BB9_383 Depth=6
                                        ;               Parent Loop BB9_385 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x8, x6, lsl #2]
	ldr	s2, [x5, x6, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x6, lsl #2]
	add	x6, x6, #1
	add	x7, x0, x6
	cmp	x7, x25
	b.lt	LBB9_386
; %bb.387:                              ;   in Loop: Header=BB9_385 Depth=7
	add	x17, x17, #1
	add	x8, x8, x24
	cmp	x17, x2
	b.lt	LBB9_385
	b	LBB9_382
LBB9_388:                               ;   in Loop: Header=BB9_389 Depth=7
	add	x8, x8, #1
	add	x17, x17, x24
	add	x28, x28, x24
	cmp	x8, x2
	b.ge	LBB9_382
LBB9_389:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_380 Depth=5
                                        ;             Parent Loop BB9_383 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_390 Depth 8
                                        ;                 Child Loop BB9_393 Depth 8
	ldr	s0, [x21, x8, lsl #2]
	dup.4s	v1, v0[0]
	mov	x6, x11
	mov	x7, x17
	mov	x20, x19
LBB9_390:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_380 Depth=5
                                        ;             Parent Loop BB9_383 Depth=6
                                        ;               Parent Loop BB9_389 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x7, #-32]
	ldp	q4, q5, [x7], #64
	ldp	q6, q7, [x6, #-32]
	ldp	q16, q17, [x6]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x6, #-32]
	stp	q16, q17, [x6], #64
	subs	x20, x20, #16
	b.ne	LBB9_390
; %bb.391:                              ;   in Loop: Header=BB9_389 Depth=7
	cmp	x22, x19
	b.eq	LBB9_388
; %bb.392:                              ;   in Loop: Header=BB9_389 Depth=7
	mov	x6, x27
	mov	x7, x3
LBB9_393:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_364 Depth=3
                                        ;         Parent Loop BB9_367 Depth=4
                                        ;           Parent Loop BB9_380 Depth=5
                                        ;             Parent Loop BB9_383 Depth=6
                                        ;               Parent Loop BB9_389 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x28, x7, lsl #2]
	ldr	s2, [x6]
	fmadd	s1, s0, s1, s2
	str	s1, [x6], #4
	add	x7, x7, #1
	cmp	x7, x25
	b.lt	LBB9_393
	b	LBB9_388
LBB9_394:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #56]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #48]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w21, LBB9_429
; %bb.395:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp217:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp218:
; %bb.396:                              ;   in Loop: Header=BB9_67 Depth=2
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	cmp	w27, #1
	b.lt	LBB9_429
; %bb.397:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x11, #0                         ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x9
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x12, x9, #2
	stp	x8, x12, [sp, #168]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x12, x8, #32
	stp	x12, xzr, [sp, #136]            ; 16-byte Folded Spill
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	b	LBB9_399
LBB9_398:                               ;   in Loop: Header=BB9_399 Depth=3
	ldp	x11, x8, [sp, #136]             ; 16-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	add	x11, x11, x8
	str	x11, [sp, #136]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #128]                 ; 8-byte Folded Reload
	add	x11, x11, x8
	str	x11, [sp, #128]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #240]                 ; 8-byte Folded Reload
	add	x11, x11, x9
	cmp	w21, w11
	b.le	LBB9_429
LBB9_399:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_402 Depth 4
                                        ;           Child Loop BB9_415 Depth 5
                                        ;             Child Loop BB9_418 Depth 6
                                        ;               Child Loop BB9_420 Depth 7
                                        ;                 Child Loop BB9_421 Depth 8
                                        ;               Child Loop BB9_424 Depth 7
                                        ;                 Child Loop BB9_425 Depth 8
                                        ;                 Child Loop BB9_428 Depth 8
                                        ;           Child Loop BB9_406 Depth 5
                                        ;             Child Loop BB9_408 Depth 6
                                        ;               Child Loop BB9_409 Depth 7
                                        ;                 Child Loop BB9_410 Depth 8
	add	w8, w22, w11
	cmp	w8, w27
	csel	w8, w8, w27, lt
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	cmp	w8, w11
	b.le	LBB9_398
; %bb.400:                              ;   in Loop: Header=BB9_399 Depth=3
	mov	x12, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	madd	x8, x11, x9, x8
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #128]              ; 16-byte Folded Reload
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	b	LBB9_402
LBB9_401:                               ;   in Loop: Header=BB9_402 Depth=4
	ldp	x9, x12, [sp, #184]             ; 16-byte Folded Reload
	add	x12, x12, #1
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #200]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x22, x9, [sp, #288]             ; 16-byte Folded Reload
	add	x0, x0, x9
	cmp	w21, w0
	b.le	LBB9_398
LBB9_402:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_415 Depth 5
                                        ;             Child Loop BB9_418 Depth 6
                                        ;               Child Loop BB9_420 Depth 7
                                        ;                 Child Loop BB9_421 Depth 8
                                        ;               Child Loop BB9_424 Depth 7
                                        ;                 Child Loop BB9_425 Depth 8
                                        ;                 Child Loop BB9_428 Depth 8
                                        ;           Child Loop BB9_406 Depth 5
                                        ;             Child Loop BB9_408 Depth 6
                                        ;               Child Loop BB9_409 Depth 7
                                        ;                 Child Loop BB9_410 Depth 8
	str	x12, [sp, #192]                 ; 8-byte Folded Spill
	add	w8, w22, w0
	cmp	w8, w27
	csel	w8, w8, w27, lt
	cmp	w8, w0
	b.le	LBB9_401
; %bb.403:                              ;   in Loop: Header=BB9_402 Depth=4
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #192]                 ; 8-byte Folded Reload
	madd	w9, w9, w12, w9
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x0, #1
	cmp	x9, x11
	csinc	x9, x9, x0, gt
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x11, x12, x11
	sub	x22, x9, x11
	sxtw	x25, w8
	cmp	x22, #16
	b.hs	LBB9_413
; %bb.404:                              ;   in Loop: Header=BB9_402 Depth=4
	mov	x9, #0                          ; =0x0
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	b	LBB9_406
LBB9_405:                               ;   in Loop: Header=BB9_406 Depth=5
	ldr	x9, [sp, #272]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	mov	x9, x11
	cmp	w21, w11
	b.le	LBB9_401
LBB9_406:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_408 Depth 6
                                        ;               Child Loop BB9_409 Depth 7
                                        ;                 Child Loop BB9_410 Depth 8
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	add	x11, x9, x11
	cmp	w11, w27
	csel	w12, w11, w27, lt
	cmp	w12, w9
	b.le	LBB9_405
; %bb.407:                              ;   in Loop: Header=BB9_406 Depth=5
	sxtw	x12, w12
	ldp	x14, x13, [sp, #240]            ; 16-byte Folded Reload
LBB9_408:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_406 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_409 Depth 7
                                        ;                 Child Loop BB9_410 Depth 8
	mul	x15, x14, x27
	add	x15, x10, x15, lsl #2
	mov	x16, x8
	mov	x17, x9
LBB9_409:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_406 Depth=5
                                        ;             Parent Loop BB9_408 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_410 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x15, x17, lsl #2]
LBB9_410:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_406 Depth=5
                                        ;             Parent Loop BB9_408 Depth=6
                                        ;               Parent Loop BB9_409 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x16, x2, lsl #2]
	ldr	s2, [x13, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x13, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x0, x2
	cmp	x3, x25
	b.lt	LBB9_410
; %bb.411:                              ;   in Loop: Header=BB9_409 Depth=7
	add	x17, x17, #1
	add	x16, x16, x24
	cmp	x17, x12
	b.lt	LBB9_409
; %bb.412:                              ;   in Loop: Header=BB9_408 Depth=6
	add	x14, x14, #1
	add	x13, x13, x24
	cmp	x14, x1
	b.lt	LBB9_408
	b	LBB9_405
LBB9_413:                               ;   in Loop: Header=BB9_402 Depth=4
	mov	x16, #0                         ; =0x0
	mov	x13, #0                         ; =0x0
	mvn	x8, x11
	add	x8, x9, x8
	lsl	x8, x8, #2
	ldp	x15, x9, [sp, #168]             ; 16-byte Folded Reload
	mul	x9, x9, x12
	add	x11, x15, x9
	str	x11, [sp, #224]                 ; 8-byte Folded Spill
	add	x11, x11, x8
	add	x11, x11, #4
	str	x11, [sp, #216]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	add	x23, x11, x9
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	add	x9, x11, x9
	add	x14, x9, x8
	and	x19, x22, #0xfffffffffffffff0
	add	x3, x0, x19
	lsr	x8, x22, #4
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldr	x4, [sp, #200]                  ; 8-byte Folded Reload
	ldr	x26, [sp, #184]                 ; 8-byte Folded Reload
	b	LBB9_415
LBB9_414:                               ;   in Loop: Header=BB9_415 Depth=5
	ldp	x16, x8, [sp, #264]             ; 16-byte Folded Reload
	add	x16, x16, #1
	add	x26, x26, x8
	add	x15, x15, x8
	add	x4, x4, x8
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	mov	x13, x8
	ldr	x21, [sp, #280]                 ; 8-byte Folded Reload
	cmp	w21, w8
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	b.le	LBB9_401
LBB9_415:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_418 Depth 6
                                        ;               Child Loop BB9_420 Depth 7
                                        ;                 Child Loop BB9_421 Depth 8
                                        ;               Child Loop BB9_424 Depth 7
                                        ;                 Child Loop BB9_425 Depth 8
                                        ;                 Child Loop BB9_428 Depth 8
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	madd	w8, w8, w16, w8
	cmp	w21, w8
	csel	w8, w21, w8, lt
	sxtw	x8, w8
	add	x9, x13, #1
	cmp	x8, x9
	csinc	x8, x8, x13, gt
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	add	x9, x13, x9
	cmp	w9, w27
	stp	x9, x16, [sp, #256]             ; 16-byte Folded Spill
	csel	w9, w9, w27, lt
	cmp	w9, w13
	b.le	LBB9_414
; %bb.416:                              ;   in Loop: Header=BB9_415 Depth=5
	mov	x16, #0                         ; =0x0
	ldp	x2, x11, [sp, #264]             ; 16-byte Folded Reload
	mul	x11, x11, x2
	ldp	x17, x12, [sp, #216]            ; 16-byte Folded Reload
	add	x12, x12, x11
	add	x11, x17, x11
	ldr	x17, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x2, x17
	mvn	x17, x17
	add	x8, x8, x17
	madd	x30, x24, x8, x11
	sxtw	x2, w9
	ldp	x9, x5, [sp, #240]              ; 16-byte Folded Reload
	ldr	x27, [sp, #208]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
	b	LBB9_418
LBB9_417:                               ;   in Loop: Header=BB9_418 Depth=6
	add	x9, x9, #1
	add	x16, x16, #1
	add	x11, x11, x24
	add	x27, x27, x24
	add	x5, x5, x24
	cmp	x9, x1
	b.ge	LBB9_414
LBB9_418:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_415 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_420 Depth 7
                                        ;                 Child Loop BB9_421 Depth 8
                                        ;               Child Loop BB9_424 Depth 7
                                        ;                 Child Loop BB9_425 Depth 8
                                        ;                 Child Loop BB9_428 Depth 8
	mul	x8, x24, x16
	add	x17, x14, x8
	ldr	x6, [sp, #304]                  ; 8-byte Folded Reload
	mul	x6, x9, x6
	add	x21, x10, x6, lsl #2
	add	x8, x23, x8
	cmp	x8, x30
	ccmp	x12, x17, #2, lo
	mov	x28, x15
	mov	x17, x26
	mov	x8, x13
	b.hs	LBB9_424
; %bb.419:                              ;   in Loop: Header=BB9_418 Depth=6
	mov	x8, x4
	mov	x17, x13
LBB9_420:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_415 Depth=5
                                        ;             Parent Loop BB9_418 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_421 Depth 8
	mov	x6, #0                          ; =0x0
	ldr	s0, [x21, x17, lsl #2]
LBB9_421:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_415 Depth=5
                                        ;             Parent Loop BB9_418 Depth=6
                                        ;               Parent Loop BB9_420 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x8, x6, lsl #2]
	ldr	s2, [x5, x6, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x6, lsl #2]
	add	x6, x6, #1
	add	x7, x0, x6
	cmp	x7, x25
	b.lt	LBB9_421
; %bb.422:                              ;   in Loop: Header=BB9_420 Depth=7
	add	x17, x17, #1
	add	x8, x8, x24
	cmp	x17, x2
	b.lt	LBB9_420
	b	LBB9_417
LBB9_423:                               ;   in Loop: Header=BB9_424 Depth=7
	add	x8, x8, #1
	add	x17, x17, x24
	add	x28, x28, x24
	cmp	x8, x2
	b.ge	LBB9_417
LBB9_424:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_415 Depth=5
                                        ;             Parent Loop BB9_418 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_425 Depth 8
                                        ;                 Child Loop BB9_428 Depth 8
	ldr	s0, [x21, x8, lsl #2]
	dup.4s	v1, v0[0]
	mov	x6, x11
	mov	x7, x17
	mov	x20, x19
LBB9_425:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_415 Depth=5
                                        ;             Parent Loop BB9_418 Depth=6
                                        ;               Parent Loop BB9_424 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x7, #-32]
	ldp	q4, q5, [x7], #64
	ldp	q6, q7, [x6, #-32]
	ldp	q16, q17, [x6]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x6, #-32]
	stp	q16, q17, [x6], #64
	subs	x20, x20, #16
	b.ne	LBB9_425
; %bb.426:                              ;   in Loop: Header=BB9_424 Depth=7
	cmp	x22, x19
	b.eq	LBB9_423
; %bb.427:                              ;   in Loop: Header=BB9_424 Depth=7
	mov	x6, x27
	mov	x7, x3
LBB9_428:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_399 Depth=3
                                        ;         Parent Loop BB9_402 Depth=4
                                        ;           Parent Loop BB9_415 Depth=5
                                        ;             Parent Loop BB9_418 Depth=6
                                        ;               Parent Loop BB9_424 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x28, x7, lsl #2]
	ldr	s2, [x6]
	fmadd	s1, s0, s1, s2
	str	s1, [x6], #4
	add	x7, x7, #1
	cmp	x7, x25
	b.lt	LBB9_428
	b	LBB9_423
LBB9_429:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #40]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #32]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w27, LBB9_464
; %bb.430:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp220:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp221:
; %bb.431:                              ;   in Loop: Header=BB9_67 Depth=2
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	cmp	w21, #1
	b.lt	LBB9_464
; %bb.432:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x11, #0                         ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x9
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x12, x9, #2
	stp	x8, x12, [sp, #168]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x12, x8, #32
	stp	x12, xzr, [sp, #136]            ; 16-byte Folded Spill
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	b	LBB9_434
LBB9_433:                               ;   in Loop: Header=BB9_434 Depth=3
	ldp	x11, x8, [sp, #136]             ; 16-byte Folded Reload
	add	x8, x8, #1
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	add	x11, x11, x8
	str	x11, [sp, #136]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #128]                 ; 8-byte Folded Reload
	add	x11, x11, x8
	str	x11, [sp, #128]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #240]                 ; 8-byte Folded Reload
	add	x11, x11, x9
	cmp	w21, w11
	b.le	LBB9_464
LBB9_434:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_437 Depth 4
                                        ;           Child Loop BB9_450 Depth 5
                                        ;             Child Loop BB9_453 Depth 6
                                        ;               Child Loop BB9_455 Depth 7
                                        ;                 Child Loop BB9_456 Depth 8
                                        ;               Child Loop BB9_459 Depth 7
                                        ;                 Child Loop BB9_460 Depth 8
                                        ;                 Child Loop BB9_463 Depth 8
                                        ;           Child Loop BB9_441 Depth 5
                                        ;             Child Loop BB9_443 Depth 6
                                        ;               Child Loop BB9_444 Depth 7
                                        ;                 Child Loop BB9_445 Depth 8
	add	w8, w22, w11
	cmp	w8, w27
	csel	w8, w8, w27, lt
	str	x11, [sp, #240]                 ; 8-byte Folded Spill
	cmp	w8, w11
	b.le	LBB9_433
; %bb.435:                              ;   in Loop: Header=BB9_434 Depth=3
	mov	x12, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	madd	x8, x11, x9, x8
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #128]              ; 16-byte Folded Reload
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	b	LBB9_437
LBB9_436:                               ;   in Loop: Header=BB9_437 Depth=4
	ldp	x9, x12, [sp, #184]             ; 16-byte Folded Reload
	add	x12, x12, #1
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #200]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x22, x9, [sp, #288]             ; 16-byte Folded Reload
	add	x0, x0, x9
	cmp	w21, w0
	b.le	LBB9_433
LBB9_437:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_450 Depth 5
                                        ;             Child Loop BB9_453 Depth 6
                                        ;               Child Loop BB9_455 Depth 7
                                        ;                 Child Loop BB9_456 Depth 8
                                        ;               Child Loop BB9_459 Depth 7
                                        ;                 Child Loop BB9_460 Depth 8
                                        ;                 Child Loop BB9_463 Depth 8
                                        ;           Child Loop BB9_441 Depth 5
                                        ;             Child Loop BB9_443 Depth 6
                                        ;               Child Loop BB9_444 Depth 7
                                        ;                 Child Loop BB9_445 Depth 8
	str	x12, [sp, #192]                 ; 8-byte Folded Spill
	add	w8, w22, w0
	cmp	w8, w27
	csel	w8, w8, w27, lt
	cmp	w8, w0
	b.le	LBB9_436
; %bb.438:                              ;   in Loop: Header=BB9_437 Depth=4
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #192]                 ; 8-byte Folded Reload
	madd	w9, w9, w12, w9
	cmp	w27, w9
	csel	w9, w27, w9, lt
	sxtw	x9, w9
	add	x11, x0, #1
	cmp	x9, x11
	csinc	x9, x9, x0, gt
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	mul	x11, x12, x11
	sub	x22, x9, x11
	sxtw	x25, w8
	cmp	x22, #16
	b.hs	LBB9_448
; %bb.439:                              ;   in Loop: Header=BB9_437 Depth=4
	mov	x9, #0                          ; =0x0
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	b	LBB9_441
LBB9_440:                               ;   in Loop: Header=BB9_441 Depth=5
	ldr	x9, [sp, #272]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	mov	x9, x11
	cmp	w21, w11
	b.le	LBB9_436
LBB9_441:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_443 Depth 6
                                        ;               Child Loop BB9_444 Depth 7
                                        ;                 Child Loop BB9_445 Depth 8
	ldr	x11, [sp, #296]                 ; 8-byte Folded Reload
	add	x11, x9, x11
	cmp	w11, w27
	csel	w12, w11, w27, lt
	cmp	w12, w9
	b.le	LBB9_440
; %bb.442:                              ;   in Loop: Header=BB9_441 Depth=5
	sxtw	x12, w12
	ldp	x14, x13, [sp, #240]            ; 16-byte Folded Reload
LBB9_443:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_441 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_444 Depth 7
                                        ;                 Child Loop BB9_445 Depth 8
	mul	x15, x14, x27
	add	x15, x10, x15, lsl #2
	mov	x16, x8
	mov	x17, x9
LBB9_444:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_441 Depth=5
                                        ;             Parent Loop BB9_443 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_445 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x15, x17, lsl #2]
LBB9_445:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_441 Depth=5
                                        ;             Parent Loop BB9_443 Depth=6
                                        ;               Parent Loop BB9_444 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x16, x2, lsl #2]
	ldr	s2, [x13, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x13, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x0, x2
	cmp	x3, x25
	b.lt	LBB9_445
; %bb.446:                              ;   in Loop: Header=BB9_444 Depth=7
	add	x17, x17, #1
	add	x16, x16, x24
	cmp	x17, x12
	b.lt	LBB9_444
; %bb.447:                              ;   in Loop: Header=BB9_443 Depth=6
	add	x14, x14, #1
	add	x13, x13, x24
	cmp	x14, x1
	b.lt	LBB9_443
	b	LBB9_440
LBB9_448:                               ;   in Loop: Header=BB9_437 Depth=4
	mov	x16, #0                         ; =0x0
	mov	x13, #0                         ; =0x0
	mvn	x8, x11
	add	x8, x9, x8
	lsl	x8, x8, #2
	ldp	x15, x9, [sp, #168]             ; 16-byte Folded Reload
	mul	x9, x9, x12
	add	x11, x15, x9
	str	x11, [sp, #224]                 ; 8-byte Folded Spill
	add	x11, x11, x8
	add	x11, x11, #4
	str	x11, [sp, #216]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	add	x23, x11, x9
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	add	x9, x11, x9
	add	x14, x9, x8
	and	x19, x22, #0xfffffffffffffff0
	add	x3, x0, x19
	lsr	x8, x22, #4
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldr	x4, [sp, #200]                  ; 8-byte Folded Reload
	ldr	x26, [sp, #184]                 ; 8-byte Folded Reload
	b	LBB9_450
LBB9_449:                               ;   in Loop: Header=BB9_450 Depth=5
	ldp	x16, x8, [sp, #264]             ; 16-byte Folded Reload
	add	x16, x16, #1
	add	x26, x26, x8
	add	x15, x15, x8
	add	x4, x4, x8
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	mov	x13, x8
	ldr	x21, [sp, #280]                 ; 8-byte Folded Reload
	cmp	w21, w8
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	b.le	LBB9_436
LBB9_450:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_453 Depth 6
                                        ;               Child Loop BB9_455 Depth 7
                                        ;                 Child Loop BB9_456 Depth 8
                                        ;               Child Loop BB9_459 Depth 7
                                        ;                 Child Loop BB9_460 Depth 8
                                        ;                 Child Loop BB9_463 Depth 8
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	madd	w8, w8, w16, w8
	cmp	w21, w8
	csel	w8, w21, w8, lt
	sxtw	x8, w8
	add	x9, x13, #1
	cmp	x8, x9
	csinc	x8, x8, x13, gt
	ldr	x9, [sp, #296]                  ; 8-byte Folded Reload
	add	x9, x13, x9
	cmp	w9, w27
	stp	x9, x16, [sp, #256]             ; 16-byte Folded Spill
	csel	w9, w9, w27, lt
	cmp	w9, w13
	b.le	LBB9_449
; %bb.451:                              ;   in Loop: Header=BB9_450 Depth=5
	mov	x16, #0                         ; =0x0
	ldp	x2, x11, [sp, #264]             ; 16-byte Folded Reload
	mul	x11, x11, x2
	ldp	x17, x12, [sp, #216]            ; 16-byte Folded Reload
	add	x12, x12, x11
	add	x11, x17, x11
	ldr	x17, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x2, x17
	mvn	x17, x17
	add	x8, x8, x17
	madd	x30, x24, x8, x11
	sxtw	x2, w9
	ldp	x9, x5, [sp, #240]              ; 16-byte Folded Reload
	ldr	x27, [sp, #208]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
	b	LBB9_453
LBB9_452:                               ;   in Loop: Header=BB9_453 Depth=6
	add	x9, x9, #1
	add	x16, x16, #1
	add	x11, x11, x24
	add	x27, x27, x24
	add	x5, x5, x24
	cmp	x9, x1
	b.ge	LBB9_449
LBB9_453:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_450 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_455 Depth 7
                                        ;                 Child Loop BB9_456 Depth 8
                                        ;               Child Loop BB9_459 Depth 7
                                        ;                 Child Loop BB9_460 Depth 8
                                        ;                 Child Loop BB9_463 Depth 8
	mul	x8, x24, x16
	add	x17, x14, x8
	ldr	x6, [sp, #304]                  ; 8-byte Folded Reload
	mul	x6, x9, x6
	add	x21, x10, x6, lsl #2
	add	x8, x23, x8
	cmp	x8, x30
	ccmp	x12, x17, #2, lo
	mov	x28, x15
	mov	x17, x26
	mov	x8, x13
	b.hs	LBB9_459
; %bb.454:                              ;   in Loop: Header=BB9_453 Depth=6
	mov	x8, x4
	mov	x17, x13
LBB9_455:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_450 Depth=5
                                        ;             Parent Loop BB9_453 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_456 Depth 8
	mov	x6, #0                          ; =0x0
	ldr	s0, [x21, x17, lsl #2]
LBB9_456:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_450 Depth=5
                                        ;             Parent Loop BB9_453 Depth=6
                                        ;               Parent Loop BB9_455 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x8, x6, lsl #2]
	ldr	s2, [x5, x6, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x6, lsl #2]
	add	x6, x6, #1
	add	x7, x0, x6
	cmp	x7, x25
	b.lt	LBB9_456
; %bb.457:                              ;   in Loop: Header=BB9_455 Depth=7
	add	x17, x17, #1
	add	x8, x8, x24
	cmp	x17, x2
	b.lt	LBB9_455
	b	LBB9_452
LBB9_458:                               ;   in Loop: Header=BB9_459 Depth=7
	add	x8, x8, #1
	add	x17, x17, x24
	add	x28, x28, x24
	cmp	x8, x2
	b.ge	LBB9_452
LBB9_459:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_450 Depth=5
                                        ;             Parent Loop BB9_453 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_460 Depth 8
                                        ;                 Child Loop BB9_463 Depth 8
	ldr	s0, [x21, x8, lsl #2]
	dup.4s	v1, v0[0]
	mov	x6, x11
	mov	x7, x17
	mov	x20, x19
LBB9_460:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_450 Depth=5
                                        ;             Parent Loop BB9_453 Depth=6
                                        ;               Parent Loop BB9_459 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x7, #-32]
	ldp	q4, q5, [x7], #64
	ldp	q6, q7, [x6, #-32]
	ldp	q16, q17, [x6]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x6, #-32]
	stp	q16, q17, [x6], #64
	subs	x20, x20, #16
	b.ne	LBB9_460
; %bb.461:                              ;   in Loop: Header=BB9_459 Depth=7
	cmp	x22, x19
	b.eq	LBB9_458
; %bb.462:                              ;   in Loop: Header=BB9_459 Depth=7
	mov	x6, x27
	mov	x7, x3
LBB9_463:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_434 Depth=3
                                        ;         Parent Loop BB9_437 Depth=4
                                        ;           Parent Loop BB9_450 Depth=5
                                        ;             Parent Loop BB9_453 Depth=6
                                        ;               Parent Loop BB9_459 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x28, x7, lsl #2]
	ldr	s2, [x6]
	fmadd	s1, s0, s1, s2
	str	s1, [x6], #4
	add	x7, x7, #1
	cmp	x7, x25
	b.lt	LBB9_463
	b	LBB9_458
LBB9_464:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	str	x0, [sp, #16]                   ; 8-byte Folded Spill
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
	cbz	w21, LBB9_499
; %bb.465:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp223:
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	mov	x0, x20
	bl	__Znwm
Ltmp224:
; %bb.466:                              ;   in Loop: Header=BB9_67 Depth=2
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	add	x19, x0, x8, lsl #2
	stur	x0, [x29, #-176]
	stur	x19, [x29, #-160]
	str	x0, [sp, #96]                   ; 8-byte Folded Spill
	mov	x1, x20
	bl	_bzero
	stur	x19, [x29, #-168]
	ldr	x5, [sp, #296]                  ; 8-byte Folded Reload
	cmp	w27, #1
	b.lt	LBB9_499
; %bb.467:                              ;   in Loop: Header=BB9_67 Depth=2
	mov	x9, #0                          ; =0x0
	ldur	x10, [x29, #-240]
	mul	x8, x24, x5
	str	x8, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #424]
	lsl	x11, x5, #2
	stp	x8, x11, [sp, #168]             ; 16-byte Folded Spill
	add	x8, x8, #32
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	add	x11, x8, #32
	stp	x11, xzr, [sp, #136]            ; 16-byte Folded Spill
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	b	LBB9_469
LBB9_468:                               ;   in Loop: Header=BB9_469 Depth=3
	ldp	x9, x8, [sp, #136]              ; 16-byte Folded Reload
	add	x11, x8, #1
	ldr	x8, [sp, #272]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	stp	x9, x11, [sp, #136]             ; 16-byte Folded Spill
	ldr	x9, [sp, #128]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #128]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #240]                  ; 8-byte Folded Reload
	add	x9, x9, x5
	cmp	w21, w9
	b.le	LBB9_499
LBB9_469:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ; =>    This Loop Header: Depth=3
                                        ;         Child Loop BB9_472 Depth 4
                                        ;           Child Loop BB9_485 Depth 5
                                        ;             Child Loop BB9_488 Depth 6
                                        ;               Child Loop BB9_490 Depth 7
                                        ;                 Child Loop BB9_491 Depth 8
                                        ;               Child Loop BB9_494 Depth 7
                                        ;                 Child Loop BB9_495 Depth 8
                                        ;                 Child Loop BB9_498 Depth 8
                                        ;           Child Loop BB9_476 Depth 5
                                        ;             Child Loop BB9_478 Depth 6
                                        ;               Child Loop BB9_479 Depth 7
                                        ;                 Child Loop BB9_480 Depth 8
	add	w8, w22, w9
	cmp	w8, w27
	csel	w8, w8, w27, lt
	str	x9, [sp, #240]                  ; 8-byte Folded Spill
	cmp	w8, w9
	b.le	LBB9_468
; %bb.470:                              ;   in Loop: Header=BB9_469 Depth=3
	mov	x12, #0                         ; =0x0
	mov	x0, #0                          ; =0x0
	sxtw	x1, w8
	ldr	x8, [sp, #96]                   ; 8-byte Folded Reload
	ldr	x9, [sp, #144]                  ; 8-byte Folded Reload
	ldr	x11, [sp, #272]                 ; 8-byte Folded Reload
	madd	x8, x11, x9, x8
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	add	x8, x8, #4
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #168]                  ; 8-byte Folded Reload
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	ldp	x9, x8, [sp, #128]              ; 16-byte Folded Reload
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	str	x8, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	b	LBB9_472
LBB9_471:                               ;   in Loop: Header=BB9_472 Depth=4
	ldp	x9, x12, [sp, #184]             ; 16-byte Folded Reload
	add	x12, x12, #1
	ldr	x8, [sp, #176]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #184]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #232]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x9, [sp, #200]                  ; 8-byte Folded Reload
	add	x9, x9, x8
	str	x9, [sp, #200]                  ; 8-byte Folded Spill
	add	x0, x0, x5
	cmp	w21, w0
	ldr	x27, [sp, #304]                 ; 8-byte Folded Reload
	ldr	x22, [sp, #288]                 ; 8-byte Folded Reload
	b.le	LBB9_468
LBB9_472:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ; =>      This Loop Header: Depth=4
                                        ;           Child Loop BB9_485 Depth 5
                                        ;             Child Loop BB9_488 Depth 6
                                        ;               Child Loop BB9_490 Depth 7
                                        ;                 Child Loop BB9_491 Depth 8
                                        ;               Child Loop BB9_494 Depth 7
                                        ;                 Child Loop BB9_495 Depth 8
                                        ;                 Child Loop BB9_498 Depth 8
                                        ;           Child Loop BB9_476 Depth 5
                                        ;             Child Loop BB9_478 Depth 6
                                        ;               Child Loop BB9_479 Depth 7
                                        ;                 Child Loop BB9_480 Depth 8
	str	x12, [sp, #192]                 ; 8-byte Folded Spill
	add	w8, w22, w0
	cmp	w8, w27
	csel	w8, w8, w27, lt
	cmp	w8, w0
	b.le	LBB9_471
; %bb.473:                              ;   in Loop: Header=BB9_472 Depth=4
	ldr	x9, [sp, #288]                  ; 8-byte Folded Reload
	ldr	x12, [sp, #192]                 ; 8-byte Folded Reload
	madd	w9, w9, w12, w9
	ldr	x11, [sp, #304]                 ; 8-byte Folded Reload
	cmp	w11, w9
	csel	w9, w11, w9, lt
	sxtw	x9, w9
	add	x11, x0, #1
	cmp	x9, x11
	csinc	x9, x9, x0, gt
	mul	x11, x12, x5
	sub	x22, x9, x11
	sxtw	x30, w8
	cmp	x22, #16
	b.hs	LBB9_483
; %bb.474:                              ;   in Loop: Header=BB9_472 Depth=4
	mov	x9, #0                          ; =0x0
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	b	LBB9_476
LBB9_475:                               ;   in Loop: Header=BB9_476 Depth=5
	ldr	x9, [sp, #272]                  ; 8-byte Folded Reload
	add	x8, x8, x9
	mov	x9, x11
	cmp	w21, w11
	b.le	LBB9_471
LBB9_476:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_478 Depth 6
                                        ;               Child Loop BB9_479 Depth 7
                                        ;                 Child Loop BB9_480 Depth 8
	add	x11, x9, x5
	ldr	x4, [sp, #304]                  ; 8-byte Folded Reload
	cmp	w11, w4
	csel	w12, w11, w4, lt
	cmp	w12, w9
	b.le	LBB9_475
; %bb.477:                              ;   in Loop: Header=BB9_476 Depth=5
	sxtw	x12, w12
	ldp	x14, x13, [sp, #240]            ; 16-byte Folded Reload
LBB9_478:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_476 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_479 Depth 7
                                        ;                 Child Loop BB9_480 Depth 8
	mul	x15, x14, x4
	add	x15, x10, x15, lsl #2
	mov	x16, x8
	mov	x17, x9
LBB9_479:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_476 Depth=5
                                        ;             Parent Loop BB9_478 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_480 Depth 8
	mov	x2, #0                          ; =0x0
	ldr	s0, [x15, x17, lsl #2]
LBB9_480:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_476 Depth=5
                                        ;             Parent Loop BB9_478 Depth=6
                                        ;               Parent Loop BB9_479 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x16, x2, lsl #2]
	ldr	s2, [x13, x2, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x13, x2, lsl #2]
	add	x2, x2, #1
	add	x3, x0, x2
	cmp	x3, x30
	b.lt	LBB9_480
; %bb.481:                              ;   in Loop: Header=BB9_479 Depth=7
	add	x17, x17, #1
	add	x16, x16, x24
	cmp	x17, x12
	b.lt	LBB9_479
; %bb.482:                              ;   in Loop: Header=BB9_478 Depth=6
	add	x14, x14, #1
	add	x13, x13, x24
	cmp	x14, x1
	b.lt	LBB9_478
	b	LBB9_475
LBB9_483:                               ;   in Loop: Header=BB9_472 Depth=4
	mov	x16, #0                         ; =0x0
	mov	x13, #0                         ; =0x0
	mvn	x8, x11
	add	x8, x9, x8
	lsl	x8, x8, #2
	ldp	x15, x9, [sp, #168]             ; 16-byte Folded Reload
	mul	x9, x9, x12
	add	x11, x15, x9
	str	x11, [sp, #224]                 ; 8-byte Folded Spill
	add	x11, x11, x8
	add	x11, x11, #4
	str	x11, [sp, #216]                 ; 8-byte Folded Spill
	ldr	x11, [sp, #160]                 ; 8-byte Folded Reload
	add	x23, x11, x9
	ldr	x11, [sp, #152]                 ; 8-byte Folded Reload
	add	x9, x11, x9
	add	x14, x9, x8
	and	x27, x22, #0xfffffffffffffff0
	add	x3, x0, x27
	lsr	x8, x22, #4
	ldr	x9, [sp, #248]                  ; 8-byte Folded Reload
	add	x8, x9, x8, lsl #6
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	ldr	x4, [sp, #200]                  ; 8-byte Folded Reload
	ldr	x26, [sp, #184]                 ; 8-byte Folded Reload
	b	LBB9_485
LBB9_484:                               ;   in Loop: Header=BB9_485 Depth=5
	ldp	x16, x8, [sp, #264]             ; 16-byte Folded Reload
	add	x16, x16, #1
	add	x26, x26, x8
	add	x15, x15, x8
	add	x4, x4, x8
	ldr	x8, [sp, #256]                  ; 8-byte Folded Reload
	mov	x13, x8
	ldr	x21, [sp, #280]                 ; 8-byte Folded Reload
	cmp	w21, w8
	ldr	x5, [sp, #296]                  ; 8-byte Folded Reload
	b.le	LBB9_471
LBB9_485:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ; =>        This Loop Header: Depth=5
                                        ;             Child Loop BB9_488 Depth 6
                                        ;               Child Loop BB9_490 Depth 7
                                        ;                 Child Loop BB9_491 Depth 8
                                        ;               Child Loop BB9_494 Depth 7
                                        ;                 Child Loop BB9_495 Depth 8
                                        ;                 Child Loop BB9_498 Depth 8
	ldr	x8, [sp, #288]                  ; 8-byte Folded Reload
	madd	w8, w8, w16, w8
	cmp	w21, w8
	csel	w8, w21, w8, lt
	sxtw	x8, w8
	add	x9, x13, #1
	cmp	x8, x9
	csinc	x8, x8, x13, gt
	add	x11, x13, x5
	ldr	x9, [sp, #304]                  ; 8-byte Folded Reload
	cmp	w11, w9
	stp	x11, x16, [sp, #256]            ; 16-byte Folded Spill
	csel	w9, w11, w9, lt
	cmp	w9, w13
	b.le	LBB9_484
; %bb.486:                              ;   in Loop: Header=BB9_485 Depth=5
	mov	x16, #0                         ; =0x0
	ldp	x2, x11, [sp, #264]             ; 16-byte Folded Reload
	mul	x11, x11, x2
	ldp	x17, x12, [sp, #216]            ; 16-byte Folded Reload
	add	x12, x12, x11
	add	x11, x17, x11
	ldr	x17, [sp, #296]                 ; 8-byte Folded Reload
	mul	x17, x2, x17
	mvn	x17, x17
	add	x8, x8, x17
	madd	x19, x24, x8, x11
	sxtw	x2, w9
	ldp	x9, x5, [sp, #240]              ; 16-byte Folded Reload
	ldr	x25, [sp, #208]                 ; 8-byte Folded Reload
	ldr	x11, [sp, #232]                 ; 8-byte Folded Reload
	b	LBB9_488
LBB9_487:                               ;   in Loop: Header=BB9_488 Depth=6
	add	x9, x9, #1
	add	x16, x16, #1
	add	x11, x11, x24
	add	x25, x25, x24
	add	x5, x5, x24
	cmp	x9, x1
	b.ge	LBB9_484
LBB9_488:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_485 Depth=5
                                        ; =>          This Loop Header: Depth=6
                                        ;               Child Loop BB9_490 Depth 7
                                        ;                 Child Loop BB9_491 Depth 8
                                        ;               Child Loop BB9_494 Depth 7
                                        ;                 Child Loop BB9_495 Depth 8
                                        ;                 Child Loop BB9_498 Depth 8
	mul	x8, x24, x16
	add	x17, x14, x8
	ldr	x6, [sp, #304]                  ; 8-byte Folded Reload
	mul	x6, x9, x6
	add	x21, x10, x6, lsl #2
	add	x8, x23, x8
	cmp	x8, x19
	ccmp	x12, x17, #2, lo
	mov	x28, x15
	mov	x17, x26
	mov	x8, x13
	b.hs	LBB9_494
; %bb.489:                              ;   in Loop: Header=BB9_488 Depth=6
	mov	x8, x4
	mov	x17, x13
LBB9_490:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_485 Depth=5
                                        ;             Parent Loop BB9_488 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_491 Depth 8
	mov	x6, #0                          ; =0x0
	ldr	s0, [x21, x17, lsl #2]
LBB9_491:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_485 Depth=5
                                        ;             Parent Loop BB9_488 Depth=6
                                        ;               Parent Loop BB9_490 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x8, x6, lsl #2]
	ldr	s2, [x5, x6, lsl #2]
	fmadd	s1, s0, s1, s2
	str	s1, [x5, x6, lsl #2]
	add	x6, x6, #1
	add	x7, x0, x6
	cmp	x7, x30
	b.lt	LBB9_491
; %bb.492:                              ;   in Loop: Header=BB9_490 Depth=7
	add	x17, x17, #1
	add	x8, x8, x24
	cmp	x17, x2
	b.lt	LBB9_490
	b	LBB9_487
LBB9_493:                               ;   in Loop: Header=BB9_494 Depth=7
	add	x8, x8, #1
	add	x17, x17, x24
	add	x28, x28, x24
	cmp	x8, x2
	b.ge	LBB9_487
LBB9_494:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_485 Depth=5
                                        ;             Parent Loop BB9_488 Depth=6
                                        ; =>            This Loop Header: Depth=7
                                        ;                 Child Loop BB9_495 Depth 8
                                        ;                 Child Loop BB9_498 Depth 8
	ldr	s0, [x21, x8, lsl #2]
	dup.4s	v1, v0[0]
	mov	x6, x11
	mov	x7, x17
	mov	x20, x27
LBB9_495:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_485 Depth=5
                                        ;             Parent Loop BB9_488 Depth=6
                                        ;               Parent Loop BB9_494 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldp	q2, q3, [x7, #-32]
	ldp	q4, q5, [x7], #64
	ldp	q6, q7, [x6, #-32]
	ldp	q16, q17, [x6]
	fmla.4s	v6, v2, v1
	fmla.4s	v7, v3, v1
	fmla.4s	v16, v4, v1
	fmla.4s	v17, v5, v1
	stp	q6, q7, [x6, #-32]
	stp	q16, q17, [x6], #64
	subs	x20, x20, #16
	b.ne	LBB9_495
; %bb.496:                              ;   in Loop: Header=BB9_494 Depth=7
	cmp	x22, x27
	b.eq	LBB9_493
; %bb.497:                              ;   in Loop: Header=BB9_494 Depth=7
	mov	x6, x25
	mov	x7, x3
LBB9_498:                               ;   Parent Loop BB9_2 Depth=1
                                        ;     Parent Loop BB9_67 Depth=2
                                        ;       Parent Loop BB9_469 Depth=3
                                        ;         Parent Loop BB9_472 Depth=4
                                        ;           Parent Loop BB9_485 Depth=5
                                        ;             Parent Loop BB9_488 Depth=6
                                        ;               Parent Loop BB9_494 Depth=7
                                        ; =>              This Inner Loop Header: Depth=8
	ldr	s1, [x28, x7, lsl #2]
	ldr	s2, [x6]
	fmadd	s1, s0, s1, s2
	str	s1, [x6], #4
	add	x7, x7, #1
	cmp	x7, x30
	b.lt	LBB9_498
	b	LBB9_493
LBB9_499:                               ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZNSt3__16chrono12steady_clock3nowEv
	mov	x22, x0
	ldp	x0, x8, [x29, #-176]
	sub	x8, x8, x0
	asr	x8, x8, #1
	and	x8, x8, #0xfffffffffffffffc
	ldr	s0, [x0, x8]
	str	s0, [sp, #312]
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	cbz	x0, LBB9_501
; %bb.500:                              ;   in Loop: Header=BB9_67 Depth=2
	bl	__ZdlPv
LBB9_501:                               ;   in Loop: Header=BB9_67 Depth=2
Lloh64:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh65:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	mov	w11, #-177                      ; =0xffffff4f
	and	w10, w10, w11
	orr	w10, w10, #0x20
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #52                         ; =0x34
	str	x9, [x8, #24]
	ldrb	w8, [sp, #391]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #368]
	cmp	w9, #0
	add	x9, sp, #368
	csel	x1, x10, x9, lt
	csel	x2, x11, x8, lt
Ltmp226:
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp227:
; %bb.502:                              ;   in Loop: Header=BB9_67 Depth=2
	ldp	x9, x8, [sp, #72]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d0, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d13, x8
	fdiv	d0, d0, d13
	fadd	d0, d0, d10
	ldp	x9, x8, [sp, #56]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	ldp	x9, x8, [sp, #40]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	ldp	x9, x8, [sp, #24]               ; 16-byte Folded Reload
	sub	x8, x9, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	ldr	x8, [sp, #16]                   ; 8-byte Folded Reload
	sub	x8, x22, x8
	scvtf	d1, x8
	fdiv	d1, d1, d13
	fadd	d0, d0, d1
	fdiv	d9, d0, d11
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xffffffcf
	orr	w10, w10, #0x80
	str	w10, [x9, #8]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	mov	w10, #12                        ; =0xc
	str	x10, [x9, #24]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	ldr	w10, [x9, #8]
	and	w10, w10, #0xfffffeff
	orr	w10, w10, #0x4
	str	w10, [x9, #8]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #3                          ; =0x3
	str	x9, [x8, #16]
Ltmp228:
	fmov	d0, d9
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp229:
; %bb.503:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp230:
Lloh66:
	adrp	x1, l_.str.3@PAGE
Lloh67:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #3                          ; =0x3
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp231:
; %bb.504:                              ;   in Loop: Header=BB9_67 Depth=2
	fmul	d0, d9, d13
	fdiv	d0, d12, d0
	ldr	x8, [x0]
	ldur	x9, [x8, #-24]
	add	x9, x0, x9
	mov	w10, #12                        ; =0xc
	str	x10, [x9, #24]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	mov	w9, #2                          ; =0x2
	str	x9, [x8, #16]
Ltmp232:
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEd
Ltmp233:
; %bb.505:                              ;   in Loop: Header=BB9_67 Depth=2
Ltmp234:
Lloh68:
	adrp	x1, l_.str.4@PAGE
Lloh69:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #9                          ; =0x9
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp235:
; %bb.506:                              ;   in Loop: Header=BB9_67 Depth=2
	ldrsb	w8, [sp, #391]
	tbnz	w8, #31, LBB9_65
; %bb.507:                              ;   in Loop: Header=BB9_67 Depth=2
	ldursb	w8, [x29, #-185]
	ldr	x19, [sp, #8]                   ; 8-byte Folded Reload
	ldr	x20, [sp, #112]                 ; 8-byte Folded Reload
	tbz	w8, #31, LBB9_66
LBB9_508:                               ;   in Loop: Header=BB9_67 Depth=2
	ldur	x0, [x29, #-208]
	bl	__ZdlPv
	add	x19, x19, #4
	cmp	x19, #24
	b.ne	LBB9_67
LBB9_509:                               ;   in Loop: Header=BB9_2 Depth=1
Ltmp237:
Lloh70:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh71:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh72:
	adrp	x1, l_.str.13@PAGE
Lloh73:
	add	x1, x1, l_.str.13@PAGEOFF
	mov	w2, #35                         ; =0x23
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp238:
; %bb.510:                              ;   in Loop: Header=BB9_2 Depth=1
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x8, x0, x8
	ldr	w9, [x8, #8]
	and	w9, w9, #0xfffffffb
	orr	w9, w9, #0x100
	str	w9, [x8, #8]
Ltmp239:
	fmov	s0, s8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEf
Ltmp240:
; %bb.511:                              ;   in Loop: Header=BB9_2 Depth=1
	mov	w8, #10                         ; =0xa
	sturb	w8, [x29, #-176]
Ltmp241:
	sub	x1, x29, #176
	mov	w2, #1                          ; =0x1
	bl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp242:
; %bb.512:                              ;   in Loop: Header=BB9_2 Depth=1
	ldr	x0, [sp, #400]
	cbz	x0, LBB9_514
; %bb.513:                              ;   in Loop: Header=BB9_2 Depth=1
	str	x0, [sp, #408]
	bl	__ZdlPv
LBB9_514:                               ;   in Loop: Header=BB9_2 Depth=1
	ldr	x0, [sp, #424]
	cbz	x0, LBB9_516
; %bb.515:                              ;   in Loop: Header=BB9_2 Depth=1
	str	x0, [sp, #432]
	bl	__ZdlPv
LBB9_516:                               ;   in Loop: Header=BB9_2 Depth=1
	ldur	x0, [x29, #-240]
	cbz	x0, LBB9_1
; %bb.517:                              ;   in Loop: Header=BB9_2 Depth=1
	stur	x0, [x29, #-232]
	bl	__ZdlPv
	b	LBB9_1
LBB9_518:
	ldur	x8, [x29, #-144]
Lloh74:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh75:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh76:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB9_520
; %bb.519:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #560
	ldp	x29, x30, [sp, #128]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #112]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #96]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #80]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #64]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #144            ; 16-byte Folded Reload
	ret
LBB9_520:
	bl	___stack_chk_fail
LBB9_521:
Ltmp76:
	b	LBB9_568
LBB9_522:
Ltmp73:
	b	LBB9_571
LBB9_523:
Ltmp70:
	mov	x20, x0
	ldr	x0, [sp, #424]
	cbz	x0, LBB9_589
	b	LBB9_592
LBB9_524:
Ltmp67:
	mov	x20, x0
	ldur	x0, [x29, #-240]
	cbz	x0, LBB9_590
	b	LBB9_593
LBB9_525:
Ltmp64:
	bl	__Unwind_Resume
LBB9_526:
Ltmp118:
	b	LBB9_528
LBB9_527:
Ltmp102:
LBB9_528:
	mov	x20, x0
	b	LBB9_533
LBB9_529:
Ltmp115:
	b	LBB9_531
LBB9_530:
Ltmp99:
LBB9_531:
	mov	x20, x0
	ldur	x0, [x29, #-176]
	cbz	x0, LBB9_533
; %bb.532:
	stur	x0, [x29, #-168]
	bl	__ZdlPv
LBB9_533:
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_587
; %bb.534:
	ldr	x0, [sp, #368]
	b	LBB9_586
LBB9_535:
Ltmp243:
	b	LBB9_571
LBB9_536:
Ltmp225:
	b	LBB9_544
LBB9_537:
Ltmp222:
	b	LBB9_544
LBB9_538:
Ltmp219:
	b	LBB9_544
LBB9_539:
Ltmp216:
	b	LBB9_548
LBB9_540:
Ltmp210:
	b	LBB9_574
LBB9_541:
Ltmp193:
	b	LBB9_544
LBB9_542:
Ltmp190:
	b	LBB9_544
LBB9_543:
Ltmp187:
LBB9_544:
	mov	x20, x0
	ldr	x23, [sp, #120]                 ; 8-byte Folded Reload
	cbnz	x23, LBB9_556
; %bb.545:
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_575
LBB9_546:
	ldr	x0, [sp, #368]
	bl	__ZdlPv
	ldursb	w8, [x29, #-185]
	tbz	w8, #31, LBB9_587
	b	LBB9_576
LBB9_547:
Ltmp184:
LBB9_548:
	mov	x20, x0
	ldr	x23, [sp, #120]                 ; 8-byte Folded Reload
	b	LBB9_556
LBB9_549:
Ltmp178:
	b	LBB9_574
LBB9_550:
Ltmp166:
	b	LBB9_562
LBB9_551:
Ltmp160:
	b	LBB9_571
LBB9_552:
Ltmp213:
	b	LBB9_555
LBB9_553:
Ltmp207:
	mov	x20, x0
	ldursb	w8, [x29, #-185]
	tbnz	w8, #31, LBB9_576
	b	LBB9_587
LBB9_554:
Ltmp181:
LBB9_555:
	mov	x20, x0
LBB9_556:
	mov	x0, x23
	bl	__ZdlPv
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_575
	b	LBB9_546
LBB9_557:
Ltmp175:
	mov	x20, x0
	ldursb	w8, [x29, #-185]
	tbnz	w8, #31, LBB9_576
	b	LBB9_587
LBB9_558:
Ltmp172:
	b	LBB9_571
LBB9_559:
Ltmp169:
	mov	x20, x0
	cbz	x23, LBB9_563
; %bb.560:
	mov	x0, x23
	bl	__ZdlPv
	b	LBB9_563
LBB9_561:
Ltmp163:
LBB9_562:
	mov	x20, x0
LBB9_563:
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	cbnz	x0, LBB9_586
	b	LBB9_587
LBB9_564:
Ltmp133:
	mov	x20, x0
	ldrsb	w8, [sp, #359]
	tbz	w8, #31, LBB9_580
	b	LBB9_584
LBB9_565:
Ltmp130:
	mov	x20, x0
	ldrsb	w8, [sp, #335]
	tbnz	w8, #31, LBB9_585
	b	LBB9_587
LBB9_566:
Ltmp127:
	b	LBB9_571
LBB9_567:
Ltmp124:
LBB9_568:
	mov	x20, x0
	ldur	x0, [x29, #-176]
	cbz	x0, LBB9_587
; %bb.569:
	stur	x0, [x29, #-168]
	b	LBB9_586
LBB9_570:
Ltmp121:
LBB9_571:
	mov	x20, x0
	b	LBB9_587
LBB9_572:
Ltmp236:
	b	LBB9_574
LBB9_573:
Ltmp204:
LBB9_574:
	mov	x20, x0
	ldrsb	w8, [sp, #391]
	tbnz	w8, #31, LBB9_546
LBB9_575:
	ldursb	w8, [x29, #-185]
	tbz	w8, #31, LBB9_587
LBB9_576:
	ldur	x0, [x29, #-208]
	b	LBB9_586
LBB9_577:
Ltmp146:
	mov	x20, x0
	ldur	x0, [x29, #-176]
	cbnz	x0, LBB9_581
; %bb.578:
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_583
LBB9_579:
	ldr	x0, [sp, #368]
	bl	__ZdlPv
	ldrsb	w8, [sp, #359]
	tbnz	w8, #31, LBB9_584
LBB9_580:
	ldrsb	w8, [sp, #335]
	tbz	w8, #31, LBB9_587
	b	LBB9_585
LBB9_581:
	stur	x0, [x29, #-168]
	bl	__ZdlPv
	ldrsb	w8, [sp, #391]
	tbz	w8, #31, LBB9_583
	b	LBB9_579
LBB9_582:
Ltmp157:
	mov	x20, x0
	ldrsb	w8, [sp, #391]
	tbnz	w8, #31, LBB9_579
LBB9_583:
	ldrsb	w8, [sp, #359]
	tbz	w8, #31, LBB9_580
LBB9_584:
	ldr	x0, [sp, #336]
	bl	__ZdlPv
	ldrsb	w8, [sp, #335]
	tbz	w8, #31, LBB9_587
LBB9_585:
	ldr	x0, [sp, #312]
LBB9_586:
	bl	__ZdlPv
LBB9_587:
	ldr	x0, [sp, #400]
	cbnz	x0, LBB9_591
; %bb.588:
	ldr	x0, [sp, #424]
	cbnz	x0, LBB9_592
LBB9_589:
	ldur	x0, [x29, #-240]
	cbnz	x0, LBB9_593
LBB9_590:
	mov	x0, x20
	bl	__Unwind_Resume
LBB9_591:
	str	x0, [sp, #408]
	bl	__ZdlPv
	ldr	x0, [sp, #424]
	cbz	x0, LBB9_589
LBB9_592:
	str	x0, [sp, #432]
	bl	__ZdlPv
	ldur	x0, [x29, #-240]
	cbz	x0, LBB9_590
LBB9_593:
	stur	x0, [x29, #-232]
	bl	__ZdlPv
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh26, Lloh27, Lloh28
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAddLdr	Lloh37, Lloh38, Lloh39
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh44, Lloh45
	.loh AdrpLdrGot	Lloh46, Lloh47
	.loh AdrpAdd	Lloh48, Lloh49
	.loh AdrpAdd	Lloh50, Lloh51
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpLdrGot	Lloh56, Lloh57
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpLdrGot	Lloh64, Lloh65
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh68, Lloh69
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpLdrGot	Lloh70, Lloh71
	.loh AdrpLdrGotLdr	Lloh74, Lloh75, Lloh76
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table9:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp62-Lfunc_begin7            ; >> Call Site 1 <<
	.uleb128 Ltmp63-Ltmp62                  ;   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin7            ;     jumps to Ltmp64
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin7            ; >> Call Site 2 <<
	.uleb128 Ltmp66-Ltmp65                  ;   Call between Ltmp65 and Ltmp66
	.uleb128 Ltmp67-Lfunc_begin7            ;     jumps to Ltmp67
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp68-Lfunc_begin7            ; >> Call Site 3 <<
	.uleb128 Ltmp69-Ltmp68                  ;   Call between Ltmp68 and Ltmp69
	.uleb128 Ltmp70-Lfunc_begin7            ;     jumps to Ltmp70
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp71-Lfunc_begin7            ; >> Call Site 4 <<
	.uleb128 Ltmp72-Ltmp71                  ;   Call between Ltmp71 and Ltmp72
	.uleb128 Ltmp73-Lfunc_begin7            ;     jumps to Ltmp73
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp74-Lfunc_begin7            ; >> Call Site 5 <<
	.uleb128 Ltmp75-Ltmp74                  ;   Call between Ltmp74 and Ltmp75
	.uleb128 Ltmp76-Lfunc_begin7            ;     jumps to Ltmp76
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin7            ; >> Call Site 6 <<
	.uleb128 Ltmp86-Ltmp77                  ;   Call between Ltmp77 and Ltmp86
	.uleb128 Ltmp243-Lfunc_begin7           ;     jumps to Ltmp243
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp87-Lfunc_begin7            ; >> Call Site 7 <<
	.uleb128 Ltmp88-Ltmp87                  ;   Call between Ltmp87 and Ltmp88
	.uleb128 Ltmp102-Lfunc_begin7           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp89-Lfunc_begin7            ; >> Call Site 8 <<
	.uleb128 Ltmp98-Ltmp89                  ;   Call between Ltmp89 and Ltmp98
	.uleb128 Ltmp99-Lfunc_begin7            ;     jumps to Ltmp99
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp100-Lfunc_begin7           ; >> Call Site 9 <<
	.uleb128 Ltmp101-Ltmp100                ;   Call between Ltmp100 and Ltmp101
	.uleb128 Ltmp102-Lfunc_begin7           ;     jumps to Ltmp102
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp103-Lfunc_begin7           ; >> Call Site 10 <<
	.uleb128 Ltmp104-Ltmp103                ;   Call between Ltmp103 and Ltmp104
	.uleb128 Ltmp118-Lfunc_begin7           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp105-Lfunc_begin7           ; >> Call Site 11 <<
	.uleb128 Ltmp114-Ltmp105                ;   Call between Ltmp105 and Ltmp114
	.uleb128 Ltmp115-Lfunc_begin7           ;     jumps to Ltmp115
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp116-Lfunc_begin7           ; >> Call Site 12 <<
	.uleb128 Ltmp117-Ltmp116                ;   Call between Ltmp116 and Ltmp117
	.uleb128 Ltmp118-Lfunc_begin7           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin7           ; >> Call Site 13 <<
	.uleb128 Ltmp120-Ltmp119                ;   Call between Ltmp119 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin7           ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin7           ; >> Call Site 14 <<
	.uleb128 Ltmp123-Ltmp122                ;   Call between Ltmp122 and Ltmp123
	.uleb128 Ltmp124-Lfunc_begin7           ;     jumps to Ltmp124
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin7           ; >> Call Site 15 <<
	.uleb128 Ltmp126-Ltmp125                ;   Call between Ltmp125 and Ltmp126
	.uleb128 Ltmp127-Lfunc_begin7           ;     jumps to Ltmp127
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp128-Lfunc_begin7           ; >> Call Site 16 <<
	.uleb128 Ltmp129-Ltmp128                ;   Call between Ltmp128 and Ltmp129
	.uleb128 Ltmp130-Lfunc_begin7           ;     jumps to Ltmp130
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp131-Lfunc_begin7           ; >> Call Site 17 <<
	.uleb128 Ltmp132-Ltmp131                ;   Call between Ltmp131 and Ltmp132
	.uleb128 Ltmp133-Lfunc_begin7           ;     jumps to Ltmp133
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin7           ; >> Call Site 18 <<
	.uleb128 Ltmp135-Ltmp134                ;   Call between Ltmp134 and Ltmp135
	.uleb128 Ltmp157-Lfunc_begin7           ;     jumps to Ltmp157
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp136-Lfunc_begin7           ; >> Call Site 19 <<
	.uleb128 Ltmp145-Ltmp136                ;   Call between Ltmp136 and Ltmp145
	.uleb128 Ltmp146-Lfunc_begin7           ;     jumps to Ltmp146
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin7           ; >> Call Site 20 <<
	.uleb128 Ltmp156-Ltmp147                ;   Call between Ltmp147 and Ltmp156
	.uleb128 Ltmp157-Lfunc_begin7           ;     jumps to Ltmp157
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp158-Lfunc_begin7           ; >> Call Site 21 <<
	.uleb128 Ltmp159-Ltmp158                ;   Call between Ltmp158 and Ltmp159
	.uleb128 Ltmp160-Lfunc_begin7           ;     jumps to Ltmp160
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp159-Lfunc_begin7           ; >> Call Site 22 <<
	.uleb128 Ltmp161-Ltmp159                ;   Call between Ltmp159 and Ltmp161
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp161-Lfunc_begin7           ; >> Call Site 23 <<
	.uleb128 Ltmp162-Ltmp161                ;   Call between Ltmp161 and Ltmp162
	.uleb128 Ltmp163-Lfunc_begin7           ;     jumps to Ltmp163
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp164-Lfunc_begin7           ; >> Call Site 24 <<
	.uleb128 Ltmp165-Ltmp164                ;   Call between Ltmp164 and Ltmp165
	.uleb128 Ltmp166-Lfunc_begin7           ;     jumps to Ltmp166
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin7           ; >> Call Site 25 <<
	.uleb128 Ltmp167-Ltmp165                ;   Call between Ltmp165 and Ltmp167
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp167-Lfunc_begin7           ; >> Call Site 26 <<
	.uleb128 Ltmp168-Ltmp167                ;   Call between Ltmp167 and Ltmp168
	.uleb128 Ltmp169-Lfunc_begin7           ;     jumps to Ltmp169
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp170-Lfunc_begin7           ; >> Call Site 27 <<
	.uleb128 Ltmp171-Ltmp170                ;   Call between Ltmp170 and Ltmp171
	.uleb128 Ltmp172-Lfunc_begin7           ;     jumps to Ltmp172
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp173-Lfunc_begin7           ; >> Call Site 28 <<
	.uleb128 Ltmp174-Ltmp173                ;   Call between Ltmp173 and Ltmp174
	.uleb128 Ltmp175-Lfunc_begin7           ;     jumps to Ltmp175
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp176-Lfunc_begin7           ; >> Call Site 29 <<
	.uleb128 Ltmp177-Ltmp176                ;   Call between Ltmp176 and Ltmp177
	.uleb128 Ltmp178-Lfunc_begin7           ;     jumps to Ltmp178
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp177-Lfunc_begin7           ; >> Call Site 30 <<
	.uleb128 Ltmp179-Ltmp177                ;   Call between Ltmp177 and Ltmp179
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp179-Lfunc_begin7           ; >> Call Site 31 <<
	.uleb128 Ltmp180-Ltmp179                ;   Call between Ltmp179 and Ltmp180
	.uleb128 Ltmp181-Lfunc_begin7           ;     jumps to Ltmp181
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp182-Lfunc_begin7           ; >> Call Site 32 <<
	.uleb128 Ltmp183-Ltmp182                ;   Call between Ltmp182 and Ltmp183
	.uleb128 Ltmp184-Lfunc_begin7           ;     jumps to Ltmp184
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp183-Lfunc_begin7           ; >> Call Site 33 <<
	.uleb128 Ltmp185-Ltmp183                ;   Call between Ltmp183 and Ltmp185
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp185-Lfunc_begin7           ; >> Call Site 34 <<
	.uleb128 Ltmp186-Ltmp185                ;   Call between Ltmp185 and Ltmp186
	.uleb128 Ltmp187-Lfunc_begin7           ;     jumps to Ltmp187
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp186-Lfunc_begin7           ; >> Call Site 35 <<
	.uleb128 Ltmp188-Ltmp186                ;   Call between Ltmp186 and Ltmp188
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp188-Lfunc_begin7           ; >> Call Site 36 <<
	.uleb128 Ltmp189-Ltmp188                ;   Call between Ltmp188 and Ltmp189
	.uleb128 Ltmp190-Lfunc_begin7           ;     jumps to Ltmp190
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp189-Lfunc_begin7           ; >> Call Site 37 <<
	.uleb128 Ltmp191-Ltmp189                ;   Call between Ltmp189 and Ltmp191
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp191-Lfunc_begin7           ; >> Call Site 38 <<
	.uleb128 Ltmp192-Ltmp191                ;   Call between Ltmp191 and Ltmp192
	.uleb128 Ltmp193-Lfunc_begin7           ;     jumps to Ltmp193
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp192-Lfunc_begin7           ; >> Call Site 39 <<
	.uleb128 Ltmp194-Ltmp192                ;   Call between Ltmp192 and Ltmp194
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp194-Lfunc_begin7           ; >> Call Site 40 <<
	.uleb128 Ltmp203-Ltmp194                ;   Call between Ltmp194 and Ltmp203
	.uleb128 Ltmp204-Lfunc_begin7           ;     jumps to Ltmp204
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp205-Lfunc_begin7           ; >> Call Site 41 <<
	.uleb128 Ltmp206-Ltmp205                ;   Call between Ltmp205 and Ltmp206
	.uleb128 Ltmp207-Lfunc_begin7           ;     jumps to Ltmp207
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp208-Lfunc_begin7           ; >> Call Site 42 <<
	.uleb128 Ltmp209-Ltmp208                ;   Call between Ltmp208 and Ltmp209
	.uleb128 Ltmp210-Lfunc_begin7           ;     jumps to Ltmp210
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp209-Lfunc_begin7           ; >> Call Site 43 <<
	.uleb128 Ltmp211-Ltmp209                ;   Call between Ltmp209 and Ltmp211
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp211-Lfunc_begin7           ; >> Call Site 44 <<
	.uleb128 Ltmp212-Ltmp211                ;   Call between Ltmp211 and Ltmp212
	.uleb128 Ltmp213-Lfunc_begin7           ;     jumps to Ltmp213
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp214-Lfunc_begin7           ; >> Call Site 45 <<
	.uleb128 Ltmp215-Ltmp214                ;   Call between Ltmp214 and Ltmp215
	.uleb128 Ltmp216-Lfunc_begin7           ;     jumps to Ltmp216
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp215-Lfunc_begin7           ; >> Call Site 46 <<
	.uleb128 Ltmp217-Ltmp215                ;   Call between Ltmp215 and Ltmp217
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp217-Lfunc_begin7           ; >> Call Site 47 <<
	.uleb128 Ltmp218-Ltmp217                ;   Call between Ltmp217 and Ltmp218
	.uleb128 Ltmp219-Lfunc_begin7           ;     jumps to Ltmp219
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp218-Lfunc_begin7           ; >> Call Site 48 <<
	.uleb128 Ltmp220-Ltmp218                ;   Call between Ltmp218 and Ltmp220
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp220-Lfunc_begin7           ; >> Call Site 49 <<
	.uleb128 Ltmp221-Ltmp220                ;   Call between Ltmp220 and Ltmp221
	.uleb128 Ltmp222-Lfunc_begin7           ;     jumps to Ltmp222
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp221-Lfunc_begin7           ; >> Call Site 50 <<
	.uleb128 Ltmp223-Ltmp221                ;   Call between Ltmp221 and Ltmp223
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp223-Lfunc_begin7           ; >> Call Site 51 <<
	.uleb128 Ltmp224-Ltmp223                ;   Call between Ltmp223 and Ltmp224
	.uleb128 Ltmp225-Lfunc_begin7           ;     jumps to Ltmp225
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp224-Lfunc_begin7           ; >> Call Site 52 <<
	.uleb128 Ltmp226-Ltmp224                ;   Call between Ltmp224 and Ltmp226
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp226-Lfunc_begin7           ; >> Call Site 53 <<
	.uleb128 Ltmp235-Ltmp226                ;   Call between Ltmp226 and Ltmp235
	.uleb128 Ltmp236-Lfunc_begin7           ;     jumps to Ltmp236
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp237-Lfunc_begin7           ; >> Call Site 54 <<
	.uleb128 Ltmp242-Ltmp237                ;   Call between Ltmp237 and Ltmp242
	.uleb128 Ltmp243-Lfunc_begin7           ;     jumps to Ltmp243
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp242-Lfunc_begin7           ; >> Call Site 55 <<
	.uleb128 Lfunc_end7-Ltmp242             ;   Call between Ltmp242 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190102Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190102Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190102Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190102Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190102Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190102Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh77:
	adrp	x0, l_.str.14@PAGE
Lloh78:
	add	x0, x0, l_.str.14@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne190102EPKc
	.loh AdrpAdd	Lloh77, Lloh78
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB8ne190102EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB8ne190102EPKc
	.globl	__ZNSt3__120__throw_length_errorB8ne190102EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB8ne190102EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB8ne190102EPKc: ; @_ZNSt3__120__throw_length_errorB8ne190102EPKc
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16                         ; =0x10
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp244:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B8ne190102EPKc
Ltmp245:
; %bb.1:
Lloh79:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh80:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh81:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh82:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB12_2:
Ltmp246:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh81, Lloh82
	.loh AdrpLdrGot	Lloh79, Lloh80
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table12:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp244-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp244
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp244-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp245-Ltmp244                ;   Call between Ltmp244 and Ltmp245
	.uleb128 Ltmp246-Lfunc_begin8           ;     jumps to Ltmp246
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp245-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp245             ;   Call between Ltmp245 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B8ne190102EPKc ; -- Begin function _ZNSt12length_errorC1B8ne190102EPKc
	.globl	__ZNSt12length_errorC1B8ne190102EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B8ne190102EPKc
	.p2align	2
__ZNSt12length_errorC1B8ne190102EPKc:   ; @_ZNSt12length_errorC1B8ne190102EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh83:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh84:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh83, Lloh84
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev ; -- Begin function _ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
	.globl	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
	.weak_def_can_be_hidden	__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
	.p2align	2
__ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev: ; @_ZNKSt3__16vectorIfNS_9allocatorIfEEE20__throw_length_errorB8ne190102Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh85:
	adrp	x0, l_.str.15@PAGE
Lloh86:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB8ne190102EPKc
	.loh AdrpAdd	Lloh85, Lloh86
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.globl	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceB8ne190102IcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x21, x2
	mov	x20, x1
	mov	x19, x0
Ltmp247:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp248:
; %bb.1:
	ldrb	w8, [sp, #8]
	cmp	w8, #1
	b.ne	LBB15_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x4, x19, x8
	ldr	x22, [x4, #40]
	ldr	w24, [x4, #8]
	ldr	w23, [x4, #144]
	cmn	w23, #1
	b.ne	LBB15_7
; %bb.3:
Ltmp250:
	add	x8, sp, #24
	mov	x25, x4
	mov	x0, x4
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp251:
; %bb.4:
Ltmp252:
Lloh87:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh88:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp253:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp254:
	mov	w1, #32                         ; =0x20
	blr	x8
Ltmp255:
; %bb.6:
	mov	x23, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	mov	x4, x25
	str	w23, [x25, #144]
LBB15_7:
	mov	w8, #176                        ; =0xb0
	and	w8, w24, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp257:
	sxtb	w5, w23
	mov	x0, x22
	mov	x1, x20
	bl	__ZNSt3__116__pad_and_outputB8ne190102IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp258:
; %bb.8:
	cbnz	x0, LBB15_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5                          ; =0x5
Ltmp260:
	orr	w1, w8, w9
	bl	__ZNSt3__18ios_base5clearEj
Ltmp261:
LBB15_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB15_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB15_12:
Ltmp262:
	b	LBB15_15
LBB15_13:
Ltmp256:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB15_16
LBB15_14:
Ltmp259:
LBB15_15:
	mov	x20, x0
LBB15_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB15_18
LBB15_17:
Ltmp249:
	mov	x20, x0
LBB15_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
Ltmp263:
	add	x0, x19, x8
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp264:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB15_11
LBB15_20:
Ltmp265:
	mov	x19, x0
Ltmp266:
	bl	___cxa_end_catch
Ltmp267:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB15_22:
Ltmp268:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh87, Lloh88
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table15:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Ltmp247-Lfunc_begin9           ; >> Call Site 1 <<
	.uleb128 Ltmp248-Ltmp247                ;   Call between Ltmp247 and Ltmp248
	.uleb128 Ltmp249-Lfunc_begin9           ;     jumps to Ltmp249
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp250-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp251-Ltmp250                ;   Call between Ltmp250 and Ltmp251
	.uleb128 Ltmp259-Lfunc_begin9           ;     jumps to Ltmp259
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp252-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Ltmp255-Ltmp252                ;   Call between Ltmp252 and Ltmp255
	.uleb128 Ltmp256-Lfunc_begin9           ;     jumps to Ltmp256
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp257-Lfunc_begin9           ; >> Call Site 4 <<
	.uleb128 Ltmp258-Ltmp257                ;   Call between Ltmp257 and Ltmp258
	.uleb128 Ltmp259-Lfunc_begin9           ;     jumps to Ltmp259
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp260-Lfunc_begin9           ; >> Call Site 5 <<
	.uleb128 Ltmp261-Ltmp260                ;   Call between Ltmp260 and Ltmp261
	.uleb128 Ltmp262-Lfunc_begin9           ;     jumps to Ltmp262
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp261-Lfunc_begin9           ; >> Call Site 6 <<
	.uleb128 Ltmp263-Ltmp261                ;   Call between Ltmp261 and Ltmp263
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp263-Lfunc_begin9           ; >> Call Site 7 <<
	.uleb128 Ltmp264-Ltmp263                ;   Call between Ltmp263 and Ltmp264
	.uleb128 Ltmp265-Lfunc_begin9           ;     jumps to Ltmp265
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp264-Lfunc_begin9           ; >> Call Site 8 <<
	.uleb128 Ltmp266-Ltmp264                ;   Call between Ltmp264 and Ltmp266
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp266-Lfunc_begin9           ; >> Call Site 9 <<
	.uleb128 Ltmp267-Ltmp266                ;   Call between Ltmp266 and Ltmp267
	.uleb128 Ltmp268-Lfunc_begin9           ;     jumps to Ltmp268
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp267-Lfunc_begin9           ; >> Call Site 10 <<
	.uleb128 Lfunc_end9-Ltmp267             ;   Call between Ltmp267 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2, 0x0
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputB8ne190102IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputB8ne190102IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputB8ne190102IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputB8ne190102IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputB8ne190102IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputB8ne190102IcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
; %bb.0:
	sub	sp, sp, #112
	stp	x26, x25, [sp, #32]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #48]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #64]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	mov	x19, x0
	cbz	x0, LBB16_16
; %bb.1:
	mov	x24, x5
	mov	x20, x4
	mov	x22, x3
	mov	x21, x2
	ldr	x8, [x4, #24]
	sub	x9, x3, x1
	subs	x8, x8, x9
	csel	x23, x8, xzr, gt
	sub	x25, x2, x1
	cmp	x25, #1
	b.lt	LBB16_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB16_15
LBB16_3:
	cmp	x23, #1
	b.lt	LBB16_12
; %bb.4:
	mov	x8, #9223372036854775800        ; =0x7ffffffffffffff8
	cmp	x23, x8
	b.hs	LBB16_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB16_7
; %bb.6:
	strb	w23, [sp, #31]
	add	x25, sp, #8
	b	LBB16_8
LBB16_7:
	orr	x8, x23, #0x7
	cmp	x8, #23
	mov	w9, #25                         ; =0x19
	csinc	x26, x9, x8, eq
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB16_8:
	mov	x0, x25
	mov	x1, x24
	mov	x2, x23
	bl	_memset
	strb	wzr, [x25, x23]
	ldrsb	w8, [sp, #31]
	ldr	x9, [sp, #8]
	cmp	w8, #0
	add	x8, sp, #8
	csel	x1, x9, x8, lt
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
Ltmp269:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp270:
; %bb.9:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB16_11
; %bb.10:
	cmp	x0, x23
	b.ne	LBB16_15
	b	LBB16_12
LBB16_11:
	ldr	x8, [sp, #8]
	mov	x24, x0
	mov	x0, x8
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB16_15
LBB16_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB16_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB16_15
LBB16_14:
	str	xzr, [x20, #24]
	b	LBB16_16
LBB16_15:
	mov	x19, #0                         ; =0x0
LBB16_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB16_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne190102Ev
LBB16_18:
Ltmp271:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB16_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB16_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2, 0x0
GCC_except_table16:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Lfunc_begin10-Lfunc_begin10    ; >> Call Site 1 <<
	.uleb128 Ltmp269-Lfunc_begin10          ;   Call between Lfunc_begin10 and Ltmp269
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp269-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp270-Ltmp269                ;   Call between Ltmp269 and Ltmp270
	.uleb128 Ltmp271-Lfunc_begin10          ;     jumps to Ltmp271
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp270-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp270            ;   Call between Ltmp270 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
	.p2align	2, 0x0
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Row count must be 1, 2, 4, 8, or 16"

l_.str.1:                               ; @.str.1
	.asciz	"Matrix size mismatch"

l_.str.2:                               ; @.str.2
	.asciz	"Correctness check failed. Max absolute difference: "

l_.str.3:                               ; @.str.3
	.asciz	" ms"

l_.str.4:                               ; @.str.4
	.asciz	" GFLOP/s\n"

	.section	__TEXT,__const
	.p2align	2, 0x0                          ; @__const.main.block_sizes
l___const.main.block_sizes:
	.long	8                               ; 0x8
	.long	16                              ; 0x10
	.long	32                              ; 0x20
	.long	64                              ; 0x40
	.long	128                             ; 0x80
	.long	256                             ; 0x100

	.section	__TEXT,__literal16,16byte_literals
	.p2align	2, 0x0                          ; @__const.main.row_counts
l___const.main.row_counts:
	.long	2                               ; 0x2
	.long	4                               ; 0x4
	.long	8                               ; 0x8
	.long	16                              ; 0x10

	.section	__TEXT,__cstring,cstring_literals
l_.str.5:                               ; @.str.5
	.asciz	"\nMatrix size: "

l_.str.6:                               ; @.str.6
	.asciz	" x "

l_.str.7:                               ; @.str.7
	.asciz	"Naive (i-j-k)"

l_.str.8:                               ; @.str.8
	.asciz	"Reordered (i-k-j)"

l_.str.9:                               ; @.str.9
	.asciz	"Multirow ("

l_.str.10:                              ; @.str.10
	.asciz	"-row B reuse)"

l_.str.11:                              ; @.str.11
	.asciz	"A-tile reuse (tiles i-k-j), block "

l_.str.12:                              ; @.str.12
	.asciz	"Output-tile accumulation (tiles i-j-k), block "

l_.str.13:                              ; @.str.13
	.asciz	"Max absolute difference vs. naive: "

l_.str.14:                              ; @.str.14
	.asciz	"basic_string"

l_.str.15:                              ; @.str.15
	.asciz	"vector"

.subsections_via_symbols
