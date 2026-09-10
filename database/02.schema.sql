USE SistemaInversiones;
GO

-- 1. Eliminar primero las tablas dependientes (por las FK) y luego Clientes
DROP TABLE IF EXISTS Transacciones;
DROP TABLE IF EXISTS PlazosFijos;
DROP TABLE IF EXISTS Clientes;
GO

-- 2. Crear de nuevo la tabla Clientes
CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    saldo DECIMAL(18,2)
);

-- 3. Crear la tabla Transacciones
CREATE TABLE Transacciones (
    id_transaccion INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    monto DECIMAL(18,2) NOT NULL,
    fecha DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_Transacciones_Clientes FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

CREATE TABLE PlazosFijos (
    id_plazo_fijo INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    monto DECIMAL(18,2) NOT NULL,
    dias INT NOT NULL,
    tna DECIMAL(5,2) NOT NULL,
    fecha_creacion DATETIME NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_PlazosFijos_Clientes FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

GO

-- 1. Insertar más clientes de prueba (INSERT)
INSERT INTO Clientes (nombre, saldo) VALUES 
('Mariana', 350000.00),
('Carlos', 50000.00),
('Sofia', 1200000.00),
('Lucas', 0.00);

-- 2. Insertar transacciones variadas
INSERT INTO Transacciones (id_cliente, tipo, monto) VALUES 
(1, 'DEPOSITO', 50000.00),
(1, 'RETIRO', 10000.00),
(2, 'DEPOSITO', 50000.00),
(3, 'DEPOSITO', 200000.00),
(4, 'DEPOSITO', 350000.00),
(6, 'DEPOSITO', 1200000.00);

-- 3. Cargar varios plazos fijos
INSERT INTO PlazosFijos (id_cliente, monto, dias, tna) VALUES 
(1, 30000.00, 30, 38.00),
(1, 50000.00, 60, 40.00),
(3, 100000.00, 30, 38.00),
(4, 250000.00, 90, 42.00),
(6, 500000.00, 30, 38.00);