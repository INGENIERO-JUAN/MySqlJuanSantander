-- Filtrado de Datos: Personas que residen en la ciudad de "Bogotá"
SELECT person.first_name, person.last_name, city.city 
FROM person
JOIN city ON person.idcity = city.idcity
WHERE city.city = 'Bogotá';

-- Comparaciones Directas: Empresas con NIT mayor a 901000000
SELECT company.tax_id 
FROM company
WHERE company.tax_id > 901000000;

-- Comparaciones entre Campos: Personas cuyo teléfono es mayor que su documento
SELECT person.first_name, person.last_name, person.document, person.phone 
FROM person
WHERE person.phone > person.document;

-- Condiciones Lógicas: Personas de género 'Masculino' o con correo en 'example.com'
SELECT person.first_name, person.last_name, person.email 
FROM person
JOIN gender ON person.idgender = gender.idgender
WHERE gender.gender = 'Masculino' OR person.email LIKE '%@example.com';

-- Operadores de Comparación: Personas con documento distinto de 123456789 y fecha de nacimiento anterior a 1995
SELECT person.first_name, person.last_name, person.document, person.birth_date 
FROM person
WHERE person.document != 123456789 AND person.birth_date > '1989-01-01';

-- Operadores Lógicos
-- AND: Personas en Medellín con blood_type 'O+'
SELECT person.first_name, person.last_name 
FROM person
JOIN city ON person.idcity = city.idcity
JOIN blood_type ON person.idblood_type = blood_type.idblood_type
WHERE city.city = 'Medellín' AND blood_type.blood_type = 'O+';

-- OR: Personas en Bogotá o con tipo de contrato 'Temporal'
SELECT person.first_name, person.last_name 
FROM person
JOIN city ON person.idcity = city.idcity
JOIN contract ON person.idinstitution = contract.idcontract
JOIN contract_type ON contract.idcontract_type = contract_type.idcontract_type
WHERE city.city = 'Bogotá' OR contract_type.contract_type = 'Temporal';

-- NOT: Empresas cuyo NIT no sea 900654321
SELECT company.tax_id 
FROM company
WHERE company.tax_id != 900654321;

-- Operadores de Conjunto
-- IN: Personas con blood_type 'O+' o 'A+'
SELECT person.first_name, person.last_name 
FROM person
JOIN blood_type ON person.idblood_type = blood_type.idblood_type
WHERE blood_type.blood_type IN ('O+', 'A+');

-- BETWEEN: Personas nacidas entre 1980 y 1990
SELECT person.first_name, person.last_name, person.birth_date 
FROM person
WHERE person.birth_date BETWEEN '1980-01-01' AND '1990-12-31';

-- LIKE: Personas con correo terminando en 'gmail.com'
SELECT person.first_name, person.last_name, person.email 
FROM person
WHERE person.email LIKE '%@gmail.com';

-- LIKE: Personas cuyo primer nombre empieza con 'A'
SELECT person.first_name, person.last_name 
FROM person
WHERE person.first_name LIKE 'A%';

-- IS NULL: Personas sin libreta militar registrada
SELECT person.first_name, person.last_name 
FROM person
WHERE person.idmilitary_booklet_type IS NULL;

-- Orden de Resultados
-- Ordenar personas por fecha de nacimiento en orden descendente
SELECT person.first_name, person.last_name, person.birth_date 
FROM person
ORDER BY person.birth_date DESC;

-- Ordenar ciudades alfabéticamente
SELECT city.city 
FROM city
ORDER BY city.city ASC;

-- Consultas Avanzadas: Personas en Bogotá con blood_type 'A+' y correo terminando en 'example.com'
SELECT person.first_name, person.last_name, person.email 
FROM person
JOIN city ON person.idcity = city.idcity
JOIN blood_type ON person.idblood_type = blood_type.idblood_type
WHERE city.city = 'Bogotá' 
  AND blood_type.blood_type = 'A+' 
  AND person.email LIKE '%@example.com';


