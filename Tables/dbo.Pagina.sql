CREATE TABLE [dbo].[Pagina] (
  [IIDPAGINA] [int] IDENTITY,
  [MENSAJE] [varchar](100) NULL,
  [CONTRALADOR] [varchar](100) NULL,
  [ACCION] [varchar](100) NULL,
  [BHABILITADO] [int] NULL,
  CONSTRAINT [PK_Pagina] PRIMARY KEY CLUSTERED ([IIDPAGINA])
)
ON [PRIMARY]
GO