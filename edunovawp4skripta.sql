
use edunovawp4;
-- Tipovi podataka:https://learn.microsoft.com/en-us/sql/t-sql/data-types/data-types-transact-sql?view=sql-server-ver16
create table smjerovi(
sifra int not null primary key identity(1,1) ,
naziv varchar(100),
trajanje int null, -- ne treba pisati null jer je on podrazumjeva
cijena decimal(18,2),
izvodiseod datetime,
verificiran bit
);


create table grupe(



create table polaznici(
sifra int  not null primary key identity(1,1) ,
ime varchar(20) not null,
prezime varchar(20) not null,
oib char(11),
email varchar(50) not null
);


create table clanovi(
grupa int not null,
polaznik int not null
);

alter table add foreign key (smjer) references smjerovi(sifra);
alter table clanovi add foreign key (grupa) references grupe(sifra);
alter table clanovi add foreign key (polaznik) references polaznici(sifra);