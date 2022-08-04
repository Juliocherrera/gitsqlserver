SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[usp_depurar]
as
begin
	BEGIN TRY
			DECLARE @i int = 1,
			       @count int,
			        @idt int = 1,
					@existe int, 
					@total int,
					@Id int
					
			--select DISTINCT Id from students
			--select count(Id) FROM students
			SET @i = 1;
			SET @idt = 1;
			--SELECT @existe = COUNT(Id) FROM students
				WHILE (@i <=5)
					BEGIN
						SET @Idt = @Idt + 1
						SET @i = @i + 1
					PRINT @i
				    END
			
			
		--DELETE FROM BDFarmacia.dbo.students
	END TRY
	BEGIN CATCH
		PRINT 'Algo salio mal';
	END CATCH

end

exec usp_depurar
GO