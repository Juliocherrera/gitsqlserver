CREATE TABLE [dbo].[RESPALDO_Carta_Porte] (
  [Folio] [varchar](max) NULL,
  [Serie] [nvarchar](255) NULL,
  [UUID] [nvarchar](255) NULL,
  [Pdf_xml_descarga] [nvarchar](255) NULL,
  [Pdf_descargaFactura] [nvarchar](255) NULL,
  [xlm_descargaFactura] [nvarchar](255) NULL,
  [cancelFactura] [nvarchar](255) NULL,
  [LegNum] [float] NULL,
  [Fecha] [nvarchar](255) NULL,
  [Total] [nvarchar](255) NULL,
  [Moneda] [nvarchar](255) NULL,
  [RFC] [nvarchar](255) NULL,
  [Origen] [nvarchar](255) NULL,
  [Destino] [nvarchar](255) NULL
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO