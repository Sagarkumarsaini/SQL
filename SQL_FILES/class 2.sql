drop database emp;
use apple;
create table emp(id int, name varchar(10), salary float);
desc emp;
select * from emp;
insert into emp	values(2,"nishant",15000),
						(3,"vaibhav",18000),
                        (4,"vishul",10000),
                        (5,"naveen",20000),
                        (6,"chirag",25000),
                        (7,"nikul",40000),
                        (10,"virat",60000);
select * from emp;
select * from emp where salary>=20000;
# 18 to 25 salary 
#select * from emp where salary between 18000 and 25000;
select * from emp where salary>=18000 and salary<=25000;
desc emp;
alter table emp add primary key(id);
insert into emp	values(6,"mohan",26000);
insert into emp	values(8,"mohan",26000);
select * from emp;
alter table emp drop primary key;
desc emp;
insert into emp	values(6,"sohan",29000);
select * from emp;
alter table emp add	primary key(id);
delete from emp where id=6 and name="sohan";
insert into emp(name,salary) values("ronak",22000);
desc emp;
alter table emp add	primary key(id);
desc emp;
insert into emp(name,salary) values("ronak",22000);
alter table emp drop primary key;
desc emp;
select * from emp;
insert into emp(id,name,salary) values(11,"rahul",35000);
insert into emp(id,salary) values(12,35000);
select * from emp;
alter table emp change column  name emp_name varchar(10);
select * from emp;
#insert into emp(emp_name,salary) values("niraj",37000);

alter table emp add emp_id int auto_increment primary key;
desc emp;
alter table emp drop column emp_id;
select * from emp;
alter table emp add emp_id int auto_increment primary key;
alter table emp drop column id;
select * from emp;
desc emp;
insert into emp(emp_name,salary) values("aryan",20000);
delete from emp where emp_name is null;
select * from emp;