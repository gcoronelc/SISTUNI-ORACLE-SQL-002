select * from pago.categoria;
select * from pago.cliente;
select * from pago.detalle;
select * from pago.factura;
select * from pago.producto;


--1) Obtener el nombre, apellido e email de los clientes cuyo ID sea superior a
--1050. (operador logico)
select id_cliente, nombre, apellido, email
from pago.cliente
where id_cliente > 1050;

--2) Liste el stock de los productos cuyo precio varía entre 20 y 50 soles (operadores de
--comparación)
select nombre, stock
from pago.producto
where precio between 20 and 50;

--3) Listar a los clientes cuyo nombre inicie con “A”.
select id_cliente, nombre
from pago.cliente
where nombre like 'A%';

--4) Listara los clientes cuya tercera letra del nombre sea “R” y la segunda letra de su apellido
--sea “G”.
select id_cliente, nombre, apellido
from pago.cliente
where nombre like '__R%' and apellido like '_G%';

--5) Listar en una columna el nombre y apellido de los clientes con ID menores a 1022
select nombre || ' ' || apellido
from pago.cliente
where ID_cliente < 1022;

--6) Listar los nombres y apellidos de los clientes ordenados por su número de pago.
select fac.id_pago, cli.nombre, cli.apellido
from pago.cliente cli
join pago.factura fac on cli.id_cliente = fac.id_cliente
order by fac.id_pago;

--7) Listar el ID, nombre, precio y cantidad de productos
select de.id_producto, pro.nombre, pro.precio, de.cantidad
from pago.detalle de
join pago.producto pro on de.id_producto = pro.id_producto
order by de.id_producto;


--8) Listar el nombre de lso productos cuya categoría sea “Niño” (categoría 2)
select pro.nombre, cat.nombre, cat.descripcion
from pago.producto pro
left join pago.categoria cat on pro.id_categoria = cat.id_categoria
where cat.nombre = 'Niño';


--9) Listar los clientes que compraron entre los días 24/06/18 y 29/06/18
select cli.id_cliente, cli.nombre, cli.apellido, fac.fecha
from pago.cliente cli
left join pago.factura fac on cli.id_cliente = fac.id_cliente
where fac.fecha between '24/06/2018' and '29/06/2018';

--10) Determinar la cantidad de productos por categoría.
select cat.id_categoria, count(id_producto)
from pago.producto pro
left join pago.categoria cat on pro.id_categoria = cat.id_categoria
group by cat.id_categoria;

--11) Listar ID y categoría de los productos con un stock mayor a 40 unidades
select pro.id_producto, cat.nombre, cat.descripcion, pro.stock
from pago.producto pro
left join pago.categoria cat on pro.id_categoria = cat.id_categoria
where pro.stock > 40;

--12) eliminar de la tabla categoria el id 1000 

delete from pago.categoria where id_categoria= 1;
select * from pago.categoria;
--13) Insertar de la tabla categoria el id 1000 
INSERT INTO PAGO.CATEGORIA (ID_CATEGORIA, NOMBRE, DESCRIPCION) VALUES (1.0,'Bebé','Hecho de material no tóxico');
select * from pago.categoria;

-- 14) actualizar en la tabla categoria nombre y descripcion

update pago.categoria set nombre='juan', descripcion='nunca' where id_categoria =3
select * from pago.categoria;

-- 15) actualizar en la tabla categoria y devolver valores anteriores
update pago.categoria set nombre='Adulto', descripcion='Pasara momentos agradables' where id_categoria =3
select * from pago.categoria;

16) Determinar la cantidad de productos comprados por cliente
17) Mostrar la categoría y descripción de los productos con precio superior a 80 soles
18) Se requiere saber qué Id_productos tienen el menor precio por categoría. (tabla derivada)
19) Se desea saber el monto total de la venta esperada de cada producto. (precio*stock)
20) Listar en numero de facturas por cliente
21) Se necesita un reporte de categorías por cliente. Mostrar nombre, apellido, teléfono,
categoría y descripción de caategoria.
22) Mostrar todos los clientes con ID_factura inferior a 80600 (subconsulta)
23) Productos que tengan menor precio por categoría (subconsulta)
24) Extraer los ID_cliente de todos los clientes cuyo apellido terminen en “A” (subconsulta)
25) Qué productos tienen menor stock por categoría. (tabla derivada)
