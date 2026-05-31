DECLARE
vn_counter NUMBER(3):=0;

BEGIN
LOOP
IF vn_counter>3 THEN
EXIT; -- needs a point to break the loop
END IF;
DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3');
vn_counter := vn_counter+1;
END LOOP;
END;

DECLARE
vn_counter NUMBER(3):=0;
BEGIN
LOOP
EXIT WHEN vn_counter>3;
DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3');
vn_counter := vn_counter+1;
END LOOP;
END;

--Loop with a WHILE condition
DECLARE
    vn_counter NUMBER(3) := 0;
BEGIN
    WHILE vn_counter <= 3 LOOP
        DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3. Current value: ' || vn_counter);
        vn_counter := vn_counter + 1;
    END LOOP;

    DBMS_OUTPUT.PUT_LINE('counter has exceeded 3. Final value: ' || vn_counter);
END;















DECLARE
    vn_num    NUMBER(3) := 1;
    vn_total  NUMBER(6) := 0;
BEGIN
    LOOP
        IF vn_num > 10 THEN
            EXIT;
        END IF;
        IF MOD(vn_num, 2) = 0 THEN
            vn_total := vn_total + vn_num;
            DBMS_OUTPUT.PUT_LINE('Added ' || vn_num || ' → Running total: ' || vn_total);
        END IF;
        vn_num := vn_num + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sum of even numbers 1–10: ' || vn_total);
END;
DECLARE
    vn_num    NUMBER(3) := 1;
    vn_total  NUMBER(6) := 0;
BEGIN
    LOOP
        EXIT WHEN vn_num > 10;
        IF MOD(vn_num, 2) = 0 THEN
            vn_total := vn_total + vn_num;
            DBMS_OUTPUT.PUT_LINE('Added ' || vn_num || ' → Running total: ' || vn_total);
        END IF;
        vn_num := vn_num + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sum of even numbers 1–10: ' || vn_total);
END;
DECLARE
    vn_num    NUMBER(3) := 1;
    vn_total  NUMBER(6) := 0;
BEGIN
    WHILE vn_num <= 10 LOOP
        IF MOD(vn_num, 2) = 0 THEN
            vn_total := vn_total + vn_num;
            DBMS_OUTPUT.PUT_LINE('Added ' || vn_num || ' → Running total: ' || vn_total);
        END IF;
        vn_num := vn_num + 1;
    END LOOP;
    DBMS_OUTPUT.PUT_LINE('Sum of even numbers 1–10: ' || vn_total);
END;




exit-when

DECLARE
 vn_counter NUMBER(3):=0;
BEGIN
  LOOP
   EXIT WHEN vn_counter>3;
   DBMS_OUTPUT.PUT_LINE('counter hasn't exceeded 3');
   vn_counter:=vn_counter + 1;
  ENDLOOP;
END;



while-loop
WHILE condition LOOP
  sequence of statements;
END LOOP;


vn_counter NUMBER(3):=0;
BEGIN
 WHILE 3>=vn_counter LOOP
   DBMS_OUTPUT.PUT_LINE('counter has not exceeded 3');
   vn_counter := vn_counter + 1;
 END LOOP;
END;


for-loop
BEGIN
  FOR condition LOOP
    statement;
  END LOOP;
END;

FOR vn_counter IN [REVERSE] lower_bound .. Upper_bound LOOP
  sequence of statements;
END LOOP;

FOR vn_another_counter in 1 .. 4 LOOP

  DBMS_OUTPUT.PUT_LINE ('loop number'||vn_another_counter);
END LOOP;