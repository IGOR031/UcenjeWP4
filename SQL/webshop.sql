use master;
go
drop database if exists webshop;
go
create database webshop;
go
use webshop;

create table proizvodi(
sifra int not null primary key identity(1,1),
naziv varchar(230) not null,
datumnabave datetime not null,
aktivan bit
);

create table racuni(
sifra int not null primary key identity(1,1),
datumNabave datetime not null, 
kupac int,
aktivan bit
);


create table kupci(
sifra int not null primary key identity(1,1),
ime varchar(60) not null,
prezime varchar(80) not null,
ulica varchar(120) not null,
mjesto varchar(140) not null
);

create table stavke(
racun int,
proizvod int,
kolicina int,
cijena decimal (18,2)
);


alter table stavke add foreign key (racun) references racuni(sifra);
alter table stavke add foreign key (proizvod) references proizvodi(sifra);
alter table racuni add foreign key (kupac) references kupci(sifra);