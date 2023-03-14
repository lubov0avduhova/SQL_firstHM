CREATE TYPE manufacturer AS ENUM
('Apple', 'Samsung', 'Huawei');

CREATE TABLE phones(
	id serial PRIMARY KEY,
	product_name VARCHAR(45) NOT NULL,
	manufacture manufacturer NOT NULL,
	product_count SMALLSERIAL NOT NULL check(product_count between 1 and 5),
	price Serial NOT NULL
);

INSERT INTO phones (product_name,manufacture, product_count,price)
VALUES
('Phone X', 'Apple', 3, 76000),
('Phone 8', 'Apple', 2, 51000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 41000),
('P 20 Pro', 'Huawei', 5, 36000);