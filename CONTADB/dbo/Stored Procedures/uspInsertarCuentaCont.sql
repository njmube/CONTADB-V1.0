-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 28/03/2016
-- Description:	Crea una nueva cuenta contable
-- =============================================
CREATE PROCEDURE [dbo].[uspInsertarCuentaCont]
	-- Add the parameters for the stored procedure here
		   @NumCta varchar(22)
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
	INSERT INTO [dbo].[tbCatCuen]
           ([NumCta]
           ,[Estatus]
           ,[Naturaleza]
           ,[TipoCta]
           ,[Nombre]
           ,[Nivel]
           ,[NumCtaPadre]
           ,[NumCtaRaiz]
		   ,[NumCtaContra])
     VALUES
           (@NumCta
           ,@Estatus
           ,@Naturaleza
           ,@TipoCta
           ,@Nombre
           ,@Nivel
           ,@NumCtaPadre
           ,@NumCtaRaiz
		   ,@NumCtaContra)
END