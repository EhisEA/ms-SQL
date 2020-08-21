create function humanresourses.monthlysaL
 (@pay float)
 return
begin 
@pay *5*6*90
end


declare @ab
set @ab = HumanResources.monthlysal(12.43)
print @ab


it produce a table like info

create function fx_done
(@ghd  nvarchar)
returns table
as 
return( select * from HumanResources.Department where GroupName = @ghd)
go

select*
from fx_done ('manufacturing')


create trigger trginsertshift
on humanresources.shift
for insert /* it means it is for insert it could be for delete and update */
as  
declare @modifieddate datetime
select  @modifieddate = modifieddate from inserted
if ( @modifieddate != GETDATE ())
begin

print 'the  modified date should be the current date, hence, cannot insert.'
rollback transaction
end

create trigger trgdelete
on humanresources.department
for delete 
as
begin
print 'deletion of department is not allowed'
rollback transaction
end

/*creating trigger*/
create trigger trginsertshift
on humanresources.shift
after delete
as 
print 'deletion successful'

/*alter trigger*/
alter trigger trginsertshift
on humanresources.shift
after delete
as 
print 'deletion cannot take place'
rollback transaction





create trigger trginsertshift
on humanresources.shift
instead of delete
as 
print 'deletion successful'

create trigger safty
on database
for dro




x