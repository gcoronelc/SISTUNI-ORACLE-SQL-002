--15. Desarrollar una sentencia SELECT que permita averiguar los cursos que a�n no tienen profesor. Esquema EDUCA. 
select * from EDUCA.curso where cur_profesor is null or cur_profesor=' ';

--16. Desarrollar una sentencia SELECT para consultar el ingreso total de cada empleado. Esquema HR. 
select employee_id,first_name,last_name,salary+(salary*NVL(TO_CHAR(commission_pct), 0)) as "Salario Total" from HR.employees;

--17. Desarrollar una sentencia SELECT para consultar los empleados cuyos ingresos totales es menor a 8,000.00. Esquema HR.
select a.employee_id,a.first_name,a.last_name,b.Ingresos from HR.employees a
inner join (select employee_id,salary+(salary*NVL(TO_CHAR(commission_pct), 0)) Ingresos from HR.employees) b
on a.employee_id = b.employee_id
where b.Ingresos < 8000.00;
--order by b.SalarioTotal desc

--18. Consultar los empleados cuyo ingreso (salario + comisi�n) supera los 3500.00. Esquema SCOTT y HR. 
select a.empno,a.ename,b.SalarioTotal from SCOTT.emp a
inner join (select empno,sal+(sal*NVL(TO_CHAR(comm), 0)) SalarioTotal from SCOTT.emp) b
on a.empno = b.empno
where b.SalarioTotal > 3500.00;

select a.employee_id,a.first_name,a.last_name,b.SalarioTotal from HR.employees a
inner join (select employee_id,salary+(salary*NVL(TO_CHAR(commission_pct), 0)) SalarioTotal from HR.employees) b
on a.employee_id = b.employee_id
where b.SalarioTotal > 3500.00;

-----------------------------------

--20. Desarrollar una sentencia SELECT para consultar los empleados que ingresaron a la empresa un mes de Enero. Esquemas SCOTT y HR.
select * from SCOTT.emp where TO_CHAR(hiredate,'MM') = 01;
select * from HR.employees where TO_CHAR(hire_date,'MM') = 01;

--21. Desarrollar una sentencia SELECT para consultar las matriculas del �ltimo mes. Esquema EDUCA.
select to_char(MAX(mat_fecha),'MM') from EDUCA.matricula; --02/06/18
select * from EDUCA.matricula where EXTRACT(MONTH from mat_fecha)='06';



