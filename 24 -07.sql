

select EmployeeID
from HumanResources.EmployeeAddress
where AddressID in
(select AddressID
from Person.Address
where city = 'bothell'
)


select EmployeeID, Title
from HumanResources.Employee
where exists (select *
from HumanResources.EmployeeDepartmentHistory
where EmployeeID = HumanResources.Employee.EmployeeID and  DepartmentID = 4)

select *
from  sales.Customer
where TerritoryID >all(1, 2, 3)

select EmployeeID, Title
from HumanResources.Employee
where VacationHours >all(select VacationHours from HumanResources.Employee where Title = 'recuiter')

select EmployeeID, Title
from HumanResources.Employee
where VacationHours <all(select VacationHours from HumanResources.Employee where Title = 'recuiter')


select  *
from HumanResources.Employee

select *
from HumanResources.EmployeeDepartmentHistory


select Employeeid, DepartmentID
from HumanResources.EmployeeDepartmentHistory
where employeeid in
(select EmployeeID
from HumanResources. Employee
where  ManagerID=6)

select d.Employeeid, d.DepartmentID, e.managerid
from   HumanResources.EmployeeDepartmentHistory d join  HumanResources.Employee e
on d.employeeid = e.employeeid 
where managerid=6 


select SalesOrderID,TotalDue
from Sales.SalesOrderHeader
where TotalDue >all(
select avg(TotalDue)
from Sales.SalesOrderHeader
)
