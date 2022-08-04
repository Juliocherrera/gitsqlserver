CREATE TABLE [dbo].[VISTA_Carta_Porte] (
  [Folio] [varchar](max) NULL,
  [Serie] [varchar](max) NULL,
  [UUID] [varchar](max) NULL,
  [Pdf_xml_descarga] [varchar](max) NULL,
  [Pdf_descargaFactura] [varchar](max) NULL,
  [xlm_descargaFactura] [varchar](max) NULL,
  [cancelFactura] [varchar](max) NULL,
  [LegNum] [varchar](50) NULL,
  [Fecha] [datetime] NULL,
  [Total] [money] NULL,
  [Moneda] [varchar](15) NULL,
  [RFC] [varchar](50) NULL,
  [Origen] [varchar](max) NULL,
  [Destino] [varchar](max) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO