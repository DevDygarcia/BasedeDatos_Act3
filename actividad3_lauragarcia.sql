CREATE DATABASE IF NOT EXISTS gestionEmpresa;

USE gestionEmpresa;

CREATE TABLE IF NOT EXISTS empleados (
    id INT PRIMARY KEY,
    nombre VARCHAR(255),
    edad INT
);

INSERT INTO empleados (id, nombre, edad)
VALUES 
(1, 'Oscar Garcia', 35),
(2, 'Milagros López', 31),
(3, 'Laura Garcia', 39);

SELECT * FROM empleados;

CREATE TABLE IF NOT EXISTS clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    edad INT
);

INSERT INTO clientes (nombre, edad)
VALUES 
('Samuel Garcia', 35),
('Bienvenida Garcia', 31),
('Bernarda Garcia', 39);

SELECT * FROM clientes;

CREATE TABLE IF NOT EXISTS departamentos (
    id INT PRIMARY KEY,
    nombre VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS empleados_2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255),
    edad INT,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(id)
);


INSERT INTO departamentos (id, nombre)
VALUES 
(1, 'Administración'),
(2, 'Contabilidad');


INSERT INTO empleados_2 (nombre, edad, departamento_id)
VALUES 
('Juana Mercedes', 27, 1),
('Josefina Cabrera', 32, 2), 
('Carla Cabrera', 24, 1);

SELECT * FROM empleados_2;
