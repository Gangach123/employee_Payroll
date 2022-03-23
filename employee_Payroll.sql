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

--UC4 SHOWS ALL DATA IN THE TABLE
select * from employee_payroll

--UC5 RETRIVING DATA FROM TABLE
select salary from employee_payroll
where name = 'Bill';

select name from employee_payroll

SELECT * FROM employee_payroll
WHERE startDate BETWEEN CAST('2018-01-01' AS DATE) AND GETDATE()


--UC6 (Ability to add Gender to Employee & UPDATING)
alter table employee_payroll add gender varchar(1);

select *  from employee_payroll

UPDATE employee_payroll set gender = 'M' where name = 'Bill' or name = 'Charli';
UPDATE employee_payroll SET gender = 'F' WHERE name='Terisa';
UPDATE employee_payroll SET salary=300000 WHERE name='Terisa';