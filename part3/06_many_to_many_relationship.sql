

-- one post can have multiple tags and one tag can belong to many posts

-- posts.id === post_tags.post_id
-- tag.id === post_tags.tag_id


-- show every post with their tags

SELECT 
    posts.title AS post_title,
    tags.name AS tags_name
FROM posts
INNER JOIN post_tags -- INNER JOIN because you need to check in both table
    ON posts.id = post_tags.post_id
INNER JOIN tags
    ON tags.id = post_tags.tag_id
ORDER BY post_title, tags_name;

