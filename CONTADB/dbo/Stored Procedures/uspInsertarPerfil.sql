-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 16/04/2016
-- Description:	Inserta un nuevo perfil de usuario
-- =============================================
CREATE PROCEDURE [dbo].[uspInsertarPerfil]
            @Descripcion as  varchar(100)
		   ,@Observaciones as nvarchar(100)

AS
	INSERT INTO [dbo].[tbPerfiles]
           ([Descripcion]
		   ,[Observaciones]
		   ,[FechaCreacion]
		   ,[FechaModificacion])
     VALUES
           (@Descripcion
           ,@Observaciones
           ,GETDATE()
		   ,GETDATE())
RETURN 0
