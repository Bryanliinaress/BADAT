-- Ejercicio 8
USE Ejercicios;
ALTER TABLE pais
ADD CONSTRAINT uq_pais_nombrePais UNIQUE (nombrePais);