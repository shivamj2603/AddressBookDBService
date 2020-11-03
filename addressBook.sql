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

#Usecase 9:
alter table addressbook
rename to contacts;
alter table contacts
drop primary key,
add contactId int not null auto_increment first, 
add bookcode int not null
add primary key(contactId);
create table addressbook
(
bookcode int not null auto_increment,
contactId int not null,
addressbookName varchar(100) not null,
type varchar(100) not null,
primary key (bookcode),
foreign key (contactId) references contacts (contactId)
);
desc addressbook;

# Usecase 10:
select type, count(*) from addressbook
group by type;

#Usecase 11:
insert into addressbook (srNo, contactId, addressbookName, type) values 
(1, 1, 'AddressBook1', 'family'),
(1, 2, 'AddressBook1', 'friend'),
(1, 1,'AddressBook1','friend'),
(2, 1, 'AddressBook2','friend');

#Usecase 12:
# UC 12
create table address (
zip numeric(6) not null,
city varchar(100) not null,
state varchar(100) not null,
foreign key (zip) references contact_table(zip)
);
create table addressbookType (
addressbookName varchar(100) not null,
type varchar(100) not null,
foreign key (addressbookName) references addressBook(addressbookName)
);
alter table contacts 
drop column city,
drop column state;
alter table addressbook
drop column type;
insert into addressbookTypes values 
('AddressBook1', 'family'),
('AddressBook2','friend'), 
('AddressBook3','profession');
insert into addressbookTypes values 
(421201, 'Mumbai', 'Maharashtra'),
(421202, 'Mumbai', 'Maharashtra'),
(421203, 'Bangalore', 'Maharashtra'),
(421204 'Bangalore', 'Maharashtra'),
(421205, 'Dadri', 'Maharashtra');








