--En el esquema eureka

--Ejercicio 1
--Cuantas cuentas hay por tipo de moneda
select chr_monecodigo, count(*) as nrocuentas
from eureka.cuenta
group by chr_monecodigo;

--Ejercicio 2
--Cuantas cuentas ha creado un empleado
select chr_emplcreacuenta, count(*) as nrocuentas
from eureka.cuenta
group by chr_emplcreacuenta;

--En el esquema hr

--Ejercicio 3
--Cuantos empleados hay por departamento
select department_idas "Departamento", count(*) as nroempleados
from hr.employees
group by department_id
order by department_id;

--Ejercicio 4
--Cuantos empleados hay por puesto de trabajo 
--en cada departamento
select department_id as "Departamento", job_id as "Puesto de Trabajo",
count(*) as nroempleados
from hr.employees
group by department_id, job_id
order by department_id, job_id;
