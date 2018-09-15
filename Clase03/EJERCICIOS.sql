-- ==================================================
-- JOIN ON
-- ==================================================
/*

Sintaxis:

FROM tabla1 t1
JOIN tabla2 t2 ON (condicion)
JOIN tabla3 t3 ON (condicion)
JOIN tabla4 t4 ON (condicion)
. . .

*/

/* Ejemplo 1 */

SELECT *
FROM EDUCA.curso CU
JOIN EDUCA.matricula MA ON cu.cur_id = ma.cur_id
JOIN EDUCA.alumno AL ON ma.alu_id = al.alu_id;


/* Ejemplo 2 */

SELECT cu.cur_nombre, al.alu_nombre, ma.mat_precio, ma.mat_nota
FROM EDUCA.curso CU
JOIN EDUCA.matricula MA ON cu.cur_id = ma.cur_id
JOIN EDUCA.alumno AL ON ma.alu_id = al.alu_id;


/* Ejemplo 3 */
/* Nota promedio por curso */

SELECT cu.cur_nombre, AVG(ma.mat_nota) Promedio
FROM EDUCA.curso CU
JOIN EDUCA.matricula MA ON cu.cur_id = ma.cur_id
GROUP BY cu.cur_nombre;

/* EJERCICIOS */

/* 
Ejercicio 1

Se necesita un reporte de la planilla por departamento.
Esquema. HR
Los datos a mostrar son:
- Codigo de departamento
- Nombre del departamento
- Cantidad de empleados
- Importe de la planilla

*/





/* 
Ejercicio 2

Se necesita un reporte para la gerencia de EDUCA.

Los datos a mostrar son:
- Codigo del curso
- Ingresos planificados
- Cantidad de alumnos matriculados
- Ingresos comprometidos
- Ingresos reales
*/





/*
Ejercicio 3

Se necesita un reporte del resumen de los ahorros por moneda.

Los datos a mostrar son:
- Codigo de moneda
- Mombre de moneda
- Saldo
*/




