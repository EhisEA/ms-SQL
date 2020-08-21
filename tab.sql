CREATE DATABASE ARCH

CREATE TABLE   doctor
(
doc_id char(3) NOT NULL PRIMARY KEY,
name char(35),
sex char(9),
state char(9),
phone_no char(11)
)
drop table doctor
select *
from doctor
alter table doctor
add constraint ch_sex CHECK(sex in('M' , 'F'))

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('001', 'olawale samuel','m', 'osun', '08023415671');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('002', 'precious', 'f', 'edo', '08056133931');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('003', 'israel', 'm', 'edo', '08134527824');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('004', 'mable', 'f', 'delta', '09042345617');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('005', 'maryann', 'f','anambra', '08171071743');

insert into doctor
(doc_id, name, sex, state, phone_no)
values ('006','bola', 'm', 'anambra', '09058588434'); 

insert into doctor
(doc_id, name, sex, state, phone_no)
values('007', 'tola', 'f', 'oyo', '09087667534');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('008', 'simi', 'f', 'ondo', '08076543441');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('009', 'ayo', 'm', 'oyo', '08123454435');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('010', 'chinedu', 'm', 'imo', '09078655432');

insert into doctor
(doc_id, name, sex, state, phone_no)
values('011', 'sarah', 'f', 'delta', '07081234562');


select *
from doctor

create trigger tr_test 
on 


create table nurse

(nus_id char(3)NOT NULL PRIMARY KEY,
name char (25),
sex char (6),
state char (9),
phone_no char(11),
doc_id char(3),
pait_id char(4)
)


drop table nurse
alter table nurse
alter column  nus_id char(3)not null primary key

alter table nurse
add constraint ch_nsex CHECK(sex in('M' , 'F'))

alter table nurse
add constraint fdoc_id foreign key(doc_id)
references doctor(doc_id)

alter table nurse
add constraint fpait_id_nus_id foreign key(pait_id)
references paitient (pait_id)

select*	from doctor

select*  from nurse


insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID, pait_id)
values('101','progress','f','edo','09082345563','003','PA08')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('102','helen','f','delta','08123894678','002','PA22')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('103','abel','m','edo','08122563676','002','PA01')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('104','tom','m','imo','09087654567','004','PA14')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('105','sarah','f','abia','08076755645','008','PA24')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('106','william','m','enugu','09087656765','009','PA15')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('107','merit','f','delta','09087656574','003','PA18')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('108','henry','m','abia','07056473645','006','PA02')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('109','selena','f','abuja','09087656756','004','PA10')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('110','david','m','imo','09087688768','011','PA03')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('111','angel','f','edo','08067544356','008','PA20')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('112','remi','m','oyo','08188765786','007','PA11')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('113','jerry','m','jos','08124577365','009','PA04')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('114','femi','m','osun','07086544345','001','PA23')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('115','moses','m','abia','08123456765','006','PA12')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('116','nabil','m','sokoto','09087677654','007','PA25')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('117','victoria','f','edo','08078605870','007','PA05')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('118','micheal','m','bayelsa','07064456377','001','PA21')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('119','opeyemi','m','oyo','09087655674','005','PA06')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('120','okon','m','imo','08156563773','005','PA31')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('121','bimbo','f','ondo','09087675645','010','PA07')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('122','tobi','f','lagos','09087677564','004','PA17')


insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('123','daniel','m','edo','08123444543','009','PA26')

insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('124','jane','f','lagos','07086546546','001','PA19')


insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('125','tayo','f','osun','09087676654','010','PA16')


insert into nurse
(nus_id,name,sex,state,phone_no,DOC_ID,pait_id)
values('126','gowon','m','jos','08134266756','011','PA09')











create table paitient

(
pait_id char (4) not null primary key,
name char (23),
sex char(6),
age char(3),
next_of_kin char(23),
phone_no char(11),
doc_id char(3),
nus_id char(3)
)

drop table paitient

alter table paitient
add constraint pk_pait_id primary key (pait_id)


select *
from nurse



select *
from doctor


select *
from paitient

select d.doc_id, n.pait_id
from doctor.d join nurse.n
