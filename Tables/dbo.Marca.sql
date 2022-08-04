﻿CREATE TABLE [dbo].[Marca] (
  [IIDMARCA] [int] IDENTITY,
  [NOMBRE] [varchar](100) NULL,
  [BHABILITADO] [int] NULL,
  CONSTRAINT [PK_Marcas] PRIMARY KEY CLUSTERED ([IIDMARCA])
)
ON [PRIMARY]
GO