create materialized view new_car as select * from car;
select * from new_car;

insert into car(name_car) values ('Mersedes');
select * from car;
select * from new_car;

REFRESH MATERIALIZED VIEW new_car;
SELECT * FROM new_car;

ALTER MATERIALIZED VIEW new_car RENAME name_car TO new_name_car;
SELECT * from new_car;
ALTER MATERIALIZED VIEW new_car RENAME TO new_car2;

DROP MATERIALIZED VIEW new_car2;

create materialized view ord as select * from orders;
select * from ord;

insert into orders(name_driver) values ('Islam');
select * from orders;
select * from ord;

REFRESH MATERIALIZED VIEW ord;
SELECT * FROM ord;

ALTER MATERIALIZED VIEW ord RENAME name_car TO ord_name_car;
SELECT * from ord;
ALTER MATERIALIZED VIEW ord RENAME TO ord2;

DROP MATERIALIZED VIEW ord2;

create materialized view driv as select * from driver;
select * from driv;

insert into driver(rating) values ('5');
select * from driver;
select * from driv;

REFRESH MATERIALIZED VIEW driv;
SELECT * FROM driv;

ALTER MATERIALIZED VIEW driv RENAME rating TO driv_rating;
SELECT * from driv;
ALTER MATERIALIZED VIEW driv RENAME TO driv2;

DROP MATERIALIZED VIEW driv2;

create materialized view new_client as select * from client;
select * from new_client;

insert into client(age) values ('20');
select * from client;
select * from new_client;

REFRESH MATERIALIZED VIEW new_client;
SELECT * FROM new_client;

ALTER MATERIALIZED VIEW new_client RENAME first_name TO new_client_first_name;
SELECT * from new_client;
ALTER MATERIALIZED VIEW new_client RENAME TO new_client2;

DROP MATERIALIZED VIEW new_client2;


