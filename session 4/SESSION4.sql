CREATE TABLE DEPARTMENT_22BAI1362(
	DEPT_NO VARCHAR(20) PRIMARY KEY,
	DEPT_NAME VARCHAR(20),
	LOCATION VARCHAR(20)
);

CREATE TABLE EMPLOYEE_22BAI1362(
	EMP_NO VARCHAR(20) PRIMARY KEY,
	EMP_NAME VARCHAR(20) NOT NULL,
	DOB DATE,
	ADDRESS VARCHAR(20),
	DOJ DATE,
	MOBILE_NO INT,
	DEPT_NO VARCHAR(20),
	FOREIGN KEY(DEPT_NO) REFERENCES DEPARTMENT_22BAI1362(DEPT_NO),
	SALARY INT
);
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B001', 'RESEARCH', 'MUMBAI');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B002', 'ACTOR', 'DELHI');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B003', 'DIRECTOR','MOSCOW');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B004', 'HITMAN', 'KOLKATA');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B005', 'SETMAN', 'BANGKOK');

ALTER TABLE EMPLOYEE_22BAI1362 ADD DESIGNATION VARCHAR(20);

INSERT INTO EMPLOYEE_22BAI1362 VALUES('D01','RAM','2001-01-01','DELHI','2011-01-11',1234567890,'B001',65000,'SENIORMANAGER');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D02','ABI','2001-01-02','KOLKATA','2011-01-12',2134567890,'B001',75000,'SENIORASSOCIATE');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D03','REENA','2001-01-03','JAMMU','2011-01-13',1214567890,'B003',85000,'TYPIST');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D04','KULJEET','2001-01-04','PULWAMA','2011-01-14',1324567890,'B002',55000,'CFO');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D05','JOHN','2001-01-05','JINDH','2001-01-15',1123567890,'B005',95000,'CFO');

SELECT EMP_NAME FROM EMPLOYEE_22BAI1362 WHERE DEPT_NO = (SELECT DEPT_NO FROM EMPLOYEE_22BAI1362 WHERE EMP_NAME = 'ABI');

SELECT EMP_NAME FROM EMPLOYEE_22BAI1362 WHERE SALARY > (SELECT SALARY FROM EMPLOYEE_22BAI1362 WHERE EMP_NO = 'D01');

SELECT EMP_NAME FROM EMPLOYEE_22BAI1362 WHERE SALARY >= (SELECT AVG(SALARY) AS AVGSALARY FROM EMPLOYEE_22BAI1362 WHERE DEPT_NO ='B001');

SELECT EMP_NAME FROM EMPLOYEE_22BAI1362 WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEE_22BAI1362);

SELECT EMP_NAME,SALARY FROM EMPLOYEE_22BAI1362 WHERE SALARY BETWEEN (SELECT SALARY FROM EMPLOYEE_22BAI1362 WHERE EMP_NAME = 'RAM') AND (SELECT SALARY FROM EMPLOYEE_22BAI1362 WHERE EMP_NAME = 'JOHN');

UPDATE EMPLOYEE_22BAI1362 SET SALARY = SALARY+(SALARY*0.25) WHERE DEPT_NO = (SELECT DEPT_NO FROM EMPLOYEE_22BAI1362 WHERE SALARY =(SELECT MIN(SALARY) FROM EMPLOYEE_22BAI1362));

SELECT DEPT_NO FROM EMPLOYEE_22BAI1362 WHERE DEPT_NO = (SELECT DEPT_NO FROM EMPLOYEE_22BAI1362 WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE_22BAI1362));

SELECT * FROM EMPLOYEE_22BAI1362 WHERE SALARY>(SELECT SALARY FROM EMPLOYEE_22BAI1362 WHERE EMP_NAME = 'REENA') AND DEPT_NO = (SELECT DEPT_NO FROM EMPLOYEE_22BAI1362 WHERE EMP_NAME = 'JOHN');

SELECT EMP_NAME FROM EMPLOYEE_22BAI1362 WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEE_22BAI1362 WHERE DEPT_NO = 'B002');

SELECT COUNT(*) FROM EMPLOYEE_22BAI1362 WHERE DEPT_NO = (SELECT DEPT_NO FROM EMPLOYEE_22BAI1362 WHERE EMP_NAME = 'JOHN');


 



