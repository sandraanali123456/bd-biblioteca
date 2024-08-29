create database bd_biblioteca;
use bd_biblioteca;

create table author(
id int primary key auto_increment,
name varchar(50) not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50) null,
phone varchar(10) null,

create_at datetime,
update_at datetime
);

create table books(
id int primary key auto_increment not null,
id_author int,
code_book varchar(4) not null,
name varchar(50) not null,
title varchar(100) not null,
plubisher date not null,
sbn char(12),
foreign key(id_author) references author (id),
create_at datetime,
update_at datetime
);

create table users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(50) NULL,
    phone VARCHAR(10) NULL,
    created_at DATETIME,
    updated_at DATETIME
);

create table loans (
id int primary key auto_increment,
id_users int,
id_book int,
borrow_date date not null,
return_date date null,
foreign key (id_users) references users (id),
foreign key (id_book) references books (id),
create_at datetime,
update_at datetime
);