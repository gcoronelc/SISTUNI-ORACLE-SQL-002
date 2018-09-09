--Ejecicios en EUREKA:--
--1. Cuentas cuentas hay por tipo de moneda.
select chr_monecodigo,count(*) from EUREKA.cuenta
group by chr_monecodigo;

--2. Cuantas cuentas ha creado cada empleado
select chr_emplcreacuenta,count(*) EMPLEADOS 
from EUREKA.cuenta
group by chr_emplcreacuenta;

--Ejecicios en HR:--
select * from HR.employees;
--3. Cuantos empleados hay por departamento
select department_id, COUNT(*) EMPLEADOS 
from HR.employees 
WHERE department_id IS NOT NULL 
group by department_id;

--4. Cuantos empleados hay por puesto de trabajo en cada departamento
select department_id, job_id,  COUNT(*) EMPLEADOS 
from HR.employees 
group by department_id, job_id;


