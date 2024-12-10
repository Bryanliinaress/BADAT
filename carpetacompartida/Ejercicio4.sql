--Ejercicio 4
USE Ejercicios;
ALTER TABLE pais
ADD CONSTRAINT ch_pais_nombrePais  CHECK (nombrePais IN ('Italia','India','China'));