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



/* Ejemplo 4 */
/* Empleados por departamento */

SELECT dep.department_id, dep.department_name,
    count(emp.department_id) as empleados
FROM HR.departments dep
LEFT JOIN HR.employees emp 
on dep.department_id = emp.department_id
GROUP BY dep.department_id, dep.department_name
order by 1;





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

select 
    dp.department_id, 
    dp.department_name, 
    count(employee_id) NumEmp, 
    sum (salary * (1 + nvl(commission_pct,0))) Planilla
from HR.departments dp 
JOIN HR.employees em ON dp.department_id = em.department_id 
group by dp.department_id, dp.department_name
order by dp.department_id, dp.department_name;



/* 
Ejercicio 2

Se necesita un reporte para la gerencia de EDUCA.

Los datos a mostrar son:
- Codigo del curso
- Nombre del curso
- Ingresos planificados
- Cantidad de alumnos matriculados
- Ingresos comprometidos
- Ingresos reales
*/

WITH 
V1 AS (
    select cur_id, sum(mat_precio) ING_COMPRO
    from educa.matricula
    group by cur_id
),
V2 AS (
    select cur_id, sum(pag_importe) ING_REALES
    from educa.pago
    group by cur_id
)
SELECT 
    CU.CUR_ID, cu.cur_nombre,
    cu.cur_vacantes * CU.CUR_PRECIO ING_PLANIFICADOS,
    cu.cur_matriculados, 
    NVL(v1.ing_compro,0) ING_COMPRO,
    NVL(v2.ing_reales,0) ING_REALES
FROM EDUCA.CURSO CU
LEFT JOIN V1 ON CU.CUR_ID = v1.cur_id
LEFT JOIN V2 ON CU.CUR_ID = v2.cur_id;



/*
Ejercicio 3

Se necesita un reporte del resumen de los ahorros por moneda.

Los datos a mostrar son:
- Codigo de moneda
- Mombre de moneda
- Saldo
*/


-- ==================================================
-- UNION
-- ==================================================

SELECT 'SCOTT' ORIGEN, empno, ename FROM SCOTT.emp
UNION
SELECT 'HR', employee_id, first_name FROM HR.employees
UNION
SELECT 'VENTAS', idprod, nombre FROM VENTAS.producto;


-- ==================================================
-- SUBCONSULTA
-- ==================================================

/* 
Ejemplo
Todos los empleados que tienen su 
sueldo mayor al sueldo promedio
*/

select *
from HR.employees
where salary > (select avg(salary) from HR.employees);


select em.*
from HR.employees em
join (select avg(salary) dato from HR.employees) t
on em.salary > t.dato;


/*
Se requiere saber quienes son los que tienen 
en menor salario por departamento.
*/


select * 
from HR.employees
where (department_id, salary) in (
    select department_id, min(salary)
    from HR.employees
    where department_id is not null
    group by department_id
);



/* 
Ejercicio 2

Se necesita un reporte para la gerencia de EDUCA.

Los datos a mostrar son:
- Codigo del curso
- Nombre del curso
- Ingresos planificados
- Cantidad de alumnos matriculados
- Ingresos comprometidos
- Ingresos reales

SOLUCION CON SUBCONSULTA CORRELACIONADA
*/

SELECT 
    CU.CUR_ID, cu.cur_nombre,
    cu.cur_vacantes * CU.CUR_PRECIO ING_PLANIFICADOS,
    cu.cur_matriculados, 
    NVL((select  sum(x.mat_precio) from educa.matricula x
      where x.cur_id = cu.cur_id),0) ING_COMPRO,
    NVL((select sum(y.pag_importe) from educa.pago y 
      where y.cur_id = cu.cur_id),0) ING_REALES
FROM EDUCA.CURSO CU;


/*
ACTUALIZANDO DATOS
*/

SELECT * FROM VENTAS.empleado;

INSERT INTO VENTAS.empleado(IDEMP,NOMBRE,APELLIDO,EMAIL,TELEFONO)
SELECT 1004 + ROWNUM, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER 
FROM HR.employees;

DELETE FROM VENTAS.empleado WHERE IDEMP > 1004;

INSERT INTO VENTAS.empleado(IDEMP,NOMBRE,APELLIDO,EMAIL,TELEFONO)
SELECT 
    VENTAS.SQ_PRODUCTO.NEXTVAL, FIRST_NAME, LAST_NAME, 
    EMAIL, PHONE_NUMBER 
FROM HR.employees;


SELECT * FROM EDUCA.curso;

UPDATE EDUCA.CURSO CU
SET cu.cur_matriculados = 20;


UPDATE EDUCA.CURSO CU
SET cu.cur_matriculados = (
        SELECT COUNT(1) FROM EDUCA.MATRICULA MA
        WHERE MA.CUR_ID = CU.CUR_ID
    );











