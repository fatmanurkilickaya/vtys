use OKUL_KUTUPHANESI
SELECT K.KUTUPHANE_NO,K.ACIKLAMA FROM KUTUPHANE K 
WHERE K.KUTUPHANE_NO 
=(select E.KUTUPHANE_NO from EMANET E WHERE E.EMANET_NO =3)

use CCUSTOMER;
select * from CCUSTOMER_DATA 
WHERE DISTRICT = 
(SELECT DISTRICT FROM CCUSTOMER_DATA WHERE ID =50 )
