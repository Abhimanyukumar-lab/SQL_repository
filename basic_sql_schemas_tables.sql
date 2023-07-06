##SQL : the basic ##
##General database structure: Database software, Database, Schema and Tables

Database Software : it is a computer program designed to manage, organize and store amounts of data. It provides a sctructured framework for creating, modifying and accessing databases.
It is also an intermediary between users or applications and the physical storage of data.

Database: Collections of structured data, tipically using Schemas and/or Tables.

Schema: Schema is a collections of definition for the structure, organization and relationship between the data. 
In an SQL database, where the relationship between data is established through tables containing rows and columns, the schema is the collection of these tables pertaining to a database.
In an noSQL database, where the relationship is not based on tables, there is no rigid definition of what a schema is. However, this term is also used to categorize a set of data and its relationships within a database.
In this file, I will only discuss relational databases, which are constructed, accessed, and manipulated using SQL.

Tables: Are the context of databases and can be described as structured arrangements of data organized in rows and columns. They provide a way to store and represent structured information about a tabulas format.

Basic Syntax:

1-Creating, checking and destroying 

1.1-Create a Schema 

CREATE SCHEMA 'schema' DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

'CREATE SCHEMA' creates a new schema, named 'schema'
'DEFAULT CHARACTER SET' defines the default character set for a database. It defines the character encoding scheme that will be used to store and interpret textual data. utf8mb4 is a character set that extends the utf-8 encoding scheme to support the full range of Unicode charactes.
'COLLATE' is used to specify the collation or sorting rules for character data. utf8mb4_unicode_ci sets the collation to a case-insensitive and accent-insensitive sorting order that follows Unicode rules. That means that durinf sorting or comparison operations, uppercase and lowercase letters are considered equal.

; is the endpoint of the program execution and must to be always used!

1.2-Create a Table

CREATE TABLE 'schema'.'table1 (
     'id' INT NOT NULL COMMENT 'Primary index',
     PRIMARY KEY ('id'));


'CREATE TABLE' creates a new table named 'table1' in the schema named 'schema'
''id' INT NOT NULL COMMENT ('Primary index')' defines the details of each field. id is the column name, INT is the data type, NOT NULL defines that a null is not acceptable and COMMENT defines a comment.
'PRIMARY KEY' metadata declaration. Defines the vital part of each table system, which is a column or a combination of columns that uniquely identifies each row in the table. 'id' is the primary key from this table.

1.2.1-Checking the table

SHOW FULL COLUMNS FROM 'schema'.'table1';

'SHOW FULL COLUMNS FROM' will show all columns

1.2.2-Destroying and cleaning tables

DROP TABLE 'schema'.'table1';

'DROP TABLE' will destroy the table and the data. VERY DANGEROUS STATEMENT!! Another way to deal with a table 'remotion' is to use the statement TRUNCATE

TRUNCATE 'schema'.'table1';

TRUNCATE allows you to delete the table, but not the data. The data is storaged in memory or in a temporary storage area within the database system. Despite of the fact that this statement is also dangereous, its better to use that instead DROP TABLE

;

1.3-Create a Column 

ALTER TABLE 'schema'.'table1'
ADD COLUMN 'name' VARCHAR(100);

'ALTER TABLE' is the statement to alter the table
'ADD COLUMN' reponsible for add a column into a table. 'name' is the name of the column and 'VARCHAR(100)' is the datatype. It can be posible to provide additional options for the column such 'NOT NULL' (cited above).

1.3.2- Updating a column

ALTER TABLE 'schema'.'table1'
CHANGE COLUMN 'name' 'first_name' VARCHAR(45) NOT NULL DEFAULT 'No name';

'CHANGE COLUMN' is the statement to change the column name. 'DEFAULT' 'No name'' sets the default value for 'first_name' column to be 'No Name' if a value is not explicity provided during insertion.



