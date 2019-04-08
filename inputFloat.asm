.data
	float: .float 0.0
msg: .asciiz "Enter num:  "

.text
	#lwc1 $f4, float
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0,6
	syscall
	#move $s0,$v0
	
	li $v0, 2
	#lwc1 $f12, ($f0)
	add.s $f12, $f0, $f4
	syscall