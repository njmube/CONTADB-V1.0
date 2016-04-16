/*
Autor: EDUARDO MARIANO
Fecha: 16/04/2016
Descripcion:Procedimiento que busca la relacion entre usuarios y perfiles
*/
CREATE PROCEDURE [dbo].[uspBuscarRelacionUsuarioPerfil]
	@UsuarioID int

AS
SELECT Relacion.Codigo,
	   Relacion.UsuarioID, 
	   Relacion.PerfilID
  FROM tbUsuarioPerfiles Relacion
 WHERE (Relacion.UsuarioID = @UsuarioID)
RETURN 0
