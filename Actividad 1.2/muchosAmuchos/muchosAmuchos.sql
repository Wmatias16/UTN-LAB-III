/*
	UNA TIENDA DE  COMPUTACION DESEA REGISTRAR LAS VENTAS QUE 
	SE REALIZARON EN EL A?O
*/

CREATE DATABASE Tienda
GO
USE Tienda
GO
CREATE TABLE NVENTAS(
	id bigint NOT NULL PRIMARY KEY,
	fecha_venta date NOT NULL,
	id_cliente bigint NOT NULL
)
GO
CREATE TABLE PRODUCTOS(
	id bigint NOT NULL PRIMARY KEY,
	precio money NOT NULL,
	descripcion varchar(100) NOT NULL,
	categoria varchar(40) NOT NULL CHECK(categoria IN('HARDWARE','SOFTWARE'))	
)
GO
CREATE TABLE VENTAS(
	id_venta bigint NOT NULL FOREIGN KEY REFERENCES NVENTAS(id),
	id_producto bigint NOT NULL FOREIGN KEY REFERENCES PRODUCTOS(id),
	cantidad smallint NOT NULL
)