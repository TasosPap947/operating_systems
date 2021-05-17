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
	.text
	.p2align 4,,15
	.globl	increase_fn
	.type	increase_fn, @function
increase_fn:
.LFB53:
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
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 97 0
	movq	stderr(%rip), %rdi
.LVL2:
	leaq	.LC0(%rip), %rdx
	movl	$10000000, %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.LVL3:
	movl	$10000000, %edx
.LVL4:
	.p2align 4,,10
	.p2align 3
.L2:
.LBE13:
.LBE12:
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
.LVL7:
.LBB14:
.LBB15:
	.loc 2 97 0
	movq	stderr(%rip), %rcx
	leaq	.LC1(%rip), %rdi
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
.LVL8:
.LBE15:
.LBE14:
	.loc 1 61 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL9:
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
	.loc 1 64 0
	.cfi_startproc
.LVL10:
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 64 0
	movq	%rdi, %rbx
.LVL11:
.LBB16:
.LBB17:
	.loc 2 97 0
	movq	stderr(%rip), %rdi
.LVL12:
	leaq	.LC2(%rip), %rdx
	movl	$10000000, %ecx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.LVL13:
	movl	$10000000, %edx
.LVL14:
	.p2align 4,,10
	.p2align 3
.L7:
.LBE17:
.LBE16:
	.loc 1 73 0
	movl	(%rbx), %eax
	subl	$1, %eax
	.loc 1 69 0
	subl	$1, %edx
.LVL15:
	.loc 1 73 0
	movl	%eax, (%rbx)
.LVL16:
	.loc 1 69 0
	jne	.L7
.LVL17:
.LBB18:
.LBB19:
	.loc 2 97 0
	movq	stderr(%rip), %rcx
	leaq	.LC3(%rip), %rdi
	movl	$26, %edx
	movl	$1, %esi
	call	fwrite@PLT
.LVL18:
.LBE19:
.LBE18:
	.loc 1 85 0
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL19:
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
	.loc 1 89 0
	.cfi_startproc
.LVL20:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	.loc 1 101 0
	leaq	increase_fn(%rip), %rdx
	xorl	%esi, %esi
.LVL21:
	.loc 1 89 0
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 101 0
	leaq	4(%rsp), %rbx
	leaq	8(%rsp), %rdi
.LVL22:
	.loc 1 96 0
	movl	$0, 4(%rsp)
	.loc 1 89 0
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 101 0
	movq	%rbx, %rcx
	call	pthread_create@PLT
.LVL23:
	.loc 1 102 0
	testl	%eax, %eax
	jne	.L25
	.loc 1 106 0
	leaq	16(%rsp), %rdi
	leaq	decrease_fn(%rip), %rdx
	movq	%rbx, %rcx
	xorl	%esi, %esi
	call	pthread_create@PLT
.LVL24:
	.loc 1 107 0
	testl	%eax, %eax
	.loc 1 106 0
	movl	%eax, %ebx
.LVL25:
	.loc 1 107 0
	jne	.L26
	.loc 1 115 0
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL26:
	.loc 1 116 0
	testl	%eax, %eax
	.loc 1 115 0
	movl	%eax, %ebx
.LVL27:
	.loc 1 116 0
	jne	.L27
.LVL28:
.L13:
	.loc 1 118 0
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL29:
	.loc 1 119 0
	testl	%eax, %eax
	.loc 1 118 0
	movl	%eax, %ebx
.LVL30:
	.loc 1 119 0
	jne	.L28
.LVL31:
.L14:
	.loc 1 125 0
	movl	4(%rsp), %ecx
	.loc 1 127 0
	leaq	.LC5(%rip), %rax
	leaq	.LC4(%rip), %rdx
	.loc 1 125 0
	xorl	%ebx, %ebx
.LVL32:
.LBB20:
.LBB21:
	.loc 2 104 0
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
.LBE21:
.LBE20:
	.loc 1 125 0
	testl	%ecx, %ecx
	sete	%bl
.LVL33:
	.loc 1 127 0
	cmovne	%rax, %rdx
.LVL34:
.LBB23:
.LBB22:
	.loc 2 104 0
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL35:
.LBE22:
.LBE23:
	.loc 1 130 0
	movq	24(%rsp), %rsi
	xorq	%fs:40, %rsi
	movl	%ebx, %eax
	jne	.L29
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL36:
	popq	%rbp
	.cfi_def_cfa_offset 8
	ret
.LVL37:
.L27:
	.cfi_restore_state
	.loc 1 117 0
	call	__errno_location@PLT
.LVL38:
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	call	perror@PLT
.LVL39:
	jmp	.L13
.LVL40:
.L28:
	.loc 1 120 0
	call	__errno_location@PLT
.LVL41:
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	call	perror@PLT
.LVL42:
	jmp	.L14
.LVL43:
.L29:
	.loc 1 130 0
	call	__stack_chk_fail@PLT
.LVL44:
.L26:
	.loc 1 108 0
	call	__errno_location@PLT
.LVL45:
	leaq	.LC6(%rip), %rdi
	movl	%ebx, (%rax)
	call	perror@PLT
.LVL46:
	.loc 1 109 0
	movl	$1, %edi
	call	exit@PLT
.LVL47:
.L25:
	movl	%eax, %ebp
	.loc 1 103 0
	call	__errno_location@PLT
.LVL48:
	leaq	.LC6(%rip), %rdi
	movl	%ebp, (%rax)
	call	perror@PLT
.LVL49:
	.loc 1 104 0
	movl	$1, %edi
	call	exit@PLT
.LVL50:
	.cfi_endproc
.LFE55:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/libio.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 10 "/usr/include/unistd.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 12 "/usr/include/time.h"
	.file 13 "/usr/include/pthread.h"
	.file 14 "/usr/include/errno.h"
	.file 15 "/usr/include/stdlib.h"
	.file 16 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x882
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF84
	.byte	0xc
	.long	.LASF85
	.long	.LASF86
	.long	.Ldebug_ranges0+0x30
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
	.long	.LASF87
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
	.long	.LASF88
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF55
	.uleb128 0x2
	.long	.LASF56
	.byte	0x9
	.byte	0x1b
	.long	0x34
	.uleb128 0x10
	.long	.LASF57
	.byte	0xa
	.value	0x222
	.long	0x335
	.uleb128 0x7
	.byte	0x8
	.long	0x89
	.uleb128 0x12
	.long	.LASF58
	.byte	0xb
	.byte	0x24
	.long	0x89
	.uleb128 0x12
	.long	.LASF59
	.byte	0xb
	.byte	0x32
	.long	0x5e
	.uleb128 0x12
	.long	.LASF60
	.byte	0xb
	.byte	0x37
	.long	0x5e
	.uleb128 0x12
	.long	.LASF61
	.byte	0xb
	.byte	0x3b
	.long	0x5e
	.uleb128 0xd
	.long	0x89
	.long	0x377
	.uleb128 0xe
	.long	0x34
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.long	.LASF62
	.byte	0xc
	.byte	0x9f
	.long	0x367
	.uleb128 0x12
	.long	.LASF63
	.byte	0xc
	.byte	0xa0
	.long	0x5e
	.uleb128 0x12
	.long	.LASF64
	.byte	0xc
	.byte	0xa1
	.long	0x6a
	.uleb128 0x12
	.long	.LASF65
	.byte	0xc
	.byte	0xa6
	.long	0x367
	.uleb128 0x12
	.long	.LASF66
	.byte	0xc
	.byte	0xae
	.long	0x5e
	.uleb128 0x12
	.long	.LASF67
	.byte	0xc
	.byte	0xaf
	.long	0x6a
	.uleb128 0x14
	.long	.LASF70
	.byte	0x1
	.byte	0x58
	.long	0x5e
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x5f4
	.uleb128 0x15
	.long	.LASF68
	.byte	0x1
	.byte	0x58
	.long	0x5e
	.long	.LLST10
	.uleb128 0x15
	.long	.LASF69
	.byte	0x1
	.byte	0x58
	.long	0x335
	.long	.LLST11
	.uleb128 0x16
	.string	"val"
	.byte	0x1
	.byte	0x5a
	.long	0x5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.string	"ret"
	.byte	0x1
	.byte	0x5a
	.long	0x5e
	.long	.LLST12
	.uleb128 0x17
	.string	"ok"
	.byte	0x1
	.byte	0x5a
	.long	0x5e
	.long	.LLST13
	.uleb128 0x16
	.string	"t1"
	.byte	0x1
	.byte	0x5b
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.string	"t2"
	.byte	0x1
	.byte	0x5b
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x18
	.long	0x7ce
	.quad	.LBB20
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x7f
	.long	0x47e
	.uleb128 0x19
	.long	0x7de
	.long	.LLST14
	.uleb128 0x1a
	.quad	.LVL35
	.long	0x81e
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL23
	.long	0x829
	.long	0x4ae
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	increase_fn
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL24
	.long	0x829
	.long	0x4de
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	decrease_fn
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL26
	.long	0x834
	.long	0x4f5
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL29
	.long	0x834
	.long	0x50c
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.quad	.LVL38
	.long	0x83f
	.uleb128 0x1c
	.quad	.LVL39
	.long	0x84a
	.long	0x538
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x1d
	.quad	.LVL41
	.long	0x83f
	.uleb128 0x1c
	.quad	.LVL42
	.long	0x84a
	.long	0x564
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x1d
	.quad	.LVL44
	.long	0x856
	.uleb128 0x1d
	.quad	.LVL45
	.long	0x83f
	.uleb128 0x1c
	.quad	.LVL46
	.long	0x84a
	.long	0x59d
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x1c
	.quad	.LVL47
	.long	0x85f
	.long	0x5b4
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1d
	.quad	.LVL48
	.long	0x83f
	.uleb128 0x1c
	.quad	.LVL49
	.long	0x84a
	.long	0x5e0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x1a
	.quad	.LVL50
	.long	0x85f
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	.LASF71
	.byte	0x1
	.byte	0x3f
	.long	0x87
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x6de
	.uleb128 0x1e
	.string	"arg"
	.byte	0x1
	.byte	0x3f
	.long	0x87
	.long	.LLST5
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x41
	.long	0x5e
	.long	.LLST6
	.uleb128 0x17
	.string	"ip"
	.byte	0x1
	.byte	0x42
	.long	0x6de
	.long	.LLST7
	.uleb128 0x1f
	.long	0x7eb
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x44
	.long	0x692
	.uleb128 0x19
	.long	0x806
	.long	.LLST8
	.uleb128 0x20
	.long	0x7fb
	.uleb128 0x1a
	.quad	.LVL13
	.long	0x86b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.long	0x989680
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x7eb
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x52
	.uleb128 0x19
	.long	0x806
	.long	.LLST9
	.uleb128 0x20
	.long	0x7fb
	.uleb128 0x1a
	.quad	.LVL18
	.long	0x876
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x65
	.uleb128 0x14
	.long	.LASF72
	.byte	0x1
	.byte	0x27
	.long	0x87
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x7ce
	.uleb128 0x1e
	.string	"arg"
	.byte	0x1
	.byte	0x27
	.long	0x87
	.long	.LLST0
	.uleb128 0x17
	.string	"i"
	.byte	0x1
	.byte	0x29
	.long	0x5e
	.long	.LLST1
	.uleb128 0x17
	.string	"ip"
	.byte	0x1
	.byte	0x2a
	.long	0x6de
	.long	.LLST2
	.uleb128 0x1f
	.long	0x7eb
	.quad	.LBB12
	.quad	.LBE12-.LBB12
	.byte	0x1
	.byte	0x2c
	.long	0x782
	.uleb128 0x19
	.long	0x806
	.long	.LLST3
	.uleb128 0x20
	.long	0x7fb
	.uleb128 0x1a
	.quad	.LVL3
	.long	0x86b
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.long	0x989680
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x7eb
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.byte	0x1
	.byte	0x3a
	.uleb128 0x19
	.long	0x806
	.long	.LLST4
	.uleb128 0x20
	.long	0x7fb
	.uleb128 0x1a
	.quad	.LVL8
	.long	0x876
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	.LASF73
	.byte	0x2
	.byte	0x66
	.long	0x5e
	.byte	0x3
	.long	0x7eb
	.uleb128 0x23
	.long	.LASF75
	.byte	0x2
	.byte	0x66
	.long	0x2c4
	.uleb128 0x24
	.byte	0
	.uleb128 0x22
	.long	.LASF74
	.byte	0x2
	.byte	0x5f
	.long	0x5e
	.byte	0x3
	.long	0x813
	.uleb128 0x23
	.long	.LASF76
	.byte	0x2
	.byte	0x5f
	.long	0x819
	.uleb128 0x23
	.long	.LASF75
	.byte	0x2
	.byte	0x5f
	.long	0x2c4
	.uleb128 0x24
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x21b
	.uleb128 0x11
	.long	0x813
	.uleb128 0x25
	.long	.LASF77
	.long	.LASF77
	.byte	0x2
	.byte	0x57
	.uleb128 0x25
	.long	.LASF78
	.long	.LASF78
	.byte	0xd
	.byte	0xea
	.uleb128 0x25
	.long	.LASF79
	.long	.LASF79
	.byte	0xd
	.byte	0xfb
	.uleb128 0x25
	.long	.LASF80
	.long	.LASF80
	.byte	0xe
	.byte	0x25
	.uleb128 0x26
	.long	.LASF81
	.long	.LASF81
	.byte	0x7
	.value	0x307
	.uleb128 0x27
	.long	.LASF89
	.long	.LASF89
	.uleb128 0x26
	.long	.LASF82
	.long	.LASF82
	.byte	0xf
	.value	0x266
	.uleb128 0x25
	.long	.LASF83
	.long	.LASF83
	.byte	0x2
	.byte	0x55
	.uleb128 0x28
	.long	.LASF90
	.long	.LASF91
	.byte	0x10
	.byte	0
	.long	.LASF90
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.quad	.LVL20
	.quad	.LVL22
	.value	0x1
	.byte	0x55
	.quad	.LVL22
	.quad	.LFE55
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST11:
	.quad	.LVL20
	.quad	.LVL21
	.value	0x1
	.byte	0x54
	.quad	.LVL21
	.quad	.LFE55
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LLST12:
	.quad	.LVL23
	.quad	.LVL24-1
	.value	0x1
	.byte	0x50
	.quad	.LVL25
	.quad	.LVL26-1
	.value	0x1
	.byte	0x50
	.quad	.LVL26-1
	.quad	.LVL27
	.value	0x1
	.byte	0x53
	.quad	.LVL27
	.quad	.LVL28
	.value	0x1
	.byte	0x50
	.quad	.LVL28
	.quad	.LVL30
	.value	0x1
	.byte	0x53
	.quad	.LVL30
	.quad	.LVL31
	.value	0x1
	.byte	0x50
	.quad	.LVL31
	.quad	.LVL32
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
	.quad	.LVL43
	.value	0x1
	.byte	0x53
	.quad	.LVL44
	.quad	.LVL45-1
	.value	0x1
	.byte	0x50
	.quad	.LVL45-1
	.quad	.LVL47
	.value	0x1
	.byte	0x53
	.quad	.LVL47
	.quad	.LVL48-1
	.value	0x1
	.byte	0x50
	.quad	.LVL48-1
	.quad	.LFE55
	.value	0x1
	.byte	0x56
	.quad	0
	.quad	0
.LLST13:
	.quad	.LVL33
	.quad	.LVL36
	.value	0x1
	.byte	0x53
	.quad	.LVL36
	.quad	.LVL37
	.value	0x1
	.byte	0x50
	.quad	.LVL43
	.quad	.LVL44-1
	.value	0x1
	.byte	0x50
	.quad	.LVL44-1
	.quad	.LVL44
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LLST14:
	.quad	.LVL34
	.quad	.LVL35
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL10
	.quad	.LVL12
	.value	0x1
	.byte	0x55
	.quad	.LVL12
	.quad	.LVL19
	.value	0x1
	.byte	0x53
	.quad	.LVL19
	.quad	.LFE54
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL13
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL14
	.quad	.LVL15
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL16
	.value	0x9
	.byte	0xc
	.long	0x98967f
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL11
	.quad	.LVL12
	.value	0x1
	.byte	0x55
	.quad	.LVL12
	.quad	.LVL19
	.value	0x1
	.byte	0x53
	.quad	.LVL19
	.quad	.LFE54
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL11
	.quad	.LVL13
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL17
	.quad	.LVL18
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
	.quad	.LVL9
	.value	0x1
	.byte	0x53
	.quad	.LVL9
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
	.quad	.LVL9
	.value	0x1
	.byte	0x53
	.quad	.LVL9
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
	.quad	.LBB20
	.quad	.LBE20
	.quad	.LBB23
	.quad	.LBE23
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
.LASF80:
	.string	"__errno_location"
.LASF58:
	.string	"optarg"
.LASF77:
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
.LASF62:
	.string	"__tzname"
.LASF70:
	.string	"main"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF47:
	.string	"_IO_2_1_stdout_"
.LASF31:
	.string	"_lock"
.LASF57:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF67:
	.string	"timezone"
.LASF66:
	.string	"daylight"
.LASF86:
	.string	"/home/tasos/os-ntua/os-ntua/3/code"
.LASF83:
	.string	"__fprintf_chk"
.LASF12:
	.string	"_IO_read_ptr"
.LASF40:
	.string	"FILE"
.LASF51:
	.string	"stderr"
.LASF42:
	.string	"_IO_marker"
.LASF54:
	.string	"long long int"
.LASF79:
	.string	"pthread_join"
.LASF64:
	.string	"__timezone"
.LASF78:
	.string	"pthread_create"
.LASF63:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF73:
	.string	"printf"
.LASF28:
	.string	"_cur_column"
.LASF48:
	.string	"_IO_2_1_stderr_"
.LASF81:
	.string	"perror"
.LASF88:
	.string	"_IO_FILE_plus"
.LASF45:
	.string	"_pos"
.LASF74:
	.string	"fprintf"
.LASF15:
	.string	"_IO_write_base"
.LASF69:
	.string	"argv"
.LASF82:
	.string	"exit"
.LASF44:
	.string	"_sbuf"
.LASF27:
	.string	"_old_offset"
.LASF91:
	.string	"__builtin_fwrite"
.LASF1:
	.string	"unsigned char"
.LASF68:
	.string	"argc"
.LASF84:
	.string	"GNU C11 7.5.0 -mtune=generic -march=x86-64 -g -O2 -fstack-protector-strong"
.LASF4:
	.string	"signed char"
.LASF55:
	.string	"long long unsigned int"
.LASF46:
	.string	"_IO_2_1_stdin_"
.LASF3:
	.string	"unsigned int"
.LASF75:
	.string	"__fmt"
.LASF30:
	.string	"_shortbuf"
.LASF65:
	.string	"tzname"
.LASF39:
	.string	"_unused2"
.LASF60:
	.string	"opterr"
.LASF19:
	.string	"_IO_buf_end"
.LASF10:
	.string	"char"
.LASF59:
	.string	"optind"
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
.LASF85:
	.string	"simplesync_nosync.c"
.LASF2:
	.string	"short unsigned int"
.LASF72:
	.string	"increase_fn"
.LASF90:
	.string	"fwrite"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF25:
	.string	"_fileno"
.LASF24:
	.string	"_chain"
.LASF8:
	.string	"__off_t"
.LASF71:
	.string	"decrease_fn"
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
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF53:
	.string	"sys_errlist"
.LASF61:
	.string	"optopt"
.LASF89:
	.string	"__stack_chk_fail"
.LASF76:
	.string	"__stream"
.LASF56:
	.string	"pthread_t"
.LASF50:
	.string	"stdout"
.LASF87:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
