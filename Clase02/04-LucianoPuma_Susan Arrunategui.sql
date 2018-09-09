
--Ejercicio 1
--Cuentas cuentas hay por tipo de moneda
select chr_monecodigo,count(*)
from Eureka.cuenta
group by chr_monecodigo;


--Ejercicio 2
--Cuantas cuentas han creado cada empleado
select chr_emplcreacuenta, count(*)
from Eureka.cuenta
group by chr_emplcreacuenta;


--Ejercicio 3
--Cuentos empleados hay por departamento
select department_id, count(*)
from HR.employees
group by department_id;


--Ejercicio 4
-- cuantos empleados hay por puesto de trabajo en cada departamento
select   department_id, job_id, count(*)
from HR.employees
group by  department_id, job_id;
