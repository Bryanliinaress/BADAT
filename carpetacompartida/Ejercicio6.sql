--Ejercicio 6
USE Ejercicios;
CREATE TABLE trabajador(
idTrabajador	NVARCHAR (9),
nombreTrabajador NVARCHAR (200) NOT NULL,
apellido1Trabajador	NVARCHAR (200) NOT NULL,
apellido2Trabajador	NVARCHAR (200) NOT NULL,
fechaNacTrabajador	DATE NOT NULL,
CONSTRAINT pk_trabajador_idTrabajador PRIMARY KEY (idTrabajador))