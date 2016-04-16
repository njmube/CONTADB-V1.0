-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 04/10/2015
-- Description:	Actualizamos los datos del usuario seleccionado 
-- =============================================
CREATE PROCEDURE [dbo].[uspActualizarUsuario]
	@Codigo Int
		   ,@LoginUsuario nvarchar(20)
           ,@PassUsuario nvarchar(10)
           ,@Estatus bit
           ,@Nombre nvarchar(50)
           ,@Telefono nvarchar(50)
           ,@FechaModificacion datetime
		   ,@FchUltLogin datetime=null
           ,@ResetPassOnLogin bit
AS
	UPDATE [dbo].[tbUsuarios]
   SET [LoginUsuario] = @LoginUsuario
      ,[PassUsuario] = @PassUsuario
      ,[Estatus] = @Estatus
      ,[Nombre] = @Nombre
      ,[Telefono] = @Telefono
      ,[FechaModificacion] = @FechaModificacion
	  ,[FchUltLogin]=@FchUltLogin
      ,[ResetPassOnLogin] = @ResetPassOnLogin
 WHERE Codigo=@Codigo
RETURN 0
