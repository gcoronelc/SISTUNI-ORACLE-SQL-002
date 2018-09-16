/* Ejercicio 1: 
Se necesita un reporte de la planilla por departamento.
Esquema .HR
Los datos a mostrar son:
- Codigo de departamento
- Nombre del departamento
- Cantidad de empleados
- Importe de la planilla

*/
select * FROM HR.departments;
select * FROM HR.employees;

SELECT 
    de.department_id as "Codigo de departamento", 
    de.department_name as "Nombre del departamento", 
    count(emp.employee_id) as "Cantidad de empleados", 
    SUM(emp.salary) as "Importe de la planilla"
FROM HR.departments DE
JOIN HR.employees EMP ON de.department_id = emp.department_id
GROUP BY de.department_id, de.department_name;