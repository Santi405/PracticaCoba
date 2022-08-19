# Ejercicio 1

          .data
dato:  	 	.byte 3         #inicializo una posición de memoria a 3
 	        .text
      	 	.global main     # debe ser global
main: lw $t0,dato($0)

# 
