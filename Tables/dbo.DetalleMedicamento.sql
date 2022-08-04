CREATE TABLE [dbo].[DetalleMedicamento] (
  [IIDMEDICAMENTOLABORATORIO] [int] IDENTITY,
  [IIDMEDICAMENTO] [int] NULL,
  [IIDLABOTATORIO] [int] NULL,
  [PRECIOCOMPRA] [decimal](18, 2) NULL,
  [PRECIOVENTA] [decimal](18, 2) NULL,
  [STOCK] [int] NULL,
  [IIDMARCA] [int] NULL,
  [BHABILITADO] [int] NULL,
  [IIDENVOLTURA] [int] NULL,
  [CAPACIDADCONTENIDO] [varchar](100) NULL,
  [IIDTIPOADMINISTRACION] [int] NULL,
  [IIDSUCURSAL] [int] NULL,
  [FOTOMEDICAMENTO] [varbinary](max) NULL,
  [NOMBREFOTOMEDICAMENTO] [varchar](100) NULL,
  CONSTRAINT [PK_DetalleMedicamento] PRIMARY KEY CLUSTERED ([IIDMEDICAMENTOLABORATORIO])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[DetalleMedicamento]
  ADD CONSTRAINT [FK_DetalleMedicamento_Envoltura] FOREIGN KEY ([IIDENVOLTURA]) REFERENCES [dbo].[Envoltura] ([IIDENVOLTURA])
GO

ALTER TABLE [dbo].[DetalleMedicamento]
  ADD CONSTRAINT [FK_DetalleMedicamento_Laboratorio] FOREIGN KEY ([IIDLABOTATORIO]) REFERENCES [dbo].[Laboratorio] ([IIDLABORATORIO])
GO

ALTER TABLE [dbo].[DetalleMedicamento]
  ADD CONSTRAINT [FK_DetalleMedicamento_Marca] FOREIGN KEY ([IIDMARCA]) REFERENCES [dbo].[Marca] ([IIDMARCA])
GO

ALTER TABLE [dbo].[DetalleMedicamento]
  ADD CONSTRAINT [FK_DetalleMedicamento_Medicamento] FOREIGN KEY ([IIDMEDICAMENTO]) REFERENCES [dbo].[Medicamento] ([IIDMEDICAMENTO])
GO

ALTER TABLE [dbo].[DetalleMedicamento]
  ADD CONSTRAINT [FK_DetalleMedicamento_Sucursal] FOREIGN KEY ([IIDSUCURSAL]) REFERENCES [dbo].[Sucursal] ([IIDSUCURSAL])
GO

ALTER TABLE [dbo].[DetalleMedicamento]
  ADD CONSTRAINT [FK_DetalleMedicamento_TipoAdministracion] FOREIGN KEY ([IIDTIPOADMINISTRACION]) REFERENCES [dbo].[TipoAdministracion] ([IIDTIPOADMINISTRACION])
GO