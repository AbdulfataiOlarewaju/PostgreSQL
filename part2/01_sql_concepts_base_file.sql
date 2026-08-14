


CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    name TEXT NOT NULL,

    price NUMERIC(10, 2) NOT NULL CHECK (price >=0),

    category TEXT NOT NULL,

    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >=0),

    is_active BOOLEAN NOT NULL DEFAULT true,

    sku TEXT UNIQUE,

    description TEXT,

    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);





INSERT INTO products (name, category, price, stock, is_active, sku, description)

VALUES ('Mechanical keyboard', 'electronics', 3499.00, 15, true, 'ELE-MOU-001', 'A high-quality mechanical keyboard with customizable RGB lighting and programmable keys.'),
 ('Wireless Mouse', 'electronics', 1499.00, 30, true, 'ELE-MOU-002', 'A wireless mouse with ergonomic design and long battery life.'),
 ('Gaming Headset', 'electronics', 2999.00, 20, true, 'ELE-HDS-003', 'A gaming headset with surround sound and noise-canceling microphone.'),
 ('Smartphone', 'electronics', 19999.00, 10, true, 'ELE-PHN-004', 'A latest model smartphone with high-resolution camera and fast processor.'),
 ('Chair', 'funiture', 20000.00, 39, false, 'FUNI-CHR-004', 'A latest model chair with one handle.'),
 ('pencil', 'stationery', 1000.00, 0, true, 'STAT-PEN-004', 'A latest model pencil with one handle.'),
 ('Laptop', 'electronics', 49999.00, 5, true, 'ELE-LPT-005', 'A powerful laptop suitable for gaming and professional work.');


 SELECT * FROM products;