CREATE DATABASE constraints_demo;
USE constraints_demo;

CREATE TABLE emp_constrains_demo(
 emp_id int identity(101,1) PRIMARY KEY,                     
 empName VARCHAR(20) UNIQUE not null,             /*Used UNIQUE & NOT NULL Constraints*/
 empSalary int not null,                         /*Used NOT NULL Constraints*/
 empAddress VARCHAR(50),                         
 empEducation VARCHAR(30) DEFAULT 'Graduate',     /*Used Default Constraints*/
 depID int 
);

CREATE TABLE Department (
    depID int NOT NULL,
    depName varchar(255) NOT NULL,
    depAddress varchar(255),
    empID int FOREIGN KEY REFERENCES emp_constrains_demo(emp_id)   /*Use FK Constraints**/
);

SELECT * FROM emp_constrains_demo
SELECT * FROM Department;
ALTER TABLE Department ADD CONSTRAINT depID PRIMARY KEY (depID);

INSERT INTO emp_constrains_demo(empName,empSalary,empAddress,depID) VALUES('Ravi', 100000,'Delhi', 1)
INSERT INTO emp_constrains_demo(empName,empSalary,empAddress,depID) VALUES('Mukesh', 70000, 'Noida',2)
INSERT INTO emp_constrains_demo(empName,empSalary,empAddress,empEducation,depID) VALUES ('Nidhi',150000,'Ranchi','MBA',3);
INSERT INTO emp_constrains_demo(empName,empSalary,empAddress) VALUES('Amit', 10000, 'Kolkata')

INSERT INTO Department(depID, depName, depAddress, empID) VALUES (1, 'JAVA', 'Delhi',102)
INSERT INTO Department(depID, depName, depAddress, empID) VALUES (2, 'PYTHON', 'Bangalore', 101)
INSERT INTO Department(depID, depName, depAddress, empID) VALUES (3, 'Devops', 'HYD', 101);
INSERT INTO Department(depID, depName, depAddress, empID) VALUES (4, 'HR', 'Chennai', 105)


---------LIKES -------------
/*Q. Find student whose name is starts from A and R?*/
SELECT * FROM emp_constrains_demo WHERE empName LIKE '[AR]%' ORDER BY empName;

/*Q. Find student who have last letter as 'i' ?*/
SELECT * FROM emp_constrains_demo WHERE empName LIKE '%i' ORDER BY emp_id;




