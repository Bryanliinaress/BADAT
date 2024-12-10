--Ejercicio 10

CREATE DATABASE Ejercicio10;
USE Ejercicio10;
CREATE TABLE LOCALIDAD(
Codigo_localidad INT,
Nombre NVARCHAR (50)	NOT NULL,
CONSTRAINT pk_localidad_Codigo_localidad PRIMARY KEY (Codigo_localidad)
);
CREATE TABLE EMPLEADO(
DNI_Empleado NVARCHAR (50) ,
nombre NVARCHAR (50) NOT NULL,
domicilio NVARCHAR (50) ,
CONSTRAINT pk_EMPLEADO_DNIempleado PRIMARY KEY (DNI_Empleado)
);
CREATE TABLE PUB(
codigo NVARCHAR (50),
nombre NVARCHAR (50)	NOT NULL,
licencia_fiscal NVARCHAR (50)	NOT NULL,
domicilio NVARCHAR (50),
fecha_apertura DATE	NOT NULL,
horario NVARCHAR (50)	NOT NULL,
codigo_localidad INT NOT NULL,
CONSTRAINT pk_PUB_codigo PRIMARY KEY (codigo),
CONSTRAINT fk_PUB_codigo_localidad FOREIGN KEY (codigo_localidad) REFERENCES  localidad(codigo_localidad),
CONSTRAINT ch_PUB_horario CHECK (horario IN  ( 'HORARIO1' ,'HORARIO2','HORARIO3'))
);
CREATE TABLE TITULAR(
DNI_titular NVARCHAR (50),
nombre NVARCHAR (50) NOT NULL,
domicilio NVARCHAR (50),
codigo_PUB NVARCHAR (50) NOT NULL,
CONSTRAINT pk_TITULAR_DNItitular PRIMARY KEY (DNI_titular),
CONSTRAINT fk_TITULAR_codigoPUB FOREIGN KEY (codigo_PUB) REFERENCES PUB (codigo),
);
CREATE TABLE ARTICULO(
 codigo_articulo NVARCHAR (50),
 nombre NVARCHAR (50) NOT NULL,
 cantidad INT  NOT NULL,
 precio INT  NOT NULL,
 codigo_PUB NVARCHAR (50) NOT NULL,
 CONSTRAINT pk_ARTICULO_codigoArticulo PRIMARY KEY (codigo_articulo),
 CONSTRAINT fk_ARTICULO_codigoPUB FOREIGN KEY (codigo_PUB) REFERENCES PUB (codigo),
 CONSTRAINT ch_ARTICULO_precio CHECK (precio>0)
);
CREATE TABLE PUB_EMPLEADO(
codigo_PUB NVARCHAR (50) NOT NULL,
DNI_empleado NVARCHAR (50) NOT NULL,
funcion NVARCHAR (50) NOT NULL,
CONSTRAINT pk_PUBEMPLEADO_codigo_PUB PRIMARY KEY (codigo_PUB,DNI_empleado,funcion),
CONSTRAINT ch_PUBEMPLEADO_funcion CHECK (funcion in ('CAMARERO','SEGURIDAD','LIMPIEZA'))
);
