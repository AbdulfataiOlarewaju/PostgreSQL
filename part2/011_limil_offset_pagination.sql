

-- limit -> means how many rows you want to return
-- offset -> how many rows you want to skip

-- let's say you have to return only 3 products and i  ant to sort the name of the product in asending order of name

-- SELECT name, price
-- FROM products
-- ORDER BY name ASC
-- LIMIT 3;

-- SELECT name, price
-- FROM products
-- ORDER BY price ASC
-- LIMIT 3;

-- 1-5, 6 - 10 

-- offset
-- SELECT name, price
-- FROM products
-- ORDER BY name ASC
-- LIMIT 5 OFFSET 0; 

SELECT name, price
FROM products
ORDER BY name ASC
LIMIT 5 OFFSET 5;  

