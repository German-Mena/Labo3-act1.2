create database act2_NaN
GO
use act2_NaN
GO
create table programadores(
	id int,
	nombre varchar(60) not null,
	apellido varchar(60) not null,
	mail varchar(60) not null,
	primary key (id)
)
GO
create table lenguajes(
	id int,
	nombre varchar(60) not null,
	primary key (id)
)
GO
create table lenguajesProgramadores(
	idProgramador int,
	idLenguaje int,
	primary key (idProgramador, idLenguaje),
	foreign key (idProgramador) references programadores(id),
	foreign key (idLenguaje) references lenguajes(id)
)
