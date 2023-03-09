create table salesperson(
	salesperson_id SERIAL PRIMARY key,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	email VARCHAR(25),
	phone VARCHAR(15)
);

create table invoice (
	invoice_number SERIAL primary key,
	sale_date DATE,
	invoice_total NUMERIC(10,2),
	vehicle_id integer not null,
	seller_id integer not null,
	buyer_id integer not null,
	foreign key(vehicle_id) references vehicle(vin),
	foreign key(seller_id) references salesperson(salesperson_id),
	foreign key (buyer_id) references customer(customer_id)
);

create table vehicle (
	vin serial primary key,
	make VARCHAR(25),
	model VARCHAR(25),
	model_year INTEGER,
	price NUMERIC(10,2),
	mileage INTEGER,
	for_sale BOOLEAN
);

create table part (
	part_id SERIAL primary key,
	part_number VARCHAR(25),
	part_name VARCHAR(25),
	part_cost numeric(10,2),
	part_retail numeric(10,2)
);

create table mechanic(
	tech_id SERIAL primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	labor_rate NUMERIC(6,2)
);

create table service_ticket(
	service_ticket SERIAL primary key,
	service_total NUMERIC(10,2),
	serviced_vehicle integer not null,
	vehicle_owner integer not null,
	service_tech integer not null,
	parts_used integer,
	foreign key(serviced_vehicle) references vehicle(vin),
	foreign key(vehicle_owner) references customer(customer_id),
	foreign key(service_tech) references mechanic(tech_id),
	foreign key(parts_used) references part(part_id)
);

select * from vehicle;


 