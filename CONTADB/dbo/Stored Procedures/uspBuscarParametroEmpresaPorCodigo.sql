-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 8/04/2016
-- Description:	Buscar un parametro empresa por su codigo unico en la base de datos
-- =============================================
CREATE PROCEDURE [dbo].[uspBuscarParametroEmpresaPorCodigo]
	@Codigo int
AS
	SELECT [Codigo]
      ,[NombreEmpresa]
      ,[Direccion]
      ,[Ciudad]
      ,[Provincia]
      ,[RNC]
      ,[Telefono]
      ,[Fax]
      ,[PrimerNivel]
      ,[SegundoNivel]
      ,[TercerNivel]
      ,[CuartoNivel]
      ,[QuintoNivel]
      ,[SextoNivel]
      ,[SeptimoNivel]
      ,[OctavoNivel]
      ,[NovenoNivel]
      ,[CuentasGuion]
      ,[CapturaSaldoInicial]
      ,[TraspasoAutomatico]
      ,[MesAjuste]
      ,[MesCierre]
  FROM [dbo].[tbConfCuen]
  WHERE Codigo=@Codigo
RETURN 0
