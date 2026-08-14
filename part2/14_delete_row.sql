

-- INSERT INTO products (name, category, price, stock, sku, description)
-- VALUES ('temp', 'electronics', 1400, 20, 'ELE-TEMP-015', 'temp product desc..');

SELECT name, category, sku
FROM products
WHERE sku = 'ELE-TEMP-015';

DELETE FROM products
WHERE sku = 'ELE-TEMP-015';

SELECT name, category, sku
FROM products
WHERE sku = 'ELE-TEMP-015';
