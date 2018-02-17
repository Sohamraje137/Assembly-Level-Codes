#SOHAM S PATIL
#16CO249
#Solution contains Q.2 
#use of global pointer 
.data 
 
.text
 

   la $t0,($gp)
   li $t1,0x00000004
   sw $t1,($t0)
   
   la $t2 ,-0x8000($gp)
   li $t3,0x00000003
   sw $t3,-0x8000($gp)
   
  # la $t2,-7600($gp)
   add $t4,$t3,$t1
   sw $t4,-7604($gp)
   
   li $v0,1
   add $a0,$zero,$t4
   syscall
   
