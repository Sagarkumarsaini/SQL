use apple;
select * from	emp;
select emp_id,emp_name,salary from emp;
insert into emp(emp_name,salary) values("sohan",25500);
desc emp;
alter table emp drop primary key;

# using modify for drop auto_increment
ALTER TABLE emp
MODIFY emp_id INT;
desc emp;
alter table emp drop primary key;
desc emp;
insert into emp(emp_name,salary) values("sohan",25500);
select emp_id,emp_name,salary from emp order by salary desc;
select emp_id,emp_name,salary from emp order by salary desc limit 2;
select emp_id,emp_name,salary from emp order by salary desc,emp_name asc;

# how we can add primary key when we create table
# no-1
create table emp2(id int, name varchar(10), age int, salary float, primary key(id));
desc emp2;
# no-2
create table emp3(id int primary key auto_increment, name varchar(10), age int, salary float);
desc emp3;

select * from emp where salary<=10000;
# check constraint
alter table emp add check(salary>=10000);
desc emp;
insert into emp values("sohan",8000,18);
insert into emp values("sohan",80000,18);
select * from emp;

# default constraint
alter table emp alter column salary set default 10000;
insert into emp(emp_name,emp_id) values("ritik",15);
insert into emp(emp_name,emp_id) values("rohit",19);
select * from emp;