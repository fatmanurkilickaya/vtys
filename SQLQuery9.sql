CREATE DATABASE AVM;
use AVM;
CREATE TABLE MUSTERI(
Mno int not null identity(1,1) PRIMARY KEY,
Madi nvarchar(20),
Msoyadi nvarchar(50),
Madres nvarchar(200),
Mtelefon int
);

create table Arac(
aracNo int not null identity(1,1) Primary Key,
model nvarchar(20),
marka nvarchar(20),
plaka nvarchar(20),
fiyat DOUBLE PRECISION
);

create table Satis(
Sno int not null identity(1,1) Primary Key,
Mno int constraint "mno_satis" 
foreign key (Mno) References MUSTERI(Mno) ,
aracNo int constraint "aracNo_satis" 
foreign key (aracNo) References MUSTERI(aracNo),
satisTarihi datetime,
satisFiyati DOUBLE PRECISION,
);


alter table musteri add constraint "mno_satis" 
foreign key (Mno) References MUSTERI(Mno)

create table Alis(
Alimno int not null identity(1,1) Primary Key,
Mno int constraint "mno_alis" 
foreign key (Mno) References MUSTERI(Mno) ,
aracNo int constraint "aracno_alis" 
foreign key (aracNo) References ARAC(aracNo),
alisTarihi datetime,
alisFiyati DOUBLE PRECISION,
);





USE AVM
SELECT * FROM MUSTERI
SELECT * FROM ARAC
USE AVM;
INSERT INTO MUSTERI VALUES('Turgut','Özseven','Turhal/Tokat',1216);
INSERT INTO MUSTERI VALUES('Mustafa','Çaðlayan','Meram/Konya',4652);
INSERT INTO MUSTERI VALUES('Ahmet','Kara','Zile/Tokat',47237);
INSERT INTO MUSTERI VALUES('Murat','Beyaz','Turhal/Tokat',3852);
INSERT INTO MUSTERI VALUES('Elif','Kurt','Beþiktaþ/Ýstanbul',948);
INSERT INTO MUSTERI VALUES('Ayþe','Uçar','Taþova/Amasya',487);
INSERT INTO MUSTERI VALUES('Bülent','Ayar','Turhal/Tokat',23237);


USE AVM;
INSERT INTO ARAC VALUES('2004','Fiat Marea','38 a 3838',100000);
INSERT INTO ARAC VALUES('2020','Renault Megane','38  r  3839',110000);
INSERT INTO ARAC VALUES('2010','Ford Focus','38  V 3840',120000);
INSERT INTO ARAC VALUES('2023','Volkswagen Golf','38  er 3841',250000);
INSERT INTO ARAC VALUES('2000','Opel Astra','38  cv 3842',82000);



