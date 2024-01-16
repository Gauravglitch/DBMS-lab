create table student1(
crn varchar(20) primary key,
name varchar(50) not null,
address varchar(50),
DOB date
);
desc student1;
insert into student1 (crn,name,address,DOB) values (null,"adarsha","bhaktapur","2001-01-02");
insert into student1 (crn,name,address,DOB) values ("060/bct/40","jeken","patan","2004-04-04");
insert into student1 (crn,name,address,DOB) values ("060/bct/40","david","patan","2009-04-06");
alter table student1 add (parent_name varchar(50),email varchar(50));
select * from student1;
create table department1(
deptid int primary key,
dnumber int ,constraint chk check(dnumber between 10 and 50),
dname varchar(50),constraint chkname check(binary dname=upper(dname))
);
drop table department1;
select * from department1;
insert into department1(deptid,dnumber,dname) values (01,10,"COMPUTER");
insert into department1(deptid,dnumber,dname) values (02,20,"civil");
create table course1(
courseId int primary key,
coursename varchar(50) unique,
duration datetime,
fee int
);
alter table course1 add constraint minfee check(fee>=1000);
insert into course1 (courseId,coursename,duration,fee) values ();
