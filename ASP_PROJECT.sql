CREATE DATABASE AMMSDB
GO
USE AMMSDB
GO

CREATE TABLE tblColor
(
	cId INT IDENTITY PRIMARY KEY,
	cName NVARCHAR(40) NOT NULL
)
GO

Insert into tblColor values
('Red'),
('Black'),
('White')
go

select * from tblColor
go

CREATE TABLE tblAnimalType
(
	atId INT IDENTITY PRIMARY KEY,
	animalName NVARCHAR(40) NOT NULL
)
GO

Insert into tblAnimalType values
('Cow'),
('Goat'),
('Camel')
go

select * from tblAnimalType
go

CREATE TABLE tblLocation
(
	lId INT IDENTITY PRIMARY KEY,
	BlockName NVARCHAR(50) NOT NULL,
	RowNumber INT  NULL
)
GO

Insert into tblLocation values
('AA',1),
('AB',1),
('AC',1)
go
select * from tblLocation
go

CREATE TABLE tblSeller
(
	seId INT IDENTITY PRIMARY KEY,
	sName NVARCHAR(50) NOT NULL,
	gender BIT ,
	phone NVARCHAR (30) NOT NULL,
	sAddress NVARCHAR(100) NOT NULL,
	photo IMAGE NULL
)
GO

SELECT photo FROM tblSeller WHERE seId=1
go

Insert into tblSeller values
('Arif Hossin',1,'0171000001','Dhaka','1.jpg')

go
select * from tblSeller
go
CREATE TABLE tblSellerProductDetails
(
	spdId INT IDENTITY PRIMARY KEY,
	seId  INT REFERENCES tblSeller(seId),
	slId  INT REFERENCES tblLocation(lId),
	atId  INT REFERENCES tblAnimalType(atId),
	quintity INT NOT NULL

)
GO
 
CREATE TABLE tblBuyer
(
	bId INT IDENTITY PRIMARY KEY,
	buyerName NVARCHAR(50) NOT NULL,
	dob DATETIME NOT NULL,
	gender BIT,
	phone NVARCHAR(30) NOT NULL,
	email NVARCHAR(30) NOT NULL,
	photo NVARCHAR(400),
	bAddress NVARCHAR(100) NOT NULL
)
GO

insert into tblBuyer values
('Alam Khan','01-01-2002',1,'01711475700','a@gmail,com','a.jpg','Mirpur')
go
select * from tblBuyer
go
CREATE TABLE tblInvoice
(
	invoiceID INT IDENTITY PRIMARY KEY,
	invoiceDate DATETIME NOT NULL,
	bId INT REFERENCES tblBuyer(bId),
	atId INT REFERENCES tblAnimalType(atId),
	cId INT REFERENCES tblColor(cId),
	seId INT REFERENCES tblSeller(seId),
	price MONEY NOT NULL DEFAULT 0.00,
	commission	MONEY NOT NULL DEFAULT 0.00
)
GO



insert into tblInvoice values
('01-01-2002',1,1,2,2,40000,4000)
go

select * from tblInvoice
go

SELECT *,l.lId,l.BlockName,a.atId,a.animalName FROM tblSellerProductDetails sp inner join tblSeller s on sp.seId = s.seId inner join tblLocation l on sp.slId= l.lId
inner join tblAnimalType a on a.atId=sp.atId
go


SELECT s.sName FROM tblSellerProductDetails sp inner join tblSeller s on sp.seId = s.seId inner join tblLocation l on sp.slId= l.lId
                    inner join tblAnimalType a on a.atId=sp.atId 
--CREATE TABLE tblAccount
--(
--	invoiceId INT ,
--	commission MONEY DEFAULT 0.00,
--	totalBlance  MONEY DEFAULT 0.00
--)
--GO


--CREATE TRIGGER tr_total
--ON tblAccount
--AFTER INSERT,UPDATE,DELETE
--AS
--declare @c MONEY,@dc MONEY
--select @c=SUM(i.commission) from inserted i
--select @dc=SUM(d.commission) from deleted d
--BEGIN
-- UPDATE tblAccount 
-- SET totalBlance= @dc + @c 
 
--END