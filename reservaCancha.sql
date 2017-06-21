create database reservaDeCanchas

use reservaDeCanchas

create table usuario
(
  rut varchar(15) primary key,
  nombre varchar(40) not null,
  apellido varchar(40) not null,
  correo varchar(100) unique,
  pass varchar(16),
  direccion varchar(100) not null,
  fechaDeNacimiento varchar(10) not null,
  fono int
);




insert into usuario
values
('111','juan','berrios','juan_berrios','123','cantarito de greda','08/01/1996',963686845)

select * from usuario

delete from usuario where rut like '111'

drop table fono
drop table usuario


