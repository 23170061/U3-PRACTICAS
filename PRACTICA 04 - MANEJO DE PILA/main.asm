; Materia: Lenguajes de Interfaz 
; Alumno: Aguirre Grijalva Eduardo Agustin
; Horario: 8-9 AM
; Docente: Dr. José Luis Medina Jiménez 
; Práctica: PRACTICA 04 - MANEJO DE PILA
; Descripción: es un programa donde se guardan dos numeros en la pila, llamamos un procedimiento
; para leerlos, multiplicarlos y limpiamos la pila al terminar

INCLUDE Irvine32.inc

.data
	
.code
	
main PROC
	mov ebx, 999

	push 3
	push 25

	call SumarPila
	nop ; regresa de sumarPila
	exit

main ENDP

SumarPila PROC
push ebp
mov ebp, esp ; punto de referencia para leer la pila

push ebx

mov eax, [ebp+8] ; guardamos el 25
mov ebx, [ebp+12] ; guardamos el 3

imul eax, ebx 

pop ebx ; sacamos el 999 que guardamos como referencia
pop ebp

ret 8 ; regresamos al main y borra los ultimos 8 bytes de la pila 

SumarPila ENDP

END main