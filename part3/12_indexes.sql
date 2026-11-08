

-- index helps to find rows faster

-- SELECT -> speed it up this particular procees

SELECT 
    id,
    title,
    views
    user_id
FROM posts;

-- /posts?status=published

SELECT 
    id,
    title,
    status
FROM posts 
WHERE status = 'published';


-- create an index

-- idx_posts_status
-- idx - index
-- posts - table name
-- status - colum name

CREATE INDEX IF NOT EXISTS idx_posts_status
ON posts(status);

SELECT 
    title,
    status,
    views
FROM posts
WHERE status = 'published'
ORDER BY views DESC;


-- composite index

CREATE INDEX IF NOT EXISTS idx_post_status_views
ON posts(status, views, DESC);



-- /users/:id/posts

SELECT 
    title,
    status,
    views
FROM posts
WHERE user_id = (
    SELECT id
    FROM users
    WHERE name = ''
)
-- index for this now

CREATE INDEX IF EXISTS idx_posts_user_id
ON posts(user_id);