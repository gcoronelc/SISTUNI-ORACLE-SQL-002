

DECLARE
	N INT;
	COMMAND VARCHAR2(200);
BEGIN
	COMMAND := 'DROP USER PAGO CASCADE';
	SELECT COUNT(*) INTO N
	FROM DBA_USERS
	WHERE USERNAME = 'PAGO';
	IF ( N = 1 ) THEN
		EXECUTE IMMEDIATE COMMAND;
	END IF;
END;
/

CREATE USER PAGO IDENTIFIED BY admin;

GRANT CONNECT, RESOURCE TO PAGO;
GRANT CREATE VIEW TO PAGO;


-- =============================================
-- CONECTARSE A ORACLE
-- =============================================

CONNECT PAGO/admin



-- ======================================================
-- TABLA CLIENTE
-- ======================================================

CREATE TABLE CLIENTE
( 
	id_cliente               INT  NOT NULL ,
	nombre           varchar2(100)  NOT NULL ,
	apellido        varchar2(100)  NOT NULL ,
	direccion        varchar2(100)  NOT NULL ,
	telefono         varchar2(20)  NULL ,
	email            varchar2(50)  NULL 	
);



-- ======================================================
-- TABLA FACTURA
-- ======================================================


CREATE TABLE FACTURA
( 
	id_factura               INT  NOT NULL ,
	id_cliente               INT  NOT NULL ,
	fecha            date  NOT NULL ,
	id_pago           INT  NOT NULL 
);


-- ======================================================
-- TABLA DETALLE
-- ======================================================

CREATE TABLE DETALLE
( 
	id_detalle               INT  NOT NULL ,
	id_factura               INT  NOT NULL ,
	id_producto               decimal(10,2)  NOT NULL ,
	cantidad               INT  NOT NULL 
);


-- ======================================================
-- TABLA CATEGORIA
-- ======================================================

CREATE TABLE CATEGORIA
( 
	id_categoria               INT  NOT NULL ,
	nombre               varchar2(100)  NOT NULL ,
	descripcion               varchar2(100)  NOT NULL
);


-- ======================================================
-- TABLA PAGO
-- ======================================================

CREATE TABLE PRODUCTO
( 
	id_producto               INT  NOT NULL ,
	nombre               varchar2(100)  NOT NULL ,
	precio      int          NOT NULL,
	stock   int,
	id_categoria int not null
);


-- ======================================================
-- RESTRICCIONES DE LA TABLA CLIENTE
-- ======================================================

ALTER TABLE CLIENTE
	ADD CONSTRAINT PK_CLIENTE 
	PRIMARY KEY (id_cliente);


ALTER TABLE CLIENTE
	ADD CONSTRAINT U_CLIENTE_EMAIL 
	UNIQUE (email);


ALTER TABLE CLIENTE
	ADD CONSTRAINT U_CLIENTE_NOMBRE 
	UNIQUE (nombre);








-- ======================================================
-- RESTRICCIONES DE LA TABLA FACTURA
-- ======================================================

ALTER TABLE FACTURA
	ADD CONSTRAINT PK_MATRICULA 
	PRIMARY KEY (id_factura);


ALTER TABLE FACTURA
	ADD CONSTRAINT FK_FACTURA_CLIENTE 
	FOREIGN KEY (id_cliente) 
	REFERENCES CLIENTE(id_cliente);


ALTER TABLE FACTURA
	ADD CONSTRAINT FK_FACTURA_PAGO 
	FOREIGN KEY (id_pago) 
	REFERENCES PAGO(id_pago);


ALTER TABLE FACTURA
	ADD CONSTRAINT  CHK_MATRICULA_PRECIO
	CHECK  ( MAT_PRECIO > 0.0 );


ALTER TABLE FACTURA
	ADD CONSTRAINT  CHK_MATRICULA_CUOTAS
	CHECK  ( MAT_CUOTAS > 0 );



-- ======================================================
-- Actualizar la columna matriculados en la tabla curso
-- ======================================================



-- ======================================================
-- RESTRICCIONES EN LA TABLA PAGO
-- ======================================================

-- Clave Primaria

ALTER TABLE PRODUCTO
	ADD CONSTRAINT PK_PRODUCTO 
	PRIMARY KEY (id_producto);
	
	ALTER TABLE PRODUCTO
	ADD CONSTRAINT FK_DETALLE_PRODUCTO
	FOREIGN KEY (id_categoria) 
	REFERENCES PRODUCTO(id_categoria);



	
-- ======================================================
-- RESTRICCIONES EN LA TABLA CATEGORIA
-- ======================================================

-- Clave Primaria

ALTER TABLE CATEGORIA
	ADD CONSTRAINT PK_CATEGORIA 
	PRIMARY KEY (id_categoria);

	
-- ======================================================
-- RESTRICCIONES EN LA TABLA DETALLE
-- ======================================================

-- Clave Primaria

ALTER TABLE DETALLE
	ADD CONSTRAINT PK_DETALLE 
	PRIMARY KEY (id_detalle,id_factura);


ALTER TABLE DETALLE
	ADD CONSTRAINT FK_DETALLE_FACTURA
	FOREIGN KEY (id_factura) 
	REFERENCES FACTURA(id_factura);

	
ALTER TABLE DETALLE
	ADD CONSTRAINT FK_DETALLE_PRODUCTO
	FOREIGN KEY (id_producto) 
	REFERENCES PRODUCTO(id_producto);


-- Cargar Datos


-- ======================================================
-- FIN
-- ======================================================



