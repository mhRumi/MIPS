.data
	d: .double 7.5
.text
	li $v0, 3
	ldc1 $f12, d
	syscall