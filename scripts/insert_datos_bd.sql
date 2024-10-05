USE hoja_de_vida;

-- Insertion of data into the 'country' table
INSERT INTO country (country) VALUES 
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

-- Insertion of data into the 'department' table
INSERT INTO department (department, idcountry) VALUES 
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

-- Insertion of data into the 'city' table
INSERT INTO city (city, iddepartment) VALUES 
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

-- Insertion of data into the 'company' table
INSERT INTO company (tax_id, idcontract) VALUES 
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

-- Insertion of data into the 'job_position' table
INSERT INTO job_position (position_name, description) VALUES 
('Manager', 'Responsible for the entire operation'), 
('Analyst', 'Data analysis and reports'),
('Developer', 'Software development'),
('Accountant', 'Accounting management'),
('Salesperson', 'Sales and customer service'),
('Engineer', 'Development of engineering projects'),
('Lawyer', 'Legal advice'),
('Director', 'Direction and leadership'),
('Technician', 'Technical support and maintenance'),
('Consultant', 'Business consulting');

-- Insertion of data into the 'company_position' table
INSERT INTO company_position (idcompany, idposition) VALUES 
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

-- Insertion of data into the 'contract_type' table
INSERT INTO contract_type (contract_type) VALUES 
('Indefinite'), 
('Temporary'),
('By Work or Labor'),
('Internship'),
('Consulting');

-- Insertion of data into the 'contract' table
INSERT INTO contract (contract_code, idcontract_type) VALUES 
(12345, 1), 
(67890, 2),
(11223, 3),
(44556, 4),
(77889, 5);

-- Insertion of data into the 'document_type' table
INSERT INTO document_type (document_type) VALUES 
(1), 
(2), 
(3), 
(4), 
(5);

-- Insertion of data into the 'gender' table
INSERT INTO gender (gender) VALUES 
('Male'), 
('Female'),
('Other'),
('Prefer not to say');

-- Insertion of data into the 'military_booklet_type' table
INSERT INTO military_booklet_type (military_booklet_type) VALUES 
(1), 
(2), 
(3);

-- Insertion of data into the 'blood_type' table
INSERT INTO blood_type (blood_type) VALUES 
('O+'), 
('A+'), 
('B+'), 
('AB+'), 
('O-'), 
('A-'), 
('B-'), 
('AB-');

-- Insertion of data into the 'institution' table
INSERT INTO institution (tax_id, institution_name) VALUES 
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

-- Insertion of data into the 'personal_reference' table
INSERT INTO personal_reference (phone, email) VALUES 
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

-- Insertion of data into the 'person' table
INSERT INTO person (first_name, middle_name, last_name, second_last_name, document, iddocument_type, email, address, phone, idgender, birth_date, military_booklet, idmilitary_booklet_type, idblood_type, idcity, idinstitution)
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

-- Insertion of data into the 'person_reference' table
INSERT INTO person_reference (idpersonal_reference, idperson) VALUES 
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

-- Insertion of data into the 'institution_person' table
INSERT INTO institution_person (idinstitution, idperson) VALUES 
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
