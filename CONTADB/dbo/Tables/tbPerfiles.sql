CREATE TABLE [dbo].[tbPerfiles] (
    [Codigo]            INT            IDENTITY (1, 1) NOT NULL,
    [Descripcion]       NVARCHAR (50)  NOT NULL,
    [Observaciones]     NVARCHAR (100) NULL,
    [FechaCreacion]     DATETIME       NULL,
    [FechaModificacion] DATETIME       NULL,
    CONSTRAINT [PK_tbPerfiles] PRIMARY KEY CLUSTERED ([Codigo] ASC)
);

