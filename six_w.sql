//Insering into Nested Tables
INSERT INTO invoices(invoice_number, company_id, billing_date, invoice_item)
VALUES(10007, 30, '01-OCT-2021', invoice_item_table_type(
     invoice_item_type('GREEN', 'SQL', '15-JUL-2022', NULL, 1250), 
     invoice_item_type('ADAMS', 'PHP', '08-JUL-2022', NULL, 1250),
));

--Querying Object Table
SELECT street, city FROM addresses;

--Extracting a REFerence from Object Tables
SELECT REF(a) , street, city, country
FROM addresses a
WHERE street = '67 KENSINGTON AVENUE ';

--Querying Object Columns
SELECT address FROM sites;

--Querying Using Dot Notation
SELECT s.address.street, s.address.city FROM sites s;

--Querying Tables with REF Columns
SELECT instructor_id, address FROM instructors;

--Querying using DEREF
SELECT instructor_id, DEREF(address)
FROM instructors;

--Query Using Dot Notation
SELECT i.address.street, i.address.city FROM instructors i;

--Querying Tables with Refs
SELECT i.address.street
FROM instructors i;