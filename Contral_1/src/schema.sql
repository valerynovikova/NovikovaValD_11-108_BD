drop table if exists branch;
drop table if exists city;
drop table if exists loan;
drop table if exists client;

create table loan
(
    id serial primary key,
    start_date  date,
    finish_date date,
    status char(20),
    amount_new_client integer check ( amount_new_client > 0 and amount_new_client < 50001),
    amount_old_client integer check( amount_old_client > 0 and amount_old_client < 150001)
);

create table client
(
    id serial primary key,
    first_name char(20),
    middle_name char(20),
    last_name char(20),
    loan_id serial,
    constraint loan_id_fk foreign key (loan_id)
        references loan(id),
    address char(20),
    passport char(20)
);

create table branch
(
    id serial primary key,
    name_branch char(20),
    address char(20),
    client_id serial,
    constraint client_id_fk foreign key (client_id)
        references client(id)
);



create table city
(
    id serial primary key ,
    name_city char(100),
    branch_id serial,
    constraint branch_id_fk foreign key (branch_id)
        references branch(id)

);







