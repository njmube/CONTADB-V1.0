-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 04/10/2015
-- Description:	Buscamos un usuario por su codigo unico 
-- =============================================
CREATE PROCEDURE [dbo].[uspBuscarUsuarioPorID]
	@Codigo int --Codigo de usuario
AS
	SELECT [Codigo]
      ,[LoginUsuario]
      ,[PassUsuario]
      ,[Estatus]
      ,[Nombre]
      ,[Telefono]
      ,[FechaCreacion]
      ,[FechaModificacion]
      ,[ResetPassOnLogin]
      ,[FchUltLogin]
  FROM [dbo].[tbUsuarios]
  where Codigo=@Codigo

RETURN 0
