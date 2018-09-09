/*

Operadores LIKE
Campo [NOT] LIKE 'Patron'
Caracteres: % y _
*/

select * from HR.employees
where first_name NOT like 'D%';


/*

Operador: IN
Sintaxis: COLUMNA [NOT] IN ( conjunto )

Operador de conujuntos.
Verifica si un valor pertenece o no a un conjunto

*/

select * from HR.employees
where upper(substr(first_name,2,1)) not in ('A','E');

/*

Operador: IS NULL
Sintaxis: COLUMNA IS [NOT] NULL

*/

select * from HR.employees
where commission_pct IS NOT NULL;


/*
ORDE BY
*/

select 
    department_id,
    job_id,
    A.*
from HR.employees A
ORDER BY 1 DESC;

select 
    department_id,
    job_id,
    A.*
from HR.employees A
ORDER BY 1, 2;


select NVL(null, 10) from dual;

select NVL(5, 10) from dual;

select COALESCE(null,null,17,null,43) from dual;

select NVL2(null, 10, 20) from dual;


select to_char( sysdate, 'DD-MM-YYYY HH24:MI:SS' ) from dual;

select to_date( '08-09-2018 16:58:49', 'DD-MM-YYYY HH24:MI:SS' ) from dual;


select extract( year from sysdate ) from dual;

-- Interpretacion: 
-- Ultimo mes es de la fecha actual

select m.*, sysdate fecha 
from EDUCA.matricula m
where extract( MONTH from mat_fecha) = extract( MONTH from sysdate);


-- Interpretacion: 
-- Ultimo mes es la ultima matricula

WITH 
V1 AS (SELECT MAX(MAT_FECHA) FECHA FROM EDUCA.MATRICULA)
SELECT * 
FROM EDUCA.MATRICULA M, V1 
WHERE extract( YEAR from M.mat_fecha) = extract( YEAR from V1.FECHA)
AND extract( MONTH from M.mat_fecha) = extract( MONTH from V1.FECHA);



-- COUNT()

-- Cuenta la cantidad de filas en la tabla CURSO
SELECT COUNT(*) FROM EDUCA.CURSO;

-- Cantidad de cursor con profesor
SELECT COUNT(CUR_PROFESOR) FROM EDUCA.CURSO;

SELECT COUNT(*) FROM EDUCA.CURSO
WHERE CUR_PROFESOR IS NOT NULL;


-- Cantidad de profesor
SELECT COUNT(DISTINCT CUR_PROFESOR) FROM EDUCA.CURSO;


-- Planilla de ventas
SELECT SUM( SALARY ) PLANILLA 
FROM HR.employees 
WHERE department_id = ;

























