SELECT CASE
          WHEN AGE <25 THEN N'YOUNG' 
	      WHEN AGE BETWEEN 25 AND 35 THEN N'MIDDLE AGED' 
	      WHEN AGE>35 THEN N'OLD'
	      END AS RAGEANGE ,
	   COUNT( CASE WHEN GENDER=N'F' THEN 'FEMALE' END) AS FEMALECOUNT ,
	   COUNT( CASE WHEN GENDER=N'M' THEN 'MALE'   END) AS MALECOUNT ,
	   count(personelid) AS PersonelCount ,
       AVG(IIF(GENDER=N'F', salary ,null)) AS FemaleAvgSalary ,
	   AVG(case WHEN GENDER =N'M' then SALARY end ) AS MaleAvgSalary ,
	   AVG(salary) as TotalAvgSalary
FROM personnel
group by GROUPING sets ( (CASE
          WHEN AGE <25 THEN N'YOUNG' 
	      WHEN AGE BETWEEN 25 AND 35 THEN N'MIDDLE AGED' 
	      WHEN AGE>35 THEN N'OLD'
	      END) , () )
/*
در جدول پرسنل  براساس رنج سنی ،  تعداد کارمندان زن ، تعداد کارمندان مرد ، جمع کل کارمندان ، میانگین حقوق کارمندان زن  
میانگین حقوق کارمندان مرد و میانگین کلی حقوق کارمندان را به صورت ستونی گزارش بگیرید
*/