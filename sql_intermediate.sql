1 -JOINS

SELECT * FROM Table
INNER JOIN Table2
    ON Table.Column1 = Table2.Column


The statement INNER JOIN joins the tables together according to the common columns between both tables

SELECT * FROM Table
FULL JOIN Table2
    ON Table.Column1 = Table2.Column


The statement FULL OUTER JOIN joins the tables together idependetly to the common columns

SELECT 
table1.column1,
table2.column2
FROM table1
RIGHT JOIN table2
ON Table1.column = Table2.column;

The statement RIGHT JOIN join all the results in all information from table2 and the common information with table2 from Table1 

SELECT 
table1.column1,
table2.column2
FROM table1
LEFT JOIN table2
ON Table1.column = Table2.column;

The statement LEFT JOIN join all the results in all information from table1 and the common information with table1 from Table2


2 - OVER 

SELECT
Column1,
Column2
OVER (PARTITION BY Colum1) as alias 
FROM
Table;

OVER is the statement that creates a WINDOW function, which is the funtion responsible for creates statistical outputs. They are also used to classify lines across another lines.
The statement PARTITION BY is the responsible to define in which column the result will be displayed


3 - ROUND

SELECT ROUND(sum(column1), x)

ROUND statement will defines how the output will be displayed in terms of decimal houses. X is the choosen value. 

