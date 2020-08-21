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


select *
from Sales.SalesOrderHeader


select SalesOrderID,reverse( OrderDate)
from Sales.SalesOrderHeader
