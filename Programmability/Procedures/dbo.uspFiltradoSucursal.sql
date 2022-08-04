SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspFiltradoSucursal]
@nombresucursal varchar(100)
as
begin

if @nombresucursal=''
select IIDSUCURSAL,NOMBRE,DIRECCION
from Sucursal
where BHABILITADO=1
else
select IIDSUCURSAL,NOMBRE,DIRECCION
from Sucursal
where BHABILITADO=1 and NOMBRE like '%'+@nombresucursal+'%'

end
GO