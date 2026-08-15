-- left join keeps all rows from the left table if the right table has the matching data, postgres is going to includes that data. if not postgres is going to return null



-- posts -> left table
-- comments -> right table

-- bcuz not every post is going to have comments
-- some posts will have commnets while soem will not have

SELECT 
    posts.title AS post_title,
    comments.body AS comment_body
FROM posts
LEFT JOIN comments
    ON posts.id = comments.post_id
ORDER BY posts.title  

-- if there is a post without comment, it going to return null and keep our post(we will still get the post) but for INNER JOIN, if there is a post without comment, it going to hide the post that has no comment