use apple;
select * from emp;

# auto_increment
create table emp4(eid int primary key auto_increment,ename varchar(10));
desc emp4;
insert into emp4(ename) values("virat");
select * from emp4;
insert into emp4(ename) values("rohan");
insert into emp4 values(4,"virat");
insert into emp4(ename) values("nakul");
select * from emp4;
# set auto_increment
alter table emp4 auto_increment=100;
insert into emp4(ename) values("vinayak");
select * from emp4;

-- add auto_increment in the exiting table
alter table emp change id id int auto_increment primary key;
desc emp;
select * from emp limit 2;
insert into emp(name,salary) values("ajay",15000);
select * from emp;

-- update query
# increment the salary of all employee
update emp set salary=salary+5000;
select * from emp;
# 10% increment the salary of all employee
update emp set salary=salary+(salary*10/100);
update emp set salary=25000 where salary<25000;
select * from emp;
update emp set id=14,name="harshit" where id=15;

# salary between 30k and 60k
select * from emp where salary between 30000 and 60000;
select * from emp where salary>=30000 and salary<=60000;

select * from emp where	name="sohan" or name ="virat";
select * from emp where	name in ("sohan" , "virat");

-- start with a
select * from emp where name like "s%";    -- start with a
select * from emp where name like "%t";   -- end with t
select * from emp where name like "_o%";   -- where 2nd leter is "o"
select * from emp where name like "%a_";    -- where 2nd last leter is "a"
select * from emp where name like "____";    -- where 4 leter in name
select * from emp where name like "%i%";    -- anywhere "i"  in name
select * from emp where name not like "%i%";    -- anywhere not "i"  in name

select * from emp where salary > 25000;
select * from emp where not salary > 30000;
select * from emp where salary = 25000;
select * from emp where not salary = 25000;
select * from emp where  salary <> 25000;
select * from emp where  salary != 25000;



