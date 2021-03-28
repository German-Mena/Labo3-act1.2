create database act2
GO
use act2
GO
create table empleados(
	legajo int,
	apellido varchar(30) not null,
	nombre varchar(30) not null,
	nacimiento date not null check (nacimiento < GETDATE()),
	primary key (legajo)
)
GO
create table domicilio(
	legajo int,
	direccion varchar(60) not null,
	codigoPostal varchar(60) not null,
	primary key (legajo),
	foreign key (legajo) references empelados (legajo)
)