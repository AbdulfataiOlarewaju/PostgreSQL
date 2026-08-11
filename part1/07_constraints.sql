

-- colums constraints
-- NOT NULL, UNIQUE, DFAULT, CHECK

-- this are databse rules, they are very powerful bcause they protect our data so that user will not put wrong data but you still need to do backend validation

DROP TABLE IF EXISTS basics.accounts;

CREATE TABLE basics.accounts (
    id SERIAL PRIMARY KEY,

    full_name TEXT NOT NULL,

    email TEXT NOT NULL UNIQUE,

    is_active BOOLEAN DEFAULT true,

    age INTEGER CHECK (age>=18),

    created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO basics.accounts (full_name, email, age)
VALUES ('Abdulfatai', 'abdulfatai@gamil.com', 20);

-- SELECT * FROM basics.accounts

-- INSERT INTO basics.accounts (email, age)
-- VALUES ('missingname@gamil.com', 30);


INSERT INTO basics.accounts (full_name, email, age)
VALUES ('duplicate email user', 'abdulfatai@gamil.com', 20);