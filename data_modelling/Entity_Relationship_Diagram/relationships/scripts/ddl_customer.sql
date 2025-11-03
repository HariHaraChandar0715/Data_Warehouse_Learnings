/*
    Creating a new schema named practice
*/
create schema practice authorization dbo;
go

/*
    Use the database sql_practice
*/
use sql_practice;

/*
      Table Creation - Customer
*/
create table sql_practice.practice.Customer(
  customer_id int primary key,
  customer_name varchar(75),
  customer_email varchar(100),
  country varchar(25),
  city varchar(25)
);

create table practice.Country(
  country_id int identity(1,1) primary key,
  country_name varchar(50),
  continent varchar(50)
);
create table practice.City(
  city_id int identity(1,1) primary key,
  country_id int,
  city_name varchar(50),
  city_zone varchar(50)
  foreign key(country_id) references practice.Country(country_id)
);


/*
      Table Creation - PhoneNumber
*/
create table sql_practice.practice.PhoneNumber(
  customer_id int,
  phone_number_type varchar(50),
  phone_number bigint,
  primary key (customer_id,phone_number),
  foreign key (customer_id) references sql_practice.practice.Customer(customer_id)
  
);

/*
      Altering the table 
*/
alter table practice.Customer alter column customer_id int not null;
alter table practice.Customer add constraint pk_customer primary key(customer_id);


/*
     Inserting values into the Customer table
*/
insert into practice.Customer(customer_id,customer_name,customer_email,country,city)
values
  (2,'Albert','albert@gmail.com','USA','New York'),
  (3,'Jhonson','jhonson@gmail.com','USA','Boston'),
  (4,'Mary','mary@gmail.com','USA','California'),
  (5,'Andrew','andrew@gmail.com','USA','Los Angeles');

insert into sql_practice.practice.PhoneNumber(customer_id,phone_number_type,phone_number)
values
 (1,'mobile',8925448030),
 (1,'Landline',98765490),
 (2,'mobile',8056495006),
 (2,'Landline',94453267),
 (3,'mobile',8765213489),
 (3,'Landline',76548913);

 insert into practice.Country(country_name,continent)
 values
   ('India','Asia'),
   ('China','Asia'),
   ('Pakisthan','Asia'),
   ('Singapore','Asia'),
   ('England','United Kingdom'),
   ('France','Europe Union'),
   ('Italy','Europe Union'),
   ('Germany','European Union');

insert into practice.City(city_name,city_zone,state)
values
  ('Chennai','South East','Tamil Nadu'),
  ('Banglore','South West','Karnataka'),
  ('Coimbatore','South West','Tamil Nadu'),
  ('Mumbai','South West','Maharastra'),
  ('Hyderabad','South East','Telangana'),
  ('Kolkata','North East','West Bengal'),
  ('Cochin','South West','Kerala'),
  ('Trivandrum','South West','Kerala');

Alter table practice.City add state varchar(50);

select * from sql_practice.practice.Customer;
select * from sql_practice.practice.PhoneNumber;

select * from practice.Country;
select * from practice.City;


