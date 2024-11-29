USE Universidad;

delimiter //
create trigger tabla_profe after update on profesor 
for each row
begin
insert into profesor (id, id_asignatura) values (new.id, 2);
end //
delimiter ;