

-- alaises make ur queries shorter and more readable.

-- posts.title
-- instead of writing posts.title u can write p.title if u give an alias to the posts table as p

-- users.name
-- instead of writing users.name u can write u.name if u give an alias to the users as u


SELECT 
    u.name AS author_name,
    p.title AS post_title,
    p.status,
    p.views, 
    c.body AS comment_body
FROM posts AS p
INNER JOIN users AS u
    ON p.user_id = u.id
LEFT JOIN comments AS c
    ON p.id = c.post_id
ORDER BY p.views DESC;

 