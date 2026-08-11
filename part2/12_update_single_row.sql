

SELECT name, price, stock, sku
FROM products
WHERE sku = 'ELE-MOU-002';

UPDATE products
SET price = 1999.00,
stock = 23
WHERE sku = 'ELE-MOU-002';

SELECT name, price, stock, sku
FROM products
WHERE sku = 'ELE-MOU-002';