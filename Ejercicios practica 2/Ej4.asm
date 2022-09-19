        .data
dato1:  .byte 2
dato2:  .byte 10
dato3:  .byte 50
dato4:  .byte 70
dato5:  .byte 34
res:    .space 1
 
        .text
   
        lb $t1, dato1($0) # 2
        lb $t2, dato2($0) # 10
        lb $t3, dato3($0) # 50
        lb $t4, dato4($0) # 70
        lb $t5, dato5($0) # 34
     
        bge $t1, $t5, f1
        bge $t2, $t5, verdadero
 
f1:     bgt $t3, $t5, fin
        blt $t4, $t5, fin
        j verdadero
 
verdadero:
        ori $t6, $t6, 1
 
fin:
        sb $t6, res($0)
