select CONCAT(FirstName,N'',LastName) as employeename, DATEDIFF(YEAR,BirthDate,GETDATE()) as employmentage ,
        case
	        when DATEDIFF(YEAR,BirthDate,GETDATE()) <40 then N'young'
			when DATEDIFF(YEAR,BirthDate,GETDATE()) between 40 and 60 then N'Middle'
			when DATEDIFF(YEAR,BirthDate,GETDATE()) >65 then N'old'
			else N'unknown'
	   end as employeeRage
 from Employees
/*
case, datediff
 „—?‰  »—«? „Õ«”»Â —‰Ã ”‰? ò«—„‰œ«‰ ‰Ê‘ Â ‘œÂ «”  
*/