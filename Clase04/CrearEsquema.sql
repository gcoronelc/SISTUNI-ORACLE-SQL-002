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
foreign key ( art_id )
references appventas.articulo;




