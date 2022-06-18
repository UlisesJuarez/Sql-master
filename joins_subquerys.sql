create table customers(
customer_id smallint unsigned,
customer_name varchar(30) not null,
phone char(10) not null,
primary key (customer_id));

create table orders(
 order_id int unsigned,
 customer_id smallint unsigned not null,
 order_details varchar(100) not null,
 primary key (order_id),
 foreign key (customer_id)  references customers(customer_id)
);	

insert into customers values(0,"Hugo","747848448"),(1,"Mariela","9384838"),(2,"Jaime","988493");
insert into orders values(0,0,"Una chamarra"),(1,1,"Un vestido");

select*from orders join 
customers on customers.customer_id=orders.customer_id where order_id=0;

select order_id, orders.customer_id, customer_name, order_details from orders join customers
on orders.customer_id=customers.customer_id order by order_id desc limit 3;


select * from orders left join customers on orders.customer_id=customers.customer_id;

select*from orders o right join customers c on o.customer_id=c.customer_id;	


-- emulated full join
select*from orders o left join customers c on o.customer_id=c.customer_id
union
select*from orders o right join customers c on o.customer_id=c.customer_id;

create table studentDetails(
class tinyint,
roll_no tinyint,
name varchar(30),
primary key(class, roll_no));

create table studentMarks(
class tinyint,
roll_no tinyint,
marks tinyint,
primary key(class,roll_no));

insert into studentDetails(class,roll_no,name) values (8,1,"mary"),(8,2,"dalila"),(9,1,"camila"),(10,1,"Betsabe");
insert into studentMarks(class,roll_no,marks) values (8,1,88),(8,2,46),(9,1,95),(10,1,74);

-- compund join
select name,marks from studentDetails sd join studentMarks sm
	on sd.class=sm.class
    AND sd.roll_no=sm.roll_no
order by marks desc limit 2;

select sd.roll_no, name, marks 	from studentDetails sd inner join studentMarks sm
on sd.class=sm.class
and sd.roll_no=sd.roll_no 
where sd.class=8 order by marks limit 1;

select*from studentMarks;

select sd.name,marks from studentMarks sm inner join studentDetails sd on sd.class=sm.class
and sm.roll_no=sd.roll_no where marks=95;

select max(marks) from studentMarks;

select marks from studentMarks order by marks desc limit 1;

select avg(marks) from studentMarks;

select sd.name, marks from studentMarks sm inner join studentDetails sd on sm.class=sd.class and 
sm.roll_no=sd.roll_no where marks>(select avg(marks) from studentMarks);


select max(marks) from (select *from studentMarks)as f;

update studentMarks set 
marks=marks-6
where marks=(select max(marks) from (select *from studentMarks)as f);

select*from studentmarks;

select class,roll_no from studentdetails where name="Camila";

update studentMarks set 
marks=marks+10
where marks=(select min(marks) from (select *from studentMarks)as f);

delete from studentdetails where (class,roll_no)= (select class,roll_no from studentdetails where name="Camila");

select*from studentdetails;

-- exercise foreign keys
create table students(
id int not null primary key,
first_name varchar(30) not null,
last_name varchar(30) not null,
age int not null);

create table marks(
student_id int not null,
science int not null,
math int not null,
social_science int not null,
english int not null,
language int not null,
foreign key(student_id) references students(id));


create table account(
user_id varchar(30) not null primary key,
user_name varchar(30) not null,
password varchar(30) not null,
email varchar(30) not null);

create table job(
job_id varchar(30) primary key,
job_name varchar(30) not null);

create table account_job(
user_id varchar(30),
job_id varchar(30),
foreign key (user_id) references account(user_id),
foreign key (job_id) references job(job_id));

