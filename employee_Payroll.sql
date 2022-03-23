--UC1 Creating payroll_database 
create database payroll_service

--UC2 Creating employee_payroll table
use payroll_service

create table employee_payroll
(
  id int primary key identity,
  name varchar (20) not null,
  salary decimal(10,2) not null,
  startDate date not null
);

--UC3 CRUD OPERATIONS 
Insert into employee_payroll values('Bill',100000.00,'2018-01-01'),
('Terisa',200000.00,'2019-11-11'),
('Charli',100000.00,'2021-05-21')