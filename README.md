# lab2-sql-murder-CarolinaArboleda
Este es el laboratorio 2 del curso de estructuras de datos y lab. Laboratorio de SQL para resolver el desafío SQL Murder Mystery y documentar la investigación con consultas y evidencias en GitHub.

# Datos de la detective
*Nombre:* Carolina Arboleda Guzmán 

*Actividad:* Laboratorio 2 – Introducción a SQL y documentación en GitHub

*Caso:* SQL Murder Mystery

# RESUMEN DEL CASO
El 15 de enero de 2018 ocurrió un asesinato en SQL City.
A partir del reporte del crimen se inició una investigación analizando diferentes tablas de la base de datos mediante consultas SQL.
Después de revisar los reportes, identificar testigos, analizar entrevistas y rastrear pistas relacionadas con licencias de conducir, se logró identificar al culpable.
El asesino es Jeremy Bowers.

# ¿Qué hice para resolverlo?

*Paso 1:* Revisar el reporte del crimen. Para iniciar la investigación, se consultó la tabla crime_scene_report buscando el asesinato ocurrido el 15 de enero de 2018 en SQL City. 

SELECT *
FROM crime_scene_report
WHERE date = 20180115
AND city = 'SQL City';

# Explicación 
Esta consulta permitió encontrar el reporte del crimen.
En este reporte se menciona que existen dos testigos del asesinato, lo que da la primera pista para continuar la investigación.
<img width="1074" height="667" alt="paso1_reporte" src="https://github.com/user-attachments/assets/1122ea01-6d2b-4e57-9ee7-70d9869d5573" />


*Paso 2:* Identificar a los testigos. Según el reporte del crimen:
- Un testigo vive en Northwestern Dr
- El otro testigo se llama Annabel y vive en Franklin Ave

Testigo 1 
SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1;

# Explicación 
Se buscó a la persona que vive en Northwestern Dr. Se ordenaron las direcciones de mayor a menor para encontrar al residente más reciente de esa calle.

Testigo 2
SELECT *
FROM person
WHERE name LIKE 'Annabel%'
AND address_street_name = 'Franklin Ave';

# Explicación
Se buscó a una persona cuyo nombre comenzara con Annabel y que viviera en Franklin Ave.

<img width="888" height="602" alt="paso2_testigos" src="https://github.com/user-attachments/assets/51af5801-1731-40c5-b327-f0f2f65223f8" />


*Paso 3:* Entrevista del primer testigo. Una vez identificados los testigos, se revisaron sus entrevistas.
SELECT *
FROM interview
WHERE person_id = 14887;

# Explicación
Esta consulta permitió ver la entrevista del primer testigo. En ella se menciona una pista importante relacionada con el sospechoso.
<img width="1079" height="417" alt="paso3_entrevista_morty" src="https://github.com/user-attachments/assets/41fa0ece-f5cf-46da-83dd-f14860d3a8e6" />

*Paso 4:* Entrevista del segundo testigo. 
SELECT *
FROM interview
WHERE person_id = 16371;

# Explicación
En esta entrevista se obtiene más información sobre el sospechoso, incluyendo detalles que permiten seguir el rastro mediante otras tablas de la base de datos.

<img width="1097" height="421" alt="paso4_annabel" src="https://github.com/user-attachments/assets/771b479e-e36f-425c-b590-fc530c6da07b" />


*Paso 5:* Identificación del sospechoso. A partir de las pistas obtenidas en las entrevistas, se buscó un vehículo con una placa específica.
SELECT *
FROM drivers_license
WHERE plate_number LIKE '%H42W%';

# Explicación 
Esta consulta filtró las licencias de conducir cuyo número de placa contiene H42W, lo cual permitió encontrar al sospechoso relacionado con el crimen.

<img width="929" height="527" alt="paso5_sospechoso" src="https://github.com/user-attachments/assets/81979c40-c366-4026-89ae-5ca20873b0d3" />


*Paso 6:* Identificación del asesino. Finalmente, se identificó al responsable del asesinato.
SELECT *
FROM person
WHERE name = 'Jeremy Bowers';

# Explicación
La información obtenida en los pasos anteriores permitió determinar que Jeremy Bowers es el responsable del crimen.
<img width="894" height="391" alt="paso6_asesino" src="https://github.com/user-attachments/assets/5c02aa36-7fe5-4744-8c3d-06e5fd604c5f" />

# Verificación final 
Para confirmar que el sospechoso era realmente el asesino, se ejecutó la consulta de verificación indicada por la plataforma.
La plataforma confirmó que Jeremy Bowers es el culpable del asesinato.

<img width="971" height="470" alt="verificacion" src="https://github.com/user-attachments/assets/c22e4001-46ae-4452-8d1f-2af4b1ca9066" />


# CONCLUSIÓN 
Mediante el uso de consultas SQL fue posible analizar diferentes tablas de la base de datos y relacionar información clave para resolver el caso. Durante la investigación se aplicaron conceptos fundamentales de SQL como:

- Uso de SELECT
- Filtrado con WHERE
- Uso de LIKE
- Ordenamiento con ORDER BY
- Limitación de resultados con LIMIT

Este ejercicio me permitió reforzar habilidades de análisis de datos y demostrar cómo SQL puede utilizarse para investigar y resolver problemas mediante el análisis de información almacenada en bases de datos.
