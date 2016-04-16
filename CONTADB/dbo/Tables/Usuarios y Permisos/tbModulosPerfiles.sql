CREATE TABLE [dbo].[tbModulosPerfiles] (
    [ID]       BIGINT IDENTITY (1, 1) NOT NULL,
    [PerfilID] INT    NULL,
    [ModuloID] INT    NULL,
    CONSTRAINT [PK_tbModulosPerfiles] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_tbModulosPerfiles_tbModulos] FOREIGN KEY ([ModuloID]) REFERENCES [dbo].[tbModulos] ([Codigo]),
    CONSTRAINT [FK_tbModulosPerfiles_tbPerfiles] FOREIGN KEY ([PerfilID]) REFERENCES [dbo].[tbPerfiles] ([Codigo])
);
