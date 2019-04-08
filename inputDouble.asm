.data
msg: .asciiz "Enter num:  "

.text
	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 7
	syscall
	
	li $v0, 3
	add.d $f12, $f0,$f4
	syscall
	