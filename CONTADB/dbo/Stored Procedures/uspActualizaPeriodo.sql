-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 22/03/2016
-- Description:	Actualiza periodo contable
-- =============================================
CREATE PROCEDURE uspActualizaPeriodo 
	-- Add the parameters for the stored procedure here
	        (@Codigo int
			,@Descripcion varchar(50)
           ,@Mes tinyint
           ,@Año int
           ,@FechaModificacion nchar(10))
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	UPDATE [dbo].[tbPerioCont]
   SET [Descripcion] = @Descripcion
      ,[Mes] = @Mes
      ,[Año] = @Año
      ,[FechaModificacion] = @FechaModificacion
 WHERE Codigo=@Codigo
END