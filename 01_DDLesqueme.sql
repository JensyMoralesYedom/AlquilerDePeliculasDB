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

CREATE TABLE membresias
(
    id_membresia INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(10,2) NOT NULL,
    duracion_dias INT NOT NULL,
    limite_alquileres INT NOT NULL,
    descuento DECIMAL(5,2) DEFAULT 0.00,
    estado ENUM('activa','inactiva') DEFAULT 'activa',
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE clientes
(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    id_membresia INT NOT NULL,
    nombre VARCHAR(75) NOT NULL,
    apellido VARCHAR(75) NOT NULL,
    cedula VARCHAR(14) NOT NULL,
    correo VARCHAR(75) NULL,
    direccion VARCHAR(200) NULL,
    estado ENUM('activo','inactivo') DEFAULT 'activo',
    telefono VARCHAR(20) NULL,
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_cliente_membresia
        FOREIGN KEY (id_membresia)
        REFERENCES membresias(id_membresia)
);

CREATE TABLE empleados
(
    id_empleado INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(75) NOT NULL,
    apellido VARCHAR(75) NOT NULL,
    rol VARCHAR(75) NOT NULL,
    telefono VARCHAR(20) NULL,
    direccion VARCHAR(200) NULL,
    tipo_documento ENUM('cedula','pasaporte') DEFAULT 'cedula',
    documento_id VARCHAR(25) NOT NULL,
    fecha_nacimiento VARCHAR(12) NULL,
    sueldo_base INT NOT NULL,
    estado ENUM('activo','inactivo') DEFAULT 'activo'
);

create table alquileres
(
    id_alquiler INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_alquiler DATETIME DEFAULT CURRENT_TIMESTAMP,
    fecha_devolucion DATETIME NULL,
    estado ENUM('activo', 'devuelto', 'retrasado') DEFAULT 'activo',
    total DECIMAL(10,2) DEFAULT 0.00,
    
    CONSTRAINT fk_alquiler_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),
        
    CONSTRAINT fk_alquiler_empleado
        FOREIGN KEY (id_empleado)
        REFERENCES empleados(id_empleado)
);

create table detalleAlquiler
(
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_alquiler INT NOT NULL,
    id_ejemplar INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    fecha_devolucion DATETIME NULL,
    
    CONSTRAINT fk_detalle_alquiler
        FOREIGN KEY (id_alquiler)
        REFERENCES alquileres(id_alquiler),
        
    CONSTRAINT fk_detalle_ejemplar
        FOREIGN KEY (id_ejemplar)
        REFERENCES ejemplares(id_ejemplar)
);

create table pagos
(
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_alquiler INT NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    
    CONSTRAINT fk_pago_alquiler
        FOREIGN KEY (id_alquiler)
        REFERENCES alquileres(id_alquiler)
);

CREATE TABLE penalizaciones
(
    id_penalizacion INT PRIMARY KEY AUTO_INCREMENT,
    id_alquiler INT NOT NULL,
    id_cliente INT NOT NULL,
    descripcion VARCHAR(400) NOT NULL,
    tipo_penalizacion ENUM('Daño','retraso','perdida') DEFAULT 'perdida',
    estado ENUM('Pagada','retrasada','cancelada') DEFAULT 'retrasada',
    monto_penalizacion DECIMAL(10,2) NOT NULL,
    fecha_pago DATETIME NOT NULL,
    fecha_penalizacion DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_penalizacion_alquiler
        FOREIGN KEY (id_alquiler)
        REFERENCES alquileres(id_alquiler),
    CONSTRAINT fk_penalizacion_cliente
        FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente)
);


