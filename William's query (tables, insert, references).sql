# William's query

CREATE TABLE clientes
(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
	id_membresia INT NOT NULL,
	nombre VARCHAR(75) NOT NULL,
	apellido VARCHAR(75) NOT NULL,
	cedula VARCHAR(14) NOT NULL, 
	correo VARCHAR(75) NULL,
	direccion VARCHAR(200) NULL,
	estado ENUM('activo', 'inactivo') DEFAULT 'activo',
	telefono VARCHAR(20) NULL,
	fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
	
	CONSTRAINT fk_cliente_membresia
	FOREIGN KEY (id_membresia)
	REFERENCES membresias(id_membresia)
);

Go

INSERT INTO clientes 
(
	nombre,
	apellido,
	cedula,
	correo,
	direccion,
	estado,
	telefono
)

VALUES
(
	'William',
	'Cruz',
	'330-0000000-0',
	'ejemplo@gmail.com',
	'Villa Francisca 2da',
	'activo',
	'829-999-9999'
);

Go

CREATE TABLE empleados
(
	id_empleado INT PRIMARY KEY AUTO_INCREMENT,
	nombre VARCHAR(75) NOT NULL,
	apellido VARCHAR(75) NOT NULL,
	rol VARCHAR(75) NOT NULL,
	telefono VARCHAR(20) NULL,
	direccion VARCHAR(200) NULL,
	tipo_documento ENUM('cedula', 'pasaporte') DEFAULT 'cedula',
	documento_id VARCHAR(25) NOT NULL,
	fecha_nacimiento VARCHAR(12) NULL,
	sueldo_base INT NOT NULL,
	estado ENUM('Activo', 'inactivo') DEFAULT 'activo'
);

INSERT INTO empleados
(
    nombre,
    apellido,
    rol,
    telefono,
    direccion,
    tipo_documento,
    documento_id,
    fecha_nacimiento,
    sueldo_base,
    estado
)
VALUES
(
    'William',
    'Cruz',
    'Administrador',
    '829-999-9999',
    'Villa Francisca',
    'cedula',
    '330-0000000-0',
    '2004-05-15',
    45000,
    'Activo'
);

Go

videoclub_dbvideoclub_dbvideoclub_db

INSERT INTO penalizaciones
(
    id_alquiler,
    id_cliente,
    descripcion,
    tipo_penalizacion,
    estado,
    monto_penalizacion,
    fecha_pago
)
VALUES
(
    1,
    1,
    'El cliente devolvió la película con daños en el disco.',
    'Daño',
    'retrasada',
    500.00,
    '2026-07-03 14:30:00'
);

GO

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



	/*
	CONSTRAINT fk_penalizacion_alquiler
   FOREIGN KEY (id_alquiler)
   REFERENCES alquileres(id_alquiler), */


