SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspRecuperarMedicamento]
@idmedicamento int
as
begin

select *
from Medicamento
where IIDMEDICAMENTO=@idmedicamento
end
GO