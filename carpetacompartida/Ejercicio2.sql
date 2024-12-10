--Ejercicio 2
USE Ejercicios;
 CREATE TABLE region(
 idRegion	INT IDENTITY (1,1),
 nombreRegion	NVARCHAR (300) NOT NULL,
 hemisferioRegion NVARCHAR (10) NOT NULL,
 CONSTRAINT		ch_hemisferio_region CHECK (hemisferioRegion IN ('NORTE','SUR')),
 CONSTRAINT		pk_region PRIMARY KEY (idRegion)
 );