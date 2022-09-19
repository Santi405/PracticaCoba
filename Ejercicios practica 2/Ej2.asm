.data
V:      .byte 2, 4, 6
res:    .space 12
        .text
       
        la $t2, V
        la $t3, res
        li $t0, 0
        li $t1, 2
        li $t5, 1		# Se inicializa como 1
   
bucle:
        bgt $t0, $t1, fin
        lb $t4, V($t0)
        blez $t4, true		# Pero si hay un numero negativo o cero, se cambia
        addi $t0, $t0, 1
        addi $t2, $t2, 4
    	addi $t3, $t3, 4
    	j bucle
true:
        andi $t5, 0
        sb $t5, res($0)
        
fin:
