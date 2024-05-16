?use master;
go
drop database if exists samostan;
go
create database samostan;
go
use samostan;

create table svecenici(
sifra int not null primary key identity(1,1),
naziv varchar(230) not null,
datumnabave datetime not null,
aktivan bit
);
