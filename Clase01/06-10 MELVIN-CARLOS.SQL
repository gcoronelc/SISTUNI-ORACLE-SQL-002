--6.	Desarrollar una sentencia SELECT que permita obtener la cantidad y porcentaje de matriculados por cada curso. Esquema EDUCA. 
select cur_id,cur_nombre,cur_vacantes,cur_matriculados,
round(cur_matriculados*100.0 /cur_vacantes,2) porcentaje 
from EDUCA.curso;

--7.	Desarrollar una sentencia SELECT para consultar el nombre y apellido de un empleado en una sola columna. Base de datos HR. 
select first_name ||' '|| last_name from HR.employees;

--8.	Desarrollar una sentencia SELECT que permita obtener el importe que se obtendr�a si se logra vender todas las vacantes por cada curso. Base de datos EDUCA. 
select cur_id,cur_nombre,cur_vacantes * cur_precio importe 
from EDUCA.curso;

--9.	Desarrolle una sentencia SELECT que permita obtener el importe que se obtendr�a por cada producto si se venden todas las unidades que hay en stock. Esquema VENTAS. 
select idprod,nombre,stock * precio IMPORTE 
from VENTAS.producto;

--10.	Desarrollar una sentencia SELECT que permita consultar el salario, y el salario proyectado con un aumento del 15% de cada empleado. Esquema HR. 
select employee_id,first_name,last_name,
salary,salary + (salary*0.15) SalarioProyectado 
from HR.employees;


