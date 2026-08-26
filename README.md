# 📈 Sistema de Inversiones y Rendimientos Diarios

Sistema backend desarrollado en **C# y SQL Server** diseñado para simular la gestión de inversiones financieras, colocación de plazos fijos, fondos comunes y el cálculo automático de rendimientos diarios.

El objetivo de este proyecto es practicar el desarrollo de arquitectura en capas, lógica financiera en C#, procedimientos almacenados complejas y generación de métricas analíticas mediante SQL Server.

---

## 🎯 Funcionalidades Principal

### 💰 Gestión de Plazos Fijos
* Constituir plazos fijos especificando monto, plazo (días) y Tasa Nominal Anual (TNA).
* Simulación previa de rendimientos finales e intereses a percibir.
* Cancelación anticipada y acreditación automática al vencimiento.

### 📊 Cuentas Remuneradas y Rendimientos Diarios
* Cálculo y acreditación diaria de intereses sobre saldo disponible.
* Historial de rendimientos acumulados por cliente.

### 📈 Fondos Comunes de Inversión (FCI)
* Suscripción y rescate de cuotapartes.
* Variación diaria de valor de cuotaparte y cálculo de tenencias.

---

## 🛠️ Tecnologías Utilizadas

* **Lenguaje:** C# (.NET Core / SDK)
* **Base de Datos:** SQL Server (T-SQL)
* **Acceso a Datos:** ADO.NET (Consultas parametrizadas y Stored Procedures)
* **Control de Versiones:** Git & GitHub

---

## 🗄️ Conceptos Técnicos Aplicados

* **SQL Server & T-SQL:**
  * Procedimientos Almacenados (*Stored Procedures*) para cierres diarios y acreditación de rendimientos.
  * Transacciones (`BEGIN TRANSACTION`, `COMMIT`, `ROLLBACK`) para garantizar operaciones ACID.
  * Funciones de Ventana (`ROW_NUMBER()`, `SUM() OVER(...)`) para reportes e historial financiero.
  * Manejo defensivo de errores con `TRY...CATCH`.

* **C# & Backend:**
  * Programación Orientada a Objetos (POO) y arquitectura modular.
  * Manejo estricto de tipos decimales para precisión financiera.
  * Validaciones de reglas de negocio en la capa de servicio.

---

## 📁 Estructura del Proyecto (Prevista)

```text
Sistema-Inversiones/
│
├── README.md
├── Database/
│   ├── Schema/                # Tablas, PK/FK y Restricciones
│   ├── StoredProcedures/      # Lógica de cierre y cálculos
│   └── Scripts/               # Datos de prueba
│
└── Source/
    ├── Entities/              # Modelos de dominio
    ├── Data/                  # Capa ADO.NET / Repositorios
    ├── Services/              # Reglas de negocio y lógica de tasas
    └── ConsoleApp/            # Interfaz de comandos
