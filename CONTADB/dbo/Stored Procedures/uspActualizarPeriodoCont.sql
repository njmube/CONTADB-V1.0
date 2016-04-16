-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 22/03/2016
-- Description:	Actualiza periodo contable
-- =============================================
CREATE PROCEDURE [dbo].[uspActualizarPeriodoCont] 
	-- Add the parameters for the stored procedure here
	        (@Codigo int
			,@Descripcion varchar(50)
           ,@Mes tinyint
           ,@Año int
           ,@FechaModificacion datetime
		   ,@IndBloqueado char(1)
		   ,@IndAuditado char(1)
		   ,@FechaFin Datetime
		   ,@FechaInicio Datetime)
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
	  ,[IndBloqueado]=@IndBloqueado
	  ,[IndAuditado]=@IndAuditado
	  ,[FechaInicio]=@FechaInicio
	  ,[FechaFin]=@FechaFin
 WHERE Codigo=@Codigo
END