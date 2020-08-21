create database school

alter database school
add filegroup set_1
go


alter database school
add filegroup set_2
go


alter database school
add filegroup set_3
go


alter database school
add filegroup set_4
go

alter database school
add file
( name = set_1,
filename = 'c:data/set-1.ndf',
size= 30mb,
maxsize = 40mb,
filegrowth= 20mb)
to filegroup set_1
go

alter database school
add file
( name = set_2,
filename = 'c:data/set-2.ndf',
size= 30mb,
maxsize = 40mb,
filegrowth= 20mb)
to filegroup set_2
go

alter database school
add file
( name = set_3,
filename = 'c:data/set-3.ndf',
size= 30mb,
maxsize = 40mb,
filegrowth= 20mb)
to filegroup set_3
go


alter database school
add file
( name = set_4,
filename = 'c:data/set-4.ndf',
size= 30mb,
maxsize = 40mb,
filegrowth= 20mb)
to filegroup set_4
go


create partition function p_set (datetime)
as
range right  for values(01-01-2009, 01-01-2010, 01-01-2011, 01-01-2012)
go


create partition scheme s_set
as
partition p_set
to(set_1, set_2, set_3, set_4)









create database homeforsale
 
alter database homeforsale
add filegroup wintersale
go

alter database homeforsale
add filegroup summersale
go 

alter database homeforsale
add filegroup latesale
go


alter database homeforsale
add file
(name= wintersale,
filename= 'c: data/wintersale.ndf',
size= 10mb,
maxsize=20mb
filegrowth=10mb)
to  filegroup wintersale
go



alter database homeforsale
add file
(name= summersale,
filename= 'c: data/summersale.ndf',
size= 10mb,
maxsize=20mb
filegrowth=10mb)
to  filegroup summersale
go


alter database homeforsale
add file
(name= latesale,
filename= 'c: data/latesale.ndf',
size= 10mb,
maxsize=20mb
filegrowth=10mb)
to  filegroup latesale
go


create partition function sales 
(date) 
range for left values('01-01-2009', '01-06-2009', '01-12-2009')
go

create partition scheme s_sales
as 
partition sale 
to(wintersale, summersale, latesale)






















