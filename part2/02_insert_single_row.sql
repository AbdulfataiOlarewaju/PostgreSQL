

INSERT INTO products (name, category, price, stock, is_active, sku, description)


VALUES
 ('Laptop', 'electronics', 49999.00, 5, true, 'ELE-LPT-009', 'A powerful laptop suitable for gaming and professional work.');

 SELECT * FROM products WHERE sku = 'ELE-LPT-003';