CREATE DATABASE Multiple_Joins;

create table students(
id int, 
name varchar(50),
branch varchar(50)
);
insert into students values(1,'anurag','cse');
insert into students values(2,'harsh','ece');
insert into students values(3,'sumit','ece');
insert into students values(4,'kae','cse');

create table marks(id int
, marks int
);
insert into marks values(1,95);
insert into marks values(2,85);
insert into marks values(3,80);
insert into marks values(4,65);

create table attendance(
id int, 
attendance int);

insert into attendance values(1,75);
insert into attendance values(2,65);
insert into attendance values(3,80);
insert into attendance values(4,80);

select * from students;
select * from marks;
select * from attendance;

select s.id, name, marks, attendance
from students as s
inner join
marks as m
on s.id=m.id
inner join
attendance as a
on m.id=a.id
where a.attendance>=75;