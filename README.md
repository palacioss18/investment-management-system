# 📈 Sistema de Inversiones y Rendimientos Diarios

Sistema backend desarrollado en **Java y SQL Server** diseñado para simular la gestión de inversiones financieras, colocación de plazos fijos, cuentas remuneradas y cálculo automático de rendimientos diarios.

Este proyecto está enfocado en aplicar desarrollo en capas, manejo preciso de operaciones financieras con `BigDecimal`, integración mediante **JDBC** (consultas parametrizadas y ejecución de Stored Procedures) y control de versiones con Git.

---

## 🎯 Funcionalidades Principales

### 💰 Gestión de Plazos Fijos
* Constituir plazos fijos especificando monto, plazo (días) y Tasa Nominal Anual (TNA).
* Simulación previa de rendimientos finales e intereses a percibir.
* Cancelación anticipada y acreditación automática al vencimiento.

### 📊 Cuentas Remuneradas y Rendimientos Diarios
* Cálculo y acreditación diaria de intereses sobre saldo disponible mediante Stored Procedures.
* Historial de rendimientos acumulados por cliente.

### 📈 Fondos Comunes de Inversión (FCI)
* Suscripción y rescate de cuotapartes.
* Variación diaria de valor de cuotaparte y cálculo de tenencias.

---

## 🛠️ Tecnologías Utilizadas

* **Lenguaje:** Java 17+ (Core / SE)
* **Base de Datos:** SQL Server (T-SQL)
* **Acceso a Datos:** JDBC (`PreparedStatement`, `CallableStatement`, `DriverManager`)
* **Control de Versiones:** Git & GitHub

---

## 🗄️ Conceptos Técnicos Aplicados

* **SQL Server & T-SQL:**
  * Procedimientos Almacenados (*Stored Procedures*) para procesos batch de cierres diarios y acreditación de rendimientos.
  * Transacciones complejas (`BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`) para asegurar consistencia ACID.
  * Funciones de Ventana (`ROW_NUMBER()`, `SUM() OVER(...)`) para reportes y extractos consolidados.
  * Manejo defensivo de errores con bloques `TRY...CATCH`.

* **Java & Backend:**
  * Programación Orientada a Objetos (POO), encapsulamiento y arquitectura modular por capas.
  * Manejo de precisión monetaria utilizando `BigDecimal` y `RoundingMode.HALF_UP`.
  * Patrón de diseño **DAO (Data Access Object)** para desacoplar la base de datos de la lógica de negocio.
  * Manejo de excepciones personalizadas (`SQLException` wrapper) y gestión de conexiones.

---

## 📁 Estructura del Proyecto

```text
sistema-inversiones/
│
├── README.md
├── database/
│   ├── schema.sql              # Definición de tablas, PK/FK y constraints
│   ├── stored_procedures.sql   # SPs para cierres, cálculo TNA y acreditaciones
│   └── seed_data.sql           # Datos iniciales para pruebas
│
└── src/
    └── com/
        └── inversiones/
            ├── config/         # Conexión JDBC (DatabaseConnection.java)
            ├── model/          # Entidades de dominio (Cliente, PlazoFijo, Cuenta)
            ├── dao/            # Interfaces e implementaciones JDBC (ClienteDAO, PlazoFijoDAO)
            ├── service/        # Reglas de negocio y fórmulas de tasas
            └── app/            # Aplicación de consola / Menú interactivo
