-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 08/04/2016
-- Description:	Inserta un nuevo parametro de empresa con sus opciones
-- =============================================
CREATE PROCEDURE [dbo].[uspInsertarParametroEmpresa]
	        @NombreEmpresa nvarchar(50)
           ,@Direccion nvarchar(100)=null
           ,@Ciudad nvarchar(50)=null
           ,@Provincia nvarchar(50)=null
           ,@RNC varchar(20)=null
           ,@Telefono varchar(20)=null
           ,@Fax varchar(20)=null
           ,@PrimerNivel int=null
           ,@SegundoNivel int=null
           ,@TercerNivel int=null
           ,@CuartoNivel int=null
           ,@QuintoNivel int=null
           ,@SextoNivel int=null
           ,@SeptimoNivel int=null
           ,@OctavoNivel int=null
           ,@NovenoNivel int=null
           ,@CuentasGuion bit
           ,@CapturaSaldoInicial bit
           ,@TraspasoAutomatico bit
           ,@MesAjuste bit
           ,@MesCierre int
AS
	INSERT INTO [dbo].[tbConfCuen]
           ([NombreEmpresa]
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
           ,[MesCierre])
     VALUES
           (@NombreEmpresa
           ,@Direccion
           ,@Ciudad
           ,@Provincia
           ,@RNC 
           ,@Telefono 
           ,@Fax
           ,@PrimerNivel 
           ,@SegundoNivel 
           ,@TercerNivel 
           ,@CuartoNivel 
           ,@QuintoNivel 
           ,@SextoNivel 
           ,@SeptimoNivel 
           ,@OctavoNivel 
           ,@NovenoNivel 
           ,@CuentasGuion 
           ,@CapturaSaldoInicial 
           ,@TraspasoAutomatico 
           ,@MesAjuste
           ,@MesCierre)
RETURN 0
