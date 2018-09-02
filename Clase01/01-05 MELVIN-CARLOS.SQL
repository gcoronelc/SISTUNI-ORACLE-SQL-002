--1.	Desarrolle una sentencia SELECT para consultar el id, nombre, apellido y email de todos los empleados. Esquema HR. 
select employee_id, first_name, last_name,email from HR.employees;

--2.	Desarrolle una sentencia SELECT para consultar el id, nombre, direcci�n y email de todos los alumnos. Esquema EDUCA. 
select alu_id,alu_nombre,alu_direccion,alu_email from EDUCA.alumno;

--3.	Desarrolle una sentencia SELECT para consultar el id, nombre, precio y profesor de cada curso. Esquema EDUCA.
select cur_id,cur_nombre,cur_precio,cur_profesor from EDUCA.curso;

--4.	Desarrolle una sentencia SELECT para consultar el id y nombre de todos los departamentos. Esquema HR.
select department_id,department_name from HR.departments;

--5.	Desarrolle una sentencia SELECT para consultar el nombre,  vacantes y precio de cada curso. Esquema EDUCA.
select cur_nombre,cur_vacantes,cur_precio from EDUCA.curso;

