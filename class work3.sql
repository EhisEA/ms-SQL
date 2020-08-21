select title, minimum =min(VacationHours), maximum= max(VacationHours)
from HumanResources.Employee
where VacationHours>80 group by Title


select  EmployeeID, Rate,
row_number()over(order by rate desc)as rank
from HumanResources.EmployeePayHistory


select EmployeeID, Rate, rank() over(order by rate desc) as rank
from HumanResources.EmployeePayHistory

select EmployeeID, rate,dense_rank() 
over (order by rate desc)as rank
from HumanResources.EmployeePayHistory


select 'average rate'=avg(rate)
from HumanResources.EmployeePayHistory


select'unique rate'=count(distinct rate)
from HumanResources.EmployeePayHistory


select 'sum' = sum(distinct rate)
from HumanResources.EmployeePayHistory

select 'sum' = sum (distinct Rate)
from HumanResources.EmployeePayHistory


select title, minimum =min(VacationHours), maximum= max(VacationHours)
from HumanResources.Employee
where VacationHours>80 group by Title



select EmployeeID, rate,ntile(4) 
over (order by rate desc)as rank
from HumanResources.EmployeePayHistory