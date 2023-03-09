
-- Procedure to insert customer data
create or replace procedure newcustomer(
	_customer_id integer,
	_first_name varchar(25),
	_last_name varchar(25),
	_email varchar(65),
	_phone varchar(15)) 
language plpgsql
as $$
begin 
	insert into customer(
		customer_id,
		first_name,
		last_name,
		email,
		phone)
	 values(
		_customer_id,
		_first_name,
		_last_name,
		_email,
		_phone);
	commit;			
end;
$$
		
call newcustomer(03, 'Bill', 'Burr', 'bburr@gmail.com', '212-555-9876');			
select * from customer


-- Stored procedure to enter new vehicle data
create or replace procedure newvehicle(
	_vin integer,
	_make varchar(25),
	_model varchar(25),
	_model_year integer,
	_price numeric(10,2),
	_mileage integer,
	_for_sale boolean)
language plpgsql
as $$
begin 
	insert into vehicle(
		vin,
		make,
		model,
		model_year,
		price,
		mileage,
		for_sale)
	 values(
		_vin,
		_make,
		_model,
		_model_year,
		_price,
		_mileage,
		_for_sale);
	commit;			
end;
$$

create or replace procedure newvehicle(
	_vin integer,
	_make varchar(25),
	_model varchar(25),
	_model_year integer,
	_price numeric(10,2),
	_mileage integer,
	_for_sale boolean)
language plpgsql
as $$
begin 
	insert into vehicle(
		vin,
		make,
		model,
		model_year,
		price,
		mileage,
		for_sale)
	 values(
		_vin,
		_make,
		_model,
		_model_year,
		_price,
		_mileage,
		_for_sale);
	commit;			
end;
$$

call newvehicle(567987, 'Delorean', 'DMC-12', 1981, 72995, 981, true);

select * from vehicle;