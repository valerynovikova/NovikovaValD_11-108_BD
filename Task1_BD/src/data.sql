update client
set cur_location = 'Kazan',
    age = 30
where id = 2;

update order
set name_car = 'Lada Kalina',
    name_driver = 'Uzurbek Mamatoliev'
where id = 5;


insert into client (first_name, last_name, age, cur_location)
values ('Карина', 'Новикова', '23', 'Kazan'),
       ('Дмитрий', 'Новиков', '25', 'Иркутск'),
       ('Вероника', 'Сколкова', '25', 'Екатеринбург');


insert into order (name_car, number_car, name_driver, finish_time, start_time)
values ('Lada', 'К567ОВ', 'Нурлан', '15:43', '15:30'),
       ('BMW', 'А567ОВ', 'Александр', '16:53', '16:20'),
       ('Audi', 'В987ОВ', 'Алексей', '12:03', '12:13'),
       ('Mazda', 'О489РП', 'Сергей', '20:24', '20:34');

insert into car (name_car, number_car, color, tariff)
values ('Lada', 'К567ОВ', 'черный', 'комфорт'),
       ('BMW', 'А567ОВ', 'синий', 'эконом'),
       ('Audi', 'В987ОВ', 'белый', 'премиум'),
       ('Mazda', 'О489РП', 'желтый', 'доставка');

insert into driver (name, rating)
values ('Islam', '5'),
       ('Нурлан', '4'),
       ('Алексей', '4'),
       ('Сергей', '3');
