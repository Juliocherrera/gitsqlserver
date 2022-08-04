SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspListarTipoUsuario]
as
begin
select IIDTIPOUSUARIO,NOMBRE,DESCRIPCION
from TipoUsuario
where BHABILITADO=1
end
GO