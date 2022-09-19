        .data
texto:  .asciiz "Eyy muy buenas"
char:   .byte 121
total:  .space 1
        .text
 	
        lb $t1, char($0)
        andi $t2, 0
        andi $t0, 0
 
bucle:  
        lb  $t3, texto($t0)
        beq $t3, $0, fin
        beq $t3, $t1, true
        add $t0, $t0, 1
        j bucle
true:
        addi $t5, $t5, 1
        add $t0, $t0, 1
        j bucle
 
fin:    sb $t5, total($0)
