/* Ejemplo: 
Se requiere saber quienes son los que tienen el menor salario por departamento 
*/
--convertir la consulta a tabla derivada
select em.*
from HR.employees em
join (select department_id, min(salary) salary
    from HR.employees
    where department_id is not null
    group by department_id) t
on em.department_id = t.department_id and 
em.salary=t.salary;