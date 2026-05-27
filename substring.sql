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