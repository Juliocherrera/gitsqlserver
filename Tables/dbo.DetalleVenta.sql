CREATE TABLE [dbo].[DetalleVenta] (
  [IIDDETALLEVENTA] [int] IDENTITY,
  [IIDVENTA] [int] NULL,
  [IIDMEDICAMENTO] [int] NULL,
  [CANTIDAD] [int] NULL,
  [PRECIOVENTA] [decimal](18, 2) NULL,
  [SUBTOTAL] [decimal](18, 2) NULL,
  [BHABILITADO] [int] NULL,
  CONSTRAINT [PK_DetalleVenta] PRIMARY KEY CLUSTERED ([IIDDETALLEVENTA])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[DetalleVenta]
  ADD CONSTRAINT [FK_DetalleVenta_Medicamento] FOREIGN KEY ([IIDMEDICAMENTO]) REFERENCES [dbo].[Medicamento] ([IIDMEDICAMENTO])
GO

ALTER TABLE [dbo].[DetalleVenta]
  ADD CONSTRAINT [FK_DetalleVenta_Venta] FOREIGN KEY ([IIDVENTA]) REFERENCES [dbo].[Venta] ([IIDVENTA])
GO