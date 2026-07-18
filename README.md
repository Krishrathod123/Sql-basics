# Sql-basics
--- Database create query
create database sql_basic;

--- Table Create Query
create table customers (cust_id int,
                        f_name varchar(30),
                        l_name varchar(37),
                        age int
                        );

--- data insert query
insert into customers(cust_id,f_name,l_name,age)
values 
(101,'ram','patil',22),
(102,'vishal','chavan',32);


