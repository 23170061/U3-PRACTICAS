; Materia: Lenguajes de Interfaz 
; Alumno: Aguirre Grijalva Eduardo Agustin
; Horario: 8-9 AM
; Docente: Dr. José Luis Medina Jiménez 
; Práctica: PRACTICA 03 - VALIDACION
; Descripción: es un programa donde revisamos si los valores guardados en
; los registros son cero usando test, y en caso de que si lo sean, 
; saltamos a una etiqueta para determinar que es invalido

INCLUDE Irvine32.inc

.data
	mensajeError BYTE "Entrada invalida", 0

.code
	
main PROC
	mov ecx, 0
	mov eax, 0


	test eax, eax ; aplica un AND para revisar si los valores son 0 y 0
	jz entradaInvalida ; jump if zero

	test ecx, eax
	jz entradaInvalida

	jmp fin ; salta al final si los valores son diferentes de 0                       

entradaInvalida:                    
	mov edx, OFFSET mensajeError
	call writeString
	call crlf

fin:                                 
	exit                             
	

main ENDP
END main