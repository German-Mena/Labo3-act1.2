create database act2_1aN
GO
use act2_1aN
GO
create table departamentos(
	id bigint,
	nombre varchar(60) not null,
	primary key (id)
)
GO
create table empleados(
	legajo bigint,
	apellido varchar(60) not null,
	nombre varchar(60) not null,
	nacimiento date not null check (nacimiento < GETDATE()),
	departamento bigint,
	primary key (id)
	foreign key departamento references departamentos(id)
)