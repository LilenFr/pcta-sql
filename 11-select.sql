USE colectivos_pna;

-- Seleccionar todo
SELECT * FROM `trayectos`;

-- Filtrar por columnas
SELECT id, nombre, empresa FROM `colectivos`;

-- Operaciones matemáticas con SELECT
SELECT (2 + 2);

SELECT (2 + 2) AS resultado;

--SELECT AVG(year) FROM `table_random`;

--SELECT AVG(year) AS year_avg FROM `table_random`;

-- Juntar tablas
SELECT
`colectivos`.`trayecto_colectivo_ida_id`,
`trayectos`.`id`
FROM `colectivos`
INNER JOIN `trayectos`
ON `colectivos`.`trayecto_colectivo_ida_id` = `trayectos`.`id`;
