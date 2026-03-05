-- Paso 1: Obtener reporte del crimen

SELECT *
FROM crime_scene_report
WHERE date = 20180115
AND city = 'SQL City';


-- Paso 2: Testigos

SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

SELECT *
FROM person
WHERE name LIKE 'Annabel%'
AND address_street_name = 'Franklin Ave';


-- Paso 3 entrevista Morty

SELECT *
FROM interview
WHERE person_id = 14887;


-- Paso 4 entrevista Annabel

SELECT *
FROM interview
WHERE person_id = 16371;


-- Paso 5 sospechoso

SELECT *
FROM drivers_license
WHERE plate_number LIKE '%H42W%';