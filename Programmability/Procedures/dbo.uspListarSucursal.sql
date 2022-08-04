SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspListarSucursal]
as
begin
select IIDSUCURSAL,NOMBRE,DIRECCION
from Sucursal
where BHABILITADO=1

end
GO