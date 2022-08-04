﻿CREATE TABLE [dbo].[SucursalIngreso] (
  [IIDSUCURSALINGRESO] [int] IDENTITY,
  [IIDSURCURSAL] [int] NULL,
  [IIDINGRESO] [int] NULL,
  [BHABILITADO] [int] NULL,
  CONSTRAINT [PK_SucursalIngreso] PRIMARY KEY CLUSTERED ([IIDSUCURSALINGRESO])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[SucursalIngreso]
  ADD CONSTRAINT [FK_SucursalIngreso_Ingreso] FOREIGN KEY ([IIDINGRESO]) REFERENCES [dbo].[Ingreso] ([IIDINGRESO])
GO

ALTER TABLE [dbo].[SucursalIngreso]
  ADD CONSTRAINT [FK_SucursalIngreso_Sucursal] FOREIGN KEY ([IIDSURCURSAL]) REFERENCES [dbo].[Sucursal] ([IIDSUCURSAL])
GO