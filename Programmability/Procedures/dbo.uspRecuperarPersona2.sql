SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[uspRecuperarPersona2]
@idpersona int
as
begin
select * from persona
where IIDPERSONA=@idpersona
end
GO