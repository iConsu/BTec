SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CrearServicios] @IdServicio AS TINYINT OUTPUT
, @IdGuid AS UNIQUEIDENTIFIER OUTPUT
, @Servicio AS VARCHAR(50) = ''
, @IdEstaActivo AS BIT = 0
, @IdAdminCreacion AS TINYINT = 0
, @NumeroControlCreacion AS VARCHAR(9) = ''
, @FechaCreacion AS DATETIME = NULL
, @IdAdminActualizacion AS TINYINT = 0
, @NumeroControlActualizacion AS VARCHAR(9) = ''
, @FechaActualizacion AS DATETIME = NULL
AS
BEGIN
  IF @IdServicio <> 0
	AND @IdAdminCreacion <> 0
    AND @IdAdminActualizacion <> 0
    AND @FechaCreacion <> NULL
    AND @FechaActualizacion <> NULL
  BEGIN

    SET @IdGuid = NEWID();

    INSERT INTO dbo.SERVICIOS (IdGuid,
    Servicio,
    IdEstaActivo,
    IdAdminCreacion,
    FechaCreacion,
    IdAdminActualizacion,
    FechaActualizacion)
      VALUES (@IdGuid, @Servicio, @IdEstaActivo, @IdAdminCreacion, @FechaCreacion, @IdAdminActualizacion, @FechaActualizacion);

    SET @IdServicio = @@IDENTITY;
  END
  ELSE
  BEGIN
    SET @IdServicio = 0;
    SET @IdGuid = NULL;
  END
END
GO
