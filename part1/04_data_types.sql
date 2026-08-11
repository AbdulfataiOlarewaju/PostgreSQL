

DROP TABLE IF EXISTS basics.products_basics;

CREATE TABLE basics.products_basics (
    id SERIAL PRIMARY KEY,

    -- string data with a maximum length of 100 characters
    name VARCHAR(100) NOT NULL,

    description TEXT,

    stock INTEGER DEFAULT 0,

    totalviews BIGINT DEFAULT 0,

    
    -- BIGINT -> stores lager whole numbers than integer

    -- NUMERIC(10, 2) -> stores exact decimal values
    -- 10 means toal digits, 2 means 2 digits after the decimal point, 999999999.99
    price NUMERIC(10, 2),
    
    isActive BOOLEAN DEFAULT TRUE
);


-- queris

INSERT INTO basics.products_basics (name, description, stock, totalviews, price, isActive)
VALUES
('Product 1', 'This is product 1', 10, 100, 19.99, TRUE),
('Product 2', 'This is product 2', 5, 50, 29.99, FALSE),
('Product 3', 'This is product 3', 20, 200, 9.99, TRUE);


SELECT * FROM basics.products_basics;

SELECT id, name price  FROM basics.products_basics
WHERE isActive = TRUE