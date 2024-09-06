use hoja_de_vida;


-- Filtrado de Datos: Personas que residen en la ciudad de "Bogotá"
SELECT nombre1, apellido1, ciudad 
FROM persona p
JOIN ciudad c ON p.idciudad = c.idciudad
WHERE c.ciudad = 'Bogotá';

-- Comparaciones Directas: Empresas con NIT mayor a 901000000
SELECT nit 
FROM empresa
WHERE nit > 901000000;

-- Comparaciones entre Campos: Personas cuyo teléfono es mayor que su documento
SELECT nombre1, apellido1, documento, telefono 
FROM persona
WHERE telefono > documento;

-- Condiciones Lógicas: Personas de género 'Masculino' o con correo en 'example.com'
SELECT nombre1, apellido1, mail 
FROM persona p
JOIN genero g ON p.idgenero = g.idgenero
WHERE g.genero = 'Masculino' OR p.mail LIKE '%@example.com';

-- Operadores de Comparación: Personas con documento distinto de 123456789 y fecha de nacimiento anterior a 1995
SELECT nombre1, apellido1, documento, fecha_nac 
FROM persona
WHERE documento != 123456789 AND fecha_nac < '1995-01-01';

-- Operadores Lógicos
-- AND: Personas en Medellín con RH 'O+'
SELECT nombre1, apellido1 
FROM persona p
JOIN ciudad c ON p.idciudad = c.idciudad
JOIN rh r ON p.idrh = r.idrh
WHERE c.ciudad = 'Medellín' AND r.rh = 'O+';

-- OR: Personas en Bogotá o con tipo de contrato 'Temporal'
SELECT nombre1, apellido1 
FROM persona p
JOIN ciudad c ON p.idciudad = c.idciudad
JOIN contrato con ON p.idinstitucion = con.idcontrato
JOIN tipo_contrato tc ON con.idtipo_contrato = tc.idtipo_contrato
WHERE c.ciudad = 'Bogotá' OR tc.tipo_contrato = 'Temporal';

-- NOT: Empresas cuyo NIT no sea 900654321
SELECT nit 
FROM empresa
WHERE nit != 900654321;

-- Operadores de Conjunto
-- IN: Personas con RH 'O+' o 'A+'
SELECT nombre1, apellido1 
FROM persona p
JOIN rh r ON p.idrh = r.idrh
WHERE r.rh IN ('O+', 'A+');

-- BETWEEN: Personas nacidas entre 1980 y 1990
SELECT nombre1, apellido1, fecha_nac 
FROM persona
WHERE fecha_nac BETWEEN '1980-01-01' AND '1990-12-31';

-- LIKE: Personas con correo terminando en 'gmail.com'
SELECT nombre1, apellido1, mail 
FROM persona
WHERE mail LIKE '%@gmail.com';

-- LIKE: Personas cuyo primer nombre empieza con 'A'
SELECT nombre1, apellido1 
FROM persona
WHERE nombre1 LIKE 'A%';

-- IS NULL: Personas sin libreta militar registrada
SELECT nombre1, apellido1 
FROM persona
WHERE libreta_militar IS NULL;

-- Orden de Resultados
-- Ordenar personas por fecha de nacimiento en orden descendente
SELECT nombre1, apellido1, fecha_nac 
FROM persona
ORDER BY fecha_nac DESC;

-- Ordenar ciudades alfabéticamente
SELECT ciudad 
FROM ciudad
ORDER BY ciudad ASC;

-- Consultas Avanzadas: Personas en Bogotá con RH 'A+' y correo terminando en 'example.com'
SELECT nombre1, apellido1, mail 
FROM persona p
JOIN ciudad c ON p.idciudad = c.idciudad
JOIN rh r ON p.idrh = r.idrh
WHERE c.ciudad = 'Bogotá' 
  AND r.rh = 'A+'
  AND p.mail LIKE '%@example.com';
