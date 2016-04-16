-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 94/10/2015
-- Description:	Lista los perfiles relacionados a los usuarios
-- =============================================
CREATE PROCEDURE [dbo].[uspListarPerfilesPorUsuarioID]
(@UsuarioID int)
WITH 
EXECUTE AS CALLER
AS
	SELECT tbUsuarios.LoginUsuario AS Usuario,
       tbPerfiles.Descripcion AS Perfil,
       tbUsuarioPerfiles.Codigo
  FROM    (   dbo.tbUsuarioPerfiles tbUsuarioPerfiles
           INNER JOIN
              dbo.tbPerfiles tbPerfiles
           ON (tbUsuarioPerfiles.PerfilID = tbPerfiles.Codigo))
       INNER JOIN
          dbo.tbUsuarios tbUsuarios
       ON (tbUsuarioPerfiles.UsuarioID = tbUsuarios.Codigo)
WHERE tbUsuarios.Codigo=@UsuarioID