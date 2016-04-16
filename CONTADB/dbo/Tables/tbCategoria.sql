CREATE TABLE [dbo].[tbCategoria] (
    [Codigo]      TINYINT      IDENTITY (1, 1) NOT NULL,
    [Descripcion] VARCHAR (50) NULL,
    CONSTRAINT [PK_tbCategoria] PRIMARY KEY CLUSTERED ([Codigo] ASC)
);

