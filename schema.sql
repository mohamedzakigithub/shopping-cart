-- Drops the eStoreDB if it exists currently --
DROP DATABASE IF EXISTS eStoreDB;
-- Creates the "eStoreDB" database --
CREATE DATABASE eStoreDB;

USE eStoreDB;
CREATE TABLE users
(
    id int NOT NULL AUTO_INCREMENT,
	first_name varchar (255),
    last_name varchar (255),
    email varchar (255) NOT NULL,
    password varchar (255) NOT NULL,
    address varchar (255),
	PRIMARY KEY (id)
);


CREATE TABLE products
(
    id int NOT NULL AUTO_INCREMENT,
	product_name varchar (255) NOT NULL,
    description varchar (255) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    img varchar (255) NOT NULL, 
    PRIMARY KEY (id)
);

CREATE TABLE orders
(
    id int NOT NULL AUTO_INCREMENT,
	product_id int NOT NULL,
    user_id int NOT NULL,
    comment varchar (255) NOT NULL,
	PRIMARY KEY (id)
);


INSERT INTO products (product_name, description, price, img) VALUES ('cheese burger', 'home made cheese burger with chips and salads', '12.00', 'cheeseBurger.jpg');
INSERT INTO products (product_name, description, price, img) VALUES ('Chicken burger', 'home made Chicken burger with chips and salads', '14.00', 'chickenBurger.jpg');
INSERT INTO orders (product_id, user_id, comment) VALUES (1, 1, 'Please text before delivery');
