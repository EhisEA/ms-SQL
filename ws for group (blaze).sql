select SalesPersonID, TerritoryID
from Sales.SalesPerson

select *
from Sales.SalesPerson

select*
from Sales.SalesTerritory

select  p.SalesPersonID, p.TerritoryID, t.Name 
from Sales.SalesPerson p join Sales.SalesTerritory t
on p.TerritoryID=t.Name 


select *
from Sales.SalesOrderDetail


select SalesOrderID, ProductID, ModifiedDate as order_date
from Sales.SalesOrderDetail

select *
from Sales.SalesOrderHeader


select *
from Sales.SalesPerson


select *
from Sales.SalesOrderHeader



select  p.SalesPersonID, t.Name, datename(mm, ModifiedDate) as month, 
from Sales.SalesPerson p join Sales.SalesTerritory t
on p.TerritoryID=t.Name 

select   round (TotalDue,2) as total_amount_due, SalesOrderID, c.CardType
from Sales.SalesOrderHeader t join Sales.CreditCard c
on t.CreditCardID= c.CreditCardID

select *
from Sales.CountryRegionCurrency 

select CountryRegionCode,TerritoryID
from Sales.SalesTerritory



select 'the total amount due for the sales order id :' + SalesOrderID + 'is' + TotalDue
from Sales.SalesOrderHeader

select*
from sales.CreditCard

select* total
from sales.CreditCard


select  a.SalesOrderID, t.Name, datename(mm, orderdate) as month, datename(yyyy, orderdate) as year
from    Sales.SalesTerritory t left outer join Sales.SalesOrderDetail a 
on t.Name = a.territoryid 




alter table Sales.SalesOrderDetail
add  territory_id char(7)


select   *
from   Sales.SalesOrderHeader

select   SalesOrderID, Name
from   Sales.SalesOrderHeader o join Sales.SalesTerritory t
on o.TerritoryID=t.TerritoryID
where o.ModifiedDate between '2004-05-01' and '2004-05-31'


select  *
from Sales.SalesTerritory 

select*
from Sales.CreditCard

select*
from Sales.Customer

select *
from sales.SalesTerritory


select c.ContactID
from Sales.ContactCreditCard c join  Sales.CreditCard j
on c.CreditCardID=j.CreditCardID
where j.CardType = 'vista'

select o.SalesOrderID
from sales.SalesOrderHeader o join sales.SalesTerritory t
on o.TerritoryID = t.TerritoryID
where t.Name= 'northeast'

select avg(TotalDue) as done
from Sales.SalesOrderHeader




select SalesOrderID,TotalDue
from Sales.SalesOrderHeader
where TotalDue >all(
select avg(TotalDue)
from Sales.SalesOrderHeader
)

select *
from Sales.SalesOrderHeader

select SalesOrderID, 
from Sales.SalesOrderHeader

select *
from Sales.SalesOrderDetail


select SalesOrderID,SalesOrderDetailID,LineTotal
from Sales.SalesOrderDetail
where LineTotal >'43662'

select SalesOrderID,SalesOrderDetailID,LineTotal
from Sales.SalesOrderDetail
where LineTotal>all(
select max(linetotal)
from Sales.SalesOrderDetail
)

select o.SalesOrderID , c.CreditCardID
from Sales.SalesOrderHeader o join Sales.CreditCard c
on o.CreditCardID=c.CreditCardID
where c.ExpYear=2007



select  *
from Sales.CreditCard

select  *
from Sales.Customer

select  *
from Sales.CustomerAddress

SELECT*
FROM Sales.SalesOrderHeader

SELECT*
FROM Sales.SalesOrderDetail
WHERE UnitPriceDiscount = '0'

SELECT AverageRate
FROM Sales.CurrencyRate
WHERE CurrencyRateDate = '2004-07-01' AND ToCurrencyCode = 'AUD'

SELECT O.SalesOrderID
FROM Sales.SalesOrderHeader O JOIN Sales.CreditCard C
ON O.CreditCardID = C.CreditCardID
WHERE C.CardType = 'SUPERIORCARD'


SELECT *
FROM Sales.Currency


SELECT *
FROM Person.Contact

SELECT*
FROM Sales.ContactCreditCard


SELECT*
FROM HumanResources.Employee


SELECT*
FROM HumanResources.Department

SELECT*
FROM HumanResources.EmployeeDepartmentHistory

SELECT*
FROM HumanResources.Employee
where EmployeeID=(
select EmployeeID
from HumanResources.EmployeeDepartmentHistory
where DepartmentID=(
select DepartmentID
from HumanResources.Department
where name = 'tool design')






























