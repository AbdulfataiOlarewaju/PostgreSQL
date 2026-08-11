

-- AND -> every conditions must be true
-- OR -> atleast one condition must be true
-- NOT -> reverse/exclude a condition

-- products where it is electronics product but price > 30000

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics'
--   AND price > 30000

-- product where category is electronic or funiture
-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics'
--   OR category = 'funiture';

-- SELECT name, category
-- FROM products
-- WHERE NOT category = 'electronics';


-- SELECT name, category, price, stock
-- FROM products
-- WHERE (category = 'electronics' OR category = 'funiture')
--  AND stock > 10

-- SELECT name, category, price, stock
-- FROM products
-- WHERE (category = 'electronics' OR category = 'funiture')
--  AND stock > 10

 SELECT name, price, stock, is_active
FROM products
WHERE is_active = true
    AND (price < 2000 OR stock >=20);