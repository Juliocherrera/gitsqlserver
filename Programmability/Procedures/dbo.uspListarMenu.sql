SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspListarMenu]
@iidtipousuario int
as
begin
select p.IIDPAGINA,p.MENSAJE,p.CONTRALADOR,p.ACCION
from Paginatipousuario t
inner join Pagina p
on t.IIDPAGINA=p.IIDPAGINA
where t.IIDTIPOUSUARIO=@iidtipousuario and t.BHABILITADO=1
end 
GO