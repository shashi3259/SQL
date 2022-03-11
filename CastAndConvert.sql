CREATE DATABASE cast_and_convert;
USE cast_and_convert;

SELECT '08/02/2022'  AS 'THE DATE'

SELECT CAST('08/02/2022' AS datetime) AS 'THE DATE'

SELECT CAST(CAST('04/08/2022 ' AS datetime) AS char(15)) AS 'THE DATE'

SELECT CAST('5536.8556' AS DECIMAL(10,2)) AS 'THE DATE'

--Calculate the no. of days-----
SELECT CAST(CAST('02/20/2022' AS DATETIME) - 
CAST('02/12/2022' AS DATETIME) AS INT) AS ' Total No. of Days';

CREATE TABLE convert_cast(
 emp_id int identity(101,1),
 empName VARCHAR(20) not null,
 empSalary int not null,
 empDOB DATE not null,
 empEducation VARCHAR(30) DEFAULT 'B.Tech',
 empAddress VARCHAR(50)
);
drop table convert_cast
select * from convert_cast

INSERT INTO convert_cast(empName,empSalary,empDOB,empAddress) VALUES('Ravi',100000,'07/17/1998','Delhi');
INSERT INTO convert_cast(empName,empSalary,empDOB,empAddress) VALUES('Mukesh', 70000,'01/15/1995', 'Noida');
INSERT INTO convert_cast(empName,empSalary,empDOB,empAddress) VALUES('Gaurav',50000,'03/3/1997','Delhi');
INSERT INTO convert_cast(empName,empSalary,empDOB,empAddress) VALUES('Amit',60000,'12/06/1994','Ranchi');
INSERT INTO convert_cast(empName,empSalary,empDOB,empAddress) VALUES('Neeraj',120000,'08/20/1990','Jamshedpur');
INSERT INTO convert_cast(empName,empSalary,empDOB,empAddress,empEducation) VALUES('Nidhi',150000,'05/15/1992','Ranchi','HR');

UPDATE convert_cast SET empDOB='02/23/2022' WHERE emp_id = 101
/* Q. Different Formats of DD_MM_YYYY
1. 100 -> Gives Mon DD YYY 
2. 101 -> US format mm/dd/yyyy
3. 102 -> yyyy.mm.dd
4. 103 -> dd/mm/yyyy 
5. 104 -> dd.mm.yyyy
6. 105 -> dd-mm-yyy
7. 106 -> dd mon yyyy
*/
SELECT empName, CONVERT(VARCHAR, empDOB, 106) AS "Employee D.O.B"
FROM convert_cast;