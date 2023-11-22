use apple;
select * from emp;
-- alias as
select salary as emp_sal from emp;
select id as empid,name as empname, salary from emp;
-- agg func
# avg
select avg(salary) from emp;
select avg(salary) as avg_sal from emp;
# max
select max(salary) as max_sal from emp;
# min
select min(salary) as min_sal from emp;
# count
select count(salary) as count_sal from emp;
# sum
select sum(salary) as sum_sal from emp;
--
select
 min(salary) as min_sal,
avg(salary) as avg_sal,
max(salary) as max_sal,
sum(salary) as sum_sal from emp;
--
select * from emp order by salary desc limit 1;
select * from emp where	salary=(select max(salary) from emp);     #nested query
-- emp who have less than avg salary
select * from emp where salary<(select avg(salary) from emp);
-- 10 % increment who have below avg salary
update emp set salary=(salary+salary*10/100) where salary<(select avg(salary) from emp);

-- string function
select upper(name) from emp;
select lower(name) from emp;
select length(name) from emp;
select concat(id,name) from emp;
select concat(id,"_",name) from emp;

--
create table txn(mydate date,mytime time,mydt datetime);
desc txn;
insert into txn values("1995-8-9","10:11:12","2022-7-24 10:11:12");
select* from txn;
insert into txn values("1995-8-15","10:11:12","2022-7-24 10:11:12");
insert into txn values(20121018,101112,20231025114015);
insert into txn values(curdate(),curtime(),now());


