use bankingdb;
select * from customers;
use bankingdb;

#add a column (Accountcreationdate)
alter table customers add column AccountCreationDate date;
select* from customers;

#2nd table create
use bankingdb;
create table Account(
Accountid int,
Account_type varchar (20),
Balance decimal (10,2)
);

use bankingdb;
# 3rd table create
create table Transactions(
TransactionID int,
Transaction_Date date,
Amount decimal(10,2),
Transaction_type varchar(20)
);

#4th table create
create table Branches(
BranchID int,
Branch_name varchar(100),
Branch_address varchar(200),
Branch_phone varchar(15)
);

#5th table AccountBranches
create table Account_Branches(
Assignment_Date date
);

#6th table create
create table Loans(
Loan_id int,
Loan_Amount decimal(10,2),
Interest_rate decimal(10,2),
Start_date date,
End_date date
);

#1st task add column DOB in customers
alter table customers add Date_Of_Birth date;

#2nd task delete the table ACCOUNT BRANCHES
 drop table Account_branches;
 select * from loans;
 
 
 #add primary key
use bankingdb;
alter table  account modify Accountid int primary key;
alter table branches modify BranchID int primary key;
alter table customers modify Customerid int primary key;
alter table loans modify Loan_id int primary key;
alter table transactions modify TransactionID int primary key;

#insert in the table
insert into customers (Customerid, First_name, last_name, email, phone, AccountCreationDate, Date_Of_Birth) 
values (1,"Shruu","Kumbhare","shruu@gmail",213434456,"2025-07-10","2005-05-17");

select * FROM CUSTOMERS;	
 #update values
set sql_safe_updates=0













