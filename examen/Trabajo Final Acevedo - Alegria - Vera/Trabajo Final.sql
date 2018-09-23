/* TRABAJO FINAL DE INTRODUCION A ORACLE
INTEGRANTES : 
NELLY ISABEL VERA VASQUEZ
JAIME EDWIN ALEGRIA OLAZA
JUAN RICARDO ACEVEDO GUERRA
*/


/* 1.- Listar todos los productos cuyo numero de existencias es mayor a 20 unidades ordenados por la descripcion
*/
SELECT
    productoid producto, descripcion, existencia
FROM productos 
where existencia >20
order by 2;

/* 2.- Lista los campos nombres y fecha de nacimiento cuyo apellido inicie con C y la extencion sea mayor qoe 230
*/
SELECT
    nombre||' '||apellido as Nombres , fecha_nac
FROM empleados
WHERE apellido like 'C%' and extension >230;

/* 3.- Lista los campos codigo, descripcion y calculo del monto total por producto cuyas existencias 
se encuentren entre los valores de 20, 100, 300
*/
SELECT
   productoid Codigo, descripcion, (preciounit*existencia) total
FROM productos
WHERE existencia in (20,100,300);

/* 4.- Lista los empleados con los campos nombres, fecha de nacimiento , reporta 
mientras el campo reporta no sea nulo y sea mayor a 2
*/
SELECT
   nombre||' '||apellido as Nombres , fecha_nac,reporta_a
FROM empleados
where reporta_a  > 2
order by nombre;
--------------------------------------------------------------------------------------------------
--5. Atualizar el celular de los cliente que poseen valores null
update clientes
set celular='946841636'
where celular is null;

--6. Mostrar a cero los valores nulos de la cantidad de productos 
select descripcion,nvl(existencia,0) from productos

/* 7.- lista a los empleados para las columnas nombres fecha de nacimiento el estado de reporta_a
, ordenados por la columna reporta_a colocando a los valores nulos al final de la columna
*/
SELECT TRIM(nombre)||' '||TRIM(apellido) as Nombres, fecha_nac, reporta_a reporta
FROM empleados
order by reporta_a nulls last;

/* 8.- lista a los empleados para las columnas nombres fecha de nacimiento, origen, final
, ordenados por la columna reporta_a colocando a los valores nulos al inicio de la columna
la coluna origen esta ordenado colocando a los nulos al inicio, en la columna final el valor 
nulo se convierte e 10 y se multiplica x 2
*/
SELECT TRIM(nombre)||' '||TRIM(apellido) as Nombres, fecha_nac,reporta_a origen, (COALESCE(reporta_a, 10)*2) Final
FROM empleados
order by reporta_a nulls first;

----------------------------------------------------------------------------------------------
/* 9.- Lista los empleados con los campos nombres, mes de nacimiento , 
mientras el año sea igual al año 77 ordenado por la fecha
*/
SELECT
    empleadoid, nombre||' '||apellido Nombres, TO_CHAR(fecha_nac,'month') Mes, fecha_nac
FROM empleados
where  TO_CHAR(fecha_nac, 'yy') = '77'
order by 2;

/* 10.- Lista los empleados con los campos nombres, mes de nacimiento , 
mientras el dia de nacimiento sea 15, 17, 21 y ordenado por la fecha 
*/
SELECT
    empleadoid, nombre||' '||apellido Nombres, TO_CHAR(fecha_nac,'dd') ||' '|| 
    TO_CHAR(fecha_nac,'month')||'del '|| TO_CHAR(fecha_nac,'yy') "Fecha de Nacimiento"
FROM empleados
where  TO_CHAR(fecha_nac, 'dd') IN ('15', '17', '21')
order by 2;

/* 11.- Lista los empleados mientras el dia de nacimiento sea mayor a 10 y que este entre los meses de 1, 6,11
y campo reporta_a no sea nulo y este ordenado por apellido
*/
SELECT
    *
FROM empleados
WHERE EXTRACT (DAY FROM fecha_nac) >= 10 AND EXTRACT (MONTH FROM fecha_nac) IN ( 1, 6, 11) AND reporta_a IS NOT NULL
ORDER BY APELLIDO
------------------------------------------------------------------------------------------------------
--12. Mostrar la cantidad de productos por categoria
select c.nombrecat,count(p.productoid)
from productos p join categorias c
on p.categoriaid=c.categoriaid
group by c.nombrecat;

--13. Mostrar los descuentos que ha realizado cada empleado 
select e.nombre,count(descuento)
from empleados e join ordenes o
on e.empleadoid=o.empleadoid
group by e.nombre;

-14.- Mostrar la cantidad de productos vendidos y que sean menores a 3
select p.productoid, p.descripcion,count(dt.cantidad)
from productos p join detalle_ordenes dt
on p.productoid=dt.productoid
group by p.descripcion,p.productoid
having count(dt.cantidad) < 3;

---------------------------------------------------------------------------------------------------
/*15.- Mostrar los productos que vende cada cliente */
select  c.nombrecia,p.descripcion,p.
from clientes c join ordenes o
on c.clienteid=o.clienteid join detalle_ordenes dt
on o.ordenid=dt.ordenid join productos p
on dt.productoid=p.productoid 
order by 1;

/*16.- Mostrar el rubro  que vence cada proveedor */
select distinct pv.nombreprov,c.nombrecat
from proveedores pv join productos pr
on pv.proveedorid=pr.proveedorid join categorias c
on pr.categoriaid=c.categoriaid;

/*17.-  Mostrar los empleados q trabajan con cada cliente*/
select DISTINCT c.nombrecia,e.nombre||e.apellido as "NOMBRE COMPLETO"
from empleados e join ordenes o
on e.empleadoid=o.empleadoid join clientes c
on o.clienteid=c.clienteid;
------------------------------------------------------------------------------------------
/*18.- Aumentar en un 1% al precio unitario de cada producto, donde la existencia sea menor a 100 */
update productos
set preciounit=(preciounit + preciounit*0.1)
where existencia < 100;

/*19.- Actualizar los datos del nuevo contacto, que reemplaza a MANUEL ANDRADE */

update proveedores
set contacto='RICARDO ODEVECA', 
    celuprov='946841636',
    fijoprov='5260288'
where contacto='MANUEL ANDRADE';

/*20.- Actualizar la cedula y el nombrecia del cliente cuyo nombre de contacto es LETICIA ORTEGA*/
update clientes
set  cedula_ruc='1891455778',
    nombrecia='SUPER DESCUENTO'
where nombrecontacto ='LETICIA ORTEGA';