INSERT INTO car (license, color, year, model)
VALUES ( 'krot', 'blue', 1998, 'opel');
INSERT INTO car (license, color, year, model)
VALUES ( 'ttt', 'blue', 1901, 'opel');
INSERT INTO car (license, color, year, model)
VALUES ( 'yy', 'red', 2017, 'mazda');
INSERT INTO car (license, color, year, model)
VALUES ( 'tuuutt', 'red', 2017, 'kotiazda');
INSERT INTO car (license, color, year, model)
VALUES ( 'au197345', 'pink', 2000, 'bmv');

INSERT INTO user (name, surname, contact_info)
VALUES ( 'vasia', null, 'tel 063444445 adres Agetstvo " Mir');
INSERT INTO user (name, surname, contact_info)
VALUES ( 'vasia', 'kolia', 'tel 911 ');
INSERT INTO user (name, surname, contact_info)
VALUES ( 'alena', 'ignatieva',  'kot@gmail.com');
INSERT INTO user (name, surname, contact_info)
VALUES ( 'Petr', 'ignatieva',  'kpetia@gmail.com');
INSERT INTO user (name, surname, contact_info)
VALUES ( 'uuu', '',  '044444444');
INSERT INTO user (name, surname, contact_info)
VALUES ( 'rrr', 'fff',  'golub');

insert into ads (user_id, car_id, price )
values(1, 4, 1);
insert into ads (user_id, car_id, price )
values(2,5 , 10);
insert into ads (user_id, car_id, price )
values(3,1, 9000);
insert into ads (user_id, car_id, price )
values(4,2, 25000);


insert into deal (ads_id, status, price,user_id )
values(3, 'accept', 10034,5);
insert into deal (ads_id, status, price, user_id)
values(1, 'active', 100500,1);
insert into deal (ads_id, status, price,user_id )
values(2, 'decline', 10034,2);
insert into deal (ads_id, status, price,user_id )
values(1, 'accept', 1005001,6);
insert into deal (ads_id, status, price,user_id )
values(2, 'active', 10034,3);
insert into deal (ads_id, status, price, user_id)
values(2, 'active', 100500,4);
insert into deal (ads_id, status, price,user_id )
values(4, 'decline', 10034,5);


UPDATE ads
SET deal_id = 4
WHERE id=1;

UPDATE ads
SET deal_id = 1
WHERE id=3;