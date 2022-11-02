-- Eliminar información de la base de datos

USE colectivos_pna;

-- Ej 1
DELETE FROM `colectivos` 
WHERE id = 1;
-- Filtrando por id

-- Ej 2
DELETE FROM `colectivos`;
-- Para vaciar tabla

-- Ej 3
TRUNCATE TABLE `colectivos`;
-- Para 'reiniciar' los id
