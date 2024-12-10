-- Ejercicio 1
CREATE DATABASE TallerMecanico;

-- Ejercicio 2
CREATE DATABASE TallerMecanico_SucursalA;

-- Ejercicio 
DROP DATABASE TallerMecanico_SucursalA;

-- Ejercicio 4
CREATE DATABASE TallerMecanico_Respaldo;

--Ejercicio 5
ALTER DATABASE TallerMecanico_Respaldo
MODIFY NAME = TallerMecanico_Backup;

-- Ejercicio 6
CREATE DATABASE TallerMecanico_SucursalB;

--Ejercicio 7
DROP DATABASE TallerMecanico_Backup;

--Ejercicio 8
CREATE DATABASE TallerMecanico_Almacen;

--Ejercicio 9
ALTER DATABASE TallerMecanico_Almacen
MODIFY NAME = TallerMecanico_Inventario;

--Ejercicio 10
DROP DATABASE TallerMecanico_SucursalB;

--Ejercicio 11
SELECT name FROM sys.databases;


