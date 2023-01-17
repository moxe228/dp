	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	addi	s0,sp,4
	addi	s2,sp,32
	mv	s1,s0
	lui	s3,%hi(.LC0)
.L2:
	lw	a1,0(s1)
	addi	a0,s3,%lo(.LC0)
	call	scanf
	addi	s1,s1,4
	bne	s1,s2,.L2
	li	a1,7
	addi	a0,sp,4
	call	sorted
	lui	s1,%hi(.LC1)
.L3:
	mv	a1,s0
	addi	a0,s1,%lo(.LC1)
	call	printf
	addi	s0,s0,4
	bne	s0,s2,.L3
	li	a0,0
	lw	ra,60(sp)
	lw	s0,56(sp)
	lw	s1,52(sp)
	lw	s2,48(sp)
	lw	s3,44(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%i"
	.zero	1
.LC1:
	.string	"%i "
	.ident	"GCC: (SiFive GCC 8.3.0-2020.04.1) 8.3.0"
