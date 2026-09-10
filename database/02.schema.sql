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
GO

-- 4. Insertar los datos
INSERT INTO Clientes (nombre, saldo) VALUES 
    ('mariana', 900.00),
    ('Carlos', 1000.00),
    ('sofia', 2000.00),
    ('lucas', 4500.00);

INSERT INTO Transacciones (id_cliente, tipo, monto) VALUES 
    (1, 'DEPOSITO', 50000.00);