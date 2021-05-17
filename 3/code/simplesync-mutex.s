	.file	"simplesync.c"
	.text
.Ltext0:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC0:
	.string	"About to increase variable %d times\n"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"Done increasing variable.\n"
	.text
	.p2align 4,,15
	.globl	increase_fn
	.type	increase_fn, @function
increase_fn:
.LFB53:
	.file 1 "simplesync.c"
	.loc 1 43 0
	.cfi_startproc
.LVL0:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
.LVL1:
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 97 0
	movq	stderr(%rip), %rdi
.LVL2:
.LBE13:
.LBE12:
	.loc 1 43 0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
.LBB16:
.LBB14:
	.loc 2 97 0
	leaq	.LC0(%rip), %rdx
.LBE14:
.LBE16:
	.loc 1 43 0
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 59 0
	leaq	mutex(%rip), %rbp
.LBB17:
.LBB15:
	.loc 2 97 0
	movl	$10000000, %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	movl	$10000000, %ebx
	call	__fprintf_chk@PLT
.LVL3:
	.p2align 4,,10
	.p2align 3
.L2:
.LBE15:
.LBE17:
	.loc 1 59 0
	movq	%rbp, %rdi
	call	pthread_mutex_lock@PLT
.LVL4:
	.loc 1 61 0
	movl	(%r12), %eax
	.loc 1 64 0
	movq	%rbp, %rdi
	.loc 1 61 0
	addl	$1, %eax
	movl	%eax, (%r12)
	.loc 1 64 0
	call	pthread_mutex_unlock@PLT
.LVL5:
	.loc 1 48 0
	subl	$1, %ebx
.LVL6:
	jne	.L2
.LVL7:
.LBB18:
.LBB19:
	.loc 2 97 0
	movq	stderr(%rip), %rcx
	leaq	.LC1(%rip), %rdi
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
.LVL8:
.LBE19:
.LBE18:
	.loc 1 70 0
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL9:
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL10:
	ret
	.cfi_endproc
.LFE53:
	.size	increase_fn, .-increase_fn
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"About to decrease variable %d times\n"
	.section	.rodata.str1.1
.LC3:
	.string	"Done decreasing variable.\n"
	.text
	.p2align 4,,15
	.globl	decrease_fn
	.type	decrease_fn, @function
decrease_fn:
.LFB54:
	.loc 1 73 0
	.cfi_startproc
.LVL11:
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movq	%rdi, %r12
.LVL12:
.LBB20:
.LBB21:
	.loc 2 97 0
	movq	stderr(%rip), %rdi
.LVL13:
.LBE21:
.LBE20:
	.loc 1 73 0
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
.LBB24:
.LBB22:
	.loc 2 97 0
	leaq	.LC2(%rip), %rdx
.LBE22:
.LBE24:
	.loc 1 73 0
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 89 0
	leaq	mutex(%rip), %rbp
.LBB25:
.LBB23:
	.loc 2 97 0
	movl	$10000000, %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	movl	$10000000, %ebx
	call	__fprintf_chk@PLT
.LVL14:
	.p2align 4,,10
	.p2align 3
.L7:
.LBE23:
.LBE25:
	.loc 1 89 0
	movq	%rbp, %rdi
	call	pthread_mutex_lock@PLT
.LVL15:
	.loc 1 91 0
	movl	(%r12), %eax
	.loc 1 94 0
	movq	%rbp, %rdi
	.loc 1 91 0
	subl	$1, %eax
	movl	%eax, (%r12)
	.loc 1 94 0
	call	pthread_mutex_unlock@PLT
.LVL16:
	.loc 1 78 0
	subl	$1, %ebx
.LVL17:
	jne	.L7
.LVL18:
.LBB26:
.LBB27:
	.loc 2 97 0
	movq	stderr(%rip), %rcx
	leaq	.LC3(%rip), %rdi
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
.LVL19:
.LBE27:
.LBE26:
	.loc 1 100 0
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL20:
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
.LVL21:
	ret
	.cfi_endproc
.LFE54:
	.size	decrease_fn, .-decrease_fn
	.section	.rodata.str1.1
.LC4:
	.string	""
.LC5:
	.string	"NOT "
.LC6:
	.string	"pthread_create"
.LC7:
	.string	"pthread_join"
.LC8:
	.string	"%sOK, val = %d.\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB55:
	.loc 1 104 0
	.cfi_startproc
.LVL22:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.loc 1 116 0
	leaq	increase_fn(%rip), %rdx
	xorl	%esi, %esi
.LVL23:
	.loc 1 104 0
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 116 0
	leaq	4(%rsp), %rbx
	leaq	8(%rsp), %rdi
.LVL24:
	.loc 1 111 0
	movl	$0, 4(%rsp)
	.loc 1 104 0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 116 0
	movq	%rbx, %rcx
	call	pthread_create@PLT
.LVL25:
	.loc 1 117 0
	testl	%eax, %eax
	jne	.L25
	.loc 1 121 0
	leaq	16(%rsp), %rdi
	leaq	decrease_fn(%rip), %rdx
	movq	%rbx, %rcx
	xorl	%esi, %esi
	call	pthread_create@PLT
.LVL26:
	.loc 1 122 0
	testl	%eax, %eax
	.loc 1 121 0
	movl	%eax, %ebx
.LVL27:
	.loc 1 122 0
	jne	.L26
	.loc 1 130 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL28:
	.loc 1 131 0
	testl	%eax, %eax
	.loc 1 130 0
	movl	%eax, %ebx
.LVL29:
	.loc 1 131 0
	jne	.L27
.LVL30:
.L13:
	.loc 1 133 0
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL31:
	.loc 1 134 0
	testl	%eax, %eax
	.loc 1 133 0
	movl	%eax, %ebx
.LVL32:
	.loc 1 134 0
	jne	.L28
.LVL33:
.L14:
	.loc 1 140 0
	movl	4(%rsp), %ecx
	.loc 1 142 0
	leaq	.LC5(%rip), %rax
	leaq	.LC4(%rip), %rdx
	.loc 1 140 0
	xorl	%ebx, %ebx
.LVL34:
.LBB28:
.LBB29:
	.loc 2 104 0
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
.LBE29:
.LBE28:
	.loc 1 140 0
	testl	%ecx, %ecx
	sete	%bl
.LVL35:
	.loc 1 142 0
	cmovne	%rax, %rdx
.LVL36:
.LBB31:
.LBB30:
	.loc 2 104 0
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL37:
.LBE30:
.LBE31:
	.loc 1 145 0
	movq	24(%rsp), %rsi
	xorq	%fs:40, %rsi
	movl	%ebx, %eax
	jne	.L29
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL38:
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL39:
.L27:
	.cfi_restore_state
	.loc 1 132 0
	call	__errno_location@PLT
.LVL40:
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	call	perror@PLT
.LVL41:
	jmp	.L13
.LVL42:
.L28:
	.loc 1 135 0
	call	__errno_location@PLT
.LVL43:
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	call	perror@PLT
.LVL44:
	jmp	.L14
.LVL45:
.L29:
	.loc 1 145 0
	call	__stack_chk_fail@PLT
.LVL46:
.L26:
	.loc 1 123 0
	call	__errno_location@PLT
.LVL47:
	leaq	.LC6(%rip), %rdi
	movl	%ebx, (%rax)
	call	perror@PLT
.LVL48:
	.loc 1 124 0
	movl	$1, %edi
	call	exit@PLT
.LVL49:
.L25:
	movl	%eax, %ebp
	.loc 1 118 0
	call	__errno_location@PLT
.LVL50:
	leaq	.LC6(%rip), %rdi
	movl	%ebp, (%rax)
	call	perror@PLT
.LVL51:
	.loc 1 119 0
	movl	$1, %edi
	call	exit@PLT
.LVL52:
	.cfi_endproc
.LFE55:
	.size	main, .-main
	.comm	mutex,40,32
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 11 "/usr/include/unistd.h"
	.file 12 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 13 "/usr/include/time.h"
	.file 14 "/usr/include/pthread.h"
	.file 15 "/usr/include/errno.h"
	.file 16 "/usr/include/stdlib.h"
	.file 17 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x9e9
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF104
	.byte	0xc
	.long	.LASF105
	.long	.LASF106
	.long	.Ldebug_ranges0+0xb0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd8
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
	.uleb128 0x5
	.long	0x5e
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x8c
	.long	0x6a
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x8d
	.long	0x6a
	.uleb128 0x6
	.byte	0x8
	.uleb128 0x7
	.byte	0x8
	.long	0x8f
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x8f
	.uleb128 0x9
	.long	.LASF41
	.byte	0xd8
	.byte	0x5
	.byte	0xf5
	.long	0x21b
	.uleb128 0xa
	.long	.LASF11
	.byte	0x5
	.byte	0xf6
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x5
	.byte	0xfb
	.long	0x89
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0xfc
	.long	0x89
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0xfd
	.long	0x89
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0xfe
	.long	0x89
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0xff
	.long	0x89
	.byte	0x28
	.uleb128 0xb
	.long	.LASF17
	.byte	0x5
	.value	0x100
	.long	0x89
	.byte	0x30
	.uleb128 0xb
	.long	.LASF18
	.byte	0x5
	.value	0x101
	.long	0x89
	.byte	0x38
	.uleb128 0xb
	.long	.LASF19
	.byte	0x5
	.value	0x102
	.long	0x89
	.byte	0x40
	.uleb128 0xb
	.long	.LASF20
	.byte	0x5
	.value	0x104
	.long	0x89
	.byte	0x48
	.uleb128 0xb
	.long	.LASF21
	.byte	0x5
	.value	0x105
	.long	0x89
	.byte	0x50
	.uleb128 0xb
	.long	.LASF22
	.byte	0x5
	.value	0x106
	.long	0x89
	.byte	0x58
	.uleb128 0xb
	.long	.LASF23
	.byte	0x5
	.value	0x108
	.long	0x25e
	.byte	0x60
	.uleb128 0xb
	.long	.LASF24
	.byte	0x5
	.value	0x10a
	.long	0x264
	.byte	0x68
	.uleb128 0xb
	.long	.LASF25
	.byte	0x5
	.value	0x10c
	.long	0x5e
	.byte	0x70
	.uleb128 0xb
	.long	.LASF26
	.byte	0x5
	.value	0x110
	.long	0x5e
	.byte	0x74
	.uleb128 0xb
	.long	.LASF27
	.byte	0x5
	.value	0x112
	.long	0x71
	.byte	0x78
	.uleb128 0xb
	.long	.LASF28
	.byte	0x5
	.value	0x116
	.long	0x42
	.byte	0x80
	.uleb128 0xb
	.long	.LASF29
	.byte	0x5
	.value	0x117
	.long	0x50
	.byte	0x82
	.uleb128 0xb
	.long	.LASF30
	.byte	0x5
	.value	0x118
	.long	0x26a
	.byte	0x83
	.uleb128 0xb
	.long	.LASF31
	.byte	0x5
	.value	0x11c
	.long	0x27a
	.byte	0x88
	.uleb128 0xb
	.long	.LASF32
	.byte	0x5
	.value	0x125
	.long	0x7c
	.byte	0x90
	.uleb128 0xb
	.long	.LASF33
	.byte	0x5
	.value	0x12d
	.long	0x87
	.byte	0x98
	.uleb128 0xb
	.long	.LASF34
	.byte	0x5
	.value	0x12e
	.long	0x87
	.byte	0xa0
	.uleb128 0xb
	.long	.LASF35
	.byte	0x5
	.value	0x12f
	.long	0x87
	.byte	0xa8
	.uleb128 0xb
	.long	.LASF36
	.byte	0x5
	.value	0x130
	.long	0x87
	.byte	0xb0
	.uleb128 0xb
	.long	.LASF37
	.byte	0x5
	.value	0x132
	.long	0x29
	.byte	0xb8
	.uleb128 0xb
	.long	.LASF38
	.byte	0x5
	.value	0x133
	.long	0x5e
	.byte	0xc0
	.uleb128 0xb
	.long	.LASF39
	.byte	0x5
	.value	0x135
	.long	0x280
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x7
	.long	0x9b
	.uleb128 0xc
	.long	.LASF107
	.byte	0x5
	.byte	0x9a
	.uleb128 0x9
	.long	.LASF42
	.byte	0x18
	.byte	0x5
	.byte	0xa0
	.long	0x25e
	.uleb128 0xa
	.long	.LASF43
	.byte	0x5
	.byte	0xa1
	.long	0x25e
	.byte	0
	.uleb128 0xa
	.long	.LASF44
	.byte	0x5
	.byte	0xa2
	.long	0x264
	.byte	0x8
	.uleb128 0xa
	.long	.LASF45
	.byte	0x5
	.byte	0xa6
	.long	0x5e
	.byte	0x10
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x22d
	.uleb128 0x7
	.byte	0x8
	.long	0x9b
	.uleb128 0xd
	.long	0x8f
	.long	0x27a
	.uleb128 0xe
	.long	0x34
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x226
	.uleb128 0xd
	.long	0x8f
	.long	0x290
	.uleb128 0xe
	.long	0x34
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF108
	.uleb128 0x10
	.long	.LASF46
	.byte	0x5
	.value	0x13f
	.long	0x290
	.uleb128 0x10
	.long	.LASF47
	.byte	0x5
	.value	0x140
	.long	0x290
	.uleb128 0x10
	.long	.LASF48
	.byte	0x5
	.value	0x141
	.long	0x290
	.uleb128 0x7
	.byte	0x8
	.long	0x96
	.uleb128 0x8
	.long	0x2b9
	.uleb128 0x11
	.long	0x2b9
	.uleb128 0x12
	.long	.LASF49
	.byte	0x7
	.byte	0x87
	.long	0x264
	.uleb128 0x12
	.long	.LASF50
	.byte	0x7
	.byte	0x88
	.long	0x264
	.uleb128 0x12
	.long	.LASF51
	.byte	0x7
	.byte	0x89
	.long	0x264
	.uleb128 0x12
	.long	.LASF52
	.byte	0x8
	.byte	0x1a
	.long	0x5e
	.uleb128 0xd
	.long	0x2bf
	.long	0x300
	.uleb128 0x13
	.byte	0
	.uleb128 0x8
	.long	0x2f5
	.uleb128 0x12
	.long	.LASF53
	.byte	0x8
	.byte	0x1b
	.long	0x300
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF54
	.uleb128 0x9
	.long	.LASF55
	.byte	0x10
	.byte	0x9
	.byte	0x52
	.long	0x33c
	.uleb128 0xa
	.long	.LASF56
	.byte	0x9
	.byte	0x54
	.long	0x33c
	.byte	0
	.uleb128 0xa
	.long	.LASF57
	.byte	0x9
	.byte	0x55
	.long	0x33c
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x317
	.uleb128 0x2
	.long	.LASF58
	.byte	0x9
	.byte	0x56
	.long	0x317
	.uleb128 0x9
	.long	.LASF59
	.byte	0x28
	.byte	0x9
	.byte	0x76
	.long	0x3ba
	.uleb128 0xa
	.long	.LASF60
	.byte	0x9
	.byte	0x78
	.long	0x5e
	.byte	0
	.uleb128 0xa
	.long	.LASF61
	.byte	0x9
	.byte	0x79
	.long	0x49
	.byte	0x4
	.uleb128 0xa
	.long	.LASF62
	.byte	0x9
	.byte	0x7a
	.long	0x5e
	.byte	0x8
	.uleb128 0xa
	.long	.LASF63
	.byte	0x9
	.byte	0x7c
	.long	0x49
	.byte	0xc
	.uleb128 0xa
	.long	.LASF64
	.byte	0x9
	.byte	0x94
	.long	0x5e
	.byte	0x10
	.uleb128 0xa
	.long	.LASF65
	.byte	0x9
	.byte	0x9a
	.long	0x57
	.byte	0x14
	.uleb128 0xa
	.long	.LASF66
	.byte	0x9
	.byte	0x9a
	.long	0x57
	.byte	0x16
	.uleb128 0xa
	.long	.LASF67
	.byte	0x9
	.byte	0x9b
	.long	0x342
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF68
	.uleb128 0x2
	.long	.LASF69
	.byte	0xa
	.byte	0x1b
	.long	0x34
	.uleb128 0x14
	.byte	0x28
	.byte	0xa
	.byte	0x43
	.long	0x3f6
	.uleb128 0x15
	.long	.LASF70
	.byte	0xa
	.byte	0x45
	.long	0x34d
	.uleb128 0x15
	.long	.LASF71
	.byte	0xa
	.byte	0x46
	.long	0x3f6
	.uleb128 0x15
	.long	.LASF72
	.byte	0xa
	.byte	0x47
	.long	0x6a
	.byte	0
	.uleb128 0xd
	.long	0x8f
	.long	0x406
	.uleb128 0xe
	.long	0x34
	.byte	0x27
	.byte	0
	.uleb128 0x2
	.long	.LASF73
	.byte	0xa
	.byte	0x48
	.long	0x3cc
	.uleb128 0x10
	.long	.LASF74
	.byte	0xb
	.value	0x222
	.long	0x41d
	.uleb128 0x7
	.byte	0x8
	.long	0x89
	.uleb128 0x12
	.long	.LASF75
	.byte	0xc
	.byte	0x24
	.long	0x89
	.uleb128 0x12
	.long	.LASF76
	.byte	0xc
	.byte	0x32
	.long	0x5e
	.uleb128 0x12
	.long	.LASF77
	.byte	0xc
	.byte	0x37
	.long	0x5e
	.uleb128 0x12
	.long	.LASF78
	.byte	0xc
	.byte	0x3b
	.long	0x5e
	.uleb128 0xd
	.long	0x89
	.long	0x45f
	.uleb128 0xe
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF79
	.byte	0xd
	.byte	0x9f
	.long	0x44f
	.uleb128 0x12
	.long	.LASF80
	.byte	0xd
	.byte	0xa0
	.long	0x5e
	.uleb128 0x12
	.long	.LASF81
	.byte	0xd
	.byte	0xa1
	.long	0x6a
	.uleb128 0x12
	.long	.LASF82
	.byte	0xd
	.byte	0xa6
	.long	0x44f
	.uleb128 0x12
	.long	.LASF83
	.byte	0xd
	.byte	0xae
	.long	0x5e
	.uleb128 0x12
	.long	.LASF84
	.byte	0xd
	.byte	0xaf
	.long	0x6a
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.byte	0x1e
	.long	0x406
	.uleb128 0x9
	.byte	0x3
	.quad	mutex
	.uleb128 0x17
	.long	.LASF88
	.byte	0x1
	.byte	0x67
	.long	0x5e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x6f1
	.uleb128 0x18
	.long	.LASF86
	.byte	0x1
	.byte	0x67
	.long	0x5e
	.long	.LLST10
	.uleb128 0x18
	.long	.LASF87
	.byte	0x1
	.byte	0x67
	.long	0x41d
	.long	.LLST11
	.uleb128 0x19
	.string	"val"
	.byte	0x1
	.byte	0x69
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1a
	.string	"ret"
	.byte	0x1
	.byte	0x69
	.long	0x5e
	.long	.LLST12
	.uleb128 0x1a
	.string	"ok"
	.byte	0x1
	.byte	0x69
	.long	0x5e
	.long	.LLST13
	.uleb128 0x19
	.string	"t1"
	.byte	0x1
	.byte	0x6a
	.long	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x19
	.string	"t2"
	.byte	0x1
	.byte	0x6a
	.long	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.long	0x91d
	.quad	.LBB28
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x8e
	.long	0x57b
	.uleb128 0x1c
	.long	0x92d
	.long	.LLST14
	.uleb128 0x1d
	.quad	.LVL37
	.long	0x96d
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL25
	.long	0x978
	.long	0x5ab
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	increase_fn
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL26
	.long	0x978
	.long	0x5db
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	decrease_fn
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL28
	.long	0x983
	.long	0x5f2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL31
	.long	0x983
	.long	0x609
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x20
	.quad	.LVL40
	.long	0x98e
	.uleb128 0x1f
	.quad	.LVL41
	.long	0x999
	.long	0x635
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x20
	.quad	.LVL43
	.long	0x98e
	.uleb128 0x1f
	.quad	.LVL44
	.long	0x999
	.long	0x661
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x20
	.quad	.LVL46
	.long	0x9a5
	.uleb128 0x20
	.quad	.LVL47
	.long	0x98e
	.uleb128 0x1f
	.quad	.LVL48
	.long	0x999
	.long	0x69a
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x1f
	.quad	.LVL49
	.long	0x9ae
	.long	0x6b1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x20
	.quad	.LVL50
	.long	0x98e
	.uleb128 0x1f
	.quad	.LVL51
	.long	0x999
	.long	0x6dd
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x1d
	.quad	.LVL52
	.long	0x9ae
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x17
	.long	.LASF89
	.byte	0x1
	.byte	0x48
	.long	0x87
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x804
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0x48
	.long	0x87
	.long	.LLST5
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.long	0x5e
	.long	.LLST6
	.uleb128 0x1a
	.string	"ip"
	.byte	0x1
	.byte	0x4b
	.long	0x804
	.long	.LLST7
	.uleb128 0x1b
	.long	0x93a
	.quad	.LBB20
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x4d
	.long	0x788
	.uleb128 0x1c
	.long	0x955
	.long	.LLST8
	.uleb128 0x22
	.long	0x94a
	.uleb128 0x1d
	.quad	.LVL14
	.long	0x9ba
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x93a
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0x61
	.long	0x7d7
	.uleb128 0x1c
	.long	0x955
	.long	.LLST9
	.uleb128 0x22
	.long	0x94a
	.uleb128 0x1d
	.quad	.LVL19
	.long	0x9c5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL15
	.long	0x9d4
	.long	0x7ef
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL16
	.long	0x9e0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x17
	.long	.LASF90
	.byte	0x1
	.byte	0x2a
	.long	0x87
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x91d
	.uleb128 0x21
	.string	"arg"
	.byte	0x1
	.byte	0x2a
	.long	0x87
	.long	.LLST0
	.uleb128 0x1a
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.long	0x5e
	.long	.LLST1
	.uleb128 0x1a
	.string	"ip"
	.byte	0x1
	.byte	0x2d
	.long	0x804
	.long	.LLST2
	.uleb128 0x1b
	.long	0x93a
	.quad	.LBB12
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2f
	.long	0x8a1
	.uleb128 0x1c
	.long	0x955
	.long	.LLST3
	.uleb128 0x22
	.long	0x94a
	.uleb128 0x1d
	.quad	.LVL3
	.long	0x9ba
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	0x93a
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x43
	.long	0x8f0
	.uleb128 0x1c
	.long	0x955
	.long	.LLST4
	.uleb128 0x22
	.long	0x94a
	.uleb128 0x1d
	.quad	.LVL8
	.long	0x9c5
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x1f
	.quad	.LVL4
	.long	0x9d4
	.long	0x908
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x1d
	.quad	.LVL5
	.long	0x9e0
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LASF91
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x93a
	.uleb128 0x25
	.long	.LASF93
	.byte	0x2
	.byte	0x66
	.long	0x2c4
	.uleb128 0x26
	.byte	0
	.uleb128 0x24
	.long	.LASF92
	.byte	0x2
	.byte	0x5f
	.long	0x5e
	.byte	0x3
	.long	0x962
	.uleb128 0x25
	.long	.LASF94
	.byte	0x2
	.byte	0x5f
	.long	0x968
	.uleb128 0x25
	.long	.LASF93
	.byte	0x2
	.byte	0x5f
	.long	0x2c4
	.uleb128 0x26
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x21b
	.uleb128 0x11
	.long	0x962
	.uleb128 0x27
	.long	.LASF95
	.long	.LASF95
	.byte	0x2
	.byte	0x57
	.uleb128 0x27
	.long	.LASF96
	.long	.LASF96
	.byte	0xe
	.byte	0xea
	.uleb128 0x27
	.long	.LASF97
	.long	.LASF97
	.byte	0xe
	.byte	0xfb
	.uleb128 0x27
	.long	.LASF98
	.long	.LASF98
	.byte	0xf
	.byte	0x25
	.uleb128 0x28
	.long	.LASF99
	.long	.LASF99
	.byte	0x7
	.value	0x307
	.uleb128 0x29
	.long	.LASF109
	.long	.LASF109
	.uleb128 0x28
	.long	.LASF100
	.long	.LASF100
	.byte	0x10
	.value	0x266
	.uleb128 0x27
	.long	.LASF101
	.long	.LASF101
	.byte	0x2
	.byte	0x55
	.uleb128 0x2a
	.long	.LASF110
	.long	.LASF111
	.byte	0x11
	.byte	0
	.long	.LASF110
	.uleb128 0x28
	.long	.LASF102
	.long	.LASF102
	.byte	0xe
	.value	0x2fb
	.uleb128 0x28
	.long	.LASF103
	.long	.LASF103
	.byte	0xe
	.value	0x306
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x17
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x1b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x55
	.quad	.LVL24
	.quad	.LFE55
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x54
	.quad	.LVL23
	.quad	.LFE55
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL25
	.quad	.LVL26-1
	.value	0x1
	.byte	0x50
	.quad	.LVL27
	.quad	.LVL28-1
	.value	0x1
	.byte	0x50
	.quad	.LVL28-1
	.quad	.LVL29
	.value	0x1
	.byte	0x53
	.quad	.LVL29
	.quad	.LVL30
	.value	0x1
	.byte	0x50
	.quad	.LVL30
	.quad	.LVL32
	.value	0x1
	.byte	0x53
	.quad	.LVL32
	.quad	.LVL33
	.value	0x1
	.byte	0x50
	.quad	.LVL33
	.quad	.LVL34
	.value	0x1
	.byte	0x53
	.quad	.LVL39
	.quad	.LVL40-1
	.value	0x1
	.byte	0x50
	.quad	.LVL40-1
	.quad	.LVL42
	.value	0x1
	.byte	0x53
	.quad	.LVL42
	.quad	.LVL43-1
	.value	0x1
	.byte	0x50
	.quad	.LVL43-1
	.quad	.LVL45
	.value	0x1
	.byte	0x53
	.quad	.LVL46
	.quad	.LVL47-1
	.value	0x1
	.byte	0x50
	.quad	.LVL47-1
	.quad	.LVL49
	.value	0x1
	.byte	0x53
	.quad	.LVL49
	.quad	.LVL50-1
	.value	0x1
	.byte	0x50
	.quad	.LVL50-1
	.quad	.LFE55
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL35
	.quad	.LVL38
	.value	0x1
	.byte	0x53
	.quad	.LVL38
	.quad	.LVL39
	.value	0x1
	.byte	0x50
	.quad	.LVL45
	.quad	.LVL46-1
	.value	0x1
	.byte	0x50
	.quad	.LVL46-1
	.quad	.LVL46
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL36
	.quad	.LVL37
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL11
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL21
	.value	0x1
	.byte	0x5c
	.quad	.LVL21
	.quad	.LFE54
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL14
	.quad	.LVL16
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL17
	.value	0x9
	.byte	0xc
	.long	0x989681
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL20
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL21
	.value	0x1
	.byte	0x5c
	.quad	.LVL21
	.quad	.LFE54
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL12
	.quad	.LVL14
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL18
	.quad	.LVL19
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL10
	.value	0x1
	.byte	0x5c
	.quad	.LVL10
	.quad	.LFE53
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL3
	.quad	.LVL5
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL5
	.quad	.LVL6
	.value	0x9
	.byte	0xc
	.long	0x989681
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL9
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x73
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
	.quad	.LVL10
	.value	0x1
	.byte	0x5c
	.quad	.LVL10
	.quad	.LFE53
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL1
	.quad	.LVL3
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL7
	.quad	.LVL8
	.value	0xa
	.byte	0x3
	.quad	.LC1
	.byte	0x9f
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
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.quad	0
	.quad	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.quad	.LBB12
	.quad	.LBE12
	.quad	.LBB16
	.quad	.LBE16
	.quad	.LBB17
	.quad	.LBE17
	.quad	0
	.quad	0
	.quad	.LBB20
	.quad	.LBE20
	.quad	.LBB24
	.quad	.LBE24
	.quad	.LBB25
	.quad	.LBE25
	.quad	0
	.quad	0
	.quad	.LBB28
	.quad	.LBE28
	.quad	.LBB31
	.quad	.LBE31
	.quad	0
	.quad	0
	.quad	.Ltext0
	.quad	.Letext0
	.quad	.LFB55
	.quad	.LFE55
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"__errno_location"
.LASF75:
	.string	"optarg"
.LASF95:
	.string	"__printf_chk"
.LASF41:
	.string	"_IO_FILE"
.LASF52:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_offset"
.LASF55:
	.string	"__pthread_internal_list"
.LASF88:
	.string	"main"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF73:
	.string	"pthread_mutex_t"
.LASF61:
	.string	"__count"
.LASF31:
	.string	"_lock"
.LASF74:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF84:
	.string	"timezone"
.LASF83:
	.string	"daylight"
.LASF106:
	.string	"/home/tasos/os-ntua/os-ntua/3/code"
.LASF56:
	.string	"__prev"
.LASF101:
	.string	"__fprintf_chk"
.LASF102:
	.string	"pthread_mutex_lock"
.LASF12:
	.string	"_IO_read_ptr"
.LASF57:
	.string	"__next"
.LASF40:
	.string	"FILE"
.LASF51:
	.string	"stderr"
.LASF42:
	.string	"_IO_marker"
.LASF54:
	.string	"long long int"
.LASF97:
	.string	"pthread_join"
.LASF81:
	.string	"__timezone"
.LASF96:
	.string	"pthread_create"
.LASF80:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF91:
	.string	"printf"
.LASF28:
	.string	"_cur_column"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF99:
	.string	"perror"
.LASF108:
	.string	"_IO_FILE_plus"
.LASF45:
	.string	"_pos"
.LASF92:
	.string	"fprintf"
.LASF65:
	.string	"__spins"
.LASF15:
	.string	"_IO_write_base"
.LASF87:
	.string	"argv"
.LASF100:
	.string	"exit"
.LASF44:
	.string	"_sbuf"
.LASF27:
	.string	"_old_offset"
.LASF111:
	.string	"__builtin_fwrite"
.LASF1:
	.string	"unsigned char"
.LASF86:
	.string	"argc"
.LASF104:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF4:
	.string	"signed char"
.LASF68:
	.string	"long long unsigned int"
.LASF46:
	.string	"_IO_2_1_stdin_"
.LASF3:
	.string	"unsigned int"
.LASF93:
	.string	"__fmt"
.LASF30:
	.string	"_shortbuf"
.LASF82:
	.string	"tzname"
.LASF39:
	.string	"_unused2"
.LASF77:
	.string	"opterr"
.LASF85:
	.string	"mutex"
.LASF71:
	.string	"__size"
.LASF19:
	.string	"_IO_buf_end"
.LASF10:
	.string	"char"
.LASF63:
	.string	"__nusers"
.LASF76:
	.string	"optind"
.LASF105:
	.string	"simplesync.c"
.LASF79:
	.string	"__tzname"
.LASF43:
	.string	"_next"
.LASF33:
	.string	"__pad1"
.LASF34:
	.string	"__pad2"
.LASF35:
	.string	"__pad3"
.LASF36:
	.string	"__pad4"
.LASF37:
	.string	"__pad5"
.LASF103:
	.string	"pthread_mutex_unlock"
.LASF60:
	.string	"__lock"
.LASF62:
	.string	"__owner"
.LASF2:
	.string	"short unsigned int"
.LASF90:
	.string	"increase_fn"
.LASF59:
	.string	"__pthread_mutex_s"
.LASF110:
	.string	"fwrite"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF66:
	.string	"__elision"
.LASF25:
	.string	"_fileno"
.LASF24:
	.string	"_chain"
.LASF58:
	.string	"__pthread_list_t"
.LASF89:
	.string	"decrease_fn"
.LASF70:
	.string	"__data"
.LASF8:
	.string	"__off_t"
.LASF21:
	.string	"_IO_backup_base"
.LASF49:
	.string	"stdin"
.LASF18:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_flags2"
.LASF38:
	.string	"_mode"
.LASF14:
	.string	"_IO_read_base"
.LASF67:
	.string	"__list"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF53:
	.string	"sys_errlist"
.LASF78:
	.string	"optopt"
.LASF109:
	.string	"__stack_chk_fail"
.LASF64:
	.string	"__kind"
.LASF94:
	.string	"__stream"
.LASF69:
	.string	"pthread_t"
.LASF72:
	.string	"__align"
.LASF50:
	.string	"stdout"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF107:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
