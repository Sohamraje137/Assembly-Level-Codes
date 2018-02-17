#SOHAM S PATIL
#16CO249
#solution to Q.8; 
#factorial using loop:

.data
    DispMessage: .asciiz "Enter the value of the number  : "
 
    DispMessage2: .asciiz "The factorial of the number \n"
    END: .asciiz "Dont input  negative number"
    result: .word 0
 .text
     .globl main
        main:
        
                li $v0,4
                la $a0,DispMessage
                syscall
                
                li $v0,5
                syscall
                  
                addi $t0,$v0,0
                addi $t1,$zero,-1
                addi $a0,$t0,0
                addi $t2,$zero,1
                blt $t0,$zero,end
               
               while:
                    beq $t0,$zero,exit
                    
                     mul $t2,$t2,$t0
                     
                     addi $t0,$t0, -1
                     
                     j while
                    
                exit:
                    mul $t2,$t2,1
                    li $v0,4
                    la $a0,DispMessage2
                    syscall
                    
                    li $v0,1
                    addi $a0,$t2,0
                    syscall
                     
                    li $v0,10
                    syscall
               end:
               li $v0,4
               la $a0,END
               syscall
               
                 li $v0,10
                 syscall
                     
