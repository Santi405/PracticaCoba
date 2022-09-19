.data
V:      .byte 0, 1, 1, 1, 0
res:    .space 3
        .text
   
        la $t0, V
        la $t1, res
        lb $t2, 0($t0)
        lb $t3, 4($t0)
        lb $t4, 1($t0)
        lb $t5, 3($t0)
        lb $t6, 0($t0)
        lb $t7, 1($t0)
        lb $t8, 2($t0)
 
        and $t2, $t2, $t3       #V[1] & V[5]
        sb $t2, 0($t1)      
 
        or $t4, $t4, $t3        #V[2] | V[4]
        sb $t4, 1($t1)
       
        or $t6, $t6, $t7        #V[1] | V[2]
        and $t6, $t6, $t8       # (V[1] | V[2]) & V[3]
        sb $t6, 2($t1)
