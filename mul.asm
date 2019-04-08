.data

.text

li $s0, 50
li $s1, 10

mul $t0, $s0,$s1

li $v0, 1
#add $a0, $t0, $zero
la $a0, ($t0)
syscall