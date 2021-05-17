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
	.p2align 4
	.globl	increase_fn
	.type	increase_fn, @function
increase_fn:
.LVL0:
.LFB51:
	.file 1 "simplesync_nosync.c"
	.loc 1 40 1 view -0
	.cfi_startproc
	.loc 1 40 1 is_stmt 0 view .LVU1
	endbr64
	.loc 1 41 2 is_stmt 1 view .LVU2
	.loc 1 42 2 view .LVU3
	.loc 1 40 1 is_stmt 0 view .LVU4
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 40 1 view .LVU5
	movq	%rdi, %rbx
.LVL1:
	.loc 1 44 2 is_stmt 1 view .LVU6
.LBB12:
.LBI12:
	.file 2 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
	.loc 2 98 1 view .LVU7
.LBB13:
	.loc 2 100 3 view .LVU8
	.loc 2 100 10 is_stmt 0 view .LVU9
	movq	stderr(%rip), %rdi
.LVL2:
	.loc 2 100 10 view .LVU10
	movl	$10000000, %ecx
	leaq	.LC0(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.LVL3:
	.loc 2 100 10 view .LVU11
.LBE13:
.LBE12:
	.loc 1 45 2 is_stmt 1 view .LVU12
	.loc 1 45 14 view .LVU13
.LBB15:
.LBB14:
	.loc 2 100 10 is_stmt 0 view .LVU14
	movl	$10000000, %edx
.LVL4:
	.p2align 4,,10
	.p2align 3
.L2:
	.loc 2 100 10 view .LVU15
.LBE14:
.LBE15:
	.loc 1 46 3 is_stmt 1 view .LVU16
	.loc 1 49 4 view .LVU17
	.loc 1 49 7 is_stmt 0 view .LVU18
	movl	(%rbx), %eax
	.loc 1 49 4 view .LVU19
	addl	$1, %eax
	movl	%eax, (%rbx)
	.loc 1 45 21 is_stmt 1 view .LVU20
.LVL5:
	.loc 1 45 14 view .LVU21
	.loc 1 45 2 is_stmt 0 view .LVU22
	subl	$1, %edx
.LVL6:
	.loc 1 45 2 view .LVU23
	jne	.L2
	.loc 1 58 2 is_stmt 1 view .LVU24
.LVL7:
.LBB16:
.LBI16:
	.loc 2 98 1 view .LVU25
.LBB17:
	.loc 2 100 3 view .LVU26
	.loc 2 100 10 is_stmt 0 view .LVU27
	movq	stderr(%rip), %rcx
	movl	$26, %edx
.LVL8:
	.loc 2 100 10 view .LVU28
	movl	$1, %esi
	leaq	.LC1(%rip), %rdi
	call	fwrite@PLT
.LVL9:
	.loc 2 100 10 view .LVU29
.LBE17:
.LBE16:
	.loc 1 60 2 is_stmt 1 view .LVU30
	.loc 1 61 1 is_stmt 0 view .LVU31
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL10:
	.loc 1 61 1 view .LVU32
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
	.loc 1 64 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 64 1 is_stmt 0 view .LVU34
	endbr64
	.loc 1 65 2 is_stmt 1 view .LVU35
	.loc 1 66 2 view .LVU36
	.loc 1 64 1 is_stmt 0 view .LVU37
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	.loc 1 64 1 view .LVU38
	movq	%rdi, %rbx
.LVL12:
	.loc 1 68 2 is_stmt 1 view .LVU39
.LBB18:
.LBI18:
	.loc 2 98 1 view .LVU40
.LBB19:
	.loc 2 100 3 view .LVU41
	.loc 2 100 10 is_stmt 0 view .LVU42
	movq	stderr(%rip), %rdi
.LVL13:
	.loc 2 100 10 view .LVU43
	movl	$10000000, %ecx
	leaq	.LC2(%rip), %rdx
	movl	$1, %esi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.LVL14:
	.loc 2 100 10 view .LVU44
.LBE19:
.LBE18:
	.loc 1 69 2 is_stmt 1 view .LVU45
	.loc 1 69 14 view .LVU46
.LBB21:
.LBB20:
	.loc 2 100 10 is_stmt 0 view .LVU47
	movl	$10000000, %edx
.LVL15:
	.p2align 4,,10
	.p2align 3
.L7:
	.loc 2 100 10 view .LVU48
.LBE20:
.LBE21:
	.loc 1 70 3 is_stmt 1 view .LVU49
	.loc 1 73 4 view .LVU50
	.loc 1 73 7 is_stmt 0 view .LVU51
	movl	(%rbx), %eax
	.loc 1 73 4 view .LVU52
	subl	$1, %eax
	movl	%eax, (%rbx)
	.loc 1 69 21 is_stmt 1 view .LVU53
.LVL16:
	.loc 1 69 14 view .LVU54
	.loc 1 69 2 is_stmt 0 view .LVU55
	subl	$1, %edx
.LVL17:
	.loc 1 69 2 view .LVU56
	jne	.L7
	.loc 1 82 2 is_stmt 1 view .LVU57
.LVL18:
.LBB22:
.LBI22:
	.loc 2 98 1 view .LVU58
.LBB23:
	.loc 2 100 3 view .LVU59
	.loc 2 100 10 is_stmt 0 view .LVU60
	movq	stderr(%rip), %rcx
	movl	$26, %edx
.LVL19:
	.loc 2 100 10 view .LVU61
	movl	$1, %esi
	leaq	.LC3(%rip), %rdi
	call	fwrite@PLT
.LVL20:
	.loc 2 100 10 view .LVU62
.LBE23:
.LBE22:
	.loc 1 84 2 is_stmt 1 view .LVU63
	.loc 1 85 1 is_stmt 0 view .LVU64
	xorl	%eax, %eax
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL21:
	.loc 1 85 1 view .LVU65
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
	.loc 1 89 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 89 1 is_stmt 0 view .LVU67
	endbr64
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	.loc 1 101 8 view .LVU68
	xorl	%esi, %esi
.LVL23:
	.loc 1 101 8 view .LVU69
	leaq	increase_fn(%rip), %rdx
	.loc 1 89 1 view .LVU70
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 89 1 view .LVU71
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 90 2 is_stmt 1 view .LVU72
	.loc 1 91 2 view .LVU73
	.loc 1 96 2 view .LVU74
	.loc 1 101 8 is_stmt 0 view .LVU75
	leaq	4(%rsp), %r12
	leaq	8(%rsp), %rdi
.LVL24:
	.loc 1 96 6 view .LVU76
	movl	$0, 4(%rsp)
	.loc 1 101 2 is_stmt 1 view .LVU77
	.loc 1 101 8 is_stmt 0 view .LVU78
	movq	%r12, %rcx
	call	pthread_create@PLT
.LVL25:
	.loc 1 102 2 is_stmt 1 view .LVU79
	.loc 1 102 5 is_stmt 0 view .LVU80
	testl	%eax, %eax
	jne	.L26
	.loc 1 106 2 is_stmt 1 view .LVU81
	.loc 1 106 8 is_stmt 0 view .LVU82
	leaq	16(%rsp), %rdi
	movq	%r12, %rcx
	leaq	decrease_fn(%rip), %rdx
	xorl	%esi, %esi
	call	pthread_create@PLT
.LVL26:
	.loc 1 106 8 view .LVU83
	movl	%eax, %ebx
.LVL27:
	.loc 1 107 2 is_stmt 1 view .LVU84
	.loc 1 107 5 is_stmt 0 view .LVU85
	testl	%eax, %eax
	jne	.L25
	.loc 1 115 2 is_stmt 1 view .LVU86
	.loc 1 115 8 is_stmt 0 view .LVU87
	movq	8(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL28:
	.loc 1 115 8 view .LVU88
	movl	%eax, %ebx
.LVL29:
	.loc 1 116 2 is_stmt 1 view .LVU89
	.loc 1 116 5 is_stmt 0 view .LVU90
	testl	%eax, %eax
	jne	.L27
.LVL30:
.L13:
	.loc 1 117 3 is_stmt 1 discriminator 1 view .LVU91
	.loc 1 118 2 discriminator 1 view .LVU92
	.loc 1 118 8 is_stmt 0 discriminator 1 view .LVU93
	movq	16(%rsp), %rdi
	xorl	%esi, %esi
	call	pthread_join@PLT
.LVL31:
	movl	%eax, %ebx
.LVL32:
	.loc 1 119 2 is_stmt 1 discriminator 1 view .LVU94
	.loc 1 119 5 is_stmt 0 discriminator 1 view .LVU95
	testl	%eax, %eax
	jne	.L28
.LVL33:
.L14:
	.loc 1 120 3 is_stmt 1 discriminator 1 view .LVU96
	.loc 1 125 2 discriminator 1 view .LVU97
	.loc 1 125 12 is_stmt 0 discriminator 1 view .LVU98
	movl	4(%rsp), %ecx
	xorl	%r12d, %r12d
	.loc 1 127 2 discriminator 1 view .LVU99
	leaq	.LC5(%rip), %rax
	leaq	.LC4(%rip), %rdx
.LBB24:
.LBB25:
	.loc 2 107 10 discriminator 1 view .LVU100
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
.LBE25:
.LBE24:
	.loc 1 125 12 discriminator 1 view .LVU101
	testl	%ecx, %ecx
	.loc 1 127 2 discriminator 1 view .LVU102
	cmovne	%rax, %rdx
	.loc 1 125 12 discriminator 1 view .LVU103
	sete	%r12b
.LVL34:
	.loc 1 127 2 is_stmt 1 discriminator 1 view .LVU104
.LBB27:
.LBI24:
	.loc 2 105 1 discriminator 1 view .LVU105
.LBB26:
	.loc 2 107 3 discriminator 1 view .LVU106
	.loc 2 107 10 is_stmt 0 discriminator 1 view .LVU107
	xorl	%eax, %eax
	call	__printf_chk@PLT
.LVL35:
	.loc 2 107 10 discriminator 1 view .LVU108
.LBE26:
.LBE27:
	.loc 1 129 2 is_stmt 1 discriminator 1 view .LVU109
	.loc 1 130 1 is_stmt 0 discriminator 1 view .LVU110
	movq	24(%rsp), %rax
	xorq	%fs:40, %rax
	jne	.L29
	.loc 1 130 1 view .LVU111
	addq	$40, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	%r12d, %eax
.LVL36:
	.loc 1 130 1 view .LVU112
	popq	%rbx
	.cfi_def_cfa_offset 16
.LVL37:
	.loc 1 130 1 view .LVU113
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
.LVL38:
.L27:
	.cfi_restore_state
	.loc 1 117 3 is_stmt 1 view .LVU114
	.loc 1 117 3 view .LVU115
	call	__errno_location@PLT
.LVL39:
	.loc 1 117 3 is_stmt 0 view .LVU116
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 117 3 is_stmt 1 view .LVU117
	call	perror@PLT
.LVL40:
	jmp	.L13
.LVL41:
.L28:
	.loc 1 120 3 view .LVU118
	.loc 1 120 3 view .LVU119
	call	__errno_location@PLT
.LVL42:
	.loc 1 120 3 is_stmt 0 view .LVU120
	leaq	.LC7(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 120 3 is_stmt 1 view .LVU121
	call	perror@PLT
.LVL43:
	jmp	.L14
.LVL44:
.L26:
	.loc 1 120 3 is_stmt 0 view .LVU122
	movl	%eax, %ebx
	.loc 1 103 3 is_stmt 1 view .LVU123
	.loc 1 103 3 view .LVU124
.LVL45:
.L25:
	.loc 1 108 3 view .LVU125
	.loc 1 108 3 view .LVU126
	call	__errno_location@PLT
.LVL46:
	leaq	.LC6(%rip), %rdi
	movl	%ebx, (%rax)
	.loc 1 108 3 view .LVU127
	call	perror@PLT
.LVL47:
	.loc 1 108 3 view .LVU128
	.loc 1 109 3 view .LVU129
	movl	$1, %edi
	call	exit@PLT
.LVL48:
.L29:
	.loc 1 130 1 is_stmt 0 view .LVU130
	call	__stack_chk_fail@PLT
.LVL49:
	.cfi_endproc
.LFE53:
	.size	main, .-main
	.text
.Letext0:
	.file 3 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h"
	.file 4 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 5 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
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
	.long	0x887
	.value	0x4
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF79
	.byte	0xc
	.long	.LASF80
	.long	.LASF81
	.long	.Ldebug_ranges0+0x90
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
	.long	.LASF82
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
	.long	.LASF83
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
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF50
	.uleb128 0x2
	.long	.LASF51
	.byte	0x9
	.byte	0x1b
	.byte	0x1b
	.long	0x35
	.uleb128 0x12
	.long	.LASF52
	.byte	0xa
	.value	0x21f
	.byte	0xf
	.long	0x314
	.uleb128 0x7
	.byte	0x8
	.long	0x8c
	.uleb128 0xf
	.long	.LASF53
	.byte	0xb
	.byte	0x24
	.byte	0xe
	.long	0x8c
	.uleb128 0xf
	.long	.LASF54
	.byte	0xb
	.byte	0x32
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF55
	.byte	0xb
	.byte	0x37
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF56
	.byte	0xb
	.byte	0x3b
	.byte	0xc
	.long	0x61
	.uleb128 0xd
	.long	0x8c
	.long	0x35a
	.uleb128 0xe
	.long	0x35
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.long	.LASF57
	.byte	0xc
	.byte	0x9f
	.byte	0xe
	.long	0x34a
	.uleb128 0xf
	.long	.LASF58
	.byte	0xc
	.byte	0xa0
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF59
	.byte	0xc
	.byte	0xa1
	.byte	0x11
	.long	0x6d
	.uleb128 0xf
	.long	.LASF60
	.byte	0xc
	.byte	0xa6
	.byte	0xe
	.long	0x34a
	.uleb128 0xf
	.long	.LASF61
	.byte	0xc
	.byte	0xae
	.byte	0xc
	.long	0x61
	.uleb128 0xf
	.long	.LASF62
	.byte	0xc
	.byte	0xaf
	.byte	0x11
	.long	0x6d
	.uleb128 0x13
	.long	.LASF65
	.byte	0x1
	.byte	0x58
	.byte	0x5
	.long	0x61
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x5bc
	.uleb128 0x14
	.long	.LASF63
	.byte	0x1
	.byte	0x58
	.byte	0xe
	.long	0x61
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x14
	.long	.LASF64
	.byte	0x1
	.byte	0x58
	.byte	0x1a
	.long	0x314
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0x15
	.string	"val"
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.long	0x61
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.string	"ret"
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.long	0x61
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0x16
	.string	"ok"
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.long	0x61
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x15
	.string	"t1"
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x15
	.string	"t2"
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.long	0x2fb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.long	0x7d6
	.quad	.LBI24
	.byte	.LVU105
	.long	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x7f
	.byte	0x2
	.long	0x485
	.uleb128 0x18
	.long	0x7e7
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0x19
	.quad	.LVL35
	.long	0x820
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x9
	.byte	0x3
	.quad	.LC8
	.byte	0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL25
	.long	0x82c
	.long	0x4b5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	increase_fn
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL26
	.long	0x82c
	.long	0x4e5
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	decrease_fn
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x1b
	.quad	.LVL28
	.long	0x838
	.long	0x4fc
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1b
	.quad	.LVL31
	.long	0x838
	.long	0x513
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1c
	.quad	.LVL39
	.long	0x844
	.uleb128 0x1b
	.quad	.LVL40
	.long	0x850
	.long	0x53f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x1c
	.quad	.LVL42
	.long	0x844
	.uleb128 0x1b
	.quad	.LVL43
	.long	0x850
	.long	0x56b
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC7
	.byte	0
	.uleb128 0x1c
	.quad	.LVL46
	.long	0x844
	.uleb128 0x1b
	.quad	.LVL47
	.long	0x850
	.long	0x597
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC6
	.byte	0
	.uleb128 0x1b
	.quad	.LVL48
	.long	0x85d
	.long	0x5ae
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1c
	.quad	.LVL49
	.long	0x86a
	.byte	0
	.uleb128 0x13
	.long	.LASF66
	.byte	0x1
	.byte	0x3f
	.byte	0x7
	.long	0x43
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x6c6
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.long	0x43
	.long	.LLST5
	.long	.LVUS5
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.long	0x61
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0x16
	.string	"ip"
	.byte	0x1
	.byte	0x42
	.byte	0x10
	.long	0x6c6
	.long	.LLST7
	.long	.LVUS7
	.uleb128 0x17
	.long	0x7f5
	.quad	.LBI18
	.byte	.LVU40
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x44
	.byte	0x2
	.long	0x66c
	.uleb128 0x18
	.long	0x812
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x1e
	.long	0x806
	.uleb128 0x19
	.quad	.LVL14
	.long	0x873
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.long	0x989680
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x7f5
	.quad	.LBI22
	.byte	.LVU58
	.quad	.LBB22
	.quad	.LBE22-.LBB22
	.byte	0x1
	.byte	0x52
	.byte	0x2
	.uleb128 0x18
	.long	0x812
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0x1e
	.long	0x806
	.uleb128 0x19
	.quad	.LVL20
	.long	0x87f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x8
	.long	0x68
	.uleb128 0x13
	.long	.LASF67
	.byte	0x1
	.byte	0x27
	.byte	0x7
	.long	0x43
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x7d6
	.uleb128 0x1d
	.string	"arg"
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.long	0x43
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0x16
	.string	"i"
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.long	0x61
	.long	.LLST1
	.long	.LVUS1
	.uleb128 0x16
	.string	"ip"
	.byte	0x1
	.byte	0x2a
	.byte	0x10
	.long	0x6c6
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0x17
	.long	0x7f5
	.quad	.LBI12
	.byte	.LVU7
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2c
	.byte	0x2
	.long	0x77c
	.uleb128 0x18
	.long	0x812
	.long	.LLST3
	.long	.LVUS3
	.uleb128 0x1e
	.long	0x806
	.uleb128 0x19
	.quad	.LVL3
	.long	0x873
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x3
	.quad	.LC0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xc
	.long	0x989680
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0x7f5
	.quad	.LBI16
	.byte	.LVU25
	.quad	.LBB16
	.quad	.LBE16-.LBB16
	.byte	0x1
	.byte	0x3a
	.byte	0x2
	.uleb128 0x18
	.long	0x812
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0x1e
	.long	0x806
	.uleb128 0x19
	.quad	.LVL9
	.long	0x87f
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x4a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.long	.LASF68
	.byte	0x2
	.byte	0x69
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x7f5
	.uleb128 0x21
	.long	.LASF70
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.long	0x2dc
	.uleb128 0x22
	.byte	0
	.uleb128 0x20
	.long	.LASF69
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.long	0x61
	.byte	0x3
	.long	0x820
	.uleb128 0x21
	.long	.LASF71
	.byte	0x2
	.byte	0x62
	.byte	0x1b
	.long	0x298
	.uleb128 0x21
	.long	.LASF70
	.byte	0x2
	.byte	0x62
	.byte	0x3c
	.long	0x2dc
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.long	.LASF72
	.long	.LASF72
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.uleb128 0x23
	.long	.LASF73
	.long	.LASF73
	.byte	0xd
	.byte	0xc6
	.byte	0xc
	.uleb128 0x23
	.long	.LASF74
	.long	.LASF74
	.byte	0xd
	.byte	0xd7
	.byte	0xc
	.uleb128 0x23
	.long	.LASF75
	.long	.LASF75
	.byte	0xe
	.byte	0x25
	.byte	0xd
	.uleb128 0x24
	.long	.LASF76
	.long	.LASF76
	.byte	0x7
	.value	0x307
	.byte	0xd
	.uleb128 0x24
	.long	.LASF77
	.long	.LASF77
	.byte	0xf
	.value	0x269
	.byte	0xd
	.uleb128 0x25
	.long	.LASF84
	.long	.LASF84
	.uleb128 0x23
	.long	.LASF78
	.long	.LASF78
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.uleb128 0x26
	.long	.LASF85
	.long	.LASF86
	.byte	0x10
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LVUS10:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
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
	.uleb128 .LVU69
	.uleb128 .LVU69
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
	.uleb128 .LVU79
	.uleb128 .LVU83
	.uleb128 .LVU84
	.uleb128 .LVU88
	.uleb128 .LVU88
	.uleb128 .LVU89
	.uleb128 .LVU89
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU94
	.uleb128 .LVU94
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU113
	.uleb128 .LVU114
	.uleb128 .LVU116
	.uleb128 .LVU116
	.uleb128 .LVU118
	.uleb128 .LVU118
	.uleb128 .LVU120
	.uleb128 .LVU120
	.uleb128 .LVU122
	.uleb128 .LVU122
	.uleb128 .LVU125
	.uleb128 .LVU130
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
	.uleb128 .LVU104
	.uleb128 .LVU112
	.uleb128 .LVU112
	.uleb128 .LVU114
	.uleb128 .LVU130
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
	.uleb128 .LVU105
	.uleb128 .LVU108
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
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST5:
	.quad	.LVL11
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL21
	.value	0x1
	.byte	0x53
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
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU61
.LLST6:
	.quad	.LVL14
	.quad	.LVL15
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	.LVL15
	.quad	.LVL16
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL16
	.quad	.LVL17
	.value	0x9
	.byte	0xc
	.long	0x989681
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL17
	.quad	.LVL19
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS7:
	.uleb128 .LVU39
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 0
.LLST7:
	.quad	.LVL12
	.quad	.LVL13
	.value	0x1
	.byte	0x55
	.quad	.LVL13
	.quad	.LVL21
	.value	0x1
	.byte	0x53
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
	.uleb128 .LVU40
	.uleb128 .LVU44
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
	.uleb128 .LVU58
	.uleb128 .LVU62
.LLST9:
	.quad	.LVL18
	.quad	.LVL20
	.value	0xa
	.byte	0x3
	.quad	.LC3
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST0:
	.quad	.LVL0
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL10
	.value	0x1
	.byte	0x53
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
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU28
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
	.long	0x989681
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	.LVL6
	.quad	.LVL8
	.value	0x9
	.byte	0xc
	.long	0x989680
	.byte	0x71
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.quad	0
	.quad	0
.LVUS2:
	.uleb128 .LVU6
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST2:
	.quad	.LVL1
	.quad	.LVL2
	.value	0x1
	.byte	0x55
	.quad	.LVL2
	.quad	.LVL10
	.value	0x1
	.byte	0x53
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
	.uleb128 .LVU7
	.uleb128 .LVU11
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
	.uleb128 .LVU25
	.uleb128 .LVU29
.LLST4:
	.quad	.LVL7
	.quad	.LVL9
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
	.quad	.LBB15
	.quad	.LBE15
	.quad	0
	.quad	0
	.quad	.LBB18
	.quad	.LBE18
	.quad	.LBB21
	.quad	.LBE21
	.quad	0
	.quad	0
	.quad	.LBB24
	.quad	.LBE24
	.quad	.LBB27
	.quad	.LBE27
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
.LASF75:
	.string	"__errno_location"
.LASF53:
	.string	"optarg"
.LASF72:
	.string	"__printf_chk"
.LASF82:
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
.LASF57:
	.string	"__tzname"
.LASF65:
	.string	"main"
.LASF16:
	.string	"_IO_write_ptr"
.LASF11:
	.string	"_flags"
.LASF18:
	.string	"_IO_buf_base"
.LASF31:
	.string	"_lock"
.LASF52:
	.string	"__environ"
.LASF23:
	.string	"_markers"
.LASF13:
	.string	"_IO_read_end"
.LASF36:
	.string	"_freeres_buf"
.LASF61:
	.string	"daylight"
.LASF78:
	.string	"__fprintf_chk"
.LASF12:
	.string	"_IO_read_ptr"
.LASF81:
	.string	"/home/nick/Desktop/shmmy/6o \316\265\316\276\316\254\316\274\316\267\316\275\316\277/\316\233\316\265\316\271\317\204\316\277\317\205\317\201\316\263\316\271\316\272\316\254/os-ntua/3/code"
.LASF62:
	.string	"timezone"
.LASF40:
	.string	"FILE"
.LASF46:
	.string	"stderr"
.LASF41:
	.string	"_IO_marker"
.LASF49:
	.string	"long long int"
.LASF74:
	.string	"pthread_join"
.LASF59:
	.string	"__timezone"
.LASF73:
	.string	"pthread_create"
.LASF58:
	.string	"__daylight"
.LASF6:
	.string	"long int"
.LASF68:
	.string	"printf"
.LASF28:
	.string	"_cur_column"
.LASF76:
	.string	"perror"
.LASF69:
	.string	"fprintf"
.LASF15:
	.string	"_IO_write_base"
.LASF64:
	.string	"argv"
.LASF77:
	.string	"exit"
.LASF27:
	.string	"_old_offset"
.LASF86:
	.string	"__builtin_fwrite"
.LASF2:
	.string	"unsigned char"
.LASF63:
	.string	"argc"
.LASF4:
	.string	"signed char"
.LASF33:
	.string	"_codecvt"
.LASF50:
	.string	"long long unsigned int"
.LASF66:
	.string	"decrease_fn"
.LASF1:
	.string	"unsigned int"
.LASF70:
	.string	"__fmt"
.LASF30:
	.string	"_shortbuf"
.LASF60:
	.string	"tzname"
.LASF39:
	.string	"_unused2"
.LASF55:
	.string	"opterr"
.LASF19:
	.string	"_IO_buf_end"
.LASF10:
	.string	"char"
.LASF54:
	.string	"optind"
.LASF34:
	.string	"_wide_data"
.LASF35:
	.string	"_freeres_list"
.LASF79:
	.string	"GNU C17 9.3.0 -mtune=generic -march=x86-64 -g -O2 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF37:
	.string	"__pad5"
.LASF80:
	.string	"simplesync_nosync.c"
.LASF3:
	.string	"short unsigned int"
.LASF67:
	.string	"increase_fn"
.LASF85:
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
.LASF43:
	.string	"_IO_wide_data"
.LASF38:
	.string	"_mode"
.LASF8:
	.string	"__off_t"
.LASF21:
	.string	"_IO_backup_base"
.LASF44:
	.string	"stdin"
.LASF26:
	.string	"_flags2"
.LASF42:
	.string	"_IO_codecvt"
.LASF14:
	.string	"_IO_read_base"
.LASF29:
	.string	"_vtable_offset"
.LASF20:
	.string	"_IO_save_base"
.LASF48:
	.string	"sys_errlist"
.LASF56:
	.string	"optopt"
.LASF84:
	.string	"__stack_chk_fail"
.LASF71:
	.string	"__stream"
.LASF51:
	.string	"pthread_t"
.LASF45:
	.string	"stdout"
.LASF83:
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
