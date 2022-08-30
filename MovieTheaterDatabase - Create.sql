
-------------------------------------
-- Table Creation
-------------------------------------
create table film (
	film_id SERIAL primary key,
	film_name VARCHAR(100),
	run_time INTEGER
);

create table screen (
	screen_id SERIAL primary key,
);

create table customer (
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);

create table concession (
	concession_id SERIAL primary key,
	description VARCHAR(50),
	price NUMERIC(4,2)
);

create table showing (
	showing_id SERIAL primary key,
	show_date DATE,			--DATETIME would not run
	show_time TIME,
	film_id INTEGER not null,
	screen_id INTEGER not null,
	foreign key(film_id) references film(film_id),
	foreign key(screen_id) references screen(screen_id)
)

create table seat (
	seat_id SERIAL primary key,
	label_ VARCHAR(3),
	screen_id INTEGER not null,
	foreign key(screen_id) references screen(screen_id)
);

create table purchase (
	purchase_id SERIAL primary key,
	customer_id INTEGER not null,
	sub_total NUMERIC(5,2),
	total NUMERIC(5,2),
	foreign key(customer_id) references customer(customer_id)
);

create table ticket (
	ticket_id SERIAL primary key,
	price NUMERIC(2,2),
	showing_id INTEGER not null,
	seat_id INTEGER not null,
	purchase_id INTEGER not null,
	foreign key(showing_id) references showing(showing_id),
	foreign key(seat_id) references seat(seat_id),
	foreign key(purchase_id) references purchase(purchase_id)
);

create table concession_order (
	concession_order_id SERIAL primary key,
	purchase_id INTEGER not null,
	concession_id INTEGER not null,
	foreign key(purchase_id) references purchase(purchase_id),
	foreign key(concession_id) references concession(concession_id)
);