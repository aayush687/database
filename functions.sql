CREATE OR REPLACE FUNCTION func_count_offerings
RETURN number IS
  vn_course_ct NUMBER(4);

BEGIN
  SELECT COUNT(*)
  INTO vn_course_ct
  FROM offerings
  WHERE course_id=515;
  
  RETURN vn_course_ct;
END func_count_offerings;
/



RETURN TOTAL NUMBER FROM STUDENTS TABLEE---------
CREATE OR REPLACE FUNCTION func_count_offerings
RETURN number IS
  vn_course_ct NUMBER(5);

  BEGIN
  SELECT COUNT(*)
  INTO vn_course_ct
  FROM students;
  
  RETURN vn_course_ct;
END func_count_offerings;
/



example calling functions-------
CREATE OR REPLACE PROCEDURE
  proc_using_func IS
  vn_no_of_runs number(20);
BEGIN
vn_no_of_runs:=func_count_offerings;
  DBMS_OUT.PUT_LINE('The value returned from the function is'||vn_no_of_runs);
  END proc_using_func;
/



CREATE OR REPLACE PROCEDURE
  proc_using_func (in_course_id NUMBER)IS
  vn_no_of_runs number(20);

BEGIN

vn_no_of_runs:=
  func_count_offerings(in_course_id);

  DBMS_OUT.PUT_LINE('The value returned from the function is'||vn_no_of_runs);

  END proc_using_func;
/



DROP FUNCTION fuction_name;
