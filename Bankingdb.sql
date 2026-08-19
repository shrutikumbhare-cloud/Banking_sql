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
set sql_safe_updates=0;

use bankingdb;
insert into customers (Customerid, First_name, last_name, email, phone, AccountCreationDate, Date_Of_Birth) 
values  (2,"Tiya","Binekar","tiya@gmail",4565687,"2025-07-12","2007-10-18"),(3,"Himani","Kamtkar","hima@gmail",4667667,"2025-07-12","2003-08-23");


alter table account add customerid int unique not null;
select * from account;

insert into account values
(101,"Saving",25000,1);

select * from customers;
update customers set phone =4676656 where customerid = (1);

delete from customers where customerid = 2;

use bankingdb;
select * from customers;

select First_name, last_name, email, phone from customers;

select * from account;
insert into account 
values (102,"Current",20000,2),
(103,"Saving",30000,3),
(104,"Current",15000,4),
(105,"saving",200000,5);

select * from account
where account_type = "saving";

select * from account
where balance >= 20000;

select * from account
where  balance between 25000 and 150000; 

select * from transactions;

select * from customers
where customerid in (1,3,6);

select * from customers
where first_name  like "__r%";

select * from customers
where first_name  like "%n_";

select * from customers
order by First_name;

select * from account
order by balance desc;

select distinct account_type from account;

select * from account
order by balance desc	limit 3;

select * from account
order by balance desc	limit 3 offset 2;

use bankingdb;
select * from customers
where first_name  like "s%";

select * from customers
where email like "%gmail%";

select * from customers
where last_name like "%kar";

select * from account
where account_type in ("saving","current");

select * from customers 
where customerid in (1,3);

select * from customers
order by last_name ;

select * from account
order by balance desc
limit 2;

select * from account 
where account_type = "saving"
order by balance desc;

use bankingdb;
# concat 
select*,concat(first_name," ",last_name," ",phone) from customers;

#concat_ws
select *, concat_ws("  ",first_name,last_name,phone) from customers;

#trim,length,upper,lower,mod
#left,right,mid  

#replace
select * ,replace(first_name,"shruu","shruti") from customers;

#ceil,floor,abs

use bankingdb;
select * from customers;

#date-current_date, date_time-now, date_format
select*, monthname(date_of_birth) from customers;
select*, dayname(date_of_birth) from customers;
select*, left(monthname(date_of_birth),3) from customers;
select*, date_format(date_of_birth,"%d/%m/%y") from customers;
select*, date_format(date_of_birth,"%D-%M-%Y") from customers;

#DATEDIFFERENCE between the two dates
select *, datediff(Accountcreationdate,date_of_birth) from customers;

#date_add with interval 
select*, date_add(date_of_birth, interval 5 day ) from customers;
select*, date_sub(date_of_birth, interval 5 day ) from customers;

select * from customers;
select *, upper(first_name) from customers;
select *, lower(first_name)as lower from customers;
select *, length(last_name)as words from customers;
select *, left(first_name,3) from customers;
select *, concat(first_name,"  ",last_name) as name from customers;

select * from account;
select * from transactions;
select round(1224.34) as value;
select ceil(69.25) as ceiling_value;
select floor(69.25) as ceiling_value;
select * from customers;
select curdate();
select now();
select *, year(date_of_birth) from customers;
select *, month(date_of_birth), day(date_of_birth) from customers;
select *, datediff(curdate(),date_of_birth) from customers;

select * from account;
select sum(balance) from account;
select avg(balance) from account;
select max(balance), min(balance) from account;
select count( * ) from account;
select account_type,sum(balance) from account
group by account_type;
select account_type, sum(balance) from account
group by account_type
having sum(balance) > 30000;





















