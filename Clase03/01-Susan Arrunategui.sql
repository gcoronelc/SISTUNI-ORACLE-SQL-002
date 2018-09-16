/* 
Ejercicio 1

Se necesita un reporte de la planilla por departamento.
Esquema. HR
Los datos a mostrar son:
- Codigo de departamento
- Nombre del departamento
- Cantidad de empleados
- Importe de la planilla

*/

select 
    dp.department_id, 
    dp.department_name, 
    count(employee_id) NumEmp, 
    sum (salary * (1 + nvl(commission_pct,0))) Planilla
from HR.departments dp 
JOIN HR.employees em ON dp.department_id = em.department_id 
group by dp.department_id, dp.department_name
order by dp.department_id, dp.department_name;

