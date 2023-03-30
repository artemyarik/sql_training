CREATE DATABASE momobase;


CREATE TABLE parts (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	cost INT NOT NULL,
	number VARCHAR(50) NOT NULL,
	data_made DATE NOT NULL,
	data_off DATE NOT NULL,
	description VARCHAR(255)
);


CREATE TABLE cars (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	number VARCHAR(50) NOT NULL,
	data DATE NOT NULL
);


INSERT INTO parts (name, cost, number, data_made, data_off, description) VALUES('Transmision', 3000, 'cd4e', '2007-01-01', '2009-01-01', 'Transmision CD4E for Ford 2007-2008');
INSERT INTO parts (name, cost, number, data_made, data_off, description) VALUES('ENGINE 2.3 duratech', 5000, 'dura23', '2007-01-01', '2009-01-01', 'Engine 2.3 for Ford 2007-2008');
INSERT INTO parts (name, cost, number, data_made, data_off, description) VALUES('ENGINE 2.5 duratech', 6000, 'dura25', '2009-01-01', '2011-01-01', 'Engine 2.5 for Ford 2009-2011');
INSERT INTO parts (name, cost, number, data_made, data_off, description) VALUES('Transmision 6f35', 3000, '6f35', '2009-01-01', '2011-01-01', 'Transmision 6f35 for Ford 2009-2011');
INSERT INTO parts (name, cost, number, data_made, data_off, description) VALUES('Oil Ford', 100, 'for5w30', '2006-01-01', '2011-01-01', 'Oil for Ford Engine');
INSERT INTO parts (name, cost, number, data_made, data_off) VALUES('Oil Castrol', 60, 'cas530', '2006-01-01', '2011-01-01');

INSERT INTO cars (name, number, data) VALUES('Ford Escape', 'esc2', '2007-01-01');
INSERT INTO cars (name, number, data) VALUES('Ford Kuga', 'kuga12', '2012-01-01');
INSERT INTO cars (name, number, data) VALUES('Ford Mondeo' 'mondeo4', '2008-01-01');
INSERT INTO cars (name, number, data) VALUES('Mazda 6', 'mzd6', '2005-01-01');

SELECT * FROM parts;

SELECT * FROM cars;

SELECT * FROM parts
WHERE data_made > '2008-01-01'
ORDER BY  cost;

SELECT * FROM parts p
JOIN cars c ON p.data_made >= c.data AND p.data_off <= c.data
