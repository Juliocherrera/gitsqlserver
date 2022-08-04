SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspRecuperarLaboratorio]
@id int
as
begin
select IIDLABORATORIO,NOMBRE,DIRECCION,PERSONACONTACTO,NUMEROCONTACTO
from Laboratorio
where IIDLABORATORIO=@id
end
GO