CREATE DATABASE biblioteca;

CREATE TABLE libro(
	informacion NVARCHAR(50) ,
	CONSTRAINT pk_libro_informacion PRIMARY KEY (informacion)
);

CREATE TABLE prestamo(
	registro NVARCHAR(50) ,
	informacion_libro NVARCHAR(50) NOT NULL,
	CONSTRAINT pk_prestamo_registro PRIMARY KEY (registro),
	CONSTRAINT fk_prestamo_informacion_libro FOREIGN KEY (informacion_libro) REFERENCES libro (informacion)
);

CREATE TABLE usuario(
	nombre NVARCHAR(50) ,
	CONSTRAINT pk_usuario_nombre PRIMARY KEY (nombre)
);

CREATE TABLE autor(
	informacion NVARCHAR (50),
	CONSTRAINT pk_autor_informacion PRIMARY KEY (informacion)
);
--Ejercicio1
CREATE LOGIN bibliotecario1login
WITH PASSWORD='contraseña123';

CREATE USER bibliotecario1
FOR LOGIN bibliotecario1login;

--Ejercicio2
CREATE USER lector1
WITHOUT LOGIN;

--Ejercicio3
ALTER USER bibliotecario1 WITH NAME=gestorBiblioteca;

--Ejercicio4
GRANT SELECT,UPDATE 
ON libro
TO gestorBiblioteca;

--Ejercicio5
DENY DELETE 
ON libro
TO gestorBiblioteca;

--Ejercicio6
GRANT SELECT
ON prestamo
TO lector1;

--Ejercicio7
CREATE LOGIN bibliotecario2login
WITH PASSWORD='contraseña123';

CREATE USER bibliotecario2
FOR LOGIN bibliotecario2login;

DENY UPDATE
ON libro
TO bibliotecario2;


--Ejercicio8
GRANT INSERT,UPDATE, DELETE
ON prestamo
TO gestorBiblioteca
WITH GRANT OPTION;

--Ejercicio9
GRANT ALL
ON usuario
TO gestorBiblioteca;

--Ejercicio10
REVOKE SELECT 
ON prestamo
TO lector1;

--Ejercicio11
ALTER USER gestorBiblioteca WITH NAME=asistenteBiblioteca;
ALTER LOGIN bibliotecario1login WITH NAME=asistenteBibliotecalogin;

--Ejercicio12
CREATE LOGIN revisorLibrosLogin
WITH PASSWORD='contraseña123';

CREATE USER revisorLibros
FOR LOGIN revisorLibrosLogin;

GRANT UPDATE,SELECT
ON libro
TO revisorlibros;

--Ejercicio13
DROP USER lector1;

--Ejerciico14
REVOKE ALL
ON libro
TO asistenteBiblioteca;