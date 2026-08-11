


-- select * returns every cols
-- select specific cols returns the cols that i want 


-- SELECT * FROM products;

SELECT name, category, price, stock 
FROM products;

-- Alias(AS) creates an alias fro the output of that colunm name
-- makes the col name easier to read

SELECT
  name AS product_name,
  price AS selling_price,
  stock AS available_quantity
FROM products

