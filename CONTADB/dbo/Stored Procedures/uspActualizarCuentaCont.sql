-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 28/03/2016
-- Description:	Actualiza las cuentas del catalogo de cuentas
-- =============================================
CREATE PROCEDURE uspActualizarCuentaCont
	-- Add the parameters for the stored procedure here
	        @Codigo bigint
		   ,@NumCta varchar(22)
           ,@Estatus char(1)
           ,@Naturaleza char(1)
           ,@TipoCta char(1)
           ,@Nombre varchar(50)
           ,@Nivel int
           ,@NumCtaPadre varchar(22)
           ,@NumCtaRaiz varchar(22)
		   ,@NumCtaContra varchar(22)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE [dbo].[tbCatCuen]
   SET [NumCta] = @NumCta
      ,[Estatus] = @Estatus
      ,[Naturaleza] = @Naturaleza
      ,[TipoCta] = @TipoCta
      ,[Nombre] = @Nombre
      ,[Nivel] = @Nivel
      ,[NumCtaPadre] = @NumCtaPadre
      ,[NumCtaRaiz] = @NumCtaRaiz
      ,[NumCtaContra] = @NumCtaContra
 WHERE Codigo=@Codigo
END