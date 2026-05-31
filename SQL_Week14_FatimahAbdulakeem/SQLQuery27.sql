SELECT *
FROM dbo.EmployeeDemographics

UPDATE dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012


SELECT *
FROM dbo.EmployeeDemographics
WHERE EmployeeID =1004