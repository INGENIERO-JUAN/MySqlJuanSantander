use hoja_de_vida;

-- Inserción de datos en la tabla 'pais'
INSERT INTO pais (pais) VALUES 
('Colombia'), 
('Argentina'), 
('Brasil'), 
('México'), 
('Chile'), 
('Perú'), 
('Ecuador'), 
('Venezuela'), 
('Bolivia'), 
('Paraguay');

-- Inserción de datos en la tabla 'departamento'
INSERT INTO departamento (departamento, idpais) VALUES 
('Antioquia', 1), 
('Cundinamarca', 2), 
('Buenos Aires', 3),
('São Paulo', 4),
('Cde México', 5),
('Santiago', 6),
('Lima', 7),
('Quito', 8),
('Caracas', 9),
('La Paz', 10);

-- Inserción de datos en la tabla 'ciudad'
INSERT INTO ciudad (ciudad, iddepartamento) VALUES 
('Medellín', 1), 
('Bogotá', 2), 
('La Plata', 3),
('São Paulo', 4),
('CdMéxico', 5),
('Santiago de Chile', 6),
('Lima', 7),
('Quito', 8),
('Caracas', 9),
('La Paz', 10);


-- Inserción de datos en la tabla 'empresa'
INSERT INTO empresa (nit, idcontrato) VALUES 
(900123456, 1), 
(900654321, 2), 
(900987654, 3), 
(901234567, 4),
(901345678, 5),
(901456789, 6),
(901567890, 7),
(901678901, 8),
(901789012, 9),
(901890123, 10);

-- Inserción de datos en la tabla 'cargo'
INSERT INTO cargo (cargo, descripcion) VALUES 
('Gerente', 'Responsable de toda la operación'), 
('Analista', 'Análisis de datos e informes'),
('Desarrollador', 'Desarrollo de software'),
('Contador', 'Manejo de contabilidad'),
('Vendedor', 'Ventas y atención al cliente'),
('Ingeniero', 'Desarrollo de proyectos de ingeniería'),
('Abogado', 'Asesoría legal'),
('Director', 'Dirección y liderazgo'),
('Técnico', 'Soporte técnico y mantenimiento'),
('Consultor', 'Consultoría empresarial');

-- Inserción de datos en la tabla 'empresa_cargo'
INSERT INTO empresa_cargo (idempresa, idcargo) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserción de datos en la tabla 'tipo_contrato'
INSERT INTO tipo_contrato (tipo_contrato) VALUES 
('Indefinido'), 
('Temporal'),
('Por Obra o Labor'),
('Pasantía'),
('Consultoría');

-- Inserción de datos en la tabla 'contrato'
INSERT INTO contrato (codigo_contrato, idtipo_contrato) VALUES 
(12345, 1), 
(67890, 2),
(11223, 3),
(44556, 4),
(77889, 5);

-- Inserción de datos en la tabla 'tipo_documento'
INSERT INTO tipo_documento (tipo_documento) VALUES 
(1), 
(2), 
(3), 
(4), 
(5);

-- Inserción de datos en la tabla 'genero'
INSERT INTO genero (genero) VALUES 
('Masculino'), 
('Femenino'),
('Otro'),
('Prefiero no decir');

-- Inserción de datos en la tabla 'tipo_libreta'
INSERT INTO tipo_libreta (tipo_libreta) VALUES 
(1), 
(2), 
(3);

-- Inserción de datos en la tabla 'rh'
INSERT INTO rh (rh) VALUES 
('O+'), 
('A+'), 
('B+'), 
('AB+'), 
('O-'), 
('A-'), 
('B-'), 
('AB-');

-- Inserción de datos en la tabla 'institucion'
INSERT INTO institucion (nit, institucion) VALUES 
(800123456, 1), 
(800654321, 2), 
(800987654, 3), 
(801234567, 4), 
(801345678, 5),
(801456789, 6),
(801567890, 7),
(801678901, 8),
(801789012, 9),
(801890123, 10);

-- Inserción de datos en la tabla 'referencia_personal'
INSERT INTO referencia_personal (telefono, mail) VALUES 
('3123456789', 'juan@example.com'), 
('3109876543', 'maria@example.com'), 
('3001234567', 'pedro@example.com'), 
('3204567890', 'ana@example.com'),
('3156789012', 'laura@example.com'),
('3198765432', 'carlos@example.com'),
('3112345678', 'luis@example.com'),
('3134567890', 'andrea@example.com'),
('3145678901', 'diana@example.com'),
('3167890123', 'jose@example.com');

-- Inserción de datos en la tabla 'persona'
INSERT INTO persona (nombre1, nombre2, apellido1, apellido2, documento, idtipo_documento, mail, direccion, telefono, idgenero, fecha_nac, libreta_militar, idtipo_libreta, idrh, idciudad, idinstitucion)
VALUES 
('Juan', 'Carlos', 'Pérez', 'Gómez', 123456789, 1, 'juan@example.com', 'Calle 123', 3123456789, 1, '1990-05-15', '12345', 1, 1, 1, 1),
('María', 'Elena', 'Rodríguez', 'López', 987654321, 2, 'maria@example.com', 'Carrera 456', 3109876543, 2, '1992-08-10', '67890', 3, 2, 1, 2),
('Pedro', 'Luis', 'Sánchez', 'Torres', 112233445, 3, 'pedro@example.com', 'Avenida 789', 3001234567, 1, '1985-12-25', '34567', 3, 3, 3, 3),
('Ana', 'Isabel', 'Martínez', 'Hernández', 223344556, 4, 'ana@example.com', 'Calle 111', 3204567890, 2, '1995-03-12', '45678', 3, 2, 2, 4),
('Laura', 'Patricia', 'Ramírez', 'Moreno', 334455667, 5, 'laura@example.com', 'Carrera 222', 3156789012, 2, '1998-07-23', '56789', 2, 5, 4, 5),
('Carlos', 'Andrés', 'García', 'Rivas', 445566778, 1, 'carlos@example.com', 'Avenida 333', 3198765432, 1, '1993-11-14', '67890', 3, 6, 1, 6),
('Luis', 'Fernando', 'Fernández', 'Ruiz', 556677889, 2, 'luis@example.com', 'Calle 444', 3112345678, 1, '1987-09-09', '78901', 1, 6, 7, 7),
('Andrea', 'Carolina', 'Suárez', 'Díaz', 667788990, 3, 'andrea@example.com', 'Carrera 555', 3134567890, 2, '1991-06-01', '89012', 2, 2, 8, 8),
('Diana', 'Paola', 'Vargas', 'Castillo', 778899001, 4, 'diana@example.com', 'Avenida 666', 3145678901, 2, '1996-10-27', '90123', 3, 4, 9, 9),
('José', 'Antonio', 'Ortiz', 'Mejía', 889900112, 5, 'jose@example.com', 'Calle 777', 3167890123, 1, '1982-02-18', '01234', 1, 2, 10, 10);

-- Inserción de datos en la tabla 'persona_referencia'
INSERT INTO persona_referencia (idreferencia_personal, idpersona) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Inserción de datos en la tabla 'institucion_persona'
INSERT INTO institucion_persona (idinstitucion, idpersona) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);