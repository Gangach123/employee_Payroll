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