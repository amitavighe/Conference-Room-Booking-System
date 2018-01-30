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
delete from m_designation;
drop table m_designation;

insert into m_designation values('MGR', 'Manager', 2);
insert into m_designation values('CEO', 'CEO', 1);
insert into m_designation values('SWE', 'Software Engineer', 3);

select * from m_designation;

create table m_book_status
(
	status_id int auto_increment primary key,
	status_desc varchar(20)
);

insert into m_book_status values(1, "Created");
insert into m_book_status values(2, "Completed");
insert into m_book_status values(3, "In Progress");

select * from m_book_status;

desc m_book_status;

create table users
(
	user_id int auto_increment primary key,
	user_name varchar(50) unique not null,
	pass_word varchar(50) not null,
	designation char(4),
	user_type char(5),
	mob_no varchar(15),
	email varchar(30),
	verified char(4),
	foreign key(designation) references m_designation(designation)
);

drop table users;

delete from users;

desc users;

insert into users values(1001, 'Amita Vighe', 'amita123', 'SWE', 'user', '27802973', 'amita@gmail.com', 'yes');
insert into users values(1002, 'Admin User', 'admin', 'MGR', 'super', '123456789', 'admin@gmail.com', 'yes');

alter table users add constraint unique(mob_no);
alter table users add constraint unique(email);

select * from users;

delete from users;

update users set user_type = 'super' where user_id = 1;

update users set mob_no = '';

update users set designation = '';

create table m_rooms
(
		room_id int auto_increment primary key,
        room_name varchar(30),
        capacity int,
        desktop char(3),
		conference_phone char(3),
        projector char(3),
		sound_system char(3)
);

desc m_rooms;

insert into m_rooms values(1, 'A', 5, 'on', null, 'on', null);
insert into m_rooms values(2, 'B', 10, 'on', 'on', 'on', 'on');

select * from m_rooms;

drop table m_rooms;

create table booking_details
(
		book_id int auto_increment primary key,
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

alter table booking_details add constraint foreign key(room_id) references m_rooms(room_id);

insert into booking_details(booked_by, room_id, from_dt, to_dt, book_dt, purpose, book_status) values(1, 2, '2018-02-01 10:00:00', '2018-02-01 11:00:00', sysdate(), null, 1);
insert into booking_details(booked_by, room_id, from_dt, to_dt, book_dt, purpose, book_status) values(2, 1, '2018-02-01 10:00:00', '2018-02-01 11:00:00', sysdate(), null, 1);
insert into booking_details(booked_by, room_id, from_dt, to_dt, book_dt, purpose, book_status) values(1, 2, '2018-02-01 15:00:00', '2018-02-01 16:00:00', sysdate(), null, 1);

delete from booking_details;
select * from booking_details;

desc booking_details;
drop table booking_details;
show tables;

create table userlogin(uname char(10) primary key, pwd varchar(50));

insert into userlogin values('amita', '1234');
insert into userlogin values('vj', '4567');

select * from users;
delete from users;
select * from m_rooms;
select * from booking_details;
select * from m_book_status;