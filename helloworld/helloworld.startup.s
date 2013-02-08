	.section        .rodata.cst8,"a",@progbits
	.align	16
caml_negf_mask:	.quad   0x8000000000000000, 0
	.align	16
caml_absf_mask:	.quad   0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
	.data
	.globl	caml_startup__data_begin
caml_startup__data_begin:
	.text
	.globl	caml_startup__code_begin
caml_startup__code_begin:
	.text
	.align	16
	.globl	caml_program
caml_program:
	subq	$8, %rsp
.L103:
	call	camlPervasives__entry@PLT
.L104:
	movq	caml_globals_inited@GOTPCREL(%rip), %rax
	addq	$1, (%rax)
	call	camlHelloworld__entry@PLT
.L105:
	movq	caml_globals_inited@GOTPCREL(%rip), %rax
	addq	$1, (%rax)
	call	camlStd_exit__entry@PLT
.L106:
	movq	caml_globals_inited@GOTPCREL(%rip), %rax
	addq	$1, (%rax)
	movq	$1, %rax
	addq	$8, %rsp
	ret
	.type	caml_program,@function
	.size	caml_program,.-caml_program
	.text
	.align	16
	.globl	caml_curry4
caml_curry4:
	subq	$8, %rsp
.L107:
	movq	%rax, %rsi
.L108:	subq	$40, %r15
	movq	caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L109
	leaq	8(%r15), %rax
	movq	$4343, -8(%rax)
	movq	caml_curry4_1@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$8, %rsp
	ret
.L109:	call	caml_call_gc@PLT
.L110:	jmp	.L108
	.type	caml_curry4,@function
	.size	caml_curry4,.-caml_curry4
	.text
	.align	16
	.globl	caml_curry4_1
caml_curry4_1:
	subq	$8, %rsp
.L111:
	movq	%rax, %rsi
.L112:	subq	$40, %r15
	movq	caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L113
	leaq	8(%r15), %rax
	movq	$4343, -8(%rax)
	movq	caml_curry4_2@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$8, %rsp
	ret
.L113:	call	caml_call_gc@PLT
.L114:	jmp	.L112
	.type	caml_curry4_1,@function
	.size	caml_curry4_1,.-caml_curry4_1
	.text
	.align	16
	.globl	caml_curry4_2
caml_curry4_2:
	subq	$8, %rsp
.L115:
	movq	%rax, %rsi
.L116:	subq	$40, %r15
	movq	caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L117
	leaq	8(%r15), %rax
	movq	$4343, -8(%rax)
	movq	caml_curry4_3@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$8, %rsp
	ret
.L117:	call	caml_call_gc@PLT
.L118:	jmp	.L116
	.type	caml_curry4_2,@function
	.size	caml_curry4_2,.-caml_curry4_2
	.text
	.align	16
	.globl	caml_curry4_3
caml_curry4_3:
.L119:
	movq	%rax, %rsi
	movq	24(%rbx), %rcx
	movq	24(%rcx), %rax
	movq	24(%rax), %rdx
	movq	16(%rbx), %rdi
	movq	16(%rcx), %rbx
	movq	16(%rax), %rax
	movq	16(%rdx), %rcx
	jmp	*%rcx
	.type	caml_curry4_3,@function
	.size	caml_curry4_3,.-caml_curry4_3
	.text
	.align	16
	.globl	caml_curry3
caml_curry3:
	subq	$8, %rsp
.L120:
	movq	%rax, %rsi
.L121:	subq	$40, %r15
	movq	caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L122
	leaq	8(%r15), %rax
	movq	$4343, -8(%rax)
	movq	caml_curry3_1@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$8, %rsp
	ret
.L122:	call	caml_call_gc@PLT
.L123:	jmp	.L121
	.type	caml_curry3,@function
	.size	caml_curry3,.-caml_curry3
	.text
	.align	16
	.globl	caml_curry3_1
caml_curry3_1:
	subq	$8, %rsp
.L124:
	movq	%rax, %rsi
.L125:	subq	$40, %r15
	movq	caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L126
	leaq	8(%r15), %rax
	movq	$4343, -8(%rax)
	movq	caml_curry3_2@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$8, %rsp
	ret
.L126:	call	caml_call_gc@PLT
.L127:	jmp	.L125
	.type	caml_curry3_1,@function
	.size	caml_curry3_1,.-caml_curry3_1
	.text
	.align	16
	.globl	caml_curry3_2
caml_curry3_2:
.L128:
	movq	%rax, %rdi
	movq	24(%rbx), %rax
	movq	24(%rax), %rsi
	movq	16(%rbx), %rbx
	movq	16(%rax), %rax
	movq	16(%rsi), %rdx
	jmp	*%rdx
	.type	caml_curry3_2,@function
	.size	caml_curry3_2,.-caml_curry3_2
	.text
	.align	16
	.globl	caml_curry2
caml_curry2:
	subq	$8, %rsp
.L129:
	movq	%rax, %rsi
.L130:	subq	$40, %r15
	movq	caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L131
	leaq	8(%r15), %rax
	movq	$4343, -8(%rax)
	movq	caml_curry2_1@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	%rsi, 16(%rax)
	movq	%rbx, 24(%rax)
	addq	$8, %rsp
	ret
.L131:	call	caml_call_gc@PLT
.L132:	jmp	.L130
	.type	caml_curry2,@function
	.size	caml_curry2,.-caml_curry2
	.text
	.align	16
	.globl	caml_curry2_1
caml_curry2_1:
.L133:
	movq	%rax, %rdx
	movq	24(%rbx), %rdi
	movq	16(%rbx), %rax
	movq	16(%rdi), %rsi
	movq	%rdx, %rbx
	jmp	*%rsi
	.type	caml_curry2_1,@function
	.size	caml_curry2_1,.-caml_curry2_1
	.text
	.align	16
	.globl	caml_apply3
caml_apply3:
	subq	$24, %rsp
.L135:
	movq	8(%rsi), %rdx
	cmpq	$7, %rdx
	jne	.L134
	movq	16(%rsi), %rdx
	addq	$24, %rsp
	jmp	*%rdx
	.align	4
.L134:
	movq	%rdi, 8(%rsp)
	movq	%rbx, 0(%rsp)
	movq	(%rsi), %rdi
	movq	%rsi, %rbx
	call	*%rdi
.L136:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	0(%rsp), %rax
	call	*%rdi
.L137:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	8(%rsp), %rax
	addq	$24, %rsp
	jmp	*%rdi
	.type	caml_apply3,@function
	.size	caml_apply3,.-caml_apply3
	.text
	.align	16
	.globl	caml_apply2
caml_apply2:
	subq	$8, %rsp
.L139:
	movq	8(%rdi), %rsi
	cmpq	$5, %rsi
	jne	.L138
	movq	16(%rdi), %rsi
	addq	$8, %rsp
	jmp	*%rsi
	.align	4
.L138:
	movq	%rbx, 0(%rsp)
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	call	*%rsi
.L140:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	0(%rsp), %rax
	addq	$8, %rsp
	jmp	*%rdi
	.type	caml_apply2,@function
	.size	caml_apply2,.-caml_apply2
	.data
	.globl	caml_exn_Out_of_memory
	.quad	1024
caml_exn_Out_of_memory:
	.quad	.L100003
	.quad	2300
.L100003:
	.ascii	"Out_of_memory"
	.space	2
	.byte	2
	.globl	caml_bucket_Out_of_memory
	.quad	1024
caml_bucket_Out_of_memory:
	.quad	caml_exn_Out_of_memory
	.data
	.globl	caml_exn_Sys_error
	.quad	1024
caml_exn_Sys_error:
	.quad	.L100004
	.quad	2300
.L100004:
	.ascii	"Sys_error"
	.space	6
	.byte	6
	.globl	caml_bucket_Sys_error
	.quad	1024
caml_bucket_Sys_error:
	.quad	caml_exn_Sys_error
	.data
	.globl	caml_exn_Failure
	.quad	1024
caml_exn_Failure:
	.quad	.L100005
	.quad	1276
.L100005:
	.ascii	"Failure"
	.byte	0
	.globl	caml_bucket_Failure
	.quad	1024
caml_bucket_Failure:
	.quad	caml_exn_Failure
	.data
	.globl	caml_exn_Invalid_argument
	.quad	1024
caml_exn_Invalid_argument:
	.quad	.L100006
	.quad	3324
.L100006:
	.ascii	"Invalid_argument"
	.space	7
	.byte	7
	.globl	caml_bucket_Invalid_argument
	.quad	1024
caml_bucket_Invalid_argument:
	.quad	caml_exn_Invalid_argument
	.data
	.globl	caml_exn_End_of_file
	.quad	1024
caml_exn_End_of_file:
	.quad	.L100007
	.quad	2300
.L100007:
	.ascii	"End_of_file"
	.space	4
	.byte	4
	.globl	caml_bucket_End_of_file
	.quad	1024
caml_bucket_End_of_file:
	.quad	caml_exn_End_of_file
	.data
	.globl	caml_exn_Division_by_zero
	.quad	1024
caml_exn_Division_by_zero:
	.quad	.L100008
	.quad	3324
.L100008:
	.ascii	"Division_by_zero"
	.space	7
	.byte	7
	.globl	caml_bucket_Division_by_zero
	.quad	1024
caml_bucket_Division_by_zero:
	.quad	caml_exn_Division_by_zero
	.data
	.globl	caml_exn_Not_found
	.quad	1024
caml_exn_Not_found:
	.quad	.L100009
	.quad	2300
.L100009:
	.ascii	"Not_found"
	.space	6
	.byte	6
	.globl	caml_bucket_Not_found
	.quad	1024
caml_bucket_Not_found:
	.quad	caml_exn_Not_found
	.data
	.globl	caml_exn_Match_failure
	.quad	1024
caml_exn_Match_failure:
	.quad	.L100010
	.quad	2300
.L100010:
	.ascii	"Match_failure"
	.space	2
	.byte	2
	.globl	caml_bucket_Match_failure
	.quad	1024
caml_bucket_Match_failure:
	.quad	caml_exn_Match_failure
	.data
	.globl	caml_exn_Stack_overflow
	.quad	1024
caml_exn_Stack_overflow:
	.quad	.L100011
	.quad	2300
.L100011:
	.ascii	"Stack_overflow"
	.space	1
	.byte	1
	.globl	caml_bucket_Stack_overflow
	.quad	1024
caml_bucket_Stack_overflow:
	.quad	caml_exn_Stack_overflow
	.data
	.globl	caml_exn_Sys_blocked_io
	.quad	1024
caml_exn_Sys_blocked_io:
	.quad	.L100012
	.quad	2300
.L100012:
	.ascii	"Sys_blocked_io"
	.space	1
	.byte	1
	.globl	caml_bucket_Sys_blocked_io
	.quad	1024
caml_bucket_Sys_blocked_io:
	.quad	caml_exn_Sys_blocked_io
	.data
	.globl	caml_exn_Assert_failure
	.quad	1024
caml_exn_Assert_failure:
	.quad	.L100013
	.quad	2300
.L100013:
	.ascii	"Assert_failure"
	.space	1
	.byte	1
	.globl	caml_bucket_Assert_failure
	.quad	1024
caml_bucket_Assert_failure:
	.quad	caml_exn_Assert_failure
	.data
	.globl	caml_exn_Undefined_recursive_module
	.quad	1024
caml_exn_Undefined_recursive_module:
	.quad	.L100014
	.quad	4348
.L100014:
	.ascii	"Undefined_recursive_module"
	.space	5
	.byte	5
	.globl	caml_bucket_Undefined_recursive_module
	.quad	1024
caml_bucket_Undefined_recursive_module:
	.quad	caml_exn_Undefined_recursive_module
	.data
	.globl	caml_globals
caml_globals:
	.quad	camlPervasives
	.quad	camlHelloworld
	.quad	camlStd_exit
	.quad	0
	.data
	.globl	caml_globals_map
	.quad	22780
caml_globals_map:
	.ascii	"\204\225\246\276\0\0\0\230\0\0\0\22\0\0\0Q\0\0\0B\240\300*Pervasives0\333r:\27\230\261\42\340\211\31\242\277\355\6%\24\60\256\375@QDb\22\334'\25\335EXW\314I\240\4\4@\240\300*Hellow"
	.ascii	"orld0\311\341\227\352a\277\262\342\230!\367a!i\240\6\60\211\361\333\331\314\237\15\255\244c\11\361|F\301=\240\4\4@\240\300(Std_exit0K<u\217\27kw\366\203\3\37W\376u\277\312\60\263:\252>>\37\325\244\335"
	.ascii	"\263\203\237t\327\1\363\240\4\4@@"
	.space	3
	.byte	3
	.data
	.globl	caml_data_segments
caml_data_segments:
	.quad	caml_startup__data_begin
	.quad	caml_startup__data_end
	.quad	camlPervasives__data_begin
	.quad	camlPervasives__data_end
	.quad	camlHelloworld__data_begin
	.quad	camlHelloworld__data_end
	.quad	camlStd_exit__data_begin
	.quad	camlStd_exit__data_end
	.quad	0
	.data
	.globl	caml_code_segments
caml_code_segments:
	.quad	caml_startup__code_begin
	.quad	caml_startup__code_end
	.quad	camlPervasives__code_begin
	.quad	camlPervasives__code_end
	.quad	camlHelloworld__code_begin
	.quad	camlHelloworld__code_end
	.quad	camlStd_exit__code_begin
	.quad	camlStd_exit__code_end
	.quad	0
	.data
	.globl	caml_frametable
caml_frametable:
	.quad	caml_startup__frametable
	.quad	caml_system__frametable
	.quad	camlPervasives__frametable
	.quad	camlHelloworld__frametable
	.quad	camlStd_exit__frametable
	.quad	0
	.text
	.globl	caml_startup__code_end
caml_startup__code_end:
	.data
	.globl	caml_startup__data_end
caml_startup__data_end:
	.long	0
	.globl	caml_startup__frametable
caml_startup__frametable:
	.quad	12
	.quad	.L140
	.word	16
	.word	1
	.word	0
	.align	8
	.quad	.L137
	.word	32
	.word	1
	.word	8
	.align	8
	.quad	.L136
	.word	32
	.word	2
	.word	0
	.word	8
	.align	8
	.quad	.L132
	.word	16
	.word	2
	.word	3
	.word	7
	.align	8
	.quad	.L127
	.word	16
	.word	2
	.word	3
	.word	7
	.align	8
	.quad	.L123
	.word	16
	.word	2
	.word	3
	.word	7
	.align	8
	.quad	.L118
	.word	16
	.word	2
	.word	3
	.word	7
	.align	8
	.quad	.L114
	.word	16
	.word	2
	.word	3
	.word	7
	.align	8
	.quad	.L110
	.word	16
	.word	2
	.word	3
	.word	7
	.align	8
	.quad	.L106
	.word	16
	.word	0
	.align	8
	.quad	.L105
	.word	16
	.word	0
	.align	8
	.quad	.L104
	.word	16
	.word	0
	.align	8
	.section .note.GNU-stack,"",%progbits
