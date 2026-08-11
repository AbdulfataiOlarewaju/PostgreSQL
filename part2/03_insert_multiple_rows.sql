

INSERT INTO products (name, category, price, stock, is_active, sku, description)

VALUES ('Mechanical keyboard', 'electronics', 3499.00, 15, 'ELE-MOU-001', 'A high-quality mechanical keyboard with customizable RGB lighting and programmable keys.'),
 ('Wireless Mouse', 'electronics', 1499.00, 30, 'ELE-MOU-002', 'A wireless mouse with ergonomic design and long battery life.'),
 ('Gaming Headset', 'electronics', 2999.00, 20, 'ELE-HDS-003', 'A gaming headset with surround sound and noise-canceling microphone.'),
 ('Smartphone', 'electronics', 19999.00, 10, 'ELE-PHN-004', 'A latest model smartphone with high-resolution camera and fast processor.'),
 ('Laptop', 'electronics', 49999.00, 5, 'ELE-LPT-005', 'A powerful laptop suitable for gaming and professional work.');

 SELECT name, category, price, stock, sku, description FROM products WHERE sku IN ('ELE-MOU-001', 'ELE-MOU-002', 'ELE-HDS-003', 'ELE-PHN-004', 'ELE-LPT-005');