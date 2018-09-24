CREATE TABLE CATEGORIA ( ide INT,
  nombre varchar(50) NOT NULL);
  
    
INSERT INTO CATEGORIA (ide, nombre) VALUES (1, 'Terror');
INSERT INTO CATEGORIA (ide, nombre) VALUES(2, 'Ciencia Ficcion');
INSERT INTO CATEGORIA (ide, nombre) VALUES(3, 'Drama');
INSERT INTO CATEGORIA (ide, nombre) VALUES(4, 'Accion');
INSERT INTO CATEGORIA (ide, nombre) VALUES(5, 'Documental');
INSERT INTO CATEGORIA (ide, nombre) VALUES(6, 'vida real');
INSERT INTO CATEGORIA (ide, nombre) VALUES(7, 'Comedia');
INSERT INTO CATEGORIA (ide, nombre) VALUES(8, 'infantil');
INSERT INTO CATEGORIA (ide, nombre) VALUES(9, 'Romance');
INSERT INTO CATEGORIA (ide, nombre) VALUES(10, 'Musical');
select *  from CATEGORIA;


=============================================================

CREATE TABLE CLASIFICACION ( id_cl INT NOT NULL,
  nombre varchar(50) NOT NULL);
  
  
INSERT INTO CLASIFICACION (id_cl, nombre) VALUES (1,'A');
INSERT INTO CLASIFICACION (id_cl, nombre) VALUES(2, 'B');
INSERT INTO CLASIFICACION (id_cl, nombre) VALUES(3, 'C');
INSERT INTO CLASIFICACION (id_cl, nombre) VALUES(4, 'D');
INSERT INTO CLASIFICACION (id_cl, nombre) VALUES(5, 'E');


select *  from CLASIFICACION;
================================================================

CREATE TABLE ENTRADA ( id_ENT INT NOT NULL,
  user_id INT NOT NULL,
  num_asiento int NOT NULL,
  fecha DATE  NOT NULL,
  sala_funcion_id int NOT NULL
  );
  
  describe ENTRADA;

  
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento,fecha, sala_funcion_id) VALUES(1, 2, 1,'03/06/2014', 1);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES (2, 2, 2, '03/06/2014', 1);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES(3, 2, 3, '03/06/2014', 1);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES(4, 2, 4, '03/06/2014',1);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES(5, 4, 1, '03/06/2014', 2);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES(6, 4, 2, '03/06/2014', 2);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES (7, 2, 5, '04/06/2014', 1);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES(8, 2, 6, '04/06/2014', 1);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES(9, 2, 7,'04/06/2014', 1);
INSERT INTO ENTRADA (id_ENT, user_id, num_asiento, fecha, sala_funcion_id) VALUES(10, 2, 8, '04/06/2014', 1);
select *  from ENTRADA;

===================================================================
CREATE TABLE TIPO 
( id_TP INT NOT NULL,
  nombre VARCHAR2(20) NOT NULL
  );

  
INSERT INTO TIPO (id_TP, nombre) VALUES(1, 'VIP');
INSERT INTO TIPO (id_TP, nombre) VALUES(2, '3D');
INSERT INTO TIPO (id_TP, nombre) VALUES(3, 'DIGITAL');

select * from TIPO;
=================================================================

CREATE TABLE PRECIOENTRADA 
( id_PR CHAR(2) NOT NULL,
  id_TP INT NOT NULL,
  nombre VARCHAR2(20) NOT NULL,
  valor NUMBER(8,2) NOT NULL
  );
  
  
INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('01',1,'ADULTO', 35.00);
INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('02',2,'ADULTO', 30.00);
INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('03',3,'ADULTO', 15.00);

INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('04',1,'NIÑO', 20.00);
INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('05',2,'NIÑO', 15.00);
INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('06',3,'NIÑO', 10.00);

INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('07',1,'ADULTO MAYOR', 20.00);
INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('08',2,'ADULTO MAYOR', 15.00);
INSERT INTO PRECIOENTRADA  (id_PR,id_TP, nombre, valor) VALUES('09',3,'ADULTO MAYOR', 10.00);
select * from PRECIOENTRADA;
==========================================================================


CREATE TABLE REGISTROVENTA 
( ID_ENT INT NOT NULL,
  USER_ID INT NOT NULL,
  NUM_ASIENTO INT NOT NULL,
  FECHA DATE NOT NULL,
  SALA_FUNCION_ID INT NOT NULL,
  ID_CL INT NOT NULL,
  IDE INT NOT NULL,
  ID_PR CHAR(2) NOT NULL,
  CANT_ENT NUMBER (2)NOT NULL,
  PRECO_ENT NUMBER (8,2)NOT NULL)
;

  
INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES ( 2, 2, 2, '03/06/2014', 1,	2, 1, '01', 1, 35);
INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (1	,2,1,'03/06/2014',	1	,2	,1	,'04'	,1	,20);
INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (4	,2,	4,	'03/06/2014'	,1	,2	,2	,'04',	1,	20);

INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (5	,4,	1,	'03/06/2014',	2,	1,	7,	'03',	1,	15);

INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (6	,4	,2	,'03/06/2014'	,2	,1	,7	,'06'	,1	,10);

INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (7, 2, 5,'04/06/2014'	,1	,4	,2	,'02'	,1	,30);

INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (8, 2,	6,'04/06/2014',	1,	4,	2,	'02',	1,	30);

INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (9,	2,	7,	'04/06/2014',	1,	4,	2,	'05',	1,	15);
INSERT INTO REGISTROVENTA  (ID_ENT, USER_ID, NUM_ASIENTO, FECHA, SALA_FUNCION_ID, ID_CL, IDE, ID_PR, CANT_ENT, PRECO_ENT) VALUES (10,	2,	8,	'04/06/2014',	1,	4,	2,	'05',	1,	15);





select * from REGISTROVENTA;

=======================================================
---1.visualiza el valor total de compra del ussuario 2
SELECT SUM (PRECO_ENT)  FROM REGISTROVENTA WHERE USER_ID = 2;

---2.1.visualiza cuantas entrada compro el usaurio 2

SELECT SUM (CANT_ENT)  FROM REGISTROVENTA WHERE USER_ID = 2;

--3.VISUALIZAR CUANTAS ENTRADAS TUVO LA SALA 2

SELECT SUM (CANT_ENT)  FROM REGISTROVENTA WHERE SALA_FUNCION_ID = 2;

--4.VISUALIZAR CUANTAS ENTRADAS TUVO LA SALA 1

SELECT SUM (CANT_ENT)  FROM REGISTROVENTA WHERE SALA_FUNCION_ID = 1;
--5.VISUALIZAR VALOR DE ENTRADAS TUVO LA SALA 2

SELECT SUM (PRECO_ENT)  FROM REGISTROVENTA WHERE SALA_FUNCION_ID = 2;

--6.VISUALIZAR VALOR DE  ENTRADAS TUVO LA SALA 1

SELECT SUM (PRECO_ENT)  FROM REGISTROVENTA WHERE SALA_FUNCION_ID = 1;

--7.CONTAR CUANTAS ENTRADAS SE ADQUIRIO PARA CIENCIA FISION

SELECT COUNT(*) IDE  FROM REGISTROVENTA WHERE IDE = 2;

--8.CONTAR CUANTAS ENTRADAS SE VENDIO EN LA FECHA '03/06/14'

SELECT COUNT(*) FECHA  FROM REGISTROVENTA WHERE FECHA= '03/06/14';

--9.CONTAR CUANTO VALOR  SE VENDIO EN LA FECHA '04/06/14'

SELECT SUM(PRECO_ENT) AS PRECIO  FROM REGISTROVENTA WHERE FECHA= '04/06/14';

--10.CONTAR CUANTO VALOR SE VENDIO EN LA FECHA '04/06/14 Y '04/06/14'

SELECT SUM(PRECO_ENT) AS VENTA  FROM REGISTROVENTA WHERE FECHA BETWEEN '03/06/14' AND '04/06/14';-- AND  FECHA='03/06/14' ;

--11.mostrar las ventas de la fecha x ordenarlo pro usuario 
SELECT registroventa.user_id,registroventa.fecha ,registroventa.preco_ent FROM REGISTROVENTA WHERE FECHA = '03/06/14'
ORDER BY user_id;

--12.mostra cuantos clientes ingfresaron 
select count(distinct USER_ID) from REGISTROVENTA;

--13.mostra cantidad de entardas por usaurio
SELECT registroventa.user_id as USUARIO,
COUNT(*) AS BOLETOS FROM REGISTROVENTA
group by registroventa.user_id;

--14.mostra cantidad de entradas por categiria

SELECT registroventa.ide as CATEGORIA,
COUNT(*) AS BOLETOS FROM REGISTROVENTA 
group by registroventa.ide;

--15.J1-muestra el detalle de entrada por categoria 
select registroventa.ide , categoria.nombre ,registroventa.CANT_ENT ,registroventa.preco_ent
 from registroventa, categoria
 where registroventa.ide = categoria.ide
 order by categoria.nombre;

--16.J2-muestra el detalle de entrada por ide ordenado por nombre categoria 
select registroventa.ide ,registroventa.fecha, registroventa.sala_funcion_id , categoria.nombre ,registroventa.CANT_ENT ,registroventa.preco_ent
 from registroventa, categoria
 where registroventa.ide = categoria.ide
 order by categoria.nombre;


--17.j-muestra el detalle de entrada por clase ordenado 
select registroventa.id_cl , clasificacion.nombre,registroventa.CANT_ENT ,registroventa.preco_ent
 from registroventa, clasificacion
 where registroventa.id_cl = clasificacion.id_cl
 order by nombre;
