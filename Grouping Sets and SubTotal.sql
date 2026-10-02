-------------
	  with t 
	  AS ( 
	      select EmployeeID,
          Case
	         when DATEDIFF(year,BirthDate,getdate())<40 then N'young'
	         when DATEDIFF(year,BirthDate,getdate()) between 40 and 65 then N'Moderate'
	         when DATEDIFF(year,BirthDate,getdate()) >65 then N'old'
	          else N'unknown'
	      end as AgeRange
		  from Employees
          )
		  select AgeRange , count(EmployeeID) As EmployeeCount
		  from t
		  group by grouping sets ( (AgeRange) ,
		                           () 
								   )
          order by  case AgeRange
		  when N'young' then 1 
		  when N'Moderate' then 2
		  when N'old' then 3
		  else 9999
		  end
/*
سن کارمندان را حساب و برای انها  بازه سنی را مشخص کنید  سپس تعداد کارمندان را در هر بازه سنی  و جمع کل تعداد کارمندان را نشان دهید 
*/