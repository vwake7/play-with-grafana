create table rainfall(Year int, city text, rainfall_in_inch int);

insert into rainfall
select 2020, 'Chennai', 50 union 
select 2020, 'Bangalore', 80 union
select 2020, 'Mumbai', 90 union
select 2020, 'Delhi', 70 union
select 2020, 'Kolkaka', 100 union
select 2020, 'Hyderabad', 60 union
select 2021, 'Chennai', 55 union 
select 2021, 'Bangalore', 65 union
select 2021, 'Mumbai', 55 union
select 2021, 'Delhi', 45 union
select 2021, 'Kolkaka', 65 union
select 2021, 'Hyderabad', 55 union
select 2022, 'Chennai', 85 union 
select 2022, 'Bangalore', 85 union
select 2022, 'Mumbai', 75 union
select 2022, 'Delhi', 65 union
select 2022, 'Kolkaka', 75 union
select 2022, 'Hyderabad', 90 ;

create extension tablefunc;

SELECT *
FROM organization.crosstab(
 'SELECT Year, city, rainfall_in_inch from rainfall order by 1,2 ' 
 ) AS ("Year" int, "Bangalore" int, 
 "Chennai" int, "Hyderabad" int, "Delhi" int, 
 "Kolkata" int, "Mumbai" int);
