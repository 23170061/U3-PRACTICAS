; Materia: Lenguajes de Interfaz 
; Alumno: Aguirre Grijalva Eduardo Agustin
; Horario: 8-9 AM
; Docente: Dr. José Luis Medina Jiménez 
; Práctica: PRACTICA 05 - MACROS
; Descripción: es un programa donde implementamos macros para mostrar mensajes en pantalla
; y tambien multiplicaciones en consola

INCLUDE Irvine32.inc

MostrarMensaje MACRO texto ; creamos el macro para mostrar el mensaje 
	mov edx, OFFSET texto
	call writestring
	call crlf
ENDM

Multiplicacion MACRO valor1, valor2 ; creamos el macro que multiplica dos valores
	mov eax, valor1
	imul eax, valor2
	call writedec
	call crlf
ENDM


.data
mensajeBienvenida BYTE "Bienvenido al sistema de ventas", 0
mensajeFin BYTE "Hasta luego, vuelva pronto", 0

.code
main PROC
	
	MostrarMensaje mensajeBienvenida ; se llama el macro
	MostrarMensaje mensajeFin 

	Multiplicacion 2, 10 ; llamada al macro


	
	exit
main ENDP

END main