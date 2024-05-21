use master;
go
drop database if exists eraVjezba;
go
create database eraVjezba collate Croatian_CI_AS;
go

use eraVjezba;

create table zupanije(
sifra int not null primary key identity(1,1),
naziv varchar(100) not null,
zupan int null
);
create table zupani(
sifra int not null primary key identity(1,1),
ime varchar(20) not null,
prezime varchar(50) not null,
);

create table opcine(
sifra int not null primary key identity(1,1),
zupanija int not null,
naziv varchar(20) not null,
);
create table mjesta(
sifra int not null primary key identity(1,1),
opcina int not null,
naziv varchar not null
);


alter table zupanije add foreign key (zupan) references zupani (sifra);
alter table opcine add foreign key (zupanija) references zupanije (sifra);
alter table mjesta add foreign key (opcina) references opcine (sifra);
