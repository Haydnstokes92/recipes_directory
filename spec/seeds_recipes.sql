TRUNCATE TABLE recipes RESTART IDENTITY; -- replace with your own table name.

INSERT INTO recipes (id, name, cooking_time, rating) VALUES (1, 'burger', 80, 4);
INSERT INTO recipes (id, name, cooking_time, rating) VALUES (2, 'salad', 25, 5);
INSERT INTO recipes (id, name, cooking_time, rating) VALUES (3, 'hotdog', 45, 3);
INSERT INTO recipes (id, name, cooking_time, rating) VALUES (4, 'cereal', 90, 5);