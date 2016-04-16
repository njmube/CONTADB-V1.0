/*
Autor: EDUARDO MARIANO
Fecha: 14/06/2015
Descripcion: Crea una relacion entre perfiles y usuarios
*/
CREATE PROCEDURE [dbo].[uspInsertarRelacionUsuarioPerfil]
	@UsuarioID int,
	@PerfilID int

AS
	INSERT INTO [dbo].[tbUsuarioPerfiles]
           ([UsuarioID]
           ,[PerfilID])
     VALUES
           (@UsuarioID
           ,@PerfilID)
RETURN 0
