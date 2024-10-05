-- Filtrado de Datos: Personas que residen en la ciudad de "Bogotá"
SELECT person.firstName, person.lastName, city.name 
FROM person
JOIN city ON person.idCity = city.idCity
WHERE city.name = 'Bogotá';

-- Comparaciones Directas: Empresas con NIT mayor a 901000000
SELECT company.taxId 
FROM company
WHERE company.taxId > 901000000;

-- Comparaciones entre Campos: Personas cuyo teléfono es mayor que su documento
SELECT person.firstName, person.lastName, person.document, person.phone 
FROM person
WHERE person.phone > person.document;

-- Condiciones Lógicas: Personas de género 'Masculino' o con correo en 'example.com'
SELECT person.firstName, person.lastName, person.email 
FROM person
JOIN gender ON person.idGender = gender.idGender
WHERE gender.name = 'Masculino' OR person.email LIKE '%@example.com';

-- Operadores de Comparación: Personas con documento distinto de 123456789 y fecha de nacimiento anterior a 1995
SELECT person.firstName, person.lastName, person.document, person.birthDate 
FROM person
WHERE person.document != 123456789 AND person.birthDate < '1995-01-01';

-- Operadores Lógicos
-- AND: Personas en Medellín con bloodType 'O+'
SELECT person.firstName, person.lastName 
FROM person
JOIN city ON person.idCity = city.idCity
JOIN bloodType ON person.idBloodType = bloodType.idBloodType
WHERE city.name = 'Medellín' AND bloodType.name = 'O+';

-- OR: Personas en Bogotá o con tipo de contrato 'Temporal'
SELECT person.firstName, person.lastName 
FROM person
JOIN city ON person.idCity = city.idCity
JOIN contract ON person.idInstitution = contract.idContract
JOIN contractType ON contract.idContractType = contractType.idContractType
WHERE city.name = 'Bogotá' OR contractType.name = 'Temporal';

-- NOT: Empresas cuyo NIT no sea 900654321
SELECT company.taxId 
FROM company
WHERE company.taxId != 900654321;

-- Operadores de Conjunto
-- IN: Personas con bloodType 'O+' o 'A+'
SELECT person.firstName, person.lastName 
FROM person
JOIN bloodType ON person.idBloodType = bloodType.idBloodType
WHERE bloodType.name IN ('O+', 'A+');

-- BETWEEN: Personas nacidas entre 1980 y 1990
SELECT person.firstName, person.lastName, person.birthDate 
FROM person
WHERE person.birthDate BETWEEN '1980-01-01' AND '1990-12-31';

-- LIKE: Personas con correo terminando en 'gmail.com'
SELECT person.firstName, person.lastName, person.email 
FROM person
WHERE person.email LIKE '%@gmail.com';

-- LIKE: Personas cuyo primer nombre empieza con 'A'
SELECT person.firstName, person.lastName 
FROM person
WHERE person.firstName LIKE 'A%';

-- IS NULL: Personas sin libreta militar registrada
SELECT person.firstName, person.lastName 
FROM person
WHERE person.idMilitaryBookletType IS NULL;

-- Orden de Resultados
-- Ordenar personas por fecha de nacimiento en orden descendente
SELECT person.firstName, person.lastName, person.birthDate 
FROM person
ORDER BY person.birthDate DESC;

-- Ordenar ciudades alfabéticamente
SELECT city.name 
FROM city
ORDER BY city.name ASC;

-- Consultas Avanzadas: Personas en Bogotá con bloodType 'A+' y correo terminando en 'example.com'
SELECT person.firstName, person.lastName, person.email 
FROM person
JOIN city ON person.idCity = city.idCity
JOIN bloodType ON person.idBloodType = bloodType.idBloodType
WHERE city.name = 'Bogotá' 
  AND bloodType.name = 'A+' 
  AND person.email LIKE '%@example.com';
