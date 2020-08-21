
select * from doctor

alter table doctor
add comment char(90)


create trigger gii
on doctor
for update
as
declare @sex char
select @sex = sex from doctor
if(@sex in ('m'))
begin

update doctor
set comment =  specialization + 'is my specialization' 
where sex = @sex

commit transaction
end
go


select * from doctor
go

select distinct(specialization) from doctor



create login john
with password = 'john',
default_database = adventure works

create user john
for login  john

sp_addsrvrolemember 'john', 'dbcreator'

create symmetric key hola
with algorithm = ase_123
encryption by password='hola'
go

open symmetric key hola
decryption by password = 'aloh'
go

update nurse
set nus_id encryptbykey
(key_guid('hola'), nus_id)
from nurse
close symmetric key hola
go
