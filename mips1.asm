.data 

.text
	li $t0 , 5
	
	#for printing 
	 li $v0, 1
	 add $a0, $zero ,$t0
	 syscall
	 