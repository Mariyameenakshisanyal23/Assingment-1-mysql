CREATE TABLE Worker (
  WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  FIRST_NAME CHAR(25),
  LAST_NAME CHAR(25),
  SALARY INT(15),
  JOINING_DATE DATETIME,
  DEPARTMENT CHAR(25)
);

INSERT INTO Worker
  (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
  (1, 'Monika', 'Arora', 100000, '2020-02-14 09:00:00', 'HR'),
  (2, 'Niharika', 'Verma', 80000, '2011-06-14 09:00:00', 'Admin'),
  (3, 'Vishal', 'Singhal', 300000, '2020-02-14 09:00:00', 'HR'),
  (4, 'Amitabh', 'Singh', 500000, '2020-02-14 09:00:00', 'Admin'),
  (5, 'Vivek', 'Bhati', 500000, '2011-06-14 09:00:00', 'Admin'),
  (6, 'Vipul', 'Diwan', 200000, '2011-06-14 09:00:00', 'Account'),
  (7, 'Satish', 'Kumar', 75000, '2020-01-14 09:00:00', 'Account'),
  (8, 'Geetika', 'Chauhan', 90000, '2011-04-14 09:00:00', 'Admin');
SELECT FIRST_NAME AS WORKER_NAME FROM Worker;
SELECT DISTINCT DEPARTMENT FROM Worker;
SELECT SUBSTRING(FIRST_NAME, 1, 3) FROM Worker;
SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) FROM Worker;
SELECT * FROM Worker ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;
SELECT * FROM Worker WHERE DEPARTMENT = 'Admin';
SELECT * FROM Worker WHERE SALARY BETWEEN 100000 AND 500000;
SELECT FIRST_NAME FROM Worker WHERE SALARY BETWEEN 50000 AND 100000;
SELECT * FROM Worker WHERE MOD(WORKER_ID, 2) = 0;
SELECT * FROM Worker WHERE JOINING_DATE >= '2014-02-01' AND JOINING_DATE < '2014-03-01';


