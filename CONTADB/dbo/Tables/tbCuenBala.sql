CREATE TABLE [dbo].[tbCuenBala] (
    [Codigo]        BIGINT          IDENTITY (1, 1) NOT NULL,
    [BalInicio]     DECIMAL (19, 2) NULL,
    [ExtInicio]     DECIMAL (19, 2) NULL,
    [Debe]          DECIMAL (19, 2) NULL,
    [DebeExt]       DECIMAL (19, 2) NULL,
    [Haber]         DECIMAL (19, 2) NULL,
    [HaberExt]      DECIMAL (19, 2) NULL,
    [CodigoPeriodo] INT             NULL,
    [CodigoCuenta]  BIGINT          NULL,
    CONSTRAINT [PK_tbCuenBala] PRIMARY KEY CLUSTERED ([Codigo] ASC),
    CONSTRAINT [FK_tbCuenBala_tbCatCuen] FOREIGN KEY ([CodigoCuenta]) REFERENCES [dbo].[tbCatCuen] ([Codigo]),
    CONSTRAINT [FK_tbCuenBala_tbPerioCont] FOREIGN KEY ([CodigoPeriodo]) REFERENCES [dbo].[tbPerioCont] ([Codigo])
);


GO
ALTER TABLE [dbo].[tbCuenBala] NOCHECK CONSTRAINT [FK_tbCuenBala_tbCatCuen];

