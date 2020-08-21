create database university

alter database university
add filegroup 
university_data_1
go

alter database university
add filegroup
university_data_2
go
alter database university
add filegroup 
university_data_3 
go
alter database university
add filegroup 
university_data_4
go



alter database university
add file 
(name = university1,
filename= 'C:\DATA\university_1.ndf',
size = 29mb,
maxsize= 40mb,
filegrowth = 10mb)
to filegroup university_data_1
go

alter database university
add file 
(name = university2,
filename= 'c:\data\university_2.ndf',
size = 29mb,
maxsize= 40mb,
filegrowth = 10mb)
to filegroup university_data_2
go


alter database university
add file 
(name = university3,
filename= 'c:\data\university_3.ndf',
size = 29mb,
maxsize= 40mb,
filegrowth = 10mb)
to filegroup university_data_3



alter database university
add file 
(name = university4,
filename= 'c:\data\university_4.ndf',
size = 29mb,
maxsize= 40mb,
filegrowth = 10mb)
to filegroup university_data_4