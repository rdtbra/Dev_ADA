	.file	"main.adb"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC1:
	.ascii "Ol\341 Mundo!!!"
	.align 8
.LC0:
	.long	1
	.long	12
	.text
	.align 2
	.globl	_ada_main
	.def	_ada_main;	.scl	2;	.type	32;	.endef
	.seh_proc	_ada_main
_ada_main:
.LFB1:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rdi
	.seh_pushreg	%rdi
	pushq	%rsi
	.seh_pushreg	%rsi
.LEHB0:
	subq	$48, %rsp
	.seh_stackalloc	48
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
.LEHE0:
	.seh_endprologue
	call	__main
	leaq	.LC1(%rip), %rsi
	leaq	.LC0(%rip), %rdi
	movq	%rsi, -16(%rbp)
	movq	%rdi, -8(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rcx
.LEHB1:
	call	ada__text_io__put_line__2
.LEHE1:
	nop
	jmp	.L1
.L6:
	cmpq	$1, %rdx
	je	.L5
	movq	%rax, %rcx
.LEHB2:
	call	_Unwind_Resume
.L5:
	movq	%rax, %rcx
	call	__gnat_unhandled_except_handler
.L1:
	nop
	addq	$48, %rsp
.LEHE2:
	popq	%rsi
	popq	%rdi
	popq	%rbp
	ret
	.def	__gnat_personality_seh0;	.scl	2;	.type	32;	.endef
	.seh_handler	__gnat_personality_seh0, @unwind, @except
	.seh_handlerdata
	.align 4
.LLSDA1:
	.byte	0xff
	.byte	0x9b
	.uleb128 .LLSDATT1-.LLSDATTD1
.LLSDATTD1:
	.byte	0x1
	.uleb128 .LLSDACSE1-.LLSDACSB1
.LLSDACSB1:
	.uleb128 .LEHB0-.LFB1
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L6-.LFB1
	.uleb128 0x1
	.uleb128 .LEHB2-.LFB1
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE1:
	.byte	0x1
	.byte	0
	.align 4
	.long	.LDFCM0-.
.LLSDATT1:
	.text
	.seh_endproc
	.data
	.align 8
.LDFCM0:
	.quad	__gnat_unhandled_others_value
	.ident	"GCC: (GNU) 12.2.0"
	.def	ada__text_io__put_line__2;	.scl	2;	.type	32;	.endef
	.def	_Unwind_Resume;	.scl	2;	.type	32;	.endef
	.def	__gnat_unhandled_except_handler;	.scl	2;	.type	32;	.endef
