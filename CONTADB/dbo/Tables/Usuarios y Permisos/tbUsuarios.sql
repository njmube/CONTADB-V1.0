CREATE TABLE [dbo].[tbUsuarios] (
    [Codigo]                INT           IDENTITY (1, 1) NOT NULL,
    [LoginUsuario]      NVARCHAR (20) NOT NULL,
    [PassUsuario]       NVARCHAR (10) NOT NULL,
    [Estatus]           BIT           NOT NULL,
    [Nombre]            NVARCHAR (50) NULL,
    [Telefono]          NVARCHAR (50) NULL,
    [FechaCreacion]     DATETIME      NULL,
    [FechaModificacion] DATETIME      NULL,
    [ResetPassOnLogin]  BIT           NULL,
    [FchUltLogin]       DATETIME      NULL,
    CONSTRAINT [PK_tbUsuarios] PRIMARY KEY CLUSTERED ([Codigo] ASC)
);

