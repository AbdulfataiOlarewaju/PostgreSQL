
-- null -> missing/unkwon value

-- dont check value using = null

-- IS NULL or IS NOT NULL


-- SELECT name, description
-- FROM products
-- WHERE description IS NULL;

-- SELECT name, description
-- FROM products
-- WHERE description IS NOT NULL;


-- SELECT name, category, is_active, description
-- FROM products
-- WHERE is_Active = TRUE
--     AND description IS NULL;



SELECT name, category, is_active, description
FROM products
WHERE is_Active = TRUE
    AND description IS NOT NULL;