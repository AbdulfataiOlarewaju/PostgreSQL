

-- SELECT name, category, price, is_active
-- FROM products
-- WHERE category = 'stationery';


-- UPDATE products
-- SET price = ROUND(price * 1.10, 2) --increase by 10% and round to 2 decimal places
-- WHERE category = 'stationery';


-- SELECT name, category, price, is_active
-- FROM products
-- WHERE category = 'stationery';


UPDATE products
SET is_active = false
WHERE stock = 0;

SELECT name, category, stock, is_active
FROM products
WHERE is_active = false;