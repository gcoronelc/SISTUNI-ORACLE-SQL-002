select *
from HR.employees EM
JOIN (
select department_id, min (salary) salary
from HR.employees 
where department_id is not null group by department_id) sal
ON em.department_id = sal.department_id and em.salary= sal.salary