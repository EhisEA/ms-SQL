

/*--------------------------------------(((((((((((((((((((((((  GROUP 2  ))))))))))))))))))))))))------------------------------------------------*/


/*------------------------------------------{{{[[[[[[[[        *----------!------------*  
                                                      !!!!!!!! | SHOWMAN HOUSE PROJECT | !!!!!!!!!
		select * from													   *-----------------------*                         
																					 ]]]]]]]]}}}}}----------------------------------------*/

select* from humanresources.employee
select* from event.eventtype
select * from event.CUSTOMER
select * from management.paymentMethod
select * from management.payment
/*-----------------------------------------------------------creating database-------------------------------------------------------------*/
create database showmanhouse


/*------------------------------------------------------------------adding schema----------------------------------------------------------------*/

create schema humanresources

create schema management

create schema event


/*---------------------------------------adding file group to ensure minimum and maximum disk space control--------------------------------------*/
alter database showmanhouse
add filegroup showman
go

alter database showmanhouse
add file
(
name= showman,
filename= 'c:\showmanhouse\showman.ndf',
size= 10mb,
maxsize= 20mb,
filegrowth= 5mb
)
to filegroup showman

drop  database showmanhouse


/*---------------------------------------------------------humanresources.employee table details---------------------------------------------------*/

create table humanresources.employee
(
employeeID int not null PRIMARY KEY IDENTITY (1002, 1),
FIRSTNAME CHAR(20) NOT NULL ,
LASTNAME CHAR(20) NOT NULL,
ADDRESS CHAR(40) NOT NULL,
PHONE INT NOT NULL ,
pic image,
TITLE CHAR(30) CONSTRAINT CH_TITLE CHECK (TITLE IN( 'EXECUTIVE', 'SENIOR EXECUTIVE', 'MANAGEMENT TRAINEE', 'EVENT MANAGER', 'SENIOR EVENT MANAGER')) 
)
alter table humanresources.employee
alter column phone CHAR(20) not null
 
 create database ella
create table ex
(pic image
)

                                 -------------------------inserting values---------------------------
insert into humanresources.employee
values('ramos','jude', '2, allen ave, ikeja lagos', '11-234-1355-415-741', 'senior executive' )
      insert into humanresources.employee
values('bello','remi', '112, osolo way, osolo, lagos', '11-134-1145-415-761', 'executive' ),
	  ('gambi','fola', '23, akonwojo, egbeda, lagos', '11-454-1145-415-761', 'management trainee' ),
	  ('ayomide','lawal', '15, yu, mile 2, lagos', '11-234-5146-615-761', 'event manager' ),
	  ('adebisi','bukky', '7, airport road, ikeja, lagos', '11-564-1165-415-761', 'senior event manager' ),
	  ('olawani','tosin', '23 road, festac, lagos', '11-234-1565-655-561', 'event manager' ),
	  ('ossai','sandra', '1st avenue, festac, lagos', '11-234-3245-985-761', 'executive' ),
	  ('bolande','remi', '7, jiki, dodo, lagos', '11-234-9375-345-561', 'senior executive' ),
	  ('pelumi','james', '12, mise estate, magodo, lagos', '11-024-4145-415-761', 'management trainee' ),
	  ('gando','bulus', '74, apomu, ijegun, lagos', '11-234-6785-465-761', 'event manager' ),
	  ('howde','gogo', '93, cook, obalende, lagos', '11-784-3547-888-901', 'senior event manager' ),
	  ('abass','lola', '33, john street, ikeja, lagos ', '11-687-6540-355-761', 'event manager' ),
	  ('samuel','tony', '09, kong, ikeja, lago', '11-234-3454-908-546', 'event manager' ),
	  ('folarin','homes', '112, awolowo way, ikeja', '11-234-6575-085-761', 'management trainee' ),
	  ('kelvin','hevenly', '8, allen, ikej, lagos ', '11-234-0976-865-761', 'management trainee' ),
	  ('opeyemi','omolola', '2, mksmk, liverpool, lagos', '11-876-0976-095-761', 'executive' ),
	  ('lawal','sobo', '5, kola, akowonjo, lagos', '11-234-7869-876-761', 'executive' ),
	  ('honda','ford', '9, dada, ikorodu, lagos', '11-234-9870-085-761', 'event manager' ),
	  ('bassy','mike', '4, joko, mushin, lagos', '11-284-9860-985-761', 'management trainee' ),
	  ('emmy','nulla', '9, bami, isolo, lagos', '11-238-7565-543-761', 'executive' ),
	  ('kolade','ayomide', '7, ope street, iyana-iba, lagos', '11-875-8975-985-091', 'management trainee' )


                               ---------------------------------------binding rule-------------------------------------
sp_bindrule 'phone',  'humanresources.employee.phone'

/*------------------------------------------------------------creating rule---------------------------------------------------------------------*/
CREATE RULE PHONE
AS
@PHONE LIKE('[0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9]' )

DROP RULE PHONE

select * from humanresources.employee

/*-----------------------------------------------------MANAGEMENT.EVENT table details------------------------------------------------------*/

CREATE TABLE MANAGEMENT.EVENT
(EVENTID  int PRIMARY KEY IDENTITY (1002,1),
EVENT_NAME char(50) not null,
EVENTTYPEID int,
LOCATION  geography not null,
STAFF_REQUIRED int not null CONSTRAINT CH_NOS CHECK (STAFF_REQUIRED>0 ),
EMPLOYEEID int,
CUSTOMERID int ,
STARTDATE date not null,
ENDDATE date not null,
CURRENTDATE date,
NUMBER_OF_PEOPLE int not null
)

select *from management.EVENT

insert into management.event
 values/*--geography::parse('point(33, 22)')--*/
('mr bumi birthday party',0001, Geography::Parse('POINT(54 87)'),51,1002,001,'10-10-2017','10-10-2017',GETDATE(),900);     		
insert into management.event 
values('Miss bola senfort party',0002, Geography::Parse('POINT(34 57)'),70,1003,002,'10-15-2017','10-15-2017',GETDATE(),1200);
insert into management.event 
values('duc seminer',0003, Geography::Parse('POINT(54 87)'), 100 ,1004,003,'10-21-2017','10-23-2017',GETDATE(),2000);
insert into management.event 
values('mr and mrs adesewa anniversry',0004,  Geography::Parse('POINT(54 87)'), 50 ,1005,004,'10-27-2017','10-27-2017',GETDATE(),500);
insert into management.event 
values('het tech interveiw',0005,  Geography::Parse('POINT(40 57)'), 230 ,1006,005,'11-01-2017','11-06-2017',GETDATE(),4000);
insert into management.event
values('mr figo lando wedding',0006,  Geography::Parse('POINT(96 21)'), 70 ,1007,006,'11-10-2017','11-10-2017',GETDATE(),600);
insert into management.event 
values('vocad examination',0007, Geography::Parse('POINT(33 56)'), 70 ,1008,007,'11-15-2017','11-20-2017',GETDATE(),1700);
insert into management.event 
values('wix dance competetion',0008, Geography::Parse('POINT(87 89)'), 500 ,1009,008,'11-30-2017','12-10-2017',GETDATE(),6000);


insert into management.Event 
values('Mr Tunde anniversary',1012,Geography::Parse('POINT(77 55)'), 80 ,1009,009,'11-29-2017','12-09-2017',GETDATE(),4000);

select * from management.Event 
select * from event.customer
select * from event.eventType
select * from management.payment

insert into event.customer values('Tunde NIIT','41, awolowo road, ikeja','ikeja','lagos','11-423-3560-745-583')

				                            ---------------- adding symmetric key------------------- 
CREATE SYMMETRIC KEY lagging
 WITH ALGORITHM = AES_128
 ENCRYPTION BY PASSWORD='emmy'
GO
OPEN SYMMETRIC KEY lagging
DECRYPTION BY  PASSWORD='emmy'
GO
UPDATE management.EVENT
Set EVENT_NAME = ENCRYPTBYKEY
(Key_GUID('lagging'), EVENT_NAME)
FROM management.EVENT
GO
CLOSE SYMMETRIC KEY lagging;
GO


                         --------------------------------adding foreign keys---------------------------------                    

alter table management.event 
add constraint f_event_eventtypeid foreign key (eventtypeid)  references EVENT.eventtype(eventtypeid)

alter table management.event 
add constraint f_event_cust foreign key (CUSTOMERID)  references EVENT.CUSTOMER(customerId)

alter table management.event 
add constraint f_event_emp foreign key (EMPLOYEEID )  references humanresources.EMPLOYEE (EMPLOYEEID )



								-----------------------------adding indexes---------------------------
								
create nonclustered index ix_staff_required
on management.event (staff_required) 
where staff_required > 25
go

create nonclustered index ix_startdate
on management.event (startdate)
include (eventid, customerId, employeeId, endDate)
go

create nonclustered index ix_enddate
on management.event (endDate )
include (eventid, customerId, employeeId, startDate)
go


                         -------------------------------adding triggers-----------------------------------



CREATE TRIGGER sanddate
ON MANAGEMENT.EVENT
FOR INSERT
AS
declare @startdate date
declare @enddate date
select @startdate= startdate from inserted
select @enddate = enddate from inserted
if @STARTDATE>@ENDDATE 
BEGIN
 print 'the start date cannot be greater than the end date'
 ROLLBACK TRANSACTION
END
go

create trigger Cdate
on management.event
for insert
as
declare @current date
declare @start date
select @current = currentdate from inserted
select @start = STARTDATE from inserted
if 
@current> @start
begin
print 'current date cannot be above start or end date'
rollback transaction
end
go

create trigger people
on management.event
for insert 
as
declare @no_of_people int
select @no_of_people = NUMBER_OF_PEOPLE from inserted
if 
@no_of_people < 50
begin
print 'number of people should be more than 49'
rollback transaction
end
go
/*-----------------------------------------------------------management.payment table details----------------------------------------------------*/



create table management.payment
(
paymentID INT NOT NULL PRIMARY KEY IDENTITY (11001, 1),
EVENTID INT,
PAYMENTAMOUNT MONEY,
PAYMENTDATE DATE,
CREDITCARDNUMBER INT,
CARDHOLDERNAME CHAR(20),
CREDITCARDEXPIRYDATE DATE,
PAYMENTMETHODID int,
CHEQUE_NO INT
)
alter table management. payment
alter column CARDHOLDERNAME CHAR(20)

insert management.payment
values (0001,null, '9-01-2017', NULL , NULL,NULL,101,NULL )

insert management.payment
values (0002, null, '10-14-2017', 138091 ,'BULUS SAMMY', '10-10-2018',102, NULL),
 
insert management.payment
values(0003,null, '10-20-2017',NULL ,NULL ,NULL,103,1100989 )
 
insert management.payment
values(0004, null, '10-25-2017', NULL, NULL,NULL,104,12909299 )
 
insert management.payment
values(0005,null, '10-29-2017', NULL, NULL,NULL,105,NULL )
 
insert management.payment
values(0006,null, '11-15-2017',109109092, 'ESE MBA','10-10-2018',106, NULL )
 
insert management.payment
values(0007,null, '11-05-2017',NULL ,NULL ,NULL,107, NULL)
 
insert management.payment
values(0008,null, '11-09-2017', NULL,NULL ,NULL,108, NULL )

SELECT * FROM management.PAYMENT 

insert management.payment
values (0009, null, '10-16-2017', 138091 ,'Tunde NIIT', null,102, NULL)

update management.event
set PAYMENTAMOUNT=500000.00
where paymentID=11026
                         --------------------------------adding foreign keys---------------------------------


alter table management.payment 
add constraint f_pm_emp foreign key (PAYMENTMETHODID )  references management.paymentMethod (PAYMENTMETHODID )

alter table management.payment 
add constraint f_tt_event_emp foreign key (EVENTID)  references management.event (EVENTID)


                            -----------------------------adding indexes---------------------------


create nonclustered index ix_eventId
on management.payment (eventId)


create nonclustered index ix_paymentAmount
on management.payment (paymentAmount)
include (eventId, paymentDate, paymentId, paymentMethodID)

create nonclustered index ix_paymentDate
on management.payment (paymentDate)
include (eventId, paymentAmount, paymentId, paymentMethodId)

 
	               -------------------------------adding triggers-----------------------------------

				   select * from management.payment

create trigger trig
on management.payment
for insert
as
declare @creditcardnumber int
declare @cardholdername char(20)
declare @cardexpiredate date
declare @paymentid int
declare @paymentmethodid int 
declare @cheque_no int
declare @description char(20)
select @creditcardnumber = creditcardnumber from inserted
select @cardholdername = cardholdername from inserted
select @cardexpiredate =  CREDITCARDEXPIRYDATE  from inserted
select @paymentid =  paymentID from inserted
select @paymentmethodid =       paymentMethodid from inserted
select @description =   description from management.paymentMethod
select @cheque_no =  CHEQUE_NO from inserted
if @description  in ('cash')
begin
update management.payment
set creditcardnumber = null
where paymentID = @paymentid
update management.payment
set CREDITCARDEXPIRYDATE = null
where paymentID = @paymentid
update management.payment
set cardholdername = null
where paymentID = @paymentid
update management.payment
set CHEQUE_NO = null
where paymentID = @paymentid
end
else if @description = 'cheque'
begin
select @cheque_no =   CHEQUE_NO from inserted
if @cheque_no is null
begin 
print 'cheque number cannot be null, it must be inserted'
end
update management.payment
set creditcardnumber = null
where paymentID = @paymentid
update management.payment
set CREDITCARDEXPIRYDATE = null
where paymentID = @paymentid
update management.payment
set cardholdername = null
where paymentID = @paymentid
end
else if @description in ('creditcard')
begin
select @creditcardnumber =  CREDITCARDNUMBER from inserted
 if
 @creditcardnumber is null
 begin 
 print 'cardnumber cannot be null'
 rollback transaction
 end
 select @cardholdername =  CARDHOLDERNAME from inserted
 if
 @creditcardnumber is null 
 begin
 print 'credit card number cannot be null'
 rollback transaction
 end
 select @cardexpiredate =  CREDITCARDEXPIRYDATE from inserted
 if
 @cardexpiredate is null 
 begin
 print 'credit card expiry date cannot be null'
 rollback transaction
 end
update management.payment
set CHEQUE_NO = null
where paymentID = @paymentid
end



create trigger hbsjn
on management.payment
after insert
as
declare @pay int
declare @charge_per money 
declare @no_of_people int
declare @payment_amount money
select @no_of_people = convert(money,number_of_people) from management.event e join  management.payment p
on e.eventid=p.EVENTID
select @charge_per = chargeperperson from event.eventType t join management.event e
on t.eventTypeID=e.eventtypeid 
join management.payment p 
on p.EVENTID=e.EVENTID
select @payment_amount = @charge_per * @no_of_people
select @pay = paymentid from inserted
update management.payment
set PAYMENTAMOUNT= @payment_amount
where paymentID = @pay 



select* from humanresources.employee
select* from event.eventtype
select * from event.CUSTOMER
/*select * from management.paymentMethod*/
select * from management.payment
select * from management.EVENT

create trigger paystart
ON management.payment
for insert
as
declare @PAYDate DATE
DECLARE @start date
select @PAYDate = PAYMENTDATE FROM INSERTED
select @start = startdate from MANAGEMENT.EVENT
IF (@PAYdATE > @start)
BEGIN
PRINT 'PAYMENT DATE CANNOT BE GREATER THAN START DATE'
ROLLBACK TRANSACTION
END
go

create trigger payd
ON  management.payment
for insert
as
declare @PAYDate DATE
select @PAYDate = PAYMENTDATE FROM INSERTED
IF (@PAYdATE < GETDATE())
BEGIN
PRINT 'PAYMENT DATE CANNOT BE LESS THAN CURRENT DATE'
ROLLBACK TRANSACTION
END
go

create trigger expi
ON  management.payment
for insert
as
declare @expDate DATE
select @expDate = CREDITCARDEXPIRYDATE FROM INSERTED
IF @EXPdATE < GETDATE()
BEGIN
PRINT 'CREDIT CARD EXPIRY DATE CANNOT BE LESS THAN CURRENT DATE'
ROLLBACK TRANSACTION
END
go

/*-------------------------------------------------------------EVENT.CUSTOMER table details-------------------------------------------------*/

CREATE TABLE EVENT.CUSTOMER
(CUSTOMERID int not null primary key identity (001, 1),
NAME CHAR(30),
ADDRESS CHAR(50) not null ,
CITY CHAR(15) not null ,
STATE CHAR(10) not null,
PHONE char(25) not null
)

SELECT *
FROM event.CUSTOMER


insert into event.CUSTOMER values('adebisi paul','2, mile estate,magodo','magodo','lagos','11-567-5650-757-986')
insert into event.CUSTOMER values('abass da','44, iru street, ikeja','ikeja','lagos','11-334-6454-464-775')
insert into event.CUSTOMER values('fola selena','3, vine estate, ikeja','ikeja','lagos','11-757-7854-866-976')
insert into event.CUSTOMER values('micheal jones','303, sule street, ikorodu','ikorodu','lagos','11-687-6540-355-761')
insert into event.CUSTOMER values('calmery uzo','45, will estate, iyana-iba','iyana-iba','lagos','11-788-2467-765-865')
insert into event.CUSTOMER values('agah stephen','1st avenue,festac','festac','lagos','11-764-7546-776-336')
insert into event.CUSTOMER values('bugus dave','4, holl estate, aja','aja','lagos','11-543-4465-876-764')
insert into event.CUSTOMER values('gambi bonny','54, giftan street, isolo','isolo','lagos','11-436-3450-765-543')

                                       -------------------binding rule-----------------
sp_bindrule 'phone', 'EVENT.CUSTOMER.phone'

/*---------------------------------------------------------event.eventType table details----------------------------------------------------------*/

create table event.eventType
(eventTypeID int not null primary key  identity  (0001, 1),
description char(20) not null,
chargePerPerson money constraint ch_cpp check (chargePerPerson>0)
)
select * from event.eventType

insert EVENT.eventType values('first class', 5000)
insert EVENT.eventType values('second class', 3500)
insert EVENT.eventType values('moderate',2000)
insert EVENT.eventType values('classic', 10000 )
insert EVENT.eventType values('vip', 30000 )
insert EVENT.eventType values('VVIP', 50000)
insert EVENT.eventType values('vasacs', 80000)
insert EVENT.eventType values('mini', 1000)


/*--------------------------------------------------management.paymentMethod table details--------------------------------------------------------*/
create table management.paymentMethod
(paymentMethodID int not null primary key identity (101, 1 ),
 description char(10) constraint ch_des  check (description in ('cash', 'cheque', 'creditCard'))
 )

 insert  management.paymentMethod values('cash')
 insert  management.paymentMethod values('creditcard');
 insert  management.paymentMethod values('cheque');
insert  management.paymentMethod values('cheque');
insert  management.paymentMethod values('cash');
insert  management.paymentMethod values('creditcard');
insert  management.paymentMethod values('cash');
insert  management.paymentMethod values('cash');

SELECT* FROM management.payment
select * from management.event
select * from management.paymentMethod
select * from humanresources.employee
select * from event.CUSTOMER
select * from event.eventType
 
 /*-------------------------------------------------------------logins---------------------------------------------------------------------------*/
 create login ella
 with password ='ella',
 default_database= AdventureWorks
 go
 create user ella
 for login ella
 go
 sp_addsrvrolemember 'chris',  'sysadmin'

create login sam
 with password ='sam',
 default_database = showmanhouse
 go
 create user sam
for login sam
 go
 sp_addsrvrolemember 'sam' , 'dbcreator'


 create login sara
 with password= 'sara',
 default_database =showmanhouse
 go
 create user sara
 for login sara
 go
 sp_addsrvrolemember 'sara' , 'dbcreator'

 create login williams 
 with password ='williams',
 default_database= showmanhouse
 go

 create user willams
 for login williams
 go
 sp_addsrvrolemember 'williams',  'dbcreator'




 /*---------------------------------------------------backup-----------------------------------------------------------  */
 
 BACKUP DATABASE [showmanhouse] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQL\MSSQL\Backup\showmanhouse.bak' 
WITH  COPY_ONLY,  RETAINDAYS = 1, NOFORMAT, NOINIT,  NAME = N'showmanhouse-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'showmanhouse' and 
backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'showmanhouse' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''showmanhouse'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQL\MSSQL\Backup\showmanhouse.bak' 
WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO


 /*--------------------------------------------creating oprator------------------------------------------------*/
EXEC msdb.dbo.sp_add_operator @name=N'chirs', 
		@enabled=1, 
		@pager_days=0, 
		@email_address=N'chris@gmail.com', 
		@pager_address=N'chris@gmail.com'
GO


---------------------------------------------------------------alert-------------------------------------------------------------
EXEC msdb.dbo.sp_add_alert @name=N'emmy', 
		@enabled=1, 
		@delay_between_responses=43259, 
		@include_event_description_in=1, 
		@notification_message=N'chirs i think you have to know that the space is below 20mb ', 
		@performance_condition=N'Databases|Data File(s) Size (KB)|tempdb|<|20000kb', 
		@job_id=N'00000000-0000-0000-0000-000000000000'
GO
EXEC msdb.dbo.sp_add_notification @alert_name=N'emmy', @operator_name=N'chirs', @notification_method = 1
GO




