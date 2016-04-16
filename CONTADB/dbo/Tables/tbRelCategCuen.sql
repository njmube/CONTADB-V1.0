CREATE TABLE [dbo].[tbRelCategCuen] (
    [Codigo]          BIGINT  IDENTITY (1, 1) NOT NULL,
    [CodigoCategoria] TINYINT NULL,
    [CodigoCta]       BIGINT  NULL,
    CONSTRAINT [PK_tbRelCategCuen] PRIMARY KEY CLUSTERED ([Codigo] ASC),
    CONSTRAINT [FK_tbRelCategCuen_tbCatCuen] FOREIGN KEY ([CodigoCta]) REFERENCES [dbo].[tbCatCuen] ([Codigo]),
    CONSTRAINT [FK_tbRelCategCuen_tbCategoria] FOREIGN KEY ([CodigoCategoria]) REFERENCES [dbo].[tbCategoria] ([Codigo])
);


GO
ALTER TABLE [dbo].[tbRelCategCuen] NOCHECK CONSTRAINT [FK_tbRelCategCuen_tbCatCuen];

