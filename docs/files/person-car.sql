create table car (
	car_uuid UUID NOT NULL PRIMARY KEY,
	make VARCHAR(100) NOT NULL,
	model VARCHAR(100) NOT NULL,
	price Numeric(19, 2) NOT NULL
);

create table person (
    person_uuid UUID NOT NULL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	email VARCHAR(100) UNIQUE,
	date_of_birth DATE NOT NULL,
	country_of_birth VARCHAR(50) NOT NULL,
	car_uuid UUID REFERENCES car(car_uuid) UNIQUE
);

insert into person (person_uuid, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Lalo', 'Sowte', 'Male', 'lsowte0@sina.com.cn', '2024-11-16', 'Palestinian Territory');
insert into person (person_uuid, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Townsend', 'Le Grove', 'Male', null, '2024-11-12', 'Canada');
insert into person (person_uuid, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Cort', 'Lepere', 'Male', 'clepere2@e-recht24.de', '2024-02-28', 'China');
insert into person (person_uuid, first_name, last_name, gender, email, date_of_birth, country_of_birth) values (uuid_generate_v4(), 'Dorolice', 'Kilminster', 'Male', 'm@gmail.com', '2024-11-12', 'Sweden');


insert into car (car_uuid, make, model, price) values (uuid_generate_v4(), 'Ford', 'Fusion', 20000.34);
insert into car (car_uuid, make, model, price) values (uuid_generate_v4(), 'Toyota', 'Corolla', 15000.00);
insert into car (car_uuid, make, model, price) values (uuid_generate_v4(), 'Honda', 'Civic', 18000.00);
insert into car (car_uuid, make, model, price) values (uuid_generate_v4(), 'Chevrolet', 'Malibu', 22000.00);