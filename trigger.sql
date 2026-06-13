CREATE OR REPLACE TRIGGER
    trig_new_user
BEFORE UPDATE ON staff
FOR EACH ROW
--REFERENCING OLD AS existing
WHEN (existing.username IS NULL)



--trigger using WHEN

CREATE OR REPLACE TRIGGER trig_date_constraint
BEFORE INSERT OR UPDATE OF billing_date ON
invoices
FOR EACH ROW
WHEN(NEW.billing_date>SYSDATE)

BEGIN

RAISE_APPLICATION_ERROR(-20000,'BILLING DATE MUST BE BEFORE CURRENT DATE');

END trig_date_constraint;
/




CREATE OR REPLACE TRIGGER trig_date_constraint
BEFORE INSERT OR UPDATE OF billing_date ON invoices
FOR EACH ROW

DECLARE
    vd_today DATE;
BEGIN
    SELECT SYSDATE
    INTO vd_today
    FROM DUAL;

IF :NEW.billing_date>vd_today THEN
    RAISE_APPLICATION_ERROR(-20000,'BILLING_DATE MUST BE BEFORE CURRENT DATE');

ELSE NULL;
END IF;
END trig_date_constraint;
/

--classwork
CREATE TABLE users(
user_id  NUMBER(10),
first_name VARCHAR2(15),
last_name VARCHAR2(15),
email VARCHAR2(25),
dob  DATE);

CREATE OR REPLACE TRIGGER trig_dob_check
    BEFORE INSERT OR UPDATE OF dob ON users
    FOR EACH ROW
    WHEN (NEW.dob>SYSDATE)
BEGIN

RAISE_APPLICATION_ERROR(-20000, 'DATE of birth cannot be future date');

END;
/


INSERT INTO users(dob)
VALUES('10-JUN-2026');

DROP TRIGGER trigger_name;