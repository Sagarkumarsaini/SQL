use apple;
select *from emp;
select * from emp where salary>=50000;
-- create a new table 
create table emp10(id int, ename varchar(10),salary int);
insert into emp10 select * from emp;
select * from emp10;
--
select * from emp;
select * from abc;
-- insert recoad in emp table from abc table
insert into emp select * from abc;

select * from emp;
select * from emp where salary>=50000;
-- create table using exiting table 
create table emp12 as select * from emp10;
select * from emp12;
desc emp;
--
create table emp13(eid int primary key auto_increment,ename varchar(10),salary float);
insert into emp13 select * from emp where salary>=50000;
select * from emp13;
desc emp13;
select * from emp;

start transaction;
savepoint s1;
--- query
delete from emp where salary>80000;
savepoint s2;
-- query-> extend the salary 10000
update emp set salary=salary+10000;
select * from emp;
rollback to savepoint s2;
select * from emp;
rollback to savepoint s1;
select * from emp;
commit;

-- compositive key---> 2 primary in in one table
create table tmp(a int,b int, c int,primary key(a,c));
desc tmp;
--
create table event(rollno int,name varchar(10),activity varchar(10));
insert into event values(1,'a',"dance");
insert into event values(2,'a',"mimicry");
insert into event values(3,'b',"mimicry");
insert into event values(1,'b',"dance");
delete from event where rollno=1 and name ="b";
alter table event add primary key(rollno,activity);
desc event;
select * from event;
--
create table event2(roll int,name varchar(10),activity varchar(10),primary key(roll,activity));
desc event2;
insert into event2 values(1,'a','dance');
insert into event2 values(1,'a','mimicry');
insert into event2 values(3,'b','mimicry');
insert into event2 values(1,'b','dance');
select * from event2;
--
 select * from emp;
 desc emp;
 -- foreign key
 create table emp_details(eid int,mob varchar(10),email varchar(10),foreign key(eid) references emp(id));
insert into emp_details values(120,'123','a@a.com');
insert into emp_details values(202,'133','b@b.com');

use apple;
-- add columns
alter table emp add  dept  varchar(10);
select * from emp;
update emp set dept="accounts" where id between 1 and 10;
update emp set dept="library" where id between 12 and 20;
update emp set dept="coding" where id between 101 and 110;
update emp set dept="testing" where id between 112 and 201;

-- sum of salary
select  sum(salary) from emp;
 -- 
 -- group by
 select count(dept) from emp group by dept;
select dept,count(dept) from emp group by dept;
select dept, count(dept),sum(salary) from emp group by dept;
select dept, count(dept),sum(salary),avg(salary) from emp group by dept;
-- filter using group by
select dept,sum(salary) as sum_sal from emp group by dept having sum_sal>360000;
--
select * from emp;
select dept,sum(salary),count(dept) from emp where salary>=50000 group by dept having sum(salary)>100000;