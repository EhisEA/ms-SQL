select  DepartmentID
from  humanresources.Department
where  DepartmentID < 10

select *
from   HumanResources.Department
where name like 'p%'

select name + ' let go ' + groupname 'as we'
from   HumanResources.Department


select name, groupname, ModifiedDate
from   HumanResources.Department



select *
from   HumanResources.Employee
where ContactID =   1100