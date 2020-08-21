select UnitPrice
from Sales.SalesOrderDetail
where UnitPrice between 2000 and 2100

select Name, CountryRegionCode, SalesYTD
from Sales.SalesTerritory
where TerritoryID=1

select top 5 *
from Sales.SalesOrderHeader
where TaxAmt >10000

select *
from Sales.SalesTerritory
where name='canada'or name='France'or name='germany'

select SalesPersonID, TerritoryID
from Sales.SalesPerson
WHERE TerritoryID = '2' or TerritoryID =  '4'

select *
from Sales.CreditCard
where ExpYear=2006 and cardtype= 'vista'

select *
from Sales.SalesOrderHeader
where ShipDate< 2004-07-12

select  OrderDate
from Sales.SalesOrderHeader
where OrderDate = 2001-07-01

select *
from Sales.SalesOrderHeader
where OnlineOrderFlag = 1

select SalesOrderID, TotalDue
from Sales.SalesOrderHeader
order by TotalDue 

select SalesOrderID, TaxAmt

from Sales.SalesOrderHeader
where TotalDue>2000

select SalesOrderID, TotalDue
from Sales.SalesOrderHeader
order by TotalDue

select *
from Sales.Currency
where Name like '%dollar'

select *
from Sales.SalesTerritory
where name like 'n%'

select SalesPersonID as 'sales person id', TerritoryID as 'Territory ID', SalesQuota as 'Sales Quota'
from  Sales.SalesPerson
where SalesQuota is not null

select *
from  Sales.SalesPerson
where bonus >= '5150.00'
order by Bonus desc

select *
from Sales.Store
where Name like '%bike%'

select CardType
from Sales.CreditCard

select EmployeeID, LoginID, Title
from HumanResources.Employee
where EmployeeID between 6 and 15 

select  top 5 EmployeeID, LoginID, Title
from HumanResources.Employee
where EmployeeID between 6 and 15 

select EmployeeID, LoginID, Title
from HumanResources.Employee
where EmployeeID between 6 and 15 

select TotalDue
from Sales.SalesOrderHeader

select  avg TotalDue
from Sales.SalesOrderHeader


select *
from  Sales.SalesOrderHeader
where ModifiedDate like '2001%'
order by TotalDue desc

select SalesOrderID, ProductID, sum(LineTotal) 
from Sales.SalesOrderDetail
group by SalesOrderID


select ProductID, LineTotal
from Sales.SalesOrderDetail
where LineTotal<10000

select ProductID, LineTotal
from Sales.SalesOrderDetail
group by rollup (ProductID,LineTotal)

select LineTotal,ModifiedDate
from Sales.SalesOrderDetail


select *
from Sales.SalesOrderDetail


select UnitPrice,LineTotal,ProductID, sum (linetotal) , sum ( UnitPrice)
from Sales.SalesOrderDetail
where ProductID =774 or ProductID = 777