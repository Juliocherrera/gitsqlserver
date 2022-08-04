SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO




CREATE procedure [dbo].[uspFiltradoCartaPorte]
@segmento varchar(100)
as
begin

if @segmento=''
    select TOP 50 Folio,Fecha,Serie,UUID,Pdf_xml_descarga,Pdf_descargaFactura, replace(xlm_descargaFactura,'}','') as xlm_descargaFactura
    from ResultadoCartaPorte
else 
	select Folio,fecha,Serie,UUID,Pdf_xml_descarga,Pdf_descargaFactura, replace(xlm_descargaFactura,'}','') as xlm_descargaFactura
	from ResultadoCartaPorte
	where Folio like '%'+@segmento+'%' OR UUID like '%'+@segmento+'%'
  
--else if(select count(Folio) from ResultadoCartaPorte where Folio like '%'+@segmento+'%')<1
  --begin
    --select Folio,Serie,UUID,Pdf_xml_descarga,Pdf_descargaFactura, replace(xlm_descargaFactura,'}','') as xlm_descargaFactura
    --from ResultadoCartaPorte
  --end
end
GO