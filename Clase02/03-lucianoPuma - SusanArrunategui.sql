--15
SELECT
    *
FROM EDUCA.curso where cur_profesor is null;

--16
select first_name, last_name, (salary + NVL(commission_pct,0))Salario_Total
 from HR.employees

--17
SELECT
    *
FROM HR.employees where (salary + NVL(commission_pct,0)) < 8000;

--18
SELECT
    *
FROM HR.employees where (salary + commission_pct)  > 35000;


SELECT
 (sal+comm)
FROM SCOTT.emp  where (sal+total) >35000;

REM ******EJERCICIO 19******
SELECT *
FROM HR.employees
where (salary + NVL(commission_pct,0))> 3500


REM *****EJERCICIO 20*******
SELECT * FROM HR.EMPLOYEES
WHERE  EXTRACT(MONTH FROM HIRE_DATE)=01

SELECT * FROM SCOTT.EMP
WHERE  EXTRACT(MONTH FROM HIREDATE)=01

--***************************
REM ******EJERCICIO 21*************
SELECT * FROM EDUCA.MATRICULA
WHERE EXTRACT (MONTH FROM MAT_FECHA) =6