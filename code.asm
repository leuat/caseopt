	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
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
Lloh0:
	adrp	x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh1:
	ldr	x20, [x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [x0]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	add	x0, x0, #8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x19, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	__Z15ProcessOrgCountPKtiiPjiPh  ; -- Begin function _Z15ProcessOrgCountPKtiiPjiPh
	.p2align	2
__Z15ProcessOrgCountPKtiiPjiPh:         ; @_Z15ProcessOrgCountPKtiiPjiPh
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception0
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
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
	mov	x19, x2
	mov	x20, x1
	mov	w23, #0
	cmp	w1, #1
	b.lt	LBB1_8
; %bb.1:
	cmp	w19, #1
	b.lt	LBB1_8
; %bb.2:
	mov	x8, #0
	mov	w23, #0
	mov	w9, #32
	mov	w10, w20
	mov	w11, w19
	b	LBB1_4
LBB1_3:                                 ;   in Loop: Header=BB1_4 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x10
	b.eq	LBB1_8
LBB1_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB1_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w4
	msub	w14, w14, w4, w8
	b	LBB1_6
LBB1_5:                                 ;   in Loop: Header=BB1_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x10
	cmp	x11, x13
	b.eq	LBB1_3
LBB1_6:                                 ;   Parent Loop BB1_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w4
	msub	w15, w15, w4, w13
	madd	w15, w15, w4, w14
	strb	wzr, [x5, x12]
	ldrh	w16, [x0, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x3, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB1_5
; %bb.7:                                ;   in Loop: Header=BB1_6 Depth=2
	strb	w9, [x5, x12]
	add	w23, w23, #1
	b	LBB1_5
LBB1_8:
	adrp	x22, _isFirst@PAGE
	ldrb	w8, [x22, _isFirst@PAGEOFF]
	cbz	w8, LBB1_18
; %bb.9:
Lloh2:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh3:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh4:
	adrp	x1, l_.str@PAGE
Lloh5:
	add	x1, x1, l_.str@PAGEOFF
	mov	w2, #31
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	mov	x21, x0
	scvtf	d0, w23
	mul	w8, w19, w20
	scvtf	d1, w8
	mov	x8, #4636737291354636288
	fmov	d2, x8
	fmul	d0, d0, d2
	fdiv	d0, d0, d1
	mov	x19, sp
	mov	x8, sp
	bl	__ZNSt3__19to_stringEd
	ldrb	w8, [sp, #23]
	sxtb	w9, w8
	ldp	x10, x11, [sp]
	cmp	w9, #0
	csel	x1, x10, x19, lt
	csel	x2, x11, x8, lt
Ltmp0:
	mov	x0, x21
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp1:
; %bb.10:
Ltmp2:
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp3:
; %bb.11:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp4:
	add	x8, sp, #24
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp5:
; %bb.12:
Ltmp6:
Lloh8:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh9:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp7:
; %bb.13:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp8:
	mov	w1, #10
	blr	x8
Ltmp9:
; %bb.14:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
Ltmp11:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp12:
; %bb.15:
Ltmp13:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp14:
; %bb.16:
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB1_18
; %bb.17:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB1_18:
	strb	wzr, [x22, _isFirst@PAGEOFF]
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
LBB1_19:
Ltmp10:
	mov	x19, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB1_21
LBB1_20:
Ltmp15:
	mov	x19, x0
LBB1_21:
	ldrsb	w8, [sp, #23]
	tbz	w8, #31, LBB1_23
; %bb.22:
	ldr	x0, [sp]
	bl	__ZdlPv
LBB1_23:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpLdrGot	Lloh2, Lloh3
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpLdrGot	Lloh8, Lloh9
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table1:
Lexception0:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end0-Lcst_begin0
Lcst_begin0:
	.uleb128 Lfunc_begin0-Lfunc_begin0      ; >> Call Site 1 <<
	.uleb128 Ltmp0-Lfunc_begin0             ;   Call between Lfunc_begin0 and Ltmp0
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp0-Lfunc_begin0             ; >> Call Site 2 <<
	.uleb128 Ltmp5-Ltmp0                    ;   Call between Ltmp0 and Ltmp5
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp6-Lfunc_begin0             ; >> Call Site 3 <<
	.uleb128 Ltmp9-Ltmp6                    ;   Call between Ltmp6 and Ltmp9
	.uleb128 Ltmp10-Lfunc_begin0            ;     jumps to Ltmp10
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp11-Lfunc_begin0            ; >> Call Site 4 <<
	.uleb128 Ltmp14-Ltmp11                  ;   Call between Ltmp11 and Ltmp14
	.uleb128 Ltmp15-Lfunc_begin0            ;     jumps to Ltmp15
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp14-Lfunc_begin0            ; >> Call Site 5 <<
	.uleb128 Lfunc_end0-Ltmp14              ;   Call between Ltmp14 and Lfunc_end0
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
Ltmp16:
Lloh10:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh11:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp17:
; %bb.1:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp18:
	mov	w1, #10
	blr	x8
Ltmp19:
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
LBB3_3:
Ltmp20:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh10, Lloh11
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception1:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end1-Lcst_begin1
Lcst_begin1:
	.uleb128 Lfunc_begin1-Lfunc_begin1      ; >> Call Site 1 <<
	.uleb128 Ltmp16-Lfunc_begin1            ;   Call between Lfunc_begin1 and Ltmp16
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp16-Lfunc_begin1            ; >> Call Site 2 <<
	.uleb128 Ltmp19-Ltmp16                  ;   Call between Ltmp16 and Ltmp19
	.uleb128 Ltmp20-Lfunc_begin1            ;     jumps to Ltmp20
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp19-Lfunc_begin1            ; >> Call Site 3 <<
	.uleb128 Lfunc_end1-Ltmp19              ;   Call between Ltmp19 and Lfunc_end1
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end1:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z10ProcessOrgPKtiiPjiPh       ; -- Begin function _Z10ProcessOrgPKtiiPjiPh
	.p2align	2
__Z10ProcessOrgPKtiiPjiPh:              ; @_Z10ProcessOrgPKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB4_8
; %bb.1:
	cmp	w2, #1
	b.lt	LBB4_8
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, #32
	mov	w11, w2
	b	LBB4_4
LBB4_3:                                 ;   in Loop: Header=BB4_4 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.eq	LBB4_8
LBB4_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w4
	msub	w14, w14, w4, w8
	b	LBB4_6
LBB4_5:                                 ;   in Loop: Header=BB4_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB4_3
LBB4_6:                                 ;   Parent Loop BB4_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w4
	msub	w15, w15, w4, w13
	madd	w15, w15, w4, w14
	strb	wzr, [x5, x12]
	ldrh	w16, [x0, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x3, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB4_5
; %bb.7:                                ;   in Loop: Header=BB4_6 Depth=2
	strb	w10, [x5, x12]
	b	LBB4_5
LBB4_8:
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
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception2
; %bb.0:
	sub	sp, sp, #176
	.cfi_def_cfa_offset 176
	stp	d9, d8, [sp, #112]              ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	add	x29, sp, #160
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset b8, -56
	.cfi_offset b9, -64
	mov	x20, x1
	mov	x19, x0
Lloh12:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh13:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh14:
	ldr	x8, [x8]
	stur	x8, [x29, #-56]
	bl	__ZNSt3__16chrono12system_clock3nowEv
Lloh15:
	adrp	x8, _StartTime@PAGE
Lloh16:
	ldr	x8, [x8, _StartTime@PAGEOFF]
	sub	x8, x0, x8
	mov	x9, #63439
	movk	x9, #58195, lsl #16
	movk	x9, #39845, lsl #32
	movk	x9, #8388, lsl #48
	smulh	x8, x8, x9
	asr	x9, x8, #7
	add	x8, x9, x8, lsr #63
	scvtf	d8, x8
	mov	w8, #1
	strb	w8, [sp, #87]
	mov	w8, #32
	strh	w8, [sp, #64]
	adrp	x21, _orgProcessTime@PAGE
	cbz	w20, LBB6_2
; %bb.1:
	str	d8, [x21, _orgProcessTime@PAGEOFF]
	mov	w22, #1
	b	LBB6_9
LBB6_2:
	ldr	d0, [x21, _orgProcessTime@PAGEOFF]
	mov	x8, #4636737291354636288
	fmov	d1, x8
	fmul	d1, d8, d1
	fdiv	d0, d1, d0
	fcvtzs	w0, d0
Ltmp21:
	add	x8, sp, #8
	bl	__ZNSt3__19to_stringEi
Ltmp22:
; %bb.3:
Ltmp24:
Lloh17:
	adrp	x2, l_.str.3@PAGE
Lloh18:
	add	x2, x2, l_.str.3@PAGEOFF
	add	x0, sp, #8
	mov	x1, #0
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6insertEmPKc
Ltmp25:
; %bb.4:
	ldr	q0, [x0]
	ldr	x8, [x0, #16]
	str	x8, [sp, #48]
	str	q0, [sp, #32]
	stp	xzr, xzr, [x0, #8]
	str	xzr, [x0]
Ltmp27:
Lloh19:
	adrp	x1, l_.str.2@PAGE
Lloh20:
	add	x1, x1, l_.str.2@PAGEOFF
	add	x0, sp, #32
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6appendEPKc
Ltmp28:
; %bb.5:
	ldp	x20, x8, [x0]
	stur	x8, [x29, #-72]
	ldur	x8, [x0, #15]
	stur	x8, [x29, #-65]
	ldrb	w22, [x0, #23]
	stp	xzr, xzr, [x0, #8]
	str	xzr, [x0]
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB6_7
; %bb.6:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB6_7:
	ldur	x8, [x29, #-72]
	stp	x20, x8, [sp, #64]
	ldur	x8, [x29, #-65]
	stur	x8, [sp, #79]
	strb	w22, [sp, #87]
	ldrsb	w8, [sp, #55]
	tbnz	w8, #31, LBB6_34
; %bb.8:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB6_35
LBB6_9:
	adrp	x8, _experiment@PAGE
	ldr	w1, [x8, _experiment@PAGEOFF]
	add	w9, w1, #1
	str	w9, [x8, _experiment@PAGEOFF]
Ltmp30:
Lloh21:
	adrp	x0, _outFile@PAGE
Lloh22:
	add	x0, x0, _outFile@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
Ltmp31:
; %bb.10:
Ltmp32:
Lloh23:
	adrp	x1, l_.str.4@PAGE
Lloh24:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp33:
; %bb.11:
	ldrb	w8, [x19, #23]
	sxtb	w9, w8
	ldp	x10, x11, [x19]
	cmp	w9, #0
	csel	x1, x10, x19, lt
	csel	x2, x11, x8, lt
Ltmp34:
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp35:
; %bb.12:
Ltmp36:
Lloh25:
	adrp	x1, l_.str.4@PAGE
Lloh26:
	add	x1, x1, l_.str.4@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp37:
; %bb.13:
	mov	x20, x0
	ldr	d0, [x21, _orgProcessTime@PAGEOFF]
	mov	x8, #4636737291354636288
	fmov	d1, x8
	fmul	d1, d8, d1
	fdiv	d0, d1, d0
	fcvtzs	w0, d0
Ltmp38:
	add	x21, sp, #32
	add	x8, sp, #32
	bl	__ZNSt3__19to_stringEi
Ltmp39:
; %bb.14:
	ldrb	w8, [sp, #55]
	sxtb	w9, w8
	ldp	x10, x11, [sp, #32]
	cmp	w9, #0
	csel	x1, x10, x21, lt
	csel	x2, x11, x8, lt
Ltmp41:
	mov	x0, x20
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp42:
; %bb.15:
	mov	x20, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp43:
	add	x8, sp, #8
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp44:
; %bb.16:
Ltmp45:
Lloh27:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh28:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #8
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp46:
; %bb.17:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp47:
	mov	w1, #10
	blr	x8
Ltmp48:
; %bb.18:
	mov	x21, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
Ltmp50:
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp51:
; %bb.19:
Ltmp52:
	mov	x0, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp53:
; %bb.20:
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB6_22
; %bb.21:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
LBB6_22:
	ldrb	w8, [x19, #23]
	sxtb	w9, w8
	ldp	x10, x11, [x19]
	cmp	w9, #0
	csel	x1, x10, x19, lt
	csel	x2, x11, x8, lt
Ltmp55:
Lloh29:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh30:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp56:
; %bb.23:
Ltmp57:
Lloh31:
	adrp	x1, l_.str.3@PAGE
Lloh32:
	add	x1, x1, l_.str.3@PAGEOFF
	mov	w2, #1
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp58:
; %bb.24:
	sxtb	w8, w22
	ldp	x9, x10, [sp, #64]
	mov	w11, w22
	cmp	w8, #0
	add	x8, sp, #64
	csel	x1, x9, x8, lt
	csel	x2, x10, x11, lt
Ltmp59:
	bl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Ltmp60:
; %bb.25:
	mov	x19, x0
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x0, x0, x8
Ltmp61:
	add	x8, sp, #32
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp62:
; %bb.26:
Ltmp63:
Lloh33:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh34:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #32
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp64:
; %bb.27:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp65:
	mov	w1, #10
	blr	x8
Ltmp66:
; %bb.28:
	mov	x20, x0
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
Ltmp68:
	mov	x0, x19
	mov	x1, x20
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
Ltmp69:
; %bb.29:
Ltmp70:
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
Ltmp71:
; %bb.30:
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB6_32
; %bb.31:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB6_32:
	ldur	x8, [x29, #-56]
Lloh35:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh36:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh37:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB6_36
; %bb.33:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #112]              ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
LBB6_34:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB6_9
LBB6_35:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	b	LBB6_9
LBB6_36:
	bl	___stack_chk_fail
LBB6_37:
Ltmp29:
	mov	x19, x0
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB6_40
; %bb.38:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
	b	LBB6_40
LBB6_39:
Ltmp26:
	mov	x19, x0
LBB6_40:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB6_52
; %bb.41:
	ldr	x0, [sp, #8]
	b	LBB6_49
LBB6_42:
Ltmp23:
	b	LBB6_51
LBB6_43:
Ltmp40:
	b	LBB6_51
LBB6_44:
Ltmp67:
	mov	x19, x0
	add	x0, sp, #32
	bl	__ZNSt3__16localeD1Ev
	b	LBB6_52
LBB6_45:
Ltmp49:
	mov	x19, x0
	add	x0, sp, #8
	bl	__ZNSt3__16localeD1Ev
	b	LBB6_47
LBB6_46:
Ltmp54:
	mov	x19, x0
LBB6_47:
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB6_52
; %bb.48:
	ldr	x0, [sp, #32]
LBB6_49:
	bl	__ZdlPv
	b	LBB6_52
LBB6_50:
Ltmp72:
LBB6_51:
	mov	x19, x0
LBB6_52:
	ldrsb	w8, [sp, #87]
	tbz	w8, #31, LBB6_54
; %bb.53:
	ldr	x0, [sp, #64]
	bl	__ZdlPv
LBB6_54:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdr	Lloh15, Lloh16
	.loh AdrpLdrGotLdr	Lloh12, Lloh13, Lloh14
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdrGot	Lloh27, Lloh28
	.loh AdrpLdrGot	Lloh29, Lloh30
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpLdrGot	Lloh33, Lloh34
	.loh AdrpLdrGotLdr	Lloh35, Lloh36, Lloh37
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception2:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end2-Lcst_begin2
Lcst_begin2:
	.uleb128 Ltmp21-Lfunc_begin2            ; >> Call Site 1 <<
	.uleb128 Ltmp22-Ltmp21                  ;   Call between Ltmp21 and Ltmp22
	.uleb128 Ltmp23-Lfunc_begin2            ;     jumps to Ltmp23
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp24-Lfunc_begin2            ; >> Call Site 2 <<
	.uleb128 Ltmp25-Ltmp24                  ;   Call between Ltmp24 and Ltmp25
	.uleb128 Ltmp26-Lfunc_begin2            ;     jumps to Ltmp26
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp27-Lfunc_begin2            ; >> Call Site 3 <<
	.uleb128 Ltmp28-Ltmp27                  ;   Call between Ltmp27 and Ltmp28
	.uleb128 Ltmp29-Lfunc_begin2            ;     jumps to Ltmp29
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp30-Lfunc_begin2            ; >> Call Site 4 <<
	.uleb128 Ltmp37-Ltmp30                  ;   Call between Ltmp30 and Ltmp37
	.uleb128 Ltmp72-Lfunc_begin2            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp38-Lfunc_begin2            ; >> Call Site 5 <<
	.uleb128 Ltmp39-Ltmp38                  ;   Call between Ltmp38 and Ltmp39
	.uleb128 Ltmp40-Lfunc_begin2            ;     jumps to Ltmp40
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp41-Lfunc_begin2            ; >> Call Site 6 <<
	.uleb128 Ltmp44-Ltmp41                  ;   Call between Ltmp41 and Ltmp44
	.uleb128 Ltmp54-Lfunc_begin2            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp45-Lfunc_begin2            ; >> Call Site 7 <<
	.uleb128 Ltmp48-Ltmp45                  ;   Call between Ltmp45 and Ltmp48
	.uleb128 Ltmp49-Lfunc_begin2            ;     jumps to Ltmp49
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp50-Lfunc_begin2            ; >> Call Site 8 <<
	.uleb128 Ltmp53-Ltmp50                  ;   Call between Ltmp50 and Ltmp53
	.uleb128 Ltmp54-Lfunc_begin2            ;     jumps to Ltmp54
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp55-Lfunc_begin2            ; >> Call Site 9 <<
	.uleb128 Ltmp62-Ltmp55                  ;   Call between Ltmp55 and Ltmp62
	.uleb128 Ltmp72-Lfunc_begin2            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp63-Lfunc_begin2            ; >> Call Site 10 <<
	.uleb128 Ltmp66-Ltmp63                  ;   Call between Ltmp63 and Ltmp66
	.uleb128 Ltmp67-Lfunc_begin2            ;     jumps to Ltmp67
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp68-Lfunc_begin2            ; >> Call Site 11 <<
	.uleb128 Ltmp71-Ltmp68                  ;   Call between Ltmp68 and Ltmp71
	.uleb128 Ltmp72-Lfunc_begin2            ;     jumps to Ltmp72
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp71-Lfunc_begin2            ; >> Call Site 12 <<
	.uleb128 Lfunc_end2-Ltmp71              ;   Call between Ltmp71 and Lfunc_end2
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end2:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z11ProcessOpt1PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt1PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt1PKtiiPjiPh:             ; @_Z11ProcessOpt1PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB7_8
; %bb.1:
	cmp	w2, #1
	b.lt	LBB7_8
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, #32
	mov	w11, w2
	b	LBB7_4
LBB7_3:                                 ;   in Loop: Header=BB7_4 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.eq	LBB7_8
LBB7_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB7_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w4
	msub	w14, w14, w4, w8
	b	LBB7_6
LBB7_5:                                 ;   in Loop: Header=BB7_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB7_3
LBB7_6:                                 ;   Parent Loop BB7_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w4
	msub	w15, w15, w4, w13
	madd	w15, w15, w4, w14
	strb	wzr, [x5, x12]
	ldrh	w16, [x0, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x3, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB7_5
; %bb.7:                                ;   in Loop: Header=BB7_6 Depth=2
	strb	w10, [x5, x12]
	b	LBB7_5
LBB7_8:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt2PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt2PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt2PKtiiPjiPh:             ; @_Z11ProcessOpt2PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB8_8
; %bb.1:
	cmp	w2, #1
	b.lt	LBB8_8
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, #32
	mov	w11, w2
	b	LBB8_4
LBB8_3:                                 ;   in Loop: Header=BB8_4 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.eq	LBB8_8
LBB8_4:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB8_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w4
	msub	w14, w14, w4, w8
	b	LBB8_6
LBB8_5:                                 ;   in Loop: Header=BB8_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB8_3
LBB8_6:                                 ;   Parent Loop BB8_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w4
	msub	w15, w15, w4, w13
	madd	w15, w15, w4, w14
	strb	wzr, [x5, x12]
	ldrh	w16, [x0, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x3, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB8_5
; %bb.7:                                ;   in Loop: Header=BB8_6 Depth=2
	strb	w10, [x5, x12]
	b	LBB8_5
LBB8_8:
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z11ProcessOpt3PKtiiPjiPh      ; -- Begin function _Z11ProcessOpt3PKtiiPjiPh
	.p2align	2
__Z11ProcessOpt3PKtiiPjiPh:             ; @_Z11ProcessOpt3PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	cmp	w1, #1
	b.lt	LBB9_6
; %bb.1:
	cmp	w2, #1
	b.lt	LBB9_6
; %bb.2:
	mov	x8, #0
	mov	w9, w1
	mov	w10, w2
LBB9_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB9_4 Depth 2
	mov	x11, #0
	mov	x12, #0
	sdiv	w13, w8, w4
	msub	w13, w13, w4, w8
LBB9_4:                                 ;   Parent Loop BB9_3 Depth=1
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
	b.ne	LBB9_4
; %bb.5:                                ;   in Loop: Header=BB9_3 Depth=1
	add	x8, x8, #1
	add	x5, x5, #1
	add	x0, x0, #2
	cmp	x8, x9
	b.ne	LBB9_3
LBB9_6:
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
	b.lt	LBB10_8
; %bb.1:
	cmp	w23, #1
	b.lt	LBB10_8
; %bb.2:
	mov	x8, #0
	mov	w9, w24
	mov	w10, #32
	mov	w11, w23
	b	LBB10_4
LBB10_3:                                ;   in Loop: Header=BB10_4 Depth=1
	add	x8, x8, #1
	add	x22, x22, #2
	add	x19, x19, #1
	cmp	x8, x9
	b.eq	LBB10_8
LBB10_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB10_6 Depth 2
	mov	x12, #0
	mov	x13, #0
	sdiv	w14, w8, w20
	msub	w14, w14, w20, w8
	b	LBB10_6
LBB10_5:                                ;   in Loop: Header=BB10_6 Depth=2
	add	x13, x13, #1
	add	x12, x12, x9
	cmp	x11, x13
	b.eq	LBB10_3
LBB10_6:                                ;   Parent Loop BB10_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sdiv	w15, w13, w20
	msub	w15, w15, w20, w13
	madd	w15, w15, w20, w14
	ldrh	w16, [x22, x12, lsl #1]
	and	w16, w16, #0x1f
	ldr	w15, [x21, w15, sxtw #2]
	cmp	w15, w16
	b.hs	LBB10_5
; %bb.7:                                ;   in Loop: Header=BB10_6 Depth=2
	strb	w10, [x19, x12]
	b	LBB10_5
LBB10_8:
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
	b.lt	LBB11_8
; %bb.1:
	cmp	w23, #1
	b.lt	LBB11_8
; %bb.2:
	mov	x8, #0
	sub	w9, w20, #1
	mov	w10, #32
	mov	w11, w24
	mov	w12, w23
	b	LBB11_4
LBB11_3:                                ;   in Loop: Header=BB11_4 Depth=1
	add	x8, x8, #1
	add	x22, x22, #2
	add	x19, x19, #1
	cmp	x8, x11
	b.eq	LBB11_8
LBB11_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB11_6 Depth 2
	mov	x13, #0
	mov	x14, #0
	and	w15, w9, w8
	b	LBB11_6
LBB11_5:                                ;   in Loop: Header=BB11_6 Depth=2
	add	x14, x14, #1
	add	x13, x13, x11
	cmp	x12, x14
	b.eq	LBB11_3
LBB11_6:                                ;   Parent Loop BB11_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w16, w9, w14
	madd	w16, w16, w20, w15
	ldrh	w17, [x22, x13, lsl #1]
	and	w17, w17, #0x1f
	ldr	w16, [x21, w16, sxtw #2]
	cmp	w16, w17
	b.hs	LBB11_5
; %bb.7:                                ;   in Loop: Header=BB11_6 Depth=2
	strb	w10, [x19, x13]
	b	LBB11_5
LBB11_8:
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
	b.lt	LBB12_8
; %bb.1:
	cmp	w24, #1
	b.lt	LBB12_8
; %bb.2:
	mov	x15, #0
	mov	w8, #0
	sub	w9, w20, #1
	mov	w10, #32
	mov	w11, w24
	b	LBB12_4
LBB12_3:                                ;   in Loop: Header=BB12_4 Depth=1
	add	w8, w8, #1
	add	x15, x13, x12
	cmp	w8, w22
	b.eq	LBB12_8
LBB12_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB12_6 Depth 2
	mov	x12, #0
	and	w13, w8, w9
	mul	w14, w13, w20
	sxtw	x13, w15
	add	x15, x23, w15, sxtw #1
	add	x16, x19, x13
	b	LBB12_6
LBB12_5:                                ;   in Loop: Header=BB12_6 Depth=2
	add	x12, x12, #1
	cmp	w11, w12
	b.eq	LBB12_3
LBB12_6:                                ;   Parent Loop BB12_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w17, w12, w9
	add	w17, w17, w14
	ldrh	w0, [x15, x12, lsl #1]
	and	w0, w0, #0x1f
	ldr	w17, [x21, w17, sxtw #2]
	cmp	w17, w0
	b.hs	LBB12_5
; %bb.7:                                ;   in Loop: Header=BB12_6 Depth=2
	strb	w10, [x16, x12]
	b	LBB12_5
LBB12_8:
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
	b.lt	LBB13_8
; %bb.1:
	cmp	w22, #1
	b.lt	LBB13_8
; %bb.2:
	mov	w8, #0
	mov	w9, #0
	adrp	x10, _lidx@PAGE
	mov	w11, #32
	b	LBB13_4
LBB13_3:                                ;   in Loop: Header=BB13_4 Depth=1
	add	w8, w8, #1
	cmp	w8, w21
	b.eq	LBB13_8
LBB13_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB13_6 Depth 2
	sxtw	x12, w9
	add	w9, w9, w22
	mov	x13, x22
	b	LBB13_6
LBB13_5:                                ;   in Loop: Header=BB13_6 Depth=2
	add	x12, x12, #1
	subs	w13, w13, #1
	b.eq	LBB13_3
LBB13_6:                                ;   Parent Loop BB13_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrh	w14, [x23, x12, lsl #1]
	and	w14, w14, #0x1f
	ldr	x15, [x10, _lidx@PAGEOFF]
	ldr	w15, [x15, x12, lsl #2]
	ldr	w15, [x20, x15, lsl #2]
	cmp	w15, w14
	b.hs	LBB13_5
; %bb.7:                                ;   in Loop: Header=BB13_6 Depth=2
	strb	w11, [x19, x12]
	b	LBB13_5
LBB13_8:
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
	b.lt	LBB14_8
; %bb.1:
	cmp	w21, #1
	b.lt	LBB14_8
; %bb.2:
	mov	w8, #0
	mov	w9, #0
	adrp	x10, _lutMerged@PAGE
	mov	w11, #32
	b	LBB14_4
LBB14_3:                                ;   in Loop: Header=BB14_4 Depth=1
	add	w8, w8, #1
	cmp	w8, w20
	b.eq	LBB14_8
LBB14_4:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB14_6 Depth 2
	sxtw	x12, w9
	add	w9, w9, w21
	mov	x13, x21
	b	LBB14_6
LBB14_5:                                ;   in Loop: Header=BB14_6 Depth=2
	add	x12, x12, #1
	subs	w13, w13, #1
	b.eq	LBB14_3
LBB14_6:                                ;   Parent Loop BB14_4 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrh	w14, [x22, x12, lsl #1]
	and	w14, w14, #0x1f
	ldr	x15, [x10, _lutMerged@PAGEOFF]
	ldr	w15, [x15, x12, lsl #2]
	cmp	w15, w14
	b.hs	LBB14_5
; %bb.7:                                ;   in Loop: Header=BB14_6 Depth=2
	strb	w11, [x19, x12]
	b	LBB14_5
LBB14_8:
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
	b.lt	LBB15_5
; %bb.1:
	mov	x8, #0
	adrp	x9, _lutMerged@PAGE
	mov	w10, #32
	b	LBB15_3
LBB15_2:                                ;   in Loop: Header=BB15_3 Depth=1
	add	x8, x8, #1
	cmp	x21, x8
	b.eq	LBB15_5
LBB15_3:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w11, [x20, x8, lsl #1]
	and	w11, w11, #0x1f
	ldr	x12, [x9, _lutMerged@PAGEOFF]
	ldr	w12, [x12, x8, lsl #2]
	cmp	w12, w11
	b.hs	LBB15_2
; %bb.4:                                ;   in Loop: Header=BB15_3 Depth=1
	strb	w10, [x19, x8]
	b	LBB15_2
LBB15_5:
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
	mul	w8, w2, w1
	cmp	w8, #1
	b.lt	LBB16_3
; %bb.1:
	mov	x9, #0
	adrp	x10, _lutMerged@PAGE
Lloh38:
	adrp	x11, l___const._Z12ProcessOpt14PKtiiPjiPh.tab2@PAGE
Lloh39:
	add	x11, x11, l___const._Z12ProcessOpt14PKtiiPjiPh.tab2@PAGEOFF
LBB16_2:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w12, [x0, x9, lsl #1]
	and	w12, w12, #0x1f
	ldr	x13, [x10, _lutMerged@PAGEOFF]
	ldr	w13, [x13, x9, lsl #2]
	cmp	w13, w12
	cset	w12, lo
	ldr	w12, [x11, w12, uxtw #2]
	strb	w12, [x5, x9]
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	LBB16_2
LBB16_3:
	ret
	.loh AdrpAdd	Lloh38, Lloh39
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
	b.lt	LBB17_8
; %bb.1:
	and	w8, w21, #0x7
	adrp	x9, _lutMerged@PAGE
	cmp	w10, #7
	b.hs	LBB17_9
; %bb.2:
	mov	x10, #0
LBB17_3:
	cbz	w8, LBB17_8
; %bb.4:
	mov	w11, #32
	b	LBB17_6
LBB17_5:                                ;   in Loop: Header=BB17_6 Depth=1
	add	x10, x10, #1
	subs	w8, w8, #1
	b.eq	LBB17_8
LBB17_6:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w12, [x20, x10, lsl #1]
	and	w12, w12, #0x1f
	ldr	x13, [x9, _lutMerged@PAGEOFF]
	ldr	w13, [x13, x10, lsl #2]
	cmp	w13, w12
	b.hs	LBB17_5
; %bb.7:                                ;   in Loop: Header=BB17_6 Depth=1
	strb	w11, [x19, x10]
	b	LBB17_5
LBB17_8:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB17_9:
	mov	x10, #0
                                        ; kill: def $w21 killed $w21 killed $x21 def $x21
	and	x11, x21, #0xfffffff8
	add	x12, x20, #8
	add	x13, x19, #3
	mov	w14, #32
	b	LBB17_11
LBB17_10:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x10, x10, #8
	add	x12, x12, #16
	cmp	w11, w10
	b.eq	LBB17_3
LBB17_11:                               ; =>This Inner Loop Header: Depth=1
	ldurh	w15, [x12, #-8]
	and	w16, w15, #0x1f
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldr	w17, [x15, x10, lsl #2]
	cmp	w17, w16
	b.lo	LBB17_19
; %bb.12:                               ;   in Loop: Header=BB17_11 Depth=1
	ldurh	w16, [x12, #-6]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #4]
	cmp	w17, w16
	b.lo	LBB17_20
LBB17_13:                               ;   in Loop: Header=BB17_11 Depth=1
	ldurh	w16, [x12, #-4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #8]
	cmp	w17, w16
	b.lo	LBB17_21
LBB17_14:                               ;   in Loop: Header=BB17_11 Depth=1
	ldurh	w16, [x12, #-2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #12]
	cmp	w17, w16
	b.lo	LBB17_22
LBB17_15:                               ;   in Loop: Header=BB17_11 Depth=1
	ldrh	w16, [x12]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #16]
	cmp	w17, w16
	b.lo	LBB17_23
LBB17_16:                               ;   in Loop: Header=BB17_11 Depth=1
	ldrh	w16, [x12, #2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #20]
	cmp	w17, w16
	b.lo	LBB17_24
LBB17_17:                               ;   in Loop: Header=BB17_11 Depth=1
	ldrh	w16, [x12, #4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #24]
	cmp	w17, w16
	b.lo	LBB17_25
LBB17_18:                               ;   in Loop: Header=BB17_11 Depth=1
	ldrh	w16, [x12, #6]
	and	w16, w16, #0x1f
	add	x15, x15, x10, lsl #2
	ldr	w15, [x15, #28]
	cmp	w15, w16
	b.hs	LBB17_10
	b	LBB17_26
LBB17_19:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x15, x13, x10
	sturb	w14, [x15, #-3]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldurh	w16, [x12, #-6]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #4]
	cmp	w17, w16
	b.hs	LBB17_13
LBB17_20:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x15, x13, x10
	sturb	w14, [x15, #-2]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldurh	w16, [x12, #-4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #8]
	cmp	w17, w16
	b.hs	LBB17_14
LBB17_21:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x15, x13, x10
	sturb	w14, [x15, #-1]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldurh	w16, [x12, #-2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #12]
	cmp	w17, w16
	b.hs	LBB17_15
LBB17_22:                               ;   in Loop: Header=BB17_11 Depth=1
	strb	w14, [x13, x10]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #16]
	cmp	w17, w16
	b.hs	LBB17_16
LBB17_23:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #1]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12, #2]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #20]
	cmp	w17, w16
	b.hs	LBB17_17
LBB17_24:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #2]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12, #4]
	and	w16, w16, #0x1f
	add	x17, x15, x10, lsl #2
	ldr	w17, [x17, #24]
	cmp	w17, w16
	b.hs	LBB17_18
LBB17_25:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #3]
	ldr	x15, [x9, _lutMerged@PAGEOFF]
	ldrh	w16, [x12, #6]
	and	w16, w16, #0x1f
	add	x15, x15, x10, lsl #2
	ldr	w15, [x15, #28]
	cmp	w15, w16
	b.hs	LBB17_10
LBB17_26:                               ;   in Loop: Header=BB17_11 Depth=1
	add	x15, x13, x10
	strb	w14, [x15, #4]
	b	LBB17_10
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12ProcessOpt12PKtiiPjiPh     ; -- Begin function _Z12ProcessOpt12PKtiiPjiPh
	.p2align	2
__Z12ProcessOpt12PKtiiPjiPh:            ; @_Z12ProcessOpt12PKtiiPjiPh
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
	b.lt	LBB18_5
; %bb.1:
	mov	x8, #0
	adrp	x9, _lutMerged@PAGE
	mov	w10, #32
	b	LBB18_3
LBB18_2:                                ;   in Loop: Header=BB18_3 Depth=1
	add	x8, x8, #1
	cmp	x21, x8
	b.eq	LBB18_5
LBB18_3:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w11, [x20, x8, lsl #1]
	and	w11, w11, #0x1f
	ldr	x12, [x9, _lutMerged@PAGEOFF]
	ldr	w12, [x12, x8, lsl #2]
	cmp	w12, w11
	b.hs	LBB18_2
; %bb.4:                                ;   in Loop: Header=BB18_3 Depth=1
	strb	w10, [x19, x8]
	b	LBB18_2
LBB18_5:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12ProcessOpt13PKtiiPjiPh     ; -- Begin function _Z12ProcessOpt13PKtiiPjiPh
	.p2align	2
__Z12ProcessOpt13PKtiiPjiPh:            ; @_Z12ProcessOpt13PKtiiPjiPh
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
	subs	w8, w21, #2
	b.lt	LBB19_54
; %bb.1:
	sub	w9, w21, #1
	lsr	w10, w9, #1
	add	w13, w10, #1
	lsr	w10, w8, #1
	add	w11, w10, #1
	and	w10, w11, #0x7
	and	w11, w11, #0x7ffffff8
	and	w12, w13, #0x7
	and	w13, w13, #0x7ffffff8
	add	x14, x20, #18
	lsl	w15, w10, #2
	add	x16, x20, #16
	add	x17, x19, #8
	lsl	w0, w12, #2
	mov	w4, #1
	adrp	x1, _lutMerged@PAGE
	mov	w2, #32
	b	LBB19_3
LBB19_2:                                ;   in Loop: Header=BB19_3 Depth=1
	mov	w4, #0
	tbz	w3, #0, LBB19_59
LBB19_3:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB19_33 Depth 2
                                        ;     Child Loop BB19_52 Depth 2
                                        ;     Child Loop BB19_15 Depth 2
                                        ;     Child Loop BB19_9 Depth 2
	mov	x3, x4
	tbz	w4, #0, LBB19_11
; %bb.4:                                ;   in Loop: Header=BB19_3 Depth=1
	cmp	w9, #14
	b.hs	LBB19_13
; %bb.5:                                ;   in Loop: Header=BB19_3 Depth=1
	mov	x4, #0
LBB19_6:                                ;   in Loop: Header=BB19_3 Depth=1
	cbz	w12, LBB19_2
; %bb.7:                                ;   in Loop: Header=BB19_3 Depth=1
	mov	x5, x0
	b	LBB19_9
LBB19_8:                                ;   in Loop: Header=BB19_9 Depth=2
	add	x4, x4, #2
	subs	w5, w5, #4
	b.eq	LBB19_2
LBB19_9:                                ;   Parent Loop BB19_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrh	w6, [x20, x4, lsl #1]
	and	w6, w6, #0x1f
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldr	w7, [x7, x4, lsl #2]
	cmp	w7, w6
	b.hs	LBB19_8
; %bb.10:                               ;   in Loop: Header=BB19_9 Depth=2
	strb	w2, [x19, x4]
	b	LBB19_8
LBB19_11:                               ;   in Loop: Header=BB19_3 Depth=1
	cmp	w8, #14
	b.hs	LBB19_31
; %bb.12:                               ;   in Loop: Header=BB19_3 Depth=1
	mov	w4, #1
	cbnz	w10, LBB19_50
	b	LBB19_2
LBB19_13:                               ;   in Loop: Header=BB19_3 Depth=1
	mov	x4, #0
	mov	x5, x16
	mov	x6, x13
	b	LBB19_15
LBB19_14:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x4, x4, #16
	add	x5, x5, #32
	subs	w6, w6, #8
	b.eq	LBB19_6
LBB19_15:                               ;   Parent Loop BB19_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldurh	w7, [x5, #-16]
	and	w21, w7, #0x1f
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldr	w22, [x7, x4, lsl #2]
	cmp	w22, w21
	b.lo	LBB19_23
; %bb.16:                               ;   in Loop: Header=BB19_15 Depth=2
	ldurh	w21, [x5, #-12]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #8]
	cmp	w22, w21
	b.lo	LBB19_24
LBB19_17:                               ;   in Loop: Header=BB19_15 Depth=2
	ldurh	w21, [x5, #-8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #16]
	cmp	w22, w21
	b.lo	LBB19_25
LBB19_18:                               ;   in Loop: Header=BB19_15 Depth=2
	ldurh	w21, [x5, #-4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #24]
	cmp	w22, w21
	b.lo	LBB19_26
LBB19_19:                               ;   in Loop: Header=BB19_15 Depth=2
	ldrh	w21, [x5]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #32]
	cmp	w22, w21
	b.lo	LBB19_27
LBB19_20:                               ;   in Loop: Header=BB19_15 Depth=2
	ldrh	w21, [x5, #4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #40]
	cmp	w22, w21
	b.lo	LBB19_28
LBB19_21:                               ;   in Loop: Header=BB19_15 Depth=2
	ldrh	w21, [x5, #8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #48]
	cmp	w22, w21
	b.lo	LBB19_29
LBB19_22:                               ;   in Loop: Header=BB19_15 Depth=2
	ldrh	w21, [x5, #12]
	and	w21, w21, #0x1f
	add	x7, x7, x4, lsl #2
	ldr	w7, [x7, #56]
	cmp	w7, w21
	b.hs	LBB19_14
	b	LBB19_30
LBB19_23:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x7, x17, x4
	sturb	w2, [x7, #-8]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldurh	w21, [x5, #-12]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #8]
	cmp	w22, w21
	b.hs	LBB19_17
LBB19_24:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x7, x17, x4
	sturb	w2, [x7, #-6]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldurh	w21, [x5, #-8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #16]
	cmp	w22, w21
	b.hs	LBB19_18
LBB19_25:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x7, x17, x4
	sturb	w2, [x7, #-4]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldurh	w21, [x5, #-4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #24]
	cmp	w22, w21
	b.hs	LBB19_19
LBB19_26:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x7, x17, x4
	sturb	w2, [x7, #-2]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #32]
	cmp	w22, w21
	b.hs	LBB19_20
LBB19_27:                               ;   in Loop: Header=BB19_15 Depth=2
	strb	w2, [x17, x4]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5, #4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #40]
	cmp	w22, w21
	b.hs	LBB19_21
LBB19_28:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x7, x17, x4
	strb	w2, [x7, #2]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5, #8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #48]
	cmp	w22, w21
	b.hs	LBB19_22
LBB19_29:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x7, x17, x4
	strb	w2, [x7, #4]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5, #12]
	and	w21, w21, #0x1f
	add	x7, x7, x4, lsl #2
	ldr	w7, [x7, #56]
	cmp	w7, w21
	b.hs	LBB19_14
LBB19_30:                               ;   in Loop: Header=BB19_15 Depth=2
	add	x7, x17, x4
	strb	w2, [x7, #6]
	b	LBB19_14
LBB19_31:                               ;   in Loop: Header=BB19_3 Depth=1
	mov	x4, #0
	mov	x5, x14
	mov	x6, x11
	b	LBB19_33
LBB19_32:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x4, x4, #16
	add	x5, x5, #32
	subs	w6, w6, #8
	b.eq	LBB19_49
LBB19_33:                               ;   Parent Loop BB19_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldurh	w7, [x5, #-16]
	and	w21, w7, #0x1f
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #4]
	cmp	w22, w21
	b.lo	LBB19_41
; %bb.34:                               ;   in Loop: Header=BB19_33 Depth=2
	ldurh	w21, [x5, #-12]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #12]
	cmp	w22, w21
	b.lo	LBB19_42
LBB19_35:                               ;   in Loop: Header=BB19_33 Depth=2
	ldurh	w21, [x5, #-8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #20]
	cmp	w22, w21
	b.lo	LBB19_43
LBB19_36:                               ;   in Loop: Header=BB19_33 Depth=2
	ldurh	w21, [x5, #-4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #28]
	cmp	w22, w21
	b.lo	LBB19_44
LBB19_37:                               ;   in Loop: Header=BB19_33 Depth=2
	ldrh	w21, [x5]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #36]
	cmp	w22, w21
	b.lo	LBB19_45
LBB19_38:                               ;   in Loop: Header=BB19_33 Depth=2
	ldrh	w21, [x5, #4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #44]
	cmp	w22, w21
	b.lo	LBB19_46
LBB19_39:                               ;   in Loop: Header=BB19_33 Depth=2
	ldrh	w21, [x5, #8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #52]
	cmp	w22, w21
	b.lo	LBB19_47
LBB19_40:                               ;   in Loop: Header=BB19_33 Depth=2
	ldrh	w21, [x5, #12]
	and	w21, w21, #0x1f
	add	x7, x7, x4, lsl #2
	ldr	w7, [x7, #60]
	cmp	w7, w21
	b.hs	LBB19_32
	b	LBB19_48
LBB19_41:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #1]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldurh	w21, [x5, #-12]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #12]
	cmp	w22, w21
	b.hs	LBB19_35
LBB19_42:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #3]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldurh	w21, [x5, #-8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #20]
	cmp	w22, w21
	b.hs	LBB19_36
LBB19_43:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #5]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldurh	w21, [x5, #-4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #28]
	cmp	w22, w21
	b.hs	LBB19_37
LBB19_44:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #7]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #36]
	cmp	w22, w21
	b.hs	LBB19_38
LBB19_45:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #9]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5, #4]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #44]
	cmp	w22, w21
	b.hs	LBB19_39
LBB19_46:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #11]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5, #8]
	and	w21, w21, #0x1f
	add	x22, x7, x4, lsl #2
	ldr	w22, [x22, #52]
	cmp	w22, w21
	b.hs	LBB19_40
LBB19_47:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #13]
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldrh	w21, [x5, #12]
	and	w21, w21, #0x1f
	add	x7, x7, x4, lsl #2
	ldr	w7, [x7, #60]
	cmp	w7, w21
	b.hs	LBB19_32
LBB19_48:                               ;   in Loop: Header=BB19_33 Depth=2
	add	x7, x19, x4
	strb	w2, [x7, #15]
	b	LBB19_32
LBB19_49:                               ;   in Loop: Header=BB19_3 Depth=1
	add	x4, x4, #1
	cbz	w10, LBB19_2
LBB19_50:                               ;   in Loop: Header=BB19_3 Depth=1
	mov	x5, x15
	b	LBB19_52
LBB19_51:                               ;   in Loop: Header=BB19_52 Depth=2
	add	x4, x4, #2
	subs	w5, w5, #4
	b.eq	LBB19_2
LBB19_52:                               ;   Parent Loop BB19_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrh	w6, [x20, x4, lsl #1]
	and	w6, w6, #0x1f
	ldr	x7, [x1, _lutMerged@PAGEOFF]
	ldr	w7, [x7, x4, lsl #2]
	cmp	w7, w6
	b.hs	LBB19_51
; %bb.53:                               ;   in Loop: Header=BB19_52 Depth=2
	strb	w2, [x19, x4]
	b	LBB19_51
LBB19_54:
	subs	w9, w21, #1
	b.ne	LBB19_59
; %bb.55:
	mov	x8, #0
	lsr	w9, w9, #1
	add	w9, w9, #1
	adrp	x10, _lutMerged@PAGE
	mov	w11, #32
	b	LBB19_57
LBB19_56:                               ;   in Loop: Header=BB19_57 Depth=1
	add	x8, x8, #2
	subs	w9, w9, #1
	b.eq	LBB19_59
LBB19_57:                               ; =>This Inner Loop Header: Depth=1
	ldrh	w12, [x20, x8, lsl #1]
	and	w12, w12, #0x1f
	ldr	x13, [x10, _lutMerged@PAGEOFF]
	ldr	w13, [x13, x8, lsl #2]
	cmp	w13, w12
	b.hs	LBB19_56
; %bb.58:                               ;   in Loop: Header=BB19_57 Depth=1
	strb	w11, [x19, x8]
	b	LBB19_56
LBB19_59:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	__Z12ProcessOpt14PKtiiPjiPh     ; -- Begin function _Z12ProcessOpt14PKtiiPjiPh
	.p2align	2
__Z12ProcessOpt14PKtiiPjiPh:            ; @_Z12ProcessOpt14PKtiiPjiPh
	.cfi_startproc
; %bb.0:
	mul	w8, w2, w1
	cmp	w8, #1
	b.lt	LBB20_3
; %bb.1:
	mov	x9, #0
	adrp	x10, _lutMerged@PAGE
Lloh40:
	adrp	x11, l___const._Z12ProcessOpt14PKtiiPjiPh.tab2@PAGE
Lloh41:
	add	x11, x11, l___const._Z12ProcessOpt14PKtiiPjiPh.tab2@PAGEOFF
LBB20_2:                                ; =>This Inner Loop Header: Depth=1
	ldrh	w12, [x0, x9, lsl #1]
	and	w12, w12, #0x1f
	ldr	x13, [x10, _lutMerged@PAGEOFF]
	ldr	w13, [x13, x9, lsl #2]
	cmp	w13, w12
	cset	w12, lo
	ldr	w12, [x11, w12, uxtw #2]
	strb	w12, [x5, x9]
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	LBB20_2
LBB20_3:
	ret
	.loh AdrpAdd	Lloh40, Lloh41
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
LBB21_1:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	negs	w8, w0
	and	w8, w8, #0x3f
	and	w9, w0, #0x3f
	csneg	w8, w9, w8, mi
	str	w8, [x19, x20]
	add	x20, x20, #4
	cmp	x20, #16, lsl #12               ; =65536
	b.ne	LBB21_1
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
LBB22_1:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	ldr	x8, [x20, _org@PAGEOFF]
	strh	w0, [x8, x19, lsl #1]
	ldr	x8, [x21, _outWork@PAGEOFF]
	strb	wzr, [x8, x19]
	ldr	x8, [x22, _outOrg@PAGEOFF]
	strb	wzr, [x8, x19]
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB22_1
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
Lloh42:
	adrp	x9, _lidx@PAGE
Lloh43:
	ldr	x9, [x9, _lidx@PAGEOFF]
Lloh44:
	adrp	x10, _lut@PAGE
Lloh45:
	ldr	x10, [x10, _lut@PAGEOFF]
Lloh46:
	adrp	x11, _lutMerged@PAGE
Lloh47:
	ldr	x11, [x11, _lutMerged@PAGEOFF]
LBB23_1:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB23_2 Depth 2
	mov	x12, #0
	ubfiz	w13, w8, #7, #7
LBB23_2:                                ;   Parent Loop BB23_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w14, w12, #0x7f
	orr	w14, w14, w13
	lsl	x15, x12, #2
	str	w14, [x9, x15]
	ldr	w14, [x10, w14, uxtw #2]
	str	w14, [x11, x15]
	add	x12, x12, #1
	cmp	x12, #1024
	b.ne	LBB23_2
; %bb.3:                                ;   in Loop: Header=BB23_1 Depth=1
	add	x8, x8, #1
	add	x11, x11, #1, lsl #12           ; =4096
	add	x9, x9, #1, lsl #12             ; =4096
	cmp	x8, #1024
	b.ne	LBB23_1
; %bb.4:
	ret
	.loh AdrpLdr	Lloh46, Lloh47
	.loh AdrpLdr	Lloh44, Lloh45
	.loh AdrpLdr	Lloh42, Lloh43
	.cfi_endproc
                                        ; -- End function
	.globl	__Z4Initv                       ; -- Begin function _Z4Initv
	.p2align	2
__Z4Initv:                              ; @_Z4Initv
Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception3
; %bb.0:
	stp	x28, x27, [sp, #-96]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 96
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
	sub	sp, sp, #576
Lloh48:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh49:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh50:
	ldr	x8, [x8]
	stur	x8, [x29, #-88]
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
LBB24_1:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	negs	w8, w0
	and	w8, w8, #0x3f
	and	w9, w0, #0x3f
	csneg	w8, w9, w8, mi
	str	w8, [x19, x26]
	add	x26, x26, #4
	cmp	x26, #16, lsl #12               ; =65536
	b.ne	LBB24_1
; %bb.2:
	mov	x19, #0
LBB24_3:                                ; =>This Inner Loop Header: Depth=1
	bl	_rand
	ldr	x8, [x20, _org@PAGEOFF]
	strh	w0, [x8, x19, lsl #1]
	ldr	x8, [x25, _outWork@PAGEOFF]
	strb	wzr, [x8, x19]
	ldr	x8, [x24, _outOrg@PAGEOFF]
	strb	wzr, [x8, x19]
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB24_3
; %bb.4:
	mov	x8, #0
	ldr	x9, [x21, _lidx@PAGEOFF]
	ldr	x10, [x23, _lut@PAGEOFF]
	ldr	x11, [x22, _lutMerged@PAGEOFF]
LBB24_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB24_6 Depth 2
	mov	x12, #0
	ubfiz	w13, w8, #7, #7
LBB24_6:                                ;   Parent Loop BB24_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	and	w14, w12, #0x7f
	orr	w14, w14, w13
	lsl	x15, x12, #2
	str	w14, [x9, x15]
	ldr	w14, [x10, w14, uxtw #2]
	str	w14, [x11, x15]
	add	x12, x12, #1
	cmp	x12, #1024
	b.ne	LBB24_6
; %bb.7:                                ;   in Loop: Header=BB24_5 Depth=1
	add	x8, x8, #1
	add	x11, x11, #1, lsl #12           ; =4096
	add	x9, x9, #1, lsl #12             ; =4096
	cmp	x8, #1024
	b.ne	LBB24_5
; %bb.8:
Lloh51:
	adrp	x1, l_.str.5@PAGE
Lloh52:
	add	x1, x1, l_.str.5@PAGEOFF
	mov	x22, sp
	mov	x0, sp
	mov	w2, #16
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Lloh53:
	adrp	x8, _outFile@PAGE
Lloh54:
	add	x8, x8, _outFile@PAGEOFF
	mov	x19, x8
	ldr	x9, [x19], #8
	ldur	x9, [x9, #-24]
	add	x20, x8, x9
	ldr	x8, [sp]
	ldur	x8, [x8, #-24]
	add	x21, x22, x8
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__18ios_base4swapERS0_
	ldr	x8, [x20, #136]
	ldr	x9, [x21, #136]
	str	x9, [x20, #136]
	str	x8, [x21, #136]
	ldr	w8, [x20, #144]
	ldr	w9, [x21, #144]
	str	w9, [x20, #144]
	str	w8, [x21, #144]
Ltmp73:
	mov	x0, x19
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
Ltmp74:
; %bb.9:
Ltmp75:
	add	x19, x22, #8
Lloh55:
	adrp	x0, _outFile@PAGE+8
Lloh56:
	add	x0, x0, _outFile@PAGEOFF+8
	mov	x1, x19
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4swapERS3_
Ltmp76:
; %bb.10:
Lloh57:
	adrp	x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh58:
	ldr	x20, [x20, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldr	x8, [x20]
	str	x8, [sp]
	ldr	x9, [x20, #24]
	ldur	x8, [x8, #-24]
	mov	x21, sp
	str	x9, [x21, x8]
	mov	x0, x19
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
	add	x1, x20, #8
	mov	x0, sp
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	add	x0, x21, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	ldur	x8, [x29, #-88]
Lloh59:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh60:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh61:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB24_12
; %bb.11:
	add	sp, sp, #576
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #32]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #96             ; 16-byte Folded Reload
	ret
LBB24_12:
	bl	___stack_chk_fail
LBB24_13:
Ltmp77:
	mov	x19, x0
	mov	x0, sp
	bl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGotLdr	Lloh48, Lloh49, Lloh50
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpLdrGotLdr	Lloh59, Lloh60, Lloh61
	.loh AdrpLdrGot	Lloh57, Lloh58
Lfunc_end3:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table24:
Lexception3:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end3-Lcst_begin3
Lcst_begin3:
	.uleb128 Lfunc_begin3-Lfunc_begin3      ; >> Call Site 1 <<
	.uleb128 Ltmp73-Lfunc_begin3            ;   Call between Lfunc_begin3 and Ltmp73
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp73-Lfunc_begin3            ; >> Call Site 2 <<
	.uleb128 Ltmp76-Ltmp73                  ;   Call between Ltmp73 and Ltmp76
	.uleb128 Ltmp77-Lfunc_begin3            ;     jumps to Ltmp77
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp76-Lfunc_begin3            ; >> Call Site 3 <<
	.uleb128 Lfunc_end3-Ltmp76              ;   Call between Ltmp76 and Lfunc_end3
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end3:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj ; -- Begin function _ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.globl	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.weak_def_can_be_hidden	__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
	.p2align	2
__ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj: ; @_ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEC1EPKcj
Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception4
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
	mov	x22, x2
	mov	x21, x1
	mov	x19, x0
Lloh62:
	adrp	x26, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh63:
	ldr	x26, [x26, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x25, x26, #64
	str	x25, [x0, #416]
	add	x20, x0, #8
Lloh64:
	adrp	x24, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh65:
	ldr	x24, [x24, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x24, #8]
	str	x8, [x0]
	ldur	x8, [x8, #-24]
	str	x9, [x0, x8]
	ldr	x8, [x0]
	ldur	x8, [x8, #-24]
	add	x23, x0, x8
Ltmp78:
	mov	x0, x23
	mov	x1, x20
	bl	__ZNSt3__18ios_base4initEPv
Ltmp79:
; %bb.1:
	str	xzr, [x23, #136]
	mov	w8, #-1
	str	w8, [x23, #144]
	add	x8, x26, #24
	str	x8, [x19]
	str	x25, [x19, #416]
Ltmp81:
	mov	x0, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp82:
; %bb.2:
	orr	w2, w22, #0x10
Ltmp84:
	mov	x0, x20
	mov	x1, x21
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj
Ltmp85:
; %bb.3:
	cbnz	x0, LBB25_5
; %bb.4:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x4
Ltmp86:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp87:
LBB25_5:
	mov	x0, x19
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB25_6:
Ltmp83:
	mov	x21, x0
	b	LBB25_9
LBB25_7:
Ltmp80:
	mov	x21, x0
	b	LBB25_10
LBB25_8:
Ltmp88:
	mov	x21, x0
	mov	x0, x20
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev
LBB25_9:
	add	x1, x24, #8
	mov	x0, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
LBB25_10:
	add	x0, x19, #416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x21
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh64, Lloh65
	.loh AdrpLdrGot	Lloh62, Lloh63
Lfunc_end4:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table25:
Lexception4:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end4-Lcst_begin4
Lcst_begin4:
	.uleb128 Ltmp78-Lfunc_begin4            ; >> Call Site 1 <<
	.uleb128 Ltmp79-Ltmp78                  ;   Call between Ltmp78 and Ltmp79
	.uleb128 Ltmp80-Lfunc_begin4            ;     jumps to Ltmp80
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp81-Lfunc_begin4            ; >> Call Site 2 <<
	.uleb128 Ltmp82-Ltmp81                  ;   Call between Ltmp81 and Ltmp82
	.uleb128 Ltmp83-Lfunc_begin4            ;     jumps to Ltmp83
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp84-Lfunc_begin4            ; >> Call Site 3 <<
	.uleb128 Ltmp87-Ltmp84                  ;   Call between Ltmp84 and Ltmp87
	.uleb128 Ltmp88-Lfunc_begin4            ;     jumps to Ltmp88
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp87-Lfunc_begin4            ; >> Call Site 4 <<
	.uleb128 Lfunc_end4-Ltmp87              ;   Call between Ltmp87 and Lfunc_end4
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end4:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
Lloh66:
	adrp	x8, _outWork@PAGE
Lloh67:
	ldr	x8, [x8, _outWork@PAGEOFF]
Lloh68:
	adrp	x9, _outOrg@PAGE
Lloh69:
	ldr	x9, [x9, _outOrg@PAGEOFF]
LBB26_1:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x8, x19]
	ldrb	w11, [x9, x19]
	cmp	w10, w11
	b.ne	LBB26_4
; %bb.2:                                ;   in Loop: Header=BB26_1 Depth=1
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB26_1
; %bb.3:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
LBB26_4:
Lloh70:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh71:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh72:
	adrp	x1, l_.str.6@PAGE
Lloh73:
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	bl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	mov	w0, #1
	bl	_exit
	.loh AdrpLdr	Lloh68, Lloh69
	.loh AdrpLdr	Lloh66, Lloh67
	.loh AdrpAdd	Lloh72, Lloh73
	.loh AdrpLdrGot	Lloh70, Lloh71
	.cfi_endproc
                                        ; -- End function
	.globl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb ; -- Begin function _Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
	.p2align	2
__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb: ; @_Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
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
	mov	x19, x2
	mov	x20, x1
	mov	x21, x0
Lloh74:
	adrp	x8, _outOrg@PAGE
Lloh75:
	add	x8, x8, _outOrg@PAGEOFF
Lloh76:
	adrp	x9, _outWork@PAGE
Lloh77:
	add	x9, x9, _outWork@PAGEOFF
	cmp	w2, #0
	csel	x8, x8, x9, ne
	ldr	x22, [x8]
	bl	__ZNSt3__16chrono12system_clock3nowEv
	adrp	x8, _StartTime@PAGE
	str	x0, [x8, _StartTime@PAGEOFF]
	mov	w23, #128
	adrp	x24, _org@PAGE
	adrp	x25, _lut@PAGE
LBB27_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x24, _org@PAGEOFF]
	ldr	x3, [x25, _lut@PAGEOFF]
	mov	w1, #1024
	mov	w2, #1024
	mov	w4, #128
	mov	x5, x22
	blr	x21
	subs	w23, w23, #1
	b.ne	LBB27_1
; %bb.2:
	add	x0, sp, #8
	mov	x1, x20
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp89:
	add	x0, sp, #8
	mov	x1, x19
	bl	__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
Ltmp90:
; %bb.3:
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB27_5
; %bb.4:
	tbz	w19, #0, LBB27_6
	b	LBB27_9
LBB27_5:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	tbnz	w19, #0, LBB27_9
LBB27_6:
	mov	x19, #0
Lloh78:
	adrp	x8, _outWork@PAGE
Lloh79:
	ldr	x8, [x8, _outWork@PAGEOFF]
Lloh80:
	adrp	x9, _outOrg@PAGE
Lloh81:
	ldr	x9, [x9, _outOrg@PAGEOFF]
LBB27_7:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x8, x19]
	ldrb	w11, [x9, x19]
	cmp	w10, w11
	b.ne	LBB27_10
; %bb.8:                                ;   in Loop: Header=BB27_7 Depth=1
	add	x19, x19, #1
	cmp	x19, #256, lsl #12              ; =1048576
	b.ne	LBB27_7
LBB27_9:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB27_10:
Lloh82:
	adrp	x0, __ZNSt3__14coutE@GOTPAGE
Lloh83:
	ldr	x0, [x0, __ZNSt3__14coutE@GOTPAGEOFF]
Lloh84:
	adrp	x1, l_.str.6@PAGE
Lloh85:
	add	x1, x1, l_.str.6@PAGEOFF
	bl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	bl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	mov	w0, #1
	bl	_exit
LBB27_11:
Ltmp91:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB27_13
; %bb.12:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB27_13:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh76, Lloh77
	.loh AdrpAdd	Lloh74, Lloh75
	.loh AdrpLdr	Lloh80, Lloh81
	.loh AdrpLdr	Lloh78, Lloh79
	.loh AdrpAdd	Lloh84, Lloh85
	.loh AdrpLdrGot	Lloh82, Lloh83
Lfunc_end5:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table27:
Lexception5:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end5-Lcst_begin5
Lcst_begin5:
	.uleb128 Lfunc_begin5-Lfunc_begin5      ; >> Call Site 1 <<
	.uleb128 Ltmp89-Lfunc_begin5            ;   Call between Lfunc_begin5 and Ltmp89
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp89-Lfunc_begin5            ; >> Call Site 2 <<
	.uleb128 Ltmp90-Ltmp89                  ;   Call between Ltmp89 and Ltmp90
	.uleb128 Ltmp91-Lfunc_begin5            ;     jumps to Ltmp91
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp90-Lfunc_begin5            ; >> Call Site 3 <<
	.uleb128 Lfunc_end5-Ltmp90              ;   Call between Ltmp90 and Lfunc_end5
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end5:
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
Lloh86:
	adrp	x0, _outFile@PAGE+8
Lloh87:
	add	x0, x0, _outFile@PAGEOFF+8
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE5closeEv
	cbz	x0, LBB28_13
; %bb.1:
Lloh88:
	adrp	x8, _org@PAGE
Lloh89:
	ldr	x0, [x8, _org@PAGEOFF]
	cbz	x0, LBB28_3
LBB28_2:
	bl	__ZdaPv
LBB28_3:
Lloh90:
	adrp	x8, _outOrg@PAGE
Lloh91:
	ldr	x0, [x8, _outOrg@PAGEOFF]
	cbz	x0, LBB28_5
; %bb.4:
	bl	__ZdaPv
LBB28_5:
Lloh92:
	adrp	x8, _outWork@PAGE
Lloh93:
	ldr	x0, [x8, _outWork@PAGEOFF]
	cbz	x0, LBB28_7
; %bb.6:
	bl	__ZdaPv
LBB28_7:
Lloh94:
	adrp	x8, _lut@PAGE
Lloh95:
	ldr	x0, [x8, _lut@PAGEOFF]
	cbz	x0, LBB28_9
; %bb.8:
	bl	__ZdaPv
LBB28_9:
Lloh96:
	adrp	x8, _temp@PAGE
Lloh97:
	ldr	x0, [x8, _temp@PAGEOFF]
	cbz	x0, LBB28_11
; %bb.10:
	bl	__ZdaPv
LBB28_11:
Lloh98:
	adrp	x8, _lidx@PAGE
Lloh99:
	ldr	x0, [x8, _lidx@PAGEOFF]
	cbz	x0, LBB28_14
; %bb.12:
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	b	__ZdaPv
LBB28_13:
Lloh100:
	adrp	x8, _outFile@PAGE
Lloh101:
	add	x8, x8, _outFile@PAGEOFF
	ldr	x9, [x8]
	ldur	x9, [x9, #-24]
	add	x0, x8, x9
	ldr	w8, [x0, #32]
	orr	w1, w8, #0x4
	bl	__ZNSt3__18ios_base5clearEj
Lloh102:
	adrp	x8, _org@PAGE
Lloh103:
	ldr	x0, [x8, _org@PAGEOFF]
	cbnz	x0, LBB28_2
	b	LBB28_3
LBB28_14:
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh86, Lloh87
	.loh AdrpLdr	Lloh88, Lloh89
	.loh AdrpLdr	Lloh90, Lloh91
	.loh AdrpLdr	Lloh92, Lloh93
	.loh AdrpLdr	Lloh94, Lloh95
	.loh AdrpLdr	Lloh96, Lloh97
	.loh AdrpLdr	Lloh98, Lloh99
	.loh AdrpLdr	Lloh102, Lloh103
	.loh AdrpAdd	Lloh100, Lloh101
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
Lfunc_begin6:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception6
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
	sub	sp, sp, #448
	bl	__Z4Initv
	mov	w8, #8
	sturb	w8, [x29, #-89]
	mov	x8, #28483
	movk	x8, #28277, lsl #16
	movk	x8, #26996, lsl #32
	movk	x8, #26478, lsl #48
	stur	x8, [x29, #-112]
	sturb	wzr, [x29, #-104]
Ltmp92:
Lloh104:
	adrp	x0, __Z15ProcessOrgCountPKtiiPjiPh@PAGE
Lloh105:
	add	x0, x0, __Z15ProcessOrgCountPKtiiPjiPh@PAGEOFF
	sub	x1, x29, #112
	mov	w2, #1
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp93:
; %bb.1:
	ldursb	w8, [x29, #-89]
	tbz	w8, #31, LBB29_3
; %bb.2:
	ldur	x0, [x29, #-112]
	bl	__ZdlPv
LBB29_3:
	add	x19, sp, #136
	mov	x22, #29263
	movk	x22, #26473, lsl #16
	movk	x22, #28265, lsl #32
	movk	x22, #27745, lsl #48
	mov	w8, #8
	sturb	w8, [x29, #-113]
	stur	x22, [x29, #-136]
	sturb	wzr, [x29, #-128]
	adrp	x23, _outOrg@PAGE
	ldr	x25, [x23, _outOrg@PAGEOFF]
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	w8, #0
	adrp	x24, _StartTime@PAGE
	str	x0, [x24, _StartTime@PAGEOFF]
	adrp	x20, _org@PAGE
	adrp	x21, _lut@PAGE
	mov	w9, #32
	b	LBB29_5
LBB29_4:                                ;   in Loop: Header=BB29_5 Depth=1
	add	w8, w8, #1
	cmp	w8, #128
	b.eq	LBB29_11
LBB29_5:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_7 Depth 2
                                        ;       Child Loop BB29_9 Depth 3
	mov	x10, #0
	ldr	x11, [x20, _org@PAGEOFF]
	ldr	x12, [x21, _lut@PAGEOFF]
	mov	x13, x25
	b	LBB29_7
LBB29_6:                                ;   in Loop: Header=BB29_7 Depth=2
	add	x10, x10, #1
	add	x11, x11, #2
	add	x13, x13, #1
	cmp	x10, #1024
	b.eq	LBB29_4
LBB29_7:                                ;   Parent Loop BB29_5 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB29_9 Depth 3
	mov	x14, #0
	negs	w15, w10
	and	w15, w15, #0x7f
	and	w16, w10, #0x7f
	csneg	w15, w16, w15, mi
	mov	x16, x13
	mov	x17, x11
	b	LBB29_9
LBB29_8:                                ;   in Loop: Header=BB29_9 Depth=3
	add	x14, x14, #1
	add	x17, x17, #2048
	add	x16, x16, #1024
	cmp	x14, #1024
	b.eq	LBB29_6
LBB29_9:                                ;   Parent Loop BB29_5 Depth=1
                                        ;     Parent Loop BB29_7 Depth=2
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
	b.hs	LBB29_8
; %bb.10:                               ;   in Loop: Header=BB29_9 Depth=3
	strb	w9, [x16]
	b	LBB29_8
LBB29_11:
Ltmp95:
	sub	x0, x29, #88
	sub	x1, x29, #136
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp96:
; %bb.12:
Ltmp98:
	sub	x0, x29, #88
	mov	w1, #1
	bl	__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
Ltmp99:
; %bb.13:
	ldursb	w8, [x29, #-65]
	tbnz	w8, #31, LBB29_70
; %bb.14:
	ldursb	w8, [x29, #-113]
	tbnz	w8, #31, LBB29_71
LBB29_15:
	mov	w8, #8
	sturb	w8, [x29, #-137]
	stur	x22, [x29, #-160]
	sturb	wzr, [x29, #-152]
	ldr	x22, [x23, _outOrg@PAGEOFF]
	bl	__ZNSt3__16chrono12system_clock3nowEv
	mov	w8, #0
	str	x0, [x24, _StartTime@PAGEOFF]
	mov	w9, #32
	b	LBB29_17
LBB29_16:                               ;   in Loop: Header=BB29_17 Depth=1
	add	w8, w8, #1
	cmp	w8, #128
	b.eq	LBB29_23
LBB29_17:                               ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB29_19 Depth 2
                                        ;       Child Loop BB29_21 Depth 3
	mov	x10, #0
	ldr	x11, [x20, _org@PAGEOFF]
	ldr	x12, [x21, _lut@PAGEOFF]
	mov	x13, x22
	b	LBB29_19
LBB29_18:                               ;   in Loop: Header=BB29_19 Depth=2
	add	x10, x10, #1
	add	x11, x11, #2
	add	x13, x13, #1
	cmp	x10, #1024
	b.eq	LBB29_16
LBB29_19:                               ;   Parent Loop BB29_17 Depth=1
                                        ; =>  This Loop Header: Depth=2
                                        ;       Child Loop BB29_21 Depth 3
	mov	x14, #0
	negs	w15, w10
	and	w15, w15, #0x7f
	and	w16, w10, #0x7f
	csneg	w15, w16, w15, mi
	mov	x16, x13
	mov	x17, x11
	b	LBB29_21
LBB29_20:                               ;   in Loop: Header=BB29_21 Depth=3
	add	x14, x14, #1
	add	x17, x17, #2048
	add	x16, x16, #1024
	cmp	x14, #1024
	b.eq	LBB29_18
LBB29_21:                               ;   Parent Loop BB29_17 Depth=1
                                        ;     Parent Loop BB29_19 Depth=2
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
	b.hs	LBB29_20
; %bb.22:                               ;   in Loop: Header=BB29_21 Depth=3
	strb	w9, [x16]
	b	LBB29_20
LBB29_23:
Ltmp101:
	sub	x0, x29, #88
	sub	x1, x29, #160
	bl	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1ERKS5_
Ltmp102:
; %bb.24:
Ltmp104:
	sub	x0, x29, #88
	mov	w1, #1
	bl	__Z4StopNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEb
Ltmp105:
; %bb.25:
	ldursb	w8, [x29, #-65]
	tbnz	w8, #31, LBB29_72
; %bb.26:
	ldursb	w8, [x29, #-137]
	tbnz	w8, #31, LBB29_73
LBB29_27:
	mov	w8, #10
	sturb	w8, [x29, #-161]
	mov	w8, #29808
	sturh	w8, [x29, #-176]
Lloh106:
	adrp	x8, l_.str.9@PAGE
Lloh107:
	add	x8, x8, l_.str.9@PAGEOFF
Lloh108:
	ldr	x8, [x8]
	stur	x8, [x29, #-184]
	sturb	wzr, [x29, #-174]
Ltmp107:
Lloh109:
	adrp	x0, __Z11ProcessOpt1PKtiiPjiPh@PAGE
Lloh110:
	add	x0, x0, __Z11ProcessOpt1PKtiiPjiPh@PAGEOFF
	sub	x1, x29, #184
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp108:
; %bb.28:
	ldursb	w8, [x29, #-161]
	tbz	w8, #31, LBB29_30
; %bb.29:
	ldur	x0, [x29, #-184]
	bl	__ZdlPv
LBB29_30:
	mov	w8, #7
	sturb	w8, [x29, #-185]
	mov	w8, #28233
	movk	w8, #26980, lsl #16
	stur	w8, [x29, #-208]
	mov	w8, #25449
	movk	w8, #29541, lsl #16
	stur	w8, [x19, #171]
	sturb	wzr, [x29, #-201]
Ltmp110:
Lloh111:
	adrp	x0, __Z11ProcessOpt2PKtiiPjiPh@PAGE
Lloh112:
	add	x0, x0, __Z11ProcessOpt2PKtiiPjiPh@PAGEOFF
	sub	x1, x29, #208
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp111:
; %bb.31:
	ldursb	w8, [x29, #-185]
	tbz	w8, #31, LBB29_33
; %bb.32:
	ldur	x0, [x29, #-208]
	bl	__ZdlPv
LBB29_33:
	mov	w8, #13
Lloh113:
	adrp	x9, l_.str.11@PAGE
Lloh114:
	add	x9, x9, l_.str.11@PAGEOFF
	sturb	w8, [x29, #-209]
	ldr	x8, [x9]
	stur	x8, [x29, #-232]
	ldur	x8, [x9, #5]
	stur	x8, [x19, #149]
	sturb	wzr, [x29, #-219]
Ltmp113:
Lloh115:
	adrp	x0, __Z11ProcessOpt3PKtiiPjiPh@PAGE
Lloh116:
	add	x0, x0, __Z11ProcessOpt3PKtiiPjiPh@PAGEOFF
	sub	x1, x29, #232
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp114:
; %bb.34:
	ldursb	w8, [x29, #-209]
	tbz	w8, #31, LBB29_36
; %bb.35:
	ldur	x0, [x29, #-232]
	bl	__ZdlPv
LBB29_36:
	mov	w8, #6
	strb	w8, [sp, #279]
	mov	w8, #25933
	movk	w8, #29549, lsl #16
	str	w8, [sp, #256]
	mov	w8, #29797
	strh	w8, [sp, #260]
	strb	wzr, [sp, #262]
Ltmp116:
Lloh117:
	adrp	x0, __Z11ProcessOpt4PKtiiPjiPh@PAGE
Lloh118:
	add	x0, x0, __Z11ProcessOpt4PKtiiPjiPh@PAGEOFF
	add	x1, sp, #256
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp117:
; %bb.37:
	ldrsb	w8, [sp, #279]
	tbz	w8, #31, LBB29_39
; %bb.38:
	ldr	x0, [sp, #256]
	bl	__ZdlPv
LBB29_39:
	mov	w8, #7
	strb	w8, [sp, #255]
	mov	w8, #28494
	movk	w8, #27936, lsl #16
	str	w8, [sp, #232]
	mov	w8, #28525
	movk	w8, #9572, lsl #16
	stur	w8, [x19, #99]
	strb	wzr, [sp, #239]
Ltmp119:
Lloh119:
	adrp	x0, __Z11ProcessOpt5PKtiiPjiPh@PAGE
Lloh120:
	add	x0, x0, __Z11ProcessOpt5PKtiiPjiPh@PAGEOFF
	add	x1, sp, #232
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp120:
; %bb.40:
	ldrsb	w8, [sp, #255]
	tbz	w8, #31, LBB29_42
; %bb.41:
	ldr	x0, [sp, #232]
	bl	__ZdlPv
LBB29_42:
	mov	w8, #5
	strb	w8, [sp, #231]
	mov	w8, #28233
	movk	w8, #25956, lsl #16
	str	w8, [sp, #208]
	mov	w8, #120
	strh	w8, [sp, #212]
Ltmp122:
Lloh121:
	adrp	x0, __Z11ProcessOpt6PKtiiPjiPh@PAGE
Lloh122:
	add	x0, x0, __Z11ProcessOpt6PKtiiPjiPh@PAGEOFF
	add	x1, sp, #208
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp123:
; %bb.43:
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB29_45
; %bb.44:
	ldr	x0, [sp, #208]
	bl	__ZdlPv
LBB29_45:
	mov	w8, #4
	strb	w8, [sp, #207]
	mov	w8, #26956
	movk	w8, #30820, lsl #16
	str	w8, [sp, #184]
	strb	wzr, [sp, #188]
Ltmp125:
Lloh123:
	adrp	x0, __Z11ProcessOpt7PKtiiPjiPh@PAGE
Lloh124:
	add	x0, x0, __Z11ProcessOpt7PKtiiPjiPh@PAGEOFF
	add	x1, sp, #184
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp126:
; %bb.46:
	ldrsb	w8, [sp, #207]
	tbz	w8, #31, LBB29_48
; %bb.47:
	ldr	x0, [sp, #184]
	bl	__ZdlPv
LBB29_48:
	mov	w8, #9
	strb	w8, [sp, #183]
	mov	w8, #100
	strh	w8, [sp, #168]
Lloh125:
	adrp	x8, l_.str.16@PAGE
Lloh126:
	add	x8, x8, l_.str.16@PAGEOFF
Lloh127:
	ldr	x8, [x8]
	str	x8, [sp, #160]
Ltmp128:
Lloh128:
	adrp	x0, __Z11ProcessOpt8PKtiiPjiPh@PAGE
Lloh129:
	add	x0, x0, __Z11ProcessOpt8PKtiiPjiPh@PAGEOFF
	add	x1, sp, #160
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp129:
; %bb.49:
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB29_51
; %bb.50:
	ldr	x0, [sp, #160]
	bl	__ZdlPv
LBB29_51:
	mov	w8, #14
Lloh130:
	adrp	x9, l_.str.17@PAGE
Lloh131:
	add	x9, x9, l_.str.17@PAGEOFF
	strb	w8, [sp, #159]
	ldr	x8, [x9]
	str	x8, [sp, #136]
	ldur	x8, [x9, #6]
	stur	x8, [x19, #6]
	strb	wzr, [sp, #150]
Ltmp131:
Lloh132:
	adrp	x0, __Z11ProcessOpt9PKtiiPjiPh@PAGE
Lloh133:
	add	x0, x0, __Z11ProcessOpt9PKtiiPjiPh@PAGEOFF
	add	x1, sp, #136
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp132:
; %bb.52:
	ldrsb	w8, [sp, #159]
	tbz	w8, #31, LBB29_54
; %bb.53:
	ldr	x0, [sp, #136]
	bl	__ZdlPv
LBB29_54:
	adrp	x19, _outWork@PAGE
	ldr	x0, [x19, _outWork@PAGEOFF]
	mov	w1, #1048576
	bl	_bzero
	mov	w8, #14
Lloh134:
	adrp	x9, l_.str.18@PAGE
Lloh135:
	add	x9, x9, l_.str.18@PAGEOFF
	strb	w8, [sp, #135]
	ldr	x8, [x9]
	str	x8, [sp, #112]
	ldur	x8, [x9, #6]
	stur	x8, [sp, #118]
	strb	wzr, [sp, #126]
Ltmp134:
Lloh136:
	adrp	x0, __Z12ProcessOpt10PKtiiPjiPh@PAGE
Lloh137:
	add	x0, x0, __Z12ProcessOpt10PKtiiPjiPh@PAGEOFF
	add	x1, sp, #112
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp135:
; %bb.55:
	ldrsb	w8, [sp, #135]
	tbz	w8, #31, LBB29_57
; %bb.56:
	ldr	x0, [sp, #112]
	bl	__ZdlPv
LBB29_57:
	mov	w8, #17
	strb	w8, [sp, #103]
	mov	w8, #103
	strh	w8, [sp, #96]
Lloh138:
	adrp	x8, l_.str.19@PAGE
Lloh139:
	add	x8, x8, l_.str.19@PAGEOFF
Lloh140:
	ldr	q0, [x8]
	str	q0, [sp, #80]
Ltmp137:
Lloh141:
	adrp	x0, __Z12ProcessOpt11PKtiiPjiPh@PAGE
Lloh142:
	add	x0, x0, __Z12ProcessOpt11PKtiiPjiPh@PAGEOFF
	add	x1, sp, #80
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp138:
; %bb.58:
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB29_60
; %bb.59:
	ldr	x0, [sp, #80]
	bl	__ZdlPv
LBB29_60:
	mov	w8, #14
Lloh143:
	adrp	x9, l_.str.20@PAGE
Lloh144:
	add	x9, x9, l_.str.20@PAGEOFF
	strb	w8, [sp, #79]
	ldr	x8, [x9]
	str	x8, [sp, #56]
	ldur	x8, [x9, #6]
	stur	x8, [sp, #62]
	strb	wzr, [sp, #70]
Ltmp140:
Lloh145:
	adrp	x0, __Z12ProcessOpt12PKtiiPjiPh@PAGE
Lloh146:
	add	x0, x0, __Z12ProcessOpt12PKtiiPjiPh@PAGEOFF
	add	x1, sp, #56
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp141:
; %bb.61:
	ldrsb	w8, [sp, #79]
	tbz	w8, #31, LBB29_63
; %bb.62:
	ldr	x0, [sp, #56]
	bl	__ZdlPv
LBB29_63:
	mov	w8, #14
Lloh147:
	adrp	x9, l_.str.21@PAGE
Lloh148:
	add	x9, x9, l_.str.21@PAGEOFF
	strb	w8, [sp, #55]
	ldr	x8, [x9]
	str	x8, [sp, #32]
	ldur	x8, [x9, #6]
	stur	x8, [sp, #38]
	strb	wzr, [sp, #46]
Ltmp143:
Lloh149:
	adrp	x0, __Z12ProcessOpt13PKtiiPjiPh@PAGE
Lloh150:
	add	x0, x0, __Z12ProcessOpt13PKtiiPjiPh@PAGEOFF
	add	x1, sp, #32
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp144:
; %bb.64:
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB29_66
; %bb.65:
	ldr	x0, [sp, #32]
	bl	__ZdlPv
LBB29_66:
	ldr	x0, [x19, _outWork@PAGEOFF]
	mov	w1, #1048576
	bl	_bzero
	mov	w8, #12
	strb	w8, [sp, #31]
	mov	w8, #27756
	movk	w8, #25701, lsl #16
	str	w8, [sp, #16]
Lloh151:
	adrp	x8, l_.str.22@PAGE
Lloh152:
	add	x8, x8, l_.str.22@PAGEOFF
Lloh153:
	ldr	x8, [x8]
	str	x8, [sp, #8]
	strb	wzr, [sp, #20]
Ltmp146:
Lloh154:
	adrp	x0, __Z12ProcessOpt14PKtiiPjiPh@PAGE
Lloh155:
	add	x0, x0, __Z12ProcessOpt14PKtiiPjiPh@PAGEOFF
	add	x1, sp, #8
	mov	w2, #0
	bl	__Z7ExecutePFvPKtiiPjiPhENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEb
Ltmp147:
; %bb.67:
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB29_69
; %bb.68:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB29_69:
	bl	__Z7Cleanupv
	mov	w0, #0
	add	sp, sp, #448
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #16]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp], #80             ; 16-byte Folded Reload
	ret
LBB29_70:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	ldursb	w8, [x29, #-113]
	tbz	w8, #31, LBB29_15
LBB29_71:
	ldur	x0, [x29, #-136]
	bl	__ZdlPv
	b	LBB29_15
LBB29_72:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	ldursb	w8, [x29, #-137]
	tbz	w8, #31, LBB29_27
LBB29_73:
	ldur	x0, [x29, #-160]
	bl	__ZdlPv
	b	LBB29_27
LBB29_74:
Ltmp148:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB29_115
; %bb.75:
	ldr	x0, [sp, #8]
	b	LBB29_114
LBB29_76:
Ltmp145:
	mov	x19, x0
	ldrsb	w8, [sp, #55]
	tbz	w8, #31, LBB29_115
; %bb.77:
	ldr	x0, [sp, #32]
	b	LBB29_114
LBB29_78:
Ltmp142:
	mov	x19, x0
	ldrsb	w8, [sp, #79]
	tbz	w8, #31, LBB29_115
; %bb.79:
	ldr	x0, [sp, #56]
	b	LBB29_114
LBB29_80:
Ltmp139:
	mov	x19, x0
	ldrsb	w8, [sp, #103]
	tbz	w8, #31, LBB29_115
; %bb.81:
	ldr	x0, [sp, #80]
	b	LBB29_114
LBB29_82:
Ltmp136:
	mov	x19, x0
	ldrsb	w8, [sp, #135]
	tbz	w8, #31, LBB29_115
; %bb.83:
	ldr	x0, [sp, #112]
	b	LBB29_114
LBB29_84:
Ltmp133:
	mov	x19, x0
	ldrsb	w8, [sp, #159]
	tbz	w8, #31, LBB29_115
; %bb.85:
	ldr	x0, [sp, #136]
	b	LBB29_114
LBB29_86:
Ltmp130:
	mov	x19, x0
	ldrsb	w8, [sp, #183]
	tbz	w8, #31, LBB29_115
; %bb.87:
	ldr	x0, [sp, #160]
	b	LBB29_114
LBB29_88:
Ltmp127:
	mov	x19, x0
	ldrsb	w8, [sp, #207]
	tbz	w8, #31, LBB29_115
; %bb.89:
	ldr	x0, [sp, #184]
	b	LBB29_114
LBB29_90:
Ltmp124:
	mov	x19, x0
	ldrsb	w8, [sp, #231]
	tbz	w8, #31, LBB29_115
; %bb.91:
	ldr	x0, [sp, #208]
	b	LBB29_114
LBB29_92:
Ltmp121:
	mov	x19, x0
	ldrsb	w8, [sp, #255]
	tbz	w8, #31, LBB29_115
; %bb.93:
	ldr	x0, [sp, #232]
	b	LBB29_114
LBB29_94:
Ltmp118:
	mov	x19, x0
	ldrsb	w8, [sp, #279]
	tbz	w8, #31, LBB29_115
; %bb.95:
	ldr	x0, [sp, #256]
	b	LBB29_114
LBB29_96:
Ltmp115:
	mov	x19, x0
	ldursb	w8, [x29, #-209]
	tbz	w8, #31, LBB29_115
; %bb.97:
	ldur	x0, [x29, #-232]
	b	LBB29_114
LBB29_98:
Ltmp112:
	mov	x19, x0
	ldursb	w8, [x29, #-185]
	tbz	w8, #31, LBB29_115
; %bb.99:
	ldur	x0, [x29, #-208]
	b	LBB29_114
LBB29_100:
Ltmp109:
	mov	x19, x0
	ldursb	w8, [x29, #-161]
	tbz	w8, #31, LBB29_115
; %bb.101:
	ldur	x0, [x29, #-184]
	b	LBB29_114
LBB29_102:
Ltmp106:
	mov	x19, x0
	ldursb	w8, [x29, #-65]
	tbz	w8, #31, LBB29_105
; %bb.103:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	b	LBB29_105
LBB29_104:
Ltmp103:
	mov	x19, x0
LBB29_105:
	ldursb	w8, [x29, #-137]
	tbz	w8, #31, LBB29_115
; %bb.106:
	ldur	x0, [x29, #-160]
	b	LBB29_114
LBB29_107:
Ltmp100:
	mov	x19, x0
	ldursb	w8, [x29, #-65]
	tbz	w8, #31, LBB29_110
; %bb.108:
	ldur	x0, [x29, #-88]
	bl	__ZdlPv
	b	LBB29_110
LBB29_109:
Ltmp97:
	mov	x19, x0
LBB29_110:
	ldursb	w8, [x29, #-113]
	tbz	w8, #31, LBB29_115
; %bb.111:
	ldur	x0, [x29, #-136]
	b	LBB29_114
LBB29_112:
Ltmp94:
	mov	x19, x0
	ldursb	w8, [x29, #-89]
	tbz	w8, #31, LBB29_115
; %bb.113:
	ldur	x0, [x29, #-112]
LBB29_114:
	bl	__ZdlPv
LBB29_115:
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAddLdr	Lloh106, Lloh107, Lloh108
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpAddLdr	Lloh125, Lloh126, Lloh127
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh136, Lloh137
	.loh AdrpAdd	Lloh134, Lloh135
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpAddLdr	Lloh138, Lloh139, Lloh140
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpAdd	Lloh149, Lloh150
	.loh AdrpAdd	Lloh147, Lloh148
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAddLdr	Lloh151, Lloh152, Lloh153
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
	.uleb128 Ltmp92-Lfunc_begin6            ;   Call between Lfunc_begin6 and Ltmp92
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp92-Lfunc_begin6            ; >> Call Site 2 <<
	.uleb128 Ltmp93-Ltmp92                  ;   Call between Ltmp92 and Ltmp93
	.uleb128 Ltmp94-Lfunc_begin6            ;     jumps to Ltmp94
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp95-Lfunc_begin6            ; >> Call Site 3 <<
	.uleb128 Ltmp96-Ltmp95                  ;   Call between Ltmp95 and Ltmp96
	.uleb128 Ltmp97-Lfunc_begin6            ;     jumps to Ltmp97
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp98-Lfunc_begin6            ; >> Call Site 4 <<
	.uleb128 Ltmp99-Ltmp98                  ;   Call between Ltmp98 and Ltmp99
	.uleb128 Ltmp100-Lfunc_begin6           ;     jumps to Ltmp100
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp101-Lfunc_begin6           ; >> Call Site 5 <<
	.uleb128 Ltmp102-Ltmp101                ;   Call between Ltmp101 and Ltmp102
	.uleb128 Ltmp103-Lfunc_begin6           ;     jumps to Ltmp103
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp104-Lfunc_begin6           ; >> Call Site 6 <<
	.uleb128 Ltmp105-Ltmp104                ;   Call between Ltmp104 and Ltmp105
	.uleb128 Ltmp106-Lfunc_begin6           ;     jumps to Ltmp106
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp107-Lfunc_begin6           ; >> Call Site 7 <<
	.uleb128 Ltmp108-Ltmp107                ;   Call between Ltmp107 and Ltmp108
	.uleb128 Ltmp109-Lfunc_begin6           ;     jumps to Ltmp109
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp110-Lfunc_begin6           ; >> Call Site 8 <<
	.uleb128 Ltmp111-Ltmp110                ;   Call between Ltmp110 and Ltmp111
	.uleb128 Ltmp112-Lfunc_begin6           ;     jumps to Ltmp112
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp113-Lfunc_begin6           ; >> Call Site 9 <<
	.uleb128 Ltmp114-Ltmp113                ;   Call between Ltmp113 and Ltmp114
	.uleb128 Ltmp115-Lfunc_begin6           ;     jumps to Ltmp115
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp116-Lfunc_begin6           ; >> Call Site 10 <<
	.uleb128 Ltmp117-Ltmp116                ;   Call between Ltmp116 and Ltmp117
	.uleb128 Ltmp118-Lfunc_begin6           ;     jumps to Ltmp118
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp119-Lfunc_begin6           ; >> Call Site 11 <<
	.uleb128 Ltmp120-Ltmp119                ;   Call between Ltmp119 and Ltmp120
	.uleb128 Ltmp121-Lfunc_begin6           ;     jumps to Ltmp121
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp122-Lfunc_begin6           ; >> Call Site 12 <<
	.uleb128 Ltmp123-Ltmp122                ;   Call between Ltmp122 and Ltmp123
	.uleb128 Ltmp124-Lfunc_begin6           ;     jumps to Ltmp124
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp125-Lfunc_begin6           ; >> Call Site 13 <<
	.uleb128 Ltmp126-Ltmp125                ;   Call between Ltmp125 and Ltmp126
	.uleb128 Ltmp127-Lfunc_begin6           ;     jumps to Ltmp127
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp128-Lfunc_begin6           ; >> Call Site 14 <<
	.uleb128 Ltmp129-Ltmp128                ;   Call between Ltmp128 and Ltmp129
	.uleb128 Ltmp130-Lfunc_begin6           ;     jumps to Ltmp130
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp131-Lfunc_begin6           ; >> Call Site 15 <<
	.uleb128 Ltmp132-Ltmp131                ;   Call between Ltmp131 and Ltmp132
	.uleb128 Ltmp133-Lfunc_begin6           ;     jumps to Ltmp133
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp132-Lfunc_begin6           ; >> Call Site 16 <<
	.uleb128 Ltmp134-Ltmp132                ;   Call between Ltmp132 and Ltmp134
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp134-Lfunc_begin6           ; >> Call Site 17 <<
	.uleb128 Ltmp135-Ltmp134                ;   Call between Ltmp134 and Ltmp135
	.uleb128 Ltmp136-Lfunc_begin6           ;     jumps to Ltmp136
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp137-Lfunc_begin6           ; >> Call Site 18 <<
	.uleb128 Ltmp138-Ltmp137                ;   Call between Ltmp137 and Ltmp138
	.uleb128 Ltmp139-Lfunc_begin6           ;     jumps to Ltmp139
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp140-Lfunc_begin6           ; >> Call Site 19 <<
	.uleb128 Ltmp141-Ltmp140                ;   Call between Ltmp140 and Ltmp141
	.uleb128 Ltmp142-Lfunc_begin6           ;     jumps to Ltmp142
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp143-Lfunc_begin6           ; >> Call Site 20 <<
	.uleb128 Ltmp144-Ltmp143                ;   Call between Ltmp143 and Ltmp144
	.uleb128 Ltmp145-Lfunc_begin6           ;     jumps to Ltmp145
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp144-Lfunc_begin6           ; >> Call Site 21 <<
	.uleb128 Ltmp146-Ltmp144                ;   Call between Ltmp144 and Ltmp146
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp146-Lfunc_begin6           ; >> Call Site 22 <<
	.uleb128 Ltmp147-Ltmp146                ;   Call between Ltmp146 and Ltmp147
	.uleb128 Ltmp148-Lfunc_begin6           ;     jumps to Ltmp148
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp147-Lfunc_begin6           ; >> Call Site 23 <<
	.uleb128 Lfunc_end6-Ltmp147             ;   Call between Ltmp147 and Lfunc_end6
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end6:
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
	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m ; -- Begin function _ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_def_can_be_hidden	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	2
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ; @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin7:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception7
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
Ltmp149:
	add	x0, sp, #8
	mov	x1, x19
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp150:
; %bb.1:
	ldrb	w8, [sp, #8]
	cbz	w8, LBB31_10
; %bb.2:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x22, x19, x8
	ldr	x23, [x22, #40]
	ldr	w25, [x22, #8]
	ldr	w24, [x22, #144]
	cmn	w24, #1
	b.ne	LBB31_7
; %bb.3:
Ltmp152:
	add	x8, sp, #24
	mov	x0, x22
	bl	__ZNKSt3__18ios_base6getlocEv
Ltmp153:
; %bb.4:
Ltmp154:
Lloh156:
	adrp	x1, __ZNSt3__15ctypeIcE2idE@GOTPAGE
Lloh157:
	ldr	x1, [x1, __ZNSt3__15ctypeIcE2idE@GOTPAGEOFF]
	add	x0, sp, #24
	bl	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp155:
; %bb.5:
	ldr	x8, [x0]
	ldr	x8, [x8, #56]
Ltmp156:
	mov	w1, #32
	blr	x8
Ltmp157:
; %bb.6:
	mov	x24, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	str	w24, [x22, #144]
LBB31_7:
	mov	w8, #176
	and	w8, w25, w8
	add	x3, x20, x21
	cmp	w8, #32
	csel	x2, x3, x20, eq
Ltmp159:
	sxtb	w5, w24
	mov	x0, x23
	mov	x1, x20
	mov	x4, x22
	bl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp160:
; %bb.8:
	cbnz	x0, LBB31_10
; %bb.9:
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
	ldr	w8, [x0, #32]
	mov	w9, #5
	orr	w1, w8, w9
Ltmp162:
	bl	__ZNSt3__18ios_base5clearEj
Ltmp163:
LBB31_10:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
LBB31_11:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB31_12:
Ltmp164:
	b	LBB31_15
LBB31_13:
Ltmp158:
	mov	x20, x0
	add	x0, sp, #24
	bl	__ZNSt3__16localeD1Ev
	b	LBB31_16
LBB31_14:
Ltmp161:
LBB31_15:
	mov	x20, x0
LBB31_16:
	add	x0, sp, #8
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
	b	LBB31_18
LBB31_17:
Ltmp151:
	mov	x20, x0
LBB31_18:
	mov	x0, x20
	bl	___cxa_begin_catch
	ldr	x8, [x19]
	ldur	x8, [x8, #-24]
	add	x0, x19, x8
Ltmp165:
	bl	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp166:
; %bb.19:
	bl	___cxa_end_catch
	b	LBB31_11
LBB31_20:
Ltmp167:
	mov	x19, x0
Ltmp168:
	bl	___cxa_end_catch
Ltmp169:
; %bb.21:
	mov	x0, x19
	bl	__Unwind_Resume
LBB31_22:
Ltmp170:
	bl	___clang_call_terminate
	.loh AdrpLdrGot	Lloh156, Lloh157
Lfunc_end7:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table31:
Lexception7:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	155                             ; @TType Encoding = indirect pcrel sdata4
	.uleb128 Lttbase0-Lttbaseref0
Lttbaseref0:
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end7-Lcst_begin7
Lcst_begin7:
	.uleb128 Ltmp149-Lfunc_begin7           ; >> Call Site 1 <<
	.uleb128 Ltmp150-Ltmp149                ;   Call between Ltmp149 and Ltmp150
	.uleb128 Ltmp151-Lfunc_begin7           ;     jumps to Ltmp151
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp152-Lfunc_begin7           ; >> Call Site 2 <<
	.uleb128 Ltmp153-Ltmp152                ;   Call between Ltmp152 and Ltmp153
	.uleb128 Ltmp161-Lfunc_begin7           ;     jumps to Ltmp161
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp154-Lfunc_begin7           ; >> Call Site 3 <<
	.uleb128 Ltmp157-Ltmp154                ;   Call between Ltmp154 and Ltmp157
	.uleb128 Ltmp158-Lfunc_begin7           ;     jumps to Ltmp158
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp159-Lfunc_begin7           ; >> Call Site 4 <<
	.uleb128 Ltmp160-Ltmp159                ;   Call between Ltmp159 and Ltmp160
	.uleb128 Ltmp161-Lfunc_begin7           ;     jumps to Ltmp161
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp162-Lfunc_begin7           ; >> Call Site 5 <<
	.uleb128 Ltmp163-Ltmp162                ;   Call between Ltmp162 and Ltmp163
	.uleb128 Ltmp164-Lfunc_begin7           ;     jumps to Ltmp164
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp163-Lfunc_begin7           ; >> Call Site 6 <<
	.uleb128 Ltmp165-Ltmp163                ;   Call between Ltmp163 and Ltmp165
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp165-Lfunc_begin7           ; >> Call Site 7 <<
	.uleb128 Ltmp166-Ltmp165                ;   Call between Ltmp165 and Ltmp166
	.uleb128 Ltmp167-Lfunc_begin7           ;     jumps to Ltmp167
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp166-Lfunc_begin7           ; >> Call Site 8 <<
	.uleb128 Ltmp168-Ltmp166                ;   Call between Ltmp166 and Ltmp168
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp168-Lfunc_begin7           ; >> Call Site 9 <<
	.uleb128 Ltmp169-Ltmp168                ;   Call between Ltmp168 and Ltmp169
	.uleb128 Ltmp170-Lfunc_begin7           ;     jumps to Ltmp170
	.byte	1                               ;   On action: 1
	.uleb128 Ltmp169-Lfunc_begin7           ; >> Call Site 10 <<
	.uleb128 Lfunc_end7-Ltmp169             ;   Call between Ltmp169 and Lfunc_end7
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end7:
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
Lfunc_begin8:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception8
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
	cbz	x0, LBB32_16
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
	b.lt	LBB32_3
; %bb.2:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x2, x25
	blr	x8
	cmp	x0, x25
	b.ne	LBB32_15
LBB32_3:
	cmp	x23, #1
	b.lt	LBB32_12
; %bb.4:
	mov	x8, #9223372036854775792
	cmp	x23, x8
	b.hs	LBB32_17
; %bb.5:
	cmp	x23, #23
	b.hs	LBB32_7
; %bb.6:
	add	x25, sp, #8
	strb	w23, [sp, #31]
	b	LBB32_8
LBB32_7:
	add	x8, x23, #16
	and	x26, x8, #0xfffffffffffffff0
	mov	x0, x26
	bl	__Znwm
	mov	x25, x0
	orr	x8, x26, #0x8000000000000000
	stp	x23, x8, [sp, #16]
	str	x0, [sp, #8]
LBB32_8:
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
Ltmp171:
	mov	x0, x19
	mov	x2, x23
	blr	x8
Ltmp172:
; %bb.9:
	mov	x24, x0
	ldrsb	w8, [sp, #31]
	tbnz	w8, #31, LBB32_11
; %bb.10:
	cmp	x24, x23
	b.ne	LBB32_15
	b	LBB32_12
LBB32_11:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
	cmp	x24, x23
	b.ne	LBB32_15
LBB32_12:
	sub	x22, x22, x21
	cmp	x22, #1
	b.lt	LBB32_14
; %bb.13:
	ldr	x8, [x19]
	ldr	x8, [x8, #96]
	mov	x0, x19
	mov	x1, x21
	mov	x2, x22
	blr	x8
	cmp	x0, x22
	b.ne	LBB32_15
LBB32_14:
	str	xzr, [x20, #24]
	b	LBB32_16
LBB32_15:
	mov	x19, #0
LBB32_16:
	mov	x0, x19
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #64]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #48]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB32_17:
	add	x0, sp, #8
	bl	__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB6v15006Ev
LBB32_18:
Ltmp173:
	mov	x19, x0
	ldrsb	w8, [sp, #31]
	tbz	w8, #31, LBB32_20
; %bb.19:
	ldr	x0, [sp, #8]
	bl	__ZdlPv
LBB32_20:
	mov	x0, x19
	bl	__Unwind_Resume
Lfunc_end8:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table32:
Lexception8:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end8-Lcst_begin8
Lcst_begin8:
	.uleb128 Lfunc_begin8-Lfunc_begin8      ; >> Call Site 1 <<
	.uleb128 Ltmp171-Lfunc_begin8           ;   Call between Lfunc_begin8 and Ltmp171
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp171-Lfunc_begin8           ; >> Call Site 2 <<
	.uleb128 Ltmp172-Ltmp171                ;   Call between Ltmp171 and Ltmp172
	.uleb128 Ltmp173-Lfunc_begin8           ;     jumps to Ltmp173
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp172-Lfunc_begin8           ; >> Call Site 3 <<
	.uleb128 Lfunc_end8-Ltmp172             ;   Call between Ltmp172 and Lfunc_end8
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end8:
	.p2align	2
                                        ; -- End function
	.section	__TEXT,__text,regular,pure_instructions
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
Lloh158:
	adrp	x0, l_.str.23@PAGE
Lloh159:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.loh AdrpAdd	Lloh158, Lloh159
	.cfi_endproc
                                        ; -- End function
	.private_extern	__ZNSt3__120__throw_length_errorB6v15006EPKc ; -- Begin function _ZNSt3__120__throw_length_errorB6v15006EPKc
	.globl	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.weak_def_can_be_hidden	__ZNSt3__120__throw_length_errorB6v15006EPKc
	.p2align	2
__ZNSt3__120__throw_length_errorB6v15006EPKc: ; @_ZNSt3__120__throw_length_errorB6v15006EPKc
Lfunc_begin9:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception9
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
Ltmp174:
	mov	x1, x20
	bl	__ZNSt12length_errorC1B6v15006EPKc
Ltmp175:
; %bb.1:
Lloh160:
	adrp	x1, __ZTISt12length_error@GOTPAGE
Lloh161:
	ldr	x1, [x1, __ZTISt12length_error@GOTPAGEOFF]
Lloh162:
	adrp	x2, __ZNSt12length_errorD1Ev@GOTPAGE
Lloh163:
	ldr	x2, [x2, __ZNSt12length_errorD1Ev@GOTPAGEOFF]
	mov	x0, x19
	bl	___cxa_throw
LBB34_2:
Ltmp176:
	mov	x20, x0
	mov	x0, x19
	bl	___cxa_free_exception
	mov	x0, x20
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh162, Lloh163
	.loh AdrpLdrGot	Lloh160, Lloh161
Lfunc_end9:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table34:
Lexception9:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end9-Lcst_begin9
Lcst_begin9:
	.uleb128 Lfunc_begin9-Lfunc_begin9      ; >> Call Site 1 <<
	.uleb128 Ltmp174-Lfunc_begin9           ;   Call between Lfunc_begin9 and Ltmp174
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp174-Lfunc_begin9           ; >> Call Site 2 <<
	.uleb128 Ltmp175-Ltmp174                ;   Call between Ltmp174 and Ltmp175
	.uleb128 Ltmp176-Lfunc_begin9           ;     jumps to Ltmp176
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp175-Lfunc_begin9           ; >> Call Site 3 <<
	.uleb128 Lfunc_end9-Ltmp175             ;   Call between Ltmp175 and Lfunc_end9
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end9:
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
Lloh164:
	adrp	x8, __ZTVSt12length_error@GOTPAGE
Lloh165:
	ldr	x8, [x8, __ZTVSt12length_error@GOTPAGEOFF]
	add	x8, x8, #16
	str	x8, [x0]
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.loh AdrpLdrGot	Lloh164, Lloh165
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__StaticInit,regular,pure_instructions
	.p2align	2                               ; -- Begin function _GLOBAL__sub_I_main.cpp
__GLOBAL__sub_I_main.cpp:               ; @_GLOBAL__sub_I_main.cpp
Lfunc_begin10:
	.cfi_startproc
	.cfi_personality 155, ___gxx_personality_v0
	.cfi_lsda 16, Lexception10
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
	adrp	x8, _StartTime@PAGE
	str	xzr, [x8, _StartTime@PAGEOFF]
Lloh166:
	adrp	x23, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh167:
	ldr	x23, [x23, __ZTVNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	add	x22, x23, #64
Lloh168:
	adrp	x24, _outFile@PAGE
Lloh169:
	add	x24, x24, _outFile@PAGEOFF
	str	x22, [x24, #416]
Lloh170:
	adrp	x21, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGE
Lloh171:
	ldr	x21, [x21, __ZTTNSt3__114basic_ofstreamIcNS_11char_traitsIcEEEE@GOTPAGEOFF]
	ldp	x8, x9, [x21, #8]
	str	x8, [x24]
	ldur	x8, [x8, #-24]
	str	x9, [x24, x8]
	ldr	x8, [x24]
	ldur	x8, [x8, #-24]
	add	x20, x24, x8
Ltmp177:
	add	x19, x24, #8
	mov	x0, x20
	mov	x1, x19
	bl	__ZNSt3__18ios_base4initEPv
Ltmp178:
; %bb.1:
	str	xzr, [x20, #136]
	mov	w8, #-1
	str	w8, [x20, #144]
	add	x8, x23, #24
	str	x8, [x24]
	str	x22, [x24, #416]
Ltmp180:
	mov	x0, x19
	bl	__ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev
Ltmp181:
; %bb.2:
Lloh172:
	adrp	x0, __ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev@GOTPAGE
Lloh173:
	ldr	x0, [x0, __ZNSt3__114basic_ofstreamIcNS_11char_traitsIcEEED1Ev@GOTPAGEOFF]
Lloh174:
	adrp	x1, _outFile@PAGE
Lloh175:
	add	x1, x1, _outFile@PAGEOFF
Lloh176:
	adrp	x2, ___dso_handle@PAGE
Lloh177:
	add	x2, x2, ___dso_handle@PAGEOFF
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #16]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp], #64             ; 16-byte Folded Reload
	b	___cxa_atexit
LBB36_3:
Ltmp182:
	mov	x19, x0
	add	x1, x21, #8
Lloh178:
	adrp	x0, _outFile@PAGE
Lloh179:
	add	x0, x0, _outFile@PAGEOFF
	bl	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEED2Ev
	b	LBB36_5
LBB36_4:
Ltmp179:
	mov	x19, x0
LBB36_5:
Lloh180:
	adrp	x0, _outFile@PAGE+416
Lloh181:
	add	x0, x0, _outFile@PAGEOFF+416
	bl	__ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev
	mov	x0, x19
	bl	__Unwind_Resume
	.loh AdrpLdrGot	Lloh170, Lloh171
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpLdrGot	Lloh166, Lloh167
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpLdrGot	Lloh172, Lloh173
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh180, Lloh181
Lfunc_end10:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table36:
Lexception10:
	.byte	255                             ; @LPStart Encoding = omit
	.byte	255                             ; @TType Encoding = omit
	.byte	1                               ; Call site Encoding = uleb128
	.uleb128 Lcst_end10-Lcst_begin10
Lcst_begin10:
	.uleb128 Ltmp177-Lfunc_begin10          ; >> Call Site 1 <<
	.uleb128 Ltmp178-Ltmp177                ;   Call between Ltmp177 and Ltmp178
	.uleb128 Ltmp179-Lfunc_begin10          ;     jumps to Ltmp179
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp180-Lfunc_begin10          ; >> Call Site 2 <<
	.uleb128 Ltmp181-Ltmp180                ;   Call between Ltmp180 and Ltmp181
	.uleb128 Ltmp182-Lfunc_begin10          ;     jumps to Ltmp182
	.byte	0                               ;   On action: cleanup
	.uleb128 Ltmp181-Lfunc_begin10          ; >> Call Site 3 <<
	.uleb128 Lfunc_end10-Ltmp181            ;   Call between Ltmp181 and Lfunc_end10
	.byte	0                               ;     has no landing pad
	.byte	0                               ;   On action: cleanup
Lcst_end10:
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
	.globl	_experiment                     ; @experiment
.zerofill __DATA,__common,_experiment,4,2
	.section	__DATA,__data
	.globl	_isFirst                        ; @isFirst
_isFirst:
	.byte	1                               ; 0x1

	.globl	_orgProcessTime                 ; @orgProcessTime
.zerofill __DATA,__common,_orgProcessTime,8,3
	.globl	_outFile                        ; @outFile
.zerofill __DATA,__common,_outFile,568,3
	.globl	_process                        ; @process
.zerofill __DATA,__common,_process,8,3
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Original percentage of trues : "

l_.str.2:                               ; @.str.2
	.asciz	"%"

l_.str.3:                               ; @.str.3
	.asciz	" "

l_.str.4:                               ; @.str.4
	.asciz	"\t"

	.section	__TEXT,__literal8,8byte_literals
	.p2align	2                               ; @__const._Z12ProcessOpt14PKtiiPjiPh.tab2
l___const._Z12ProcessOpt14PKtiiPjiPh.tab2:
	.long	0                               ; 0x0
	.long	32                              ; 0x20

	.section	__TEXT,__cstring,cstring_literals
l_.str.5:                               ; @.str.5
	.asciz	"data.txt"

l_.str.6:                               ; @.str.6
	.asciz	"OH NOES output is not correct! "

l_.str.9:                               ; @.str.9
	.asciz	"OpenMP opt"

l_.str.10:                              ; @.str.10
	.asciz	"Indices"

l_.str.11:                              ; @.str.11
	.asciz	"Remove output"

l_.str.12:                              ; @.str.12
	.asciz	"Memset"

l_.str.13:                              ; @.str.13
	.asciz	"No mod%"

l_.str.14:                              ; @.str.14
	.asciz	"Index"

l_.str.16:                              ; @.str.16
	.asciz	"LutMerged"

l_.str.17:                              ; @.str.17
	.asciz	"No double loop"

l_.str.18:                              ; @.str.18
	.asciz	"Try > and tab?"

l_.str.19:                              ; @.str.19
	.asciz	"Unroll that thing"

l_.str.20:                              ; @.str.20
	.asciz	"openMP 2 cores"

l_.str.21:                              ; @.str.21
	.asciz	"OMP + unrolled"

l_.str.22:                              ; @.str.22
	.asciz	"tab unrolled"

l_.str.23:                              ; @.str.23
	.asciz	"basic_string"

	.section	__DATA,__mod_init_func,mod_init_funcs
	.p2align	3
	.quad	__GLOBAL__sub_I_main.cpp
.subsections_via_symbols
