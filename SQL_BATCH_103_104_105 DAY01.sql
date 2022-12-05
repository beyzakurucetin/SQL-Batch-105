--Database (Veritaban1)Oluşturma
Create dataBase beyza;


--DDL - DATA DEFINITIOIN LANG.
--CREATE - TABLO OLUŞTURMA

create table ogrenciler5
(
ogrenci_no char(7), --uzunluğunu bildiğimiz stringler için char kullanılır
isim varchar (20), --uzunluğunu bilmediğimiz stringler için varchar kullanılır
soyisim varchar(25),
not_ort real, --ondalıklı sayılar için kullanılır
kayit_tarihi date);



--VAROLAN TABLODAN YENİ BİR TABLO OLUŞTURMAK
create table ogrenci_notlari
as --Benzer tablodaki başlıklarla ve data tipleriyle yeni bir tablo oluşturmak için normal tablo oluştururken
--i parantezler yerine AS kullanıp Select komutuyla almak istediğimiz verileri alırız
select isim,soyisim,not_ort from ogrenciler

--DML - DATA MANIPULATION LANG.
--INSERT (Database'e veri ekleme)
insert into ogrenciler VALUES ('1234567','Said','ILHAN',85.5,now());
insert into ogrenciler VALUES ('1234567','Said','ILHAN',85.5,'2020-12-11');

--BİR TABLOYA PARÇALI VERİ EKLEMEK İSTERSENİZ
insert into ogrenciler (isim,soyisim)values('beyza','kuru');

--DQL DATA QUERY LANG.
--SELECT
select * from ogrenciler; --BURADAKİ * SEMBOLÜ HER ŞEY ANLAMINDADIR

