ACEVEDO GUERRA
VERA VASQUEZ
ALEGRIA OLAZA

--6.	Desarrollar una sentencia SELECT que permita obtener la cantidad y porcentaje de matriculados por cada curso. Esquema EDUCA. 
select cur_id, cur_nombre, cur_vacantes, cur_matriculados, 
cur_matriculados * 100.0 / cur_vacantes porcentaje 
from educa.curso;

--7.	Desarrollar una sentencia SELECT para consultar el nombre y apellido de un empleado en una sola columna. Base de datos HR. 
select first_name||' '|| last_name from HR.employees

--8.	Desarrollar una sentencia SELECT que permita obtener el importe que se obtendr�a si se logra vender todas las vacantes por cada curso. Base de datos EDUCA. 
select cur_nombre as curso, CUR_VACANTES, CUR_PRECIO, (cur_vacantes * cur_precio) as importe
from EDUCA.curso 

--9.	Desarrolle una sentencia SELECT que permita obtener el importe que se obtendr�a por cada producto si se venden todas las unidades que hay en stock. Esquema VENTAS. 
select  nombre as producto, STOCK, PRECIO, (stock * precio) as importe_total
from VENTAS.producto

--10.	Desarrollar una sentencia SELECT que permita consultar el salario, y el salario proyectado con un aumento del 15% de cada empleado. Esquema HR. 
select first_name ||' '|| last_name as nombre, 
salary, ((15 * salary / 100.0) + salary) as nuevo_salario 
from HR.employees

