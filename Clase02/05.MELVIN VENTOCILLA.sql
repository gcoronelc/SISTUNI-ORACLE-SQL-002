--QuE departamaneto tiene la mayor cantidad de empleados
select department_id, COUNT(*) EMPLEADOS from HR.employees 
WHERE department_id IS NOT NULL 
group by department_id
HAVING COUNT(*)=(select MAX(COUNT(*)) EMPLEADOS from HR.employees WHERE department_id IS NOT NULL group by department_id);