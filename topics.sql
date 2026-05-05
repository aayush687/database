//ANY, SOME,ALL
SELECT attribute1,attribute2
FROM tablename
WHERE attribute1 > ALL (value1,value4);

//statistical functions

SELECT MAX(column) FROM tablename;

SELECT AVG(column) FROM tablename;
SELECT MIN(column) FROM tablename;
SELECT SUM(column) FROM tablename;
SELECT COUNT(column) FROM tablename;

SELECT AVG(balance) FROM staff;
SELECT MIN(balance) FROM staff;

//GROUPBY
SELECT SUM(score) team
FROM tablename
GROUPBY team;

SELECT SUM(balance) dept
FROM staff
GROUP BY dept;

SELECT AVG(balance) dept
FROM staff
GROUP BY dept;

SELECT MIN(balance) dept
FROM staff
GROUP BY dept;


SELECT COUNT(balance) dept
FROM staff
GROUP BY dept;


//HAVING CLAUSE
SELECT SUM(score),AVG(score),team
FROM games
GROUP BY team
HAVING AVG(score)>1000;


SELECT SUM(balance),AVG(balance),dept
FROM staff
GROUP BY dept
HAVING AVG(balance)>100;




//cartesian

//joins 
