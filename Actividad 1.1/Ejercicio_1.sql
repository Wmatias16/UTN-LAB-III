CREATE DATABASE Facultad;
GO
USE Facultad;
GO
CREATE TABLE Carreras(
	ID char(4) NOT NULL PRIMARY KEY,
	Nombre varchar(30) NOT NULL,
	Fecha_creacion date NOT NULL CHECK(Fecha_creacion < GETDATE()),
	Mail varchar(100) NOT NULL,
	Nivel varchar(20) NOT NULL CHECK(Nivel IN ( 'Diplomatura', 'Pregrado', 'Grado','Posgrado'))
);
GO
CREATE TABLE Alumnos(
	Legajo int NOT NULL PRIMARY KEY IDENTITY(1000,1),
	IDCarrera char(4) NOT NULL FOREIGN KEY REFERENCES Carreras(ID),
	Nombre varchar(30) NOT NULL,
	Apellido varchar(30) NOT NULL,
	Fecha_nacimiento date NOT NULL CHECK(Fecha_nacimiento < GETDATE()),
	Mail varchar(100) NOT NULL UNIQUE,
	Telefono varchar(20) NULL
);
GO
CREATE TABLE Materias(
	ID int NOT NULL PRIMARY KEY IDENTITY(1,1),
	IDCarrera char(4) NOT NULL FOREIGN KEY REFERENCES Carreras(ID),
	Nombre varchar(30) NOT NULL,
	Carga_horaria int NOT NULL CHECK(Carga_horaria > 0)
);
