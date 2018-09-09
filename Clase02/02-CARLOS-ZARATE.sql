/*Desarrollar una sentencia SELECT que permita consultar los
empleados que su nombre finaliza con la letra "O". Esquema HR.*/

select * from HR.employees
where first_name LIKE '%O';

/*Desarrollar una sentencia SELECT que permita consultar 
los empleados que su apellido tiene en la segunda posiciÓn 
la letra "A" o la letra "O". Esquemas SCOTT y HR.*/

-- INCOMPLETO

select * from HR.employees
where first_name LIKE '_A%';

select * from SCOTT.emp
where ename LIKE '_A%';

/*Desarrollar una sentencia SELECT que permita averiguar 
que empleados tienen un sueldo mayor de 3,000.0 y 
menor de 10,000.0. Esquemas SCOTT y HR.*/

select * from SCOTT.emp
where sal BETWEEN 3000 AND 10000;





