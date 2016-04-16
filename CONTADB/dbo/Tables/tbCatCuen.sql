CREATE TABLE [dbo].[tbCatCuen] (
    [Codigo]       BIGINT       IDENTITY (1, 1) NOT NULL,
    [NumCta]       VARCHAR (22) NULL,
    [Estatus]      CHAR (1)     NULL,
    [Naturaleza]   CHAR (1)     NULL,
    [TipoCta]      CHAR (1)     NULL,
    [Nombre]       VARCHAR (50) NULL,
    [Nivel]        INT          NULL,
    [NumCtaPadre]  VARCHAR (22) NULL,
    [NumCtaRaiz]   VARCHAR (22) NULL,
    [NumCtaContra] VARCHAR (22) NULL,
    CONSTRAINT [PK_tbCatCuen] PRIMARY KEY CLUSTERED ([Codigo] ASC)
);






GO


