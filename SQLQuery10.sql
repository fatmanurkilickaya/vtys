create database forum;
use forum;
create table magaza(
id int primary key not null,
adi nvarchar(20)
);
use forum;
insert into magaza values(1,'mavi');

use OKUL_KUTUPHANESI;
select K.KUTUPHANE_ADI, A.SEHIR, A.MAHALLE, A.CADDE from KUTUPHANE K
JOIN ADRESLER A ON A.ADRES_NO = K.ADRES_NO

select * from KITAPLAR where KITAP_ADI = 
(select KITAP_ADI from KITAPLAR WHERE ISBN ='1242')

use OKUL_KUTUPHANESI;
insert into KITAPLAR values('DSD45','AGAK','2020-01-01',150)

SELECT * FROM KITAPLAR WHERE S_SAYISI < 
(SELECT AVG(S_SAYISI) FROM KITAPLAR)

USE OKUL_KUTUPHANESI;
CREATE TABLE OGRENCI(
ogr_no int not null primary key,
ad nvarchar(20),
soyad nvarchar(20),
bolum_id int
);
USE OKUL_KUTUPHANESI;
CREATE TABLE BOLUMLER(
bolum_id int not null primary key,
bolum_ad nvarchar(50)
);

insert into OGRENCI values(305, 'Ayþe Ýrem', 'Kaya', 1);
insert into OGRENCI values(306, 'Ayþe', 'Kshaya', 2);
insert into OGRENCI values(307, 'Ýrem', 'Khfshaya', 3);
insert into OGRENCI values(308, 'Ahmet', 'Kafshya', 1);
insert into OGRENCI values(309, 'Mehmet', 'dsdgs', 2);

insert into BOLUMLER values(1, 'Bilgisayar');
insert into BOLUMLER values(2, 'Makine');
insert into BOLUMLER values(3, 'Elektrik');

use OKUL_KUTUPHANESI;
select * from OGRENCI
select * from BOLUMLER

select * from OGRENCI where bolum_id=(
select bolum_id from BOLUMLER where bolum_ad = 'bilgisayar')

select * from OGRENCI where bolum_id=(
select bolum_id from BOLUMLER where bolum_ad = 'elektrik')

select * from OGRENCI O 
join BOLUMLER B on B.bolum_id = O.bolum_id
where B.bolum_ad ='Makine'

select * from OGRENCI where bolum_id =
(select bolum_id from OGRENCI O 
where O.ad= 'Ayþe Ýrem')

