USE OKUL_KUTUPHANESI;
SELECT * FROM UYELER WHERE CINSIYET ='K';
SELECT * FROM UYELER WHERE ADRES_NO = 6;

SELECT * FROM ADRESLER;

INSERT INTO UYELER VALUES ('AY�E','YILMAZ','K','12345678','A@GMAIL.COM',1);

INSERT INTO ADRESLER VALUES ('A', 'B', 8,'KAYSERI','38', 'TR');

UPDATE UYELER SET CINSIYET ='E' WHERE    UYE_NO = 1007;

DELETE FROM UYELER WHERE ADRES_NO = 6;
INSERT INTO UYELER VALUES('TOLUNAY EM�R', 'KO�ER','E','5321364818','mr.ekocer@gmail.com',1);

SELECT * FROM UYELER;
select * from EMANET;
INSERT INTO EMANET VALUES ('1234E5',1018,1,'1996-05-05','1996-05-15');

INSERT INTO UYELER VALUES('HAKAN','BERKE','E','546601','hakan@gmail.com',1);
UPDATE EMANET SET UYE_NO=1019 WHERE EMANET_NO=7;
SELECT * FROM EMANET;

SELECT*FROM KUTUPHANE;

INSERT INTO KUTUPHANE VALUES('Erciyes �niversitesi K�t�phanesi','Devlet K�t�phanesi',3);

ALTER TABLE KUTUPHANE ALTER COLUMN KUTUPHANE_ADI NVARCHAR(100);

SELECT*FROM KITAPLAR;

INSERT INTO KITAPLAR VALUES('156A46','K���k Prens',2021-12-05,110);

