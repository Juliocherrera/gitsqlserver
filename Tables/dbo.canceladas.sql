CREATE TABLE [dbo].[canceladas] (
  [id_num] [int] IDENTITY,
  [motivo] [varchar](10) NULL,
  [uuid] [varchar](100) NULL,
  [fecha] [datetime] NULL DEFAULT (getdate())
)
ON [PRIMARY]
GO