

--1.	Consultar los empleados que ingresaron a trabajar el primer trimestre del a�o 1981. Esquema SCOTT y HR -> DESARROLLADO POR EL PROFESOR
--2.	Desarrollar una sentencia SELECT para consultar los empleados del departamento de contabilidad. Esquemas SCOTT y HR. 
SELECT *
FROM SCOTT.emp
WHERE DEPTNO =(
SELECT DEPTNO
FROM SCOTT.dept  WHERE Dname='ACCOUNTING');

-- 3.	Desarrolle una sentencia SELECT para consultar 
-- los cursos que no tienen alumnos matriculados. Esquema EDUCA. 

select * from EDUCA.curso where cur_matriculados = 0;

--4.	Desarrollar una sentencia SELECT para consultar los productos que su precio en mayor a 50 Soles. Esquema VENTAS. 
select * from VENTAS.producto where precio > 50;

--5.	Desarrollar una sentencia SELECT para consultar los empleados que su salario en mayor a 3000.00. Esquema HR. 
select * from HR.employees where salary > 3000;
