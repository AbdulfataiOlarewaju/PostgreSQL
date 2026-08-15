

-- foreign key is a col that point to the primary key of another table


-- user.id - parent key
-- posts.user_id foreign key
--each and every post u will be creating must belong to a specific exiting user


SELECT id, name
FROM users;

SELECT id, user_id, title
FROM posts;