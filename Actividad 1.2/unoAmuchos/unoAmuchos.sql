/*
	EN ARGNTINA SE NECESITA TENER
	ALMACENADOS REGISTROS DE LOS AUTOS QUE TIENE CADA PERSONA QUE VIVE EN
	LA PROVINCIA DE BUENOS AIRES.
*/
CREATE DATABASE Motors
GO
USE Motors
GO
CREATE TABLE PERSONAS(
	dni varchar(8) NOT NULL PRIMARY KEY,
	nombre varchar(30) NOT NULL,
	apellido varchar(30) NOT NULL,
	edad tinyint NOT NULL CHECK(edad >= 18)
)
GO
CREATE TABLE AUTOS(
	matricula varchar(6) NOT NULL PRIMARY KEY,
	dni_propietario varchar(8) NOT NULL FOREIGN KEY REFERENCES PERSONAS(dni),
	marca varchar(30) NOT NULL,
	modelo varchar(30) NOT NULL,
)