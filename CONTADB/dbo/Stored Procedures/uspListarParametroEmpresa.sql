-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 8/04/2016
-- Description:	Lista los parametros de empresas registradas
-- =============================================
CREATE PROCEDURE [dbo].[uspListarParametroEmpresa]

AS
	
SELECT [Codigo]
      ,[NombreEmpresa]
      ,[RNC]
      ,[Telefono]
  FROM [dbo].[tbConfCuen]
RETURN 0
