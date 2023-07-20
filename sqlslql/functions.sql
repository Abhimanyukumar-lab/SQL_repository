A function is a set of SQL statements that can be stored and called again. Functions can be used to simplify code, aggregate data, and automate tasks.

CREATE FUNCTION my_function(n int) RETURNS int AS ; The statement CREATE FUNCTION creates a new function named my_function which the input and the output is a n int and

CREATE OR REPLACE FUNCTION my_function(tablename text, columnname text, value text) : the statemente REPLACE FUNCTION can be used to replace a function which already exists. Which is between () defines que function parameters.
RETURNS TABLE(columnvalue text) AS ; 
$func$
BEGIN
  RETURN QUERY
    SELECT column_value
    FROM table_name
    WHERE column_name = value;
END
$func$ LANGUAGE plpgsql;