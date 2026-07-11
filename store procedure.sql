create database pro;
use pro;
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY ,
    EmpName VARCHAR(50),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE,
    City VARCHAR(50)
);


INSERT INTO Employees ( EmpID,EmpName, Department, Salary, JoiningDate, City) VALUES
(101,'Amit Sharma', 'IT', 55000, '2020-01-15', 'Pune'),
(102,'Priya Singh', 'HR', 42000, '2019-03-22', 'Mumbai'),
(103,'Rahul Verma', 'IT', 61000, '2021-07-10', 'Delhi'),
(104,'Sneha Patel', 'Finance', 48000, '2018-11-05', 'Pune'),
(105,'Vikram Rao', 'IT', 72000, '2022-02-18', 'Bangalore'),
(106,'Anjali Gupta', 'HR', 39000, '2020-09-30', 'Mumbai'),
(107,'Karan Mehta', 'Finance', 53000, '2019-06-12', 'Delhi'),
(108,'Neha Joshi', 'IT', 65000, '2021-12-01', 'Pune'),
(109,'Suresh Kumar', 'Finance', 47000, '2017-08-25', 'Bangalore'),
(110,'Pooja Desai', 'HR', 44000, '2023-01-09', 'Mumbai');

--- Create a procedure to display all employee records.
delimiter //
create procedure show_rec()
begin
select * from employees; 
end //
delimiter ;
call show_rec;

--- Create a procedure to display the total number of employees.
delimiter //
create procedure total_emp()
begin
select count(EmpID) from Employees; 
end //
delimiter ;
call total_emp;
drop procedure total;
drop procedure total_emp;


--- Create a procedure to display employees from the IT department.
delimiter //
create procedure it()
begin
select * from employees where department='it';
end //
delimiter ;
call it;


--- Create a procedure to find the highest salary.
delimiter //
create procedure max_sal()
begin
select max(salary) from employees;
end //
delimiter ;
call max_sal;


--- Create a procedure to find the lowest salary.
delimiter //
create procedure min_sal()
begin
select min(salary) from employees;
end //
delimiter ;
call min_sal;

--- Create a procedure to display the average salary of all employees.
delimiter //
create procedure avg_sal()
begin
select avg(salary) from employees;
end //
delimiter ;
call avg_sal;

--- Create a procedure to display employees earning more than 50000.
delimiter //
create procedure earning()
begin
select * from employees where salary> 50000;
end //
delimiter ;
call earning;

--- Create a procedure to display employees sorted by salary in descending order.
delimiter //
create procedure desc_sal()
begin
select * from employees order by salary desc;
end //
delimiter ;
call desc_sal;

--- Create a procedure to display the count of employees department-wise.
delimiter //
create procedure emp_count()
begin
select department,count(empid) from employees group by department;
end //
delimiter ;
call emp_count;


--- Create a procedure to display employees who joined after 2020.
delimiter //
create procedure show_rec()
begin
select * from employees where JoiningDate> '2022-12-31';
end //
delimiter ;
call show_rec;


--- Create a procedure to display employees from Pune city.
delimiter //
create procedure city()
begin
select * from employees where city='pune';
end //
delimiter ;
call city;

--- Create a procedure to update salary by 10% increment for all employees.
delimiter //
create procedure increment()
begin
select  salary,salary*0.10,(salary*10 + salary) from employees ;
end //
delimiter ;
call increment;


--- Create a procedure to delete employees whose salary is less than 40000.
delimiter //
create procedure show_rec()
begin
select * from employees; 
end //
delimiter ;
call show_rec;

--- Create a procedure to display the department-wise average salary.
delimiter //
create procedure salary()
begin
select * from employees where salary<40000;
end //
delimiter ;
call salary;
select sum(salary) from employees;
--- Create a procedure to display the total salary paid to all employees.
delimiter //
create procedure paid()
begin
select sum(salary) from employees;
end //
delimiter ;
call paid;