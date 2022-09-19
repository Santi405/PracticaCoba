        .data
V:      .byte 12,28,38,36,13,10,23,8
vLen:   .byte 7
rango1: .byte 15
rango2: .byte 30
total:  .space 1
        .text
 
        lb $t2, rango1($0)
        lb $t3, rango2($0)
        lb $t4, vLen($0)
        andi $t5, 0
        andi $t6, 0
        andi $t0, 0
 
bucle:  bgt $t0, $t4, fin
        lb $t5, V($t0)
        bgt $t5, $t2, true1
        add $t0, $t0, 1
        j bucle
 
true1:  
        blt $t5, $t3, true2
        add $t0, $t0, 1
        j bucle
 
true2:  add $t6, $t6, 1
        add $t0, $t0, 1
        j bucle
 
fin:    sb $t6, total($0)
