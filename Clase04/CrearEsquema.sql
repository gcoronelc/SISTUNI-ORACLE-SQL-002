-- ====================================
-- 1.- Crear el usuario
-- ====================================

C:\> sqlplus system/oracle

o

SQL> connect system/oracle


SQL> create user appventas
  2  identified by admin;

  
-- =========================================
-- 2.- Asignar Privilegios
--     Se debe asignar recursos al usuario
-- =========================================

SQL> grant connect, resource to appventas;


-- =========================================
-- 3.- Iniciar Sesión
-- =========================================

SQL> connect appventas/admin


-- =========================================
-- 4.- Crear Tablas
-- =========================================

create table appventas.articulo(
  art_id number(8) not null,
  art_nombre varchar2(100) not null,
  art_precio number(10,2) not null,
  constraint pk_articulo primary key(art_id)
);

create table appventas.venta(
  ven_id number(8) not null,
  ven_fecha date not null,
  art_id number(8) not null,
  ven_cant number(5) not null,
  ven_precio number(10,2) not null,
  ven_importe number(12,2) not null,
  constraint pk_venta primary key(ven_id)
);

-- =========================================
-- 5.- Crear Restricciones
-- =========================================

alter table appventas.venta
add constraint fk_venta_articulo
foreign key ( art_id )b 
references appventas.articulo;

alter table appventas.articulo
add constraint ck_articulo_precio
check( art_precio > 0 );

insert into appventas.articulo
( art_id, art_nombre, art_precio )
values( 1, 'art. demo', -78 );

/*
SQL> insert into appventas.articulo
  2  ( art_id, art_nombre, art_precio )
  3  values( 1, 'art. demo', -78 );
insert into appventas.articulo
*
ERROR at line 1:
ORA-02290: check constraint (APPVENTAS.CK_ARTICULO_PRECIO) violated
*/

insert into appventas.articulo
( art_id, art_nombre, art_precio )
values( 1, 'art. demo', 78 );

alter table appventas.articulo
add constraint u_articulo_nombre
unique ( art_nombre );

insert into appventas.articulo
( art_id, art_nombre, art_precio )
values( 2, 'art. demo', 80 );

/*
SQL> insert into appventas.articulo
  2  ( art_id, art_nombre, art_precio )
  3  values( 2, 'art. demo', 80 );
insert into appventas.articulo
*
ERROR at line 1:
ORA-00001: unique constraint (APPVENTAS.U_ARTICULO_NOMBRE) violated
*/

alter table appventas.venta
add constraint ck_venta_record
check( ven_importe = ven_precio * ven_cant );

insert into appventas.venta
(VEN_ID,VEN_FECHA,ART_ID,VEN_CANT,VEN_PRECIO,VEN_IMPORTE)
values(1,sysdate,10,5,50,100);

/*
SQL> insert into appventas.venta
  2  (VEN_ID,VEN_FECHA,ART_ID,VEN_CANT,VEN_PRECIO,VEN_IMPORTE)
  3  values(1,sysdate,10,5,50,100);
insert into appventas.venta
*
ERROR at line 1:
ORA-02290: check constraint (APPVENTAS.CK_VENTA_RECORD) violated
*/

insert into appventas.venta
(VEN_ID,VEN_FECHA,ART_ID,VEN_CANT,VEN_PRECIO,VEN_IMPORTE)
values(1,sysdate,10,5,50,250);

/*
SQL> insert into appventas.venta
  2  (VEN_ID,VEN_FECHA,ART_ID,VEN_CANT,VEN_PRECIO,VEN_IMPORTE)
  3  values(1,sysdate,10,5,50,250);
insert into appventas.venta
*
ERROR at line 1:
ORA-02291: integrity constraint (APPVENTAS.FK_VENTA_ARTICULO) violated - parent key not found
*/

insert into appventas.venta
(VEN_ID,VEN_FECHA,ART_ID,VEN_CANT,VEN_PRECIO,VEN_IMPORTE)
values(1,sysdate,1,5,50,250);



-- ==========================================
-- VISTAS
-- ==========================================












