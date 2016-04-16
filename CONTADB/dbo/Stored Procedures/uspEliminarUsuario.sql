-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 04/10/2015
-- Description:	Elimina al usuario seleccionado de la DB 
-- =============================================
CREATE PROCEDURE [dbo].[uspEliminarUsuario]
	 @Codigo Int --Codigo usuario
AS
	Delete tbUsuarios 
	where Codigo=@Codigo
RETURN 0
