DROP TABLE IF EXISTS car;
CREATE TABLE car(
id int AUTO_INCREMENT PRIMARY KEY ,
license VARCHAR(25) NOT NULL UNIQUE,
color VARCHAR(50),
year INT CHECK(year > 1900),
model VARCHAR(50)
);

DROP TABLE IF EXISTS user;
CREATE TABLE user(
id int AUTO_INCREMENT PRIMARY KEY ,
name VARCHAR(20) NOT NULL ,
surname VARCHAR(50),
contact_info VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS deal;
CREATE TABLE deal(
id int AUTO_INCREMENT PRIMARY KEY ,
ads_id  int ,
status ENUM ('active', 'decline', 'accept'),
user_id int NOT NULL ,
price int check (price > 0),
FOREIGN KEY(user_id)  REFERENCES user(ID),
);

DROP TABLE IF EXISTS ads;
CREATE TABLE ads(
id int AUTO_INCREMENT PRIMARY KEY ,
user_id  int NOT NULL  ,
car_id int NOT NULL,
price int check (price > 0),
deal_id int,
FOREIGN KEY(user_id)  REFERENCES user(ID),
FOREIGN KEY (deal_id) REFERENCES deal(ID),
FOREIGN KEY (car_id) REFERENCES car(ID)
);

ALTER TABLE deal ADD CONSTRAINT ads_id FOREIGN KEY(ads_id) REFERENCES ads(ID);