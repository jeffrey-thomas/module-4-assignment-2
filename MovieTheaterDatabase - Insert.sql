
-----------------------------------
--Data Insertion
-----------------------------------

--Films
insert into film ( film_name, run_time) values ( 'The Fellowship of the Ring', 178);

insert into film( film_name, run_time)
values( 'Jurassic Park', 127);

insert into film( film_name, run_time)
values ( 'Iron Man', 126);

insert into film( film_name, run_time)
values ( 'Kung Fu Panda', 92);

--Screens
insert into screen (screen_id) values (1);
insert into screen (screen_id) values (2);


--Concessions
insert into concession (description, price) values ('small popcorn', 3.00);
insert into concession (description, price) values ('medium popcorn', 5.00);
insert into concession (description, price) values ('large popcorn', 7.50);
insert into concession (description, price) values ('small soda', 2.00);
insert into concession (description, price) values ('medium soda', 2.50);
insert into concession (description, price) values ('large soda', 3.00);
insert into concession (description, price) values ('nachos', 5.00);

--Customers
insert into customer( first_name, last_name, address, billing_info) 
values ('Frodo', 'Baggins', 'Bag End, under the Hill', 'gold coins');

insert into customer(
	first_name,
	last_name,
	address,
	billing_info
) values (
	'Dennis',
	'Nedry',
	'Isla Nebular, Costa Rica',
	'111-222-333-444 555 06/07'
);

--Showings
--day 1
insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'13:00:00',
	(select film_id from film where film_name='The Fellowship of the Ring'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'16:30:00',
	(select film_id from film where film_name='Kung Fu Panda'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'18:30:00',
	(select film_id from film where film_name='The Fellowship of the Ring'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'22:00:00',
	(select film_id from film where film_name='Kung Fu Panda'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'13:00:00',
	(select film_id from film where film_name='Iron Man'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'15:30:00',
	(select film_id from film where film_name='Jurassic Park'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'18:00:00',
	(select film_id from film where film_name='Iron Man'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'20:30:00',
	(select film_id from film where film_name='Jurassic Park'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-30',
	'23:00:00',
	(select film_id from film where film_name='Iron Man'),
	2
);

--day 2
insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'13:00:00',
	(select film_id from film where film_name='The Fellowship of the Ring'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'16:30:00',
	(select film_id from film where film_name='Kung Fu Panda'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'18:30:00',
	(select film_id from film where film_name='The Fellowship of the Ring'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'22:00:00',
	(select film_id from film where film_name='Kung Fu Panda'),
	1
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'13:00:00',
	(select film_id from film where film_name='Iron Man'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'15:30:00',
	(select film_id from film where film_name='Jurassic Park'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'18:00:00',
	(select film_id from film where film_name='Iron Man'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'20:30:00',
	(select film_id from film where film_name='Jurassic Park'),
	2
);

insert into showing(
	show_date,
	show_time,
	film_id,
	screen_id
) values (
	'2022-08-31',
	'23:00:00',
	(select film_id from film where film_name='Iron Man'),
	2
);

--Seats
insert into seat (label_, screen_id) values ('A01', 1);
insert into seat (label_, screen_id) values ('A02', 1);
insert into seat (label_, screen_id) values ('A03', 1);
insert into seat (label_, screen_id) values ('A04', 1);
insert into seat (label_, screen_id) values ('A05', 1);
insert into seat (label_, screen_id) values ('A06', 1);
insert into seat (label_, screen_id) values ('A07', 1);
insert into seat (label_, screen_id) values ('A08', 1);
insert into seat (label_, screen_id) values ('A09', 1);
insert into seat (label_, screen_id) values ('A10', 1);
insert into seat (label_, screen_id) values ('B01', 1);
insert into seat (label_, screen_id) values ('B02', 1);
insert into seat (label_, screen_id) values ('B03', 1);
insert into seat (label_, screen_id) values ('B04', 1);
insert into seat (label_, screen_id) values ('B05', 1);
insert into seat (label_, screen_id) values ('B06', 1);
insert into seat (label_, screen_id) values ('B07', 1);
insert into seat (label_, screen_id) values ('B08', 1);
insert into seat (label_, screen_id) values ('B09', 1);
insert into seat (label_, screen_id) values ('B10', 1);
insert into seat (label_, screen_id) values ('C01', 1);
insert into seat (label_, screen_id) values ('C02', 1);
insert into seat (label_, screen_id) values ('C03', 1);
insert into seat (label_, screen_id) values ('C04', 1);
insert into seat (label_, screen_id) values ('C05', 1);
insert into seat (label_, screen_id) values ('C06', 1);
insert into seat (label_, screen_id) values ('C07', 1);
insert into seat (label_, screen_id) values ('C08', 1);
insert into seat (label_, screen_id) values ('C09', 1);
insert into seat (label_, screen_id) values ('C10', 1);

insert into seat (label_, screen_id) values ('A01', 2);
insert into seat (label_, screen_id) values ('A02', 2);
insert into seat (label_, screen_id) values ('A03', 2);
insert into seat (label_, screen_id) values ('A04', 2);
insert into seat (label_, screen_id) values ('A05', 2);
insert into seat (label_, screen_id) values ('A06', 2);
insert into seat (label_, screen_id) values ('A07', 2);
insert into seat (label_, screen_id) values ('A08', 2);
insert into seat (label_, screen_id) values ('A09', 2);
insert into seat (label_, screen_id) values ('A10', 2);
insert into seat (label_, screen_id) values ('B01', 2);
insert into seat (label_, screen_id) values ('B02', 2);
insert into seat (label_, screen_id) values ('B03', 2);
insert into seat (label_, screen_id) values ('B04', 2);
insert into seat (label_, screen_id) values ('B05', 2);
insert into seat (label_, screen_id) values ('B06', 2);
insert into seat (label_, screen_id) values ('B07', 2);
insert into seat (label_, screen_id) values ('B08', 2);
insert into seat (label_, screen_id) values ('B09', 2);
insert into seat (label_, screen_id) values ('B10', 2);
insert into seat (label_, screen_id) values ('C01', 2);
insert into seat (label_, screen_id) values ('C02', 2);
insert into seat (label_, screen_id) values ('C03', 2);
insert into seat (label_, screen_id) values ('C04', 2);
insert into seat (label_, screen_id) values ('C05', 2);
insert into seat (label_, screen_id) values ('C06', 2);
insert into seat (label_, screen_id) values ('C07', 2);
insert into seat (label_, screen_id) values ('C08', 2);
insert into seat (label_, screen_id) values ('C09', 2);
insert into seat (label_, screen_id) values ('C10', 2);

--Purchases/tickets/concession_orders

-- one matinee ticket and one medium popcorn
insert into purchase (
	customer_id,
	sub_total,
	total
) values (
	(select customer_id from customer where last_name = 'Baggins'),
	15.00,
	16.20
);

insert into ticket (
	price,
	showing_id,
	seat_id,
	purchase_id
) values (
	10.00,
	1,
	(select seat_id from seat where screen_id = 1 and label_ = 'B05'),
	1
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	1,
	(select concession_id from concession where description='medium popcorn')
);

-- one evening ticket, small popcorn, large soda
insert into purchase (
	customer_id,
	sub_total,
	total
) values (
	(select customer_id from customer where last_name = 'Baggins'),
	21.00,
	22.68
);

insert into ticket (
	price,
	showing_id,
	seat_id,
	purchase_id
) values (
	15.00,
	12,
	(select seat_id from seat where screen_id = 1 and label_ = 'C06'),
	2
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	2,
	(select concession_id from concession where description='small popcorn')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	2,
	(select concession_id from concession where description='large soda')
);

--One matinee ticket and one of each concession

insert into purchase (
	customer_id,
	sub_total,
	total
) values (
	(select customer_id from customer where last_name = 'Nedry'),
	38.00,
	41.04
);

insert into ticket (
	price,
	showing_id,
	seat_id,
	purchase_id
) values (
	10.00,
	5,
	(select seat_id from seat where screen_id = 2 and label_ = 'A01'),
	3
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	3,
	(select concession_id from concession where description='small soda')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	3,
	(select concession_id from concession where description='medium soda')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	3,
	(select concession_id from concession where description='large soda')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	3,
	(select concession_id from concession where description='large popcorn')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	3,
	(select concession_id from concession where description='medium popcorn')
);
insert into concession_order (
	purchase_id,
	concession_id
) values (
	3,
	(select concession_id from concession where description='small popcorn')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	3,
	(select concession_id from concession where description='nachos')
);

-- Evening ticket, one of each concession and an extra nachos
insert into purchase (
	customer_id,
	sub_total,
	total
) values (
	(select customer_id from customer where last_name = 'Nedry'),
	48.00,
	51.84
);

insert into ticket (
	price,
	showing_id,
	seat_id,
	purchase_id
) values (
	15.00,
	17,
	(select seat_id from seat where screen_id = 2 and label_ = 'A10'),
	4
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='small soda')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='medium soda')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='large soda')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='large popcorn')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='medium popcorn')
);
insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='small popcorn')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='nachos')
);

insert into concession_order (
	purchase_id,
	concession_id
) values (
	4,
	(select concession_id from concession where description='nachos')
);