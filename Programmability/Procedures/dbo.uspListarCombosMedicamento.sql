SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create procedure [dbo].[uspListarCombosMedicamento]
as
begin

select IIDLABORATORIO,NOMBRE
from Laboratorio
where BHABILITADO=1

select IIDTIPOMEDICAMENTO,NOMBRE
from TipoMedicamento
where BHABILITADO=1
end
GO