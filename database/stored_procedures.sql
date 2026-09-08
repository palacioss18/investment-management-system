USE SistemaInversiones;
GO

CREATE OR ALTER PROCEDURE sp_SimularPlazoFijo
    @Monto DECIMAL(18,2),
    @Dias INT,
    @TNA DECIMAL(5,2)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        @Monto AS MontoInvertido,
        @Dias AS DiasPlazo,
        @TNA AS TasaNominalAnual,
        (@Monto * (@TNA / 100.0) * (@Dias / 365.0)) AS InteresesAPercibir,
        (@Monto + (@Monto * (@TNA / 100.0) * (@Dias / 365.0))) AS TotalAlVencimiento;
END;
GO