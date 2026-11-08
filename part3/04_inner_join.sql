

-- inner join returns only the matching rows from both tables but there has to be a matching condition.

SELECT  
    users.name AS author_name,
    posts.title AS post_title,
    posts.status,
    posts.views
FROM posts
INNER JOIN users
    ON posts.user_id = users.id
WHERE posts.status = 'published' -- matching rule
ORDER BY posts.views DESC