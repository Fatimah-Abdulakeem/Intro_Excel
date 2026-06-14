Select *
From KCC.dbo.Customers
Where CustomerName  Not Like 'A%' AND (Country = 'United States'
OR Country = 'France')


Select OrderID,
OrderDate,
OrderTotal,
CustomerName,
Phone
From dbo.Orders left outer Join dbo.Customers on dbo.Orders.CustomerID = dbo.Customers.CustomerID 
Order by OrderTotal desc


Select sum(OrderTotal) From dbo.Orders
Where OrderDate >= Dateadd(month,-1,getdate())
group by CustomerID


SELECT Customers.CustomerName AS [Customer Name], SUM(Orders.OrderTotal) AS Expr1
FROM   Customers INNER JOIN
             Orders ON Customers.CustomerID = Orders.CustomerID
WHERE (Orders.OrderDate >= CONVERT(DATETIME, '2022-02-18 00:00:00', 102))
GROUP BY Customers.CustomerName
