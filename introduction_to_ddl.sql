create TABLE CUSTOMERS(
id char primary key not null,
name varchar(35) not null,
age int not null,
address varchar(100),
salary decimal);

alter table customers change column address location varchar(100);


create table persons(
PersonID int,
LastName varchar(255),
FirstName varchar(255),
Address varchar(255),
City varchar(255));

alter table persons add DateOfBirth date;

-- tercer ejecicio 
create table student(
student_id int not null,
first_name varchar(30) not null,
last_name varchar(100) not null,
age int
);

alter table student add(
father_name varchar(30),
mother_name varchar(30),
dob date default '1999-01-01');

DROP table student;

create database customers;
use customers;
create table customerDetails(
id smallint unsigned,
firstName varchar(30),
lastName varchar(30),
age tinyint unsigned,
gender char(6),
productBought tinyint unsigned not null default 0,
primary key(id),
check (Age>12));	

ALTER TABLE customerDetails add emailID varchar(50) unique;
alter table customerDetails add phoneNumber varchar(10) not null unique;
alter table customerDetails modify column phoneNumber char(10);
alter table customerDetails drop column emailID;
drop table customerDetails;
truncate table customerDetails;

insert into customerDetails values (default,"Rohit","Sharma",30,"male",default,"999999");
select*from customerDetails;
insert into customerDetails (id,firstName,lastName,age,gender,productBought,phoneNumber)values
(1,"Raul","Perez",34,"Male",0,"9999999998");
select*from customerDetails;


-- exercise 1
create table countries(
country_id int not null,
country_name varchar(20) not null,
region_id varchar(5) not null,
primary key(country_id,region_id));

insert into countries (country_id,country_name,region_id)
values (1,"INDIA","MH"),
(2,"USA","CA"),
(3,"EGYPT","GZ");

ALTER TABLE countries rename to divisions;

select*from divisions;


-- exercise 2
create table if not exists countries(
country_id int not null,
country_name varchar(20) not null,
region_id varchar(5) not null,
primary key(country_id,region_id));
insert into countries (country_id,country_name,region_id)
values (1,"INDIA","MH"),
(2,"USA","CA"),
(3,"EGYPT","GZ");

update countries 
set region_id="EG" where country_id=3;

select*from countries;
