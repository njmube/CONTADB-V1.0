-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 24/03/2016
-- Description:	Busca un periodo contable por codigo
-- =============================================
CREATE PROCEDURE [dbo].[uspBuscarPeriodoContPorCodigo]
	-- Add the parameters for the stored procedure here
	@Codigo int
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
	  ,[indBloqueado]
	  ,[IndAuditado]
	  ,[FechaInicio]
	  ,[FechaFin]

  FROM [dbo].[tbPerioCont]
  WHERE CODIGO=@Codigo
END