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
 
