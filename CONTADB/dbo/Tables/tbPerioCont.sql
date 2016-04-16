CREATE TABLE [dbo].[tbPerioCont] (
    [Codigo]            INT          IDENTITY (1, 1) NOT NULL,
    [Descripcion]       VARCHAR (50) NULL,
    [Mes]               SMALLINT     NULL,
    [Año]               INT          NULL,
    [IndBloqueado]      CHAR (1)     CONSTRAINT [DF_tbPerioCont_IndBloqueado] DEFAULT ('N') NULL,
    [IndAuditado]       CHAR (1)     CONSTRAINT [DF_tbPerioCont_IndAuditado] DEFAULT ('N') NULL,
    [FechaInicio]       DATETIME     NULL,
    [FechaFin]          DATETIME     NULL,
    [FechaCreacion]     DATETIME     NULL,
    [FechaModificacion] DATETIME     NULL,
    CONSTRAINT [PK_tbPerioCont] PRIMARY KEY CLUSTERED ([Codigo] ASC)
);



