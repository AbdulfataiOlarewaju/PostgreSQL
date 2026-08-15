

CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS post_tags;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS tags;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL
);

CREATE TABLE posts (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES users(id),
    title TEXT NOT NULL,
    status TEXT NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'published')),
    views INTEGER NOT NULL DEFAULT 0 CHECK (views >= 0)
);

CREATE TABLE comments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    post_id UUID NOT NULL REFERENCES posts(id),
    body TEXT NOT NULL
);

CREATE TABLE tags (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL UNIQUE
);


CREATE TABLE post_tags (
    post_id UUID NOT NULL REFERENCES posts(id),
    tag_id UUID NOT NULL REFERENCES tags(id),
    PRIMARY KEY (post_id, tag_id)
);

INSERT INTO users (name)
VALUES ('Abdulfatai'), ('Olarewaju');

INSERT INTO posts (user_id, title, status, views)
SELECT id, 'PostgreSQL Joins Explained', 'published', 100
FROM users
WHERE name = 'Abdulfatai';

INSERT INTO posts (user_id, title, status, views)
SELECT id, 'Understanding SQL Constraints', 'draft', 50
FROM users
WHERE name = 'Abdulfatai';

INSERT INTO posts (user_id, title, status, views)
SELECT id, 'Advanced SQL Techniques', 'published', 200
FROM users
WHERE name = 'Olarewaju';

INSERT INTO comments (post_id, body)
SELECT id, 'Great article! Very informative.'
FROM posts 
WHERE title = 'PostgreSQL Joins Explained';

INSERT INTO comments (post_id, body)
SELECT id, 'I found this post very helpful. Thanks for sharing!'
FROM posts 
WHERE title = 'Understanding SQL Constraints';

-- INSERT INTO comments (post_id, body)
-- SELECT id, 'This is a must-read for anyone working with SQL.'
-- FROM posts 
-- WHERE title = 'Advanced SQL Techniques';

INSERT INTO tags (name)
VALUES ('SQL'), ('PostgreSQL'), ('Database'), ('Programming');

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'PostgreSQL Joins Explained' AND t.name = 'PostgreSQL';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Understanding SQL Constraints' AND t.name = 'SQL';

INSERT INTO post_tags (post_id, tag_id)
SELECT p.id, t.id
FROM posts p, tags t
WHERE p.title = 'Advanced SQL Techniques' AND t.name = 'Programming';

SELECT 'Part 3: Reduced database and Sample data inserted successfully' AS message;

