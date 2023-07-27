
##dynamic aproach to find out where the column might belongs:

DO $$
DECLARE
    ColumnName VARCHAR(50) := 'column';
    TableName VARCHAR(50);
    TableCount INT;
    Counter INT := 1;
BEGIN
    SELECT COUNT(*) INTO TableCount FROM information_schema.tables;

    WHILE Counter <= TableCount
    LOOP
        SELECT table_name INTO TableName
        FROM (
            SELECT table_name, ROW_NUMBER() OVER (ORDER BY table_name) AS RowNum
            FROM information_schema.tables
        ) AS T
        WHERE RowNum = Counter;

        IF EXISTS (
            SELECT column_name
            FROM information_schema.columns
            WHERE table_name = TableName AND column_name = ColumnName
        )
        THEN
            RAISE NOTICE 'Column belongs to: %', TableName;
        END IF;

        Counter := Counter + 1;
    END LOOP;
END$$;



##PostgreSQL pg_stat_statements mostra as consultas executadas, incluindo as tabelas referenciadas using REGEX

CREATE EXTENSION pg_stat_statements;
SELECT
  regexp_split_to_table(query, '\s') AS table_name
FROM
  pg_stat_statements
WHERE
  query ILIKE '%FROM%' OR
  query ILIKE '%JOIN%';

