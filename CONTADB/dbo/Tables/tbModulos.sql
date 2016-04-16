CREATE TABLE [dbo].[tbModulos] (
    [ID]            INT            IDENTITY (1, 1) NOT NULL,
    [Codigo]        NVARCHAR (10)  NOT NULL,
    [Descripcion]   NVARCHAR (50)  NOT NULL,
    [Observaciones] NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_tbModulos] PRIMARY KEY CLUSTERED ([ID] ASC)
);

