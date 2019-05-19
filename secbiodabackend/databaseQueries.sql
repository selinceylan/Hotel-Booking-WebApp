CREATE TABLE city (

id IDENTITY,
name VARCHAR(50),
description VARCHAR(255),
image_url VARCHAR(300),
is_active BOOLEAN,

CONSTRAINT pk_city_id PRIMARY KEY (id)
);

INSERT INTO city (name,description,image_url,is_active) VALUES ('Madrid','This is some description for Madrid','https://www.telegraph.co.uk/content/dam/Travel/Destinations/Europe/Spain/Madrid/gran-via-madrid-night-lead-guide.jpg?imwidth=450',true)
INSERT INTO city (name,description,image_url,is_active) VALUES ('Oporto','This is some description for Oporto','http://finedininglovers.cdn.crosscast-system.com/BlogPost/xl_16074_Porto-Portugal-TP.jpg',true)
INSERT INTO city (name,description,image_url,is_active) VALUES ('Ankara','This is some description for Ankara','http://web2.bilkent.edu.tr/bilkentpost/wp-content/uploads/sites/37/2017/08/post8.jpg',true)


create table user_detail(

id IDENTITY,
first_name varchar(50),
last_name varchar(50),
role varchar(10),
enabled boolean,
password varchar(50),
email varchar(100),
contact_number varchar(15),
constraint pk_user_id primary key (id),

);

insert into user_detail (first_name,last_name,role,enabled,password,email,contact_number) values ('test','user','ADMIN',true,'admin','test@gmail.com','88888888')
insert into user_detail (first_name,last_name,role,enabled,password,email,contact_number) values ('selin','ceylan','USER',true,'12345','sc@gmail.com','77777777')
insert into user_detail (first_name,last_name,role,enabled,password,email,contact_number) values ('rum','cakirgoz','OWNER',true,'11111','rc@gmail.com','99999999')

create table hotel (

id IDENTITY,
name VARCHAR(100),
description TEXT,
address varchar(300),
star varchar (10),
rating varchar(10),
image_url_1 VARCHAR(300),
image_url_2 VARCHAR(300),
image_url_3 VARCHAR(300),
is_active boolean,
city_id int,
owner_id int,
constraint pk_hotel_id primary key (id),
constraint fk_hotel_city_id foreign key (city_id) references city(id),
constraint fk_hotel_owner_id foreign key (owner_id) references user_detail(id),


);

insert into hotel (name,description,address,star,rating,image_url_1,image_url_2,image_url_3,is_active,city_id,owner_id)
values ('Petit Palace Alcalá','Set inside a 1930s skyscraper and one of Madrid''s most emblematic buildings, Petit Palace Alcala is located just 250 m from Puerta del Sol.','Vírgen de los peligros 2 (esquina Alcala 23), Madrid City Center, 28013 Madrid, Spain ','4','8.2','https://r-ak.bstatic.com/images/hotel/max1280x900/136/136581776.jpg','https://r-ak.bstatic.com/images/hotel/max1280x900/184/184924783.jpg','https://r-ak.bstatic.com/images/hotel/max1280x900/184/184923744.jpg',true,1,3)