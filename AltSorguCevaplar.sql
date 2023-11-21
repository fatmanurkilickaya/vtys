use galeri;
select * from Musteri;
select * from Arac;
select * from Satis;

select S.satis_no, M.Madi,M.Msoyadi,
A.Marka,A.Model,A.Plaka,A.Fiyat, 
S.satis_tarihi,S.satis_fiyat
from Satis S
join Musteri M on M.Mno = S.Mno
join Arac A on A.aracNo = S.aracNo
where S.aracNo=
(select aracNo from Satis where Mno= 
(select Mno from Musteri 
where Madi ='Murat' and Msoyadi='Beyaz'))

select * from Arac where aracNo IN
(select aracNo from Satis)

SELECT Satis.satis_fiyat, Alim.alim_fiyati FROM Satis 
JOIN Alim ON Alim.aracNo = Satis.aracNo
WHERE satis_fiyat 
< ANY (SELECT alim_fiyati FROM Alim)

select * from Satis
join Musteri on Musteri.Mno=Satis.Mno
join Arac on Arac.aracNo=Satis.aracNo
where satis.aracNo = 
(select aracNo from Arac where Marka like '%opel%')

select * from Satis
join Arac on Arac.aracNo= Satis.aracNo
join Musteri on Musteri.Mno = Satis.Mno
 where satis_fiyat
>any(select fiyat from Arac where Fiyat>200000)

select SUM(S.satis_fiyat) from Satis S
join Musteri M on M.Mno = S.Mno
where S.Mno in(
select Mno from Musteri 
where Madres like '%Amasya%' or Madres like '%Turhal%')

select * from Satis 
where NOT EXISTS(select Mno from Musteri 
WHERE Musteri.Mno = Satis.Mno)


select * from Musteri 
join Satis on Satis.Mno = Musteri.Mno
where Musteri.Mno IN(
SELECT Mno FROM Satis 
WHERE MONTH(satis_tarihi) in(5,6))