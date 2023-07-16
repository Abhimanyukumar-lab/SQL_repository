1 - SELECT and FROM

SELECT * 
FROM Table

SELECT roW1
FROM Table;

the statement SELECT is used to select columns from a table. * means everything. From is the statement used to specify the desired data

2-WHERE

SELECT * 
FROM Table
WHERE Column1= INT or 'VARCHAR';

The statement WHERE filters the data according to the desired datatype or information.
for characteres is always necessary to use ''

3-GROUP BY 

SELECT * 
FROM Table
GROUP BY Column1;

The statement GROUP BY groups the data according to its value. 

4-HAVING 

SELECT *
FROM Table
GROUP BY Column1
HAVING COUNT() > 1;

ATENTION! The statement GROUP BY is always required HAVING. HAVING filters que group by results.

5-ORDER BY

SELECT *
FROM Table
ORDER BY Column1

The statement ORDER BY is used to order the results accoding to the choosen column.


6-VIEWS

VIEWS is a consult which the output is a virtual table. Virtual tables are commoly used to simplify the data acess and starndartlize the data. Furthermore, virtual tables can control data acess.

CREATE VIEW newvirtualtable as SELECT Column1, Column2
FROM Table
WHERE Column = INT

DROP VIEW : drops the view previously created

