create database cbt


create table student(
	stu_id varchar(20) Primary Key not null,
	name varchar(20) not null,
	class varchar(5) not null,
	department varchar(10) not null
)

create table result(
	stu_id varchar(20) not null,
	stu_name varchar(30) not null,
	class varchar(5) not null,
	department varchar(10) not null,
	sub_id varchar(20) not null,
	sub_name varchar(20) not null,
	score varchar(4) not null
)
insert into result values('e','e','sss 1','science','math201','maths','20')

insert into result values('ehis','e','sss 1','art','chem201','chemistry','20')
insert into result values('r','emmanuel','sss 2','commercial','geo201','geography','20')
insert into result values('e','e','sss 3','science','chem201','chemistry','20')
insert into result values('f','e','sss 1','art','geo201','geography','20')
insert into result values('e','e','sss 2','science','chem201','chemistry','20')
insert into result values('r','e','sss 3','commercial','phy201','physics','20')
insert into result values('e','e','sss 1','science','math201','maths','20')


select  * from subject 

select  * from phy201

create table subject(
	sub_id varchar(20) Primary Key not null,
	name varchar(20) not null,
	class varchar(5) not null,
	department varchar(10) not null,
	question_number varchar(4) not null
)
drop table subject
insert into subject values('chem201','chemistry','sss 1','science','20')

drop table geo201
select * from chem201

create table n(
	sub_id int identity(1,1) Primary Key not null,
	name varchar(20) not null,
	class varchar(5) not null,
	department varchar(10) not null
)



insert into student values('--','suns','sss 1','art')

insert into chem201 values('--','suns','sss 1','art','ddddd')

insert into chem201 values('--','ddddd','sss 1','art','ddddd')
insert into chem201 values('--','suns','hkabbsakhb 1','art','ddddd')
insert into chem201 values('--','suns','sss 1','hkbahassa','ddddd')

select * from student

select * from hhh11
select * from voe
delete from subject 
where sub_id = 'civ201'

select stu_id from student where department='science' and class='sss 3' and name='prosper'

select  DISTINCT name from subject 

CREATE RULE department
AS
@department in('Neutral', 'Science', 'Commercial', 'Art' )
go

CREATE RULE class
AS
@class in('JSS 1', 'JSS 2', 'JSS 3', 'SSS 1', 'SSS 2', 'SSS 3' )

 
sp_bindrule 'class',  'student.class'

sp_bindrule 'department',  'student.department'

 
sp_bindrule 'class',  'subject.class'

sp_bindrule 'department',  'subject.department'



----------------------------------------------------------------------trial------------------------------

select * from phy201


select * from bio101
select sub_id from subject where department='science' and class='sss 1' and name='physics'

update chem201
set Question='kkkkkkkk',
  correct='ddd',
  option_a='lll',
  option_b='lll', 
  option_c='lll'
where qus_id= 4
