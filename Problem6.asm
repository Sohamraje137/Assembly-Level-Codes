#Soham S Patil
#16CO249
#soluition to 6th question

.data
  message1: .asciiz "Enter the length of the string\n"
  array: .space 4000
  message2: .asciiz "\nEnter the array\n"
  message3: .asciiz "\nThe sum of array elements is :\n"
   message4: .asciiz "\nThe average of array elements is :\n"
.text
  .globl main
    main:
        
         la $t6,array
         li $t4,0
         jal function
         addi $t7,$v0,0
           addi $t5,$v1,0
           
             li $v0,4
             la $a0,message3
             syscall
         		  
           li $v0,1
           addi $a0,$t5,0
           syscall
          
          div $t1,$t5,$t7
           li $v0,4
           la $a0,message4
            syscall
         		  
          li $v0,1
          addi $a0,$t1,0
          syscall
          
          li $v0,10
          syscall
         
         
         
         
         
        .globl function
         function:
              addi $sp,$sp, -8
              sw $ra,0($sp)
              sw $fp,-4($sp)
              
                          li $v0,4
         		  la $a0,message1
         		  syscall
         		  
             		 li $v0,5
              	         syscall
            		 move $t0,$v0
          
           	 li $v0,4
           	 la $a0,message2
           	 syscall

           	 #      li $v0,1
           	 #addi $a0,$t0,0
           	# syscall
                   addi $t1,$t1,0
            while:
               beq $t1,$t0,exit
               li $v0,5
               syscall
               
               move $t2,$v0
             #  addi $s0,$t2,0
               
               sw $t2,($t6)    #store in array
                               
               lw $t3,($t6)   #loading element from array
               
               add $v1,$v1,$t3   #getting the sum
               
               addi $t6,$t6,4   #next element in the array
               addi $t1,$t1,1     # incrementing loop variable
               move $v0,$t0
               j while
               
               exit:
                    lw $fp,-4($sp)
                    lw $ra,($sp)    
                  #  move $s1,$v0
                    jr $ra  
          
         
