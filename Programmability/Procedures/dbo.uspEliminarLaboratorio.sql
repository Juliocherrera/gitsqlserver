SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspEliminarLaboratorio]
@id int
as
begin
   update Laboratorio
   set BHABILITADO=0
   where IIDLABORATORIO=@id

end
GO