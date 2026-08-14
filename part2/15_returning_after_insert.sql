-- returning usually returns back the rows after insert, update detele... to see wheater is is done or not 
-- just like select

INSERT INTO products (name, category, price, stock, sku, description)
VALUES ('webcam camera', 'electronics', 1300.00, 10, 'ELE-030', 'latest webcam camera')
RETURNING id, name, category, price, created_at;


UPDATE products
SET 