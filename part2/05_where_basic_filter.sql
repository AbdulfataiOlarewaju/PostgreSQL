

-- /products?category=electrocs

-- reduces the row  return by particular query

-- SELECT name, category, price
-- FROM products
-- WHERE category = 'electronics';


SELECT name, category, price
FROM products
WHERE price >= 49999;