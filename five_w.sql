//Creating object type

CREATE OR REPLACE TYPE course_type AS OBJECT (
  course_id      NUMBER(15),
  course_name    VARCHAR2(50),
  credits        NUMBER(15)
);
/
SHOW ERRORS

//Creating Object Table
CREATE TABLE course_table OF course_type;

//Object type as colum definitions
CREATE TABLE university_student(
  id       NUMBER(15),
  name     VARCHAR2(20),
  course   course_type
);

//Use in relational table definition
CREATE TABLE student(
   student_id   NUMBER,
   student_name         VARCHAR2(20),
   course REF course_type SCOPE IS course_table
);
//Simple varray
CREATE TYPE marks_type AS VARRAY(10) OF NUMBER;

//Use in table
CREATE TABLE student(
   id     NUMBER(15),
   name   VARCHAR2(20),
   marks  marks_type
);
/
//Use a simple datatype in the definition
CREATE TYPE varray_type_name AS
VARRAY(SIZE) OF datatype;

//Multidimensional varray
Step 1: Create the type
CREATE TYPE object_type_name AS OBJECT (
attribute_name      DATATYPE(SIZE),
attribute_name      DATATYPE(SIZE),
attribute_name      DATATYPE(SIZE));
/

Step 2:Use the type definition to create the array
CREATE TYPE varray_type_name AS
VARRAY(size) OF object_type_name;
/
//Steps to create object columns and tables

Step 1: Create Type

CREATE OR REPLACE TYPE address_type AS OBJECT (
street         VARCHAR2(25),
city           VARCHAR2(25),
country        VARCHAR2(50));
/
SHOW ERRORS


Step 2: Use as an Object Table Definition

CREATE TABLE addresses OF address_type;


Step 3: Use in Relational Table Definition

CREATE TABLE instructors(
instructor_id  NUMBER(6),
address REF address_type SCOPE IS addresses);

ALTER TABLE instructors
ADD (address REF address_type SCOPE IS addresses);
//Steps to create object columns and tables

Step 1: Create Type
CREATE OR REPLACE TYPE address_type AS OBJECT (
street         VARCHAR2(25),
city           VARCHAR2(25),
country        VARCHAR2(50));
/
SHOW ERRORS


CREATE TABLE sites(
site_id          NUMBER(6),
address          address_type
);


CREATE OR REPLACE TYPE company_type AS OBJECT (
company_name         VARCHAR2(25),
address              address_type
);

Step 2: Use as an Object Table Definition
CREATE TABLE addresses OF address_type;