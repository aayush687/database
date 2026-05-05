//Creating object type

CREATE OR REPLACE TYPE employee_type AS OBJECT (
  emp_id        NUMBER(15),
  emp_name      VARCHAR2(20),
  salary          NUMBER(10)
);
/
SHOW ERRORS



//Creating Object Table
CREATE TABLE employee_table OF employee_type;

//Object type as column definitions
  CREATE TABLE department(
  dept_id      NUMBER(15),
  dept_name    VARCHAR2(20), 
  manager      employee_type
);


//Use in relational table definition
   CREATE TABLE dept_employee(
   employee_id    NUMBER,
   employee_name  VARCHAR2(20),
   emp_ref        REF employee_type SCOPE IS employee_table
);




//Simple varray
CREATE TYPE subject_type AS VARRAY(6) OF VARCHAR2(30);

//Use in table
   CREATE TABLE school_student(
   id         NUMBER(),
   name       VARCHAR2(20),
   subjects   subject_type
);
/




//inserting into object columns
INSERT INTO sites (site_id, address)
VALUES (3, address_type('22 PARK LANE','LONDON','UK'));

INSERT INTO table_name (column_name, object_column_name)
VALUES (value, object_type(values,values);





//inserting into object tables

INSERT INTO table_name (column_name, colume_name, column_name)
VALUES ('VALUE', 'VALUE', 'VALUE');

INSERT INTO addresses(street, city, country)
VALUES ('11 HIGHWAY', 'NORTHAMPTON', 'UK');



//inserting

INSERT INTO students(student_id, address)
SELECT 1235, REF(a)
FROM addresses a
WHERE street = '67 KENSINGTON AVENUE';

OID  |street    |city   | country
4BD67  1 HIGH     LEICE   UK
347B*   67 KEN     COVENT  UK

                    student_id   |address
                      1234         4B34D67
                      1235         347BA8D*
 
INSERT INTO instructors SET address = (
  SELECT REF (a)
  FROM addresses a
  WHERE a.street = '177 AIRPORT ROAD')
  WHERE instructor_id=123;


Inserting with Simple VArrays

INSERT INTO table_name(column_name, column_name)
VALUES (VALUE, 
      varray_type_name('VALUE','VALUE'));




INSERT INTO products(product_id, available_size)
VALUES(100001, size_varray_type('SMALL','MEDIUM','LARGE'));



//inserting with multidimensional varray

INSERT INTO table_name (column_name, column_name)
VALUES (VALUE,
      varray_type_name(
         type_name(VALUE, VALUE,'VALUE'),
         type_name(VALUE, VALUE,'VALUE'),
         type_name(VALUE, VALUE,'VALUE'))
             );

INSERT INTO sites(site_id, classroom)
VALUES (1,
     classroom_varray_type (
        classroom_type('LH401', 50, 'LECTURE ROOM'),
        classroom_type('LH402', 24, 'SEMINAR ROOM')));

 

//NESTED TABLE

INSTERT INTO table_name(column_name, column_name)
VALUES (VALUE,
      table_type_name(
         type_name(VALUE, VALUE, 'VALUE'),
         type_name(VALUE, VALUE, 'VALUE'),
         type_name(VALUE, VALUE, 'VALUE'))
       );







