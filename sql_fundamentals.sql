/* first query*/

use customers;
select*from customers;

select customerid,customername,conctacname,Address from customers;

/* basic querys part1*/

select *from customers where city="London";
select *from products where price<20 and SupplierID=1;
select *from products where price<20 and SupplierID=1 order by price desc;
select *from products where price>25 and SupplierID!=1 order by price desc;
select *from products where price>25 and SupplierID<>1 order by price desc;

/* basic querys part 2*/

select *from products where ProductName="Chairs" or ProductName="Chang" or ProductName="Konbu" or ProductName="Tofu";
select *from products where ProductName IN ("Chairs","Chang","Konbu","Tofu");
select *from products where price>=20 and price<=40;
select*from products where price between 20 and 40;

select count(*) from products;
select max(price) from products;

select country,count(*) from customers group by country;
select country,count(*) from customers group by country order by 2;
select country,count(*) as "number records" from customers group by country order by 2;

/* brain buster exercise*/
select*from products;
select ProductID,ProductName,Unit,Price from products where SupplierID=2;
select count(*) from OrderDetails;
select*from customers where country="Germany";
select*from employees where birthdate>"1960-01-01";
select ProductID,ProductName, Unit from products where price between 20 and 40;
select min(price) from products;
select SupplierID,count(ProductName) as N_prods from products where SupplierID=2;
select ProductID,count(ProductID) as 'Occurrences' from OrderDetails group by ProductID order by 2 desc;




