CREATE TABLE [dbo].[tbUsuarioPerfiles] (
    [Codigo]    BIGINT IDENTITY (1, 1) NOT NULL,
    [UsuarioID] INT    NULL,
    [PerfilID]  INT    NULL,
    CONSTRAINT [PK_tbUsuariosPerfiles] PRIMARY KEY CLUSTERED ([Codigo] ASC),
    CONSTRAINT [FK_tbUsuariosPerfiles_tbPerfiles] FOREIGN KEY ([PerfilID]) REFERENCES [dbo].[tbPerfiles] ([Codigo]),
    CONSTRAINT [FK_tbUsuariosPerfiles_tbUsuarios] FOREIGN KEY ([UsuarioID]) REFERENCES [dbo].[tbUsuarios] ([Codigo])
);

