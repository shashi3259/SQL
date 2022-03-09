/* DDL Queries*/

CREATE DATABASE UC1_DDL

create table student(
 stu_id int primary key,
 stu_name VARCHAR(30),
 stu_age int,
 stu_address VARCHAR(50)
);

DROP TABLE student

/* DML Queries*/
INSERT INTO student(stu_id, stu_name, stu_age,stu_address) VALUES (1, 'Ravi', 25, 'Delhi')
INSERT INTO student(stu_id, stu_name, stu_age,stu_address) VALUES (2, 'Abhay', 25, 'Mumbai')
INSERT INTO student(stu_id, stu_name, stu_age,stu_address) VALUES (3, 'Umesh', 25, 'kolkata')
INSERT INTO student(stu_id, stu_name, stu_age,stu_address) VALUES (4, 'Shiva', 25, 'chennai')

UPDATE student SET stu_age=17 where stu_name='Abhay'
UPDATE student SET stu_age=22 where stu_name='Umesh'
UPDATE student SET stu_age=27 where stu_name='Shiva'

DELETE FROM student WHERE stu_id = 4;

SELECT * FROM student;
