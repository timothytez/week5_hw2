CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR (100),
	phone_number VARCHAR (15)
	);
	

CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	film_id INTEGER NOT NULL,
	ticket_cost NUMERIC (8,2),
	total_amount PRIMARY KEY NUMERIC (10,2),
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
	);


CREATE TABLE concessions(
	snack_id SERIAL PRIMARY KEY,
	snack_name VARCHAR (50),
	snack_amount NUMERIC (8,2),
	FOREIGN KEY (total_amount) REFERENCES tickets (total_amount)
	);


CREATE TABLE movies(
	film_id SERIAL PRIMARY KEY,
	film_title VARCHAR (150),
	film_genre VARCHAR (12),
	film_rating VARCHAR (5),
	film_duration NUMERIC (60,240),
	film_sterioscopes VARCHAR (2)
	);
	