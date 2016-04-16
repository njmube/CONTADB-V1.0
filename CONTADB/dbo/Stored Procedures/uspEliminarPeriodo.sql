-- =============================================
-- Author:		EDUARDO MARIANO
-- Create date: 22/03/2016
-- Description:	Elimina periodo contable
-- =============================================
CREATE PROCEDURE uspEliminarPeriodo
	-- Add the parameters for the stored procedure here
	@Codigo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	  DELETE FROM [dbo].[tbPerioCont]
      WHERE Codigo=@Codigo
END