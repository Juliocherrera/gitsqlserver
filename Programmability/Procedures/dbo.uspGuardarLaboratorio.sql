SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE procedure [dbo].[uspGuardarLaboratorio]
@idlaboratorio int,
@nombre varchar(100),
@direccion varchar(100),
@personacontacto  varchar(300),
@numerocontacto  varchar(9)
as
begin
   --insertar
   if @idlaboratorio=0
   begin
     insert into Laboratorio(NOMBRE,DIRECCION,PERSONACONTACTO,NUMEROCONTACTO,BHABILITADO)
	 values(@nombre,@direccion,@personacontacto,@numerocontacto,1)
   end
   --actualizar
   else
   begin
        update Laboratorio
		set NOMBRE=@nombre,DIRECCION=@direccion,PERSONACONTACTO=@personacontacto,
		 NUMEROCONTACTO=@numerocontacto
		where IIDLABORATORIO=@idlaboratorio
   end

end
GO