

.text
.globl main

main:
	#printing msg1
	li $v0 4
	la $a0, msg1
	syscall
	
	#input N
	li $v0 5
	syscall
	move $t0, $v0
	
	li $t1 0
	li $t2 0
loop   :
	add $t1, $t1, 1
	add $t2, $t2, $t1
	
	li $v0 1
	move $a0, $t2
	syscall
	
	li $v0 4
	la $a0 , msg2
	syscall
	
	#bne $t0,$t1, loop	
	beq $t0, $t1, exit
	j loop
	
exit: 
	li $v0 10
	syscall
	
	.data
msg1:   .asciiz  "Enter N:  "
msg2:   .asciiz  "\n"