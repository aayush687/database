//object column

SELECT column_name, object_column_name
FROM table_name;

SELECT address FROM sites;

ADDRESS(STREET,CITY,COUNTRY)

//using dot notation for better access
//easily extract garna milxa value haruu


SELECT alias.column_name.attribute FROM tablename alias;
SELECT s.address.street, s.address.city FROM sites s;





//object table
  //same as normal for select and other
SELECT * FROM addresses;



//DEREF

SELECT column_table, DEREF(reference_column)
FROM tablename;

SELECT instructor_id, DEREF(address)
FROM instructors;

//VARRAY

SELECT s.site_id, c.room_number, c.capacity
FROM sites s,
TABLE(s.classroom) c
WHERE site_id=1;