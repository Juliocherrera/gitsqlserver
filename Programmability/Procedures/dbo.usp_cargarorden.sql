SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[usp_cargarorden](
@Ai_orden int,
@Av_cmd_code varchar(8),
@Av_cmd_description varchar(500),
@Af_count decimal(8,2),
@Av_countunit varchar(6),
@Af_weight decimal(8,2), 
@Av_weightunit varchar(6)
)
as

begin
        SELECT @Av_cmd_description = SUBSTRING(@Av_cmd_description,1,60)
		--SELECT @Af_weight = CAST (@Af_weight AS DECIMAL(8,2))
		INSERT INTO CARGAPORORDEN(Ai_orden,Av_cmd_code,Av_cmd_description,Af_count,Av_countunit,Af_weight,Av_weightunit)
		VALUES(@Ai_orden,@Av_cmd_code,@Av_cmd_description,@Af_count,@Av_countunit,@Af_weight,@Av_weightunit)
end
GO