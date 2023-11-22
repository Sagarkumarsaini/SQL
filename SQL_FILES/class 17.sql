use apple;
create table e30(eid int,en varchar(10),es float);
create table e31(eid int,en varchar(10),es float,ed varchar(10),tmp int);
-- when file have moore col(4) and table have less(3) col
load data infile "E:/e drive data/SQL/DATA.MYSQL/emp_recoad.txt" into table e30
fields terminated by "," (@c1,@c2,@c3,@c4) set eid=@c1,en=@c2,es=@c3;
select * from e30;

-- when file have less col(4) and table have moore(5) col
load data infile "E:/e drive data/SQL/DATA.MYSQL/emp_recoad.txt" into table e31
fields terminated by "," (eid,en,es,ed);
select * from e31;
-- 
delimiter $
select * from e31$
desc emp$
--
DELIMITER //
create function f1() returns varchar(20) deterministic
begin
return "hello India";
end
//
DELIMITER ;
select f1();
--
DELIMITER //
create function f2() returns int deterministic
begin
return 3+4;
end
//
select f2() as sum ;
--
DELIMITER //
create function f3(x int,y int) returns int deterministic
begin
return x+y;
end
//
select f3(10,15) as sum;
--
select * from emp//
--
create function f4() returns int deterministic
begin
declare sal float;
select salary into sal from emp where id=5;
return sal;
end
//
select f4();
--
select * from emp//
use apple//
desc emp//
delimiter ;
show tables;
desc emp;
-- Procedure
delimiter $
create procedure p1()
begin
select salary from emp where id=5;
end
$
call p1()$
select * from emp$
create procedure p4()
begin
select * from emp;
end
$
call p4()$
-- with parameter values
-- use in
create procedure p5(in sal float)
begin
select * from emp where salary>=sal;
end
$
call p5(50000)$
call p5(80000)$
-- use in and out
select * from emp$
create procedure p7(in eid int,out en varchar(10))
begin
select name into en from emp where id=eid;
end
$
call p7(150,@ename)$
select @ename$
--
create procedure p9(inout idsal int)
begin
select salary into idsal from emp where id=idsal;
end
$
set @idsal=101$
call p9(@idsal)$
select @idsal $