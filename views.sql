use cast_and_convert;

CREATE TABLE EmpLikes_demo (
 emp_id int identity(101,1) PRIMARY KEY,                     
 empName VARCHAR(20) UNIQUE not null,             /*Used UNIQUE & NOT NULL Constraints*/
 empSalary int not null,                         /*Used NOT NULL Constraints*/
 empAddress VARCHAR(50),                         
 empEducation VARCHAR(30) DEFAULT 'Graduate',     /*Used Default Constraints*/
 depID int FOREIGN KEY REFERENCES Department(depID)
);

CREATE TABLE Department (
    depID int PRIMARY KEY NOT NULL,
    depName varchar(255) NOT NULL,
    depAddress varchar(255)   
);
drop table Department
drop table EmpLikes_demo
INSERT INTO EmpLikes_demo(empName,empSalary,empAddress,depID) VALUES
	('Ravi', 100000,'Delhi', 2 ),
	('Mukesh', 70000, 'Noida', 3),	
	('Amit', 10000, 'Kolkata',2);

INSERT INTO Department(depID, depName, depAddress) VALUES 
(1, 'JAVA', 'Delhi'),
 (2, 'PYTHON', 'Bangalore'),
(3, 'Devops', 'HYD'),
 (4, 'HR', 'Chennai');
 INSERT INTO EmpLikes_demo(empName,empSalary,empAddress,empEducation,depID) VALUES ('Nidhi',150000,'Ranchi','MBA',4);

 SELECT * FROM EmpLikes_demo;
  SELECT * FROM Department;
  -----------------------------Views ---------------
  --Q. View Employee who have Salary less than Rs.1 Lakh------
CREATE VIEW DetailsView AS SELECT * FROM EmpLikes_demo WHERE empSalary<100000;
SELECT * FROM DetailsView;

--Employee Working in some department----
CREATE VIEW DepartmentalEmployee AS SELECT empName,depName FROM EmpLikes_demo, Department WHERE EmpLikes_demo.depID = Department.depID;
SELECT * FROM DepartmentalEmployee;