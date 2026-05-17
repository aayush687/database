//OBJECT TABLE
CREATE OR REPLACE TYPE student_obj AS 
OBJECT (
    student_id NUMBER,
    name VARCHAR2(50),
    age NUMBER
);
/
CREATE TABLE student_table OF student_obj;

INSERT INTO student_table VALUES (1, 'Asha', 20);
INSERT INTO student_table VALUES (2, 'Ram', 22);
INSERT INTO student_table VALUES (3, 'Sita', 21);

//5 SELECT Statements
SELECT * FROM student_table;

SELECT name FROM student_table;

SELECT student_id, age FROM student_table;

SELECT * FROM student_table WHERE age > 20;

SELECT COUNT(*) FROM student_table;


//RELATIONAL TABLE
CREATE TABLE employee (
    emp_id NUMBER,
    emp_name VARCHAR2(50),
    salary NUMBER
);

INSERT INTO employee VALUES (101, 'John', 50000);
INSERT INTO employee VALUES (102, 'Mary', 60000);
INSERT INTO employee VALUES (103, 'Alex', 55000);

//5 SELECT Statements
SELECT * FROM employee;

SELECT emp_name FROM employee;

SELECT emp_id, salary FROM employee;

SELECT * FROM employee WHERE salary > 55000;

SELECT AVG(salary) FROM employee;



//VARRAY
CREATE OR REPLACE TYPE phone_varray AS VARRAY(3) OF VARCHAR2(15);
/
CREATE TABLE person (
    person_id NUMBER,
    name VARCHAR2(50),
    phones phone_varray
);

INSERT INTO person VALUES (1, 'Sita', phone_varray('9800000001','9800000002'));
INSERT INTO person VALUES (2, 'Hari', phone_varray('9811111111'));
INSERT INTO person VALUES (3, 'Nita', phone_varray('9822222222','9823333333'));

//5 SELECT Statements
SELECT * FROM person;

SELECT name FROM person;

SELECT phones FROM person;

SELECT p.name, p.phones FROM person p;

SELECT COUNT(phones) FROM person;





//OBJECT COLUMN
CREATE OR REPLACE TYPE address_obj AS OBJECT (
    city VARCHAR2(50),
    country VARCHAR2(50)
);
/
CREATE TABLE customer (
    cust_id NUMBER,
    cust_name VARCHAR2(50),
    address address_obj
);

INSERT INTO customer VALUES (1, 'Asha', address_obj('Kathmandu','Nepal'));
INSERT INTO customer VALUES (2, 'Ram', address_obj('Pokhara','Nepal'));
INSERT INTO customer VALUES (3, 'Sita', address_obj('Lalitpur','Nepal'));


//5 SELECT Statements
SELECT * FROM customer;

SELECT cust_name FROM customer;

SELECT address FROM customer;

SELECT c.address.city FROM customer c;

SELECT * FROM customer WHERE address.country = 'Nepal';





//NESTED 
CREATE OR REPLACE TYPE course_nt AS TABLE OF VARCHAR2(50);
/
CREATE TABLE student_courses (
    student_id NUMBER,
    name VARCHAR2(50),
    courses course_nt
) NESTED TABLE courses STORE AS course_store;

INSERT INTO student_courses VALUES (1, 'Asha', course_nt('Math','Science'));
INSERT INTO student_courses VALUES (2, 'Ram', course_nt('English','History'));
INSERT INTO student_courses VALUES (3, 'Sita', course_nt('CS','Database'));


//5 SELECT Statements
SELECT * FROM student_courses;

SELECT name FROM student_courses;

SELECT courses FROM student_courses;

SELECT s.name, c.COLUMN_VALUE
FROM student_courses s, TABLE(s.courses) c;

SELECT COUNT(*) FROM student_courses;