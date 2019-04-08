.data


.text

	li $t0, 100000000
	li $t1, 5
	
	mult $t0, $t1
	
	mflo $s0
	mfhi $s1
	
	li $v0, 1
	la $a0, ($s0)
	syscall
	
	li $v0, 1
	la $a0, ($s1)
	syscall
