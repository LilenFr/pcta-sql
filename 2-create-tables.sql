-- Crear tablas

USE colectivos_pna;

CREATE TABLE `trayectos` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `trayecto` VARCHAR(50) NOT NULL,
    `descripcion` TINYTEXT NOT NULL,
    `tipo` ENUM('Ida', 'vuelta') NOT NULL,
    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(id)
)
DEFAULT CHARSET=utf8mb4;
-- Esta línea especifica que se pueden guardar un gran campo de caracteres.

CREATE TABLE `colectivos` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(10) NOT NULL,
    `empresa` VARCHAR(30) NOT NULL,
    `trayecto_colectivo_ida_id` BIGINT(20) UNSIGNED NOT NULL,
    `trayecto_colectivo_vuelta_id` BIGINT(20) UNSIGNED NOT NULL,
    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(id),
    FOREIGN KEY(trayecto_colectivo_ida_id) REFERENCES `trayectos`(id),
    FOREIGN KEY(trayecto_colectivo_vuelta_id) REFERENCES `trayectos`(id)
)
DEFAULT CHARSET=utf8mb4;

CREATE TABLE `paradas` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `ubicacion` VARCHAR(200) NOT NULL,
    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(id)
)
DEFAULT CHARSET=utf8mb4;

CREATE TABLE `trayectos_paradas` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `trayecto_id` BIGINT(20) UNSIGNED NOT NULL,
    `parada_id` BIGINT(20) UNSIGNED NOT NULL,
    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(id),
    FOREIGN KEY(trayecto_id) REFERENCES `trayectos`(id),
    FOREIGN KEY(parada_id) REFERENCES `paradas`(id)
)
DEFAULT CHARSET=utf8mb4;

CREATE TABLE `colectivos_paradas` (
    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
    `colectivo_id` BIGINT(20) UNSIGNED NOT NULL,
    `parada_id` BIGINT(20) UNSIGNED NOT NULL,
    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY(id),
    FOREIGN KEY(colectivo_id) REFERENCES `colectivos`(id),
    FOREIGN KEY(parada_id) REFERENCES `paradas`(id)
)
DEFAULT CHARSET=utf8mb4;

---CREATE TABLE `horarios` (
---    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
---    `hora` TIME NOT NULL,
---    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
---    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
---
---    PRIMARY KEY(id)
---)
---DEFAULT CHARSET=utf8mb4;

---CREATE TABLE `paradas_horarios` (
---    `id` BIGINT(20) UNSIGNED NOT NULL AUTO_INCREMENT,
---    `parada_id` BIGINT(20) UNSIGNED NOT NULL,
---    `horario_id` BIGINT(20) UNSIGNED NOT NULL,
---    `creado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
---    `actualizado_en` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
---
---    PRIMARY KEY(id),
---    FOREIGN KEY(parada_id) REFERENCES `paradas`(id),
---    FOREIGN KEY(horario_id) REFERENCES `horarios`(id)
---)
---DEFAULT CHARSET=utf8mb4;

-- Ejecutar desde la terminal: mysql < 2-create-tables.sql;