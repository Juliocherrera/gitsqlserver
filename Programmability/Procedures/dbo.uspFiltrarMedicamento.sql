SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspFiltrarMedicamento]
@idmedicamento int,
@nombre varchar(100),
@idlaboratorio int,
@idtipomedicamento int
as
begin

declare @sql NVARCHAR(400)

SET @sql= 'select m.IIDMEDICAMENTO,m.NOMBREMEDICAMENTO,l.NOMBRE as NOMBRELABOTARIO,t.NOMBRE AS NOMBRETIPO
from  Medicamento m
inner join Laboratorio l
on m.IIDLABORATORIO=l.IIDLABORATORIO
inner join TipoMedicamento t
on m.IIDTIPOMEDICAMENTO=t.IIDTIPOMEDICAMENTO
where m.BHABILITADO=1'

IF @idmedicamento!=0
SET @sql=@sql+ ' AND m.IIDMEDICAMENTO LIKE ''%'+convert(varchar,@idmedicamento)+'%'''
IF @nombre!=''
SET @sql=@sql+ ' AND m.NOMBREMEDICAMENTO LIKE ''%'+@nombre+'%'''
IF @idlaboratorio!=0
SET @sql=@sql+ ' AND l.IIDLABORATORIO = '+convert(varchar,@idlaboratorio)
IF @idtipomedicamento!=0
SET @sql=@sql+ ' AND t.IIDTIPOMEDICAMENTO = '+convert(varchar,@idtipomedicamento)

EXECUTE SP_EXECUTESQL @sql

end
GO