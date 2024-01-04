USE musterialis
create table Satislar(
satisNo int identity(1,1) NOT NULL PRIMARY KEY,
Mno int constraint "satis_mno" foreign key (Mno)
references Musteri(Mno),
aracNo int foreign key (aracNo) references Arac(aracNo),
S_tarihi date,
S_fiyat int
);

use musterialis
create table Alislar(
Alimno int identity (1,1) not null primary key,
Mno int constraint "alis_mno" Foreign key (Mno) references Musteri(Mno),
aracno int foreign key (aracno) references Arac(aracno),
alim_tarih date,
Afiyat int
);




