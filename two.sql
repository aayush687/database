Task 1:
INSERT INTO bill_addresses
VALUES ('54 FESTIVE ROAD', 'NORTHAMPTON', 'UK');

INSERT INTO bill_addresses
VALUES ('30 ENGLISH STREET', 'BEDFORD', 'UK');

SELECT * FROM bill_addresses;

INSERT INTO customers (customer_id, customer_name, invoice_address)
SELECT 1, 'RAM SHARMA', REF(a)
FROM bill_addresses a
WHERE street = '54 FESTIVE ROAD';

SELECT * FROM customers;


Task 2:
DESC sites;

INSERT INTO states
VALUES ('BIHAR', 'INDIA');

UPDATE sites s
SET s.state_ref =
(
  SELECT REF(st)
  FROM states st
  WHERE st.state = 'BIHAR'
)
WHERE s.site_id = 1;

SELECT * FROM sites;

Task 3:
DROP TABLE customers;

CREATE TABLE customers (
    customer_id NUMBER,
    customer_name VARCHAR2(50),
    invoice_address address_type
);


DESC customers;


INSERT INTO customers
VALUES (
    2,
    'SAM SHARMA',
    address_type('1 MY WAY', 'LUTON', 'UK')
);


SELECT * FROM customers;


INSERT INTO states VALUES ('ALBERTA', 'CANADA');
INSERT INTO states VALUES ('VICTORIA', 'AUSTRALIA');
INSERT INTO states VALUES ('QUEENSLAND', 'AUSTRALIA');
INSERT INTO states VALUES ('DELHI', 'INDIA');


INSERT INTO sites
VALUES (
    1,
    address_type('Kathmandu Campus', 'Kathmandu', 'Nepal'),
    (SELECT REF(s)
     FROM states s
     WHERE s.state = 'QUEENSLAND')
);


INSERT INTO sites
VALUES (
    2,
    address_type('Fictional Street', 'CityX', 'CountryY'),
    NULL
);


UPDATE sites s
SET s.state_ref =
(
    SELECT REF(st)
    FROM states st
    WHERE st.state = 'ALBERTA'
)
WHERE s.site_id = 2;


INSERT INTO prospective_customers (customer_id, customer_name, social_media)
VALUES (
    80000,
    'User One',
    social_media_varray_type(
        social_media_type('Instagram', '@user1', 'contact1'),
        social_media_type('Facebook', 'user.one', 'contact2'),
        social_media_type('X', '@user1x', 'contact3')
    )
);


INSERT INTO prospective_customers (customer_id, customer_name, social_media)
VALUES (
    80001,
    'User Two',
    social_media_varray_type(
        social_media_type('Instagram', '@user2', 'contact1'),
        social_media_type('Facebook', 'user.two', 'contact2'),
        social_media_type('LinkedIn', 'user-two', 'contact3')
    )
);

INSERT INTO adverts (ad_id, social_media)
VALUES (
    90000,
    social_media_table_type(
        social_media_type('Instagram', '@ad1', 'email1'),
        social_media_type('Facebook', 'ad.one', 'email2'),
        social_media_type('X', '@adX', 'email3')
    )
);

SELECT * FROM adverts;