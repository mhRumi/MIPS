.data
	msg1: .asciiz "Enter A: "
	msg2: .asciiz "Enter B: "
	msg3: .asciiz "A + B =  "
	
.text
	#print msg1
	li $v0, 4
	la $a0, msg1
	syscall
	
	li $v0, 5
	syscall
	move $s0, $v0
	
	#print msg2
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 5
	syscall
	move $s1, $v0
	
	#print msg3
	li $v0, 4
	la $a0, msg3
	syscall
	
	add $s0,$s0, $s1
	
	li $v0, 1
	move $a0, $s0
	syscall