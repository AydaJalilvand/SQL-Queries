select ShipVia, year(ShippedDate) AS year , count(OrderID) AS Count , sum(Freight) AS HAML  ,avg(Freight) AS avg
from orders
where ShippedDate is not null
group by GROUPING sets ( (ShipVia , year(ShippedDate)),
                         (ShipVia),
						 ()
                        )

/*
به تفکیک کد شرکت حمل و نقل و سال حمل ،  تعداد سفارشات حمل شده  
جمع هزینه حمل و متوسط هزینه حمل و سرجمع برای هر شرکت حمل و نقل و همچنین جمع کل برای تمامی رکورد ها
*/

