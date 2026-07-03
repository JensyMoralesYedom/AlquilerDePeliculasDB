DROP DATABASE IF EXISTS videoclub_db;
CREATE DATABASE videoclub_db;
USE videoclub_db;


-- Tabla: generos
CREATE TABLE generos (
    id_genero INT AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    CONSTRAINT pk_generos PRIMARY KEY (id_genero)
) ENGINE=InnoDB;

-- Tabla: formatos 
CREATE TABLE formatos (
    id_formato INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL, -- Ej: DVD, Blu-ray, VHS
    precio_base_alquiler DECIMAL(10, 2) NOT NULL,
    CONSTRAINT pk_formatos PRIMARY KEY (id_formato)
) ENGINE=InnoDB;

-- Tabla: peliculas 
CREATE TABLE peliculas (
    id_pelicula INT AUTO_INCREMENT, -- Cambiado a id_pelicula para que coincida con las llaves foráneas
    titulo VARCHAR(255) NOT NULL,
    sinopsis TEXT,
    anio_lanzamiento INT,
    duracion_minutos INT,
    clasificacion VARCHAR(10), -- Ej: PG-13, R, G
    CONSTRAINT pk_peliculas PRIMARY KEY (id_pelicula)
) ENGINE=InnoDB;


-- Tabla: peliculas_generos 
CREATE TABLE peliculas_generos (
    id_pelicula INT NOT NULL,
    id_genero INT NOT NULL,
    CONSTRAINT pk_peliculas_generos PRIMARY KEY (id_pelicula, id_genero),
    CONSTRAINT fk_peligenero_peliculas FOREIGN KEY (id_pelicula) 
        REFERENCES peliculas (id_pelicula) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_peligenero_generos FOREIGN KEY (id_genero) 
        REFERENCES generos (id_genero) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB;

-- Tabla: ejemplares 
CREATE TABLE ejemplares (
    id_ejemplar INT AUTO_INCREMENT,
    id_pelicula INT NOT NULL,
    id_formatos INT NOT NULL, 
    estado VARCHAR(50) NOT NULL DEFAULT 'disponible', 
    codigo_barras VARCHAR(100) UNIQUE NOT NULL,
    CONSTRAINT pk_ejemplares PRIMARY KEY (id_ejemplar),
    CONSTRAINT fk_ejemplares_peliculas FOREIGN KEY (id_pelicula) 
        REFERENCES peliculas (id_pelicula) ON DELETE CASCADE ON UPDATE CASCADE,
    CONSTRAINT fk_ejemplares_formatos FOREIGN KEY (id_formatos) 
        REFERENCES formatos (id_formato) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;
