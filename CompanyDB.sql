-----------------(01)-----------------
create database Company
use Company

-----------------(02)-----------------
create table Employees (
ID int primary key identity(1,1),
Name nvarchar(50) ,
Salary int
)
-----------------(03)-----------------
insert into Employees( name, salary ) values
('ahmed',20000 ),
('omar',30000 );
-----------------(04)-----------------
update Employees
set salary=25000
where name='ahmed'
-----------------(05)-----------------
alter table Employees add Department nvarchar(50) 

update Employees
set Department = 
case 
when name='ahmed' then 'CSE'
when name='omar' then 'MPE'
End
-----------------(06)-----------------
alter table Employees add constraint c1 check( Department is not null);
-----------------(07)-----------------
create table Departments(
DepartmentID  int primary key identity(1,1) ,
DepartmentName nvarchar(50)
)
-----------------(08)-----------------
alter table Departments add constraint c2 unique(DepartmentName)

insert into Departments(DepartmentName ) values
('CSE' ),
('MPE' );

alter table employees add constraint F1 
foreign key(Department) references Departments(DepartmentName)
-----------------(09)-----------------
select * from Employees
-----------------(10)-----------------
select * from Employees
where salary>27000
-----------------(11)-----------------
update Employees
set Department = 'CSE' 
where Name='omar'
--------------------------------------
