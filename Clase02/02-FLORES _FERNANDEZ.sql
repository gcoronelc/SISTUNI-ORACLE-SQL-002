/*OPERADORES LIKE
Campo [NOT] LIKE 'Patron'
Caracteres:%y_ */

select * from hr.employees
where first_name not like 'D%'

select * from hr.employees
where first_name like '%e%'

select * from hr.employees
where upper (substr (first_name,2,1)) in ('A','E')

select * from hr.employees
where commission_pct IS NOT NULL;

--- 7
select * from hr.employees
where first_name like '%e_';

select * from SCOTT.emp 
where ename like '%E_';

--8
select * from hr.employees
where first_name like '%o'

--9 
select * from hr.employees
where upper (substr (LAST_NAME,2,1)) in ('A','O')


--10
select * from HR.employees
where (salary between 3000 and 10000)

--11
select * from HR.employees
where department_id in (110,40,80)

select * from SCOTT.emp
where deptno in (10,30)

--12
select * from HR.employees
where commission_pct is null

select * from SCOTT.emp
where comm is null