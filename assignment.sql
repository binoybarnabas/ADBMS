create database college;
use college;
drop database college;
show tables;
create table student
(
sid int(5) primary key,
sname varchar(50),
sex varchar(10),
dob date,
dno int(11),
foreign key(dno) references department(dno),
constraint check ((dob > 1995-01-01))
);

create table department
(
dno int(11) primary key,
dname varchar(30)
);

create table faculty
(
f_id varchar(5) primary key,
fname varchar(25),
designation varchar(30),
salary float(10,2),
dno int(11),
foreign key(dno) references department(dno)
);

create table course
(
cid varchar(5) primary key,
cname varchar(25),
credits int(5),
dno int(11),
foreign key(dno) references department(dno)
);

create table register
(
sid int(5),
cid varchar(5),
sem int(5),
foreign key(cid) references course(cid)
);

create table teaching
(
f_id varchar(5),
cid int(5) not null,
sem int(5) not null,
foreign key(f_id) references faculty(f_id)
);


create table hostel
(
hid varchar(5) primary key,
hname varchar(25),
seats int(5)
); 

insert into department(dno,dname) values(101,'mechanical');
insert into department(dno,dname) values(102,'chemical');
insert into department(dno,dname) values(103,'electrical');
insert into department(dno,dname) values(104,'mca');
insert into department(dno,dname) values(105,'civil');


insert into student(sid,sname,sex,dob,dno) values (102,"arun","male",1999-11-28,101);
insert into student(sid,sname,sex,dob,dno) values (103,"asif","male",1999-01-20,101);
insert into student(sid,sname,sex,dob,dno) values (212,"abhi","male",1999-02-28,102);
insert into student(sid,sname,sex,dob,dno) values (114,"adharsh","male",1999-08-01,104);
insert into student(sid,sname,sex,dob,dno) values (304,"joel","male",1999-12-25,105);

insert into faculty(f_id,fname,designation,salary,dno) values('m101','gayathri','lecturer',60000,101);
insert into faculty(f_id,fname,designation,salary,dno) values('mca103','praveen','lecturer',50000,104);
insert into faculty(f_id,fname,designation,salary,dno) values('c222','james','lecturer',70000,105);
insert into faculty(f_id,fname,designation,salary,dno) values('e102','johny','lecturer',50000,103);
insert into faculty(f_id,fname,designation,salary,dno) values('ch201','basheer','lecturer',70000,102);

insert into course(cid,cname,credit,dno)values('101','electrical engingeering',150,103);
insert into course(cid,cname,credit,dno)values('102','mechanical engingeering',150,101);
insert into course(cid,cname,credit,dno)values('202','mca',120,104);
insert into course(cid,cname,credit,dno)values('103','civil',150,105);
insert into course(cid,cname,credit,dno)values('104','chemical engingeering',150,102);

insert into register(sid,cid,sem) values(102,'102',2);
insert into register(sid,cid,sem) values(103,'102',3);
insert into register(sid,cid,sem) values(212,'104',2);
insert into register(sid,cid,sem) values(114,'202',4);
insert into register(sid,cid,sem) values(304,'103',5);

insert into register(f_id,cid,sem) values('m101',101,2);
insert into register(f_id,cid,sem) values('mca103',102,3);
insert into register(f_id,cid,sem) values('c222',202,4);
insert into register(f_id,cid,sem) values('e102',103,5);
insert into register(f_id,cid,sem) values('ch201',104,5);

insert into hostel(hid,hname,seats) values(1,"jango",100);
insert into hostel(hid,hname,seats) values(2,"tkm",100);
insert into hostel(hid,hname,seats) values(3,"cstay",100);
insert into hostel(hid,hname,seats) values(4,"mstay",100);
insert into hostel(hid,hname,seats) values(5,"jstay",100);