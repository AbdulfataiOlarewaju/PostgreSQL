relational db -> stores data in tables
the tables can be connceted using relationships

if you have:
user table
posts table
comments table

1 post -> 1 user
1 comment -> 1post

1 user-> many posts


non relational db -> doesnot organise data using connected table. it uses documanets, key value pairs


we use postgres when our data need to have clear stucture, porper retionships, transactions, joins, stong validation at db level

eg: bank app, ecommerce, CRM

non relational db used when your data changes very often, when ur docs are independent not much joins


export PGPASSWORD='@Olarewaju001'

psql -U postgres -d postgresql_part1

psql -U postgres -d postgresql_part1 -f part1/06_null_empty_string_zero.sql
