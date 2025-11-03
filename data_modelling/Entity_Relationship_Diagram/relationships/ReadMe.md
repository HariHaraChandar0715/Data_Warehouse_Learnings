## Entity Relationship Modeling & Diagram:
It is a graphical representation of entities and their relationship.

### Entity:
Entity is an object which holds the data like what sort of datas that needs to be
captured by this entity.

## Attributes:
Attributes are the data points that define what data that needs to be stored in that entity 
and gives meaning to the entity.

## Relationship:
Relationship defines how each and every entities are related/associated with each others. 

## Identifying Relationship:
Identifying relationships are the ones where the child table is highly coupled with parent table.The child table cannot exist without a parent table.

```SQL
    -- Creating a schema
    create schema practice authorization dbo

    -- Creating a table
    create table practice.Customer(
        customer_id identity(1,1) primary key int,
        customer_name varchar(50)
    );

    create table practice.PhoneNumber(
        customer_id int,
        phone_number bigint,
        phone_number_type varchar(50)
        foreign key(customer_id) references Customer(customer_id)
        primary key(customer_id,phone_number)
    );

    -- Inserting values to the tables
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


```

## Non Identifying Relationship:
Non Identifying relationships are the ones where the child is loosely coupled with the parent table. The child table can exist without a prent table.

```SQL
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

 ```
