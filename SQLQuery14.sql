insert into Arac values ('2003','fiat ', '38 vtys 3838' ,'1000000');
insert into Arac values ('2004','tofas','38 vtys 2000' , '2000000');
insert into Arac values ('2005', 'ford' , '38 vtys 3000', '14124123');

insert into Satislar(aracNo,S_tarihi,S_fiyat) values( 1 ,'2022-05-04',17000);
insert into Satislar(aracNo,S_tarihi,S_fiyat) values( 3 ,'2020-06-01',115000);
insert into Satislar(aracNo,S_tarihi,S_fiyat) values( 3 ,'2023-06-15',270000);
insert into Satislar(aracNo,S_tarihi,S_fiyat) values(  2 ,'2022-05-04',17500);

select * from Alislar;
insert into Alislar(aracNo,mno,alim_tarih,afiyat) values( 1 , 1 ,'2022-05-04',17000);
insert into Alislar(aracNo,mno,alim_tarih,Afiyat) values( 3 ,2 ,'2020-06-01',115000);
insert into Alislar(aracNo,mno,alim_tarih,Afiyat) values( 3 , 3 ,'2023-06-15',270000);
insert into Alislar(aracNo,mno,alim_tarih,Afiyat) values(  2 , 4 ,'2022-05-04',17500);

select Musteri.Madi from Satislar
join Musteri on Musteri.Mno = Satislar.Mno;

select * 
from Alislar
join Musteri on Musteri.Mno = Alislar.Mno
join Arac on Arac.aracNo = Alislar.aracno


select COUNT(arac.aracNo) as aracsayýsý
from Alislar 
join Musteri on Musteri.Mno = Alislar.Mno
join Arac on Arac.aracNo = Alislar.aracno

SELECT Arac.Marka, Arac.Model FROM Satislar
JOIN Arac ON Arac.aracNo = Satislar.aracNo

select
SUM(Satislar.S_fiyat)- SUM(Alislar.Afiyat)
from Musteri 
join Alislar on Alislar.Mno=Musteri.Mno
join Satislar on Satislar.Mno=Musteri.Mno

select * from Satislar
select * from arac
where Arac.aracNo not in(select aracNo from Satislar)


Select * from Arac A join Satislar S on A.aracNo=S.aracNo
where  