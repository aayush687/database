CEIL

SELECT order_total, CEIL(order_total)
  FROM orders
  WHERE order_id = 1234;

ORDER_TOTAL CEIL(ORDER_TOTAL)
----------- -----------------
  35444.9        35555

SELECT total_weight, CEIL(total_weight) AS billable_weight
  FROM shipments
  WHERE shipment_id = 9051;

TOTAL_WEIGHT BILLABLE_WEIGHT
------------ ---------------
    35.28           36

SELECT hours_worked, CEIL(hours_worked) AS billable_hours
  FROM consultant_timesheets
  WHERE ticket_id = 4321;

HOURS_WORKED BILLABLE_HOURS
------------ --------------
    2.1              3

CONCAT
SELECT CONCAT(CONCAT(last_name, '''s job category is '), job_id) "Job" 
  FROM employees
  WHERE employee_id = 122;

Job
------------------------------------------------------
Aayush's job category is SA_REP

SELECT CONCAT(CONCAT(last_name, ', '), first_name) "Full Name"
  FROM employees
  WHERE employee_id = 122;

Full Name
------------------------------------------------------
Subedi, Aayush

SELECT CONCAT(CONCAT('The email for ', last_name), '@company.com') "Email Route"
  FROM employees
  WHERE employee_id = 122;

Email Route
------------------------------------------------------
The email for Aayush@company.com

FLOOR
SELECT FLOOR(15.7) "Floor"
  FROM DUAL;

    Floor
----------
    15

SELECT FLOOR(-10.7) "Floor"
  FROM DUAL;

    Floor
----------
      -11

SELECT FLOOR(20) "Floor"
  FROM DUAL;

    Floor
----------
        20

ROUND
SELECT ROUND(15.193,1) "Round" FROM DUAL;

    Round
----------
    15.2

SELECT ROUND(15.193,-1) "Round" FROM DUAL;

    Round
----------
    20

SELECT ROUND(15.193) "Round" FROM DUAL;

    Round
----------
    15

SUBSTRING
SELECT SUBSTR('ABCDEFG',5,3) "Substring"
    FROM DUAL;

Substring
---------
EFG

SELECT SUBSTR('ABCDEFG',-4,4) "Substring"
    FROM DUAL;

Substring
---------
DEFG

SELECT SUBSTRB('ABCDEFG',5,4.2) "Substring with bytes"
    FROM DUAL;

Substring with bytes
--------------------
CD


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
DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3');
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