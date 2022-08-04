SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[usp_cargarXz](                                     
@Resultado int output
)
as
begin
	BEGIN
	      
			DECLARE @i int = 1,
			@count int,
					@existe int, 
					@Id int
			SET @count = (select count(*) from TCME) 
			--SELECT   @existe = COUNT(Id) FROM students2 WHERE Id = @Id
			IF @count > 0
				BEGIN
				SET @Resultado = 0
				END
			ELSE
				BEGIN
					SET @Resultado = 1
					--DELETE FROM BDFarmacia.dbo.students
				END
		--DROP TABLE temporal
	END
end
GO