USE cast_and_convert;

CREATE TABLE Student (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT

);
INSERT INTO Student(sno, sname,age) 
 VALUES (1,'Ankit',17),
       (2,'Ramya',18),
       (3,'Ram',16);



CREATE TABLE Course (
    cno INT PRIMARY KEY,
    cname VARCHAR(20)
);

INSERT INTO Course(cno, cname) 
 VALUES(101,'Java'),
       (102,'Python'),
       (103,'DBMS');



CREATE TABLE Enroll (
    sno INT FOREIGN KEY REFERENCES Student(sno) ON DELETE CASCADE,
    cno INT  FOREIGN KEY(cno) REFERENCES Course(cno) ON DELETE CASCADE,
    jdate date,
    PRIMARY KEY(sno,cno)
);
DROP TABLE Enroll

INSERT INTO Enroll(sno,cno,jdate) 
 VALUES(1, 101, '5-jun-2021'),
       (1, 102, '5-jun-2021'),
       (2, 103, '6-jun-2021');

SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Enroll;

DROP TABLE Student;
DROP TABLE Course;
DROP TABLE Enroll;

DELETE FROM Student WHERE sname='Ramya';

-------------------------------------ON UPDATE CASCADE----------------------------------------
CREATE TABLE Student (
    sno INT PRIMARY KEY,
    sname VARCHAR(20),
    age INT
);
INSERT INTO Student(sno, sname,age) 
 VALUES (1,'Ankit',17),
       (2,'Ramya',18),
       (3,'Ram',16);



CREATE TABLE Course (
    cno INT PRIMARY KEY,
    cname VARCHAR(20)
);

INSERT INTO Course(cno, cname) 
 VALUES(101,'Java'),
       (102,'Python'),
       (103,'DBMS');



CREATE TABLE Enroll (
    sno INT FOREIGN KEY REFERENCES Student(sno) ON UPDATE CASCADE,
    cno INT  FOREIGN KEY(cno) REFERENCES Course(cno) ON UPDATE CASCADE,
    jdate date,
    PRIMARY KEY(sno,cno)
);

INSERT INTO Enroll(sno,cno,jdate) 
 VALUES(1, 101, '5-jun-2021'),
       (1, 102, '5-jun-2021'),
       (2, 103, '6-jun-2021');

SELECT * FROM Student;
SELECT * FROM Course;
SELECT * FROM Enroll;

UPDATE Student SET sno=111 where sno=1;

DELETE FROM Student WHERE sname='Ramya';