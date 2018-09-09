-- 15. SELECT que permita averiguar los cursos que aún no
-- tienen profesor. Esquema EDUCA

select * from educa.curso where cur_profesor is null;


-- 16. SELECT para consultar el ingreso total de cada
-- empleado. Esquema HR.

select 
    first_name || ' ' || last_name "Empleado",
    salary "Sueldo Fijo",
    NVL(salary*(commission_pct),0) "Comisiones",
    NVL(salary*(1+commission_pct),salary) "Ingresos Totales"
from hr.employees;

-- 17. Desarrollar una sentencia SELECT para consultar 
-- los empleados cuyos ingresos
-- totales es menor a 8,000.00. Esquema HR.

select first_name || ' ' || last_name "Empleado",
salary "Sueldo Fijo",
NVL(salary*(commission_pct),0) "Comisiones",
NVL(salary*(1+commission_pct),salary) "Ingresos Totales"
from hr.employees
where NVL(salary*(1+commission_pct),salary) < 8000;

-- 18. Consultar los empleados cuyo ingreso 
-- (salario + comision) supera los 3500.00.
-- Esquema SCOTT y HR.

select first_name || ' ' || last_name "Empleado",
salary "Sueldo Fijo",
NVL(salary*(commission_pct),0) "Comisiones",
NVL(salary*(1+commission_pct),salary) "Ingresos Totales"
from hr.employees
where NVL(salary*(1+commission_pct),salary) > 3500;

--20. Desarrollar una sentencia SELECT para consultar los empleados que ingresaron a
--la empresa un mes de Enero. Esquemas SCOTT y HR.
select first_name || ' ' || last_name "Empleado",
hire_date from hr.employees
where extract(month from hire_date) = 1;

-- 21.Desarrollar una sentencia SELECT para consultar 
-- las matriculas del último mes.
-- Esquema EDUCA.
select * from educa.matricula 
where extract(month from mat_fecha) = 
extract(month from (select MAX(mat_fecha) from educa.matricula))
and extract(year from mat_fecha) = 
extract(year from (select MAX(mat_fecha) from educa.matricula));

