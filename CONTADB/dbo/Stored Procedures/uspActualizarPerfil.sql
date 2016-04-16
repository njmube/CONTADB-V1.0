CREATE PROCEDURE [dbo].[uspActualizarPerfil]
	       (@Codigo AS int
           ,@Descripcion as  varchar(100)
           ,@Observaciones as varchar(200))

AS
	UPDATE [dbo].[tbPerfiles]
   SET [Descripcion] = @Descripcion
      ,[Observaciones] = @Observaciones
	  ,[FechaModificacion]=GETDATE()
 WHERE Codigo=@Codigo
RETURN 0
