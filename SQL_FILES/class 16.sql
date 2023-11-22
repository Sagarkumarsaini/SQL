use apple;
show tables;
select * from emp;
create table clg(roll int,name varchar(10),branch varchar(10));
create table hostel(rollno int,room_no int,rtype varchar(10));
insert into clg values(1,'a','cs'),
						(2,'b','ec'),
						(3,'c','cs');
--
insert into hostel values(1,150,'single'),
							(2,251,'double'),
                            (5,170,'single');
--
select * from clg;
select * from hostel;
-- inner join
select * from clg inner join hostel on clg.roll=hostel.rollno;
select clg.roll,clg.name,clg.branch,hostel.room_no,hostel.rtype 
from clg inner join hostel 
on clg.roll=hostel.rollno;

-- using alias
select c.roll,c.name,c.branch,h.room_no,h.rtype
from clg as c inner join hostel as h
on c.roll=h.rollno;

select * from clg join hostel
on clg.roll=hostel.rollno;

select * from clg join hostel;

-- left join
select * from clg left join hostel on clg.roll=hostel.rollno;

-- right join
select * from clg right join hostel on clg.roll=hostel.rollno;

-- full join --> left join + union + right join
select * from clg left join hostel on clg.roll=hostel.rollno
union
select * from clg right join hostel on clg.roll=hostel.rollno;

-- how to save data
select * from emp into outfile "E:/e drive data/SQL/DATA.MYSQL/emp_recoad.txt"
fields terminated by "," lines terminated by "\n";

-- how to load data
create table emp20(id int,en varchar(10),sal float,dept varchar(10));
-- load data
load data infile "E:/e drive data/SQL/DATA.MYSQL/emp_recoad.txt"
into table emp20
fields terminated by ",";
--
select * from emp20;