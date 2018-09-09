--22. Desarrollar una sentencia SELECT que permita 
--consultar los empleados cuya pen�ltima letra de su nombre es E. 
--Esquema SCOTT y HR. 

select * from SCOTT.emp where SUBSTR(ename,-2,1)='E';
select * from HR.employees where upper(SUBSTR(first_name,-2,1))='E';

select substr('12345678',-2, 1) from dual;



--23. Desarrollar una sentencia SELECT que permita 
--consultar los empleados que su nombre finaliza 
--con la letra "O". Esquema HR. 

select * from HR.employees where first_name like '%o';

--24. Desarrollar una sentencia SELECT que permita 
-- consultar los empleados que su apellido tiene 
-- en la segunda posici�n la letra "A" o la letra "O". Esquemas SCOTT y HR. 

select * from SCOTT.emp 
where SUBSTR(ename,2,1)='A' OR SUBSTR(ename,2,1)='O';  --no tiene el campo apellido, solo nombre

select * from HR.employees where upper(SUBSTR(last_name,2,1))IN ('A','O');

--25. Desarrollar una sentencia SELECT que permita averiguar que empleados tienen un sueldo mayor de 3,000.0 y menor de 10,000.0. Esquemas SCOTT y HR. 
select * from SCOTT.emp where sal > 3000.00 AND sal < 10000.00;
select * from HR.employees where salary > 3000.00 AND salary < 10000.00;

--26. Desarrollar una sentencia SELECT que permita averiguar qui�nes son los empleados de los departamentos de contabilidad, recursos humanos y ventas. Esquemas SCOTT y HR. 
select * from SCOTT.dept WHERE dname IN('ACCOUNTING','Human Resources','SALES');
select * from SCOTT.emp where deptno IN (10,30);

select * from HR.departments 
WHERE department_name IN('Accounting','Human Resources','Sales');

select * from HR.employees where department_id IN (40,110,80);

--27. Consultar los empleados del departamento de ventas que no tienen comisi�n. Esquemas SCOTT y HR
select * from SCOTT.dept WHERE dname ='SALES';
select * from SCOTT.emp where deptno = 30 and (comm=0 or comm is null);

select * from HR.departments 
WHERE department_name ='Sales';

select * from HR.employees 
where department_id = 80 and (commission_PCT = 0 or commission_PCT is null);


