-- Insertar en generos
INSERT INTO generos (nombre, descripcion) VALUES
('Acción', 'Películas con mucha adrenalina, persecuciones y combates.'),
('Ciencia Ficción', 'Historias basadas en futuros alternativos, tecnología avanzada o el espacio.'),
('Drama', 'Enfoque en el desarrollo de personajes y situaciones emocionales realistas.'),
('Comedia', 'Diseñadas para hacer reír al público mediante el humor y situaciones absurdas.'),
('Terror', 'Películas que buscan generar miedo, tensión y suspenso.');

-- Insertar en formatos
INSERT INTO formatos (nombre, precio_base_alquiler) VALUES
('Box Set Coleccionista (Trilogías/Sagas)', 950.00),
('Edición Especial Steelbook 4K', 850.00),
('8K Ultra HD Blu-ray Importado', 750.00),
('VR Experience 360 (Pase Premium)', 600.00),
('Estreno VOD 4K (Streaming Premium)', 550.00),
('4K Ultra HD Estándar', 350.00),
('Blu-ray', 250.00),
('3D Blu-ray', 250.00),
('VOD HD (Streaming)', 200.00),
('DVD', 150.00),
('Edición Coleccionista DVD', 150.00),
('LaserDisc', 125.00),
('UMD (Sony PSP)', 100.00),
('Mini DVD', 100.00),
('VHS', 75.00),
('Betamax', 75.00),
('CD de Video (VCD)', 50.00);

-- Insert en peliculas
INSERT INTO peliculas (titulo, sinopsis, anio_lanzamiento, duracion_minutos, clasificacion) VALUES
('Matrix', 'Un programador descubre que el mundo es una simulación controlada por máquinas.', 1999, 136, 'R'),
('El Padrino', 'La vida de una poderosa familia del crimen organizado en Nueva York.', 1972, 175, 'R'),
('Pulp Fiction', 'Las vidas de varios criminales se entrelazan en una serie de eventos violentos y cómicos.', 1994, 154, 'R'),
('El Rey León', 'Un joven león debe reclamar su lugar como rey tras la traición de su tío.', 1994, 88, 'G'),
('Volver al Futuro', 'Un adolescente viaja accidentalmente al pasado en un auto modificado.', 1985, 116, 'PG'),
('Gladiador', 'Un general romano traicionado busca venganza como gladiador en el Coliseo.', 2000, 155, 'R'),
('Interstellar', 'Un grupo de astronautas viaja a través de un agujero de gusano para salvar a la humanidad.', 2014, 169, 'PG-13'),
('El Exorcista', 'Una madre busca ayuda médica y espiritual cuando su hija es poseída por un demonio.', 1973, 122, 'R'),
('Superbad', 'Dos amigos de la preparatoria intentan conseguir alcohol para una fiesta.', 2007, 113, 'R'),
('Forrest Gump', 'Las vivencias de un hombre con discapacidad intelectual durante la historia de EE.UU.', 1994, 142, 'PG-13'),
('Terminator 2', 'Un cyborg del futuro es enviado para proteger al joven John Connor.', 1991, 137, 'R'),
('El Club de la Pelea', 'Un empleado de oficina insomne y un vendedor de jabón forman un club clandestino.', 1999, 139, 'R'),
('Shrek', 'Un ogro gruñón emprende una misión para rescatar a una princesa.', 2001, 90, 'G'),
('Inception', 'Un ladrón que roba secretos a través del subconsciente intenta implantar una idea.', 2010, 148, 'PG-13'),
('El Conjuro', 'Investigadores paranormales ayudan a una familia aterrorizada por una presencia oscura.', 2013, 112, 'R'),
('Jurassic Park', 'Un parque temático con dinosaurios clonados sufre una falla de seguridad catastrófica.', 1993, 127, 'PG-13'),
('Batman: El Caballero de la Noche', 'Batman se enfrenta al Joker, quien busca desatar el caos en Gotham.', 2008, 152, 'PG-13'),
('Bastardos Sin Gloria', 'Un grupo de soldados judíos-estadounidenses planea asesinar a líderes nazis.', 2009, 153, 'R'),
('¿Qué pasó ayer?', 'Tres amigos buscan a su compañero desaparecido tras una salvaje despedida de soltero.', 2009, 100, 'R'),
('Psicosis', 'Una secretaria huye con dinero y se hospeda en un motel gestionado por un joven extraño.', 1960, 109, 'R');

-- Insertar en peliculas_generos
INSERT INTO peliculas_generos (id_pelicula, id_genero) VALUES
(1, 2), -- Matrix (Ciencia Ficción)
(1, 1), -- Matrix (Acción)
(2, 3), -- El Padrino (Drama)
(3, 3), -- Pulp Fiction (Drama)
(4, 3), -- El Rey León (Drama)
(5, 2), -- Volver al Futuro (Ciencia Ficción)
(5, 4), -- Volver al Futuro (Comedia)
(6, 1), -- Gladiador (Acción)
(6, 3), -- Gladiador (Drama)
(7, 2), -- Interstellar (Ciencia Ficción)
(8, 5), -- El Exorcista (Terror)
(9, 4), -- Superbad (Comedia)
(10, 3), -- Forrest Gump (Drama)
(10, 4), -- Forrest Gump (Comedia)
(11, 1), -- Terminator 2 (Acción)
(11, 2), -- Terminator 2 (Ciencia Ficción)
(12, 3), -- El Club de la Pelea (Drama)
(13, 4), -- Shrek (Comedia)
(14, 2), -- Inception (Ciencia Ficción)
(14, 1), -- Inception (Acción)
(15, 5), -- El Conjuro (Terror)
(16, 2), -- Jurassic Park (Ciencia Ficción)
(17, 1), -- Batman (Acción)
(17, 3), -- Batman (Drama)
(18, 1), -- Bastardos Sin Gloria (Acción)
(19, 4), -- ¿Qué pasó ayer? (Comedia)
(20, 5); -- Psicosis (Terror)

-- Insertar en ejemplares
INSERT INTO ejemplares (id_pelicula, id_formatos, estado, codigo_barras) VALUES
(1, 2, 'disponible', 'BAR-MAT-001'), -- Matrix en DVD
(1, 3, 'disponible', 'BAR-MAT-002'), -- Matrix en Blu-ray
(2, 1, 'disponible', 'BAR-PAD-001'), -- El Padrino en VHS
(2, 2, 'alquilado', 'BAR-PAD-002'),   -- El Padrino en DVD
(3, 2, 'disponible', 'BAR-PUL-001'), -- Pulp Fiction en DVD
(4, 1, 'disponible', 'BAR-REY-001'), -- El Rey León en VHS
(5, 1, 'disponible', 'BAR-VOL-001'), -- Volver al Futuro en VHS
(5, 2, 'disponible', 'BAR-VOL-002'), -- Volver al Futuro en DVD
(6, 2, 'mantenimiento','BAR-GLA-001'),-- Gladiador en DVD (Rayado)
(7, 3, 'disponible', 'BAR-INT-001'), -- Interstellar en Blu-ray
(8, 1, 'disponible', 'BAR-EXO-001'), -- El Exorcista en VHS
(9, 2, 'disponible', 'BAR-SUP-001'), -- Superbad en DVD
(10, 2, 'alquilado', 'BAR-FOR-001'),  -- Forrest Gump en DVD
(11, 2, 'disponible', 'BAR-TER-001'), -- Terminator 2 en DVD
(12, 2, 'disponible', 'BAR-CLU-001'), -- El Club de la Pelea en DVD
(13, 2, 'disponible', 'BAR-SHR-001'), -- Shrek en DVD
(14, 3, 'disponible', 'BAR-INC-001'), -- Inception en Blu-ray
(15, 3, 'disponible', 'BAR-CON-001'), -- El Conjuro en Blu-ray
(16, 2, 'disponible', 'BAR-JUR-001'), -- Jurassic Park en DVD
(17, 3, 'disponible', 'BAR-BAT-001'), -- Batman en Blu-ray
(18, 3, 'disponible', 'BAR-BAS-001'), -- Bastardos Sin Gloria en Blu-ray
(19, 2, 'disponible', 'BAR-PAS-001'), -- ¿Qué pasó ayer? en DVD
(20, 1, 'disponible', 'BAR-PSI-001'); -- Psicosis en VHS

-- Insertar membresias
INSERT INTO membresias (id_membresia, nombre, descripcion, precio, duracion_dias, limite_alquileres, descuento, estado) VALUES
(1, 'Básica', 'Membresía estándar para alquileres ocasionales.', 300.00, 30, 3, 0.00, 'activa'),
(2, 'Premium', 'Membresía con mayor límite de alquileres y descuentos.', 600.00, 30, 6, 10.00, 'activa'),
(3, 'VIP', 'Membresía exclusiva para clientes frecuentes.', 1200.00, 60, 10, 20.00, 'activa');

-- Insertar clientes
INSERT INTO clientes (id_cliente, id_membresia, nombre, apellido, cedula, correo, direccion, estado, telefono) VALUES
(1, 1, 'William', 'Cruz', '330-0000000-0', 'william.cruz@example.com', 'Villa Francisca 2da', 'activo', '829-999-9999'),
(2, 2, 'Ana', 'Pérez', '402-1234567-8', 'ana.perez@example.com', 'Ensanche La Fe', 'activo', '809-555-1111'),
(3, 1, 'Luis', 'García', '402-7654321-9', 'luis.garcia@example.com', 'Santo Domingo Norte', 'activo', '809-555-2222'),
(4, 3, 'Marta', 'Sánchez', '402-4567890-1', 'marta.sanchez@example.com', 'Bella Vista', 'activo', '809-555-3333');

-- Insertar empleados
INSERT INTO empleados (id_empleado, nombre, apellido, rol, telefono, direccion, tipo_documento, documento_id, fecha_nacimiento, sueldo_base, estado) VALUES
(1, 'William', 'Cruz', 'Administrador', '829-999-9999', 'Villa Francisca', 'cedula', '330-0000000-0', '2004-05-15', 45000, 'activo'),
(2, 'Carlos', 'Ramírez', 'Atención al cliente', '809-555-4444', 'Los Mina', 'cedula', '402-1111111-1', '1992-03-20', 28000, 'activo'),
(3, 'Elena', 'Torres', 'Cajero', '809-555-5555', 'Piantini', 'cedula', '402-2222222-2', '1995-08-10', 25000, 'activo');

-- Insertar alquileres
INSERT INTO alquileres (id_alquiler, id_cliente, id_empleado, fecha_alquiler, fecha_devolucion, estado, total) VALUES
(1, 1, 1, '2026-06-20 10:00:00', '2026-06-25 18:00:00', 'devuelto', 300.00),
(2, 2, 2, '2026-07-01 14:00:00', NULL, 'activo', 250.00),
(3, 3, 3, '2026-06-28 09:30:00', '2026-07-02 12:00:00', 'devuelto', 150.00),
(4, 4, 1, '2026-07-03 16:00:00', NULL, 'activo', 400.00);

-- Insertar detalle de alquiler
INSERT INTO detalleAlquiler (id_detalle, id_alquiler, id_ejemplar, precio, fecha_devolucion) VALUES
(1, 1, 4, 150.00, '2026-06-25 18:00:00'),
(2, 2, 8, 250.00, NULL),
(3, 3, 13, 150.00, '2026-07-02 12:00:00'),
(4, 4, 1, 200.00, NULL),
(5, 4, 16, 200.00, NULL);

-- Insertar pagos
INSERT INTO pagos (id_pago, id_alquiler, monto, fecha_pago) VALUES
(1, 1, 300.00, '2026-06-25 18:30:00'),
(2, 2, 250.00, '2026-07-01 14:30:00'),
(3, 3, 150.00, '2026-07-02 12:30:00');

-- Insertar penalizaciones
INSERT INTO penalizaciones (id_penalizacion, id_alquiler, id_cliente, descripcion, tipo_penalizacion, estado, monto_penalizacion, fecha_pago) VALUES
(1, 2, 2, 'El cliente devolvió la película con retraso y se aplicó una multa por el tiempo excedido.', 'retraso', 'retrasada', 100.00, '2026-07-04 10:00:00'),
(2, 4, 4, 'Se reportó daño en el disco de la película alquilada.', 'Daño', 'Pagada', 250.00, '2026-07-03 17:30:00');

;