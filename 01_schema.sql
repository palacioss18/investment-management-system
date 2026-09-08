CREATE DATABASE SistemaInversiones;
USE SistemaInversiones;

-- 1. Tabla Clientes (con tipo DECIMAL para el saldo)
CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    saldo DECIMAL(18,2)
);

-- Insertar datos de prueba
INSERT Clientes(nombre,saldo) VALUES 
    ('jose',200),
    ('daniel',100),
    ('palacios',90);



-- 2. Tabla PlazosFijos
CREATE TABLE PlazosFijos(
    id_plazo_fijo INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    monto DECIMAL(18,2) NOT NULL,
    dias INT NOT NULL,
    tna DECIMAL(5,2) NOT NULL,
    fecha_creacion datetime NOT NULL DEFAULT GETDATE(),
    CONSTRAINT FK_PlazosFijos_Clientes FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);





CREATE TABLE Transacciones(
	id_transaccion INT IDENTITY(1,1) PRIMARY KEY,
	id_cliente int not null,
	tipo varchar(20) not null,
	monto decimal(18,2) not null,
	fecha datetime not null default getdate(),
	CONSTRAINT FK_Transacciones_Clientes FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);


INSERT INTO Transacciones (id_cliente , tipo,monto ) VALUES (1,'DEPOSITO',200.00),
	(2,'DEPOSITO',100.00),
	(3,'DEPOSITO',90.00);