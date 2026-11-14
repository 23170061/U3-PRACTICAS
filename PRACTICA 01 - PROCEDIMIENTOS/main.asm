; Materia: Lenguajes de Interfaz 
; Alumno: Aguirre Grijalva Eduardo Agustin
; Horario: 8-9 AM
; Docente: Dr. José Luis Medina Jiménez 
; Práctica: PRACTICA 01 - PROCEDIMIENTOS
; Descripción: es un programa donde implementamos un procedimiento para mostrar un aviso dos veces
; reutilizando el procedimiento sin la necesidad de escribir lo mismo dos veces


INCLUDE Irvine32.inc                                           

.data                                                          
	mensajeinicio BYTE "Inicio El Programa", 0                 
	mensajeprocedimiento BYTE "Estoy dentro del procedimineto", 0 
	mensajeFin BYTE "Fin del programa", 0                      

.code                                                          
main PROC                                                      
	mov edx, OFFSET mensajeinicio                              
	call WriteString                                           
	call Crlf                                                  

	call mostrarAviso ; llamada al primer procedimiento                                         

	mov eax, 20                                                

	call mostrarAviso ; llamada al segundo procedimiento                                         
	mov eax, 20                                                

	mov edx, OFFSET mensajeFin                                 
	call WriteString                                           
	call Crlf                                                  

	exit                                                       
main ENDP                                                      

mostrarAviso PROC ; definicion del procedimiento                                             
	mov edx, OFFSET mensajeprocedimiento                       
	call WriteString                                           
	call Crlf                                                  
	ret ; regresamos al call donde fue llamado                                                       
mostrarAviso ENDP ; indica el final del procedimiento                                             

END main