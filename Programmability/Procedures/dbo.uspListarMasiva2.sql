SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[uspListarMasiva2]
as
begin
select Ai_orden,Av_cmd_code,Av_cmd_description, Af_count, Av_countunit,Af_weight, Av_weightunit
from ##temporal order by Ai_orden DESC
end
GO