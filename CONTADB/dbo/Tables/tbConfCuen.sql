CREATE TABLE [dbo].[tbConfCuen]
(
	[Codigo] SMALLINT NOT NULL PRIMARY KEY IDENTITY, 
    [NombreEmpresa] NVARCHAR(50) NULL, 
    [Direccion] NVARCHAR(100) NULL, 
	[Ciudad] NVARCHAR(50) NULL,
	[Provincia] NVARCHAR(50) NULL,
    [RNC] VARCHAR(20) NULL, 
    [Telefono] VARCHAR(20) NULL, 
    [Fax] VARCHAR(20) NULL, 
	[PrimerNivel] INT NULL DEFAULT 0, 
    [SegundoNivel] INT NULL DEFAULT 0, 
    [TercerNivel] INT NULL DEFAULT 0, 
    [CuartoNivel] INT NULL DEFAULT 0, 
    [QuintoNivel] INT NULL DEFAULT 0, 
    [SextoNivel] INT NULL DEFAULT 0, 
    [SeptimoNivel] INT NULL DEFAULT 0, 
    [OctavoNivel] INT NULL DEFAULT 0, 
    [NovenoNivel] INT NULL DEFAULT 0, 
    [CuentasGuion] BIT NULL DEFAULT 1, 
    [CapturaSaldoInicial] BIT NULL DEFAULT 1, 
    [TraspasoAutomatico] BIT NULL DEFAULT 0, 
    [MesAjuste] BIT NULL, 
    [MesCierre] INT NULL DEFAULT 12
    
)
