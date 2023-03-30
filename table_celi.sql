CREATE DATABASE momobase;


CREATE TABLE parts (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	cost INT NOT NULL,
	partnum VARCHAR(10) NOT NULL, 
	number VARCHAR(50) NOT NULL,
	data_made DATE NOT NULL,
	data_off DATE NOT NULL,
	description VARCHAR(255)
);


CREATE TABLE cars (
	id BIGSERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	gaz VARCHAR(10) NOT NULL, 
	partnum VARCHAR(50) NOT NULL,
	data DATE NOT NULL
);


INSERT INTO parts (name, cost, partnum, number, data_made, data_off, description) VALUES('Transmision', 3000, 'esc2', 'cd4e', '2007-01-01', '2009-01-01', 'Transmision CD4E for Ford 2007-2008');
INSERT INTO parts (name, cost, partnum, number, data_made, data_off, description) VALUES('ENGINE 2.3 duratech', 5000, 'esc2', 'dura23', '2007-01-01', '2009-01-01', 'Engine 2.3 for Ford 2007-2008');
INSERT INTO parts (name, cost, partnum, number, data_made, data_off, description) VALUES('ENGINE 2.5 duratech', 6000, 'esc2', 'dura25', '2009-01-01', '2011-01-01', 'Engine 2.5 for Ford 2009-2011');
INSERT INTO parts (name, cost, partnum, number, data_made, data_off, description) VALUES('Transmision 6f35', 3000, 'esc2', '6f35', '2009-01-01', '2011-01-01', 'Transmision 6f35 for Ford 2009-2011');
INSERT INTO parts (name, cost, partnum, number, data_made, data_off, description) VALUES('Oil Ford', 100,  'esc2', 'for5w30', '2006-01-01', '2011-01-01', 'Oil for Ford Engine');
INSERT INTO parts (name, cost, partnum, number, data_made, data_off) VALUES('Oil Castrol', 60, 'esc2', 'cas530', '2006-01-01', '2011-01-01');

INSERT INTO cars (name, gaz, partnum, data) VALUES('Ford Escape', 'Gas', 'esc2', '2007-01-01');
INSERT INTO cars (name, gaz, partnum, data) VALUES('Ford Kuga', 'Gas', 'kuga12', '2012-01-01');
INSERT INTO cars (name, gaz, partnum, data) VALUES('Ford Mondeo', 'Gas',  'mondeo4', '2008-01-01');
INSERT INTO cars (name, gaz, partnum, data) VALUES('Mazda 6', 'Gas', 'mzd6', '2005-01-01');

SELECT * FROM parts;

SELECT * FROM cars;

SELECT * FROM parts
WHERE data_made > '2008-01-01'
ORDER BY  cost;

SELECT * FROM parts p
JOIN cars c ON c.data BETWEEN '2009-01-01' AND '20012-01-01'
WHERE cost < 3000;

SELECT name AS "Название детали", IF(cost>=3000, cost*0.7, cost*1) AS "Цена детали"
FROM parts;

SELECT p.number AS "Номер запчасти", p.data_made AS "Год выпуска", c.name AS "Автомобиль" FROM parts p
JOIN cars c ON p.partnum = c.partnum;

