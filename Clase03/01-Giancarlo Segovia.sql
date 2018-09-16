/*
Ejercicio 1
Esquema HR
Se necesita un reporte con la planilla por departamento los datos a mostrar son:
codigo de departamento
nombre del departamento
cantidad de empleados
importe de la planilla
*/
select 
    d.department_id, 
    d.department_name, 
    count(*) as Empleados,
    sum(NVL(e.salary*(1+e.commission_pct),e.salary)) as Planilla
from hr.departments d 
join hr.employees e on (d.department_id = e.department_id)
group by d.department_id, d.department_name;