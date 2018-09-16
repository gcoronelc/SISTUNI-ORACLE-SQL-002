/*
Ejercicio 1
Esquema HR
Se necesita un reporte con la planilla por departamento 
los datos a mostrar son:
codigo de departamento
nombre del departamento
cantidad de empleados
importe de la planilla
*/

select d.department_id, d.department_name,
count(e.department_id) as Empleados,
sum(NVL(e.salary*(1+e.commission_pct),e.salary)) as Planilla
from hr.departments d 
left join hr.employees e on (d.department_id = e.department_id)
group by d.department_id, d.department_name;


/*Ejercicio 2
Se necesita un reporte para la gerencia de educa
los datos a mostrar
codigo de curso
nombre del curso
ingresos planificados (cuanto se esperaba por curso)
cantidad de alumnos matriculados por curso
ingresos comprometidos (el monto por los matriculados)
ingresos reales
*/

select c.cur_id, c.cur_nombre, c.cur_matriculados,
(c.cur_vacantes*c.cur_precio) as Ing_Planificados,
NVL(sum(p.pag_importe),0) as Ing_Reales,
NVL(sum(m.mat_precio),0) as Ing_Comprometidos
from educa.curso c 
left join educa.matricula m on (c.cur_id = m.cur_id)
left join educa.pago p on (m.cur_id = p.cur_id)
group by c.cur_id, c.cur_nombre,c.cur_matriculados
,c.cur_vacantes,(c.cur_vacantes*c.cur_precio), c.cur_precio
order by c.cur_id;


/*
Ejercicio 3
Se necesita un reporte del resumen de los ahorros por moneda.
Los datos a mostrar son:
- Codigo de moneda
- Mombre de moneda
- Saldo
*/

select m.chr_monecodigo as Codigo_Moneda,
m.vch_monedescripcion as Nombre_Moneda,
sum(c.dec_cuensaldo) as Saldo
from eureka.moneda m
join eureka.cuenta c 
on (m.chr_monecodigo = c.chr_monecodigo)
group by m.chr_monecodigo, m.vch_monedescripcion;
