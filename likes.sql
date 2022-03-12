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

/* SUB QURIES-> Find Employee Details who have Highest Salary*/
SELECT * FROM emp_constrains_demo where empSalary=(SELECT MAX(empSalary) FROM emp_constrains_demo)

/* Q. Select Employee Name who is working in some department*/
SELECT * FROM emp_constrains_demo,Department WHERE emp_constrains_demo.depID = Department.depID;

/* Q. Select Employee Name who is working in some department Order by Employee Salary   */
SELECT empName,empSalary FROM emp_constrains_demo,Department WHERE emp_constrains_demo.depID = Department.depID ORDER BY emp_constrains_demo.empSalary;

/* CROSS JOIN*/
SELECT * FROM emp_constrains_demo cross join Department;

/*LEFT JOIN  and  RIGHT JOIN*/
SELECT * FROM emp_constrains_demo LEFT JOIN Department ON emp_constrains_demo.depID = Department.depID;
SELECT * FROM emp_constrains_demo RIGHT JOIN Department ON emp_constrains_demo.depID = Department.depID;

/*FULL JOIN*/
SELECT * FROM emp_constrains_demo FULL JOIN Department ON emp_constrains_demo.emp_id = Department.empID;

/*SELF JOIN-> Q. Find Employee Name who is working in atlest two department*/
select * from Department
select * from emp_constrains_demo
SELECT * FROM Department a, Department b
SELECT empName FROM emp_constrains_demo WHERE emp_id=(SELECT DISTINCT(a.empID) FROM Department a, Department b WHERE a.empID = b.empID AND a.depID<>b.depID);



/*                                 LIKES              */
/*Q. Find student whose name is starts from A and R?*/
SELECT * FROM emp_constrains_demo WHERE empName LIKE '[AR]%' ORDER BY empName;

/*Q. Find student who have last letter as 'i' ?*/
SELECT * FROM emp_constrains_demo WHERE empName LIKE '%i' ORDER BY emp_id;

/*Cast*/



