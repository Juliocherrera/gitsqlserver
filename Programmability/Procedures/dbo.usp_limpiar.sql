SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[usp_limpiar](                                     
@Resultado int output
)
as
begin
	DELETE FROM TCME
	SET @Resultado = 0		
	--- modificacion ---
end
GO