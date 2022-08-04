SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspRecuperarSucursal]
@iidsucursal int
as
begin
select *
from  Sucursal
where IIDSUCURSAL=@iidsucursal
end
GO