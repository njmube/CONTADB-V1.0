-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 16/04/2016
-- Description:	Realiza una busqueda de perfiles por su codigo unico
-- =============================================
CREATE PROCEDURE [dbo].[uspBuscarPerfilPorID]
	@Codigo Int

AS
	SELECT [Codigo]
      ,[Descripcion]
      ,[Observaciones]
	  ,[FechaCreacion]
	  ,[FechaModificacion]
  FROM [dbo].[tbPerfiles]
  WHERE Codigo=@Codigo
RETURN 0
