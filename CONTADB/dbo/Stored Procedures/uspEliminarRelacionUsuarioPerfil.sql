/*
Elimina la relacion entre un usuario y un perfil
*/
CREATE PROCEDURE [dbo].[uspEliminarRelacionUsuarioPerfil]
	@Codigo int

AS
	DELETE dbo.tbUsuarioPerfiles
    WHERE Codigo=@Codigo
RETURN 0
