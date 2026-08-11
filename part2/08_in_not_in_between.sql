

-- IN -> value must match one item from the list
-- NOT -> value must  not match one item from the list
-- BETWEN -> value must be inside the range

-- SELECT name, category, price
-- FROM products
-- WHERE category IN ('electronics', 'funiture'); -- instead of OR


-- SELECT name, category, price
-- FROM products
-- WHERE category NOT IN ('electronics', 'funiture'); -- excluding both

-- SELECT name, category, price
-- FROM products
-- WHERE price BETWEEN 10000 AND 20000

SELECT name, category, price, stock
FROM products
WHERE category IN ('electronics', 'funiture')
    AND price BETWEEN 20000 AND 30000;

