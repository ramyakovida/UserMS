drop database if exists user_db;
create database user_db;
use user_db;

create table buyer (
buyer_id integer auto_increment,
name varchar(30),
email varchar(30),
phone_number varchar(10),
password varchar(60),
is_privileged varchar(5),
reward_points varchar(20),
is_active varchar(5),

constraint buyer_pk primary key (buyer_id)

);

insert into buyer values(1,'Jack','jack@gmail.com',9009009001,'Jack@123','true',1000,'true');
insert into buyer values(2, 'Jill', 'jill@gmail.com',  9009009002,  'Jill@123', 'true', 1500, 'true');
insert into buyer values(3,'Sam','jack@gmail.com',9009009003,'Sam@123','true',2000,'true');
insert into buyer values(4,'Toby','toby@gmail.com',9009009004,'Toby@123','true',750,'true');
insert into buyer values(5,'Albert','albert@gmail.com',9009009005,'Albert@123','true',10000,'true');


create table seller (
seller_id integer auto_increment,
name varchar(30),
email varchar(30),
phone_number varchar(10),
password varchar(60),
is_active varchar(5),

constraint seller_pk primary key (seller_id)

);


insert into seller values(1,'Zan','zan@gmail.com',9001900001,'Zan@123','true');
insert into seller values(2,'Ben','ben@gmail.com',9001900002,'Ben@123','true');
insert into seller values(3,'Mike','mike@gmail.com',9001900001,'Mike@123','true');

create table wishlist (
buyer_id integer,
prod_id integer,


constraint wishlist_pk primary key (prod_id,buyer_id)

);

insert into wishlist values(1,3);
insert into wishlist values(3,1);
insert into wishlist values(1,2);
insert into wishlist values(5,6);
insert into wishlist values(4,4);
insert into wishlist values(5,5);


create table cart (
buyer_id integer ,
prod_id integer,
quantity integer,


constraint wishlist_pk primary key (prod_id,buyer_id)

);

insert into cart values(1,3,1);
insert into cart values(3,1,2);
insert into cart values(1,2,1);
insert into cart values(5,6,3);
insert into cart values(4,4,1);
insert into cart values(5,5,1);