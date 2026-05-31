--SELECT FirstName, LastName, Age,
--CASE
--   WHEN Age > 38 THEN 'Stanley'
--   WHEN Age = 30 THEN 'Old'
--   ELSE 'Baby'
--END
--FROM dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age

SELECT FirstName, LastName, JobTitle, Salary,
CASE
   WHEN JobTitle = 'Salesman' THEN Salary +(Salary * .10)
   WHEN JobTitle = 'Accountant' THEN Salary +(Salary * .05)
   WHEN JobTitle = 'HR' THEN Salary +(Salary * .000001)
   ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM dbo.EmployeeDemographics
JOIN dbo.EmployeeSalary
  ON EmployeeDemographics.EmployeeID =EmployeeSalary.EmployeeID