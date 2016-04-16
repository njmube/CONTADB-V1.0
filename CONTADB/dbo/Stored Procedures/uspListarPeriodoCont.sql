-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 25/03/2016
-- Description:	Lista los periodos contables 
-- =============================================
CREATE PROCEDURE [dbo].[uspListarPeriodoCont]

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [Codigo]
      ,[Descripcion]
      ,[Mes]
      ,[Año]
      ,[FechaCreacion]
      ,[FechaModificacion]
	  ,[FechaInicio]
	  ,[FechaFin]
	  ,[IndBloqueado]
	  ,[IndAuditado]
  FROM [dbo].[tbPerioCont]
END