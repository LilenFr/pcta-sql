-- Insertar información en la base de datos

USE colectivos_pna;

INSERT INTO `colectivos` (nombre, empresa, trayecto_colectivo_ida_id, trayecto_colectivo_vuelta_id) VALUES
("Línea 1", "ERSA", "1", "3"),
("Línea 1", "ERSA", "2", "4");

-- Lo anterior se corresponde con el Colectivo Línea 1 y sus dos trayectos de ida y de vuelta.
