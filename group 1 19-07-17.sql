select SalesOrderID, OrderQty, UnitPrice, rank()over (order by unitprice desc) as rank
from Sales.SalesOrderDetail

select EmployeeID, datename(mm, hiredate) + ',' + convert(varchar,datepart(yyyy,hiredate))as 'hire date'
from HumanResources.Employee

