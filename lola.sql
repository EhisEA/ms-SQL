

create database omolola

create table student
(stu_id char(4) not null,
stud_name char(24),
stu_age char (2),
stu_sex char(1)
)

select *
from student

alter table student
add constraint ch_sex check  (stu_sex in('m','f'))

create rule rule_sex
as
@sex in ('m', 'f')

sp_bindrule 'rule_sex', 'student.stu_sex'

create table  doctor
( doc_id char(4) not null primary key,
name char(25),
sex char(1),
state char(9),
phone char(11),
specialization char(16)check(specialization in ('Oncologist','Allergist','Surgeon','Dentist','Cardiologist','Pediatrician')),
salary  money, 
date_of_appointment date
)

sp_bindrule 'rule_sex', 'doctor.sex'