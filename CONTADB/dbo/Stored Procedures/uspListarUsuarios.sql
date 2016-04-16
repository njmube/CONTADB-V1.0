-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 04/10/2015
-- Description:	Listamos los usuarios 
-- =============================================

CREATE PROCEDURE [dbo].[uspListarUsuarios]
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
RETURN 0
