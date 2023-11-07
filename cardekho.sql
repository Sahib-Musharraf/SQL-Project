use carschema;
show tables;
select *from mycar;

-- Q1-- --To get a count in cars-- 
select COUNT(*)FROM mycar;

-- Q2 The manager ask the employee. How many cars will be avalablr in 2023?

select COUNT(*) from mycar
where YEAR = 2023;

-- Q3. How many cars is avalable in 2020,2021,2022?

select COUNT(*) FROM mycar
where YEAR = 2020;  

select COUNT(*) FROM mycar
where YEAR = 2021;

select COUNT(*) FROM mycar
where YEAR = 2022;

-- OR WE can use Group by

select COUNT(*) from mycar 
where YEAR IN(2020,2021,2022)
GROUP BY YEAR;

-- Q4. CALL carss by year one by one

SELECT YEAR, COUNT(*) FROM mycar
GROUP BY YEAR;

-- Q5 how many deasel car will be in 2020?

SELECT COUNT(*) from mycar
where  YEAR = 2020 AND
fuel = "Diesel";

-- Q6 How many petrol car in 2020?

SELECT COUNT(*) FROM mycar
where YEAR = 2020 AND fuel = "Petrol";

-- Q7.GIVE PRINT OF  All fuel,(petrol, diesel , CNG) by all year;

SELECT YEAR,COUNT(*) FROM mycar 
where fuel = "Petrol" group by YEAR;

SELECT YEAR,COUNT(*) FROM mycar 
where fuel = "Diesel" group by YEAR;

SELECT YEAR,COUNT(*) from mycar
where fuel = "CNG" GROUP BY YEAR;

-- Q8 Which year had more than one hundred car

SELECT YEAR,COUNT(*) FROM mycar
GROUP BY YEAR HAVING COUNT(*)>100;

-- Q9 , which year has less than 50. car

SELECT YEAR,COUNT(*) FROM mycar
group by year having count(*)<50;

-- Q10 All car count details between 2015 to 2023.

SELECT COUNT(*) from mycar
where  YEAR  between 2015 AND 2023;

-- Q11 	ALL CAR DETAIL 2015 TO 2023, WE NEED COMPLETE LIST

SELECT *from mycar
where  YEAR  between 2015 AND 2023;


