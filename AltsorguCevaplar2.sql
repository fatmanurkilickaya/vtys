use galeri;
select * from Musteri;
select * from Arac;
select * from Satis;
select * from Alim;

select * from satis
join Musteri on Musteri.Mno = Satis.Mno
where aracNo IN
(select aracNo from Satis where Mno = 
(select Mno from Musteri 
where Madi='Mustafa' and Msoyadi='Çaðlayan'))


SELECT * FROM Satis
join Musteri on Musteri.Mno = Satis.Mno
WHERE ARACNO IN
 (SELECT aracNo FROM Arac)

Select * from Satis
JOIN Alim ON Alim.Mno = Satis.Mno
where satis_fiyat 
<ANY (select alim_fiyati from Alim)

select * from Musteri where Mno In
(select Mno from satis 
where aracNo In
(SELECT aracNo FROM Arac 
where Marka like '%Opel%'))

SELECT * FROM Musteri WHERE Mno IN(
SELECT Mno FROM Alim WHERE aracNo IN(
SELECT aracNo FROM Arac 
WHERE Marka LIKE '%Opel%'))




INSERT INTO Arac 
VALUES(2011,'FORD FOCUS','38VTYS1236',220000)

SELECT *FROM Satis where aracno in
(SELECT aracNo FROM Arac WHERE Fiyat>200000)


select SUM(satis_fiyat) from Satis 
join Musteri on Musteri.Mno = Satis.Mno
where Satis.Mno In
(select Mno from Musteri 
where Madres like '%Turhal%' 
or Madres like '%Amasya%')
--group by satis_fiyat
--order by satis_fiyat desc

Select * from Musteri where Mno Not In
(select Mno from Satis)

Select * from Musteri
join Satis on Satis.Mno = Musteri.Mno
where Musteri.Mno In(
select Mno from Satis 
where MONTH(satis_tarihi) in(5,6))

Select aracNo,Mno from Satis where aracNo In 
(select aracNo from Arac)
group by aracNo,Mno
having COUNT(*) >1

select * from satis 
join Musteri on Musteri.Mno = Satis.Mno
where aracNo=
(select aracNo  from Satis 
where satis_fiyat= 
(select MAX(satis_fiyat) from Satis))
