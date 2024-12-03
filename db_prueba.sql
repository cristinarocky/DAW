-- Database: db_pruebas;

DROP DATABASE IF EXISTS "db_pruebas";

CREATE DATABASE "db_pruebas"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Tabla "persona"
CREATE TABLE persona (
    id_persona SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    edad INT,
    email VARCHAR(100)
);

-- Tabla "productos"
CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50),
    stock INT
);

-- Datos para la tabla "persona"
INSERT INTO persona (nombre, apellido, edad, email) VALUES
('Juan', 'Pérez', 30, 'juan.perez@example.com'),
('María', 'Gómez', 25, 'maria.gomez@example.com'),
('Carlos', 'López', 45, 'carlos.lopez@example.com'),
('Ana', 'Martínez', 38, 'ana.martinez@example.com'),
('Luis', 'Rodríguez', 52, 'luis.rodriguez@example.com'),
('Laura', 'Sánchez', 28, 'laura.sanchez@example.com'),
('Pedro', 'Ramírez', 41, 'pedro.ramirez@example.com'),
('Sofía', 'Hernández', 33, 'sofia.hernandez@example.com'),
('Miguel', 'Díaz', 49, 'miguel.diaz@example.com'),
('Elena', 'Flores', 22, 'elena.flores@example.com');

-- Datos para la tabla "productos"
INSERT INTO productos (nombre, precio, categoria, stock) VALUES
('Laptop', 899.99, 'Electrónica', 15),
('Smartphone', 599.99, 'Electrónica', 20),
('Camiseta', 19.99, 'Ropa', 50),
('Pantalón', 39.99, 'Ropa', 30),
('Libro', 14.99, 'Libros', 100),
('Auriculares', 49.99, 'Electrónica', 25),
('Mochila', 29.99, 'Accesorios', 40),
('Reloj', 79.99, 'Accesorios', 12),
('Zapatos', 59.99, 'Calzado', 8),
('Gafas de sol', 34.99, 'Accesorios', 18);

--Consultas

SELECT * FROM persona;
SELECT * FROM productos;

SELECT nombre, apellido, edad 
FROM persona 
LIMIT 5;

