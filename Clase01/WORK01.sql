select * from scott.emp;

select * from HR.employees;


/*
Pregunta 01
Desarrolle una sentencia SELECT para consultar 
el id, nombre, apellido y email de
todos los empleados. Esquema HR.
*/

select employee_id, first_name, last_name, email
from HR.employees;

/*
Pregunta 06

Desarrollar una sentencia SELECT que permita obtener 
la cantidad y porcentaje de matriculados por cada curso. 
Esquema EDUCA.
*/

select 
    cur_id, cur_nombre, cur_vacantes, cur_matriculados, 
    cur_matriculados * 100.0 / cur_vacantes porcentaje
from EDUCA.curso;






/*
Ejercicio 11

Consultar los empleados que ingresaron a trabajar el primer 
trimestre del año 1981.
Esquema SCOTT y HR

*/

select extract( month from sysdate ) from dual;

select * 
from scott.emp 
where extract(month from hiredate) <= 3 
and extract(year from hiredate) = 1981;

select * 
from HR.employees
where extract(month from hire_date) <= 3 
and extract(year from hire_date) = 1981;









