


-- calculates one result from many rows
-- COUNT -> gives the number of rows
-- SUM() -> total value
-- AVG() -> average value
-- MIN() -> smallest value
-- MAX() -> largest/max value



-- admin dashboard
-- report
-- analytics dashboard

-- SELECT 
--     COUNT(*) AS total_posts
-- FROM posts;

-- SELECT 
--     COUNT(*) AS total_posts,
--     COUNT(*) FILTER (WHERE status = 'published') AS published_posts
-- FROM posts;
SELECT 
    COUNT(*) AS total_posts,
    COUNT(*) FILTER (WHERE status = 'draft') AS draft_post,
    SUM(views) AS total_views, --add all view caount for the table post,
    AVG(views) AS average_views,
    MIN(views) AS minimum_views,
    MAX(views) AS maximum_views
FROM posts;