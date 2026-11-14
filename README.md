# U3-PRACTICAS
## Lenguajes de interfaz - practicas unidad 3<br>
## horario de 8 a 9 AM <BR>
## Alumno: Aguirre Grijalva Eduardo Agustin <br>
## Docente: Dr. Jose Luis Medina Jimenez <br>

---

## Índice de Prácticas

### [PRACTICA 01 - PROCEDIMIENTOS](./PRACTICA%2001%20-%20PROCEDIMIENTOS)
* **¿Qué hace el programa?** 
  Es un programa donde implementamos un procedimiento para mostrar un aviso dos veces, reutilizando el procedimiento sin la necesidad de escribir lo mismo dos veces.
* **¿Qué se comprobó al ejecutarlo?** 
  Se comprobó que al mandar llamar el procedimiento dos veces desde el main, los mensajes se imprimen en pantalla en el orden correcto y el programa regresa exactamente al punto donde fue llamado usando ret sin repetir código.

---

### [PRACTICA 03 - VALIDACION](./PRACTICA%2003%20-%20VALIDACION)
* **¿Qué hace el programa?** 
  Es un programa donde revisamos si los valores guardados en los registros son cero usando test, y en caso de que sí lo sean, saltamos a una etiqueta para determinar que es inválido.
* **¿Qué se comprobó al ejecutarlo?** 
  Se comprobó paso a paso que al poner un 0 en los registros, la instrucción test lo detecta y el salto condicional jz desvía la ejecución directamente hacia la etiqueta entradaInvalida.

---

### [PRACTICA 04 - MANEJO DE PILA](./PRACTICA%2004%20-%20MANEJO%20DE%20PILA)
* **¿Qué hace el programa?** 
  Es un programa donde se guardan dos números en la pila, llamamos un procedimiento para leerlos, multiplicarlos y limpiamos la pila al terminar.
* **¿Qué se comprobó al ejecutarlo?** 
  Se comprobó que los valores entran correctamente a la pila con push, el procedimiento los lee usando ebp para hacer la multiplicación, el valor original de ebx (999) no se pierde gracias al respaldo en la pila y al regresar con ret 8 la pila queda limpia.

---

### [PRACTICA 05 - MACROS](./PRACTICA%2005%20-%20MACROS)
* **¿Qué hace el programa?** 
  Es un programa donde implementamos macros para mostrar mensajes en pantalla y también multiplicaciones en consola.
* **¿Qué se comprobó al ejecutarlo?** 
  Se comprobó que al invocar las macros con sus parámetros, se despliegan en consola los mensajes de bienvenida y despedida junto con el resultado correcto de la multiplicación (20).
