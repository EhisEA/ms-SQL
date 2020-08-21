select 'tttt hhhh'= SalariedFlag
from HumanResources.Employee 


select  SalariedFlag as 'hhhh kkk\'
from HumanResources.Employee 

create table drop table home
(
bgggjjjn char
)
select *
from Sales.SalesOrderHeader

select SalesOrderID, OrderQty, UnitPrice, 'total'= (OrderQty * UnitPrice)
from Sales.SalesOrderDetail


select SalesOrderID, OrderQty, UnitPrice, 'total'= (OrderQty + UnitPrice)
from Sales.SalesOrderDetail
pih
select *
from Sales.SalesOrderHeader


select Name, CountryRegionCode, dateadd(YY,3,ModifiedDate)as hola
from Sales.SalesTerritory
where TerritoryID=1

select Name, CountryRegionCode, ModifiedDate
from Sales.SalesTerritory
where TerritoryID=1

select *
from Sales.SalesTerritory
where name in ('canada', 'france', 'germany')



select max(TotalDue) as max, avg(TotalDue) as avg , min(TotalDue)as min
from Sales.SalesOrderHeader


select *
from Sales.SalesPerson

select *
from Sales.Individual

select *
from Sales.SalesOrderHeader

select *
from Sales.SalesOrderDetail


 select h.SalesOrderID, o.CarrierTrackingNumber, h.SalesOrderNumber, f.Demographics, p.SalesQuota
from Sales.SalesOrderHeader h full join Sales.SalesOrderDetail o
on h.SalesOrderID=o.SalesOrderID
full join sales.individual f on h.customerid=f.customerid
join Sales.SalesPerson p on h.SalesPersonID=p.SalesPersonID

select
from

select
from


select
from


select
from

select
from


select
from


select
from

select
from


select
from


select
from

select
from


select
from


select
from