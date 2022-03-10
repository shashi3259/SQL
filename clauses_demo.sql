Create Database Clauses;
use Clauses;

CREATE TABLE clauses_demo(
 emp_id int identity(101,1),
 empName VARCHAR(20) not null,
 empSalary int not null,
 empAddress VARCHAR(50)
);
/*ALTER TABLE table_name ADD column_name datatype;*/
ALTER TABLE clauses_demo ADD empDep VARCHAR(30);
DELETE FROM clauses_demo WHERE emp_id=102;
UPDATE clauses_demo SET empDep = 'Data Scientist' WHERE emp_id=101;
UPDATE clauses_demo SET empName = 'Nidhi' WHERE emp_id=108;


/*Adding Constraints -> Default Unique*/
ALTER TABLE clauses_demo ADD empEducation VARCHAR(30) DEFAULT 'B.Tech';
ALTER TABLE clauses_demo ALTER COLUMN empEducation VARCHAR(30) DEFAULT Graduation;
ALTER TABLE clauses_demo ADD CONSTRAINT Df_Education DEFAULT 'B.Tech' FOR empEducation;


INSERT INTO clauses_demo VALUES('Ravi',100000,'Delhi');
INSERT INTO clauses_demo VALUES('Mukesh', 70000, 'Noida', 'Business Analyst');
INSERT INTO clauses_demo VALUES('Gaurav',50000,'Delhi','Java Developer');
INSERT INTO clauses_demo VALUES('Amit',60000,'Ranchi','Python Developer');
INSERT INTO clauses_demo VALUES('Neeraj',120000,'Jamshedpur','Marketing');
INSERT INTO clauses_demo VALUES('Ravi',150000,'Ranchi','HR');

/*Clause 1: */
SELECT * FROM clauses_demo
/*Clause 2: */
SELECT * FROM clauses_demo WHERE empAddress='Ranchi';
SELECT * FROM clauses_demo WHERE empDep='Business Analyst';
/*Clause 3: */
SELECT * FROM clauses_demo WHERE empSalary>100000;
SELECT * FROM clauses_demo WHERE empSalary<=100000;
/*Clause 4: GROUP BY */
SELECT empAddress, COUNT(*) AS No_of_Persons FROM clauses_demo GROUP BY empAddress;
/*Clause 5: GROUP BY with HAVING */
SELECT empSalary, COUNT(*) AS No_of_Persons FROM clauses_demo GROUP BY empSalary HAVING empSalary>70000;
