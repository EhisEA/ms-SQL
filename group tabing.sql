create database narrowfabrics

create table recipient
(order_name char(9)not null primary key,
firstname varchar(20),
lastname varchar(20),
address varchar(50),
city char(15),
state char(15),
countryID varchar(2) constraint fcountry foreign key (countryID) references country (countryID),
zipcode char(10),
phone char(18)
)
drop table recipient

insert recipient
values('Polo','Mike','Jerkins','402 Old Creek Rd SE','Rome','Georgia','+4','30189','(+1) 309-415-4389')

insert recipient
values('GAP','Rose','Santos','212 Pirate Court','Woodstock','Georgia','+4','20144','(+1) 409-334-8019')

insert recipient
values('Adidas','Stanley','Enok','18 Ademefun Cresent','Alimosho','Lagos','+1','23401','(+234) 813-034-556')

insert recipient
values('Hugo','Tunde','Kwame','16 bank Road','Banku','Accra','+2','23602','(+236) 214-321-200')

insert recipient
values('Zara','Ronaldo','De Lima','19 sylvester Rd','Null','Barcelona','+7','77634','(+34) 212-564-767')

select* from country
select* from recipient 



create table country
(countryID varchar(2) not null primary key,
country char(25)
)
drop table country

insert country
values ('+1','nigeria' )

insert country
values ('+2','ghana' )


insert into country
(countryID, country)
values ('+5','portugal' )


insert country
values ('+7','spain' )

insert country
values ('+4','holland' )



create table office_location
(officeID int not null,
office_manager varchar(30) not null,
office_location geography not null
)







drop table recipient

create table country
(countryID varchar(2),
country char(25)
)
--num 8--
alter table recipient
alter column countryID varchar(2)




create table office_location
(officeID int not null,
office_manager varchar(30) not null,
office_location geography not null
)

insert office_location
values(001, 'adewale bunmi',Geography::Parse('POINT(54 87)'))

insert office_location
values(002, 'roland mike',Geography::Parse('POINT(20 17)'))

insert office_location
values(003, 'tola bola',Geography::Parse('POINT(60 37)'))

insert office_location
values(004, 'adeleke bunmi',Geography::Parse('POINT(24 47)'))

insert office_location
values(005, 'foland gogo',Geography::Parse('POINT(26 77)'))
output inserted.*


create table newproduct
(productID char(6) primary key,
productname varchar(20) not null,
productdescription varchar(250)not null,
categoryid char(3) constraint fcategory foreign key (categoryid) references category(categoryid),
productrate money,
brandid char(3) constraint fbrandid foreign key (brandid) references productbrand(brandid),
photo image,
Qoh smallint constraint ch_Qoh check(QOh between 0 and 200),
productimgpath varchar(50)
)

drop table newproduct

create table category
(categoryid char(3) not null primary key,
category char(20) unique not null,
description varchar(100)
)

create table productbrand
(brandid char(3) not null primary key,
brandname char(26) unique
)

alter table newproduct
drop fcategory

drop table category


create table pictureDetails
(eventpicID uniqueidentifier
rowguidcol not null,
eventname varchar(30) not null,
pic varbinary(max) not null
)


create table leavedetail
(name varchar(50) not null unique,
reason varchar(100) not null,
number_of_days int constraint ch_days check (number_of_days <3)
)

drop table leavedetail


alter table leavedetail
drop constraint unique

alter table leavedetail
drop unique


alter table leavedetail
drop constraint ch_days 

alter table leavedetail
alter column name varchar(50) 

alter table leavedetail
drop ch_days

alter table leavedetail
add constraint ch_days check (number_of_days <5)

create table student
(studentID  uniqueidentifier
rowguidcol,
name varchar(10),
age int,
address varchar(30),
phone nvarchar(15),
studentphoto varbinary(max)
)


create table Employee
(EmployeeID int unique not null,
Name varchar(10) not null,
Salary money constraint ch_salary check (salary between 20000 and 50000)
)



