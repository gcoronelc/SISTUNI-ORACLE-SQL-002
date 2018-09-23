/*Ejercicio 1: Listar los dinstintos insumos programados por todas las dependencias para el año 2018*/

SELECT  DISTINCT cn.tipo_bien, (cn.grupo_bien ||cn.clase_bien ||cn.familia_bien ||cn.item_bien) Codigo_Item, nombre_item
FROM CuadroNecesidades.cuadro_necesidades cn INNER JOIN CuadroNecesidades.Catalogo cat
ON cn.tipo_bien=cat.tipo_bien and  cn.grupo_bien = cat.grupo_bien and  cn.clase_bien =cat.clase_bien
and cn.familia_bien =cat.familia_bien and cn.item_bien = cat.item_bien
WHERE ano_eje=2018
order by nombre_item;

/* Ejercicio 2: Listar los insumos programados para el 2018 cuya unidad de medida es diferente a la Unidad*/

SELECT distinct(cn.grupo_bien ||cn.clase_bien ||cn.familia_bien ||cn.item_bien) Codigo_Item,
nombre_item , um.nombre Unidad_Medida
FROM CuadroNecesidades.cuadro_necesidades cn INNER JOIN CuadroNecesidades.Unidad_Medida um
ON cn.unidad_medida = um.unidad_medida INNER JOIN CuadroNecesidades.Catalogo cat
ON cn.tipo_bien=cat.tipo_bien and  cn.grupo_bien = cat.grupo_bien and  cn.clase_bien =cat.clase_bien
and cn.familia_bien =cat.familia_bien and cn.item_bien = cat.item_bien
WHERE ano_eje=2018 and cn.unidad_medida <> 112;

/*Ejercicio 3:  Listar las necesidades programas año 2018 por cada Dependencia cuyo monto total asciende a 20,000 */

SELECT distinct ano_eje, cn.centro_costo, (cn.grupo_bien ||cn.clase_bien ||cn.familia_bien ||cn.item_bien) Codigo_Item,
nombre_item , (precio_unit * cant_total) Monto_Total
FROM CuadroNecesidades.cuadro_necesidades cn left outer JOIN CuadroNecesidades.Catalogo cat
ON cn.tipo_bien=cat.tipo_bien and  cn.grupo_bien = cat.grupo_bien and  cn.clase_bien =cat.clase_bien
and cn.familia_bien =cat.familia_bien and cn.item_bien = cat.item_bien
WHERE ano_eje=2018 and (precio_unit * cant_total) > 20000; 

/*Ejercicio 4:  Listar los insumos programados para las Dependencias 
"CONSULTA EXTERNA EN MEDICINA ONCOLOGICA" y "ANESTESIOLOGIA para el año 2019" */

SELECT ano_eje, cn.centro_costo, nombre_depend, cn.tipo_bien, (cn.grupo_bien ||cn.clase_bien ||cn.familia_bien ||cn.item_bien) Codigo_Item,
nombre_item, precio_unit, cant_total, (precio_unit*cant_total) Monto_Total
FROM CuadroNecesidades.cuadro_necesidades cn INNER JOIN CuadroNecesidades.CENTRO_COSTO cc
ON cn.centro_costo = cc.centro_costo INNER JOIN CuadroNecesidades.Catalogo cat
ON cn.tipo_bien=cat.tipo_bien and  cn.grupo_bien = cat.grupo_bien and  cn.clase_bien =cat.clase_bien
and cn.familia_bien =cat.familia_bien and cn.item_bien = cat.item_bien
WHERE ano_eje=2018 and cn.CENTRO_COSTO IN ('1.9.10.13', '1.8.10')
ORDER BY cc.nombre_depend;

/*Ejercicio 5:  Listar  las dependencias que cuentan con programacion de necesidades pero no se
encuentran registrados en la tabla de Centros de Costo */

SELECT distinct cn.centro_costo, nombre_depend
FROM CuadroNecesidades.cuadro_necesidades cn 
LEFT OUTER JOIN CuadroNecesidades.CENTRO_COSTO cc ON cn.centro_costo = cc.centro_costo 
WHERE cc.nombre_depend IS NULL
ORDER BY cc.nombre_depend;

/*Ejercicio 6:  En la tabla Centro de Costos insertar las dependencias  que cuentan con programacion de necesidades pero no se
encuentran registrados en la tabla de Centros de Costo */

INSERT INTO CuadroNecesidades.CENTRO_COSTO (centro_costo, nombre_depend, empleado, nro_personal)
VALUES ('01.12.05', 'PATRIMONIO', '00099',2);

INSERT INTO CuadroNecesidades.CENTRO_COSTO (centro_costo, nombre_depend, empleado, nro_personal)
VALUES ('01.06.03', 'ADMISION', '00295',12);

INSERT INTO CuadroNecesidades.CENTRO_COSTO (centro_costo, nombre_depend, empleado, nro_personal)
VALUES ('1.7.3.2', 'RECURSOS HUMANOS', '00102',10);

/*Ejercicio 7:  Actualizar fecha de ingreso '01/09/2018' a todos aquellos empleados que no cuentan
con fecha de ingreso*/
UPDATE CuadroNecesidades.empleado
set fecha_ingreso= to_date ( '01/09/2018', 'DD/MM/YYYY')
where fecha_ingreso is null;

/*Ejercicio 8:  Listar aquellos empleados que ingresaron a laborar entre el 01/09/2010 y 01/09/2011 */
SELECT  *
FROM  CuadroNecesidades.empleado
WHERE fecha_ingreso BETWEEN '01/09/2010' and '01/09/2011'
ORDER BY fecha_ingreso desc;

/* Ejercicio 9: Listar todos los empleados considerando que cuando no tienen grado registrado mostrar "SIN GRADO" */

SELECT empleado, estado, apellido_paterno, apellido_paterno, nombres, fecha_ingreso, estado_civil, 
sexo_empleado, NVL(grado_inst, 'SIN GRADO')
FROM  CuadroNecesidades.empleado;

/* Ejercicio 10: Listar los empleados que ingresaron a laborar en el año 2010*/
SELECT *
FROM  CuadroNecesidades.empleado
WHERE EXTRACT ( month from fecha_ingreso)=10;

/* Ejercicio 11: Mostrar el último mes de la última fecha de ingreso a laborar*/

WITH 
v1 as ( SELECT MAX ( fecha_ingreso) fecha from CuadroNecesidades.empleado)

SELECT *  
FROM CuadroNecesidades.empleado emp , v1
WHERE extract(year from emp.fecha_ingreso) = extract ( year from v1.fecha) AND
extract (month from emp.fecha_ingreso)= extract (month from v1.fecha);

/* Ejercicio 12: Listar la cantidad de insumos programados por dependencia durante todos los años  */

SELECT cn.ano_eje, cn.centro_costo, cc.nombre_depend, COUNT (*)  
FROM CUADRONECESIDADES.cuadro_necesidades cn LEFT OUTER JOIN 
CuadroNecesidades.CENTRO_COSTO cc ON cn.centro_costo = cc.centro_costo 
GROUP BY cn.ano_eje, cn.centro_costo, cc.nombre_depend
ORDER BY 1,2;

/* Ejercicio 13: Listar el monto total programado por cada dependencia para el año 2018  */

SELECT  cn.ano_eje, cn.centro_costo, cc.nombre_depend, SUM (precio_unit * cant_total) Monto_Total  
FROM CUADRONECESIDADES.cuadro_necesidades cn LEFT OUTER JOIN 
CuadroNecesidades.CENTRO_COSTO cc ON cn.centro_costo = cc.centro_costo 
GROUP BY cn.ano_eje, cn.centro_costo, cc.nombre_depend;


/* Ejercicio 14: Cuantos empleados hay por cada Dependencia */

select cc.centro_costo, cc.nombre_depend , sum(cc.Nro_personal) Empleados
from CuadroNecesidades.CENTRO_COSTO cc
where centro_costo is not null
group by cc.centro_costo, cc.nombre_depend
having count (*)=1;


--Ejercicio 15 LISTADO DE CUANTOS TIPOS DE UNIDAD DE MEDIDA TIENE EL CATÁLOGO :

SELECT B.NOMBRE, COUNT(*) TOTAL 
FROM cuadronecesidades.CATALOGO A INNER JOIN cuadronecesidades.UNIDAD_MEDIDA B ON A.UNIDAD_MEDIDA = B.UNIDAD_MEDIDA GROUP BY A.UNIDAD_MEDIDA, B.NOMBRE ORDER BY 2 DESC;


-- Ejercicio 16 : CUANTOS TIPOS DE UNIDAD DE MEDIDA TIENE EL CATÁLOGO CON TIPO DE BIEN 'B', MOSTRANDO LOS QUE TIENEN MÁS DE 5 ELEMENTOS, 
--ORDENADO POR LA SUMA DESCENDENTEMENTE:

SELECT UNIDAD_MEDIDA, COUNT(*) TOTAL 
FROM cuadronecesidades.CATALOGO WHERE TIPO_BIEN = 'B' GROUP BY UNIDAD_MEDIDA HAVING COUNT(*) > 5 ORDER BY 2 DESC;


-- Ejercicio 17: SUMA TOTAL DE LOS MONTOS POR CENTRO DE COSTO, MOSTRÁNDOSE LOS QUE TIENEN LA SUMA MAYOR QUE 5000, MOSTRÁNDOSE EN ORDEN DE MAYOR A MENOR :

SELECT CENTRO_COSTO, SUM(precio_unit * cant_total) SUMA 
FROM cuadronecesidades.CUADRO_NECESIDADES 
GROUP BY CENTRO_COSTO 
HAVING SUM(precio_unit * cant_total) > 5000 
ORDER BY 2 DESC;


-- Ejercicio 18: SUMA DE LA CANTIDADES TOTALES POR TIPOS DE BIEN EN EL CUADRO DE NECESIDADES, MOSTRÁNDOSE LOS QUE TIENEN MENOS DE 10, ORDENANDOS ASCENDENTEMENTE :

SELECT ITEM_BIEN, SUM(CANT_TOTAL) CANTIDAD 
FROM cuadronecesidades.CUADRO_NECESIDADES 
GROUP BY ITEM_BIEN 
HAVING SUM(CANT_TOTAL) < 10 
ORDER BY CANTIDAD ASC;


-- Ejercicio 19: LISTADO DEL CUADRO DE NECESIDADES DETALLANDO LOS NOMBRES DEL CENTRO DE COSTO Y EMPLEADOS, ORDENANDO POR PRECIO UNITARIO DESCENDENTEMENTE :

SELECT A.ANO_EJE, A.ITEM_BIEN, precio_unit , cant_total , B.NOMBRE_DEPEND NOMBRE, C.APELLIDO_PATERNO || ' ' || C.APELLIDO_MATERNO || ' ' || C.NOMBRES ENCARGADO 
FROM cuadronecesidades.CUADRO_NECESIDADES A LEFT JOIN cuadronecesidades.CENTRO_COSTO B ON A.CENTRO_COSTO = B.CENTRO_COSTO
LEFT JOIN cuadronecesidades.EMPLEADO C ON B.EMPLEADO = C.EMPLEADO 
ORDER BY PRECIO_UNIT DESC;

-- EJERCICIO 20: LISTADO DE CADA EMPLEADO MOSTRANDO CUANTOS EMPLEADOS TIENEN SU MISMO ESTADO CIVIL QUE ÉL :

WITH EMPLE_TEMP AS (
SELECT ESTADO_CIVIL, COUNT(*) CONTADOR
FROM CUADRONECESIDADES.EMPLEADO
GROUP BY ESTADO_CIVIL )
SELECT A.APELLIDO_PATERNO APPATERNO, ET.CONTADOR CONTADOR_MISMO_ESTADO_CIVIL, DECODE(ET.ESTADO_CIVIL,'C','CASADO(A)','SOLTERO(A)') ESTADO_CIVIL_GRUPO
FROM CUADRONECESIDADES.EMPLEADO A 
JOIN EMPLE_TEMP ET ON A.ESTADO_CIVIL = ET.ESTADO_CIVIL;

