        .data
V:      .byte 1,-4,-5,2
res:    .word 1
        .text
 
        la $t2, res
        la $t5, 3
        andi $t0, 0
 
bucle:      
        bgt $t0, $t5, fin
        lb, $t3, V($t0)
        bgtz $t3, casoPositivo
        addi $t0, $t0, 1
        j bucle
 
casoPositivo:
        andi $t2, 0
 
fin:
        sne $t2,$t2,$0
        sb $t2, res($0)
