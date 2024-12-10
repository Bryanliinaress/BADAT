-- Ejercico 9
USE Ejercicios;
ALTER TABLE trabajo
ADD CONSTRAINT df_trabajo_salarioMin DEFAULT 1500 FOR salarioMin;