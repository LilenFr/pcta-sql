-- Insertar información en la base de datos

USE colectivos_pna;

INSERT INTO `trayectos` (trayecto, descripcion, tipo) VALUES
("Barrio Policial-Toma Nueva", "Este recorrido pasa por: Barrio Policial, Churrarín y Rondeau, Almafuerte y Ramírez, Bavio y Chile, Laurencena y Güemes, Toma vieja y Toma nueva", "Ida"),
("Barrio Policial-Toma Vieja", "Este recorrido pasa por: Barrio Policial, Churrarín y Rondeau, Almafuerte y Ramírez, Bavio y Chile, Laurencena y Güemes y Toma Vieja", "Ida"),
("Toma Nueva-Barrio Policial", "Este recorrido pasa por: Toma Nueva, Laurencena y Güemes, Córdoba y Laprida, Echagüe y Cura Álvarez, Churrarín y Rondeau y Barrio Policial", "Vuelta"),
("Toma Vieja-Barrio Policial", "Este recorrido pasa por: Toma vieja, Toma Nueva, Laurencena y Güemes, Córdoba y Laprida, Echagüe y Cura Álvarez, Churrarín y Rondeau y Barrio Policial", "Vuelta");

-- Lo anterior se corresponde con 4 trayectos (dos de ida y dos de vuelta) de la Línea 1.
