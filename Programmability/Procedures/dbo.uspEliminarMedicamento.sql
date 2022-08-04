SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspEliminarMedicamento]
@iidmedicamento int
as
begin

update Medicamento
set BHABILITADO=0
where IIDMEDICAMENTO=@iidmedicamento

end
GO