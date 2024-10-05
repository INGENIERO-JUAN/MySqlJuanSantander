-- Filtrado de Datos: Personas que residen en la ciudad de "Bogotá"
SELECT persona.nombre1, persona.apellido1, ciudad.ciudad 
FROM persona
JOIN ciudad ON persona.idciudad = ciudad.idciudad
WHERE ciudad.ciudad = 'Bogotá';

-- Comparaciones Directas: Empresas con NIT mayor a 901000000
SELECT empresa.nit 
FROM empresa
WHERE empresa.nit > 901000000;

-- Comparaciones entre Campos: Personas cuyo teléfono es mayor que su documento
SELECT persona.nombre1, persona.apellido1, persona.documento, persona.telefono 
FROM persona
WHERE persona.telefono > persona.documento;

-- Condiciones Lógicas: Personas de género 'Masculino' o con correo en 'example.com'
SELECT persona.nombre1, persona.apellido1, persona.mail 
FROM persona
JOIN genero ON persona.idgenero = genero.idgenero
WHERE genero.genero = 'Masculino' OR persona.mail LIKE '%@example.com';

-- Operadores de Comparación: Personas con documento distinto de 123456789 y fecha de nacimiento anterior a 1995
SELECT persona.nombre1, persona.apellido1, persona.documento, persona.fecha_nac 
FROM persona
WHERE persona.documento != 123456789 AND persona.fecha_nac > '1989-01-01';

-- Operadores Lógicos
-- AND: Personas en Medellín con RH 'O+'
SELECT persona.nombre1, persona.apellido1 
FROM persona
JOIN ciudad ON persona.idciudad = ciudad.idciudad
JOIN rh ON persona.idrh = rh.idrh
WHERE ciudad.ciudad = 'Medellín' AND rh.rh = 'O+';

-- OR: Personas en Bogotá o con tipo de contrato 'Temporal'
SELECT persona.nombre1, persona.apellido1 
FROM persona
JOIN ciudad ON persona.idciudad = ciudad.idciudad
JOIN contrato ON persona.idinstitucion = contrato.idcontrato
JOIN tipo_contrato ON contrato.idtipo_contrato = tipo_contrato.idtipo_contrato
WHERE ciudad.ciudad = 'Bogotá' OR tipo_contrato.tipo_contrato = 'Temporal';

-- NOT: Empresas cuyo NIT no sea 900654321
SELECT empresa.nit 
FROM empresa
WHERE empresa.nit != 900654321;

-- Operadores de Conjunto
-- IN: Personas con RH 'O+' o 'A+'
SELECT persona.nombre1, persona.apellido1 
FROM persona
JOIN rh ON persona.idrh = rh.idrh
WHERE rh.rh IN ('O+', 'A+');

-- BETWEEN: Personas nacidas entre 1980 y 1990
SELECT persona.nombre1, persona.apellido1, persona.fecha_nac 
FROM persona
WHERE persona.fecha_nac BETWEEN '1980-01-01' AND '1990-12-31';

-- LIKE: Personas con correo terminando en 'gmail.com'
SELECT persona.nombre1, persona.apellido1, persona.mail 
FROM persona
WHERE persona.mail LIKE '%@gmail.com';

-- LIKE: Personas cuyo primer nombre empieza con 'A'
SELECT persona.nombre1, persona.apellido1 
FROM persona
WHERE persona.nombre1 LIKE 'A%';

-- IS NULL: Personas sin libreta militar registrada
SELECT persona.nombre1, persona.apellido1 
FROM persona
WHERE persona.libreta_militar IS NULL;

-- Orden de Resultados
-- Ordenar personas por fecha de nacimiento en orden descendente
SELECT persona.nombre1, persona.apellido1, persona.fecha_nac 
FROM persona
ORDER BY persona.fecha_nac DESC;

-- Ordenar ciudades alfabéticamente
SELECT ciudad.ciudad 
FROM ciudad
ORDER BY ciudad.ciudad ASC;


-- Consultas Avanzadas: Personas en Bogotá con RH 'A+' y correo terminando en 'example.com'
SELECT persona.nombre1, persona.apellido1, persona.mail 
FROM persona
JOIN ciudad ON persona.idciudad = ciudad.idciudad
JOIN rh ON persona.idrh = rh.idrh
WHERE ciudad.ciudad = 'Bogotá' 
  AND rh.rh = 'A+'
  AND persona.mail LIKE '%@example.com';