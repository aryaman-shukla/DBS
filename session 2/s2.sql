CREATE TABLE DEPARTMENT_22BAI1362(
	DEPT_NO VARCHAR(20) PRIMARY KEY,
	DEPT_NAME VARCHAR(20) NOT NULL,
	LOCATION VARCHAR(20)
);

CREATE TABLE EMPLOYEE_22BAI1362(
	EMP_NO VARCHAR(20) PRIMARY KEY,
	EMP_NAME VARCHAR(20) NOT NULL,
	DOB DATE,
	ADDRESS VARCHAR(20),
	DOJ DATE,
	MOBILE_NO INT,
	DEPT_NO REFERENCES DEPARTMENT_22BAI1362(DEPT_NO),
	SALARY INT, CHECK(SALARY > 50000)
);

ALTER TABLE EMPLOYEE_22BAI1362 ADD DESIGNATION VARCHAR(20);
ALTER TABLE EMPLOYEE_22BAI1362 ADD CONSTRAINT DESIG_CONST CHECK (DESIGNATION LIKE 'EM%');
ALTER TABLE EMPLOYEE_22BAI1362 DROP COLUMN ADDRESS;

INSERT INTO DEPARTMENT_22BAI1362 VALUES('B001', 'PRODUCER', 'MUMBAI');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B002', 'ACTOR', 'DELHI');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B003', 'DIRECTOR','MOSCOW');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B004', 'HITMAN', 'KOLKATA');
INSERT INTO DEPARTMENT_22BAI1362 VALUES('B005', 'SETMAN', 'BANGKOK');

INSERT INTO EMPLOYEE_22BAI1362 VALUES('D01','JATIN','1/JAN/2001','DELHI','1/JAN/2011',1234567890,'B001',65000,'EM_SENIORMANAGER');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D02','JOHN','2/JAN/2001','KOLKATA','2/JAN/2011',2134567890,'B004',75000,'EM_SENIORASSOCIATE');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D03','LALIT','3/JAN/2001','JAMMU','3/JAN/2011',3214567890,'B003',85000,'EM_PARTNER');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D04','KULJEET','4/JAN/2001','PULWAMA','4/JAN/2011',1324567890,'B002',55000,'EM_CEO');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D05','SAM','5/JAN/2001','JINDH','4/JAN/2011',4123567890,'B005',95000,'EM_CFO');

INSERT INTO DEPARTMENT_22BAI1362 VALUES('B001', 'JEENA', 'MUMBAI');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D01','NIRAJ','9/JAN/2001','DELHI','1/JAN/2011',1234567890,'B002',65000,'EM_SENIORMANAGER');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D09','','1/JAN/2001','DELHI','1/JAN/2011',1234567890,'B003',65000,'EM_SENIORMANAGER');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D10','JATIN','1/JAN/2001','DELHI','1/JAN/2011',9999955555,'B004',25000,'EM_SENIORMANAGER');
INSERT INTO EMPLOYEE_22BAI1362 VALUES('D11','JATIN','1/JAN/2001','DELHI','1/JAN/2011',1234567890,'B006',65000,'EM_SENIORMANAGER');

SELECT * FROM EMPLOYEE_22BAI1362;
SELECT * FROM DEPARTMENT_22BAI1362;

SELECT EMP_NO, EMP_NAME FROM EMPLOYEE_22BAI1362 WHERE DEPT_NO = "D02";
SELECT MOBILE_NO FROM EMPLOYEE_22BAI1362 WHERE EMP_NAME = "JOHN';
	
DELETE FROM EMPLOYEE_22BAI1362 WHERE MOBILE_NO = 9999955555;

UPDATE EMPLOYEE_22BAI1362 SET SALARY = SALARY+(SALARY*0.1);
SELECT EMP_NO, EMP_NAME FROM EMPLOYEE_22BAI1362 WHERE SALARY>60000 AND SALARY<70000;

SELECT EMP_NO,EMP_NAME,DESIGNATION,DEPT_NO, SALARY FROM EMPLOYEE_22BAI1362 ORDER BY SALARY DESC;
SELECT EMP_NO,EMP_NAME,DESIGNATION,DEPT_NO, SALARY FROM EMPLOYEE_22BAI1362 ORDER BY SALARY;



