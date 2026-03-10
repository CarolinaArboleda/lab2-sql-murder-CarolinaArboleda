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


-- Paso 7: filtrar si alguno pertenece al gimnasio (id anterior) 
SELECT *
FROM get_fit_now_member
WHERE person_id IN (51739, 67318, 78193);


--Paso 8: asesino identificado 

INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;


--Resolver el caso completo 

--Paso 9: entrevista del asesino 
SELECT *
FROM interview
WHERE person_id = 67318;


--Paso 10: licencias que coincidan con la descripción
SELECT *
FROM drivers_license
WHERE hair_color = 'red'
AND gender = 'female'
AND car_make = 'Tesla'
AND car_model = 'Model S'
AND height BETWEEN 65 AND 67;


--Paso 11: nombres de las sospechosas
SELECT *
FROM person
WHERE license_id IN (202298, 291182, 918773);


--paso 12: quién fue 3 veces al concierto
SELECT person_id, COUNT(*)
FROM facebook_event_checkin
WHERE event_name = 'SQL Symphony Concert'
AND date LIKE '201712%'
GROUP BY person_id
HAVING COUNT(*) = 3;


--paso 13: Culpable
INSERT INTO solution VALUES (1, 'Miranda Priestly');
SELECT value FROM solution;