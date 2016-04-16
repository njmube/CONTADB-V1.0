CREATE TABLE [dbo].[tbModuloPerfilRol] (
    [ID]             BIGINT IDENTITY (1, 1) NOT NULL,
    [ModuloPerfilID] BIGINT NULL,
    [RolID]          INT    NULL,
    CONSTRAINT [PK_tbModuloPerfilRol] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_tbModuloPerfilRol_tbModulosPerfiles] FOREIGN KEY ([ModuloPerfilID]) REFERENCES [dbo].[tbModulosPerfiles] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_tbModuloPerfilRol_tbRoles] FOREIGN KEY ([RolID]) REFERENCES [dbo].[tbRoles] ([Codigo])
);

