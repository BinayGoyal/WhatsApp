-- create table
create table customer_details(
	id serial primary key,
	customer_name varchar(20),
	contact_number varchar(10) NOT NULL
);

-- insert values in the table
insert into customer_details (customer_name, contact_number) values ('Binay Goyal','9056533803');
insert into customer_details values (default,'RJ','7696236401');
insert into customer_details (id,customer_name,contact_number) values (default,'Akshu','9780060487');
insert into customer_details (contact_number) values ('9501057990');

-- update query
update customer_details set customer_name='Raghav Jindal' where customer_name='RJ';

-- as 
--  just prints with new column name, doesn't actually change
select id as customer_id from customer_details;

-- change column name
alter table customer_details rename column id to customer_id;

-- delete query
delete from customer_details where contact_number like '%01';

-- -- gives whole table
select * from customer_details;

-- like clause
select from customer_details where contact_number like '%01';

select customer_name from customer_details where contact_number like '%80%';

select customer_name from customer_details where contact_number like '%6__1';

select customer_name from customer_details where contact_number like '%80_';

-- gives top rows
select * from customer_details limit 2;
select contact_number from customer_details where contact_number like '%0%' limit 2;

-- order by
select customer_name from customer_details where customer_name!='baksh' order by contact_number, customer_name ;
select customer_name from customer_details where customer_name not like 'bak%' order by contact_number, customer_name ;

-- -- by default... ascending order
select * from customer_details order by contact_number;
select * from customer_details order by customer_name asc;

-- -- descending order
select customer_name from customer_details order by contact_number desc;

-- -- delete table and its info
-- drop table customer_details;

-- -- to find database host
-- SELECT boot_val,reset_val FROM pg_settings WHERE name='listen_addresses';