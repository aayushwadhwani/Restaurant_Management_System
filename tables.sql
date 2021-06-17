create table user_order(
    id int not null auto_increment primary key,
    order_date date,
    payment_status varchar(30)
)

create table item(
    item_id int not null primary key auto_increment,
    item_name varchar(40) not null,
    item_price int not null
)

create table order_items(
    id int primary key,
    order_id int,
    item_id int,
    quantity int,
    FOREIGN KEY (order_id) REFERENCES user_order(id),
    FOREIGN KEY (item_id) REFERENCES item(item_id)
);

insert into item(item_name,item_price) VALUES('Fanta',45);
insert into item(item_name,item_price) VALUES('Dew',60);
insert into item(item_name,item_price) VALUES('NormalMaggie',30);
insert into item(item_name,item_price) VALUES('CheeseMaggie',45);
insert into item(item_name,item_price) VALUES('Water',20);
insert into item(item_name,item_price) VALUES('Tea',15);
insert into item(item_name,item_price) VALUES('Coffee',20);
insert into item(item_name,item_price) VALUES('VanillaIceCream',40);
insert into item(item_name,item_price) VALUES('ChocklateIceCream',45);
insert into item(item_name,item_price) VALUES('MelloJelloIcecream',55);
insert into item(item_name,item_price) VALUES('NormalPizza',130);
insert into item(item_name,item_price) VALUES('CheesePizza',180);
insert into item(item_name,item_price) VALUES('CornPizza',160);
insert into item(item_name,item_price) VALUES('NormalBurger',40);
insert into item(item_name,item_price) VALUES('NormalBurger',50);


select max(id) from user_order;

ALTER TABLE order_items
ALTER column id auto_increment ;