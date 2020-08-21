create database banking

create database block

drop database block

alter table kkkk
drop constraint name of con

create table EMPLOYEE
(name varchar (25) unique,
age char(4),
sex char(7),
salary money,
emp_id char(4) not null primary key
)
select* from EMPLOYEE

drop table EMPLOYEE

alter table employee
drop constraint 



alter table employee
add emp_phone varchar (19) not null

alter table employee
add constraint ch_emp_phone check (emp_phone like '(+234)- [0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]')

--creating rules--
create rule rul_age
as
@age>0

--binding of rule to column--
sp_bindrule 'rul_age', 'employee.age'


sp_unbindrule  'employee.age'


alter table nurse 
add constraint fpait foreign key (pait_id)
references patient (pait_id) 

alter table customer
add constraint ch_emp_age check (age>0)

alter table customer
add constraint ch_salary check (salary>0)

alter table customer
add constraint ch_emp_sex check (sex in ('m', 'f'))



create table customer
(name varchar(25),
sex char(7),
age char(4),
emp_id char(4),
acc_no char(4)
)

alter table customer
add constraint ch_age check (age>0)


alter table customer
add constraint ch_sex check (sex in ('m', 'f'))

alter table customer
add constraint fEMP_ID foreign key (emp_id)
references employee (emp_id) 


create table TRANSACTIONS
(trans_amt money,
trans_date date,
emp_id char (4),
acct_no char(4),
trans_type varchar(10),
trans_id char(4)
)

alter table transactions
add constraint fEMP_ID foreign key (emp_id)
references employee (emp_id) 

alter table transactions
add constraint facct_no foreign key (acct_no)
references customer (acct_no) 



create table test1
(
location geography
)
insert test1
values(Geography::Parse('POINT(23 67)'))

SELECT*
FROM test1

--updating a table--
update customer
set name='rola'
where acc_no='1001'

--deleting a row from a table--
delete from customer
where accountNO='1000'

--output clause-- shows the whole row that was updated
update customer 
set name='Haniel'
output inserted.*
where AccountNO='1002'


create table employee1
(
)



select* from TRANSACTIONS