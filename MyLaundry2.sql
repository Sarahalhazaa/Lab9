create database MyLaundry;

create table owner(
    id int primary key ,
    userName varchar(20) unique ,
    phoneNumber int(10),
    full_name varchar(20)   ,
    email varchar(20)  unique ,
    password varchar(20)
);

select * from owner;

create table laundries(
   commercialRecord int primary key ,
    name varchar(20)  ,
     email varchar(20)  unique ,
     phoneNumber int(10),
     address varchar(20),
        owner_id int,
 foreign key ( owner_id ) references owner(id)
);

select * from laundries;

create table service(
     id int primary key ,
    name varchar(20)  ,
      price int default 0,
       type varchar(10) ,
    serviceHours int,
         commercialRecord int(10),
      foreign key (  commercialRecord ) references laundries(commercialRecord)
);

select * from service;

create table users(
    id int primary key ,
    userName varchar(20) ,
    phoneNumber int(10),
    full_name varchar(20)   ,
    email varchar(20)  unique ,
    gender char(1) check ( gender='m' or gender='f'),
    password varchar(20),
     address varchar(20),
    idService int,
      foreign key ( idService ) references service(id)
);

select * from users;


insert into owner(id, userName, phoneNumber, full_name, email, password) values (1,'sara',0551234567,'sara alhazaa','sara@gmail.com','@sara12345');
select * from owner;
insert into laundries(commercialRecord, name, email, phoneNumber, address, owner_id) values (1,'laundry1','laundry1@gmail.com',0531234567,'ASA123',1);
select * from laundries;
insert into service(id, name, price, type, serviceHours, commercialRecord) values (1,'abaya',5,'laundry',2,1);
select * from service;
insert into  users(id, userName, phoneNumber, full_name, email, gender, password, address, idService) values (1,'yara',0541234567,'yara mohammed','yara@gmail.com','m','rty678','ASD234',1);
select * from  users;



insert into owner(id, userName, phoneNumber, full_name, email, password) values (2,'sara nasser',0551234563,'sara alhazaa','sara2@gmail.com','@sara12345');
insert into laundries(commercialRecord, name, email, phoneNumber, address, owner_id) values (2,'laundry2','laundry2@gmail.com',0531234563,'ASA123',1);
insert into service(id, name, price, type, serviceHours, commercialRecord) values (2,'abaya',5,'laundry',2,2);
insert into  users(id, userName, phoneNumber, full_name, email, gender, password, address, idService) values (2,'yara',0541234563,'yara mohammed','yara2@gmail.com','m','rty678','ASD234',2);


insert into owner(id, userName, phoneNumber, full_name, email, password) values (3,'sara2',0551234563,'sara alhazaa','sara3@gmail.com','@sara12345');
insert into laundries(commercialRecord, name, email, phoneNumber, address, owner_id) values (3,'laundry3','laundry3@gmail.com',0531234563,'ASA123',1);
insert into service(id, name, price, type, serviceHours, commercialRecord) values (3,'abaya',5,'laundry',2,3);
insert into  users(id, userName, phoneNumber, full_name, email, gender, password, address, idService) values (3,'yara',0541234563,'yara mohammed','yara3@gmail.com','m','rty678','ASD234',3);

update owner set phoneNumber=0531234567 where id=1;
update laundries set address='ASD2345' where commercialRecord=1;
update service set  price=6 where id=1;
update users set email='yara2@gmail.com'where id=1;

delete from owner where id= 1;
delete from laundries  where commercialRecord=1;
delete from service  where id=1;
delete from users where id=1;


alter table users modify column phoneNumber int(10) not null ;
truncate users;

