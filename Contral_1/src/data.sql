
insert into loan ( start_date, finish_date, status, amount_new_client, amount_old_client )
values ('17-01-2002', '30-02-2002', 'закрыт', '20000', '70000'),
       ('20-02-2001', '25-02-2001', 'открыт', '15000', '80000'),
       ('21-03-2003', '29-03-2003', 'открыт', '10000', '90000'),
       ('22-04-2001', '30-04-2001', 'закрыт', '15000', '100000');


insert into client (first_name, middle_name, last_name, address, passport)
values ('Islam', 'P.', 'P.', 'st.Pyshkina','9216 548900'),
       ('Kamila', 'M.', 'L.', 'st.Kremlevskay', '9215 456788'),
       ('Valerie', 'K.', 'M.', 'st. Pygacheva', '9217 345678'),
       ('Alina', 'L.', 'M.', 'st.Amirchana', '9216 5647');


insert into branch (name_branch, address)
values ('Bank1', 'st.Pyshkina'),
       ('Bank2', 'st.Amirchana'),
       ('Bank3', 'st.Kremlevskaya'),
       ('Bank4', 'st.Pyshkina');


insert into city (name_city)
values ('Kazan'),
       ('Moscow'),
       ('Omsk');


