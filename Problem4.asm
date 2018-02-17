#SOHAM S PATIL
#16CO249
#Solution to Q.4 
#Adding elements in the array
.data
  array:  .space 40
  newline: .asciiz "\n"
 .text
    main:
         addi $t0,$zero,0
         addi $t1,$zero,11
         addi $s1,$zero,0
         while:
              beq $t0,40,exit
              add $s0,$zero,$t1
              sw $s0,array($t0)
              lw $t6,array($t0)
              
              add $s1,$s1,$t6
              addi $t1,$t1,1
              addi $t0,$t0,4
              
              move $v0,$s1
             # li $v0,1  
              # addi $a0,$s1,0
               #syscall
               
            #   li $v0,4
            #   la $a0,newline
             #  syscall
              # move $v0,$s1
               
              j while
         exit:
             li $v0,10
             syscall