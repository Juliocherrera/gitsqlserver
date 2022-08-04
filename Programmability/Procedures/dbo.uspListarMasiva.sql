SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[uspListarMasiva]
as
begin
select Orden,Name,Email,Class,Pesos
from ##temporal order by Orden DESC
end
GO