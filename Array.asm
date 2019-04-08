.data

array: .space 100
n: .word 25
newline: .asciiz "\n"

.text 
	la $s1, array
	lw $s0, n
	
	li $t0, 0
	
loop:
	beq $t0, $s0, exit
	sw $t0, ($s1)
	lw $t4, ($s1)
	
	addi $t0, $t0, 1
	addi $s1, $s1, 4
	
	li $v0, 1
	la $a0, ($t4)
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	b loop	
												
exit:	
	li $v0, 10
	syscall
	
