select *KJ
from Sales.SalesOrderDetail

select UnitPrice
from Sales.SalesOrderDetail
where UnitPrice between 2000 - 2100

select *
from Sales.SalesTerritory

select Name, CountryRegionCode, SalesYTD
from Sales.SalesTerritory
where TerritoryID=1

select *
from Sales.SalesOrderHeader

select *
from Sales.SalesOrderHeader
where TaxAmt >10000IFSD


select *
from Sales.SalesTerritory
where name='canada''France''germany'


select *
from Sales.SalesPerson

select SalesPersonID, TerritoryID
from Sales.SalesPerson
WHERE TerritoryID = 2 and 4

select *
from Sales.SalesOrderHeader
where ShipDate< 2004-07-12

select  OrderDate, dateadd(mm, 3, 2001-07-01) as slap
from Sales.SalesOrderHeader
where OrderDate = 2001-07-01
      
	  select  * 
from Sales.SalesOrderHeader

select Name, right '('northwest','2')'
from Sales.SalesTerritory


select  datename (mm, ModifiedDate)as month
from HumanResources.Shift

  select  left(name,3)as slap
from HumanResources.Shift

 select  *, len(name)as lenght
from HumanResources.Shift

 select  *, reverse(name)as lenght
from HumanResources.Shift

 select  *, trim (name)as lenght
from HumanResources.Shift

 select  *, right(name,2)as lenght
from HumanResources.Shift

select *, datepart(convert(orderdate
from Sales.SalesOrderHeader







=09[P





