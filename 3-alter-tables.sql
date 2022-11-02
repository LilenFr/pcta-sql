-- Modificar tablas

USE colectivos_pna;

-- Ej
ALTER TABLE `colectivos`
MODIFY `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT
ADD PRIMARY KEY(id);

-- Ejecutar desde la terminal: mysql < 3-alter_tables.sql;
