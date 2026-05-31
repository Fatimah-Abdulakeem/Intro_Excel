SELECT *
FROM dbo.EmployeeDemographics

SELECT *
FROM dbo.EmployeeSalary

SELECT JobTitle, AVG(Salary)
FROM dbo.EmployeeDemographics
Inner Join dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle
