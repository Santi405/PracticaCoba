.data
V:      .byte 37,0,23,0,42,7,35,0
vLen:   .byte 7
total:  .word 1
        .text
 
        lb $t1, vLen
        andi $t0, 0
        andi $t3, 0
 
bucle:  
        bgt $t0, $t1, fin
        lb $t4, V($t0)
        beq $t4, $0, true
        addi $t3, $t3, 1
        addi $t0, $t0, 1
        j bucle
 
true:
        addi $t6, $t6, 1
        addi $t3, $t3, 1
        addi $t0, $t0, 1
        j bucle
 
 fin:
        sb $t6, total($0)
