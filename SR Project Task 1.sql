use oosrr;desc info;
desc finance;
desc reviews;
update finance set product_id=110 where fid=43;

desc info;
desc finance;
desc reviews;
desc brand;
update finance set product_id=119 where fid=43;

create table brand(product_id int,Brand_name varchar(100));
insert into brand values("101","Puma"),("102","Addidas"),("103","Nike"),("104","Skecter"),("105","under amoum");
select*from info;
select*from finance;
select*from reviews;
select*from brand;

desc info;
desc finance;
desc reviews;
desc brand;
---------------------------------------------------------
alter table info modify column product_id int primary key;
alter table finance add constraint fk_personfin foreign key(product_id) references info(product_id);
SET foreign_key_checks = 0;
SET foreign_key_checks = 1;
-------------------------------------------------------------
update finance set product_id=100 where fid=11;
alter table finance modify column product_id int primary key;
alter table reviews add constraint fk_personrev foreign key(product_id) references finance(product_id);
-------------------------------------------------------------
alter table reviews modify column product_id int primary key;
alter table brand add constraint fk_personbra foreign key (product_id) references reviews(product_id);
---------------------------------------------------------------
set autocommit=0;
insert into brand values (144,"hanuman");
commit;
select*from brand;
rollback;

delimiter $$
create procedure productlist()
begin
select count(listing_price)from finance;
end $$
delimiter ;
call productlist;


DELIMITER //
CREATE PROCEDURE oosrr.rating(IN  sal int)
BEGIN
  select*from finance where sales_price=sal;
END //
DELIMITER ;
call oosrr.rating(150);

delimiter //
create procedure fin()
begin
select*from finance where rating;
end//
delimiter ;

delimiter //
create procedure fin()
begin
select sales_price from finance where sales_price;
end//
delimiter ;
call fin();
drop procedure fin;
select*from finance;


#Query 1#to display the finance table to descending order
select product_id,listing_price,sales_price,discount,fid from finance order by fid desc;

#Query 2# Find the info which product name match the brand
select info.product_name,brand.Brand_name from info join brand where info.product_id=brand.product_id; 

#Query 3# find the track pant which u can display in the following table
select*from info where product_name="track pant";

#Query 4#find the letter of 1st letter o nad the 7th letter a in the info table
select*from info where description like "%%o%%%a%";

#Query 5#find the rating of the along to the reviews table
select product_name,product_id,max(rating)from reviews group by product_name,product_id having max(rating)>3.5;

#Query 6# use the table to see in one table combine data list of all
select product_name,product_id,description from info 
union all
select listing_price,sales_price,discount from finance;

#Query 6#find the total for sales price in finance
select sum(sales_price) from finance;

#Query 7# find the product name,brand name, check is not equal in the table 
select*from reviews;
select info.description,brand.brand_name from info,brand where proiod<>product_id;
alter table info rename column product_id to proiod;

#Query 8#Find the revenue belong to the value
select product_name,min(revenue)from reviews group by product_name having min(revenue)>"$20";





use oosrr;
delimiter //
create procedure brand()
begin
select count(*)from finance where product_id;
end//
delimiter ;

call brand();
select*from finance;
 show databases;