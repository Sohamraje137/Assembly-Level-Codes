.data
   age : .word 18
 .text
   li $v0,1
   lw $a0,age
   syscall
   