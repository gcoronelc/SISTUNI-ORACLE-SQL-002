/**
 *
 * DBMS           :  ORACLE
 * Esquema        :  EXAMEN
 * Descripción    :  Modelo de Base de Datos de un sistema de examenes para una empresa.
 * Script         :  Crea el esquema y sus respectivas tablas
 * Creao por      :  Melvin Ventocilla Tena
 * Email          :  mlvn64@gmail.com
 * Fecha          :  22-NOV-2018
 * 
**/

SET TERMOUT OFF
SET ECHO OFF

-- =============================================
-- CRACIÓN DEL USUARIO
-- =============================================

DECLARE
	N INT;
	COMMAND VARCHAR2(200);
BEGIN
	COMMAND := 'DROP USER EXAMEN CASCADE';
	SELECT COUNT(*) INTO N
	FROM DBA_USERS
	WHERE USERNAME = 'EXAMEN';
	IF ( N = 1 ) THEN
		EXECUTE IMMEDIATE COMMAND;
	END IF;
END;
/

CREATE USER examen IDENTIFIED BY admin;

GRANT CONNECT, RESOURCE TO examen;
GRANT CREATE VIEW TO examen;


-- =============================================
-- CONECTARSE A ORACLE
-- =============================================

CONNECT examen/admin


-- =============================================
-- CREACION DE TABLAS DE GERENCIA
-- =============================================

CREATE TABLE GERENCIA
(
	idgerencia           INTEGER NOT NULL ,
	gerencia             VARCHAR2(100) NOT NULL ,
CONSTRAINT  XPKGERENCIA PRIMARY KEY (idgerencia)
);

CREATE SEQUENCE SQ_GERENCIA
INCREMENT BY 1
START WITH 1;


INSERT INTO GERENCIA(idgerencia,gerencia) 
VALUES(1,'GERENCIA DE PROYECTOS');

INSERT INTO GERENCIA(idgerencia,gerencia) 
VALUES(2,'GERENCIA DE FINANZAS');

INSERT INTO GERENCIA(idgerencia,gerencia) 
VALUES(3,'GERENCIA DE ADMINISTRACION');

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE EMPRESA
-- =============================================

CREATE TABLE EMPRESA
(
	idempresa           INTEGER NOT NULL ,
	empresa             VARCHAR2(100) NOT NULL ,
CONSTRAINT  XPKEMPRESA PRIMARY KEY (idempresa)
);

CREATE SEQUENCE SQ_EMPRESA
INCREMENT BY 1
START WITH 1;


INSERT INTO EMPRESA(idempresa,empresa) 
VALUES(1,'FERRIMOL SAC');

COMMIT;

-- =============================================
-- CREACION DE TABLAS DE GENERO
-- =============================================

CREATE TABLE GENERO
(
	idgenero           INTEGER NOT NULL ,
	genero             VARCHAR2(50) NOT NULL ,
CONSTRAINT  XPKGENERO PRIMARY KEY (idgenero)
);

INSERT INTO GENERO(idgenero,genero) 
VALUES(1,'MASCULINO');

INSERT INTO GENERO(idgenero,genero) 
VALUES(2,'FEMENINO');

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE EXAMEN
-- =============================================

CREATE TABLE EXAMEN
(
	idexamen           INTEGER NOT NULL ,
	examen             VARCHAR2(100) NOT NULL ,
	puntajexpregunta   decimal(4,2) NOT NULL ,
CONSTRAINT  XPKEXAMEN PRIMARY KEY (idexamen)
);

CREATE SEQUENCE SQ_EXAMEN
INCREMENT BY 1
START WITH 1;


INSERT INTO EXAMEN(idexamen,examen,puntajexpregunta) 
VALUES(1,'SEGURIDAD EN EL TRABAJO',4);

INSERT INTO EXAMEN(idexamen,examen,puntajexpregunta) 
VALUES(2,'EMPRESA',4);

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE DIFICULTAD
-- =============================================

CREATE TABLE DIFICULTAD
(
	iddificultad           INTEGER NOT NULL ,
	dificultad             VARCHAR2(50) NOT NULL ,
CONSTRAINT  XPKDIFICULTAD PRIMARY KEY (iddificultad)
);

CREATE SEQUENCE SQ_DIFICULTAD
INCREMENT BY 1
START WITH 1;


INSERT INTO DIFICULTAD(iddificultad,dificultad) 
VALUES(1,'ALTA');

INSERT INTO DIFICULTAD(iddificultad,dificultad) 
VALUES(2,'MEDIA');

INSERT INTO DIFICULTAD(iddificultad,dificultad) 
VALUES(3,'BAJA');

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE AREA
-- =============================================

CREATE TABLE AREA
(
	idarea           INTEGER NOT NULL ,
	idgerencia       INTEGER NOT NULL ,
	area             VARCHAR2(100) NOT NULL ,
CONSTRAINT  XPKAREA PRIMARY KEY (idarea),
CONSTRAINT FK_AREA_GERENCIA
    FOREIGN KEY (idgerencia) REFERENCES GERENCIA (idgerencia)
);

CREATE SEQUENCE SQ_AREA
INCREMENT BY 1
START WITH 1;


INSERT INTO AREA(idarea,idgerencia,area) 
VALUES(1,1,'GESTION DE SEGURIDAD');

INSERT INTO AREA(idarea,idgerencia,area) 
VALUES(2,1,'GESTION DE PROYECTOS');

INSERT INTO AREA(idarea,idgerencia,area) 
VALUES(3,2,'PLANEACION FINANCIERA');

INSERT INTO AREA(idarea,idgerencia,area) 
VALUES(4,2,'CONTABILIDAD E IMPUESTOS');

INSERT INTO AREA(idarea,idgerencia,area) 
VALUES(5,2,'RECURSO FINANCIEROS');

INSERT INTO AREA(idarea,idgerencia,area) 
VALUES(6,3,'LOGISTICA');

INSERT INTO AREA(idarea,idgerencia,area) 
VALUES(7,3,'GESTION DEL TALENTO HUMANO');

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE PREGUNTAS
-- =============================================

CREATE TABLE PREGUNTAS
(
	idpregunta           INTEGER NOT NULL ,
	idexamen       		 INTEGER NOT NULL ,
	iddificultad         INTEGER NOT NULL ,
	pregunta             VARCHAR2(900) NOT NULL ,
CONSTRAINT  XPKPREGUNTAS PRIMARY KEY (idpregunta),
CONSTRAINT FK_PREGUNTAS_EXAMEN
    FOREIGN KEY (idexamen) REFERENCES EXAMEN (idexamen),
CONSTRAINT FK_PREGUNTAS_DIFICULTAD
    FOREIGN KEY (iddificultad) REFERENCES DIFICULTAD (iddificultad)
);

CREATE SEQUENCE SQ_PREGUNTAS
INCREMENT BY 1
START WITH 1;


INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(1,1,1,'PREGUNTA 1');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(2,1,2,'PREGUNTA 2');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(3,1,3,'PREGUNTA 3');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(4,1,1,'PREGUNTA 4');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(5,1,1,'PREGUNTA 5');


INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(6,2,1,'PREGUNTA 1');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(7,2,2,'PREGUNTA 2');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(8,2,3,'PREGUNTA 3');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(9,2,1,'PREGUNTA 4');

INSERT INTO PREGUNTAS(idpregunta,idexamen,iddificultad,pregunta) 
VALUES(10,2,1,'PREGUNTA 5');

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE EMPLEADO
-- =============================================

CREATE TABLE EMPLEADO
(
	idempleado           INTEGER NOT NULL ,
	idarea       		 INTEGER NOT NULL ,
	idgenero             INTEGER NOT NULL ,
	idempresa            INTEGER NOT NULL ,
	nombre               VARCHAR2(150) NOT NULL ,
	apellidos            VARCHAR2(400) NOT NULL ,
	fechaNacimiento      DATE NOT NULL ,
CONSTRAINT  XPKEMPLEADO PRIMARY KEY (idempleado),
CONSTRAINT FK_EMPLEADO_AREA
    FOREIGN KEY (idarea) REFERENCES AREA (idarea),
CONSTRAINT FK_EMPLEADO_GENERO
    FOREIGN KEY (idgenero) REFERENCES GENERO (idgenero),
	CONSTRAINT FK_EMPLEADO_EMPRESA
    FOREIGN KEY (idempresa) REFERENCES EMPRESA (idempresa)
);

CREATE SEQUENCE SQ_EMPLEADO
INCREMENT BY 1
START WITH 1;


INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(1,1,1,1,'ARTURO','MIRANDA URBIZAGASTEGUI',TO_DATE('01-03-1992','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(2,1,1,1,'GUILLERMO','SOSA COCA',TO_DATE('01-03-1993','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(3,1,2,1,'LADY','MIRANDA RODRIGUEZ',TO_DATE('01-03-1980','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(4,3,1,1,'FELIPE','VENTOCILLA SOSA',TO_DATE('01-03-1984','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(5,3,2,1,'MARIA','ALVARADO SILVA',TO_DATE('01-03-1986','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(6,4,1,1,'JOSE','CORNELIO TENA',TO_DATE('01-03-1982','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(7,4,1,1,'MANUEL','CAMPOS ROJAS',TO_DATE('01-03-1970','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(8,6,1,1,'ANGEL','SALAS PACORA',TO_DATE('01-03-1990','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(9,6,1,1,'MARCOS','MARCELO CHAVEZ',TO_DATE('01-03-1993','DD-MM-YYYY'));

INSERT INTO EMPLEADO(idempleado,idarea,idgenero,idempresa,nombre,apellidos,fechaNacimiento) 
VALUES(10,7,1,1,'ALONSO','VENTOCILLA ALVARADO',TO_DATE('01-03-1992','DD-MM-YYYY'));

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE ALTERNATIVA
-- =============================================

CREATE TABLE ALTERNATIVA
(
	idalternativa           INTEGER NOT NULL ,
	idpregunta       		INTEGER NOT NULL ,
	alternativa             VARCHAR2(150) NOT NULL ,
	rptacorrecta            char(1) NOT NULL ,
CONSTRAINT  XPKALTERNATIVA PRIMARY KEY (idalternativa),
CONSTRAINT FK_ALTERNATIVA_PREGUNTA
    FOREIGN KEY (idpregunta) REFERENCES PREGUNTAS (idpregunta)
);

CREATE SEQUENCE SQ_ALTERNATIVA
INCREMENT BY 1
START WITH 1;


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(1,1,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(2,1,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(3,1,'ALTERNATIVA 3','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(4,1,'ALTERNATIVA 4','Y');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(5,2,'ALTERNATIVA 1','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(6,2,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(7,2,'ALTERNATIVA 3','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(8,2,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(9,3,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(10,3,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(11,3,'ALTERNATIVA 3','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(12,3,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(13,4,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(14,4,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(15,4,'ALTERNATIVA 3','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(16,4,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(17,5,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(18,5,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(19,5,'ALTERNATIVA 3','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(20,5,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(21,6,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(22,6,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(23,6,'ALTERNATIVA 3','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(24,6,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(25,7,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(26,7,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(27,7,'ALTERNATIVA 3','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(28,7,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(29,8,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(30,8,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(31,8,'ALTERNATIVA 3','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(32,8,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(33,9,'ALTERNATIVA 1','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(34,9,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(35,9,'ALTERNATIVA 3','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(36,9,'ALTERNATIVA 4','N');


INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(37,10,'ALTERNATIVA 1','Y');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(38,10,'ALTERNATIVA 2','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(39,10,'ALTERNATIVA 3','N');

INSERT INTO ALTERNATIVA(idalternativa,idpregunta,alternativa,rptacorrecta) 
VALUES(40,10,'ALTERNATIVA 4','N');

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE EMPLEADOEXAMEN
-- =============================================

CREATE TABLE EMPLEADOEXAMEN
(
	idempExamen           INTEGER NOT NULL ,
	idempleado       		 INTEGER NOT NULL ,
	idexamen             INTEGER NOT NULL ,
	nota                 DECIMAL(20) NOT NULL ,
	horaInicio           DATE NULL ,
	horaFin      		 DATE NULL ,
CONSTRAINT  XPKEMPLEADOEXAMEN PRIMARY KEY (idempExamen),
CONSTRAINT FK_EMPLEADOEXAMEN_EMPLEADO
    FOREIGN KEY (idempleado) REFERENCES EMPLEADO (idempleado),
CONSTRAINT FK_EMPLEADOEXAMEN_EXAMEN
    FOREIGN KEY (idexamen) REFERENCES EXAMEN (idexamen)
);

CREATE SEQUENCE SQ_EMPLEADOEXAMEN
INCREMENT BY 1
START WITH 1;


INSERT INTO EMPLEADOEXAMEN(idempExamen,idempleado,idexamen,nota,horaInicio,horaFin) 
VALUES(1,1,1,20,TO_DATE('10/04/2017 07:00','DD-MM-YYYY HH24:MI'),TO_DATE('10/04/2017 08:00','DD-MM-YYYY HH24:MI'));

INSERT INTO EMPLEADOEXAMEN(idempExamen,idempleado,idexamen,nota,horaInicio,horaFin) 
VALUES(2,2,1,20,TO_DATE('10/04/2017 07:00','DD-MM-YYYY HH24:MI'),TO_DATE('10/04/2017 09:00','DD-MM-YYYY HH24:MI'));

INSERT INTO EMPLEADOEXAMEN(idempExamen,idempleado,idexamen,nota,horaInicio,horaFin) 
VALUES(3,3,2,20,TO_DATE('10/04/2017 07:00','DD-MM-YYYY HH24:MI'),TO_DATE('10/04/2017 08:30','DD-MM-YYYY HH24:MI'));

INSERT INTO EMPLEADOEXAMEN(idempExamen,idempleado,idexamen,nota,horaInicio,horaFin) 
VALUES(4,4,2,20,TO_DATE('10/04/2017 07:00','DD-MM-YYYY HH24:MI'),TO_DATE('10/04/2017 08:30','DD-MM-YYYY HH24:MI'));

INSERT INTO EMPLEADOEXAMEN(idempExamen,idempleado,idexamen,nota,horaInicio,horaFin) 
VALUES(5,5,2,20,TO_DATE('10/04/2017 07:00','DD-MM-YYYY HH24:MI'),TO_DATE('10/04/2017 07:30','DD-MM-YYYY HH24:MI'));

COMMIT;


-- =============================================
-- CREACION DE TABLAS DE DETALLEEXAMEN
-- =============================================

CREATE TABLE DETALLEEXAMEN
(
	iddetalleExamen           INTEGER NOT NULL ,
	idempExamen       		 INTEGER NOT NULL ,
	idpregunta       		 INTEGER NOT NULL ,
	idalternativa             INTEGER NOT NULL,
CONSTRAINT  XPKDETALLEEXAMEN PRIMARY KEY (iddetalleExamen),
CONSTRAINT FK_DETALLEEXAMEN_PREGUNTA
    FOREIGN KEY (idpregunta) REFERENCES PREGUNTAS (idpregunta),
CONSTRAINT FK_DETALLEEXAMEN_ALTERNATIVA
    FOREIGN KEY (idalternativa) REFERENCES ALTERNATIVA (idalternativa)
);

CREATE SEQUENCE SQ_DETALLEEXAMEN
INCREMENT BY 1
START WITH 1;

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(1,1,1,4);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(2,1,2,5);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(3,1,3,8);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(4,1,4,15);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(5,1,5,19);


INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(6,2,1,3);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(7,2,2,7);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(8,2,3,11);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(9,2,4,15);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(10,2,5,20);


INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(11,3,6,22);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(12,3,7,25);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(13,3,8,32);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(14,3,9,36);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(15,3,10,39);



INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(16,4,6,23);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(17,4,7,27);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(18,4,8,30);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(19,4,9,34);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(20,4,10,40);


INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(21,5,6,23);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(22,5,7,28);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(23,5,8,30);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(24,5,9,34);

INSERT INTO DETALLEEXAMEN(iddetalleExamen,idempExamen,idpregunta,idalternativa) 
VALUES(25,5,10,38);

COMMIT;

-- =============================================
-- HABILITAR SALIDAS
-- =============================================

SET TERMOUT ON
SET ECHO ON
SHOW USER
SET LINESIZE 400
SET PAGESIZE 5000
SELECT * FROM CAT;
SELECT SEQUENCE_NAME, LAST_NUMBER FROM USER_SEQUENCES;
