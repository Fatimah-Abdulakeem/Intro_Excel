SELECT EmployeeID, FirstName, Age
FROM dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM dbo.EmployeeSalary
ORDER BY EmployeeID

SELECT *
FROM dbo.EmployeeDemographics
Full Outer Join dbo.WareHouseEmployeeDemographics
   ON EmployeeDemographics.EmployeeID = 
     WareHouseEmployeeDemographics.EmployeeID