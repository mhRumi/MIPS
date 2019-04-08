.data
userInput: .space 20
msg2: .asciiz "Your output is :  "
msg1: .asciiz "Enter your text:  "

.text

	li $v0, 4
	la $a0,msg1
	syscall
	
	li $v0, 8
	la $a0, userInput
	li $a1, 20 
	syscall
	
	li $v0, 4
	la $a0, msg2
	syscall
	
	li $v0, 4
	la $a0, userInput
	syscall
	
	