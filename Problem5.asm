#SOHAM S PATIL
#16CO249
#Solution to Q.5 : To reverse a string "Soham"

.data
message: .asciiz "The string before reversing is :\n"
message2: .asciiz "\nThe string after reversing is :\n"
    string:  .asciiz "Soham"
    reverse: .space 5
  .text
  .globl main
      main:
       li $v0,4
          la $a0,message
          syscall           
       
           
          li $v0,4
          la $a0,string
          syscall   
          
       la $t0,string
       la $t1,reverse
       addi $t2,$zero,5
       addi $t3,$zero,0
     #addi $t4,$zero,5
       addi $t0,$t0,4
       while:
             beq $t2,$t3,exit
             lb $t4,($t0)
             sb $t4,($t1)
   
             addi $t1,$t1, 1
             addi $t0,$t0,-1
             addi $t3,$t3,1
             j while
        exit:
         
               li $v0,4
          la $a0,message2
          syscall       
           li $v0,4
          la $a0,reverse
          syscall       
