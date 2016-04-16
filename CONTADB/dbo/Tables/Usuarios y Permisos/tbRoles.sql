CREATE TABLE [dbo].[tbRoles] (
    [Codigo]          INT            IDENTITY (1, 1) NOT NULL,
    [Descripcion] NVARCHAR (50) NOT NULL,
    [Notas] NVARCHAR(100) NULL, 
    CONSTRAINT [PK_tbRoles] PRIMARY KEY CLUSTERED ([Codigo] ASC)
);