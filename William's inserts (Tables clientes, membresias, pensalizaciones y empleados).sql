INSERT INTO clientes
(
    id_membresia,
    nombre,
    apellido,
    cedula,
    correo,
    direccion,
    estado,
    telefono
)
VALUES
(1, 'William', 'Cruz', '330-0000001-1', 'william.cruz@gmail.com', 'Villa Francisca, Santo Domingo', 'activo', '829-555-1001'),

(2, 'María', 'Rodríguez', '001-0000002-2', 'maria.rodriguez@gmail.com', 'Los Mina, Santo Domingo Este', 'activo', '829-555-1002'),

(1, 'José', 'Martínez', '402-0000003-3', 'jose.martinez@gmail.com', 'Santiago Centro', 'activo', '829-555-1003'),

(1, 'Ana', 'Pérez', '031-0000004-4', 'ana.perez@gmail.com', 'San Cristóbal', 'activo', '829-555-1004'),

(3, 'Carlos', 'Gómez', '223-0000005-5', 'carlos.gomez@gmail.com', 'La Romana', 'activo', '829-555-1005'),

(4, 'Laura', 'Fernández', '054-0000006-6', 'laura.fernandez@gmail.com', 'San Pedro de Macorís', 'activo', '829-555-1006'),

(4, 'Miguel', 'Ramírez', '402-0000007-7', 'miguel.ramirez@gmail.com', 'Puerto Plata', 'activo', '829-555-1007'),

(4, 'Sofía', 'Morales', '001-0000008-8', 'sofia.morales@gmail.com', 'Baní', 'inactivo', '829-555-1008'),

(1, 'Luis', 'Castillo', '031-0000009-9', 'luis.castillo@gmail.com', 'Higüey', 'activo', '829-555-1009'),

(3, 'Gabriela', 'Santos', '223-0000010-0', 'gabriela.santos@gmail.com', 'Moca', 'activo', '829-555-1010');


***********************************************************************************************************************

INSERT INTO membresias
(
    nombre,
    descripcion,
    precio,
    duracion_dias,
    limite_alquileres,
    descuento,
    estado
)
VALUES
(
    'Basica',
    'Permite alquilar hasta 2 peliculas durante 30 dias.',
    299.99,
    30,
    2,
    0.00,
    'activa'
),
(
    'Estandar',
    'Permite alquilar hasta 4 peliculas con un pequeño descuento en penalizaciones.',
    499.99,
    30,
    4,
    5.00,
    'activa'
),
(
    'Premium',
    'Permite alquilar hasta 8 peliculas y ofrece mayor descuento en penalizaciones.',
    799.99,
    30,
    8,
    10.00,
    'activa'
),
(
    'VIP',
    'Permite alquileres ilimitados con el mayor descuento y prioridad en reservas.',
    1199.99,
    30,
    999,
    20.00,
    'activa'
);

***************************************************************************************************************

INSERT INTO clientes
(id_membresia, nombre, apellido, cedula, correo, direccion, estado, telefono)
VALUES
(1, 'William', 'Cruz', '330-0000001-1', 'william.cruz@gmail.com', 'Villa Francisca, Santo Domingo', 'activo', '829-555-1001'),
(2, 'María', 'Rodríguez', '001-0000002-2', 'maria.rodriguez@gmail.com', 'Los Mina, Santo Domingo Este', 'activo', '829-555-1002'),
(3, 'José', 'Martínez', '402-0000003-3', 'jose.martinez@gmail.com', 'Santiago', 'activo', '829-555-1003'),
(4, 'Ana', 'Pérez', '031-0000004-4', 'ana.perez@gmail.com', 'San Cristóbal', 'activo', '829-555-1004'),
(NULL, 'Carlos', 'Gómez', '223-0000005-5', 'carlos.gomez@gmail.com', 'La Romana', 'activo', '829-555-1005'),
(1, 'Laura', 'Fernández', '054-0000006-6', 'laura.fernandez@gmail.com', 'San Pedro de Macorís', 'activo', '829-555-1006'),
(2, 'Miguel', 'Ramírez', '402-0000007-7', 'miguel.ramirez@gmail.com', 'Puerto Plata', 'activo', '829-555-1007'),
(NULL, 'Sofía', 'Morales', '001-0000008-8', 'sofia.morales@gmail.com', 'Baní', 'activo', '829-555-1008'),
(3, 'Luis', 'Castillo', '031-0000009-9', 'luis.castillo@gmail.com', 'Higüey', 'activo', '829-555-1009'),
(4, 'Gabriela', 'Santos', '223-0000010-0', 'gabriela.santos@gmail.com', 'Moca', 'activo', '829-555-1010'),
(1, 'Pedro', 'Jiménez', '402-0000011-1', 'pedro.jimenez@gmail.com', 'La Vega', 'activo', '829-555-1011'),
(NULL, 'Diana', 'Herrera', '001-0000012-2', 'diana.herrera@gmail.com', 'Azua', 'activo', '829-555-1012'),
(2, 'Andrés', 'López', '031-0000013-3', 'andres.lopez@gmail.com', 'Bonao', 'activo', '829-555-1013'),
(3, 'Patricia', 'Núñez', '223-0000014-4', 'patricia.nunez@gmail.com', 'Nagua', 'activo', '829-555-1014'),
(4, 'Jorge', 'Reyes', '402-0000015-5', 'jorge.reyes@gmail.com', 'Mao', 'activo', '829-555-1015'),
(NULL, 'Valeria', 'Torres', '001-0000016-6', 'valeria.torres@gmail.com', 'Jarabacoa', 'activo', '829-555-1016'),
(1, 'Ricardo', 'Vargas', '031-0000017-7', 'ricardo.vargas@gmail.com', 'Constanza', 'activo', '829-555-1017'),
(2, 'Natalia', 'Acosta', '223-0000018-8', 'natalia.acosta@gmail.com', 'Bávaro', 'activo', '829-555-1018'),
(NULL, 'Kevin', 'Peña', '402-0000019-9', 'kevin.pena@gmail.com', 'Sosúa', 'inactivo', '829-555-1019'),
(3, 'Daniela', 'Cabrera', '001-0000020-0', 'daniela.cabrera@gmail.com', 'Cotuí', 'activo', '829-555-1020'),
(4, 'Fernando', 'Mejía', '031-0000021-1', 'fernando.mejia@gmail.com', 'Monte Plata', 'activo', '829-555-1021'),
(1, 'Camila', 'Rosario', '223-0000022-2', 'camila.rosario@gmail.com', 'Haina', 'activo', '829-555-1022'),
(NULL, 'Esteban', 'Medina', '402-0000023-3', 'esteban.medina@gmail.com', 'San Juan', 'activo', '829-555-1023'),
(2, 'Paola', 'Rojas', '001-0000024-4', 'paola.rojas@gmail.com', 'Barahona', 'activo', '829-555-1024'),
(3, 'Cristian', 'Ortiz', '031-0000025-5', 'cristian.ortiz@gmail.com', 'Neiba', 'activo', '829-555-1025'),
(4, 'Isabel', 'Mendoza', '223-0000026-6', 'isabel.mendoza@gmail.com', 'El Seibo', 'activo', '829-555-1026'),
(NULL, 'Samuel', 'Gil', '402-0000027-7', 'samuel.gil@gmail.com', 'Pedernales', 'activo', '829-555-1027'),
(1, 'Karina', 'Pimentel', '001-0000028-8', 'karina.pimentel@gmail.com', 'San Francisco de Macorís', 'activo', '829-555-1028'),
(2, 'Víctor', 'Espinal', '031-0000029-9', 'victor.espinal@gmail.com', 'Monte Cristi', 'activo', '829-555-1029'),
(NULL, 'Alejandra', 'Matos', '223-0000030-0', 'alejandra.matos@gmail.com', 'Las Terrenas', 'activo', '829-555-1030');

***********************************************************************************************************************************


/* Ejecutar este cuando Jensy suba sus tablas o al menos la de alquileres */
ejemplares
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
(1, 2, 'Retraso de 3 dias en la devolucion de la pelicula.', 'retraso', 'Pagada', 150.00, '2026-07-01 10:15:00'),

(2, 5, 'La pelicula fue devuelta con la caja rota.', 'Daño', 'Pagada', 350.00, '2026-07-02 15:30:00'),

(3, 8, 'La pelicula no fue devuelta dentro del plazo establecido.', 'perdida', 'retrasada', 1200.00, '2026-07-10 09:00:00'),

(4, 11, 'Retraso de 2 dias en la entrega.', 'retraso', 'Pagada', 100.00, '2026-07-03 11:45:00'),

(5, 14, 'Disco rayado durante el alquiler.', 'Daño', 'cancelada', 400.00, '2026-07-04 13:20:00'),

(6, 17, 'Perdida de la pelicula alquilada.', 'perdida', 'retrasada', 1800.00, '2026-07-11 16:00:00'),

(7, 20, 'Retraso de una semana en la devolucion.', 'retraso', 'Pagada', 300.00, '2026-07-05 09:40:00'),

(8, 23, 'La pelicula presentaba daños fisicos al devolverla.', 'Daño', 'Pagada', 500.00, '2026-07-06 14:10:00'),

(9, 26, 'El cliente extravio la pelicula.', 'perdida', 'retrasada', 1500.00, '2026-07-12 12:30:00'),

(10, 30, 'Retraso de 5 dias en la devolucion.', 'retraso', 'Pagada', 250.00, '2026-07-07 17:25:00');