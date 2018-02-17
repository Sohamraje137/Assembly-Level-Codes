#SOHAM S PATIL
#16CO249
#Solution to Q.1 
#simple addition of two signed numbers 2 and 3
.data
 
.text
.globl main
main:
   addiu $t0,$zero,2
   addiu $t1,$zero,3
   
   li $v0,1
   addu $a0,$t1,$t0
   syscall 
	li $v0,10
	syscall