Task:1
//Creating an object type
CREATE OR REPLACE TYPE invoice_address_type AS OBJECT(
  street        VARCHAR2(25),
  city          VARCHAR2(25),
  country       VARCHAR2(25)
);
/

//Creating an relational table with object column
CREATE TABLE customers (
  customer_id      NUMBER(6),
  customer_name    VARCHAR2(25),
  invoice_address  invoice_address_type
);


DESC customers;   //To view the structure

Task 2:
//Creating an object table
CREATE TABLE bill_addresses OF invoice_address_type;

-In the box below make a note of the object type name and object table name.
Use this as a reference throughout the activities.

	object type name	invoice_address_type
	object table name	bill_addresses


DESC bill_addresses;//To view the structure of an object table

Task 3:
DROP TABLE customers;

CREATE TABLE customers (
    customer_id     NUMBER(6),
    customer_name   VARCHAR2(25),
    invoice_address REF invoice_address_type SCOPE IS bill_addresses
);

DESC customers;

Task 4:
CREATE OR REPLACE TYPE state_type AS OBJECT (
    state   VARCHAR2(25),
    country VARCHAR2(25)
);
/

DESC state_type;

CREATE TABLE states OF state_type;

CREATE TABLE sites (
    site_id NUMBER,
    site_name VARCHAR2(50)
);

ALTER TABLE sites ADD (
    state_ref REF state_type SCOPE IS states
);

DESC sites;


Task 5:
DROP TYPE invoice_address_type;

DROP TABLE bill_addresses;

DROP TABLE customers;

-- DROP TYPE state_type;

DROP TABLE sites;

DROP TABLE states;




Task 6:
-- Object type for social media details
CREATE OR REPLACE TYPE social_media_type AS OBJECT (
    media_name VARCHAR2(25),
    contact    VARCHAR2(50)
);
/
SHOW ERRORS;

-- VARRAY to store up to 50 social media records
CREATE TYPE social_media_varray_type AS VARRAY(50) OF social_media_type;
/
SHOW ERRORS;

Task 7:
-- Relational table using VARRAY to store social media details
CREATE TABLE prospective_customers (
    prospective_customer_id NUMBER(6),
    company_name            VARCHAR2(50),
    contact_name            VARCHAR2(25),
    social_media_available  social_media_varray_type
);


DESC prospective_customers;


Task 8:
-- Nested table type based on social_media_type
CREATE TYPE social_media_table_type AS TABLE OF social_media_type;
/
SHOW ERRORS;


Task 9:
-- Relational table using nested table for social media usage
CREATE TABLE adverts (
    advert_id          NUMBER(6),
    advert_title       VARCHAR2(50),
    description        VARCHAR2(25),
    social_media_used  social_media_table_type
)
NESTED TABLE social_media_used STORE AS adverts_social_media_nt;


DROP TABLE adverts PURGE;
DROP TABLE prospective_customers PURGE;

DROP TYPE social_media_table_type;
DROP TYPE social_media_varray_type;

DROP TYPE social_media_type;