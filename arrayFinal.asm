.data
	array: .word 12, 45, 65, 85, 7, 9, 62, 23, 74, 63
	n: .word 10
	new: .asciiz "\n"
.text
	lw $s0,n
	la $s1, array
	
	li $t0, 0
	li $t1, 0
	
loop:
	beq $t0, $s0, exit #if($t0 == $s0) exit
	lw $t4, ($s1)
	
	add $t0, $t0, 1
	add $s1, $s1, 4
	
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