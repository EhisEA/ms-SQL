
create database school

create table student
(stu_id varchar(10)  not null,
stu_name varchar(25),
stu_age smallint,
stu_sex varchar(8)
)


alter table student
alter column stu_name varcher(25) not null
add stu_name varcher(25) not null

alter table student
add stu_phone char(19) not null


select *
from student

alter table student
add constraint stu_id primary key (stu_id)

alter table student
add constraint ch_sex check (stu_sex in ('m','f'))

alter table student
add constraint ch_age check (stu_age >0)

create rule rule_age
as
@age>0
sp_bindrule 'rule_age','student.stu_age'

create rule rule_sex
as
@sex in ('m','f')
sp_bindrule 'rule_sex','student.stu_sex'


select *
from student