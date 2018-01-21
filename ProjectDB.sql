show databases;
create database confbooksys;
use confbooksys;

create table m_designation
(
	designation char(4) primary key,
	desig_desc varchar(20),
	priority int
);

desc m_designation;

create table m_book_status
(
	status_id int auto_increment primary key,
	status_desc varchar(20)
);

desc m_book_status;

create table users
(
	user_id int primary key,
	user_name varchar(50),
	pass_word varchar(50),
	designation char(4),
	user_type char(5),
	mob_no varchar(15),
	email varchar(30),
	verified char(3),
	foreign key(designation) references m_designation(designation)
);

desc users;

create table m_rooms
(
		room_id int primary key,
        room_name varchar(30),
        capacity int,
        desktop char(3),
		conference_phone char(3),
        projector char(3),
		sound_system char(3)
);

desc m_rooms;

create table booking_details
(
		book_id int primary key,
        booked_by int,
        room_id int,
        from_dt datetime,
		to_dt datetime,
        book_dt datetime,
		purpose varchar(255),
        book_status int,
        foreign key(book_status) references m_book_status(status_id),
        foreign key(booked_by) references users(user_id)
);

desc booking_details;

show tables;

create table userlogin(uname char(10) primary key, pwd varchar(50));

insert into userlogin values('amita', '1234');
insert into userlogin values('vj', '4567');
