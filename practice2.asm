.data
	msg1: .asciiz "Enter A:  "
	msg2: .asciiz "Enter B:  "
	msg3: .asciiz "A + B =  "
	array: .space 100
	n: .word 25
	new: .asciiz "\n"
	
.text
	la $s0, array
	lw $s1, n
	
	li $t0, 0

loop:
	beq $t0, $s1, exit
	sw $t0, ($s0)
	lw $t4, ($s0)
	
	add $t0, $t0, 1
	add $s0, $s0, 4
	
	li $v0, 1
	la $a0, ($t4)
	syscall
	
	li $v0, 4
	la $a0, new
	syscall
	j loop
	
	
exit:
	li $v0, 10
	syscall	
	
	