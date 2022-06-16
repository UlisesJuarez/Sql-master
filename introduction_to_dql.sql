select max(salary) from citizen;

select * from citizen order by salary desc limit 5;

select distinct(country) as 'countries' from citizen;

select country from citizen order by country asc limit 10;

select round(4.3);
select round(3.141693434,2);
select truncate(67.343546,2);
select ceiling(4.20);
select floor(5.6);
select abs(-11);
select rand();
select id, first_name, last_name, round(salary,1) as salary from citizen;
select id,first_name, last_name, ceiling(salary) as salary from citizen;

select upper("dhoni");
select lower("DHONI");
select length("dhoni");
select left("dhoni",3);
select right("dhoni",2);
select substring("el amor te ciega",5,8);
select substring("el amor te ciega", 7) as palabra;
select ltrim("  kapil");
select rtrim("kapil   ");
select trim("   kapil   ");
select locate("tendulkar", "sachin tendulkar");

select id, upper(first_name) as Name, phone from citizen;
select id, lower(last_name) as "Last Name", phone from citizen;
select id, first_name, length(first_name) as "Name length" from citizen order by 3 desc;
select id,
	left(first_name,4) as first_name,
    right(last_name,4) as last_name
    from citizen;
select id,
	concat(first_name," ",last_name) as full_name
from citizen;
select id,
	concat(left(first_name,4)," ",right(last_name,4)) as full_name
from citizen;

select country,avg(salary)
from citizen where avg(salary)>30000 group by country;

select country, avg(salary) as avg_salary
from citizen 
group by country having avg(salary)>30000 order by 2;

select gender, avg(salary) as avg_salary
from citizen 
group by gender having avg(salary)>40000 order by 2 desc;


select*from citizen where first_name like "A%";
select*from citizen where first_name like "%A";
select*from citizen where last_name like "A%c%";
select*from citizen where last_name like "_ac%d_";