.text
.globl main

main:
	#msg1 print
	li $v0 4
	la $a0, msg1
	syscall
	
	#input A
	li $v0 5
	syscall
	move $t0, $v0
	
	srl $t1, $t0, 5
	srl $t2, $t0, 2
	sub $t2, $t2, $t1
	
	li $v0 1
	move $a0, $t2
	syscall
	
	li $v0 10
	syscall
	
	.data
msg1: .asciiz "Enter A:  "
