INSERT INTO car (plate_number, color, year, model)
VALUES ( 'krot', 'blue', 1998, 'opel');
INSERT INTO car (plate_number, color, year, model)
VALUES ( 'ttt', 'blue', 2017, 'opel');
INSERT INTO car (plate_number, color, year, model)
VALUES ( 'yy', 'red', 1998, 'mazda');
INSERT INTO car (plate_number, color, year, model)
VALUES ( 'tuuutt', 'red', 2017, 'kotiazda');
INSERT INTO car (plate_number, color, year, model)
VALUES ( 'au197345', 'pink', 2017, 'bmv');
INSERT INTO car (plate_number, color, year, model)
VALUES ( 'a197345', 'pink', 1989, 'leksus');
INSERT INTO car (plate_number, color, year, model)
VALUES ( 'hhh08', 'pink', 2017, 'leksus');

INSERT INTO user (name, surname, contact)
VALUES ( 'vasia', null, 'tel 063444445 adres Agetstvo " Mir');
INSERT INTO user (name, surname, contact)
VALUES ( 'vasia', 'kolia', 'tel 911 ');
INSERT INTO user (name, surname, contact)
VALUES ( 'alena', 'ignatieva',  'kot@gmail.com');
INSERT INTO user (name, surname, contact)
VALUES ( 'Petr', 'ignatieva',  'kpetia@gmail.com');
INSERT INTO user (name, surname, contact)
VALUES ( 'uuu', '',  '044444444');
INSERT INTO user (name, surname, contact)
VALUES ( 'rrr', 'fff',  'golub');
INSERT INTO user (name, surname, contact)
VALUES ( 'koshkva', 'koshkina',  '064784848');

insert into ads (user_id, car_id, price )
values(1, 4, 1);
insert into ads (user_id, car_id, price )
values(2,5 , 10);
insert into ads (user_id, car_id, price )
values(3,1, 9000);
insert into ads (user_id, car_id, price )
values(4,2, 25000);
insert into ads (user_id, car_id, price )
values(5,3, 25000);
insert into ads (user_id, car_id, price )
values(5,7, 25000);
insert into ads (user_id, car_id, price )
values(6,6, 25001);

insert into deal (ads_id, status, price,user_id )
values(3, 'accepted', 10034,5);
insert into deal (ads_id, status, price, user_id)
values(1, 'activated', 100500,1);
insert into deal (ads_id, status, price,user_id )
values(2, 'declined', 10034,2);
insert into deal (ads_id, status, price,user_id )
values(1, 'accepted', 100500,6);
insert into deal (ads_id, status, price,user_id )
values(2, 'activated', 10034,3);
insert into deal (ads_id, status, price, user_id)
values(2, 'accepted', 100500,4);
insert into deal (ads_id, status, price,user_id )
values(4, 'activated', 10034,5);
insert into deal (ads_id, status, price,user_id )
values(4, 'activated', 10034,6);
insert into deal (ads_id, status, price,user_id )
values(5, 'accepted', 10000,6);
insert into deal (ads_id, status, price,user_id )
values(7, 'accepted', 9000, 1);
insert into deal (ads_id, status, price,user_id )
values(6, 'activated', 9000, 1);
insert into deal (ads_id, status, price,user_id )
values(6, 'activated', 10000, 2);

UPDATE ads
SET deal_id = 4
WHERE id=1;

UPDATE ads
SET deal_id = 1
WHERE id=3;

UPDATE ads
SET deal_id = 6
WHERE id=2;

UPDATE ads
SET deal_id = 7
WHERE id=5;

UPDATE ads
SET deal_id = 9
WHERE id=7;