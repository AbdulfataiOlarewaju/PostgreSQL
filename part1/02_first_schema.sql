-- how to create schema. 
-- schema is like a folder in your db
-- db -> schema -> table -> rows

CREATE SCHEMA IF NOT EXISTS basics; -- CREATE SCHEMA is going to create a name space for your table and ur other data object, IF NOT EXIST prevent an error if the schema already existed

CREATE EXTENSION IF NOT EXISTS pgcrypto;


-- query

SELECT schema_name
FROM nformation_schema.schemata --this is a system view, system views are built in views that gives information about ur db structure for example you want to see how many schema are availablemin ur
ORDER BY schema_name; 