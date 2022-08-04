CREATE TABLE [dbo].[cancelarcp] (
  [id_num] [int] IDENTITY,
  [Folio] [varchar](max) NULL,
  [Motivo] [varchar](max) NULL,
  [UUID] [varchar](max) NULL,
  [fecha] [datetime] NULL DEFAULT (getdate())
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO