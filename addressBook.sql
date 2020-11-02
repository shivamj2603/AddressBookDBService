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
primary key (firstname, lastname)
);
describe addressBook;

# Usecase 3:
insert into addressBook values
('Shivam', 'Jaiswal', 'Dombivili', 'Mumbai', 'Maharashtra', 421201, 7738454018, 'shivamj2603@gmail.com'),
('Suraj', 'Pande', 'Thane', 'Mumbai', 'Maharashtra', 421202, 8958658568, 'suraj@gmail.com'),
('Saurabh', 'Pandey', 'Mulund', 'Bangalore', 'Maharashtra', 421203, 34654657657, 'sagar@gmail.com'),
('Sagar', 'Sharma', 'Ghatkopar', 'Bangalore', 'Maharashtra', 421204, 534546546, 'ajay@gmail.com'),
('Ajay', 'Verma', 'Dadar', 'Dadri', 'Maharashtra', 421205,34546547567 , 'vijay@gmail.com');

#Usecase 4:
update addressBook
set phone = '7738454607'
where firstName = 'Ajay';

# Usecase 5:
delete from addressBook
where firstName = 'Ajay';

# Usecase 6:
select * from addressBook
where city = 'Mumbai' or state = 'Maharashtra';

# Usecase 7:
select city, state, count(*) from addressbook 
group by city, state;

# Usecase 8:
select * from addressBook
where city = 'Mumbai'
order by firstName, lastName;




