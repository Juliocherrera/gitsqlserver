SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspFiltrarLaboratorio]
@nombre varchar(100),
@direccion varchar(100),
@personacontacto varchar(100)
as
begin

declare @sql NVARCHAR(400)

SET @sql= 'select IIDLABORATORIO,NOMBRE,DIRECCION,PERSONACONTACTO
from Laboratorio
where BHABILITADO=1'

IF @nombre!=''
SET @sql=@sql+ ' AND NOMBRE LIKE ''%'+@nombre+'%'''
IF @direccion!=''
SET @sql=@sql+ ' AND DIRECCION LIKE ''%'+@direccion+'%'''
IF @personacontacto!=''
SET @sql=@sql+ ' AND PERSONACONTACTO LIKE ''%'+@personacontacto+'%'''

EXECUTE SP_EXECUTESQL @sql

end
GO