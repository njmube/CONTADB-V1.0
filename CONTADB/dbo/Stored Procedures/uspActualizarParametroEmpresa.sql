CREATE PROCEDURE [dbo].[uspActualizarParametroEmpresa]
			@Codigo Int
		   ,@NombreEmpresa nvarchar(50)
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
           ,@MesCierre int=null
AS
	UPDATE [dbo].[tbConfCuen]
   SET [NombreEmpresa] = @NombreEmpresa
      ,[Direccion] = @Direccion
      ,[Ciudad] = @Ciudad
      ,[Provincia] = @Provincia
      ,[RNC] = @RNC
      ,[Telefono] = @Telefono
      ,[Fax] = @Fax
      ,[PrimerNivel] = @PrimerNivel
      ,[SegundoNivel] = @SegundoNivel
      ,[TercerNivel] = @TercerNivel
      ,[CuartoNivel] = @CuartoNivel
      ,[QuintoNivel] = @QuintoNivel
      ,[SextoNivel] = @SextoNivel
      ,[SeptimoNivel] = @SeptimoNivel
      ,[OctavoNivel] = @OctavoNivel
      ,[NovenoNivel] = @NovenoNivel
      ,[CuentasGuion] = @CuentasGuion
      ,[CapturaSaldoInicial] = @CapturaSaldoInicial
      ,[TraspasoAutomatico] = @TraspasoAutomatico
      ,[MesAjuste] = @MesAjuste
      ,[MesCierre] = @MesCierre 
 WHERE Codigo=@Codigo
RETURN 0
