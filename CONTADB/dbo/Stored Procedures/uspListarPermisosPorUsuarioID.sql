/*
AUTOR: EDUARDO MARIANO
FECHA: 15/08/2015
DESCRIPCION: Este query muestra la relacion que existe entre los usuarios, los modulos a los que tienen acceso y los permisos relacionados a estos
			se utilizan principalmente en la carga de todos los formularios donde el usuario entra y verifica a que submodulos tiene permiso y cuales son 
			estos.
*/
CREATE PROCEDURE [dbo].[uspListarPermisosPorUsuarioID]
	@UsuarioID Int
AS
	SELECT tbRoles.Descripcion AS Permisos,
       tbModulos.Descripcion AS Modulo,
       tbUsuarios.LoginUsuario,
       tbUsuarios.PassUsuario,
	   tbUsuarios.Nombre
  FROM    (   (   (   (   (   dbo.tbModulosPerfiles tbModulosPerfiles
                           INNER JOIN
                              dbo.tbPerfiles tbPerfiles
                           ON (tbModulosPerfiles.PerfilID = tbPerfiles.Codigo))
                       INNER JOIN
                          dbo.tbModulos tbModulos
                       ON (tbModulosPerfiles.ModuloID = tbModulos.Codigo))
                   INNER JOIN
                      dbo.tbModuloPerfilRol tbModuloPerfilRol
                   ON (tbModuloPerfilRol.ModuloPerfilID = tbModulosPerfiles.ID))
               INNER JOIN
                  dbo.tbRoles tbRoles
               ON (tbModuloPerfilRol.RolID = tbRoles.Codigo))
           INNER JOIN
              dbo.tbUsuarioPerfiles tbUsuarioPerfiles
           ON (tbUsuarioPerfiles.PerfilID = tbPerfiles.Codigo))
       INNER JOIN
          dbo.tbUsuarios tbUsuarios
       ON (tbUsuarioPerfiles.UsuarioID = tbUsuarios.Codigo)
	WHERE tbUsuarios.Codigo=@UsuarioID
RETURN 0