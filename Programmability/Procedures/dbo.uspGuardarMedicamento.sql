SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[uspGuardarMedicamento]
@iidmedicamento int,
@codigo varchar(100),
@nombremedicamento varchar(100),
@iidlaboratorio int,
@iidtipomedicamento int,
@usomedicamento varchar(300),
@contenido varchar(300)
as
begin

if @iidmedicamento=0
--insert
insert into Medicamento(CODIGO,NOMBREMEDICAMENTO,IIDLABORATORIO,
BHABILITADO,IIDTIPOMEDICAMENTO,USOMEDICAMENTO,CONTENIDO)
values(@codigo,@nombremedicamento,@iidlaboratorio,1,@iidtipomedicamento,@usomedicamento,
@contenido)
else
--update
update Medicamento
set CODIGO=@codigo,NOMBREMEDICAMENTO=@nombremedicamento,IIDLABORATORIO=@iidlaboratorio,
IIDTIPOMEDICAMENTO=@iidtipomedicamento,USOMEDICAMENTO=@usomedicamento,
CONTENIDO=@contenido
where IIDMEDICAMENTO=@iidmedicamento

end
GO