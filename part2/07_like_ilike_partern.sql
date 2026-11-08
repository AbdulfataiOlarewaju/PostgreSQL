-- like -> case sensitive pattern match
-- ilike -> case insensitive pattern match
-- % -> any number of characters
-- -> exact number of character

-- the % after wireless means anything can come after it
-- SELECT name, price
-- FROM products
-- WHERE name LIKE 'Wireless%'

-- SELECT name, price
-- FROM products
-- WHERE name ILIKE '%gaming%'

SELECT name, category, description
FROM products
WHERE name ILIKE '%chair%'
 OR description ILIKE '%chair%';