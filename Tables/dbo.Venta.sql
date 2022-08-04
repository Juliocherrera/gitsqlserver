﻿CREATE TABLE [dbo].[Venta] (
  [IIDVENTA] [int] IDENTITY,
  [IIDUSUARIOCLIENTE] [int] NULL,
  [IIDUSUARIOVENTA] [int] NULL,
  [IIDTIPODOCUMENTO] [int] NULL,
  [VOBSERVACION] [varchar](100) NULL,
  [TOTALPAGAR] [decimal](18, 2) NULL,
  [PAGOCON] [decimal](18, 2) NULL,
  [DFECHAVENTA] [datetime] NULL,
  [BHABILITADO] [int] NULL,
  CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED ([IIDVENTA])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[Venta]
  ADD CONSTRAINT [FK_Venta_TipoDocumento] FOREIGN KEY ([IIDTIPODOCUMENTO]) REFERENCES [dbo].[TipoDocumento] ([IIDTIPODOCUMENTO])
GO

ALTER TABLE [dbo].[Venta]
  ADD CONSTRAINT [FK_Venta_Usuario] FOREIGN KEY ([IIDUSUARIOCLIENTE]) REFERENCES [dbo].[Usuario] ([IIDUSUARIO])
GO

ALTER TABLE [dbo].[Venta]
  ADD CONSTRAINT [FK_Venta_Usuario1] FOREIGN KEY ([IIDUSUARIOVENTA]) REFERENCES [dbo].[Usuario] ([IIDUSUARIO])
GO