create database galeri;
use galeri;
create table Musteri(
Mno int not null identity(1,1) primary key,
Madi nvarchar(30),
Msoyadi nvarchar(30),
Madres nvarchar(100),
Mtelefon int
);

create table Arac(
aracNo int not null identity(1,1) primary key,
Model nvarchar(30),
Marka nvarchar(30),
Plaka nvarchar(100),
Fiyat DOUBLE PRECISION 
);

create table Satis(
satis_no int not null identity(1,1) primary key,
Mno int constraint "satis_mno" foreign key (Mno)
references Musteri(Mno),
aracNo int foreign key (aracNo) references Arac(aracNo),
satis_tarihi datetime,
satis_fiyat DOUBLE PRECISION 
);

create table Alim(
alim_no int not null identity(1,1) primary key,
Mno int foreign key (Mno) references Musteri(Mno),
aracNo int foreign key (aracNo) references Arac(aracNo),
alim_tarihi datetime,
alim_fiyati DOUBLE PRECISION 
);

select * from Musteri

insert into Musteri values ('Turgut','Özseven','Turhal/Tokat',121646);
insert into Musteri values ('Turgut','Özseven','Turhal/Tokat',12164);
insert into Musteri values ('Mustafa','Çaðlayan','Meram/Konya',46524);
insert into Musteri values ('Ahmet','Kara','Zile/Tokat',47237);
insert into Musteri values ('Murat','Beyaz','Turhal/Tokat',385235);
insert into Musteri values ('Elif','Kurt','Beþiktaþ/Ýstanbul',9487);
insert into Musteri values ('Ayþe','Uçar','Taþova/Amasya',48739);
insert into Musteri values ('Bülent','Ayar','Turhal/Tokat',23237);

insert into Arac values ('2004','Fiat Marea','38 VTYS 3838',100000);
insert into Arac values ('2020','Renault Megane','38 VTYS 3839',110000);
insert into Arac values ('2010','Ford Focus','38  VTYS 3840',120000);
insert into Arac values ('2023','Volkswagen Golf','38  VTYS 3841',250000);
insert into Arac values ('2000','Opel Astra','38  VTYS 3842',82000);


insert into Satis values (1,1,'44685',170000);
insert into Satis values (4,5,'43983',115000);
insert into Satis values (7,4,'45092',270000);
insert into Satis values (2,1,'40361',17500);



