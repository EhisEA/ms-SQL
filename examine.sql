SELECT EmployeeID, uu='Designation: ', Title, 'fola' as kkk
FROM HumanResources.Employee

SELECT EmployeeID,
(Rate)

FROM HumanResources.EmployeePayHistory

SELECT EmployeeID, power(2,Rate)

FROM HumanResources.EmployeePayHistory

SELECT EmployeeID, floor(Rate)

FROM HumanResources.EmployeePayHistory

select * from HumanResources.EmployeePayHistory

SELECT EmployeeID, 
Rate, 
Per_Day_Rate = 8 * Rate, floor(Per_Day_Rate) 
FROM HumanResources.EmployeePayHistory


SELECT DISTINCT Title FROM
HumanResources.Employee
WHERE Title LIKE 'PR%'

SELECT top 3* FROM
 Sales.SalesPerson 
WHERE Bonus between 4000 and 6000


SELECT EmployeeID, Rate, 	         row_number() OVER(ORDER BY Rate desc)AS RANK FROM HumanResources.EmployeePayHistory 

SELECT EmployeeID, Rate, row_number()over(order by rate) AS RANK FROM HumanResources.EmployeePayHistory 


SELECT host_id() as 'HostID'

SELECT suser_sid ('sa') AS SID
SELECT user_id ('chris') AS USERID
SELECT db_id('freal') AS DatabaseID

select* --UPPER(EmployeeID) --UPPER(title)--, upper()
from HumanResources.Employee
where Title in ('marketing assistant', 'marketing manager')

select UPPER(EmployeeID) 
from HumanResources.Employee
where Title in ('marketing assistant', 'marketing manager')


	SELECT 'Unique Rate' = count  (DISTINCT Rate) FROM HumanResources.EmployeePayHistory

SELECT 'Sum' = sum (DISTINCT Rate) 	  FROM HumanResources.EmployeePayHistory


SELECT Title, 'Total VacationHours' = VacationHours,'Total SickLeaveHours' = SickLeaveHours 	  
FROM HumanResources.Employee 	        
 WHERE Title IN ('Recruiter', 'Stocker') 	
 ORDER BY Title, VacationHours, SickLeaveHours
 COMPUTE SUM(VacationHours), SUM(SickLeaveHours)



 SELECT Title, 		 	        'Total VacationHours' = VacationHours,     'Total SickLeaveHours' = SickLeaveHours 	  FROM HumanResources.Employee 	         WHERE Title IN ('Recruiter', 'Stocker') 	 ORDER BY Title, VacationHours, SickLeaveHoursCOMPUTE SUM(VacationHours), SUM(SickLeaveHours


SELECT *
FROM Sales.SalesOrderHeader
ORDER BY ProductID desc







SELECT A.CompDescription, B.AddOnDescription, A.Price + B.Price AS 'Total Cost' FROM ComputerDetails A CROSS JOIN AddOnDetails B
/*
use [Freal]
select p.pait_id, a.adm_id, p.age, d.specialization
from HOSPITAL.patient p cross join HOSPITAL.admision a cross join HOSPITAL.doctor d
order by pait_id desc
*/

SELECT *
FROM HumanResources.EmployeeDepartmentHistory d 
 JOIN HumanResources.Employee e
 ON d.EmployeeID = e.EmployeeID 
  JOIN HumanResources.Department p 
 ON p.DepartmentID= d.DepartmentID

 SELECT emp.EmployeeID, emp.Title AS Employee_Designation, emp.ManagerID, mgr.Title AS Manager_Designation 
 FROM HumanResources.Employee emp, HumanResources.Employee mgr 			
  WHERE emp.ManagerID = mgr.EmployeeID
 
  select EmployeeID, Title, title as man, ManagerID
  FROM HumanResources.Employee emp

SELECT emp.EmployeeID, emp.Title AS Employee_Designation, emp.ManagerID, mgr.Title AS Manager_Designation 
FROM HumanResources.Employee emp, HumanResources.Employee mgr 			
 WHERE emp.ManagerID = mgr.EmployeeID

 SELECT EmployeeID, Title 			 
  FROM HumanResources.Employee 		 
  WHERE EXISTS (SELECT * 
  FROM HumanResources.EmployeeDepartmentHistory 
  WHERE EmployeeID = HumanResources.Employee.EmployeeID AND DepartmentID = 4)


   SELECT EmployeeID, Title 			 
  FROM HumanResources.Employee 		 
  WHERE EXISTS (SELECT * 
  FROM HumanResources.EmployeeDepartmentHistory p join HumanResources.Employee e  
  on p.EmployeeID=e.EmployeeID
  WHERE p.EmployeeID = e.EmployeeID AND DepartmentID = 4)

  select  *
  from Sales.SalesOrderHeader

  
select  p.Rate, e.Title as designation
  from HumanResources.EmployeePayHistory p
 where p.Rate>(select *
  from HumanResources.EmployeePayHistory
  where p.Rate= 40)
(select  *
  from HumanResources.Employee e
  where p.EmployeeID=e.EmployeeID) 

  
select  p.EmployeeID, e.Title as designation
  from HumanResources.EmployeePayHistory p, HumanResources.Employee e
  where p.Rate> 40

select  *
  from HumanResources.EmployeePayHistory

  
select  *
  from HumanResources.Employee


  sp_help 'HumanResources.Employee'

  create rule kkk
  as
  @opl in ('ll', 'jjh')

CREATE RULE emp_code_rule
AS @empcode LIKE '[F M][A Z][0-9] [0 9][0 9]'




select w.BirthDate, e.BirthDate, e.EmployeeID
from HumanResources.Employee e, HumanResources.Employee w







