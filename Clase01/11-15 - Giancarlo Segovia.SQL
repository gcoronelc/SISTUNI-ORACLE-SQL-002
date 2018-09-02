select first_name || ' ' || last_name "Empleado", hire_date from hr.employees
where hire_date > to_date('31/12/1980', 'DD-MM-YYYY') and
hire_date < to_date('01/04/1981', 'DD-MM-YYYY');

-- Ejercicio 12
select employees.first_name || ' ' || employees.last_name
"Empleados de Contabilidad", employees.department_id
from hr.employees, hr.departments
where employees.department_id = departments.department_id and 
departments.department_name = 'Accounting';

-- Ejercicio 13
select cur_nombre "Cursos Sin Matriculados", 
cur_matriculados from educa.curso
where cur_matriculados = 0;

select nombre, precio from ventas.producto
where precio > 50;

select first_name || ' ' || last_name "Empleado", salary 
from hr.employees
where salary > 3000;

