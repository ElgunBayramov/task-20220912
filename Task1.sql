/*
create database Task1 
use Task1
*/

create table [dbo].[Telebe](
  [Id] int primary key identity,
  [Name] nvarchar(20),
  [Surname] nvarchar(50),
  [Birthdate] date,
  [Address] nvarchar(100),
  [Gender] nvarchar(6),
  [GroupName] varchar(10),
  [Profession] nvarchar(50),
  [Faculty] nvarchar(100)
);


insert into [dbo].[Telebe]
values
(N'Akif',N'Quliyev','19930718',N'I.Əhlimanov küçəsi',N'kişi',N'681.1',N'Informasiya Texnologiyaları',N'Informasiya texnologiyaları və idarəetmə fakultəsi'),
(N'Elvin',N'Allahverdiyev','19940101',N'Oqtay Şabanov küçəsi',N'Kişi',N'683.1',N'Informasiya təhlükəsizliyi',N'Informasiya texnologiyaları və idarəetmə fakultəsi'),
(N'Yusif',N'Əliyev','19930606',N'Cəfər Cabbarlı küçəsi',N'Kişi',N'681.1',N'Informasiya Texnologiyaları',N'Informasiya texnologiyaları və idarəetmə fakultəsi'),
(N'Nəzrin',N'Babayeva','19931031',N'Nizami küçəsi',N'Qadın',N'681.1',N'Informasiya Texnologiyaları',N'Informasiya texnologiyaları və idarəetmə fakultəsi'),
(N'Aysel',N'Abdullayeva','19941005',N'Cəbrayıl Xanməmmədov küçəsi',N'Qadın',N'683.1',N'Informasiya təhlükəsizliyi',N'Informasiya texnologiyaları və idarəetmə fakultəsi')

/* - 683.1 qrupunda oxuyan tələbələri göstərmək */
select * from [dbo].[Telebe]
where [GroupName]=683.1;

/* - 681.1 qrupunda oxuyan tələbələrin ancaq adı və soyadı sütünlarındakı məlumatları göstərmək */
select [Name],[Surname] from [dbo].[Telebe]
where [GroupName]=681.1;

/* - Soyada görə [A-Z]`e siralama */
select * from [dbo].[Telebe]
order by [Surname] ASC;

/* - Adında e və y hərfləri olmayan tələbələri göstərmək */
select * from [dbo].[Telebe]
where [Name] not like '%[ey]%'

