Declaring Variables

DECLARE
 vc_firstname    VARCHAR2(30):='SMITH';
 vc_surname      students.surname%TYPE;
 vn_student_id   NUMBER(2);

BEGIN



CREATE OR REPLACE PROCEDURE proc_add_subject IS
vc_subject_name subject_areas.subject_name%TYPE := 'NEW SUBJECT NAME';

BEGIN

 INSERT INTO SUBJECT_AREAS
 VALUES(seq_subject_id.nextval,vc_subject_name);

END proc_add_subject;



Example-Parameter
CREATE OR REPLACE PROCEDURE proc_param
  (in_subject_id   subject_areas.subject_id%TYPE)IS
BEGIN
 DELETE from subject_areas
 WHERE subject_id = in_subject_id;
END proc_param;
/
execute proc_param (60)

DROP PROCEDURE
procedure_name;


each table lai 2 ota procedure select ra delete