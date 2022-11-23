drop table if exists airport;
drop table if exists airplane;
drop table if exists passenger;
drop table if exists flight;
drop table if exists crew;

create table passenger
(
    id serial primary key,
    name_passenger char(20),
    ticket char(6)
);



create table crew
(
    id serial primary key ,
    name_pilot char(100),
    name_stewardess char(100),
    name_engineer char(100)

);

create table flight
(
    id serial primary key,
    start_time  time,
    finish_time time,
    arriv_location char(20),
    depar_location char(20),
    day_departure char(20),
    crew_id serial,
    constraint crew_id_fk foreign key (crew_id)
        references crew(id),
    passenger_id serial,
    constraint passenger_id_fk foreign key (passenger_id)
        references passenger(id)
);

create table airplane
(
    id serial primary key,
    name_airplane char(20),
    name_pilot char(100),
    color char(20),
    airport_id serial,
    constraint airport_id_fk foreign key (airport_id)
        references airport(id)
);

create table airport
(
    id bigserial primary key,

    name_airport char(20),
    cur_location char(20),
    airplane_id serial,
    flight_id serial,
    constraint flight_id_fk foreign key (flight_id)
        references flight(id)

);



