create database galeri2 ;
use galeri2;
create table musteri(
mno int identity (1,1) primary key , 
madi nvarchar (50),
msoyadi nvarchar (50),
madres nvarchar(50),
mtelefon nvarchar(50)
)

create table araclar(aracNo int identity (1,1) primary key,
model nvarchar(20),
yil int,
marka nvarchar(20),
plaka nvarchar(25),
fiyat int);

create table sates(
satNo int identity (1,1) primary key,
mno int constraint "sno	" foreign key(mno) references musteri(Mno),
aracno int constraint "aracno" foreign key(aracno) references araclar(aracno),

sat_tarih date,
fiyat int);

create table alim (
alimNo int identity (1,1) primary key,

mNo int,
aracNo int,
alimTarih datetime,
aFiyat int,);
alter table alim add constraint "alimNo" foreign key(aracno) 
references araclar(aracNo)
alter table alim add constraint "mNo" foreign key(mno) 
references musteri(mno)
select * from musteri 
insert into musteri values ('enes','unsal','kayseri',12332 );
insert into musteri values ('ali','yýldýz','manisa',12344 );
insert into musteri values ('mine','asdas','aksaray',1239 );
insert into musteri values ('ece','uns','konya',1238 );
insert into musteri values ('metin','unl','istanbul',1237 );
insert into musteri values ('emre','metin','ankara',1234 );
insert into musteri values ('melike','saýyr','kocaeli',1235 );

Select * from araclar
insert into araclar values('fort',2001,'fiat','38-PL-666',21000)
insert into araclar values('Shelby GT',2001,'Ford','39-AIS-999',22000)
insert into araclar values('308',2001,'Peugeot','40-PP-051',23000)
insert into araclar values('RS 200',2001,'Pulsar','38-ADC-010',24000)
insert into araclar values('Fiesta',2001,'Ford','38-TOP-020',25000)
insert into araclar values('Doblo',2001,'Fiat','38-KSS-038',2)

select * from sates 
insert into sates values(1,1,'2010-02-12',250000);
insert into sates values(2,3,'2010-05-15',290000);
insert into sates values(3,4,'2010-12-12',260000);

select * from alim 
insert into alim values(1,1,'2013-02-12',250000);
insert into alim values(3,2,'2012-05-15',290000);
insert into alim values(4,5,'2011-12-12',260000);

select madi,msoyadi from musteri where mno IN (SELECT mno FROM sates)

select musteri.madi,araclar.model from alim join musteri on musteri.mno=alim.mNo
join araclar on araclar.aracNo=alim.aracNo

select COUNT(alim.aracNo) from alim 
join araclar on araclar.aracNo=alim.aracNo

select marka, model from araclar
join sates on araclar.aracNo=sates.aracno

select SUM(s.fiyat) - SUM(al.aFiyat) AS Fark from araclar a 
join sates s on s.aracno=a.aracNo
join alim al on al.aracNo=a.aracNo

select * from araclar where aracno not in
(select aracno from sates)


*/7.	Her aracýn ortalama satýþ tutarýný bulmak için gerekli SQL ifadesini yazýnýz.*/
SELECT AVG(sates.fiyat),sates.aracno FROM sates
JOIN araclar a on a.aracNo=sates.aracno
GROUP BY sates.aracno

SELECT * FROM sates JOIN araclar ON araclar.aracNo= sates.aracno
JOIN musteri ON musteri.mno= sates.mno

SELECT * FROM alim JOIN araclar ON araclar.aracNo= alim.aracno
JOIN musteri ON musteri.mno= alim.mno

select * from sates
join  araclar ON araclar.aracNo= sates.aracno
JOIN musteri ON musteri.mno= sates.mno
where sates.fiyat < 20000

insert into sates values (4,5,'2023-12-26',10000)

insert into musteri values ('emre','kaya','tokat',1234)

select*from musteri where madres='tokat'
