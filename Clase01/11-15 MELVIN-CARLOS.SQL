--11.	Consultar los empleados que ingresaron a trabajar el primer trimestre del a�o 1981. Esquema SCOTT y HR 
select * from SCOTT.emp
where EXTRACT(MONTH from hiredate)<= 3
and EXTRACT(year from hiredate) = 1981;

select * from HR.employees
where EXTRACT(MONTH from hire_date)<= 3
and EXTRACT(year from hire_date) = 1981;

--12.	Desarrollar una sentencia SELECT para consultar 
-- los empleados del departamento de contabilidad. Esquemas SCOTT y HR. 

select empno,ename,job,deptno from SCOTT.emp where deptno=10; 

select * from HR.employees where department_id=110;


--13.	Desarrolle una sentencia SELECT para consultar los cursos que no tienen alumnos matriculados. Esquema EDUCA. 
select * from EDUCA.curso where cur_matriculados=0;

--14.	Desarrollar una sentencia SELECT para consultar los productos que su precio en mayor a 50 Soles. Esquema VENTAS. 
select * from VENTAS.producto where precio>50;

--15.	Desarrollar una sentencia SELECT para consultar los empleados que su salario en mayor a 3000.00. Esquema HR. 
select * from HR.employees where salary > 3000.00;
