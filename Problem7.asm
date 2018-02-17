#SOHAM S PATIL
#16CO249
#Solution to Q.7 
#matrix multiplication

.data
    matrix1:          .word 1, 1, 1  
		      .word 1, 1, 1
		      .word 1, 1, 1
	matrix2:      .word 1, 1, 1
		      .word 1, 1, 1
		      .word 1, 1, 1
		  
        new: .asciiz "\n"
        sp: .asciiz "  "
        size: .word 3
        
        pro: .space 40
.text
	.globl main
	main:
	
	la $a0,matrix1
	la $a1,matrix2
	
	lw $a2,size
	
	
	jal profunct
	
	li $s5,0
			loop1:beq $s5,36,jump
			      
			      li $t9,0
			      
			      while1:beq $t9,3,nextline
			      lw $s4,pro($s5)
                              li $v0,1
			      move $a0,$s4
			      syscall
			      li $v0,4
			      la $a0,sp
			      syscall
			      addi $s5,$s5,4
			      
			      addi $t9,$t9,1
			      j while1
			      nextline:
			      li $v0,4
			      la $a0,new
			      syscall
			      
			      j loop1
			jump:
	
		li $v0,10
	    syscall

profunct:
		li $t0,0 #value of i
		li $t1,0  #value of j
		li $t2,0  #value of k
		for: beq $t0,$a2,stop
			li $t1,0
			for1: beq $t1,$a2,stop1
				li $s0,0
				li $t2,0  
				  for2: beq $t2,$a2,stop2
					mul $t6,$t0,$a2  #calculating  address
					add $t6,$t6,$t2
					mul $t6,$t6,4
					add $t6,$t6,$a0
					lw $t7,($t6)  #loading the value of a[i][k]
					
					mul $t5,$t2,$a2  #calculating address
					add $t5,$t5,$t2
					mul $t5,$t5,4
					add $t5,$t5,$a1
					lw $t4,($t5)  #loading the value of b[k][j]
					
					mul $s1,$t7,$t4
					add $s0,$s0,$s1 #sum of elements
					addi $t2,$t2,1
					j for2
 stop2:
         mul $s3,$t0,$a2  #calculating address
	add $s3,$s3,$t1
       mul $s3,$s3,4
	sw $s0,pro($s3)  #loading value of c[i][j]
	addi $t1,$t1,
	j for1
stop1:
   addi $t0,$t0,1
   j for
  stop:	
				
				
jr $ra
			
		
