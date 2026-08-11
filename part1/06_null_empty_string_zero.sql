

-- null - unknown/missing value
-- empty string - known string but contains no charater
-- zero -> actual numeric value of 0


DROP TABLE IF EXISTS basics.value_examples;

CREATE TABLE basics.value_examples (
    id SERIAL PRIMARY KEY,

    nickname TEXT,

    bio TEXT,

    score INTEGER
);

INSERT INTO basics.value_examples (nickname, bio, score)
VALUES 
-- nickname is null
(null, 'learning postgreSQL', 10),

('', 'empty nickname', 20),

('Abdulfatai', '', 0),

('john', null, null);

-- SELECT * FROM basics.value_examples;

SELECT * FROM basics.value_examples WHERE nickname IS NULL;

SELECT * FROM basics.value_examples WHERE nickname <> ''; -- nickname is not empty

SELECT * FROM basics.value_examples WHERE nickname = ''; -- nickname is empty

SELECT * FROM basics.value_examples WHERE nickname IS NOT NULL;

SELECT * FROM basics.value_examples WHERE score = 0;

