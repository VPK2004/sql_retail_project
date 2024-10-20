Create database OOSRR;
use OOSRR;
create table info(product_name varchar(100),product_id int primary key,description varchar(100));
insert into info values("running shoe","101","footwear"),
("track pant",102,"lower"),
("half sleves",103,"upper"),
("glass",104,"lower"),
("watch",105,"time"),
("half sleves",106,"upper");
desc info;
insert into info values("knee cap","107","leg guard"),
("whites",108,"upper"),
("bat",109,"thing"),
("ball",110,"thing");
select*from info;
alter table info drop primary key;
show create table info;

create table finance(product_id int,listing_price int,sales_price int,discount int );
alter table finance add column fid int not null;
insert into finance values(
101,200,150,10,1),
(103,250,200,20,3),
(102,300,450,50,4),
(107,200,150,20,5),
(104,200,250,30,1),
(108,200,100,10,7);
insert into finance values(105,200,150,10,11),
(109,250,200,20,22),
(105,300,450,50,43),
(133,200,150,20,54),
(145,200,250,30,09),
(143,200,100,10,76);
select*from finance;

create table reviews(product_name varchar(100),product_id int,rating decimal(2,1),revenue varchar(100));
insert into reviews values("puma",103,(2.5),"$20");
insert into reviews values("nike",102,(3.5),"$40"),("under arm",104,(4.5),"$10"),("nike",105,(3.5),"$40");
insert into reviews values("pro",109,(3.5),"$40"),("appe",108,(4.5),"$30"),("turn",106,(3.5),"$40");
select*from reviews;
---------------------------------------------
