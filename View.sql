/*
view
ÏÑ Ç?äÌÇ ?˜ æ?æ ÓÇÎÊå ã? ÔæÏ  ˜å ÈÇ ÇÌÑÇ? Ç?ä ˜æÆÑ? ãÔÊÑ?Çä ÇãÑ?˜Ç?? ÈÑÇ? ãÇ äãÇ?Ô ÏÇÏå ã? ÔæäÏ æ  
åãä?ä Ïæ ÓÊæä ˜ÔæÑ æ ÔåÑ ÈÇ ÎØ Ê?Ñå Èåã ÓÈÇäÏå ÔÏå æ ÓÊæä ÌÏ?Ï áæ˜?Ôä ã? ÈÇÔÏ
*/

create OR  alter view v_uscustomers
as 
select CustomerID , CompanyName , country + N'-'+ City AS [location]
from Customers
where Country = N'USA'
go
/*
ÈÚÏ ÇÒ Ç?ä˜å ˜æÆÑ? ÈÇáÇ ÇÌÑÇ æ æ?æ Èå ÚäæÇä ÇÈÌ˜Ê ÓÇÎÊå ÔÏ ÇäÇå ÇÒ æ?æ ãËá ?˜ ÌÏæá ÇÓÊİÇÏå ã?˜ä?ã 
*/
select *
from v_uscustomers
