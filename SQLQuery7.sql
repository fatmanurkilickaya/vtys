USE CCUSTOMER;
SELECT COUNT(*) FROM CCUSTOMER_DATA
SELECT * FROM CCUSTOMER_DATA



SELECT COUNT(*) FROM CCUSTOMER_DATA
WHERE CITY = 'KAYSER�' AND GENDER = 'K';

SELECT CUSTOMERNAME, CITY, BIRTHDATE, DISTRICT, GENDER 
FROM CCUSTOMER_DATA
WHERE BIRTHDATE BETWEEN '1990-01-01' AND '1990-12-31'
GROUP BY CUSTOMERNAME, CITY, BIRTHDATE, DISTRICT, GENDER
HAVING BIRTHDATE BETWEEN '1980-01-01' AND '1995-01-01'
ORDER BY BIRTHDATE DESC




--ESK��EH�R 1994 ERKEK

SELECT * FROM CCUSTOMER_DATA
WHERE (CITY = 'ESK��EH�R' OR GENDER ='E') AND
BIRTHDATE BETWEEN '1994-01-01' AND '1994-12-31' 

USE OKUL_KUTUPHANESI
SELECT * FROM UYELER
SELECT * FROM EMANET

SELECT E.EMANET_NO,KI.KITAP_ADI,
(U.UYE_ADI+ ' '+ U.UYE_SOYADI ), K.KUTUPHANE_ADI,E.EMANET_TARIHI
FROM EMANET E
JOIN UYELER U ON E.UYE_NO = U.UYE_NO
JOIN KUTUPHANE K ON K.KUTUPHANE_NO = E.KUTUPHANE_NO
JOIN KITAPLAR KI ON KI.ISBN = E.ISBN
WHERE E.EMANET_TARIHI BETWEEN '2023-01-01' AND '2023-12-31'




--NEV�EH�R DE YA�AYAN 20-25 YA� ARALI�INDA K� K���LER�N
--EMANET ALDIKLARI KITAPLARI L�STLE
USE CCUSTOMER;

--T�REM�� �ZN�TEL�KTEN YA� BULMA
DECLARE @BIRTHDATE datetime
SET @BIRTHDATE='1998-01-09 00:00:00'

SELECT DATEDIFF(hour,@BIRTHDATE,GETDATE())/8766.0 AS AgeYearsDecimal
    ,CONVERT(int,ROUND(DATEDIFF(hour,@BIRTHDATE,GETDATE())/8766.0,0)) AS AgeYearsIntRound
    ,DATEDIFF(hour,@BIRTHDATE,GETDATE())/8766 AS AgeYearsIntTrunc

USE OKUL_KUTUPHANESI
SELECT E.EMANET_NO,KI.KITAP_ADI,
(U.UYE_ADI+ ' '+ U.UYE_SOYADI ), K.KUTUPHANE_ADI,E.EMANET_TARIHI
FROM EMANET E
LEFT OUTER JOIN UYELER U ON E.UYE_NO = U.UYE_NO
LEFT OUTER  JOIN KUTUPHANE K ON K.KUTUPHANE_NO = E.KUTUPHANE_NO
LEFT OUTER  JOIN KITAPLAR KI ON KI.ISBN = E.ISBN
WHERE E.EMANET_TARIHI BETWEEN '2023-01-01' AND '2023-12-31'

USE CCUSTOMER
SELECT * FROM CCUSTOMER_DATA
WHERE BIRTHDATE BETWEEN '1966-02-05' AND '1996-02-03'
AND CUSTOMERNAME LIKE '%AL�%' AND CITY IN ('�STANBUL',
'�ZM�R', 'KAYSER�');