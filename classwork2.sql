select employeeid, datename(mm, hiredate)+ ', ' + convert(varchar, datepart(yyyy, hiredate)) as joining
from HumanResources.Employee

select employeeid, rate, dense_rank()
 over(order by rate desc) as rank
from HumanResources.EmployeePayHistory

select name =Title + ' ' + left(firstname,1) + '. ' + LastName, EmailAddress
from Person.Contact

select employeeid, rate, rank()
 over(order by rate desc) as rank
from HumanResources.EmployeePayHistory


select left(firstname,1)
from Person.Contact