select * from EXAMEN.alternativa;
select * from EXAMEN.area;
select * from EXAMEN.dificultad;
select * from EXAMEN.empleado;
select * from EXAMEN.empresa;
select * from EXAMEN.examen;
select * from EXAMEN.genero;
select * from EXAMEN.gerencia;
select * from EXAMEN.preguntas;
select * from EXAMEN.EMPLEADOEXAMEN;
select * from EXAMEN.detalleexamen;


--1.- Cuantas areas hay por gerencia?

SELECT ger.gerencia,count(ar.idarea) as TotalArea FROM EXAMEN.area ar
INNER JOIN EXAMEN.gerencia ger ON 
ger.idgerencia = ar.idgerencia
GROUP BY ger.gerencia;

--2.- Cuantos empleados hay por area?
SELECT ar.area,count(emp.idempleado) CantidadEmpleados FROM EXAMEN.empleado emp
INNER JOIN EXAMEN.area ar ON
emp.idarea=ar.idarea
GROUP BY ar.area;

--3.- Listar los empleados del area de PLANEACION FINANCIERA
SELECT ar.area,emp.nombre,emp.apellidos,emp.fechanacimiento
FROM EXAMEN.empleado emp
INNER JOIN EXAMEN.area ar ON
emp.idarea=ar.idarea
WHERE ar.idarea=3;

--4.- Listar los empleados de la GERENCIA DE FINANZAS
SELECT ger.gerencia,ar.area,emp.nombre,emp.apellidos,emp.fechanacimiento
FROM EXAMEN.empleado emp
INNER JOIN EXAMEN.area ar ON emp.idarea=ar.idarea
INNER JOIN EXAMEN.gerencia ger ON ger.idgerencia = ar.idgerencia
WHERE ger.idgerencia=2;

--5.- Cuantos empleados hay en la empresa.
SELECT COUNT(*) CantidadEmpleados FROM EXAMEN.empleado;

--6.- Cuantos Examenes hay?
SELECT COUNT(*) CantidadExamenes FROM EXAMEN.examen;

--7.- Listar las preguntas por examenes con su respectiva dificultad.
SELECT exa.examen,pre.pregunta,di.dificultad FROM EXAMEN.preguntas pre
INNER JOIN EXAMEN.examen exa ON pre.idexamen=exa.idexamen
INNER JOIN EXAMEN.dificultad di ON pre.iddificultad=di.iddificultad;

--8.- Listar las preguntas por examenes con su respectiva dificultad y sus alternativas.
SELECT exa.examen,pre.pregunta,di.dificultad,al.alternativa FROM EXAMEN.preguntas pre
INNER JOIN EXAMEN.examen exa ON pre.idexamen=exa.idexamen
INNER JOIN EXAMEN.dificultad di ON pre.iddificultad=di.iddificultad
INNER JOIN EXAMEN.alternativa al ON pre.idpregunta=al.idpregunta;

--9.- Listar las preguntas por examenes con su respectiva dificultad y sus alternativas, e indicando la respuesta correcta e incorrecta.
SELECT exa.examen,pre.pregunta,di.dificultad,al.alternativa,
(CASE al.rptacorrecta when 'N' then 'Respuesta incorrecta' else 'Respuesta correcta' end) Respuesta
FROM EXAMEN.preguntas pre
INNER JOIN EXAMEN.examen exa ON pre.idexamen=exa.idexamen
INNER JOIN EXAMEN.dificultad di ON pre.iddificultad=di.iddificultad
INNER JOIN EXAMEN.alternativa al ON pre.idpregunta=al.idpregunta;

--10.- Listar las preguntas por examenes con su respectiva dificultad y sus alternativas, e indicando solo la respuesta correcta.
SELECT exa.examen,pre.pregunta,di.dificultad,al.alternativa
FROM EXAMEN.preguntas pre
INNER JOIN EXAMEN.examen exa ON pre.idexamen=exa.idexamen
INNER JOIN EXAMEN.dificultad di ON pre.iddificultad=di.iddificultad
INNER JOIN EXAMEN.alternativa al ON pre.idpregunta=al.idpregunta
WHERE al.rptacorrecta='Y';

--11.- Cuantos examenes ha realizado cada empleado
SELECT (emp.nombre ||', '|| emp.apellidos) Empleado, count(empex.idempleado) as "Cantidad de Examenes" 
FROM EXAMEN.empleadoexamen empex
INNER JOIN EXAMEN.empleado emp ON empex.idempleado = emp.idempleado
GROUP BY emp.nombre,emp.apellidos;

--12.- Filtrar todos los empleados que tengan el apellido VENTOCILLA
SELECT idempleado, nombre, apellidos FROM EXAMEN.empleado WHERE apellidos LIKE '%VENTOCILLA%';

--13.- Cuantos empleados son de sexo masculino y femenino en la empresa.
SELECT ge.genero, count(ge.idgenero) Cantidad FROM EXAMEN.empleado emp 
INNER JOIN EXAMEN.genero ge ON emp.idgenero=ge.idgenero
GROUP BY ge.genero;

--14.- Resultdos de Arturo en el examen SEGURIDAD EN EL TRABAJO
SELECT (emp.nombre ||', '|| emp.apellidos) Empleado, exa.examen,pre.pregunta,
(CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then 'Correcto' else 'Incorrecto' end) Respuesta
FROM EXAMEN.detalleexamen detex
INNER JOIN EXAMEN.empleadoexamen empexa ON detex.idempexamen=empexa.idempexamen
INNER JOIN EXAMEN.empleado emp ON empexa.idempleado=emp.idempleado
INNER JOIN EXAMEN.examen exa ON empexa.idexamen=exa.idexamen
INNER JOIN EXAMEN.preguntas pre ON detex.idpregunta=pre.idpregunta
WHERE emp.idempleado= 1 and
exa.idexamen = 1;                            

--15 Puntaje por cada pregunta de Arturo en el examen SEGURIDAD EN EL TRABAJO

SELECT (emp.nombre ||', '|| emp.apellidos) Empleado, exa.examen,pre.pregunta,
(CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then 'Correcto' else 'Incorrecto' end) Respuesta,
(CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then exa.puntajexpregunta else 0 end) Puntaje
FROM EXAMEN.detalleexamen detex
INNER JOIN EXAMEN.empleadoexamen empexa ON detex.idempexamen=empexa.idempexamen
INNER JOIN EXAMEN.empleado emp ON empexa.idempleado=emp.idempleado
INNER JOIN EXAMEN.examen exa ON empexa.idexamen=exa.idexamen
INNER JOIN EXAMEN.preguntas pre ON detex.idpregunta=pre.idpregunta
WHERE emp.idempleado= 1 and
exa.idexamen = 1;

--16.- Puntaje total de Arturo en el examen SEGURIDAD EN EL TRABAJO

SELECT (emp.nombre ||', '|| emp.apellidos) Empleado,
SUM((CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then exa.puntajexpregunta else 0 end)) Puntaje
FROM EXAMEN.detalleexamen detex
INNER JOIN EXAMEN.empleadoexamen empexa ON detex.idempexamen=empexa.idempexamen
INNER JOIN EXAMEN.empleado emp ON empexa.idempleado=emp.idempleado
INNER JOIN EXAMEN.examen exa ON empexa.idexamen=exa.idexamen
INNER JOIN EXAMEN.preguntas pre ON detex.idpregunta=pre.idpregunta
WHERE emp.idempleado= 1 and
exa.idexamen = 1
GROUP BY emp.nombre, emp.apellidos, exa.examen;

--17.- Puntaje por cada pregunta de empledaos en el examen SEGURIDAD EN EL TRABAJO
SELECT (emp.nombre ||', '|| emp.apellidos) Empleado, exa.examen,pre.pregunta,
(CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then 'Correcto' else 'Incorrecto' end) Respuesta,
(CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then exa.puntajexpregunta else 0 end) Puntaje
FROM EXAMEN.detalleexamen detex
INNER JOIN EXAMEN.empleadoexamen empexa ON detex.idempexamen=empexa.idempexamen
INNER JOIN EXAMEN.empleado emp ON empexa.idempleado=emp.idempleado
INNER JOIN EXAMEN.examen exa ON empexa.idexamen=exa.idexamen
INNER JOIN EXAMEN.preguntas pre ON detex.idpregunta=pre.idpregunta
WHERE --.idempleado= 1 and
exa.idexamen = 1;

--18.- Puntaje total de cada empleado en el examen SEGURIDAD EN EL TRABAJO

SELECT (emp.nombre ||', '|| emp.apellidos) Empleado,
SUM((CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then exa.puntajexpregunta else 0 end)) Puntaje
FROM EXAMEN.detalleexamen detex
INNER JOIN EXAMEN.empleadoexamen empexa ON detex.idempexamen=empexa.idempexamen
INNER JOIN EXAMEN.empleado emp ON empexa.idempleado=emp.idempleado
INNER JOIN EXAMEN.examen exa ON empexa.idexamen=exa.idexamen
INNER JOIN EXAMEN.preguntas pre ON detex.idpregunta=pre.idpregunta
WHERE --emp.idempleado= 1 and
exa.idexamen = 1
GROUP BY emp.nombre, emp.apellidos, exa.examen;


--19.- Ranking de puntaje de mayor a menor en el examen SEGURIDAD EN EL TRABAJO

SELECT (emp.nombre ||', '|| emp.apellidos) Empleado,
SUM((CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then exa.puntajexpregunta else 0 end)) Puntaje
FROM EXAMEN.detalleexamen detex
INNER JOIN EXAMEN.empleadoexamen empexa ON detex.idempexamen=empexa.idempexamen
INNER JOIN EXAMEN.empleado emp ON empexa.idempleado=emp.idempleado
INNER JOIN EXAMEN.examen exa ON empexa.idexamen=exa.idexamen
INNER JOIN EXAMEN.preguntas pre ON detex.idpregunta=pre.idpregunta
WHERE --emp.idempleado= 1 and
exa.idexamen = 1
GROUP BY emp.nombre, emp.apellidos, exa.examen
ORDER BY SUM((CASE when detex.idalternativa=(SELECT al.idalternativa FROM EXAMEN.alternativa al
WHERE al.idpregunta=pre.idpregunta AND al.rptacorrecta='Y') then exa.puntajexpregunta else 0 end)) DESC;

--20-. Empleados naciedos entre los años 1986 al 1992

select idempleado, (nombre ||', '|| apellidos) Empleado, fechanacimiento from EXAMEN.empleado where fechanacimiento 
between TO_DATE('01-03-1986','DD-MM-YYYY') AND TO_DATE('01-03-1992','DD-MM-YYYY');

