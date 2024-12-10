-- Ejercicio 7
USE Ejercicios;
CREATE TABLE historial_trabajos(
idTrabajador	NVARCHAR (9),
idTrabajo	NVARCHAR (10),
fecha_comienzo	DATE NOT NULL,
fecha_finalizacion	DATE NOT NULL,
CONSTRAINT fk_historialTrabajos_idTrabajador FOREIGN KEY (idTrabajador) REFERENCES trabajador (idTrabajador),
CONSTRAINT fk_historialTrabajos_idTrabajo FOREIGN KEY (idTrabajo) REFERENCES trabajo (idTrabajo));