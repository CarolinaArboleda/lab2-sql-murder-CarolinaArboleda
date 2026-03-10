-- Paso 1: Buscar reporte del crimen
SELECT *
FROM crime_scene_report
WHERE date = 20180115
AND city = 'SQL City'
AND type = 'murder';


-- Paso 2: Identificar testigos
SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;


SELECT *
FROM person
WHERE name LIKE 'Annabel%'
AND address_street_name = 'Franklin Ave';



-- Paso 3: Leer entrevista de Morty
SELECT *
FROM interview
WHERE person_id = 14887;


-- Paso 4: Leer entrevista de Annabel
SELECT *
FROM interview
WHERE person_id = 16371;



-- Paso 5 sospechosos
SELECT *
FROM drivers_license
WHERE plate_number LIKE '%H42W%';


--Paso 6: Filtar los dueños de las licencias (id del paso anterior)
SELECT *
FROM person
WHERE license_id IN (183779, 423327, 664760);