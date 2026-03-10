# lab2-sql-murder-CarolinaArboleda
Este es el laboratorio 2 del curso de estructuras de datos y lab. Laboratorio de SQL para resolver el desafío SQL Murder Mystery y documentar la investigación con consultas y evidencias en GitHub.

# Datos de la detective
Nombre: Carolina Arboleda Guzmán

Actividad: Laboratorio 2 – Introducción a SQL y documentación en GitHub

Caso: SQL Murder Mystery

# RESUMEN DEL CASO
El 15 de enero de 2018 ocurrió un asesinato en SQL City. A partir del reporte del crimen se inició una investigación analizando diferentes tablas de la base de datos mediante consultas SQL. Después de revisar los reportes, identificar testigos, analizar entrevistas y rastrear pistas relacionadas con licencias de conducir, se logró identificar al culpable. El asesino es Jeremy Bowers.

#Paso 1: Buscar el reporte del crimen

Qué hice:
Consulté la tabla crime_scene_report para encontrar el reporte del asesinato ocurrido el 15 de enero de 2018 en SQL City.
<img width="1073" height="510" alt="paso1 - reporte" src="https://github.com/user-attachments/assets/34cae0e4-2f0e-4573-806d-7a6f9b0f7487" />

Por qué:
Era la información inicial del caso y permitía conocer las primeras pistas y los testigos del crimen.

#Paso 2: Identificar a los testigos

Qué hice:
Busqué en la tabla person a las personas que coincidían con las pistas del reporte del crimen. Primero busqué a la persona que vive en Northwestern Dr, ordenando las direcciones para encontrar la casa con el número más alto. Luego busqué a una persona llamada Annabel que vive en Franklin Ave.

<img width="935" height="424" alt="paso 2 - testigo1" src="https://github.com/user-attachments/assets/6ffd6fca-0983-441f-8c96-da5782adfe9c" />
<img width="894" height="396" alt="paso 2 - testigo2" src="https://github.com/user-attachments/assets/217b109a-18f4-4038-b73c-09e027ea12d4" />

Por qué:
El reporte del crimen indicaba que dos testigos presenciaron el asesinato, por lo que era necesario identificarlos para revisar sus entrevistas.

#Paso 3: Leer la entrevista de Morty

Qué hice:
Consulté la tabla interview usando el person_id del primer testigo.
<img width="1125" height="446" alt="paso3 - entrevista Morty" src="https://github.com/user-attachments/assets/e7f6eec7-261a-4e6f-8ac3-fcade92a3c12" />

Por qué:
Las entrevistas contienen información clave sobre el sospechoso y permiten obtener nuevas pistas para continuar la investigación.

#Paso 4: Leer la entrevista de Annabel

Qué hice:
Busqué en la tabla interview la entrevista del segundo testigo.

<img width="1073" height="398" alt="paso4 - entrevista Annabel" src="https://github.com/user-attachments/assets/9f12bdc8-21dc-439d-9e78-51b82988c09f" />

Por qué:
Esta entrevista proporciona más detalles sobre el sospechoso, lo que ayuda a seguir el rastro mediante otras tablas de la base de datos.

#Paso 5: Buscar sospechosos por placa del vehículo

Qué hice:
Consulté la tabla drivers_license para encontrar licencias de conducir cuya placa contuviera el patrón H42W.

<img width="945" height="544" alt="paso5 - sospechosos" src="https://github.com/user-attachments/assets/95fcf2cd-4b3a-48d5-83d3-44424423ca71" />

Por qué:
En la entrevista de los testigos se menciona una parte de la placa del vehículo del sospechoso, por lo que esta consulta permite reducir la lista de posibles culpables.

#Paso 6: Encontrar a las personas dueñas de esas licencias

Qué hice:
Busqué en la tabla person a las personas que tienen las licencias de conducir encontradas en el paso anterior.

<img width="901" height="524" alt="paso6 - dueños de las licencias" src="https://github.com/user-attachments/assets/bd4dbcb0-832c-4266-a4d6-1513db2031ba" />

Por qué:
Esto permite identificar quiénes son los dueños de esos vehículos y convertir las licencias encontradas en posibles sospechosos reales.

#Paso 7: Verificar si alguno pertenece al gimnasio

Qué hice:
Consulté la tabla get_fit_now_member para verificar si alguno de los sospechosos era miembro del gimnasio mencionado en la entrevista.

<img width="1013" height="401" alt="Paso7 - pertenece al gimnasio" src="https://github.com/user-attachments/assets/bbdb2dd2-0088-4de5-8c47-acb92b6d2bae" />

Por qué:
Uno de los testigos mencionó que el sospechoso era miembro del gimnasio Get Fit Now, por lo que esta consulta permitió reducir aún más los sospechosos.

#Paso 8: Identificar al asesino

Qué hice:
Registré en la tabla solution el nombre del sospechoso identificado como asesino.


<img width="1123" height="446" alt="paso8 -  asesino identificado" src="https://github.com/user-attachments/assets/df2d2b90-6d74-4321-8dc6-da3217002610" />

Por qué:
La plataforma utiliza esta consulta para verificar si el sospechoso identificado es realmente el culpable.


#Segunda parte del caso (autor intelectual)

#Paso 9: Leer la entrevista del asesino

Qué hice:
Consulté la entrevista de Jeremy Bowers en la tabla interview.

<img width="1100" height="457" alt="paso9 - entrevista al asesino" src="https://github.com/user-attachments/assets/4cae8055-bb6a-4aa5-b010-a751260dd887" />

Por qué:
En esta entrevista el asesino revela que fue contratado por otra persona, lo que indica que existe un autor intelectual detrás del crimen.


#Paso 10: Buscar licencias que coincidan con la descripción

Qué hice:
Busqué en la tabla drivers_license personas que coincidan con la descripción dada en la entrevista: mujer, cabello rojo, altura entre 65 y 67 pulgadas, conduce un Tesla Model S


<img width="1003" height="647" alt="Paso10 -  sospechosa final" src="https://github.com/user-attachments/assets/b33ce1bf-f30b-4cda-95c5-60e20796669e" />

Por qué:
Estas características permitían identificar posibles sospechosas que coincidan con la descripción dada por el asesino.

#Paso 11: Obtener los nombres de las sospechosas

Qué hice:
Consulté la tabla person para conocer los nombres de las personas que tienen esas licencias de conducir.

<img width="924" height="521" alt="paso11 - nombres sospechosas" src="https://github.com/user-attachments/assets/b0f823a7-e47e-4c19-bfac-19b44c7a701e" />

Por qué:
Esto permitió convertir las licencias encontradas en personas específicas que podrían ser la autora intelectual del crimen.

#Paso 12: Verificar quién asistió tres veces al concierto

Qué hice:
Conté en la tabla facebook_event_checkin cuántas veces cada sospechosa asistió al SQL Symphony Concert en diciembre de 2017.


<img width="587" height="521" alt="paso12 - sospechosa que fue al concierto 3 veces" src="https://github.com/user-attachments/assets/1087eebe-98c7-4131-946b-2334a44932a7" />

Por qué:
El asesino mencionó que la persona que lo contrató asistió tres veces a ese concierto, por lo que esta consulta permitió identificar a la persona correcta.

#Paso 13: Identificar a la culpable final

Qué hice:
Registré en la tabla solution el nombre Miranda Priestly como la responsable del crimen.

#Conclusión: Este ejercicio me permitió reforzar habilidades de análisis de datos y demostrar cómo SQL puede utilizarse para investigar y resolver problemas mediante el análisis de información almacenada en bases de datos.


<img width="1094" height="362" alt="paso13 - culpable final" src="https://github.com/user-attachments/assets/3aacbdb7-0e48-4b9a-8ec5-9e34c9f260f8" />

Por qué:
La plataforma verifica con esta consulta si la persona identificada es la verdadera autora intelectual del asesinato.
