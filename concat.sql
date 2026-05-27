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