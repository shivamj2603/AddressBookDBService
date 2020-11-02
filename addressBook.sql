# Usecase 1:
create database addressBook_service;
show databases;
use addressBook_service;

# Usecase 2:
create table addressBook
(
firstName varchar(150) not null,
lastName varchar(150) not null,
address varchar(150) not null,
city varchar(50) not null,
state varchar(50) not null,
zip numeric(6) not null,
phone numeric(12) not null,
email varchar(100) not null,
primary key (phone)
);
describe addressBook;