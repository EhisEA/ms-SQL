select SalesPersonID, TerritoryID
from Sales.SalesPerson


select  p.SalesPersonID, p.TerritoryID, t.Name 
from Sales.SalesPerson p join Sales.SalesTerritory t
on p.TerritoryID=t.Name 


select SalesOrderID, ProductID, ModifiedDate as order_date
from Sales.SalesOrderDetail

select  p.SalesPersonID, t.Name as territory_name
from Sales.SalesPerson p left outer join Sales.SalesTerritory t
on p.TerritoryID=t.Name 


select  a.SalesOrderID,t.Name, datename(mm, OrderDate) as month, datename(yyyy, orderdate) as year
from    Sales.SalesTerritory t join Sales.SalesOrderHeader a 
on t.TerritoryID = a.TerritoryID

select  a.SalesOrderID,t.Name, OrderDate, datepart(qq, OrderDate) as quarter
from    Sales.SalesTerritory t join Sales.SalesOrderHeader a 
on t.TerritoryID = a.TerritoryID

select   round (TotalDue,2) as total_amount_due, SalesOrderID, c.CardType
from Sales.SalesOrderHeader t join Sales.CreditCard c
on t.CreditCardID= c.CreditCardID

select CountryRegionCode,TerritoryID
from Sales.SalesTerritory


select 'the total amount due for the sales order id :' + SalesOrderID + 'is' + TotalDue
from Sales.SalesOrderHeader

select SalesOrderID, datename(dd, OrderDate)+datename(mm, OrderDate)+datename(yyyy, OrderDate) as order_date
from Sales.SalesOrderHeader

select   SalesOrderID, Name
from   Sales.SalesOrderHeader o join Sales.SalesTerritory t
on o.TerritoryID=t.TerritoryID
where o.ModifiedDate between '2004-05-01' and '2004-05-31'


select c.ContactID
from Sales.ContactCreditCard c join  Sales.CreditCard j
on c.CreditCardID=j.CreditCardID
where j.CardType = 'vista'

select o.SalesOrderID
from sales.SalesOrderHeader o join sales.SalesTerritory t
on o.TerritoryID = t.TerritoryID
where t.Name= 'northeast'



select SalesOrderID,TotalDue
from Sales.SalesOrderHeader
where TotalDue >all(
select avg(TotalDue)
from Sales.SalesOrderHeader
)

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


SELECT*
FROM Sales.SalesOrderDetail
WHERE UnitPriceDiscount = '0'

SELECT O.SalesOrderID
FROM Sales.SalesOrderHeader O JOIN Sales.CreditCard C
ON O.CreditCardID = C.CreditCardID
WHERE C.CardType = 'SUPERIORCARD'

SELECT AverageRate
FROM Sales.CurrencyRate
WHERE CurrencyRateDate = '2004-07-01' AND ToCurrencyCode = 'AUD'


SELECT EmployeeID
FROM HumanResources.Employee
where EmployeeID in (
select EmployeeID
from HumanResources.EmployeeDepartmentHistory
where DepartmentID=(
select DepartmentID
from HumanResources.Department
where name = 'tool design'))