.data
.text
        addi $s0,$zero,8
        addi $s1,$zero,7
        
        mul $t1,$s0,$s1
        li $v0,1
    
        add $a0,$zero,$t1
        syscall