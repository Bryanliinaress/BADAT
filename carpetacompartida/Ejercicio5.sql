--Ejercicio 5
USE Ejercicios;
CREATE TABLE trabajo(
idTrabajo	NVARCHAR (10),
nombreTrabajo	NVARCHAR (35) NOT NULL,
salarioMin	DECIMAL (10,2) NOT NULL,
salarioMax	DECIMAL (10,2) NOT NULL,
CONSTRAINT ch_trabajo_salarioMax CHECK (salarioMax<=25000),
CONSTRAINT pk_trabajo_idTrabajo PRIMARY KEY	(idTrabajo))