#Ejercicio 1

          .data
dato:   	.byte 3         #inicializo una posición de memoria a 3
          .text
          .global main     # debe ser global
main: lw $t0,dato($0)

# dato: y main: Son las etiquetas.
# .data, .byte, .text, .global son las directivas
# Todo texto posterior a un "#" es un comentario


#Ejercicio 2
                    .data 0x10000000
A: 	 	.space 80
B: 	 	.space 80


#Ejercicio 3
 	 	.data
pal1: 	 	.word 4
num:                .byte 1
 	 	.align 2
pal2:   	          .word 4


#Ejercicio 4
 	 	.data
pal1: 	 	.word 3

num1: 	 	.byte 0x10


 	 	.align 4
pal2: 	 	.space 4
num2: 	 	.byte 20


#Ejercicio 5
 	 	.data
pal1: 		.ascii "Esto es un problema"
pal2: 	 	.word 69, 115, 116, 111, 32, 101, 115, 32, 117, 110, 32, 112, 114, 111, 98, 108, 101, 109, 97
pal3: 	 	.byte 69, 115, 116, 111, 32, 101, 115, 32, 117, 110, 32, 112, 114, 111, 98, 108, 101, 109, 97


#Ejercicio 6
 	 	.data
matrizFila:  .byte 1, 2, 3, 4, 5, 6, 7, 8, 9
matrizCol:   .byte 1, 4, 7, 2, 5, 8, 3, 6, 9


#Ejercicio 7
 	 	.data 0x10000000
V: 	 	.word 10, 20, 25, 500, 3
 	 	.text
main: 
 	 	la $t1, V

 	 	lw $s0, 0($t1)
 	 	lw $s1, 4($t1)
 	 	lw $s2, 8($t1)
 	 	lw $s3, 12($t1)
 	 	lw $s4, 16($t1)


#Ejercicio 8
 	 	.data 0x10000000
V:	 	.word 10, 20, 25, 500, 3
 	 	.text
main:
 	 	la $t0, V

 	 	lw $s0, 0($t0)
 	 	lw $s1, 4($t0) 
 	 	lw $s2, 8($t0) 
 	 	lw $s3, 12($t0)
 	 	lw $s4, 16($t0)

 	 	li $t1, 0x10010000

 	 	sw $s0, 0($t1)
 	 	sw $s1, 4($t1)
 	 	sw $s2, 8($t1)
 	 	sw $s3, 12($t1)
 	 	sw $s4, 16($t1) 


#Ejercicio 9
 	 	.data
pal1:  	.word 0x10203040
pal2: 	 	.space 4
 	 	.text

 	 	la $t0, pal2
 	 	lw $t1, pal1

 	 	sb $t1, 3($t0)
 	 	srl $t1, $t1, 8
 	 	sb $t1, 2($t0)
 	 	srl $t1, $t1, 8
 	 	sb $t1, 1($t0)
 	 	srl $t1, $t1, 8
 	 	sb $t1, 0($t0)


#Ejercicio 10
 	 	.data
pal1:  	.word 0x10203040
 	 	.text

 	 	la $t0, pal1

 	 	lh $s0, 0($t0)
 	 	lh $s1, 2($t0)

 	 	sh $s1, 0($t0)
 	 	sh $s0, 2($t0)


#Ejercicio 11
 	 	.data 0x10010002
bytes:  	.byte 0x10, 0x20, 0x30, 0x40
 	 	.data 0x10010102
res: 	  	.space 4
 	 	.text

 	 	la $t0, bytes
 	 	la $t1, res

 	 	andi $t2, $t2, 0
 	 	add $t2, $t1, 4

loop:  	lb $s0, 0($t0)
 	 	sb $s0, 0($t1)

 	 	add $t0, $t0, 1
 	 	add $t1, $t1, 1

 	 	blt $t1, $t2, loop


#Ejercicio 12
 	 	.data 0x10000000
V:           .byte 10, 20
 	 	.text

 	 	la $t0, V

 	 	lb $s0, 0($t0)
 	 	lb $s1, 1($t0)

 	 	add $s2, $s0, $s1

 	 	sb $s2, 2($t0)


#Ejercicio 13
 	 	.data 0x10000000
V:           .word 18, -1215
 	 	.text
 	 	la $t0, V
 	 	li $t1, 0x10010000

 	 	lw $s0, 0($t0)
 	 	lw $s1, 4($t0)

 	 	div $s0, $s0, 5
 	 	div $s1, $s1, 5

 	 	div $s3, $s0, $1 
 	 	sb $s3, 0($t1)


#Ejercicio 14
 	 	.data 0x10000000
val: 	 	.word 0xabcd12bd
 	 	.text

 	 	lw $s0, val($0)
 	 	andi $s0, $s0, 0x2BB


#Ejercicio 15
 	 	.data 0x10000000
val: 	 	.word 0xffffff41
 	 	.text

 	 	lw $s0, val($0)
 	 	xor $s0, $s0, 0x144


#Ejercicio 16
 	 	.data
val:         .word 0x1237
 	 	.text

 	 	lw $s0, val($0)
 	 	sll $s0, $s0, 5

