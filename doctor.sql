CREATE TABLE   doctor
(
doc_id char(3), 
name char(35),
sex char(9),
state char(9),
phone_no char(11)
)

insert into doctor
(doc_id, name, sex, state, phone_no,nus_id)
values ('001', 'olawale samuel','male', 'osun', '08023415671');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('002', 'precious', 'female', 'edo', '08056133931');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('003', 'israel', 'male', 'edo', '08134527824');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('004', 'mable', 'female', 'delta', '09042345617');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('005', 'maryann', 'female','anambra', '08171071743');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('006','bola', 'male', 'anambra', '09058588434'); 

insert into doctor
(doc_id, name, sex, state, phone_no)
values('007', 'tola', 'female', 'oyo', '09087667534');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('008', 'simi', 'female', 'ondo', '08076543441');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('009', 'ayo', 'male', 'oyo', '08123454435');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('010', 'chinedu', 'male', 'imo', '09078655432');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('011', 'sarah', 'female', 'delta', '07081234562');

select *
from doctor

update doctor
set doc_id=005
where name='israel'


delete from doctor
where name = 'israel' or name='tola' or name='bola'

ALTER table doctor
add constraint unique_doc_id primary key




create table nurse

(nus_id char(3),
name char (25),
sex char (6),
state char (9),
phone_no char(11),
)

insert into nurse
(nus_id,name,sex,state,phone_no)
values('101','progress','female','edo','09082345563',)

insert into nurse
(nus_id,name,sex,state,phone_no)
values('102','helen','female','delta','08123894678')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('103','abel','male','edo','08122563676')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('104','tom','male','imo','09087654567')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('105','sarah','female','abia','08076755645')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('106','william','male','enugu','09087656765')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('107','merit','female','delta','09087656574')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('108','henry','male','abia','07056473645')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('109','selena','female','abuja','09087656756')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('110','david','male','imo','09087688768')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('111','angel','female','edo','08067544356')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('112','remi','male','oyo','08188765786')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('113','jerry','male','jos','08124577365')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('114','femi','male','osun','07086544345')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('115','moses','male','abia','08123456765')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('116','nabil','male','sokoto','09087677654')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('117','victoria','female','edo','08078605870')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('118','micheal','male','bayelsa','07064456377')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('119','opeyemi','male','oyo','09087655674')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('120','okon','male','imo','08156563773')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('121','bimbo','female','ondo','09087675645')

insert into nurse
(nus_id,name,sex,state,phone_no)
values('122','tobi','female','lagos','09087677564')


insert into nurse
(nus_id,name,sex,state,phone_no)
values('123','daniel','male','edo','08123444543')


insert into nurse
(nus_id,name,sex,state,phone_no)
values('124','jane','female','lagos','07086546546')


insert into nurse
(nus_id,name,sex,state,phone_no)
values('125','tayo','female','osun','09087676654')


insert into nurse
(nus_id,name,sex,state,phone_no)
values('126','gowon','male','jos','08134266756')

create table paitient
(pait_id char (4),
name char (23),
sex char(6),
age char(3),
next of kin char(23),
phone_no char(11),
doc_id char(3),
nus_id char(3)
)


























select *
from nurse