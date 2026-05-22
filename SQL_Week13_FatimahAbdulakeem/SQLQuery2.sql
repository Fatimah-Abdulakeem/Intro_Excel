SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Age]
      ,[Gender]
  FROM [master].[dbo].[EmployeeDemographics]
  SELECT *
  FROM EmployeeDemographics
  ORDER BY 4 DESC, 5 DESC 

  --SELECT Gender, COUNT (Gender) AS CountGender
  --FROM EmployeeDemographics
  --WHERE Age > 31
  --GROUP BY Gender
  --ORDER BY Gender