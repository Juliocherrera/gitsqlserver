﻿CREATE TABLE [dbo].[PaginaTipoUsuarioBoton] (
  [IIDPAGINATIPOUSUARIOBOTON] [int] IDENTITY,
  [IIDPAGINA] [int] NULL,
  [IIDTIPOUSUARIO] [int] NULL,
  [IIDBOTON] [int] NULL,
  [BHABILITADO] [int] NULL,
  CONSTRAINT [PK_PaginaTipoUsuarioBoton] PRIMARY KEY CLUSTERED ([IIDPAGINATIPOUSUARIOBOTON])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PaginaTipoUsuarioBoton]
  ADD CONSTRAINT [FK_PaginaTipoUsuarioBoton_Boton] FOREIGN KEY ([IIDBOTON]) REFERENCES [dbo].[Boton] ([IIDBOTON])
GO

ALTER TABLE [dbo].[PaginaTipoUsuarioBoton]
  ADD CONSTRAINT [FK_PaginaTipoUsuarioBoton_Pagina] FOREIGN KEY ([IIDPAGINA]) REFERENCES [dbo].[Pagina] ([IIDPAGINA])
GO

ALTER TABLE [dbo].[PaginaTipoUsuarioBoton]
  ADD CONSTRAINT [FK_PaginaTipoUsuarioBoton_TipoUsuario] FOREIGN KEY ([IIDTIPOUSUARIO]) REFERENCES [dbo].[TipoUsuario] ([IIDTIPOUSUARIO])
GO