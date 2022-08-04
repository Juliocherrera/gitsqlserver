SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO



CREATE procedure [dbo].[uspListarCartaPorte]
as
begin
select TOP 50 Folio,Fecha,Serie,UUID,Pdf_xml_descarga,Pdf_descargaFactura, replace(xlm_descargaFactura,'}','') as xlm_descargaFactura
from ResultadoCartaPorte

end
GO