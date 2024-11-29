USE Universidad;

create event ActualizarHorasDepartamento
on schedule every 1 hour starts '29-10-22024  5:00' ends '29-11-2024  5:00' 
do update departamento
set value = value +1 
where id = 1;

create event LimpiarAuditoriaCadaSemestre
on schedule every 6 month do delete from auditoria where id < month(1) - interval 6 month;

create event ActualizarListaDeProfesoresDestacados
on schedule every 6 month starts '28-10-2024  3:00' ends '28-11-2024  3:00'
do update profesor
set value = value +1
where id = 1;