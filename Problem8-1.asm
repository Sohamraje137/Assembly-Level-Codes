#SOHAM S PATIL
#16CO249
#Solution to Q.8:
#factorial of a number using recursive function

.data
    DispMessage: .asciiz "Enter the value of the number  : "
 
    DispMessage2: .asciiz "The factorial of the number \n"
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
                addi $a0,$t0,0
                jal fact
                sw $v0,result
                
                li $v0,4
                la $a0,DispMessage2
                syscall
                
                li $v0,1
                lw $a0,result
                syscall
                
                li $v0,10
                syscall
                
           
       .globl fact
          fact:
                  subu $sp,$sp,8
                  sw $ra,($sp)
                  sw $s0,4($sp)
                  #for input 0 or when $a0 becomes 0
                  li $v0,1
                  beq $a0,0,end
                  
                  move $s0,$a0
                  sub $a0,$a0,1
                  jal fact
                  
                   mul $v0, $s0,$v0
                         
                  end:
                     lw $ra,($sp)
                     lw $s0,4($sp)
                     addu $sp,$sp,8
                     jr $ra
                            
           
