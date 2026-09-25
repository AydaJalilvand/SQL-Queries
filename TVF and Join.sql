create or alter function fn_getorderbyBoth (@Year int , @Country nvarchar(15))
returns table
as
return(select     C.CustomerID,
        C.Country,
        O.OrderID,
        O.OrderDate
       from Customers C inner join  Orders o
	   on c.CustomerID=o.CustomerID
	   where year(OrderDate)=@year and Country=@Country
	   )
/*
tvf
ÏÑ Ç?ä ÊãÑ?ä Ïæ ÌÏæá ÈÇ ?˜Ï?Ñ Ìæ?ä ÔÏå . ØÈŞ ÓÇá æ ˜ÔæÑ? ˜å ˜ÇÑÈÑ æÇÑÏ ˜äÏ
İŞØ ãÔÊÑ?Çä? ˜å Èå ÓÇá æ ˜ÔæÑ æÇÑÏ ÔÏå ÊÚáŞ ÏÇÑäÏ äãÇ?Ô ÏÇÏå ã? ÔæÏ 
*/