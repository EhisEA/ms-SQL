CREATE DATABASE DOCTOR


CREATE TABLE   doctor
(
doc_id char(3) NOT NULL CONSTRAINT DOCID_DOC_ID PRIMARY KEY(DOC_ID),
name char(35),
sex char(9),
state char(9),
phone_no char(11)
)

alter table doctor


alter table doctor
add nus_id char(3)

alter table doctor
add constraint fnusid_nus_id foreign key(nus_id)
references nurse (nus_id)

alter table doctor
add constraint ch_sex CHECK(sex in('M' , 'F'))

insert into doctor
(doc_id, name, sex, state, phone_no)
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




create table nurse

(nus_id char(3)NOT NULL CONSTRAINT nusid_nus_ID PRIMARY KEY(nus_ID),
name char (25),
sex char (6),
state char (9),
phone_no char(11),
)


select *
from doctor