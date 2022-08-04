﻿CREATE TABLE [dbo].[TipoUsuario] (
  [IIDTIPOUSUARIO] [int] IDENTITY,
  [NOMBRE] [varchar](100) NULL,
  [DESCRIPCION] [varchar](300) NULL,
  [BHABILITADO] [int] NULL,
  CONSTRAINT [PK_TipoUsuario] PRIMARY KEY CLUSTERED ([IIDTIPOUSUARIO])
)
ON [PRIMARY]
GO