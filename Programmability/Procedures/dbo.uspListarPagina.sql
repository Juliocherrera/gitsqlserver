﻿SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[uspListarPagina]
as
begin
select IIDPAGINA,MENSAJE,CONTRALADOR,ACCION
from Pagina
where BHABILITADO=1

end
GO