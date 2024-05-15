	.file	"main.c"
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Enter any character: \0"
.LC1:
	.ascii "'%c' is uppercase\12\0"
.LC2:
	.ascii "'%c' is lowercase\12\0"
	.align 8
.LC3:
	.ascii "Entered character is not alphabet\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movb	$0, -1(%rbp)
	leaq	.LC0(%rip), %rcx
	call	printf
	call	getchar
	movb	%al, -1(%rbp)
	cmpb	$64, -1(%rbp)
	jle	.L2
	cmpb	$90, -1(%rbp)
	jg	.L2
	movsbl	-1(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC1(%rip), %rcx
	call	printf
	jmp	.L3
.L2:
	cmpb	$96, -1(%rbp)
	jle	.L4
	cmpb	$122, -1(%rbp)
	jg	.L4
	movsbl	-1(%rbp), %eax
	movl	%eax, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	jmp	.L3
.L4:
	leaq	.LC3(%rip), %rcx
	call	printf
.L3:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 7.4.0"
	.def	printf;	.scl	2;	.type	32;	.endef
	.def	getchar;	.scl	2;	.type	32;	.endef
