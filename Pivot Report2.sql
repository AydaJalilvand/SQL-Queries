select   categoryid ,
					count (case when unitprice<10 then 1 end) as Cheap,
					count( case when unitprice between 10 and 20 then 1 end) as moderate ,
	  				count(case when unitprice >20 then 1 end ) as  expensive ,
					count(productid) AS ToralCount
from Products
group by grouping  sets( (CategoryID ) , () )
/*
به تفکیک گروه کالا ،   تعداد کالاهای ارزان ، متوسط ، گران   و تعداد کل کالاهای مربوط به هر گروه کالا را لیست کنید
*/