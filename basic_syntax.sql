//1.

CREATE TABLE personal_informations(
first_name     VARCHAR2(15),
last_name      VARCHAR2(15),
DOB            DATE,
gender         CHAR,
phone_number   VARCHAR2(15));


ALTER TABLE personal_informations
ADD CONSTRAINTS pk_personal_informations
PRIMARY KEY (phone_number);


INSERT INTO personal_informations (first_name,last_name,DOB,gender,phone_number)
VALUES ('AAYUSH','SUBEDI','20-MAY-2005','M',+977-9863531018);


SELECT * FROM personal_informations;

SELECT * FROM personal_informations
WHERE age>20;

SELECT * FROM personal_informations
WHERE first_name LIKE 'a%' OR first_name LIKE 'b%';

SELECT * FROM personal_informations
WHERE age BETWEEN 10 AND 77;

ALTER TABLE personal_informations
DROP COLUMN (gender);





//2.

CREATE TABLE academic_informations(
first_name     VARCHAR2(15),
last_name      VARCHAR2(15),
student_id     NUMBER(12),
enrolled_date  DATE);


ALTER TABLE academic_informations
ADD CONSTRAINTS pk_academic_informations
PRIMARY KEY (student_id);


INSERT INTO academic_informations (first_name,last_name,student_id,enrolled_date)
VALUES ('AAYUSH','SUBEDI',20251005,'20-APR-2005');


SELECT * FROM academic_informations;

SELECT * FROM academic_informations
WHERE student_id=20251005;

SELECT * FROM academic_informations
WHERE first_name LIKE 'a%';

ALTER TABLE academic_informations
DROP COLUMN (last_name);








//3.
CREATE TABLE contact_informations(
perm_address    VARCHAR2(20),
temp_address    VARCHAR2(20),
email           VARCHAR2(30),
phone_number    VARCHAR2(15));


ALTER TABLE contact_informations
ADD CONSTRAINTS pk_contact_informations
PRIMARY KEY (phone_number);


INSERT INTO contact_informations (perm_address,temp_address,email,phone_number)
VALUES ('DOLAKHA-05','DAKASHINDHOKA-07','aayushsubed99@gmail.com',+977-9863531018);


SELECT * FROM contact_informations;

ALTER TABLE contact_informations
DROP COLUMN (temp_address);




//4.

CREATE TABLE document_informations(
document_id    VARCHAR2(20),
DOI            VARCHAR2(20),
DOE            VARCHAR2(20),
document_name  VARCHAR2(15));


ALTER TABLE document_informations
ADD CONSTRAINTS pk_document_informations
PRIMARY KEY (document_id);


INSERT INTO document_informations (document_id,DOI,DOE,document_name)
VALUES (20-99-2723626,'20-APR-2005','19-APR-2010','CITIZENSHIP');


SELECT * FROM document_informations;

SELECT * FROM document_informations
WHERE document_id=20-25-8881005;



ALTER TABLE document_informations
DROP COLUMN (DOI);

