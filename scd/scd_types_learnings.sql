use sql_practice;
select name from sys.tables;

create table seller(
seller_key int identity(1,1) primary key,
seller_id bigint,
seller_name varchar(75),
store_location varchar(75),
effective_date date,
end_date date,
is_active bit
);

/*
    History Record
*/
insert into seller(
seller_id,seller_name,
store_location,effective_date,end_date,is_active
)
values
 (501,'fast seller.Inc','Seattle WA','2022-01-01',Null,1);

 select * from seller;

/*
     SCD Type - 2
     New record
     1. update the isactive flag as false for the history record
     2. insert the new record
*/

update seller 
set end_date=cast(getdate() as date),is_active=0
where seller_id =501;


insert into seller(seller_id,seller_name,store_location,effective_date,end_date,is_active)
values
 (501,'express way.Inc','Los Angeles',cast(GETDATE() as date),Null,1);

select * from seller;

create table dim_Product(
  product_id int primary key,
  product_title varchar(75),
  previous_category varchar(75),
  current_category varchar(75)
);

insert into dim_Product(product_id,product_title,previous_category,current_category)
values 
  (201,'Amazion fire Tv stick',Null,'Streaming Device');

select * from dim_Product;
truncate table dim_product;
update dim_Product
set previous_category = current_category,
current_category = 'Media Players'
where product_id = 201;
