-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 22/03/2016
-- Description:	Inserta nuevos periodos contables 
-- =============================================
CREATE PROCEDURE [dbo].[uspInsertarPeriodoCont] 
	-- Add the parameters for the stored procedure here
	       (@Descripcion varchar(50)
           ,@Mes tinyint
           ,@Año int
           ,@FechaCreacion datetime
           ,@FechaModificacion datetime
		   ,@FechaInicio Datetime
		   ,@FechaFin Datetime)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
			

INSERT INTO [dbo].[tbPerioCont]
           ([Descripcion]
           ,[Mes]
           ,[Año]
           ,[FechaCreacion]
           ,[FechaModificacion]
		   ,[FechaInicio]
		   ,[FechaFin])
     VALUES
           (@Descripcion
           ,@Mes
           ,@Año
           ,@FechaCreacion
           ,@FechaModificacion
		   ,@FechaInicio
		   ,@FechaFin)
END