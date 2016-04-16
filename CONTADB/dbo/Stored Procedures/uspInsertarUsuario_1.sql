-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 04/10/2015
-- Description:	Inserta informacion sobre usuarios que pueden ingresar al sistema
-- =============================================
CREATE PROCEDURE [dbo].[uspInsertarUsuario]
	-- Parametros
	        @LoginUsuario nvarchar(20)
           ,@PassUsuario nvarchar(10)
           ,@Estatus bit
           ,@Nombre nvarchar(50)
           ,@Telefono nvarchar(50)
           ,@FechaCreacion datetime
           ,@ResetPassOnLogin bit
AS
BEGIN 
-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Inserta usuario
	INSERT INTO [dbo].[tbUsuarios]
           ([LoginUsuario]
           ,[PassUsuario]
           ,[Estatus]
           ,[Nombre]
           ,[Telefono]
           ,[FechaCreacion]
           ,[ResetPassOnLogin])
     VALUES
           (@LoginUsuario
           ,@PassUsuario
           ,@Estatus
           ,@Nombre
           ,@Telefono
           ,@FechaCreacion
           ,@ResetPassOnLogin)
END