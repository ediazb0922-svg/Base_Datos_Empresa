
-- Crear base de datos y usarla
CREATE DATABASE IF NOT EXISTS empresa;
USE empresa;

-- Crear tabla de cargos
CREATE TABLE cargo (
    id_cargo INT PRIMARY KEY AUTO_INCREMENT,
    nombre_cargo VARCHAR(50),
    descripcion TEXT,
    salario INT
);

-- Crear tabla de empleados
CREATE TABLE empleados (
    id_empl INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    cargo VARCHAR(50),
    salario INT
);

-- Insertar datos en la tabla cargo
INSERT INTO cargo (nombre_cargo, descripcion, salario) VALUES
('Gerente', 'Responsable general de la empresa', 500000),
('Asistente', 'Soporte administrativo', 250000),
('Desarrollador', 'Desarrolla software', 400000);

-- Insertar datos en la tabla empleados
INSERT INTO empleados (nombre, cargo, salario) VALUES
('Juan Pérez', 'Gerente', 7500000),
('Ana Gómez', 'Desarrollador', 6000000),
('Luis Castro', 'Proyectos', 10000000);

-- Consultas solicitadas

-- Ver todos los empleados
SELECT * FROM empleados;

-- Ver todos los cargos
SELECT * FROM cargo;

-- Empleados con salario mayor a 7 millones
SELECT * FROM empleados WHERE salario > 7000000;

-- Aumentar salario de Ana Gómez
UPDATE empleados SET salario = 6500000 WHERE nombre = 'Ana Gómez';

-- Eliminar a Luis Castro
DELETE FROM empleados WHERE nombre = 'Luis Castro';

-- Ver empleados con cargo 'Desarrollador'
SELECT * FROM empleados WHERE cargo = 'Desarrollador';

-- Insertar nueva empleada Marta López
INSERT INTO empleados (nombre, cargo, salario) VALUES
('Marta López', 'Asistente', 3000000);
