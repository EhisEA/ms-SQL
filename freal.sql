create database Freal

CREATE SCHEMA HOSPITAL

create table  HOSPITAL .doctor
( doc_id char(4) not null primary key,
name char(25),
sex char(1),
state char(9),
phone char(11),
specialization char(16)check(specialization in ('Oncologist','Allergist','Surgeon','Dentist','Cardiologist','Pediatrician')),
salary  money, 
date_of_appointment date
)


alter table HOSPITAL.doctor
add constraint ch_sex CHECK(sex in('M' , 'F'))

insert into HOSPITAL.doctor
( doc_id, name, sex, state,  phone, specialization, salary, date_of_appointment )
values ('O111', 'ADEKULE YEMI', 'M', 'OSUN', '09012178923','ONCOLOGIST', '300,000', '01-02-2014')

insert into HOSPITAL.doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values( 'A111', 'ADAM MABEL', 'F', 'DELTA', '08029134572', 'ALLERGIST', '200,000', '03-02-2014')

insert into HOSPITAL.doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('S111', 'OGBO MICHEAL', 'M', 'EDO', '09012347211', 'SURGEON', '250,000', '03-02-2014')

insert into HOSPITAL.doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('D111', 'LUKE PRECIOUS', 'F', 'EDO', '08057892304', 'DENTIST', '150,000', '08-06-2014')

insert into HOSPITAL.doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('O112', 'FRANK JOHN', 'M', 'IMO', '08152178231', 'ONCOLOGIST', '250,000', '11-07-2014')

insert into HOSPITAL.doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('C111', 'STEPHEN MARK', 'M', 'JOS', '08019721781', 'CARDIOLOGIST', '200,000', '10-09-2015')

insert into HOSPITAL.doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('P111', 'MARY ANN', 'F', 'ANAMBRA', '08171071743', 'PEDIATRICIAN', '250,000', '11-10-2015')

insert into HOSPITAL.doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('S112', 'OLAWALE PELUMI', 'M', 'ONDO', '07021272345', 'SURGEON', '200,000', '12-10-2015')

DELETE FROM DOCTOR
WHERE name= 'ADEKULE YEMI'

select *
from doctor

CREATE TABLE HOSPITAL.NURSE
(nus_id CHAR(4) not null primary key,
name CHAR(25),
sex CHAR(1)  constraint ch_NUS_sex CHECK(sex in('M' , 'F')),
state char(9),
phone char(11),
salary money,
date_of_appointment date
)

drop table nurse

select *
from NURSE

alter table nurse
add constraint fdoc foreign key (doc_id)
references doctor (doc_id) 

alter table nurse 
add constraint fpait foreign key (pait_id)
references patient (pait_id) 

insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N001', 'adewale bola', 'f', 'lagos', '08179912121', '100,000', '03-02-2014')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary, date_of_appointment)

values('N002', 'mark ella', 'f', 'jos', '08011223314', '100,000', '02-06-2014')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N003', 'pelumi tami', 'm', 'ondo', '08071231274', '100,000','07-07-2014')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N004', 'banji yusuf', 'm', 'sokoto', '09027819821', '80,000',  '10-09-2015')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N005', 'samuel milla', 'm', 'lagos', '08112078921', '80,000', '11-10-2015')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N006', 'damilola eve', 'f', 'osun', '07032312721', '80,000',  '12-10-2015')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N007', 'esohe sarah', 'f', 'edo', '09021278921', '70,000',  '12-10-2015')

insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N008', 'sano tina', 'f', 'delta', '08178921011', '60,000', '10-11-2015')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N009', 'jones raphel', 'm', 'jos', '08012794354', '60,000', '01-12-2015')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N010', 'opeyemi moses', 'm', 'ondo', '08076645323', '50,000', ' 07-01-2016')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N011', 'ola badmus', 'm', 'lagos', '08076855643', '40,000',  '10-01-2016')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N012', 'ehi ruth', 'f', 'edo', '0908786656', '20,000', '07-04-2016')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N013', 'ehi esther', 'f', 'edo', '07068788654', '20,000', '11-04-2016')


insert into HOSPITAL.nurse
(nus_id,name,sex ,state,phone,salary ,date_of_appointment)

values('N014', 'dida favour', 'f', 'delta', '08123466526','10,000' , '01-02-2017')



DELETE FROM nurse
WHERE name= 'mark ella'

ALTER TABLE NURSE

DELETE FROM NURSE
WHERE NAME = 'OLA BADMUS'






create table HOSPITAL.patient
( pait_id char (4) not null primary key,
name char(25),
sex char(1)constraint ch_PAIT_sex CHECK(sex in('M' , 'F')),
age int,
state char(9),
phone char(11),
next_of_kin char(25)
)
select *
from patient


insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA01','ayo fiyi', 'm', '21','lagos', '09081234567', 'ayo kunle' )

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA02', 'mark peter', 'm', '42', 'edo', '08035261245', 'mark paul')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA03', 'caleb bisi', 'f', '37', 'ondo', '09082764563', 'caleb tayo')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA04', 'bosun ola', 'm', '40','oyo', '08076588493', 'bosun mark')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA05', 'laim sam', 'm', '32', 'delta', '09087746483', 'song raphal')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA06', 'ricky paul', 'm', '16', 'delta', '08123945677', 'ricky sarah')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA07', 'okoje ike', 'm', '39', 'imo', '08176453627', 'okoje mary')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA08', 'sam philip', 'm', '50', 'abia', '09087365464', 'sam chidi')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA09', 'blink tayo', 'm', '53', 'osun', '08139476746', 'bosun bola')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA10', 'ola bukky', 'f', '2', 'oyo', '08093449356', 'ola wole')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA11', 'harry bunmi', 'f', '30', 'osun', '09085773645', 'harry jimi')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA12', 'boka john', 'm', '35', 'lagos', '08156367358','boka kunle')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA13','seun simi','f', '10', 'ondo', '07084935363', 'seun bayo')

insert into HOSPITAL.patient
( pait_id ,name ,sex ,age,staTE,phone,next_of_kin)
VALUES('PA14', 'prince wole','M', '5', 'osun', '08172653726', 'prince ayo')
 


 create table  HOSPITAL.admision 
 (adm_id char(4) not null primary key,
 adm_fee money,
 pait_id char (4)CONSTRAINT FPAIT_ID_ADM FOREIGN KEY (PAIT_ID) REFERENCES HOSPITAL.PATIENT  (PAIT_ID),
 nus_id char(4) CONSTRAINT FNUS_ID_ADM FOREIGN KEY (NUS_ID) REFERENCES HOSPITAL.NURSE  (NUS_ID),
 doc_id char(4) CONSTRAINT FDOC_ID_ADM FOREIGN KEY (DOC_ID) REFERENCES HOSPITAL.DOCTOR  (DOC_ID),
 adm_date date 
 )


insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD01','700,000', 'PA01','N009', 'A111', '10-11-2016')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD02', '1,200,000', 'PA02', 'N012', 'S111', '03-12-2016')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD03', '2,000,000', 'PA03', 'N007', 'O112', '10-01-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD04', '1,500,000', 'PA04', 'N003', 'S112', '12-02-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD05', '300,000', 'PA05', 'N010', 'D111', '12-02-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD06','3,000,000', 'PA06', 'N006', 'C111', '10-03-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD07', '2,000,000', 'PA07', 'N013', 'O112','11-03-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD08', '1,600,000', 'PA08', 'N001', 'O111', '01-04-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD09', '100,000','PA09', 'N002', 'D111', '02-05-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD10', '50,000', 'PA10', 'N005', 'P111', '04-05-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD11', '1,200,000', 'PA11', 'N008', 'O111', '07-05-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD12', '2,000,000', 'PA12', 'N004', 'S112', '07-06-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD13', '2,500,000', 'PA13', 'N014', 'C111', '10-06-2017')

insert into HOSPITAL.admision
(adm_id, adm_fee, pait_id, nus_id, doc_id, adm_date)
values('AD14', '60,000', 'PA14', 'N011', 'P111', '01-07-2017')


SELECT*
FROM HOSPITAL.ADMISION



CREATE TABLE HOSPITAL.TRANSACTIONS
(tran_id CHAR(3) NOT NULL PRIMARY KEY,
pait_id char(4),
adm_id char(4),
treatment_fee money,
total_fee money,
tran_date date
)

alter table HOSPITAL.TRANSACTIONS
add constraint fPAIT_ID_TRANS foreign key (PAIT_id)
references HOSPITAL.PATIENT (PAIT_ID) 


alter table HOSPITAL.TRANSACTIONS
add constraint fADM_ID_TRANS foreign key (ADM_id)
references HOSPITAL.ADMISION (ADM_ID) 


insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('001', 'PA01', 'AD01','500,000', '1,200,000', '02-02-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('002', 'PA02', 'AD02', '1,000,000', '2,200,000', '02-02-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('003', 'PA03', 'AD03', '1,000,000', '3,000,000', '03-02-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('004', 'PA04', 'AD04', '500,000', '2,000,000', '07-02-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('005', 'PA05', 'AD05', '500,000', '1,000,000', '17-02-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('006', 'PA06', 'AD06', '400,000', '2,000,000', '02-03-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('007', 'PA07', 'AD07', '500,000', '600,000', '10-03-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('008', 'PA08', 'AD08', '100,000', '150,000', '06-04-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('009', 'PA09', 'AD09', '500,000', '600,000', '10-05-2017')


insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('010', 'PA10', 'AD10', '100,000', '150,000', '04-06-17')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('011', 'PA11', 'AD11', '800,000', '2,000,000', '09-06-17')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('012', 'PA12', 'AD12', '500,000', '2,500,000', '10-07-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('013', 'PA13', 'AD13', '2,500,000', '5,000,000', '10-07-2017')

insert into HOSPITAL.TRANSACTIONS
(tran_id, pait_id, adm_id, treatment_fee, total_fee, tran_date)
values('014', 'PA14','AD14', '700,000', '760,000', '11-07-2017')



select *
from HOSPITAL.NURSE

CREATE TABLE HTRANSACTIONS
(tran_id CHAR(3) NOT NULL PRIMARY KEY,
pait_id char,
adm_id varchar,
treatment_fee money,
total_fee money,
tran_date date
)






create table doctor
( doc_id char(4) not null primary key,
name char(25),
sex char(1),
state char(9),
phone char(11),
specialization char(16)check(specialization in ('Oncologist','Allergist','Surgeon','Dentist','Cardiologist','Pediatrician')),
salary  money, 
date_of_appointment date,
DONE CHAR(78) DEFAULT 'HHHHHH'
)
/*
ALTER TABLE DOCTOR
ALTER COLUMN DONE CHAR(78) NOT NULL  DEFAULT 'HOMMFJI'*/

UPDATE DOCTOR
SET DONE='IT LOOKS REALLY NEW FROM FAR AWAY'
WHERE doc_id = 'D111'
GO
SELECT *
FROM doctor
GO

insert into doctor
( doc_id, name, sex, state,  phone, specialization, salary, date_of_appointment )
values ('O111', 'ADEKULE YEMI', 'M', 'OSUN', '09012178923','ONCOLOGIST', '300,000', '01-02-2014')

insert into doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values( 'A111', 'ADAM MABEL', 'F', 'DELTA', '08029134572', 'ALLERGIST', '200,000', '03-02-2014')

insert into doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('S111', 'OGBO MICHEAL', 'M', 'EDO', '09012347211', 'SURGEON', '250,000', '03-02-2014')

insert into doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('D111', 'LUKE PRECIOUS', 'F', 'EDO', '08057892304', 'DENTIST', '150,000', '08-06-2014')

insert into doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('O112', 'FRANK JOHN', 'M', 'IMO', '08152178231', 'ONCOLOGIST', '250,000', '11-07-2014')

insert into doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('C111', 'STEPHEN MARK', 'M', 'JOS', '08019721781', 'CARDIOLOGIST', '200,000', '10-09-2015')

insert into doctor
( doc_id, name, sex, state, phone, specialization, salary, date_of_appointment )
values('P111', 'MARY ANN', 'F', 'ANAMBRA', '08171071743', 'PEDIATRICIAN', '250,000', '11-10-2015')

