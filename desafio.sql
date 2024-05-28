psql -U postgres

CREATE DATABASE desafio_alfredo_ramirez_727;

\c desafio_alfredo_ramirez_727; --  Ahora está conectado a la base de datos

-- Crea una tabla llamada clientes, con una columna llamada email de tipo
-- varchar(50), una columna llamada nombre de tipo varchar sin limitación, una
-- columna llamada teléfono de tipo varchar(16), un campo llamado empresa de
-- tipo varchar(50) y una columna de tipo smallint.

-- smallint es un tipo de dato numérico en los sistemas de gestión de bases de datos relacionales. 
--Representa un número entero con un rango de valores más pequeño en comparación con otros tipos de datos
-- enteros, como int o bigint.

CREATE TABLE clientes (email VARCHAR(50),nombre VARCHAR,telefono VARCHAR(16),empresa VARCHAR(50),prioridad SMALLINT);

-- Ingresa 5 clientes distintos con distintas prioridades, el resto de los valores los puedes inventar.
    

INSERT INTO clientes (email, nombre, telefono, empresa, prioridad) VALUES ('cliente1@example.com', 'juanita Perez', '56992343423', 'Empresa A', 5), ('cliente2@example.com', 'pedro Piedra', '56998765432', 'Empresa B', 8), ('cliente3@example.com', 'anita Soto', '56991122233', 'Empresa C', 10), ('cliente4@example.com', 'Pablo Neruda', '56991155566', 'Empresa C', 9), ('cliente5@example.com', 'Marcelo salas', '56997232891', 'Empresa A', 7);
-- Seleccionar los tres clientes de mayor prioridad
SELECT * FROM clientes ORDER BY prioridad DESC LIMIT 3;

--Selecciona de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros
SELECT * FROM clientes WHERE prioridad=10 OR empresa = 'Empresa C' LIMIT 2;

-- salir de postgres
\q