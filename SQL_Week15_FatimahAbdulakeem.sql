--CTEs
WITH CTE_Employee as
(SELECT FirstName, LastName, Gender, Salary
, COUNT(gender) OVER (PARTITION by Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM dbo.EmployeeDemographics emp
JOIN dbo.EmployeeSalary sal
    ON emp.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
Select FirstName, AvgSalary
FROM CTE_Employee


--Temp Tables 
CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar (100),
Salary int
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'

INSERT INTO #temp_Employee
SELECT*
FROM dbo.EmployeeSalary

DROP TABLE IF EXISTS #Temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar (50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #Temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
FROM dbo.EmployeeDemographics emp
JOIN dbo.EmployeeSalary sal
   ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT *
FROM #Temp_Employee2


--Subqueries (in the select, from, and where statement
Select *
From  EmployeeSalary

--Subquery in Select 
Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as ALLAvgSalary
From  EmployeeSalary

--How to do it with Partition By
Select EmployeeID, Salary, AVG(Salary) over () as ALLAvgSalary
From  EmployeeSalary

--Why Group By doesn't work
Select EmployeeID, Salary, AVG(Salary) as ALLAvgSalary
From  EmployeeSalary
Group By EmployeeID, Salary
Order By 1,2

--Subquery in From
Select a.EmployeeID, ALLAvgSalary
From (Select EmployeeID, Salary, AVG(Salary) over () as ALLAvgSalary
     From  EmployeeSalary) a

 --Subquery in Where
Select EmployeeID, JobTitle, Salary
From  EmployeeSalary
Where EmployeeID in (
          Select EmployeeID
          From EmployeeDemographics
          Where Age > 30)

