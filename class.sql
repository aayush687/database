SELECT TRIM('' FROM firstname),
TRIM ('' FROM surname)
FROM staff;

SELECT LENGTH(firstname) FROM staff;

SELECT INSTR('CORPORATE FLOOR','OR',3,2) FROM
DUAL;

//return firstname starting at 3 letter of the first name
SELECT SUBSTR (firstname, 3,LENGTH(firstname))
FROM staff;

//variable decleration

LOOPs
DECLARE
vn_counter NUMBER(3) :=0;
BEGIN
LOOP
 IF vn_counter>3 THEN
   EXIT;--needs a point to break the loop
 END IF;
 DBMN_OUTPUT.PUT_LINE('counter has not exceeded 3');
 vn_counter := vn_counter + 1;
END LOOP;
END;


EXIT-WHEN
EXIT
DECLARE
 vn_counter NUMBER(3):=0;
BEGIN
 LOOP
  EXIT WHEN vn_counter>3;
  DBMS_OUTPUT.PUT_LINE('counter hasnt exceeded 3');
  vn_counter := vn_counter+1;
 END LOOP;
END;