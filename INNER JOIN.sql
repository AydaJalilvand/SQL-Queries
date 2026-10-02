select  E.EmployeeID ,FirstName , LastName , COUNT(OrderID) AS TotalCount , sum(Freight) AS TotalFreight
from Employees AS E INNER JOIN Orders AS O
on E.EmployeeID = o.EmployeeID
where year(o.OrderDate) = 1997   AND E.Country=N'USA'
group by  FirstName , LastName ,E.EmployeeID
order by E.EmployeeID
/*
درمقابل نام کارمندان امریکایی تعداد سفارشات ایشان و جمع هزینه حمل انها مربوط به سفارشات  سال 1997 را نشان دهید 
*/
