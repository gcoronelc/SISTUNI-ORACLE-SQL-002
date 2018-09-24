/*1 Nombre y Edad de los empleados*/

Select nom_emp,edad from Farmacia.Empleado;

/*2 Numero de empleados que superan los 30 aos*/

Select count(*) from Farmacia.Empleado where edad>30;


/*3 Distrito con mas de 1 empleados*/

select cod_dis as distrito,
count(*) as empleado
from Farmacia.Empleado
group by cod_dis
having count(*)>max (1);
select * from farmacia.distrito 
select * from farmacia.empleado

/*4 Mostrar el los tipos de cargo de los empleados*/

Select Distinct cargo from Farmacia.Empleado



/*5 Desarrollar una sentencia SELECT que permita consultar los
empleados que su nombre finaliza con la letra "E".*/

select * from Farmacia.Empleado
where NOM_EMP LIKE '%E';

/*6 Nombre y edad de los empleados ordenados por nombre de forma descendente*/

Select nom_emp,edad 
from Farmacia.Empleado 
ORDER BY noM_EMP DESC;

/*7 Desarrollar una sentencia SELECT que permita consultar los
productos que su nombre finaliza con la letra "O".*/

select * from Farmacia.PRODUCTO
where NOM_PRO LIKE '%O';

/*8 Mostrar los datos del empleado "20140152"*/
 
Select *
from Farmacia.Empleado 
where cod_emp= '20140152';

/*9 Seleccionar una tabla mas  los nombres de columnas */

select nom_pro, cantidad from FARMACIA.DetalleOrdenPedido


/*10 Buscar en una tabla un nombre que comience son la letra r% para que terminen '%a'*/
select  nom_pro from  FARMACIA.DetalleOrdenPedido  WHERE nom_pro like '%a%'


/*11 Para ver cuantos archivos estan registrados */
SELECT COUNT(*) FROM FARMACIA.DetalleOrdenPedido

/*12 Empleados de nombre 'Jose'. */
SELECT *
FROM farmacia.empleado 
WHERE nom_emp LIKE 'APONTE VENGAS'; 

/*13 Código de cada distritos y nombre de cada empleado*/
SELECT d.cod_dis,d.nom_dis, e.nom_emp
FROM farmacia.empleado e, farmacia.distrito d
WHERE d.cod_dis = '065'


/*14 Mostrar de categoria y codigo de producto*/
select c.cod_cate as CODICO_DE_CATEGORIA, p.cod_pro  as CODIGO_PRODUCTO
from farmacia.Producto p, Farmacia.categoria c

/*15 Mostrar  el distrito en donde viven cada cliente */
select c.cod_cli,nom_dis
from farmacia.clientes c,farmacia.distrito d

--
/*16 Se necesita un reporte de planilla por producto
Los datos a mostrar son:  
- Codigo de producto
- Nombre del producto
- Precio de Venta
-Cantidad de Productos
*/

select 
p.cod_pro as "codigo de producto"
p.nom_pro as "nombre del producto"
p.pre_venta as "precio de venta"
count(pro.cod_pro)as "cantidad de productos"
group by p.cod_pro,p_nom_pro;
order by p.cod_pro,p_nom_pro;
select*from Farmacia.Producto;
/*17. cuantos clientes hay por distrito*/

select
cod_dis as distrito,
count(*) as Clientes
from Farmacia.Clientes
group by cod_dis;

/*18 cuantas orden de pedido ha realizado un cliente*/

select num_ordenPedido ,count(*) orden
from Farmacia.OrdenPedido
group by num_ordenPedido;

/*19 Cuantos empleados hay por distrito*/

select  cod_dis as distrito, count(*)as empleado
from Farmacia.Empleado
group by cod_dis;

/*20 Distritos de los proveedores*/
select d.nom_dis,  p.nom_prov
from farmacia.distrito d, farmacia.proveedor p
