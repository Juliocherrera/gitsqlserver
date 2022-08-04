SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[sp_JobBalanceTmt]

as
begin
	BEGIN TRY
	DECLARE
	@total int,
@i int = 1,
@id int,
@class decimal,
@Resultado int
			SELECT @total = COUNT(Id)FROM students
			--SELECT @id = Id, @class = Class FROM students
			WHILE (@i <=@total)
				BEGIN
				SELECT @id = Id, @class = Class FROM students
					--update students SET Pesos = @class WHERE Id = @id 
					SET @i = @i + 1
					SET @Resultado = 1
					PRINT @total
				END
		--DROP TABLE temporal
	END TRY
	BEGIN CATCH
		SET @Resultado = 0
	END CATCH
end
GO