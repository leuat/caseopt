	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	__Z10ProcessOrgPKtiiPjiPh       ; -- Begin function _Z10ProcessOrgPKtiiPjiPh
	.p2align	2
__Z10ProcessOrgPKtiiPjiPh:              ; @_Z10ProcessOrgPKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB0_8
; %bb.1:
	cmp	w2, #1
	b.lt	LBB0_8
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, #32
	mov	w11, w2
	b	LBB0_4
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.eq	LBB0_8
LBB0_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w4
	msub	w14, w14, w4, w8
	b	LBB0_6
LBB0_5:                                 ;   in Loop: Header=BB0_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB0_3
LBB0_6:                                 ;   Parent Loop BB0_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w4
	msub	w15, w15, w4, w13
	madd	w15, w15, w4, w14
	strb	wzr, [x5, x12]
	ldrh	w16, [x0, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x3, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB0_5
; %bb.7:                                ;   in Loop: Header=BB0_6 Depth=2
	strb	w10, [x5, x12]
	b	LBB0_5
LBB0_8:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z5Startv                      ; -- Begin function _Z5Startv
	.p2align	2
__Z5Startv:                             ; @_Z5Startv
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt3__16chrono12system_clock3nowEv
	adrp	x8, _StartTime@PAGE
	str	x0, [x8, _StartTime@PAGEOFF]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb ; -- Begin function _Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
	.p2align	2
__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb: ; @_Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #160
	.cfi_def_cfa_offset 160
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x1
	mov	x19, x0
Lloh0:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh1:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh2:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	bl	__ZNSt3__16chrono12system_clock3nowEv
Lloh3:
	adrp	x8, _StartTime@PAGE
Lloh4:
	ldr	x8, [x8, _StartTime@PAGEOFF]
	sub	x8, x0, x8
	mov	x9, #63439
	movk	x9, #58195, lsl #16
	movk	x9, #39845, lsl #32
	movk	x9, #8388, lsl #48
	smulh	x8, x8, x9
	asr	x9, x8, #7
	add	x8, x9, x8, lsr #63
	scvtf	d0, x8
	mov	w8, #1
	strb	w8, [sp, #87]
	mov	w8, #32
	strh	w8, [sp, #64]
	adrp	x8, _orgProcessTime@PAGE
	cbz	w20, LBB2_2
; %bb.1:
	str	d0, [x8, _orgProcessTime@PAGEOFF]
	mov	w20, #1
	b	LBB2_9
LBB2_2:
	ldr	d1, [x8, _orgProcessTime@PAGEOFF]
	mov	x8, #4636737291354636288
	fmov	d2, x8
	fmul	d0, d0, d2
	fdiv	d0, d0, d1
	fcvtzs	w0, d0
Ltmp0:
	add	x8, sp, #8
	bl	__ZNSt3__19to_stringEi
Ltmp1:
; %bb.3:
Ltmp3:
Lloh5:
	adrp	x2, l_.str@PAGE
Lloh6:
	add	x2, x2, l_.str@PAGEOFF
	add	x0, sp, #8
	mov	x1, #0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc
Ltmp4:
; %bb.4:
	ldr	q0, [x0]
	ldr	x8, [x0, #16]
	str	x8, [sp, #48]
	str	q0, [sp, #32]
	stp	xzr, xzr, [x0, #8]
	str	xzr, [x0]
Ltmp6:
Lloh7:
	adrp	x1, l_.str.1@PAGE
Lloh8:
	add	x1, x1, l_.str.1@PAGEOFF
	add	x0, sp, #32
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
Ltmp7:
; %bb.5:
	ldp	x21, x8, [x0]
	stur	x8, [x29, #-56]
	ldur	x8, [x0, #15]
	stur	x8, [x29, #-49]
	ldrb	w20, [x0, #23]
	stp	xzr, xzr, [x0, #8]
	str	xzr, [x0]
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB2_7
; %bb.6:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB2_7:
	ldur	x8, [x29, #-56]
	stp	x21, x8, [sp, #64]
	ldur	x8, [x29, #-49]
	stur	x8, [sp, #79]
	strb	w20, [sp, #87]
	ldrsb	w8, [sp, #55]
	tbnz	w8, #31, LBB2_21
; %bb.8:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB2_22
LBB2_9:
	ldrb	w8, [x19, #23]
	sxtb	w9, w8
	ldp	x10, x11, [x19]
	cmp	w9, #0
	csel	x1, x10, x19, lt
	csel	x2, x11, x8, lt
Ltmp9:
Lloh9:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh10:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp10:
; %bb.10:
Ltmp11:
Lloh11:
	adrp	x1, l_.str@PAGE
Lloh12:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp12:
; %bb.11:
	sxtb	w8, w20
	ldp	x9, x10, [sp, #64]
	mov	w11, w20
	cmp	w8, #0
	add	x8, sp, #64
	csel	x1, x9, x8, lt
	csel	x2, x10, x11, lt
Ltmp13:
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp14:
; %bb.12:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp15:
	add	x8, sp, #32
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp16:
; %bb.13:
Ltmp17:
Lloh13:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh14:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #32
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp18:
; %bb.14:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp19:
	mov	w1, #10
	blr	x8
Ltmp20:
; %bb.15:
	mov	x20, x0
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
Ltmp22:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp23:
; %bb.16:
Ltmp24:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp25:
; %bb.17:
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB2_19
; %bb.18:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB2_19:
	ldur	x8, [x29, #-40]
Lloh15:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh16:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh17:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_23
; %bb.20:
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #160
	ret
LBB2_21:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB2_9
LBB2_22:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	b	LBB2_9
LBB2_23:
	bl	___stack_chk_fail
LBB2_24:
Ltmp8:
	mov	x19, x0
	ldrsb	w8, [sp, #55]
	tbnz	w8, #31, LBB2_28
; %bb.25:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB2_30
LBB2_26:
	ldrsb	w8, [sp, #87]
	tbnz	w8, #31, LBB2_35
LBB2_27:
	mov	x0, x19
	bl	__Unwind_Resume
LBB2_28:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB2_26
	b	LBB2_30
LBB2_29:
Ltmp5:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB2_26
LBB2_30:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB2_27
	b	LBB2_35
LBB2_31:
Ltmp2:
	b	LBB2_34
LBB2_32:
Ltmp21:
	mov	x19, x0
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB2_27
	b	LBB2_35
LBB2_33:
Ltmp26:
LBB2_34:
	mov	x19, x0
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB2_27
LBB2_35:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdr	Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh0, Lloh1, Lloh2
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpLdrGot	Lloh9, Lloh10
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpLdrGot	Lloh13, Lloh14
	.loh AdrpLdrGotLdr	Lloh15, Lloh16, Lloh17
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table2:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 1 <<
	.uleb128 Ltmp1-Ltmp0                    ;   Call between Ltmp0 and Ltmp1
	.uleb128 Ltmp2-Lfunc_begin0             ;     jumps to Ltmp2
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp3-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp4-Ltmp3                    ;   Call between Ltmp3 and Ltmp4
	.uleb128 Ltmp5-Lfunc_begin0             ;     jumps to Ltmp5
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp7-Ltmp6                    ;   Call between Ltmp6 and Ltmp7
	.uleb128 Ltmp8-Lfunc_begin0             ;     jumps to Ltmp8
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp9-Lfunc_begin0             ; >> Call Site 4 <<
	.uleb128 Ltmp16-Ltmp9                   ;   Call between Ltmp9 and Ltmp16
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp17-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Ltmp20-Ltmp17                  ;   Call between Ltmp17 and Ltmp20
	.uleb128 Ltmp21-Lfunc_begin0            ;     jumps to Ltmp21
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp22-Lfunc_begin0            ; >> Call Site 6 <<
	.uleb128 Ltmp25-Ltmp22                  ;   Call between Ltmp22 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin0            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp25-Lfunc_begin0            ; >> Call Site 7 <<
	.uleb128 Lfunc_end0-Ltmp25              ;   Call between Ltmp25 and Lfunc_end0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc ; -- Begin function _ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.weak_def_can_be_hidden	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.p2align	2
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc: ; @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x1
	mov	x20, x0
	mov	x0, x1
	bl	_strlen
	mov	x2, x0
	mov	x0, x20
	mov	x1, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	b	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_ ; -- Begin function _ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_def_can_be_hidden	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	2
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ; @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception1
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
	add	x8, sp, #8
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp27:
Lloh18:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh19:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp28:
; %bb.1:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp29:
	mov	w1, #10
	blr	x8
Ltmp30:
; %bb.2:
	mov	x20, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
LBB4_3:
Ltmp31:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh18, Lloh19
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table4:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp27-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp27
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp30-Ltmp27                  ;   Call between Ltmp27 and Ltmp30
	.uleb128 Ltmp31-Lfunc_begin1            ;     jumps to Ltmp31
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp30              ;   Call between Ltmp30 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z11ProcessOpt1PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt1PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt1PKtiiPjiPh:             ; @_Z11ProcessOpt1PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB5_8
; %bb.1:
	cmp	w2, #1
	b.lt	LBB5_8
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, #32
	mov	w11, w2
	b	LBB5_4
LBB5_3:                                 ;   in Loop: Header=BB5_4 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.eq	LBB5_8
LBB5_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB5_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w4
	msub	w14, w14, w4, w8
	b	LBB5_6
LBB5_5:                                 ;   in Loop: Header=BB5_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB5_3
LBB5_6:                                 ;   Parent Loop BB5_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w4
	msub	w15, w15, w4, w13
	madd	w15, w15, w4, w14
	strb	wzr, [x5, x12]
	ldrh	w16, [x0, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x3, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB5_5
; %bb.7:                                ;   in Loop: Header=BB5_6 Depth=2
	strb	w10, [x5, x12]
	b	LBB5_5
LBB5_8:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt2PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt2PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt2PKtiiPjiPh:             ; @_Z11ProcessOpt2PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB6_8
; %bb.1:
	cmp	w2, #1
	b.lt	LBB6_8
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, #32
	mov	w11, w2
	b	LBB6_4
LBB6_3:                                 ;   in Loop: Header=BB6_4 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.eq	LBB6_8
LBB6_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB6_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w4
	msub	w14, w14, w4, w8
	b	LBB6_6
LBB6_5:                                 ;   in Loop: Header=BB6_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB6_3
LBB6_6:                                 ;   Parent Loop BB6_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w4
	msub	w15, w15, w4, w13
	madd	w15, w15, w4, w14
	strb	wzr, [x5, x12]
	ldrh	w16, [x0, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x3, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB6_5
; %bb.7:                                ;   in Loop: Header=BB6_6 Depth=2
	strb	w10, [x5, x12]
	b	LBB6_5
LBB6_8:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt3PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt3PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt3PKtiiPjiPh:             ; @_Z11ProcessOpt3PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB7_6
; %bb.1:
	cmp	w2, #1
	b.lt	LBB7_6
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, w2
LBB7_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_4 Depth 2
	mov	x11, #0
	mov	x12, #0
	sdiv	w13, w8, w4
	msub	w13, w13, w4, w8
LBB7_4:                                 ;   Parent Loop BB7_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w14, w12, w4
	msub	w14, w14, w4, w12
	ldrh	w15, [x0, x11, lsl #1]
	madd	w14, w14, w4, w13
	and	w15, w15, #0x1f
	ldr	w14, [x3, w14, sxtw #2]
	cmp	w14, w15
	cset	w14, lo
	lsl	w14, w14, #5
	strb	w14, [x5, x11]
	add	x12, x12, #1
	add	x11, x11, x9
	cmp	x10, x12
	b.ne	LBB7_4
; %bb.5:                                ;   in Loop: Header=BB7_3 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.ne	LBB7_3
LBB7_6:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt4PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt4PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt4PKtiiPjiPh:             ; @_Z11ProcessOpt4PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x5
	mov	x20, x4
	mov	x21, x3
	mov	x23, x2
	mov	x24, x1
	mov	x22, x0
	mul	w8, w2, w1
	sxtw	x1, w8
	mov	x0, x5
	bl	_bzero
	cmp	w24, #1
	b.lt	LBB8_8
; %bb.1:
	cmp	w23, #1
	b.lt	LBB8_8
; %bb.2:
	mov	x8, #0
	mov	w9, w24
	mov	w10, #32
	mov	w11, w23
	b	LBB8_4
LBB8_3:                                 ;   in Loop: Header=BB8_4 Depth=1
	add	x8, x8, #1
	add	x22, x22, #2
	add	x19, x19, #1
	cmp	x8, x9
	b.eq	LBB8_8
LBB8_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w20
	msub	w14, w14, w20, w8
	b	LBB8_6
LBB8_5:                                 ;   in Loop: Header=BB8_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB8_3
LBB8_6:                                 ;   Parent Loop BB8_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w20
	msub	w15, w15, w20, w13
	madd	w15, w15, w20, w14
	ldrh	w16, [x22, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x21, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB8_5
; %bb.7:                                ;   in Loop: Header=BB8_6 Depth=2
	strb	w10, [x19, x12]
	b	LBB8_5
LBB8_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt5PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt5PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt5PKtiiPjiPh:             ; @_Z11ProcessOpt5PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x5
	mov	x20, x4
	mov	x21, x3
	mov	x23, x2
	mov	x24, x1
	mov	x22, x0
	mul	w8, w2, w1
	sxtw	x1, w8
	mov	x0, x5
	bl	_bzero
	cmp	w24, #1
	b.lt	LBB9_8
; %bb.1:
	cmp	w23, #1
	b.lt	LBB9_8
; %bb.2:
	mov	x8, #0
	sub	w9, w20, #1
	mov	w10, #32
	mov	w11, w24
	mov	w12, w23
	b	LBB9_4
LBB9_3:                                 ;   in Loop: Header=BB9_4 Depth=1
	add	x8, x8, #1
	add	x22, x22, #2
	add	x19, x19, #1
	cmp	x8, x11
	b.eq	LBB9_8
LBB9_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB9_6 Depth 2
	mov	x13, #0
	mov	x14, #0
	and	w15, w9, w8
	b	LBB9_6
LBB9_5:                                 ;   in Loop: Header=BB9_6 Depth=2
	add	x14, x14, #1
	add	x13, x13, x11
	cmp	x12, x14
	b.eq	LBB9_3
LBB9_6:                                 ;   Parent Loop BB9_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w16, w9, w14
	madd	w16, w16, w20, w15
	ldrh	w17, [x22, x13, lsl #1]
	and	w17, w17, #0x1f
	ldr	w16, [x21, w16, sxtw #2]
	cmp	w16, w17
	b.hs	LBB9_5
; %bb.7:                                ;   in Loop: Header=BB9_6 Depth=2
	strb	w10, [x19, x13]
	b	LBB9_5
LBB9_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt6PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt6PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt6PKtiiPjiPh:             ; @_Z11ProcessOpt6PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x5
	mov	x20, x4
	mov	x21, x3
	mov	x22, x2
	mov	x24, x1
	mov	x23, x0
	mul	w8, w2, w1
	sxtw	x1, w8
	mov	x0, x5
	bl	_bzero
	cmp	w22, #1
	b.lt	LBB10_8
; %bb.1:
	cmp	w24, #1
	b.lt	LBB10_8
; %bb.2:
	mov	x15, #0
	mov	w8, #0
	sub	w9, w20, #1
	mov	w10, #32
	mov	w11, w24
	b	LBB10_4
LBB10_3:                                ;   in Loop: Header=BB10_4 Depth=1
	add	w8, w8, #1
	add	x15, x13, x12
	cmp	w8, w22
	b.eq	LBB10_8
LBB10_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB10_6 Depth 2
	mov	x12, #0
	and	w13, w8, w9
	mul	w14, w13, w20
	sxtw	x13, w15
	add	x15, x23, w15, sxtw #1
	add	x16, x19, x13
	b	LBB10_6
LBB10_5:                                ;   in Loop: Header=BB10_6 Depth=2
	add	x12, x12, #1
	cmp	w11, w12
	b.eq	LBB10_3
LBB10_6:                                ;   Parent Loop BB10_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w17, w12, w9
	add	w17, w17, w14
	ldrh	w0, [x15, x12, lsl #1]
	and	w0, w0, #0x1f
	ldr	w17, [x21, w17, sxtw #2]
	cmp	w17, w0
	b.hs	LBB10_5
; %bb.7:                                ;   in Loop: Header=BB10_6 Depth=2
	strb	w10, [x16, x12]
	b	LBB10_5
LBB10_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt7PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt7PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt7PKtiiPjiPh:             ; @_Z11ProcessOpt7PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x24, x23, [sp, #-64]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 64
	stp	x22, x21, [sp, #16]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	mov	x19, x5
	mov	x20, x3
	mov	x21, x2
	mov	x22, x1
	mov	x23, x0
	mul	w8, w2, w1
	sxtw	x1, w8
	mov	x0, x5
	bl	_bzero
	cmp	w21, #1
	b.lt	LBB11_8
; %bb.1:
	cmp	w22, #1
	b.lt	LBB11_8
; %bb.2:
	mov	w8, #0
	mov	w9, #0
	adrp	x10, _lidx@PAGE
	mov	w11, #32
	b	LBB11_4
LBB11_3:                                ;   in Loop: Header=BB11_4 Depth=1
	add	w8, w8, #1
	cmp	w8, w21
	b.eq	LBB11_8
LBB11_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB11_6 Depth 2
	sxtw	x12, w9
	add	w9, w9, w22
	mov	x13, x22
	b	LBB11_6
LBB11_5:                                ;   in Loop: Header=BB11_6 Depth=2
	add	x12, x12, #1
	subs	w13, w13, #1
	b.eq	LBB11_3
LBB11_6:                                ;   Parent Loop BB11_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrh	w14, [x23, x12, lsl #1]
	and	w14, w14, #0x1f
	ldr	x15, [x10, _lidx@PAGEOFF]
	ldr	w15, [x15, x12, lsl #2]
	ldr	w15, [x20, x15, lsl #2]
	cmp	w15, w14
	b.hs	LBB11_5
; %bb.7:                                ;   in Loop: Header=BB11_6 Depth=2
	strb	w11, [x19, x12]
	b	LBB11_5
LBB11_8:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt8PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt8PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt8PKtiiPjiPh:             ; @_Z11ProcessOpt8PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x5
	mov	x20, x2
	mov	x21, x1
	mov	x22, x0
	mul	w8, w2, w1
	sxtw	x1, w8
	mov	x0, x5
	bl	_bzero
	cmp	w20, #1
	b.lt	LBB12_8
; %bb.1:
	cmp	w21, #1
	b.lt	LBB12_8
; %bb.2:
	mov	w8, #0
	mov	w9, #0
	adrp	x10, _lutMerged@PAGE
	mov	w11, #32
	b	LBB12_4
LBB12_3:                                ;   in Loop: Header=BB12_4 Depth=1
	add	w8, w8, #1
	cmp	w8, w20
	b.eq	LBB12_8
LBB12_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB12_6 Depth 2
	sxtw	x12, w9
	add	w9, w9, w21
	mov	x13, x21
	b	LBB12_6
LBB12_5:                                ;   in Loop: Header=BB12_6 Depth=2
	add	x12, x12, #1
	subs	w13, w13, #1
	b.eq	LBB12_3
LBB12_6:                                ;   Parent Loop BB12_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrh	w14, [x22, x12, lsl #1]
	and	w14, w14, #0x1f
	ldr	x15, [x10, _lutMerged@PAGEOFF]
	ldr	w15, [x15, x12, lsl #2]
	cmp	w15, w14
	b.hs	LBB12_5
; %bb.7:                                ;   in Loop: Header=BB12_6 Depth=2
	strb	w11, [x19, x12]
	b	LBB12_5
LBB12_8:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt9PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt9PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt9PKtiiPjiPh:             ; @_Z11ProcessOpt9PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x5
	mov	x20, x0
	mul	w21, w2, w1
	mov	x8, x21
	sxtw	x1, w8
	mov	x0, x5
	bl	_bzero
	cmp	w21, #1
	b.lt	LBB13_5
; %bb.1:
	mov	x8, #0
	adrp	x9, _lutMerged@PAGE
	mov	w10, #32
	b	LBB13_3
LBB13_2:                                ;   in Loop: Header=BB13_3 Depth=1
	add	x8, x8, #1
	cmp	x21, x8
	b.eq	LBB13_5
LBB13_3:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w11, [x20, x8, lsl #1]
	and	w11, w11, #0x1f
	ldr	x12, [x9, _lutMerged@PAGEOFF]
	ldr	w12, [x12, x8, lsl #2]
	cmp	w12, w11
	b.hs	LBB13_2
; %bb.4:                                ;   in Loop: Header=BB13_3 Depth=1
	strb	w10, [x19, x8]
	b	LBB13_2
LBB13_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12ProcessOpt10PKtiiPjiPh     ; -- Begin function _Z12ProcessOpt10PKtiiPjiPh
	.p2align	2
__Z12ProcessOpt10PKtiiPjiPh:            ; @_Z12ProcessOpt10PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x5
	mov	x20, x0
	mul	w21, w2, w1
	mov	x8, x21
	sxtw	x1, w8
	mov	x0, x5
	bl	_bzero
	cmp	w21, #1
	b.lt	LBB14_3
; %bb.1:
	mov	x8, #0
	adrp	x9, _lutMerged@PAGE
Lloh20:
	adrp	x10, l___const._Z12ProcessOpt10PKtiiPjiPh.tab2@PAGE
Lloh21:
	add	x10, x10, l___const._Z12ProcessOpt10PKtiiPjiPh.tab2@PAGEOFF
LBB14_2:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w11, [x20, x8, lsl #1]
	and	w11, w11, #0x1f
	ldr	x12, [x9, _lutMerged@PAGEOFF]
	ldr	w12, [x12, x8, lsl #2]
	cmp	w12, w11
	cset	w11, lo
	ldr	w11, [x10, w11, uxtw #2]
	strb	w11, [x19, x8]
	add	x8, x8, #1
	cmp	x21, x8
	b.ne	LBB14_2
LBB14_3:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh20, Lloh21
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12ProcessOpt11PKtiiPjiPh     ; -- Begin function _Z12ProcessOpt11PKtiiPjiPh
	.p2align	2
__Z12ProcessOpt11PKtiiPjiPh:            ; @_Z12ProcessOpt11PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, x5
	mov	x20, x0
	mul	w21, w2, w1
	sxtw	x1, w21
	mov	x0, x5
	bl	_bzero
	subs	w10, w21, #1
	b.lt	LBB15_8
; %bb.1:
	and	w8, w21, #0x7
	adrp	x9, _lutMerged@PAGE
	cmp	w10, #7
	b.hs	LBB15_9
; %bb.2:
	mov	x10, #0
LBB15_3:
	cbz	w8, LBB15_8
; %bb.4:
	mov	w11, #32
	b	LBB15_6
LBB15_5:                                ;   in Loop: Header=BB15_6 Depth=1
	add	x10, x10, #1
	subs	w8, w8, #1
	b.eq	LBB15_8
LBB15_6:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w12, [x20, x10, lsl #1]
	and	w12, w12, #0x1f
	ldr	x13, [x9, _lutMerged@PAGEOFF]
	ldr	w13, [x13, x10, lsl #2]
	cmp	w13, w12
	b.hs	LBB15_5
; %bb.7:                                ;   in Loop: Header=BB15_6 Depth=1
	strb	w11, [x19, x10]
	b	LBB15_5
LBB15_8:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB15_9:
	mov	x10, #0
                                        ; kill: def $w21 killed $w21 killed $x21 def $x21
	and	x11, x21, #0xfffffff8
	add	x12, x20, #8
	add	x13, x19, #3
	mov	w14, #32
	b	LBB15_11
LBB15_10:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x10, x10, #8
	add	x12, x12, #16
	cmp	w11, w10
	b.eq	LBB15_3
LBB15_11:                               ; =>This Inner Loop Header: Depth=1
	ldurh	w15, [x12, #-8]
	and	w16, w15, #0x1f
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldr	w17, [x15, x10, lsl #2]
	cmp	w17, w16
	b.lo	LBB15_19
; %bb.12:                               ;   in Loop: Header=BB15_11 Depth=1
	ldurh	w16, [x12, #-6]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #4]
	cmp	w17, w16
	b.lo	LBB15_20
LBB15_13:                               ;   in Loop: Header=BB15_11 Depth=1
	ldurh	w16, [x12, #-4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #8]
	cmp	w17, w16
	b.lo	LBB15_21
LBB15_14:                               ;   in Loop: Header=BB15_11 Depth=1
	ldurh	w16, [x12, #-2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #12]
	cmp	w17, w16
	b.lo	LBB15_22
LBB15_15:                               ;   in Loop: Header=BB15_11 Depth=1
	ldrh	w16, [x12]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #16]
	cmp	w17, w16
	b.lo	LBB15_23
LBB15_16:                               ;   in Loop: Header=BB15_11 Depth=1
	ldrh	w16, [x12, #2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #20]
	cmp	w17, w16
	b.lo	LBB15_24
LBB15_17:                               ;   in Loop: Header=BB15_11 Depth=1
	ldrh	w16, [x12, #4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #24]
	cmp	w17, w16
	b.lo	LBB15_25
LBB15_18:                               ;   in Loop: Header=BB15_11 Depth=1
	ldrh	w16, [x12, #6]
	and	w16, w16, #0x1f
	add	x15, x15, x10, lsl #2
	ldr	w15, [x15, #28]
	cmp	w15, w16
	b.hs	LBB15_10
	b	LBB15_26
LBB15_19:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x15, x13, x10
	sturb	w14, [x15, #-3]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldurh	w16, [x12, #-6]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #4]
	cmp	w17, w16
	b.hs	LBB15_13
LBB15_20:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x15, x13, x10
	sturb	w14, [x15, #-2]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldurh	w16, [x12, #-4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #8]
	cmp	w17, w16
	b.hs	LBB15_14
LBB15_21:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x15, x13, x10
	sturb	w14, [x15, #-1]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldurh	w16, [x12, #-2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #12]
	cmp	w17, w16
	b.hs	LBB15_15
LBB15_22:                               ;   in Loop: Header=BB15_11 Depth=1
	strb	w14, [x13, x10]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #16]
	cmp	w17, w16
	b.hs	LBB15_16
LBB15_23:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #1]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12, #2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #20]
	cmp	w17, w16
	b.hs	LBB15_17
LBB15_24:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #2]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12, #4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #24]
	cmp	w17, w16
	b.hs	LBB15_18
LBB15_25:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #3]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12, #6]
	and	w16, w16, #0x1f
	add	x15, x15, x10, lsl #2
	ldr	w15, [x15, #28]
	cmp	w15, w16
	b.hs	LBB15_10
LBB15_26:                               ;   in Loop: Header=BB15_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #4]
	b	LBB15_10
	.cfi_endproc
                                        ; -- End function
	.globl	__Z7InitLutPj                   ; -- Begin function _Z7InitLutPj
	.p2align	2
__Z7InitLutPj:                          ; @_Z7InitLutPj
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, x0
	mov	x20, #0
LBB16_1:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	and	w8, w0, #0x7ff
	str	w8, [x19, x20]
	add	x20, x20, #4
	cmp	x20, #16, lsl #12               ; =65536
	b.ne	LBB16_1
; %bb.2:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z9InitImagev                  ; -- Begin function _Z9InitImagev
	.p2align	2
__Z9InitImagev:                         ; @_Z9InitImagev
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x19, #0
	adrp	x20, _org@PAGE
	adrp	x21, _outWork@PAGE
	adrp	x22, _outOrg@PAGE
LBB17_1:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	ldr	x8, [x20, _org@PAGEOFF]
	strh	w0, [x8, x19, lsl #1]
	ldr	x8, [x21, _outWork@PAGEOFF]
	strb	wzr, [x8, x19]
	ldr	x8, [x22, _outOrg@PAGEOFF]
	strb	wzr, [x8, x19]
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB17_1
; %bb.2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z8InitLidxv                   ; -- Begin function _Z8InitLidxv
	.p2align	2
__Z8InitLidxv:                          ; @_Z8InitLidxv
	.cfi_startproc
; %bb.0:
	mov	x8, #0
Lloh22:
	adrp	x9, _lidx@PAGE
Lloh23:
	ldr	x9, [x9, _lidx@PAGEOFF]
Lloh24:
	adrp	x10, _lut@PAGE
Lloh25:
	ldr	x10, [x10, _lut@PAGEOFF]
Lloh26:
	adrp	x11, _lutMerged@PAGE
Lloh27:
	ldr	x11, [x11, _lutMerged@PAGEOFF]
LBB18_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB18_2 Depth 2
	mov	x12, #0
	ubfiz	w13, w8, #7, #7
LBB18_2:                                ;   Parent Loop BB18_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w14, w12, #0x7f
	orr	w14, w14, w13
	lsl	x15, x12, #2
	str	w14, [x9, x15]
	ldr	w14, [x10, w14, uxtw #2]
	str	w14, [x11, x15]
	add	x12, x12, #1
	cmp	x12, #1024
	b.ne	LBB18_2
; %bb.3:                                ;   in Loop: Header=BB18_1 Depth=1
	add	x8, x8, #1
	add	x11, x11, #1, lsl #12           ; =4096
	add	x9, x9, #1, lsl #12             ; =4096
	cmp	x8, #1024
	b.ne	LBB18_1
; %bb.4:
	ret
	.loh AdrpLdr	Lloh26, Lloh27
	.loh AdrpLdr	Lloh24, Lloh25
	.loh AdrpLdr	Lloh22, Lloh23
	.cfi_endproc
                                        ; -- End function
	.globl	__Z4Initv                       ; -- Begin function _Z4Initv
	.p2align	2
__Z4Initv:                              ; @_Z4Initv
	.cfi_startproc
; %bb.0:
	stp	x26, x25, [sp, #-80]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 80
	stp	x24, x23, [sp, #16]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
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
	mov	w0, #2097152
	bl	__Znam
	adrp	x20, _org@PAGE
	str	x0, [x20, _org@PAGEOFF]
	mov	w0, #4194304
	bl	__Znam
	adrp	x21, _lidx@PAGE
	str	x0, [x21, _lidx@PAGEOFF]
	mov	w0, #4194304
	bl	__Znam
	adrp	x22, _lutMerged@PAGE
	str	x0, [x22, _lutMerged@PAGEOFF]
	mov	w0, #2097152
	bl	__Znam
	adrp	x8, _temp@PAGE
	str	x0, [x8, _temp@PAGEOFF]
	mov	w0, #65536
	bl	__Znam
	mov	x19, x0
	adrp	x23, _lut@PAGE
	str	x0, [x23, _lut@PAGEOFF]
	mov	w0, #1048576
	bl	__Znam
	adrp	x24, _outOrg@PAGE
	str	x0, [x24, _outOrg@PAGEOFF]
	mov	w0, #1048576
	bl	__Znam
	mov	x26, #0
	adrp	x25, _outWork@PAGE
	str	x0, [x25, _outWork@PAGEOFF]
LBB19_1:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	and	w8, w0, #0x7ff
	str	w8, [x19, x26]
	add	x26, x26, #4
	cmp	x26, #16, lsl #12               ; =65536
	b.ne	LBB19_1
; %bb.2:
	mov	x19, #0
LBB19_3:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	ldr	x8, [x20, _org@PAGEOFF]
	strh	w0, [x8, x19, lsl #1]
	ldr	x8, [x25, _outWork@PAGEOFF]
	strb	wzr, [x8, x19]
	ldr	x8, [x24, _outOrg@PAGEOFF]
	strb	wzr, [x8, x19]
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB19_3
; %bb.4:
	mov	x8, #0
	ldr	x9, [x21, _lidx@PAGEOFF]
	ldr	x10, [x23, _lut@PAGEOFF]
	ldr	x11, [x22, _lutMerged@PAGEOFF]
LBB19_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB19_6 Depth 2
	mov	x12, #0
	ubfiz	w13, w8, #7, #7
LBB19_6:                                ;   Parent Loop BB19_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w14, w12, #0x7f
	orr	w14, w14, w13
	lsl	x15, x12, #2
	str	w14, [x9, x15]
	ldr	w14, [x10, w14, uxtw #2]
	str	w14, [x11, x15]
	add	x12, x12, #1
	cmp	x12, #1024
	b.ne	LBB19_6
; %bb.7:                                ;   in Loop: Header=BB19_5 Depth=1
	add	x8, x8, #1
	add	x11, x11, #1, lsl #12           ; =4096
	add	x9, x9, #1, lsl #12             ; =4096
	cmp	x8, #1024
	b.ne	LBB19_5
; %bb.8:
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z6Verifyv                     ; -- Begin function _Z6Verifyv
	.p2align	2
__Z6Verifyv:                            ; @_Z6Verifyv
	.cfi_startproc
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x19, #0
Lloh28:
	adrp	x8, _outWork@PAGE
Lloh29:
	ldr	x8, [x8, _outWork@PAGEOFF]
Lloh30:
	adrp	x9, _outOrg@PAGE
Lloh31:
	ldr	x9, [x9, _outOrg@PAGEOFF]
LBB20_1:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x8, x19]
	ldrb	w11, [x9, x19]
	cmp	w10, w11
	b.ne	LBB20_4
; %bb.2:                                ;   in Loop: Header=BB20_1 Depth=1
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB20_1
; %bb.3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB20_4:
Lloh32:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh33:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh34:
	adrp	x1, l_.str.2@PAGE
Lloh35:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	bl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	mov	w0, #1
	bl	_exit
	.loh AdrpLdr	Lloh30, Lloh31
	.loh AdrpLdr	Lloh28, Lloh29
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpLdrGot	Lloh32, Lloh33
	.cfi_endproc
                                        ; -- End function
	.globl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb ; -- Begin function _Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
	.p2align	2
__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb: ; @_Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
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
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
Lloh36:
	adrp	x8, _outOrg@PAGE
Lloh37:
	add	x8, x8, _outOrg@PAGEOFF
Lloh38:
	adrp	x9, _outWork@PAGE
Lloh39:
	add	x9, x9, _outWork@PAGEOFF
	cmp	w2, #0
	csel	x8, x8, x9, ne
	ldr	x22, [x8]
	bl	__ZNSt3__16chrono12system_clock3nowEv
	adrp	x8, _StartTime@PAGE
	str	x0, [x8, _StartTime@PAGEOFF]
	mov	w23, #64
	adrp	x24, _org@PAGE
	adrp	x25, _lut@PAGE
LBB21_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x24, _org@PAGEOFF]
	ldr	x3, [x25, _lut@PAGEOFF]
	mov	w1, #1024
	mov	w2, #1024
	mov	w4, #128
	mov	x5, x22
	blr	x21
	subs	w23, w23, #1
	b.ne	LBB21_1
; %bb.2:
	add	x0, sp, #8
	mov	x1, x20
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp32:
	add	x0, sp, #8
	mov	x1, x19
	bl	__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
Ltmp33:
; %bb.3:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB21_5
; %bb.4:
	tbz	w19, #0, LBB21_6
	b	LBB21_9
LBB21_5:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	tbnz	w19, #0, LBB21_9
LBB21_6:
	mov	x19, #0
Lloh40:
	adrp	x8, _outWork@PAGE
Lloh41:
	ldr	x8, [x8, _outWork@PAGEOFF]
Lloh42:
	adrp	x9, _outOrg@PAGE
Lloh43:
	ldr	x9, [x9, _outOrg@PAGEOFF]
LBB21_7:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x8, x19]
	ldrb	w11, [x9, x19]
	cmp	w10, w11
	b.ne	LBB21_10
; %bb.8:                                ;   in Loop: Header=BB21_7 Depth=1
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB21_7
LBB21_9:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB21_10:
Lloh44:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh45:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh46:
	adrp	x1, l_.str.2@PAGE
Lloh47:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	bl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	mov	w0, #1
	bl	_exit
LBB21_11:
Ltmp34:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB21_13
; %bb.12:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB21_13:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpLdr	Lloh42, Lloh43
	.loh AdrpLdr	Lloh40, Lloh41
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpLdrGot	Lloh44, Lloh45
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table21:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Lfunc_begin2-Lfunc_begin2      ; >> Call Site 1 <<
	.uleb128 Ltmp32-Lfunc_begin2            ;   Call between Lfunc_begin2 and Ltmp32
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp32-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp33-Ltmp32                  ;   Call between Ltmp32 and Ltmp33
	.uleb128 Ltmp34-Lfunc_begin2            ;     jumps to Ltmp34
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp33-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Lfunc_end2-Ltmp33              ;   Call between Ltmp33 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z7Cleanupv                    ; -- Begin function _Z7Cleanupv
	.p2align	2
__Z7Cleanupv:                           ; @_Z7Cleanupv
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh48:
	adrp	x8, _org@PAGE
Lloh49:
	ldr	x0, [x8, _org@PAGEOFF]
	cbz	x0, LBB22_2
; %bb.1:
	bl	__ZdaPv
LBB22_2:
Lloh50:
	adrp	x8, _outOrg@PAGE
Lloh51:
	ldr	x0, [x8, _outOrg@PAGEOFF]
	cbz	x0, LBB22_4
; %bb.3:
	bl	__ZdaPv
LBB22_4:
Lloh52:
	adrp	x8, _outWork@PAGE
Lloh53:
	ldr	x0, [x8, _outWork@PAGEOFF]
	cbz	x0, LBB22_6
; %bb.5:
	bl	__ZdaPv
LBB22_6:
Lloh54:
	adrp	x8, _lut@PAGE
Lloh55:
	ldr	x0, [x8, _lut@PAGEOFF]
	cbz	x0, LBB22_8
; %bb.7:
	bl	__ZdaPv
LBB22_8:
Lloh56:
	adrp	x8, _temp@PAGE
Lloh57:
	ldr	x0, [x8, _temp@PAGEOFF]
	cbz	x0, LBB22_10
; %bb.9:
	bl	__ZdaPv
LBB22_10:
Lloh58:
	adrp	x8, _lidx@PAGE
Lloh59:
	ldr	x0, [x8, _lidx@PAGEOFF]
	cbz	x0, LBB22_12
; %bb.11:
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	__ZdaPv
LBB22_12:
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdr	Lloh48, Lloh49
	.loh AdrpLdr	Lloh50, Lloh51
	.loh AdrpLdr	Lloh52, Lloh53
	.loh AdrpLdr	Lloh54, Lloh55
	.loh AdrpLdr	Lloh56, Lloh57
	.loh AdrpLdr	Lloh58, Lloh59
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	sub	sp, sp, #416
	.cfi_def_cfa_offset 416
	stp	x26, x25, [sp, #336]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #352]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #368]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #384]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #400]            ; 16-byte Folded Spill
	add	x29, sp, #400
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
	add	x19, sp, #144
	mov	x22, #29263
	movk	x22, #26473, lsl #16
	movk	x22, #28265, lsl #32
	movk	x22, #27745, lsl #48
	bl	__Z4Initv
	mov	w8, #8
	sturb	w8, [x29, #-89]
	stur	x22, [x29, #-112]
	sturb	wzr, [x29, #-104]
	adrp	x23, _outOrg@PAGE
	ldr	x25, [x23, _outOrg@PAGEOFF]
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	w8, #0
	adrp	x24, _StartTime@PAGE
	str	x0, [x24, _StartTime@PAGEOFF]
	adrp	x20, _org@PAGE
	adrp	x21, _lut@PAGE
	mov	w9, #32
	b	LBB23_2
LBB23_1:                                ;   in Loop: Header=BB23_2 Depth=1
	add	w8, w8, #1
	cmp	w8, #64
	b.eq	LBB23_8
LBB23_2:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB23_4 Depth 2
                                        ;       Child Loop BB23_6 Depth 3
	mov	x10, #0
	ldr	x11, [x20, _org@PAGEOFF]
	ldr	x12, [x21, _lut@PAGEOFF]
	mov	x13, x25
	b	LBB23_4
LBB23_3:                                ;   in Loop: Header=BB23_4 Depth=2
	add	x10, x10, #1
	add	x11, x11, #2
	add	x13, x13, #1
	cmp	x10, #1024
	b.eq	LBB23_1
LBB23_4:                                ;   Parent Loop BB23_2 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB23_6 Depth 3
	mov	x14, #0
	negs	w15, w10
	and	w15, w15, #0x7f
	and	w16, w10, #0x7f
	csneg	w15, w16, w15, mi
	mov	x16, x13
	mov	x17, x11
	b	LBB23_6
LBB23_5:                                ;   in Loop: Header=BB23_6 Depth=3
	add	x14, x14, #1
	add	x17, x17, #2048
	add	x16, x16, #1024
	cmp	x14, #1024
	b.eq	LBB23_3
LBB23_6:                                ;   Parent Loop BB23_2 Depth=1
                                        ;     Parent Loop BB23_4 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	negs	w0, w14
	and	w0, w0, #0x7f
	and	w1, w14, #0x7f
	csneg	w0, w1, w0, mi
	add	w0, w15, w0, lsl #7
	strb	wzr, [x16]
	ldrh	w1, [x17]
	and	w1, w1, #0x1f
	ldr	w0, [x12, w0, sxtw #2]
	cmp	w0, w1
	b.hs	LBB23_5
; %bb.7:                                ;   in Loop: Header=BB23_6 Depth=3
	strb	w9, [x16]
	b	LBB23_5
LBB23_8:
Ltmp35:
	sub	x0, x29, #88
	sub	x1, x29, #112
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp36:
; %bb.9:
Ltmp38:
	sub	x0, x29, #88
	mov	w1, #1
	bl	__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
Ltmp39:
; %bb.10:
	ldursb	w8, [x29, #-65]
	tbnz	w8, #31, LBB23_58
; %bb.11:
	ldursb	w8, [x29, #-89]
	tbnz	w8, #31, LBB23_59
LBB23_12:
	mov	w8, #8
	sturb	w8, [x29, #-113]
	stur	x22, [x29, #-136]
	sturb	wzr, [x29, #-128]
	ldr	x22, [x23, _outOrg@PAGEOFF]
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	w8, #0
	str	x0, [x24, _StartTime@PAGEOFF]
	mov	w9, #32
	b	LBB23_14
LBB23_13:                               ;   in Loop: Header=BB23_14 Depth=1
	add	w8, w8, #1
	cmp	w8, #64
	b.eq	LBB23_20
LBB23_14:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB23_16 Depth 2
                                        ;       Child Loop BB23_18 Depth 3
	mov	x10, #0
	ldr	x11, [x20, _org@PAGEOFF]
	ldr	x12, [x21, _lut@PAGEOFF]
	mov	x13, x22
	b	LBB23_16
LBB23_15:                               ;   in Loop: Header=BB23_16 Depth=2
	add	x10, x10, #1
	add	x11, x11, #2
	add	x13, x13, #1
	cmp	x10, #1024
	b.eq	LBB23_13
LBB23_16:                               ;   Parent Loop BB23_14 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB23_18 Depth 3
	mov	x14, #0
	negs	w15, w10
	and	w15, w15, #0x7f
	and	w16, w10, #0x7f
	csneg	w15, w16, w15, mi
	mov	x16, x13
	mov	x17, x11
	b	LBB23_18
LBB23_17:                               ;   in Loop: Header=BB23_18 Depth=3
	add	x14, x14, #1
	add	x17, x17, #2048
	add	x16, x16, #1024
	cmp	x14, #1024
	b.eq	LBB23_15
LBB23_18:                               ;   Parent Loop BB23_14 Depth=1
                                        ;     Parent Loop BB23_16 Depth=2
                                        ; =>    This Inner Loop Header: Depth=3
	negs	w0, w14
	and	w0, w0, #0x7f
	and	w1, w14, #0x7f
	csneg	w0, w1, w0, mi
	add	w0, w15, w0, lsl #7
	strb	wzr, [x16]
	ldrh	w1, [x17]
	and	w1, w1, #0x1f
	ldr	w0, [x12, w0, sxtw #2]
	cmp	w0, w1
	b.hs	LBB23_17
; %bb.19:                               ;   in Loop: Header=BB23_18 Depth=3
	strb	w9, [x16]
	b	LBB23_17
LBB23_20:
Ltmp41:
	sub	x0, x29, #88
	sub	x1, x29, #136
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp42:
; %bb.21:
Ltmp44:
	sub	x0, x29, #88
	mov	w1, #1
	bl	__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
Ltmp45:
; %bb.22:
	ldursb	w8, [x29, #-65]
	tbnz	w8, #31, LBB23_60
; %bb.23:
	ldursb	w8, [x29, #-113]
	tbnz	w8, #31, LBB23_61
LBB23_24:
	mov	w8, #10
	sturb	w8, [x29, #-137]
	mov	w8, #29808
	sturh	w8, [x29, #-152]
Lloh60:
	adrp	x8, l_.str.4@PAGE
Lloh61:
	add	x8, x8, l_.str.4@PAGEOFF
Lloh62:
	ldr	x8, [x8]
	stur	x8, [x29, #-160]
	sturb	wzr, [x29, #-150]
Ltmp47:
Lloh63:
	adrp	x0, __Z11ProcessOpt1PKtiiPjiPh@PAGE
Lloh64:
	add	x0, x0, __Z11ProcessOpt1PKtiiPjiPh@PAGEOFF
	sub	x1, x29, #160
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp48:
; %bb.25:
	ldursb	w8, [x29, #-137]
	tbz	w8, #31, LBB23_27
; %bb.26:
	ldur	x0, [x29, #-160]
	bl	__ZdlPv
LBB23_27:
	mov	w8, #7
	sturb	w8, [x29, #-161]
	mov	w8, #28233
	movk	w8, #26980, lsl #16
	stur	w8, [x29, #-184]
	mov	w8, #25449
	movk	w8, #29541, lsl #16
	stur	w8, [x19, #75]
	sturb	wzr, [x29, #-177]
Ltmp50:
Lloh65:
	adrp	x0, __Z11ProcessOpt2PKtiiPjiPh@PAGE
Lloh66:
	add	x0, x0, __Z11ProcessOpt2PKtiiPjiPh@PAGEOFF
	sub	x1, x29, #184
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp51:
; %bb.28:
	ldursb	w8, [x29, #-161]
	tbz	w8, #31, LBB23_30
; %bb.29:
	ldur	x0, [x29, #-184]
	bl	__ZdlPv
LBB23_30:
	mov	w8, #18
	strb	w8, [sp, #215]
	mov	w8, #12349
	strh	w8, [sp, #208]
Lloh67:
	adrp	x8, l_.str.6@PAGE
Lloh68:
	add	x8, x8, l_.str.6@PAGEOFF
Lloh69:
	ldr	q0, [x8]
	str	q0, [sp, #192]
	strb	wzr, [sp, #210]
Ltmp53:
Lloh70:
	adrp	x0, __Z11ProcessOpt3PKtiiPjiPh@PAGE
Lloh71:
	add	x0, x0, __Z11ProcessOpt3PKtiiPjiPh@PAGEOFF
	add	x1, sp, #192
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp54:
; %bb.31:
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB23_33
; %bb.32:
	ldr	x0, [sp, #192]
	bl	__ZdlPv
LBB23_33:
	mov	w8, #6
	strb	w8, [sp, #191]
	mov	w8, #25933
	movk	w8, #29549, lsl #16
	str	w8, [sp, #168]
	mov	w8, #29797
	strh	w8, [sp, #172]
	strb	wzr, [sp, #174]
Ltmp56:
Lloh72:
	adrp	x0, __Z11ProcessOpt4PKtiiPjiPh@PAGE
Lloh73:
	add	x0, x0, __Z11ProcessOpt4PKtiiPjiPh@PAGEOFF
	add	x1, sp, #168
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp57:
; %bb.34:
	ldrsb	w8, [sp, #191]
	tbz	w8, #31, LBB23_36
; %bb.35:
	ldr	x0, [sp, #168]
	bl	__ZdlPv
LBB23_36:
	mov	w8, #21
Lloh74:
	adrp	x9, l_.str.8@PAGE
Lloh75:
	add	x9, x9, l_.str.8@PAGEOFF
	strb	w8, [sp, #167]
	ldr	q0, [x9]
	str	q0, [sp, #144]
	ldur	x8, [x9, #13]
	stur	x8, [x19, #13]
	strb	wzr, [sp, #165]
Ltmp59:
Lloh76:
	adrp	x0, __Z11ProcessOpt5PKtiiPjiPh@PAGE
Lloh77:
	add	x0, x0, __Z11ProcessOpt5PKtiiPjiPh@PAGEOFF
	add	x1, sp, #144
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp60:
; %bb.37:
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB23_39
; %bb.38:
	ldr	x0, [sp, #144]
	bl	__ZdlPv
LBB23_39:
	mov	w8, #5
	strb	w8, [sp, #143]
	mov	w8, #28233
	movk	w8, #25956, lsl #16
	str	w8, [sp, #120]
	mov	w8, #120
	strh	w8, [sp, #124]
Ltmp62:
Lloh78:
	adrp	x0, __Z11ProcessOpt6PKtiiPjiPh@PAGE
Lloh79:
	add	x0, x0, __Z11ProcessOpt6PKtiiPjiPh@PAGEOFF
	add	x1, sp, #120
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp63:
; %bb.40:
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB23_42
; %bb.41:
	ldr	x0, [sp, #120]
	bl	__ZdlPv
LBB23_42:
	mov	w8, #4
	strb	w8, [sp, #119]
	mov	w8, #26956
	movk	w8, #30820, lsl #16
	str	w8, [sp, #96]
	strb	wzr, [sp, #100]
Ltmp65:
Lloh80:
	adrp	x0, __Z11ProcessOpt7PKtiiPjiPh@PAGE
Lloh81:
	add	x0, x0, __Z11ProcessOpt7PKtiiPjiPh@PAGEOFF
	add	x1, sp, #96
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp66:
; %bb.43:
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB23_45
; %bb.44:
	ldr	x0, [sp, #96]
	bl	__ZdlPv
LBB23_45:
	mov	w8, #9
	strb	w8, [sp, #95]
	mov	w8, #100
	strh	w8, [sp, #80]
Lloh82:
	adrp	x8, l_.str.11@PAGE
Lloh83:
	add	x8, x8, l_.str.11@PAGEOFF
Lloh84:
	ldr	x8, [x8]
	str	x8, [sp, #72]
Ltmp68:
Lloh85:
	adrp	x0, __Z11ProcessOpt8PKtiiPjiPh@PAGE
Lloh86:
	add	x0, x0, __Z11ProcessOpt8PKtiiPjiPh@PAGEOFF
	add	x1, sp, #72
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp69:
; %bb.46:
	ldrsb	w8, [sp, #95]
	tbz	w8, #31, LBB23_48
; %bb.47:
	ldr	x0, [sp, #72]
	bl	__ZdlPv
LBB23_48:
	mov	w8, #14
Lloh87:
	adrp	x9, l_.str.12@PAGE
Lloh88:
	add	x9, x9, l_.str.12@PAGEOFF
	strb	w8, [sp, #71]
	ldr	x8, [x9]
	str	x8, [sp, #48]
	ldur	x8, [x9, #6]
	stur	x8, [sp, #54]
	strb	wzr, [sp, #62]
Ltmp71:
Lloh89:
	adrp	x0, __Z11ProcessOpt9PKtiiPjiPh@PAGE
Lloh90:
	add	x0, x0, __Z11ProcessOpt9PKtiiPjiPh@PAGEOFF
	add	x1, sp, #48
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp72:
; %bb.49:
	ldrsb	w8, [sp, #71]
	tbz	w8, #31, LBB23_51
; %bb.50:
	ldr	x0, [sp, #48]
	bl	__ZdlPv
LBB23_51:
	mov	w8, #14
Lloh91:
	adrp	x9, l_.str.13@PAGE
Lloh92:
	add	x9, x9, l_.str.13@PAGEOFF
	strb	w8, [sp, #47]
	ldr	x8, [x9]
	str	x8, [sp, #24]
	ldur	x8, [x9, #6]
	stur	x8, [sp, #30]
	strb	wzr, [sp, #38]
Ltmp74:
Lloh93:
	adrp	x0, __Z12ProcessOpt10PKtiiPjiPh@PAGE
Lloh94:
	add	x0, x0, __Z12ProcessOpt10PKtiiPjiPh@PAGEOFF
	add	x1, sp, #24
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp75:
; %bb.52:
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB23_54
; %bb.53:
	ldr	x0, [sp, #24]
	bl	__ZdlPv
LBB23_54:
	mov	w8, #17
	strb	w8, [sp, #23]
	mov	w8, #103
	strh	w8, [sp, #16]
Lloh95:
	adrp	x8, l_.str.14@PAGE
Lloh96:
	add	x8, x8, l_.str.14@PAGEOFF
Lloh97:
	ldr	q0, [x8]
	str	q0, [sp]
Ltmp77:
Lloh98:
	adrp	x0, __Z12ProcessOpt11PKtiiPjiPh@PAGE
Lloh99:
	add	x0, x0, __Z12ProcessOpt11PKtiiPjiPh@PAGEOFF
	mov	x1, sp
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp78:
; %bb.55:
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB23_57
; %bb.56:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB23_57:
	bl	__Z7Cleanupv
	mov	w0, #0
	ldp	x29, x30, [sp, #400]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #384]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #368]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #352]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #336]            ; 16-byte Folded Reload
	add	sp, sp, #416
	ret
LBB23_58:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	ldursb	w8, [x29, #-89]
	tbz	w8, #31, LBB23_12
LBB23_59:
	ldur	x0, [x29, #-112]
	bl	__ZdlPv
	b	LBB23_12
LBB23_60:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	ldursb	w8, [x29, #-113]
	tbz	w8, #31, LBB23_24
LBB23_61:
	ldur	x0, [x29, #-136]
	bl	__ZdlPv
	b	LBB23_24
LBB23_62:
Ltmp79:
	mov	x19, x0
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB23_95
; %bb.63:
	ldr	x0, [sp]
	b	LBB23_94
LBB23_64:
Ltmp76:
	mov	x19, x0
	ldrsb	w8, [sp, #47]
	tbz	w8, #31, LBB23_95
; %bb.65:
	ldr	x0, [sp, #24]
	b	LBB23_94
LBB23_66:
Ltmp73:
	mov	x19, x0
	ldrsb	w8, [sp, #71]
	tbz	w8, #31, LBB23_95
; %bb.67:
	ldr	x0, [sp, #48]
	b	LBB23_94
LBB23_68:
Ltmp70:
	mov	x19, x0
	ldrsb	w8, [sp, #95]
	tbz	w8, #31, LBB23_95
; %bb.69:
	ldr	x0, [sp, #72]
	b	LBB23_94
LBB23_70:
Ltmp67:
	mov	x19, x0
	ldrsb	w8, [sp, #119]
	tbz	w8, #31, LBB23_95
; %bb.71:
	ldr	x0, [sp, #96]
	b	LBB23_94
LBB23_72:
Ltmp64:
	mov	x19, x0
	ldrsb	w8, [sp, #143]
	tbz	w8, #31, LBB23_95
; %bb.73:
	ldr	x0, [sp, #120]
	b	LBB23_94
LBB23_74:
Ltmp61:
	mov	x19, x0
	ldrsb	w8, [sp, #167]
	tbz	w8, #31, LBB23_95
; %bb.75:
	ldr	x0, [sp, #144]
	b	LBB23_94
LBB23_76:
Ltmp58:
	mov	x19, x0
	ldrsb	w8, [sp, #191]
	tbz	w8, #31, LBB23_95
; %bb.77:
	ldr	x0, [sp, #168]
	b	LBB23_94
LBB23_78:
Ltmp55:
	mov	x19, x0
	ldrsb	w8, [sp, #215]
	tbz	w8, #31, LBB23_95
; %bb.79:
	ldr	x0, [sp, #192]
	b	LBB23_94
LBB23_80:
Ltmp52:
	mov	x19, x0
	ldursb	w8, [x29, #-161]
	tbz	w8, #31, LBB23_95
; %bb.81:
	ldur	x0, [x29, #-184]
	b	LBB23_94
LBB23_82:
Ltmp49:
	mov	x19, x0
	ldursb	w8, [x29, #-137]
	tbz	w8, #31, LBB23_95
; %bb.83:
	ldur	x0, [x29, #-160]
	b	LBB23_94
LBB23_84:
Ltmp46:
	mov	x19, x0
	ldursb	w8, [x29, #-65]
	tbz	w8, #31, LBB23_87
; %bb.85:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	b	LBB23_87
LBB23_86:
Ltmp43:
	mov	x19, x0
LBB23_87:
	ldursb	w8, [x29, #-113]
	tbz	w8, #31, LBB23_95
; %bb.88:
	ldur	x0, [x29, #-136]
	b	LBB23_94
LBB23_89:
Ltmp40:
	mov	x19, x0
	ldursb	w8, [x29, #-65]
	tbz	w8, #31, LBB23_92
; %bb.90:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	b	LBB23_92
LBB23_91:
Ltmp37:
	mov	x19, x0
LBB23_92:
	ldursb	w8, [x29, #-89]
	tbz	w8, #31, LBB23_95
; %bb.93:
	ldur	x0, [x29, #-112]
LBB23_94:
	bl	__ZdlPv
LBB23_95:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAddLdr	Lloh60, Lloh61, Lloh62
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh70, Lloh71
	.loh AdrpAddLdr	Lloh67, Lloh68, Lloh69
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpAdd	Lloh78, Lloh79
	.loh AdrpAdd	Lloh80, Lloh81
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAddLdr	Lloh82, Lloh83, Lloh84
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAddLdr	Lloh95, Lloh96, Lloh97
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table23:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp35-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp35
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp35-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp36-Ltmp35                  ;   Call between Ltmp35 and Ltmp36
	.uleb128 Ltmp37-Lfunc_begin3            ;     jumps to Ltmp37
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Ltmp39-Ltmp38                  ;   Call between Ltmp38 and Ltmp39
	.uleb128 Ltmp40-Lfunc_begin3            ;     jumps to Ltmp40
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin3            ; >> Call Site 4 <<
	.uleb128 Ltmp42-Ltmp41                  ;   Call between Ltmp41 and Ltmp42
	.uleb128 Ltmp43-Lfunc_begin3            ;     jumps to Ltmp43
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp44-Lfunc_begin3            ; >> Call Site 5 <<
	.uleb128 Ltmp45-Ltmp44                  ;   Call between Ltmp44 and Ltmp45
	.uleb128 Ltmp46-Lfunc_begin3            ;     jumps to Ltmp46
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp47-Lfunc_begin3            ; >> Call Site 6 <<
	.uleb128 Ltmp48-Ltmp47                  ;   Call between Ltmp47 and Ltmp48
	.uleb128 Ltmp49-Lfunc_begin3            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin3            ; >> Call Site 7 <<
	.uleb128 Ltmp51-Ltmp50                  ;   Call between Ltmp50 and Ltmp51
	.uleb128 Ltmp52-Lfunc_begin3            ;     jumps to Ltmp52
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp53-Lfunc_begin3            ; >> Call Site 8 <<
	.uleb128 Ltmp54-Ltmp53                  ;   Call between Ltmp53 and Ltmp54
	.uleb128 Ltmp55-Lfunc_begin3            ;     jumps to Ltmp55
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp56-Lfunc_begin3            ; >> Call Site 9 <<
	.uleb128 Ltmp57-Ltmp56                  ;   Call between Ltmp56 and Ltmp57
	.uleb128 Ltmp58-Lfunc_begin3            ;     jumps to Ltmp58
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp59-Lfunc_begin3            ; >> Call Site 10 <<
	.uleb128 Ltmp60-Ltmp59                  ;   Call between Ltmp59 and Ltmp60
	.uleb128 Ltmp61-Lfunc_begin3            ;     jumps to Ltmp61
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp62-Lfunc_begin3            ; >> Call Site 11 <<
	.uleb128 Ltmp63-Ltmp62                  ;   Call between Ltmp62 and Ltmp63
	.uleb128 Ltmp64-Lfunc_begin3            ;     jumps to Ltmp64
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp65-Lfunc_begin3            ; >> Call Site 12 <<
	.uleb128 Ltmp66-Ltmp65                  ;   Call between Ltmp65 and Ltmp66
	.uleb128 Ltmp67-Lfunc_begin3            ;     jumps to Ltmp67
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp68-Lfunc_begin3            ; >> Call Site 13 <<
	.uleb128 Ltmp69-Ltmp68                  ;   Call between Ltmp68 and Ltmp69
	.uleb128 Ltmp70-Lfunc_begin3            ;     jumps to Ltmp70
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp71-Lfunc_begin3            ; >> Call Site 14 <<
	.uleb128 Ltmp72-Ltmp71                  ;   Call between Ltmp71 and Ltmp72
	.uleb128 Ltmp73-Lfunc_begin3            ;     jumps to Ltmp73
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp74-Lfunc_begin3            ; >> Call Site 15 <<
	.uleb128 Ltmp75-Ltmp74                  ;   Call between Ltmp74 and Ltmp75
	.uleb128 Ltmp76-Lfunc_begin3            ;     jumps to Ltmp76
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp77-Lfunc_begin3            ; >> Call Site 16 <<
	.uleb128 Ltmp78-Ltmp77                  ;   Call between Ltmp77 and Ltmp78
	.uleb128 Ltmp79-Lfunc_begin3            ;     jumps to Ltmp79
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp78-Lfunc_begin3            ; >> Call Site 17 <<
	.uleb128 Lfunc_end3-Ltmp78              ;   Call between Ltmp78 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate ; -- Begin function __clang_call_terminate
	.globl	___clang_call_terminate
	.weak_def_can_be_hidden	___clang_call_terminate
	.p2align	2
___clang_call_terminate:                ; @__clang_call_terminate
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	bl	___cxa_begin_catch
	bl	__ZSt9terminatev
                                        ; -- End function
	.private_extern	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev ; -- Begin function _ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.globl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.weak_def_can_be_hidden	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.p2align	2
__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev: ; @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
Lloh100:
	adrp	x0, l_.str.15@PAGE
Lloh101:
	add	x0, x0, l_.str.15@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.loh AdrpAdd	Lloh100, Lloh101
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB6v15006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB6v15006EPKc
	.globl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB6v15006EPKc: ; @_ZNSt3__120__throw_length_errorB6v15006EPKc
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
; %bb.0:
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	x20, x0
	mov	w0, #16
	bl	___cxa_allocate_exception
	mov	x19, x0
Ltmp80:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B6v15006EPKc
Ltmp81:
; %bb.1:
Lloh102:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh103:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh104:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh105:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB26_2:
Ltmp82:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh104, Lloh105
	.loh AdrpLdrGot	Lloh102, Lloh103
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table26:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Lfunc_begin4-Lfunc_begin4      ; >> Call Site 1 <<
	.uleb128 Ltmp80-Lfunc_begin4            ;   Call between Lfunc_begin4 and Ltmp80
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp80-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp81-Ltmp80                  ;   Call between Ltmp80 and Ltmp81
	.uleb128 Ltmp82-Lfunc_begin4            ;     jumps to Ltmp82
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Lfunc_end4-Ltmp81              ;   Call between Ltmp81 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt12length_errorC1B6v15006EPKc ; -- Begin function _ZNSt12length_errorC1B6v15006EPKc
	.globl	__ZNSt12length_errorC1B6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt12length_errorC1B6v15006EPKc
	.p2align	2
__ZNSt12length_errorC1B6v15006EPKc:     ; @_ZNSt12length_errorC1B6v15006EPKc
	.cfi_startproc
; %bb.0:
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	mov	x29, sp
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	__ZNSt11logic_errorC2EPKc
Lloh106:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh107:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh106, Lloh107
	.cfi_endproc
                                        ; -- End function
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin5:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception5
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
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
Ltmp83:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp84:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB28_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB28_7
; %bb.3:
Ltmp86:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp87:
; %bb.4:
Ltmp88:
Lloh108:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh109:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp89:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp90:
	mov	w1, #32
	blr	x8
Ltmp91:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB28_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp93:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp94:
; %bb.8:
	cbnz	x0, LBB28_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp96:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp97:
LBB28_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB28_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB28_12:
Ltmp98:
	b	LBB28_15
LBB28_13:
Ltmp92:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB28_16
LBB28_14:
Ltmp95:
LBB28_15:
	mov	x20, x0
LBB28_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB28_18
LBB28_17:
Ltmp85:
	mov	x20, x0
LBB28_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp99:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp100:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB28_11
LBB28_20:
Ltmp101:
	mov	x19, x0
Ltmp102:
	bl	___cxa_end_catch
Ltmp103:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB28_22:
Ltmp104:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh108, Lloh109
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table28:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Ltmp83-Lfunc_begin5            ; >> Call Site 1 <<
	.uleb128 Ltmp84-Ltmp83                  ;   Call between Ltmp83 and Ltmp84
	.uleb128 Ltmp85-Lfunc_begin5            ;     jumps to Ltmp85
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp86-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp87-Ltmp86                  ;   Call between Ltmp86 and Ltmp87
	.uleb128 Ltmp95-Lfunc_begin5            ;     jumps to Ltmp95
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp88-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Ltmp91-Ltmp88                  ;   Call between Ltmp88 and Ltmp91
	.uleb128 Ltmp92-Lfunc_begin5            ;     jumps to Ltmp92
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp93-Lfunc_begin5            ; >> Call Site 4 <<
	.uleb128 Ltmp94-Ltmp93                  ;   Call between Ltmp93 and Ltmp94
	.uleb128 Ltmp95-Lfunc_begin5            ;     jumps to Ltmp95
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp96-Lfunc_begin5            ; >> Call Site 5 <<
	.uleb128 Ltmp97-Ltmp96                  ;   Call between Ltmp96 and Ltmp97
	.uleb128 Ltmp98-Lfunc_begin5            ;     jumps to Ltmp98
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp97-Lfunc_begin5            ; >> Call Site 6 <<
	.uleb128 Ltmp99-Ltmp97                  ;   Call between Ltmp97 and Ltmp99
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp99-Lfunc_begin5            ; >> Call Site 7 <<
	.uleb128 Ltmp100-Ltmp99                 ;   Call between Ltmp99 and Ltmp100
	.uleb128 Ltmp101-Lfunc_begin5           ;     jumps to Ltmp101
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp100-Lfunc_begin5           ; >> Call Site 8 <<
	.uleb128 Ltmp102-Ltmp100                ;   Call between Ltmp100 and Ltmp102
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp102-Lfunc_begin5           ; >> Call Site 9 <<
	.uleb128 Ltmp103-Ltmp102                ;   Call between Ltmp102 and Ltmp103
	.uleb128 Ltmp104-Lfunc_begin5           ;     jumps to Ltmp104
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp103-Lfunc_begin5           ; >> Call Site 10 <<
	.uleb128 Lfunc_end5-Ltmp103             ;   Call between Ltmp103 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
	.byte	1                               ; >> Action Record 1 <<
                                        ;   Catch TypeInfo 1
	.byte	0                               ;   No further actions
	.p2align	2
                                        ; >> Catch TypeInfos <<
	.long	0                               ; TypeInfo 1
Lttbase0:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_ ; -- Begin function _ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_def_can_be_hidden	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	2
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ; @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
; %bb.0:
	sub	sp, sp, #112
	.cfi_def_cfa_offset 112
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
	cbz	x0, LBB29_16
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
	b.lt	LBB29_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB29_15
LBB29_3:
	cmp	x23, #1
	b.lt	LBB29_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB29_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB29_7
; %bb.6:
	add	x25, sp, #8
	strb	w23, [sp, #31]
	b	LBB29_8
LBB29_7:
	add	x8, x23, #16
	and	x26, x8, #0xfffffffffffffff0
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB29_8:
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
Ltmp105:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp106:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB29_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB29_15
	b	LBB29_12
LBB29_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB29_15
LBB29_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB29_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB29_15
LBB29_14:
	str	xzr, [x20, #24]
	b	LBB29_16
LBB29_15:
	mov	x19, #0
LBB29_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB29_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB29_18:
Ltmp107:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB29_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB29_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end6:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table29:
Lexception6:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end6-Lcst_begin6
Lcst_begin6:
	.uleb128 Lfunc_begin6-Lfunc_begin6      ; >> Call Site 1 <<
	.uleb128 Ltmp105-Lfunc_begin6           ;   Call between Lfunc_begin6 and Ltmp105
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp105-Lfunc_begin6           ; >> Call Site 2 <<
	.uleb128 Ltmp106-Ltmp105                ;   Call between Ltmp105 and Ltmp106
	.uleb128 Ltmp107-Lfunc_begin6           ;     jumps to Ltmp107
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp106-Lfunc_begin6           ; >> Call Site 3 <<
	.uleb128 Lfunc_end6-Ltmp106             ;   Call between Ltmp106 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
	.p2align	2
                                        ; -- End function
	.globl	_org                            ; @org
.zerofill __DATA,__common,_org,8,3
	.globl	_temp                           ; @temp
.zerofill __DATA,__common,_temp,8,3
	.globl	_lut                            ; @lut
.zerofill __DATA,__common,_lut,8,3
	.globl	_lidx                           ; @lidx
.zerofill __DATA,__common,_lidx,8,3
	.globl	_lutMerged                      ; @lutMerged
.zerofill __DATA,__common,_lutMerged,8,3
	.globl	_outOrg                         ; @outOrg
.zerofill __DATA,__common,_outOrg,8,3
	.globl	_outWork                        ; @outWork
.zerofill __DATA,__common,_outWork,8,3
	.globl	_StartTime                      ; @StartTime
.zerofill __DATA,__common,_StartTime,8,3
	.globl	_orgProcessTime                 ; @orgProcessTime
.zerofill __DATA,__common,_orgProcessTime,8,3
	.globl	_process                        ; @process
.zerofill __DATA,__common,_process,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	" "

l_.str.1:                               ; @.str.1
	.asciz	"%"

	.section	__TEXT,__literal8,8byte_literals
	.p2align	2                               ; @__const._Z12ProcessOpt10PKtiiPjiPh.tab2
l___const._Z12ProcessOpt10PKtiiPjiPh.tab2:
	.long	0                               ; 0x0
	.long	32                              ; 0x20

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"OH NOES output is not correct! "

l_.str.4:                               ; @.str.4
	.asciz	"OpenMP opt"

l_.str.5:                               ; @.str.5
	.asciz	"Indices"

l_.str.6:                               ; @.str.6
	.asciz	"Remove output[i]=0"

l_.str.7:                               ; @.str.7
	.asciz	"Memset"

l_.str.8:                               ; @.str.8
	.asciz	"Mod replaced with and"

l_.str.9:                               ; @.str.9
	.asciz	"Index"

l_.str.11:                              ; @.str.11
	.asciz	"LutMerged"

l_.str.12:                              ; @.str.12
	.asciz	"No double loop"

l_.str.13:                              ; @.str.13
	.asciz	"Try > and tab?"

l_.str.14:                              ; @.str.14
	.asciz	"Unroll that thing"

l_.str.15:                              ; @.str.15
	.asciz	"basic_string"

.subsections_via_symbols
