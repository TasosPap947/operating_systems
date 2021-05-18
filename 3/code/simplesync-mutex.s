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
	.p2align 4
	.globl	increase_fn
	.type	increase_fn, @function
increase_fn:
.LVL0:
.LFB51:
	.file 1 "simplesync.c"
	.loc 1 43 1 view -0
	.cfi_startproc
	.loc 1 43 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 44 2 is_stmt 1 view .LVU2
	.loc 1 45 2 view .LVU3
	.loc 1 43 1 is_stmt 0 view .LVU4
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
.LBB12:
.LBB13:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 100 10 view .LVU5
	movl	$10000000, %ecx
	leaq	.LC0(%rip), %rdx
	xorl	%eax, %eax
.LBE13:
.LBE12:
	.loc 1 43 1 view .LVU6
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
.LVL1:
	.loc 1 47 2 is_stmt 1 view .LVU7
.LBB16:
.LBI12:
	.loc 2 98 1 view .LVU8
.LBB14:
	.loc 2 100 3 view .LVU9
	.loc 2 100 10 is_stmt 0 view .LVU10
	movq	stderr(%rip), %rdi
.LVL2:
	.loc 2 100 10 view .LVU11
	movl	$1, %esi
.LBE14:
.LBE16:
	.loc 1 43 1 view .LVU12
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 59 4 view .LVU13
	leaq	mutex(%rip), %r12
.LBB17:
.LBB15:
	.loc 2 100 10 view .LVU14
	movl	$10000000, %ebx
	call	__fprintf_chk@PLT
.LVL3:
	.loc 2 100 10 view .LVU15
.LBE15:
.LBE17:
	.loc 1 48 2 is_stmt 1 view .LVU16
	.loc 1 48 14 view .LVU17
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 1 49 3 view .LVU18
	.loc 1 59 4 view .LVU19
	movq	%r12, %rdi
	call	pthread_mutex_lock@PLT
.LVL4:
	.loc 1 61 4 view .LVU20
	.loc 1 61 7 is_stmt 0 view .LVU21
	movl	0(%rbp), %eax
	.loc 1 64 4 view .LVU22
	movq	%r12, %rdi
	.loc 1 61 4 view .LVU23
	addl	$1, %eax
	movl	%eax, 0(%rbp)
	.loc 1 64 4 is_stmt 1 view .LVU24
	call	pthread_mutex_unlock@PLT
.LVL5:
	.loc 1 48 21 view .LVU25
	.loc 1 48 14 view .LVU26
	.loc 1 48 2 is_stmt 0 view .LVU27
	subl	$1, %ebx
.LVL6:
	.loc 1 48 2 view .LVU28
	jne	.L2
	.loc 1 67 2 is_stmt 1 view .LVU29
.LVL7:
.LBB18:
.LBI18:
	.loc 2 98 1 view .LVU30
.LBB19:
	.loc 2 100 3 view .LVU31
	.loc 2 100 10 is_stmt 0 view .LVU32
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
.LVL8:
	.loc 2 100 10 view .LVU33
.LBE19:
.LBE18:
	.loc 1 69 2 is_stmt 1 view .LVU34
	.loc 1 70 1 is_stmt 0 view .LVU35
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL9:
	.loc 1 70 1 view .LVU36
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL10:
	.loc 1 70 1 view .LVU37
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	increase_fn, .-increase_fn
	.section	.rodata.str1.8
	.align 8
.LC2:
	.string	"About to decrease variable %d times\n"
	.section	.rodata.str1.1
.LC3:
	.string	"Done decreasing variable.\n"
	.text
	.p2align 4
	.globl	decrease_fn
	.type	decrease_fn, @function
decrease_fn:
.LVL11:
.LFB52:
	.loc 1 73 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 73 1 is_stmt 0 view .LVU39
	endbr64
	.loc 1 74 2 is_stmt 1 view .LVU40
	.loc 1 75 2 view .LVU41
	.loc 1 73 1 is_stmt 0 view .LVU42
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
.LBB20:
.LBB21:
	.loc 2 100 10 view .LVU43
	movl	$10000000, %ecx
	leaq	.LC2(%rip), %rdx
	xorl	%eax, %eax
.LBE21:
.LBE20:
	.loc 1 73 1 view .LVU44
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rdi, %rbp
.LVL12:
	.loc 1 77 2 is_stmt 1 view .LVU45
.LBB24:
.LBI20:
	.loc 2 98 1 view .LVU46
.LBB22:
	.loc 2 100 3 view .LVU47
	.loc 2 100 10 is_stmt 0 view .LVU48
	movq	stderr(%rip), %rdi
.LVL13:
	.loc 2 100 10 view .LVU49
	movl	$1, %esi
.LBE22:
.LBE24:
	.loc 1 73 1 view .LVU50
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	.loc 1 89 4 view .LVU51
	leaq	mutex(%rip), %r12
.LBB25:
.LBB23:
	.loc 2 100 10 view .LVU52
	movl	$10000000, %ebx
	call	__fprintf_chk@PLT
.LVL14:
	.loc 2 100 10 view .LVU53
.LBE23:
.LBE25:
	.loc 1 78 2 is_stmt 1 view .LVU54
	.loc 1 78 14 view .LVU55
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 1 79 3 view .LVU56
	.loc 1 89 4 view .LVU57
	movq	%r12, %rdi
	call	pthread_mutex_lock@PLT
.LVL15:
	.loc 1 91 4 view .LVU58
	.loc 1 91 7 is_stmt 0 view .LVU59
	movl	0(%rbp), %eax
	.loc 1 94 4 view .LVU60
	movq	%r12, %rdi
	.loc 1 91 4 view .LVU61
	subl	$1, %eax
	movl	%eax, 0(%rbp)
	.loc 1 94 4 is_stmt 1 view .LVU62
	call	pthread_mutex_unlock@PLT
.LVL16:
	.loc 1 78 21 view .LVU63
	.loc 1 78 14 view .LVU64
	.loc 1 78 2 is_stmt 0 view .LVU65
	subl	$1, %ebx
.LVL17:
	.loc 1 78 2 view .LVU66
	jne	.L7
	.loc 1 97 2 is_stmt 1 view .LVU67
.LVL18:
.LBB26:
.LBI26:
	.loc 2 98 1 view .LVU68
.LBB27:
	.loc 2 100 3 view .LVU69
	.loc 2 100 10 is_stmt 0 view .LVU70
	movq	stderr(%rip), %rcx
	movl	$26, %edx
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.LVL19:
	.loc 2 100 10 view .LVU71
.LBE27:
.LBE26:
	.loc 1 99 2 is_stmt 1 view .LVU72
	.loc 1 100 1 is_stmt 0 view .LVU73
	popq	%rbx
	.cfi_def_cfa_offset 24
.LVL20:
	.loc 1 100 1 view .LVU74
	xorl	%eax, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
.LVL21:
	.loc 1 100 1 view .LVU75
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
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
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LVL22:
.LFB53:
	.loc 1 104 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 104 1 is_stmt 0 view .LVU77
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 116 8 view .LVU78
	xorl	%esi, %esi
.LVL23:
	.loc 1 116 8 view .LVU79
	leaq	increase_fn(%rip), %rdx
	.loc 1 104 1 view .LVU80
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 104 1 view .LVU81
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 105 2 is_stmt 1 view .LVU82
	.loc 1 106 2 view .LVU83
	.loc 1 111 2 view .LVU84
	.loc 1 116 8 is_stmt 0 view .LVU85
	leaq	4(%rsp), %r12
	leaq	8(%rsp), %rdi
.LVL24:
	.loc 1 111 6 view .LVU86
	movl	$0, 4(%rsp)
	.loc 1 116 2 is_stmt 1 view .LVU87
	.loc 1 116 8 is_stmt 0 view .LVU88
	movq	%r12, %rcx
	call	pthread_create@PLT
.LVL25:
	.loc 1 117 2 is_stmt 1 view .LVU89
	.loc 1 117 5 is_stmt 0 view .LVU90
	testl	%eax, %eax
	jne	.L26
	.loc 1 121 2 is_stmt 1 view .LVU91
	.loc 1 121 8 is_stmt 0 view .LVU92
	leaq	16(%rsp), %rdi
	movq	%r12, %rcx
	leaq	decrease_fn(%rip), %rdx
	xorl	%esi, %esi
	call	pthread_create@PLT
.LVL26:
	.loc 1 121 8 view .LVU93
	movl	%eax, %ebx
.LVL27:
	.loc 1 122 2 is_stmt 1 view .LVU94
	.loc 1 122 5 is_stmt 0 view .LVU95
	testl	%eax, %eax
	jne	.L25
	.loc 1 130 2 is_stmt 1 view .LVU96
	.loc 1 130 8 is_stmt 0 view .LVU97
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL28:
	.loc 1 130 8 view .LVU98
	movl	%eax, %ebx
.LVL29:
	.loc 1 131 2 is_stmt 1 view .LVU99
	.loc 1 131 5 is_stmt 0 view .LVU100
	testl	%eax, %eax
	jne	.L27
.LVL30:
.L13:
	.loc 1 132 3 is_stmt 1 discriminator 1 view .LVU101
	.loc 1 133 2 discriminator 1 view .LVU102
	.loc 1 133 8 is_stmt 0 discriminator 1 view .LVU103
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL31:
	movl	%eax, %ebx
.LVL32:
	.loc 1 134 2 is_stmt 1 discriminator 1 view .LVU104
	.loc 1 134 5 is_stmt 0 discriminator 1 view .LVU105
	testl	%eax, %eax
	jne	.L28
.LVL33:
.L14:
	.loc 1 135 3 is_stmt 1 discriminator 1 view .LVU106
	.loc 1 140 2 discriminator 1 view .LVU107
	.loc 1 140 12 is_stmt 0 discriminator 1 view .LVU108
	movl	4(%rsp), %ecx
	xorl	%r12d, %r12d
	.loc 1 142 2 discriminator 1 view .LVU109
	leaq	.LC5(%rip), %rax
	leaq	.LC4(%rip), %rdx
.LBB28:
.LBB29:
	.loc 2 107 10 discriminator 1 view .LVU110
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
.LBE29:
.LBE28:
	.loc 1 140 12 discriminator 1 view .LVU111
	testl	%ecx, %ecx
	.loc 1 142 2 discriminator 1 view .LVU112
	cmovne	%rax, %rdx
	.loc 1 140 12 discriminator 1 view .LVU113
	sete	%r12b
.LVL34:
	.loc 1 142 2 is_stmt 1 discriminator 1 view .LVU114
.LBB31:
.LBI28:
	.loc 2 105 1 discriminator 1 view .LVU115
.LBB30:
	.loc 2 107 3 discriminator 1 view .LVU116
	.loc 2 107 10 is_stmt 0 discriminator 1 view .LVU117
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL35:
	.loc 2 107 10 discriminator 1 view .LVU118
.LBE30:
.LBE31:
	.loc 1 144 2 is_stmt 1 discriminator 1 view .LVU119
	.loc 1 145 1 is_stmt 0 discriminator 1 view .LVU120
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L29
	.loc 1 145 1 view .LVU121
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%r12d, %eax
.LVL36:
	.loc 1 145 1 view .LVU122
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL37:
	.loc 1 145 1 view .LVU123
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL38:
.L27:
	.cfi_restore_state
	.loc 1 132 3 is_stmt 1 view .LVU124
	.loc 1 132 3 view .LVU125
	call	__errno_location@PLT
.LVL39:
	.loc 1 132 3 is_stmt 0 view .LVU126
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 132 3 is_stmt 1 view .LVU127
	call	perror@PLT
.LVL40:
	jmp	.L13
.LVL41:
.L28:
	.loc 1 135 3 view .LVU128
	.loc 1 135 3 view .LVU129
	call	__errno_location@PLT
.LVL42:
	.loc 1 135 3 is_stmt 0 view .LVU130
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 135 3 is_stmt 1 view .LVU131
	call	perror@PLT
.LVL43:
	jmp	.L14
.LVL44:
.L26:
	.loc 1 135 3 is_stmt 0 view .LVU132
	movl	%eax, %ebx
	.loc 1 118 3 is_stmt 1 view .LVU133
	.loc 1 118 3 view .LVU134
.LVL45:
.L25:
	.loc 1 123 3 view .LVU135
	.loc 1 123 3 view .LVU136
	call	__errno_location@PLT
.LVL46:
	leaq	.LC6(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 123 3 view .LVU137
	call	perror@PLT
.LVL47:
	.loc 1 123 3 view .LVU138
	.loc 1 124 3 view .LVU139
	movl	$1, %edi
	call	exit@PLT
.LVL48:
.L29:
	.loc 1 145 1 is_stmt 0 view .LVU140
	call	__stack_chk_fail@PLT
.LVL49:
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.comm	mutex,40,32
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 6 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 7 "/usr/include/stdio.h"
	.file 8 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
	.file 9 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h"
	.file 10 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h"
	.file 11 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h"
	.file 12 "/usr/include/unistd.h"
	.file 13 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h"
	.file 14 "/usr/include/time.h"
	.file 15 "/usr/include/pthread.h"
	.file 16 "/usr/include/errno.h"
	.file 17 "/usr/include/stdlib.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xa0b
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF100
	.byte	0xc
	.long	.LASF101
	.long	.LASF102
	.long	.Ldebug_ranges0+0xb0
	.quad	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x3
	.byte	0xd1
	.byte	0x17
	.long	0x35
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF1
	.uleb128 0x4
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF2
	.uleb128 0x3
	.byte	0x2
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x6
	.long	0x61
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x4
	.byte	0x98
	.byte	0x19
	.long	0x6d
	.uleb128 0x2
	.long	.LASF9
	.byte	0x4
	.byte	0x99
	.byte	0x1b
	.long	0x6d
	.uleb128 0x7
	.byte	0x8
	.long	0x92
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF10
	.uleb128 0x8
	.long	0x92
	.uleb128 0x9
	.long	.LASF50
	.byte	0xd8
	.byte	0x5
	.byte	0x31
	.byte	0x8
	.long	0x225
	.uleb128 0xa
	.long	.LASF11
	.byte	0x5
	.byte	0x33
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF12
	.byte	0x5
	.byte	0x36
	.byte	0x9
	.long	0x8c
	.byte	0x8
	.uleb128 0xa
	.long	.LASF13
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.long	0x8c
	.byte	0x10
	.uleb128 0xa
	.long	.LASF14
	.byte	0x5
	.byte	0x38
	.byte	0x9
	.long	0x8c
	.byte	0x18
	.uleb128 0xa
	.long	.LASF15
	.byte	0x5
	.byte	0x39
	.byte	0x9
	.long	0x8c
	.byte	0x20
	.uleb128 0xa
	.long	.LASF16
	.byte	0x5
	.byte	0x3a
	.byte	0x9
	.long	0x8c
	.byte	0x28
	.uleb128 0xa
	.long	.LASF17
	.byte	0x5
	.byte	0x3b
	.byte	0x9
	.long	0x8c
	.byte	0x30
	.uleb128 0xa
	.long	.LASF18
	.byte	0x5
	.byte	0x3c
	.byte	0x9
	.long	0x8c
	.byte	0x38
	.uleb128 0xa
	.long	.LASF19
	.byte	0x5
	.byte	0x3d
	.byte	0x9
	.long	0x8c
	.byte	0x40
	.uleb128 0xa
	.long	.LASF20
	.byte	0x5
	.byte	0x40
	.byte	0x9
	.long	0x8c
	.byte	0x48
	.uleb128 0xa
	.long	.LASF21
	.byte	0x5
	.byte	0x41
	.byte	0x9
	.long	0x8c
	.byte	0x50
	.uleb128 0xa
	.long	.LASF22
	.byte	0x5
	.byte	0x42
	.byte	0x9
	.long	0x8c
	.byte	0x58
	.uleb128 0xa
	.long	.LASF23
	.byte	0x5
	.byte	0x44
	.byte	0x16
	.long	0x23e
	.byte	0x60
	.uleb128 0xa
	.long	.LASF24
	.byte	0x5
	.byte	0x46
	.byte	0x14
	.long	0x244
	.byte	0x68
	.uleb128 0xa
	.long	.LASF25
	.byte	0x5
	.byte	0x48
	.byte	0x7
	.long	0x61
	.byte	0x70
	.uleb128 0xa
	.long	.LASF26
	.byte	0x5
	.byte	0x49
	.byte	0x7
	.long	0x61
	.byte	0x74
	.uleb128 0xa
	.long	.LASF27
	.byte	0x5
	.byte	0x4a
	.byte	0xb
	.long	0x74
	.byte	0x78
	.uleb128 0xa
	.long	.LASF28
	.byte	0x5
	.byte	0x4d
	.byte	0x12
	.long	0x4c
	.byte	0x80
	.uleb128 0xa
	.long	.LASF29
	.byte	0x5
	.byte	0x4e
	.byte	0xf
	.long	0x53
	.byte	0x82
	.uleb128 0xa
	.long	.LASF30
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.long	0x24a
	.byte	0x83
	.uleb128 0xa
	.long	.LASF31
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.long	0x25a
	.byte	0x88
	.uleb128 0xa
	.long	.LASF32
	.byte	0x5
	.byte	0x59
	.byte	0xd
	.long	0x80
	.byte	0x90
	.uleb128 0xa
	.long	.LASF33
	.byte	0x5
	.byte	0x5b
	.byte	0x17
	.long	0x265
	.byte	0x98
	.uleb128 0xa
	.long	.LASF34
	.byte	0x5
	.byte	0x5c
	.byte	0x19
	.long	0x270
	.byte	0xa0
	.uleb128 0xa
	.long	.LASF35
	.byte	0x5
	.byte	0x5d
	.byte	0x14
	.long	0x244
	.byte	0xa8
	.uleb128 0xa
	.long	.LASF36
	.byte	0x5
	.byte	0x5e
	.byte	0x9
	.long	0x43
	.byte	0xb0
	.uleb128 0xa
	.long	.LASF37
	.byte	0x5
	.byte	0x5f
	.byte	0xa
	.long	0x29
	.byte	0xb8
	.uleb128 0xa
	.long	.LASF38
	.byte	0x5
	.byte	0x60
	.byte	0x7
	.long	0x61
	.byte	0xc0
	.uleb128 0xa
	.long	.LASF39
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.long	0x276
	.byte	0xc4
	.byte	0
	.uleb128 0x2
	.long	.LASF40
	.byte	0x6
	.byte	0x7
	.byte	0x19
	.long	0x9e
	.uleb128 0xb
	.long	.LASF103
	.byte	0x5
	.byte	0x2b
	.byte	0xe
	.uleb128 0xc
	.long	.LASF41
	.uleb128 0x7
	.byte	0x8
	.long	0x239
	.uleb128 0x7
	.byte	0x8
	.long	0x9e
	.uleb128 0xd
	.long	0x92
	.long	0x25a
	.uleb128 0xe
	.long	0x35
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x231
	.uleb128 0xc
	.long	.LASF42
	.uleb128 0x7
	.byte	0x8
	.long	0x260
	.uleb128 0xc
	.long	.LASF43
	.uleb128 0x7
	.byte	0x8
	.long	0x26b
	.uleb128 0xd
	.long	0x92
	.long	0x286
	.uleb128 0xe
	.long	0x35
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.long	.LASF44
	.byte	0x7
	.byte	0x89
	.byte	0xe
	.long	0x292
	.uleb128 0x7
	.byte	0x8
	.long	0x225
	.uleb128 0x10
	.long	0x292
	.uleb128 0xf
	.long	.LASF45
	.byte	0x7
	.byte	0x8a
	.byte	0xe
	.long	0x292
	.uleb128 0xf
	.long	.LASF46
	.byte	0x7
	.byte	0x8b
	.byte	0xe
	.long	0x292
	.uleb128 0xf
	.long	.LASF47
	.byte	0x8
	.byte	0x1a
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x2d7
	.long	0x2cc
	.uleb128 0x11
	.byte	0
	.uleb128 0x8
	.long	0x2c1
	.uleb128 0x7
	.byte	0x8
	.long	0x99
	.uleb128 0x8
	.long	0x2d1
	.uleb128 0x10
	.long	0x2d1
	.uleb128 0xf
	.long	.LASF48
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.long	0x2cc
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF49
	.uleb128 0x9
	.long	.LASF51
	.byte	0x10
	.byte	0x9
	.byte	0x31
	.byte	0x10
	.long	0x31c
	.uleb128 0xa
	.long	.LASF52
	.byte	0x9
	.byte	0x33
	.byte	0x23
	.long	0x31c
	.byte	0
	.uleb128 0xa
	.long	.LASF53
	.byte	0x9
	.byte	0x34
	.byte	0x23
	.long	0x31c
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x2f4
	.uleb128 0x2
	.long	.LASF54
	.byte	0x9
	.byte	0x35
	.byte	0x3
	.long	0x2f4
	.uleb128 0x9
	.long	.LASF55
	.byte	0x28
	.byte	0xa
	.byte	0x16
	.byte	0x8
	.long	0x3a4
	.uleb128 0xa
	.long	.LASF56
	.byte	0xa
	.byte	0x18
	.byte	0x7
	.long	0x61
	.byte	0
	.uleb128 0xa
	.long	.LASF57
	.byte	0xa
	.byte	0x19
	.byte	0x10
	.long	0x3c
	.byte	0x4
	.uleb128 0xa
	.long	.LASF58
	.byte	0xa
	.byte	0x1a
	.byte	0x7
	.long	0x61
	.byte	0x8
	.uleb128 0xa
	.long	.LASF59
	.byte	0xa
	.byte	0x1c
	.byte	0x10
	.long	0x3c
	.byte	0xc
	.uleb128 0xa
	.long	.LASF60
	.byte	0xa
	.byte	0x20
	.byte	0x7
	.long	0x61
	.byte	0x10
	.uleb128 0xa
	.long	.LASF61
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.long	0x5a
	.byte	0x14
	.uleb128 0xa
	.long	.LASF62
	.byte	0xa
	.byte	0x23
	.byte	0x9
	.long	0x5a
	.byte	0x16
	.uleb128 0xa
	.long	.LASF63
	.byte	0xa
	.byte	0x24
	.byte	0x14
	.long	0x322
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF64
	.uleb128 0x2
	.long	.LASF65
	.byte	0xb
	.byte	0x1b
	.byte	0x1b
	.long	0x35
	.uleb128 0x12
	.byte	0x28
	.byte	0xb
	.byte	0x43
	.byte	0x9
	.long	0x3e5
	.uleb128 0x13
	.long	.LASF66
	.byte	0xb
	.byte	0x45
	.byte	0x1c
	.long	0x32e
	.uleb128 0x13
	.long	.LASF67
	.byte	0xb
	.byte	0x46
	.byte	0x8
	.long	0x3e5
	.uleb128 0x13
	.long	.LASF68
	.byte	0xb
	.byte	0x47
	.byte	0xc
	.long	0x6d
	.byte	0
	.uleb128 0xd
	.long	0x92
	.long	0x3f5
	.uleb128 0xe
	.long	0x35
	.byte	0x27
	.byte	0
	.uleb128 0x2
	.long	.LASF69
	.byte	0xb
	.byte	0x48
	.byte	0x3
	.long	0x3b7
	.uleb128 0x14
	.long	.LASF70
	.byte	0xc
	.value	0x21f
	.byte	0xf
	.long	0x40e
	.uleb128 0x7
	.byte	0x8
	.long	0x8c
	.uleb128 0xf
	.long	.LASF71
	.byte	0xd
	.byte	0x24
	.byte	0xe
	.long	0x8c
	.uleb128 0xf
	.long	.LASF72
	.byte	0xd
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF73
	.byte	0xd
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF74
	.byte	0xd
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x8c
	.long	0x454
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF75
	.byte	0xe
	.byte	0x9f
	.byte	0xe
	.long	0x444
	.uleb128 0xf
	.long	.LASF76
	.byte	0xe
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF77
	.byte	0xe
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0xf
	.long	.LASF78
	.byte	0xe
	.byte	0xa6
	.byte	0xe
	.long	0x444
	.uleb128 0xf
	.long	.LASF79
	.byte	0xe
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF80
	.byte	0xe
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x15
	.long	.LASF81
	.byte	0x1
	.byte	0x1e
	.byte	0x11
	.long	0x3f5
	.uleb128 0x9
	.byte	0x3
	.quad	mutex
	.uleb128 0x16
	.long	.LASF84
	.byte	0x1
	.byte	0x67
	.byte	0x5
	.long	0x61
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x6cc
	.uleb128 0x17
	.long	.LASF82
	.byte	0x1
	.byte	0x67
	.byte	0xe
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x17
	.long	.LASF83
	.byte	0x1
	.byte	0x67
	.byte	0x1a
	.long	0x40e
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x18
	.string	"val"
	.byte	0x1
	.byte	0x69
	.byte	0x6
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x19
	.string	"ret"
	.byte	0x1
	.byte	0x69
	.byte	0xb
	.long	0x61
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x19
	.string	"ok"
	.byte	0x1
	.byte	0x69
	.byte	0x10
	.long	0x61
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x18
	.string	"t1"
	.byte	0x1
	.byte	0x6a
	.byte	0xc
	.long	0x3ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x18
	.string	"t2"
	.byte	0x1
	.byte	0x6a
	.byte	0x10
	.long	0x3ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.long	0x940
	.quad	.LBI28
	.byte	.LVU115
	.long	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x8e
	.byte	0x2
	.long	0x595
	.uleb128 0x1b
	.long	0x951
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x1c
	.quad	.LVL35
	.long	0x98a
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL25
	.long	0x996
	.long	0x5c5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	increase_fn
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL26
	.long	0x996
	.long	0x5f5
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	decrease_fn
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL28
	.long	0x9a2
	.long	0x60c
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1e
	.quad	.LVL31
	.long	0x9a2
	.long	0x623
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1f
	.quad	.LVL39
	.long	0x9ae
	.uleb128 0x1e
	.quad	.LVL40
	.long	0x9ba
	.long	0x64f
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x1f
	.quad	.LVL42
	.long	0x9ae
	.uleb128 0x1e
	.quad	.LVL43
	.long	0x9ba
	.long	0x67b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x1f
	.quad	.LVL46
	.long	0x9ae
	.uleb128 0x1e
	.quad	.LVL47
	.long	0x9ba
	.long	0x6a7
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x1e
	.quad	.LVL48
	.long	0x9c7
	.long	0x6be
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1f
	.quad	.LVL49
	.long	0x9d4
	.byte	0
	.uleb128 0x16
	.long	.LASF85
	.byte	0x1
	.byte	0x48
	.byte	0x7
	.long	0x43
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x803
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0x48
	.byte	0x19
	.long	0x43
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.long	0x61
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x19
	.string	"ip"
	.byte	0x1
	.byte	0x4b
	.byte	0x10
	.long	0x803
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x1a
	.long	0x95f
	.quad	.LBI20
	.byte	.LVU46
	.long	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x4d
	.byte	0x2
	.long	0x779
	.uleb128 0x1b
	.long	0x97c
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x21
	.long	0x970
	.uleb128 0x1c
	.quad	.LVL14
	.long	0x9dd
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x95f
	.quad	.LBI26
	.byte	.LVU68
	.quad	.LBB26
	.quad	.LBE26-.LBB26
	.byte	0x1
	.byte	0x61
	.byte	0x2
	.long	0x7d6
	.uleb128 0x1b
	.long	0x97c
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x21
	.long	0x970
	.uleb128 0x1c
	.quad	.LVL19
	.long	0x9e9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL15
	.long	0x9f4
	.long	0x7ee
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL16
	.long	0xa01
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x68
	.uleb128 0x16
	.long	.LASF86
	.byte	0x1
	.byte	0x2a
	.byte	0x7
	.long	0x43
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x940
	.uleb128 0x20
	.string	"arg"
	.byte	0x1
	.byte	0x2a
	.byte	0x19
	.long	0x43
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x19
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0x6
	.long	0x61
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x19
	.string	"ip"
	.byte	0x1
	.byte	0x2d
	.byte	0x10
	.long	0x803
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x1a
	.long	0x95f
	.quad	.LBI12
	.byte	.LVU8
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2f
	.byte	0x2
	.long	0x8b6
	.uleb128 0x1b
	.long	0x97c
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x21
	.long	0x970
	.uleb128 0x1c
	.quad	.LVL3
	.long	0x9dd
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x22
	.long	0x95f
	.quad	.LBI18
	.byte	.LVU30
	.quad	.LBB18
	.quad	.LBE18-.LBB18
	.byte	0x1
	.byte	0x43
	.byte	0x2
	.long	0x913
	.uleb128 0x1b
	.long	0x97c
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x21
	.long	0x970
	.uleb128 0x1c
	.quad	.LVL8
	.long	0x9e9
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.uleb128 0x1e
	.quad	.LVL4
	.long	0x9f4
	.long	0x92b
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1c
	.quad	.LVL5
	.long	0xa01
	.uleb128 0x1d
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.long	.LASF87
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x95f
	.uleb128 0x24
	.long	.LASF89
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2dc
	.uleb128 0x25
	.byte	0
	.uleb128 0x23
	.long	.LASF88
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x98a
	.uleb128 0x24
	.long	.LASF90
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x298
	.uleb128 0x24
	.long	.LASF89
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2dc
	.uleb128 0x25
	.byte	0
	.uleb128 0x26
	.long	.LASF91
	.long	.LASF91
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x26
	.long	.LASF92
	.long	.LASF92
	.byte	0xf
	.byte	0xc6
	.byte	0xc
	.uleb128 0x26
	.long	.LASF93
	.long	.LASF93
	.byte	0xf
	.byte	0xd7
	.byte	0xc
	.uleb128 0x26
	.long	.LASF94
	.long	.LASF94
	.byte	0x10
	.byte	0x25
	.byte	0xd
	.uleb128 0x27
	.long	.LASF95
	.long	.LASF95
	.byte	0x7
	.value	0x307
	.byte	0xd
	.uleb128 0x27
	.long	.LASF96
	.long	.LASF96
	.byte	0x11
	.value	0x269
	.byte	0xd
	.uleb128 0x28
	.long	.LASF104
	.long	.LASF104
	.uleb128 0x26
	.long	.LASF97
	.long	.LASF97
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x29
	.long	.LASF105
	.long	.LASF106
	.byte	0x12
	.byte	0
	.uleb128 0x27
	.long	.LASF98
	.long	.LASF98
	.byte	0xf
	.value	0x2e2
	.byte	0xc
	.uleb128 0x27
	.long	.LASF99
	.long	.LASF99
	.byte	0xf
	.value	0x2f4
	.byte	0xc
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
	.uleb128 0x39
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x39
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x39
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x18
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST10:
	.quad	.LVL22
	.quad	.LVL24
	.value	0x1
	.byte	0x55
	.quad	.LVL24
	.quad	.LFE53
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 0
.LLST11:
	.quad	.LVL22
	.quad	.LVL23
	.value	0x1
	.byte	0x54
	.quad	.LVL23
	.quad	.LFE53
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS12:
	.uleb128 .LVU89
	.uleb128 .LVU93
	.uleb128 .LVU94
	.uleb128 .LVU98
	.uleb128 .LVU98
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 .LVU106
	.uleb128 .LVU106
	.uleb128 .LVU123
	.uleb128 .LVU124
	.uleb128 .LVU126
	.uleb128 .LVU126
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU135
	.uleb128 .LVU140
	.uleb128 0
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
	.quad	.LVL37
	.value	0x1
	.byte	0x53
	.quad	.LVL38
	.quad	.LVL39-1
	.value	0x1
	.byte	0x50
	.quad	.LVL39-1
	.quad	.LVL41
	.value	0x1
	.byte	0x53
	.quad	.LVL41
	.quad	.LVL42-1
	.value	0x1
	.byte	0x50
	.quad	.LVL42-1
	.quad	.LVL44
	.value	0x1
	.byte	0x53
	.quad	.LVL44
	.quad	.LVL45
	.value	0x1
	.byte	0x50
	.quad	.LVL48
	.quad	.LFE53
	.value	0x1
	.byte	0x53
	.quad	0
	.quad	0
.LVUS13:
	.uleb128 .LVU114
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU140
	.uleb128 0
.LLST13:
	.quad	.LVL34
	.quad	.LVL36
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	.LVL36
	.quad	.LVL38
	.value	0x1
	.byte	0x50
	.quad	.LVL48
	.quad	.LFE53
	.value	0x6
	.byte	0x7c
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS14:
	.uleb128 .LVU115
	.uleb128 .LVU118
.LLST14:
	.quad	.LVL34
	.quad	.LVL35
	.value	0xa
	.byte	0x3
	.quad	.LC8
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST5:
	.quad	.LVL11
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL21
	.value	0x1
	.byte	0x56
	.quad	.LVL21
	.quad	.LFE52
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS6:
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU74
.LLST6:
	.quad	.LVL14
	.quad	.LVL14
	.value	0x2
	.byte	0x30
	.byte	0x9f
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
.LVUS7:
	.uleb128 .LVU45
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST7:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL21
	.value	0x1
	.byte	0x56
	.quad	.LVL21
	.quad	.LFE52
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS8:
	.uleb128 .LVU46
	.uleb128 .LVU53
.LLST8:
	.quad	.LVL12
	.quad	.LVL14
	.value	0xa
	.byte	0x3
	.quad	.LC2
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS9:
	.uleb128 .LVU68
	.uleb128 .LVU71
.LLST9:
	.quad	.LVL18
	.quad	.LVL19
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL10
	.value	0x1
	.byte	0x56
	.quad	.LVL10
	.quad	.LFE51
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS1:
	.uleb128 .LVU17
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU36
.LLST1:
	.quad	.LVL3
	.quad	.LVL3
	.value	0x2
	.byte	0x30
	.byte	0x9f
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
.LVUS2:
	.uleb128 .LVU7
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST2:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL10
	.value	0x1
	.byte	0x56
	.quad	.LVL10
	.quad	.LFE51
	.value	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS3:
	.uleb128 .LVU8
	.uleb128 .LVU15
.LLST3:
	.quad	.LVL1
	.quad	.LVL3
	.value	0xa
	.byte	0x3
	.quad	.LC0
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS4:
	.uleb128 .LVU30
	.uleb128 .LVU33
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
	.quad	.LFB53
	.quad	.LFE53-.LFB53
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
	.quad	.LFB53
	.quad	.LFE53
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF94:
	.string	"__errno_location"
.LASF71:
	.string	"optarg"
.LASF91:
	.string	"__printf_chk"
.LASF50:
	.string	"_IO_FILE"
.LASF47:
	.string	"sys_nerr"
.LASF22:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF32:
	.string	"_offset"
.LASF51:
	.string	"__pthread_internal_list"
.LASF84:
	.string	"main"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF69:
	.string	"pthread_mutex_t"
.LASF57:
	.string	"__count"
.LASF31:
	.string	"_lock"
.LASF70:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF36:
	.string	"_freeres_buf"
.LASF79:
	.string	"daylight"
.LASF52:
	.string	"__prev"
.LASF97:
	.string	"__fprintf_chk"
.LASF98:
	.string	"pthread_mutex_lock"
.LASF12:
	.string	"_IO_read_ptr"
.LASF102:
	.string	"/home/nick/Desktop/shmmy/6o \316\265\316\276\316\254\316\274\316\267\316\275\316\277/\316\233\316\265\316\271\317\204\316\277\317\205\317\201\316\263\316\271\316\272\316\254/os-ntua/3/code"
.LASF53:
	.string	"__next"
.LASF40:
	.string	"FILE"
.LASF46:
	.string	"stderr"
.LASF41:
	.string	"_IO_marker"
.LASF49:
	.string	"long long int"
.LASF93:
	.string	"pthread_join"
.LASF77:
	.string	"__timezone"
.LASF92:
	.string	"pthread_create"
.LASF76:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF80:
	.string	"timezone"
.LASF87:
	.string	"printf"
.LASF28:
	.string	"_cur_column"
.LASF95:
	.string	"perror"
.LASF88:
	.string	"fprintf"
.LASF61:
	.string	"__spins"
.LASF15:
	.string	"_IO_write_base"
.LASF83:
	.string	"argv"
.LASF96:
	.string	"exit"
.LASF27:
	.string	"_old_offset"
.LASF106:
	.string	"__builtin_fwrite"
.LASF2:
	.string	"unsigned char"
.LASF82:
	.string	"argc"
.LASF75:
	.string	"__tzname"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_codecvt"
.LASF64:
	.string	"long long unsigned int"
.LASF85:
	.string	"decrease_fn"
.LASF1:
	.string	"unsigned int"
.LASF89:
	.string	"__fmt"
.LASF30:
	.string	"_shortbuf"
.LASF78:
	.string	"tzname"
.LASF39:
	.string	"_unused2"
.LASF73:
	.string	"opterr"
.LASF81:
	.string	"mutex"
.LASF67:
	.string	"__size"
.LASF19:
	.string	"_IO_buf_end"
.LASF10:
	.string	"char"
.LASF59:
	.string	"__nusers"
.LASF72:
	.string	"optind"
.LASF101:
	.string	"simplesync.c"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF100:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF37:
	.string	"__pad5"
.LASF99:
	.string	"pthread_mutex_unlock"
.LASF56:
	.string	"__lock"
.LASF58:
	.string	"__owner"
.LASF3:
	.string	"short unsigned int"
.LASF86:
	.string	"increase_fn"
.LASF55:
	.string	"__pthread_mutex_s"
.LASF105:
	.string	"fwrite"
.LASF0:
	.string	"long unsigned int"
.LASF17:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF62:
	.string	"__elision"
.LASF25:
	.string	"_fileno"
.LASF24:
	.string	"_chain"
.LASF54:
	.string	"__pthread_list_t"
.LASF38:
	.string	"_mode"
.LASF66:
	.string	"__data"
.LASF8:
	.string	"__off_t"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF18:
	.string	"_IO_buf_base"
.LASF26:
	.string	"_flags2"
.LASF42:
	.string	"_IO_codecvt"
.LASF14:
	.string	"_IO_read_base"
.LASF63:
	.string	"__list"
.LASF29:
	.string	"_vtable_offset"
.LASF43:
	.string	"_IO_wide_data"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF74:
	.string	"optopt"
.LASF104:
	.string	"__stack_chk_fail"
.LASF60:
	.string	"__kind"
.LASF90:
	.string	"__stream"
.LASF65:
	.string	"pthread_t"
.LASF68:
	.string	"__align"
.LASF45:
	.string	"stdout"
.LASF103:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
