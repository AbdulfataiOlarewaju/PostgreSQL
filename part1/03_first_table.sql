-- Table stores your data

DROP TABLE IF EXISTS basics.students;

CREATE TABLE basics.students (
    -- id: create an auto-incrementing integer
    -- 1, 2, 3
    -- primary key simply means this column uniquely identifies each row

    id SERIAL PRIMARY KEY, 

    -- text -> string data
    -- not NULL means this col is required
    -- postgres is going to reject if this name value is not present

    name TEXT NOT NULL,
    -- unique -no 
    email TEXT NOT NULL UNIQUE,

    age INTEGER CHECK (age >=18),

    -- TIMESTAMP -> stores date and time
    -- default means if you don't provide a value, the default will be used

    created_at TIMESTAMP DEFAULT NOW() 
);

-- insert some data
INSERT INTO basics.students (name, email, age)
VALUES
('Ibrahim', 'ibrahim@gmail.com', 32),
('maruf', 'maruf@gmail.com', 24);


-- SELECT * FROM basics.students;