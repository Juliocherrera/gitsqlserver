SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[uspGuardarSucursal2]
@motivo varchar(10),
@uuid varchar(100)
as 
begin
insert into canceladas(motivo,uuid)
values(@motivo,@uuid)

end
GO