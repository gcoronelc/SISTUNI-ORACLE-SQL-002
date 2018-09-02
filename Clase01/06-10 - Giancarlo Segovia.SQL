select cur_id, cur_nombre, cur_vacantes, cur_matriculados, 
Round(cur_matriculados*100.0/cur_vacantes,2) "Porcentaje" 
from educa.curso;

select first_name || ' ' || last_name "Empleado" 
from hr.employees;

select cur_nombre, cur_vacantes*cur_precio "Valor Vacantes" 
from educa.curso;

select nombre, precio*stock "Valor Stock" 
from ventas.producto;

select first_name || ' ' || last_name "Empleado", 
salary "Salario Actual", salary*1.15 "Salario Proyectado" 
from hr.employees;


