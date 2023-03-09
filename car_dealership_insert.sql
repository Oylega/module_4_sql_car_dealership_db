insert into customer VAlues(
		001,
		'Crazy Dave',
		'Car Dealer',
		'crazydavecardealer@cdcd.com',
		'212-555-1234'
)

insert into customer values(
		002,
		'Bob',
		'Smith',
		'bsmith@gmail.com',
		'212-555-5678'
);

insert into salesperson values(
	01,
	'Dave',
	'Insano'
);

insert into salesperson values(
	02,
	'Saul',
	'Goodman'
);

insert into vehicle values(
	1234567890,
	'Toyota',
	'Camry',
	2023,
	29999,
	3,
	TRUE
);

insert into mechanic values(
	001,
	'Felix',
	'Fixit',
	55.00
);

insert into mechanic values(
	002,
	'Bob',
	'Brokit',
	35.00
);

insert into part values(
	01,
	123456,
	'bolt',
	1,
	25
);

insert into part values(
	888,
	345648,
	'flux capacitor',
	999,
	1999
);

insert into invoice (
	invoice_number, sale_date, invoice_total, vehicle_id, seller_id, buyer_id)
values(
	01, '2023-02-25', 34567.82, 1234567890, 02, 02);

insert into invoice (
	invoice_number, sale_date, invoice_total, vehicle_id, seller_id, buyer_id)
values(02, '2023-02-26', 96231.48, 567987, 02, 03);

insert into service_ticket (
	service_ticket, service_total, serviced_vehicle, vehicle_owner, service_tech, parts_used
)
values (01, 21462.13, 567987, 2, 2, 888)

insert into service_ticket (
	service_ticket, service_total, serviced_vehicle, vehicle_owner, service_tech, parts_used
)
values (02, 240, 567987, 2, 1, 1)


select * from customer;
