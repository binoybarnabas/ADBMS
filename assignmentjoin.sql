create database movies;
use movies;
show tables;
create table actor
(
act_id int(7) primary key,
act_name varchar(30) not null,
act_gender varchar(10)
);

create table director
(
dir_id int(7) primary key,
dir_name varchar(30) not null,
dir_phone varchar(15) not null
);

create table movies
(
mov_id int(10) primary key,
mov_title varchar(50) not null,
mov_year year,
mov_lang varchar(25) ,
dir_id int(7),
foreign  key (dir_id ) references director(dir_id)
);


create table movie_cast
(
act_id int(7),
mov_id int(10),
roles varchar(25),
foreign key(act_id) references actor(act_id),
foreign key(mov_id) references movies(mov_id)
);

create table rating
(
mov_id int(10),
rev_stars int(5),
foreign key(mov_id) references movies(mov_id)
);

insert into actor(act_id,act_name,act_gender) values (101,'dicaprio','male');
insert into actor(act_id,act_name,act_gender) values (102,'scarlett','female');
insert into actor(act_id,act_name,act_gender) values (103,'fahad','male');

select * from actor;
insert into director(dir_id,dir_name,dir_phone) values (201,'nolen','male');
insert into director(dir_id,dir_name,dir_phone) values (202,'alexander','male');
insert into director(dir_id,dir_name,dir_phone) values (203,'michelle','female');

insert into movies(mov_id,mov_title,mov_year,mov_lang,dir_id) values(501,'titanic','1999','english',202);
insert into movies(mov_id,mov_title,mov_year,mov_lang,dir_id) values(502,'tenet','2021','english',201);
insert into movies(mov_id,mov_title,mov_year,mov_lang,dir_id) values(503,'together','2003','english',203);

insert into movie_cast(act_id,mov_id,roles) values(101,501,'protagonist');
insert into movie_cast(act_id,mov_id,roles) values(102,502,'supporting role');
insert into movie_cast(act_id,mov_id,roles) values(103,503,'junior artist');

insert into rating(mov_id,rev_stars) values(501,5);
insert into rating(mov_id,rev_stars) values(502,4);
insert into rating(mov_id,rev_stars) values(503,3);
