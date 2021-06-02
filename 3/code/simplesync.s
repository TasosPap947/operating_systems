	.file	"simplesync_nosync.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"About to increase variable %d times\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Done increasing variable.\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.section	.text.unlikely
.Ltext_cold0:
	.text
	.globl	increase_fn
	.type	increase_fn, @function
increase_fn:
.LFB22:
	.file 1 "simplesync_nosync.c"
	.loc 1 40 0
	.cfi_startproc
.LVL0:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 40 0
	movq	%rdi, %rbx
.LVL1:
	.loc 1 44 0
	movq	stderr(%rip), %rdi
.LVL2:
	movl	$10000000, %edx
	movl	$.LC0, %esi
	xorl	%eax, %eax
	call	fprintf
.LVL3:
	movl	$10000000, %edx
.LVL4:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 49 0
	movl	(%rbx), %eax
	addl	$1, %eax
	.loc 1 45 0
	subl	$1, %edx
.LVL5:
	.loc 1 49 0
	movl	%eax, (%rbx)
.LVL6:
	.loc 1 45 0
	jne	.L2
	.loc 1 58 0
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	movl	$.LC1, %edi
	call	fwrite
.LVL7:
	.loc 1 61 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL8:
	ret
	.cfi_endproc
.LFE22:
	.size	increase_fn, .-increase_fn
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.rodata.str1.8
	.align 8
.LC3:
	.string	"About to decrease variable %d times\n"
	.section	.rodata.str1.1
.LC4:
	.string	"Done decreasing variable.\n"
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	decrease_fn
	.type	decrease_fn, @function
decrease_fn:
.LFB23:
	.loc 1 64 0
	.cfi_startproc
.LVL9:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 64 0
	movq	%rdi, %rbx
.LVL10:
	.loc 1 68 0
	movq	stderr(%rip), %rdi
.LVL11:
	movl	$10000000, %edx
	movl	$.LC3, %esi
	xorl	%eax, %eax
	call	fprintf
.LVL12:
	movl	$10000000, %edx
.LVL13:
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 1 73 0
	movl	(%rbx), %eax
	subl	$1, %eax
	.loc 1 69 0
	subl	$1, %edx
.LVL14:
	.loc 1 73 0
	movl	%eax, (%rbx)
.LVL15:
	.loc 1 69 0
	jne	.L7
	.loc 1 82 0
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	movl	$.LC4, %edi
	call	fwrite
.LVL16:
	.loc 1 85 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL17:
	ret
	.cfi_endproc
.LFE23:
	.size	decrease_fn, .-decrease_fn
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.rodata.str1.1
.LC6:
	.string	""
.LC7:
	.string	"NOT "
.LC8:
	.string	"pthread_create"
.LC9:
	.string	"pthread_join"
.LC10:
	.string	"%sOK, val = %d.\n"
	.section	.text.unlikely
.LCOLDB11:
	.section	.text.startup,"ax",@progbits
.LHOTB11:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB24:
	.loc 1 89 0
	.cfi_startproc
.LVL18:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 101 0
	xorl	%esi, %esi
.LVL19:
	movl	$increase_fn, %edx
	.loc 1 89 0
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
	.loc 1 101 0
	leaq	12(%rsp), %rcx
	leaq	16(%rsp), %rdi
.LVL20:
	.loc 1 96 0
	movl	$0, 12(%rsp)
	.loc 1 101 0
	call	pthread_create
.LVL21:
	.loc 1 102 0
	testl	%eax, %eax
	.loc 1 101 0
	movl	%eax, %ebx
.LVL22:
	.loc 1 102 0
	jne	.L24
	.loc 1 106 0
	leaq	12(%rsp), %rcx
	leaq	24(%rsp), %rdi
	xorl	%esi, %esi
	movl	$decrease_fn, %edx
	call	pthread_create
.LVL23:
	.loc 1 107 0
	testl	%eax, %eax
	.loc 1 106 0
	movl	%eax, %ebx
.LVL24:
	.loc 1 107 0
	jne	.L24
	.loc 1 115 0
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join
.LVL25:
	.loc 1 116 0
	testl	%eax, %eax
	.loc 1 115 0
	movl	%eax, %ebx
.LVL26:
	.loc 1 116 0
	jne	.L25
.LVL27:
.L13:
	.loc 1 118 0
	movq	24(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join
.LVL28:
	.loc 1 119 0
	testl	%eax, %eax
	.loc 1 118 0
	movl	%eax, %ebx
.LVL29:
	.loc 1 119 0
	jne	.L26
.LVL30:
.L14:
	.loc 1 125 0
	movl	12(%rsp), %edx
	.loc 1 127 0
	movl	$.LC6, %esi
	movl	$.LC10, %edi
	.loc 1 125 0
	testl	%edx, %edx
	sete	%cl
	.loc 1 127 0
	testb	%cl, %cl
	.loc 1 125 0
	movzbl	%cl, %ebx
.LVL31:
	.loc 1 127 0
	movl	$.LC7, %ecx
	cmove	%rcx, %rsi
	xorl	%eax, %eax
	call	printf
.LVL32:
	.loc 1 130 0
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	movl	%ebx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL33:
	ret
.LVL34:
.L25:
	.cfi_restore_state
	.loc 1 117 0
	call	__errno_location
.LVL35:
	movl	$.LC9, %edi
	movl	%ebx, (%rax)
	call	perror
.LVL36:
	jmp	.L13
.LVL37:
.L26:
	.loc 1 120 0
	call	__errno_location
.LVL38:
	movl	$.LC9, %edi
	movl	%ebx, (%rax)
	call	perror
.LVL39:
	jmp	.L14
.LVL40:
.L24:
	.loc 1 108 0
	call	__errno_location
.LVL41:
	movl	$.LC8, %edi
	movl	%ebx, (%rax)
	call	perror
.LVL42:
	.loc 1 109 0
	movl	$1, %edi
	call	exit
.LVL43:
	.cfi_endproc
.LFE24:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE11:
	.section	.text.startup
.LHOTE11:
	.text
.Letext0:
	.section	.text.unlikely
.Letext_cold0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.9/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/stdio.h"
	.file 5 "/usr/include/libio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 7 "/usr/include/pthread.h"
	.file 8 "<built-in>"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/errno.h"
	.file 10 "/usr/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x73f
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF65
	.byte	0x1
	.long	.LASF66
	.long	.LASF67
	.long	.Ldebug_ranges0+0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd4
	.long	0x34
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x83
	.long	0x65
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x84
	.long	0x65
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x91
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x2
	.long	.LASF12
	.byte	0x4
	.byte	0x30
	.long	0xa3
	.uleb128 0x7
	.long	.LASF42
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x223
	.uleb128 0x8
	.long	.LASF13
	.byte	0x5
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0x8
	.long	.LASF14
	.byte	0x5
	.byte	0xfb
	.long	0x8b
	.byte	0x8
	.uleb128 0x8
	.long	.LASF15
	.byte	0x5
	.byte	0xfc
	.long	0x8b
	.byte	0x10
	.uleb128 0x8
	.long	.LASF16
	.byte	0x5
	.byte	0xfd
	.long	0x8b
	.byte	0x18
	.uleb128 0x8
	.long	.LASF17
	.byte	0x5
	.byte	0xfe
	.long	0x8b
	.byte	0x20
	.uleb128 0x8
	.long	.LASF18
	.byte	0x5
	.byte	0xff
	.long	0x8b
	.byte	0x28
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.value	0x100
	.long	0x8b
	.byte	0x30
	.uleb128 0x9
	.long	.LASF20
	.byte	0x5
	.value	0x101
	.long	0x8b
	.byte	0x38
	.uleb128 0x9
	.long	.LASF21
	.byte	0x5
	.value	0x102
	.long	0x8b
	.byte	0x40
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.value	0x104
	.long	0x8b
	.byte	0x48
	.uleb128 0x9
	.long	.LASF23
	.byte	0x5
	.value	0x105
	.long	0x8b
	.byte	0x50
	.uleb128 0x9
	.long	.LASF24
	.byte	0x5
	.value	0x106
	.long	0x8b
	.byte	0x58
	.uleb128 0x9
	.long	.LASF25
	.byte	0x5
	.value	0x108
	.long	0x25b
	.byte	0x60
	.uleb128 0x9
	.long	.LASF26
	.byte	0x5
	.value	0x10a
	.long	0x261
	.byte	0x68
	.uleb128 0x9
	.long	.LASF27
	.byte	0x5
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0x9
	.long	.LASF28
	.byte	0x5
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0x9
	.long	.LASF29
	.byte	0x5
	.value	0x112
	.long	0x6c
	.byte	0x78
	.uleb128 0x9
	.long	.LASF30
	.byte	0x5
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0x9
	.long	.LASF31
	.byte	0x5
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0x9
	.long	.LASF32
	.byte	0x5
	.value	0x118
	.long	0x267
	.byte	0x83
	.uleb128 0x9
	.long	.LASF33
	.byte	0x5
	.value	0x11c
	.long	0x277
	.byte	0x88
	.uleb128 0x9
	.long	.LASF34
	.byte	0x5
	.value	0x125
	.long	0x77
	.byte	0x90
	.uleb128 0x9
	.long	.LASF35
	.byte	0x5
	.value	0x12e
	.long	0x89
	.byte	0x98
	.uleb128 0x9
	.long	.LASF36
	.byte	0x5
	.value	0x12f
	.long	0x89
	.byte	0xa0
	.uleb128 0x9
	.long	.LASF37
	.byte	0x5
	.value	0x130
	.long	0x89
	.byte	0xa8
	.uleb128 0x9
	.long	.LASF38
	.byte	0x5
	.value	0x131
	.long	0x89
	.byte	0xb0
	.uleb128 0x9
	.long	.LASF39
	.byte	0x5
	.value	0x132
	.long	0x29
	.byte	0xb8
	.uleb128 0x9
	.long	.LASF40
	.byte	0x5
	.value	0x134
	.long	0x5e
	.byte	0xc0
	.uleb128 0x9
	.long	.LASF41
	.byte	0x5
	.value	0x136
	.long	0x27d
	.byte	0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF68
	.byte	0x5
	.byte	0x9a
	.uleb128 0x7
	.long	.LASF43
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x25b
	.uleb128 0x8
	.long	.LASF44
	.byte	0x5
	.byte	0xa1
	.long	0x25b
	.byte	0
	.uleb128 0x8
	.long	.LASF45
	.byte	0x5
	.byte	0xa2
	.long	0x261
	.byte	0x8
	.uleb128 0x8
	.long	.LASF46
	.byte	0x5
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x22a
	.uleb128 0x6
	.byte	0x8
	.long	0xa3
	.uleb128 0xb
	.long	0x91
	.long	0x277
	.uleb128 0xc
	.long	0x82
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x223
	.uleb128 0xb
	.long	0x91
	.long	0x28d
	.uleb128 0xc
	.long	0x82
	.byte	0x13
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x293
	.uleb128 0xd
	.long	0x91
	.uleb128 0x6
	.byte	0x8
	.long	0x5e
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF47
	.uleb128 0x2
	.long	.LASF48
	.byte	0x6
	.byte	0x3c
	.long	0x34
	.uleb128 0xe
	.long	.LASF51
	.byte	0x38
	.byte	0x6
	.byte	0x3f
	.long	0x2d3
	.uleb128 0xf
	.long	.LASF49
	.byte	0x6
	.byte	0x41
	.long	0x2d3
	.uleb128 0xf
	.long	.LASF50
	.byte	0x6
	.byte	0x42
	.long	0x65
	.byte	0
	.uleb128 0xb
	.long	0x91
	.long	0x2e3
	.uleb128 0xc
	.long	0x82
	.byte	0x37
	.byte	0
	.uleb128 0x2
	.long	.LASF51
	.byte	0x6
	.byte	0x45
	.long	0x2b0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF52
	.uleb128 0x10
	.long	0x5e
	.uleb128 0x6
	.byte	0x8
	.long	0x300
	.uleb128 0x11
	.uleb128 0x12
	.long	.LASF53
	.byte	0x1
	.byte	0x27
	.long	0x89
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x39a
	.uleb128 0x13
	.string	"arg"
	.byte	0x1
	.byte	0x27
	.long	0x89
	.long	.LLST0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x29
	.long	0x5e
	.long	.LLST1
	.uleb128 0x14
	.string	"ip"
	.byte	0x1
	.byte	0x2a
	.long	0x39a
	.long	.LLST2
	.uleb128 0x15
	.quad	.LVL3
	.long	0x64b
	.long	0x374
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.long	0x989680
	.byte	0
	.uleb128 0x17
	.quad	.LVL7
	.long	0x66d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2f5
	.uleb128 0x12
	.long	.LASF54
	.byte	0x1
	.byte	0x3f
	.long	0x89
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x439
	.uleb128 0x13
	.string	"arg"
	.byte	0x1
	.byte	0x3f
	.long	0x89
	.long	.LLST3
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.long	.LLST4
	.uleb128 0x14
	.string	"ip"
	.byte	0x1
	.byte	0x42
	.long	0x39a
	.long	.LLST5
	.uleb128 0x15
	.quad	.LVL12
	.long	0x64b
	.long	0x413
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0xc
	.long	0x989680
	.byte	0
	.uleb128 0x17
	.quad	.LVL16
	.long	0x66d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF55
	.byte	0x1
	.byte	0x58
	.long	0x5e
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x624
	.uleb128 0x18
	.long	.LASF56
	.byte	0x1
	.byte	0x58
	.long	0x5e
	.long	.LLST6
	.uleb128 0x18
	.long	.LASF57
	.byte	0x1
	.byte	0x58
	.long	0x624
	.long	.LLST7
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.byte	0x5a
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x14
	.string	"ret"
	.byte	0x1
	.byte	0x5a
	.long	0x5e
	.long	.LLST8
	.uleb128 0x14
	.string	"ok"
	.byte	0x1
	.byte	0x5a
	.long	0x5e
	.long	.LLST9
	.uleb128 0x19
	.string	"t1"
	.byte	0x1
	.byte	0x5b
	.long	0x2a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x19
	.string	"t2"
	.byte	0x1
	.byte	0x5b
	.long	0x2a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.quad	.LVL21
	.long	0x695
	.long	0x4ed
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	increase_fn
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x15
	.quad	.LVL23
	.long	0x695
	.long	0x51d
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	decrease_fn
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x15
	.quad	.LVL25
	.long	0x6df
	.long	0x534
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.quad	.LVL28
	.long	0x6df
	.long	0x54b
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.quad	.LVL32
	.long	0x700
	.long	0x58c
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC10
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1e
	.byte	0x3
	.quad	.LC7
	.byte	0x3
	.quad	.LC6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0
	.uleb128 0x1a
	.quad	.LVL35
	.long	0x717
	.uleb128 0x15
	.quad	.LVL36
	.long	0x722
	.long	0x5b8
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x1a
	.quad	.LVL38
	.long	0x717
	.uleb128 0x15
	.quad	.LVL39
	.long	0x722
	.long	0x5e4
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC9
	.byte	0
	.uleb128 0x1a
	.quad	.LVL41
	.long	0x717
	.uleb128 0x15
	.quad	.LVL42
	.long	0x722
	.long	0x610
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.uleb128 0x17
	.quad	.LVL43
	.long	0x734
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x8b
	.uleb128 0x1b
	.long	.LASF58
	.byte	0x4
	.byte	0xa8
	.long	0x261
	.uleb128 0x1b
	.long	.LASF59
	.byte	0x4
	.byte	0xa9
	.long	0x261
	.uleb128 0x1b
	.long	.LASF60
	.byte	0x4
	.byte	0xaa
	.long	0x261
	.uleb128 0x1c
	.long	.LASF61
	.byte	0x4
	.value	0x164
	.long	0x5e
	.long	0x667
	.uleb128 0x1d
	.long	0x667
	.uleb128 0x1d
	.long	0x28d
	.uleb128 0x1e
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x98
	.uleb128 0x1f
	.long	.LASF69
	.byte	0x8
	.byte	0
	.long	.LASF70
	.long	0x34
	.long	0x695
	.uleb128 0x1d
	.long	0x2fa
	.uleb128 0x1d
	.long	0x34
	.uleb128 0x1d
	.long	0x34
	.uleb128 0x1d
	.long	0x89
	.byte	0
	.uleb128 0x20
	.long	.LASF62
	.byte	0x7
	.byte	0xf4
	.long	0x5e
	.long	0x6b9
	.uleb128 0x1d
	.long	0x6b9
	.uleb128 0x1d
	.long	0x6bf
	.uleb128 0x1d
	.long	0x6ca
	.uleb128 0x1d
	.long	0x89
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x2a5
	.uleb128 0x6
	.byte	0x8
	.long	0x6c5
	.uleb128 0xd
	.long	0x2e3
	.uleb128 0x6
	.byte	0x8
	.long	0x6d0
	.uleb128 0x21
	.long	0x89
	.long	0x6df
	.uleb128 0x1d
	.long	0x89
	.byte	0
	.uleb128 0x1c
	.long	.LASF63
	.byte	0x7
	.value	0x105
	.long	0x5e
	.long	0x6fa
	.uleb128 0x1d
	.long	0x2a5
	.uleb128 0x1d
	.long	0x6fa
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x89
	.uleb128 0x1c
	.long	.LASF64
	.byte	0x4
	.value	0x16a
	.long	0x5e
	.long	0x717
	.uleb128 0x1d
	.long	0x28d
	.uleb128 0x1e
	.byte	0
	.uleb128 0x22
	.long	.LASF71
	.byte	0x9
	.byte	0x32
	.long	0x298
	.uleb128 0x23
	.long	.LASF72
	.byte	0x4
	.value	0x34e
	.long	0x734
	.uleb128 0x1d
	.long	0x28d
	.byte	0
	.uleb128 0x24
	.long	.LASF73
	.byte	0xa
	.value	0x21f
	.uleb128 0x1d
	.long	0x5e
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
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
	.uleb128 0x3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x17
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	.LVL8
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL3
	.quad	.LVL4
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL4
	.quad	.LVL5
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL6
	.value	0x9
	.byte	0xc
	.long	0x98967f
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL8
	.value	0x1
	.byte	0x53
	.quad	.LVL8
	.quad	.LFE22
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL9
	.quad	.LVL11
	.value	0x1
	.byte	0x55
	.quad	.LVL11
	.quad	.LVL17
	.value	0x1
	.byte	0x53
	.quad	.LVL17
	.quad	.LFE23
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL13
	.quad	.LVL14
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15
	.value	0x9
	.byte	0xc
	.long	0x98967f
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL10
	.quad	.LVL11
	.value	0x1
	.byte	0x55
	.quad	.LVL11
	.quad	.LVL17
	.value	0x1
	.byte	0x53
	.quad	.LVL17
	.quad	.LFE23
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL18
	.quad	.LVL20
	.value	0x1
	.byte	0x55
	.quad	.LVL20
	.quad	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL18
	.quad	.LVL19
	.value	0x1
	.byte	0x54
	.quad	.LVL19
	.quad	.LFE24
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL22
	.quad	.LVL23-1
	.value	0x1
	.byte	0x50
	.quad	.LVL23-1
	.quad	.LVL24
	.value	0x1
	.byte	0x53
	.quad	.LVL24
	.quad	.LVL25-1
	.value	0x1
	.byte	0x50
	.quad	.LVL25-1
	.quad	.LVL26
	.value	0x1
	.byte	0x53
	.quad	.LVL26
	.quad	.LVL27
	.value	0x1
	.byte	0x50
	.quad	.LVL27
	.quad	.LVL29
	.value	0x1
	.byte	0x53
	.quad	.LVL29
	.quad	.LVL30
	.value	0x1
	.byte	0x50
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x53
	.quad	.LVL34
	.quad	.LVL35-1
	.value	0x1
	.byte	0x50
	.quad	.LVL35-1
	.quad	.LVL37
	.value	0x1
	.byte	0x53
	.quad	.LVL37
	.quad	.LVL38-1
	.value	0x1
	.byte	0x50
	.quad	.LVL38-1
	.quad	.LVL40
	.value	0x1
	.byte	0x53
	.quad	.LVL40
	.quad	.LVL41-1
	.value	0x1
	.byte	0x50
	.quad	.LVL41-1
	.quad	.LFE24
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL31
	.quad	.LVL33
	.value	0x1
	.byte	0x53
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x50
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x3c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB24
	.quad	.LFE24
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF71:
	.string	"__errno_location"
.LASF42:
	.string	"_IO_FILE"
.LASF65:
	.string	"GNU C 4.9.2 -mtune=generic -march=x86-64 -g -O2"
.LASF24:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF34:
	.string	"_offset"
.LASF18:
	.string	"_IO_write_ptr"
.LASF13:
	.string	"_flags"
.LASF20:
	.string	"_IO_buf_base"
.LASF33:
	.string	"_lock"
.LASF50:
	.string	"__align"
.LASF25:
	.string	"_markers"
.LASF15:
	.string	"_IO_read_end"
.LASF60:
	.string	"stderr"
.LASF47:
	.string	"long long int"
.LASF63:
	.string	"pthread_join"
.LASF62:
	.string	"pthread_create"
.LASF6:
	.string	"long int"
.LASF64:
	.string	"printf"
.LASF30:
	.string	"_cur_column"
.LASF72:
	.string	"perror"
.LASF46:
	.string	"_pos"
.LASF61:
	.string	"fprintf"
.LASF57:
	.string	"argv"
.LASF73:
	.string	"exit"
.LASF45:
	.string	"_sbuf"
.LASF29:
	.string	"_old_offset"
.LASF69:
	.string	"__builtin_fwrite"
.LASF1:
	.string	"unsigned char"
.LASF56:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF52:
	.string	"long long unsigned int"
.LASF3:
	.string	"unsigned int"
.LASF43:
	.string	"_IO_marker"
.LASF32:
	.string	"_shortbuf"
.LASF36:
	.string	"__pad2"
.LASF17:
	.string	"_IO_write_base"
.LASF41:
	.string	"_unused2"
.LASF14:
	.string	"_IO_read_ptr"
.LASF49:
	.string	"__size"
.LASF21:
	.string	"_IO_buf_end"
.LASF11:
	.string	"char"
.LASF55:
	.string	"main"
.LASF44:
	.string	"_next"
.LASF35:
	.string	"__pad1"
.LASF67:
	.string	"/home/oslab/oslaba24/3/code"
.LASF37:
	.string	"__pad3"
.LASF38:
	.string	"__pad4"
.LASF39:
	.string	"__pad5"
.LASF66:
	.string	"simplesync_nosync.c"
.LASF2:
	.string	"short unsigned int"
.LASF53:
	.string	"increase_fn"
.LASF70:
	.string	"fwrite"
.LASF0:
	.string	"long unsigned int"
.LASF19:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF27:
	.string	"_fileno"
.LASF26:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF54:
	.string	"decrease_fn"
.LASF23:
	.string	"_IO_backup_base"
.LASF58:
	.string	"stdin"
.LASF28:
	.string	"_flags2"
.LASF40:
	.string	"_mode"
.LASF16:
	.string	"_IO_read_base"
.LASF31:
	.string	"_vtable_offset"
.LASF22:
	.string	"_IO_save_base"
.LASF12:
	.string	"FILE"
.LASF51:
	.string	"pthread_attr_t"
.LASF48:
	.string	"pthread_t"
.LASF59:
	.string	"stdout"
.LASF68:
	.string	"_IO_lock_t"
	.ident	"GCC: (Debian 4.9.2-10+deb8u1) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
