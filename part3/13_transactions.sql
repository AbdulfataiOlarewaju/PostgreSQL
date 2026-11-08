
-- transaction gives opportuniy to run multiple sql statements as one sate unit
-- meaning what ever we are runinigneverything is going to be succeed or councelled

-- placing an order. if successful,
-- reduce the stock count of the products
-- creating payment records
-- trasfering money
-- creating user records with related profile data

BEGIN;

UPDATE posts
SET status = 'published'
WHERE title = 'Understanding SQL Constraints'
  AND status = 'draft';

UPDATE posts
SET views = views + 50
WHERE title = 'Understanding SQL Constraints';

SELECT 
title,
status,
views
FROM posts
WHERE title = 'Understanding SQL Constraints';


COMMIT;