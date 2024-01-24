-- DBMS lab exercise 3
/*
sample relation
student1 schema(crn,name,address,DOB)
department1 schema(deptid,dnumber,dname)
course1(courseId,coursename,duration,fee)
*/

/*1.Create relation student on student schema with the underlined attribute as primary key
 and attribute name is not null.*/
create table student1(
crn varchar(20) primary key,
name varchar(50) not null,
address varchar(50),
phone_number varchar(20),
DOB date
);
desc student1;
-- 2.Insert a tuple into relation student with  crn as null.Comment.
insert into student1 (crn,name,address,phone_number,DOB) values (null,"adarsha","bhaktapur","9876543210","2001-01-02");
-- column 'crn' cannot be null
-- 3.Insert a tuple into relation student with crn as 060/bct/40. Comment.
insert into student1 (crn,name,address,phone_number,DOB) values ("060/bct/40","jeken","patan","9876543210","2004-04-04");
-- 4. Insert a tuple into relation student with crn as 060/bct/40. Comment.
insert into student1 (crn,name,address,phone_number,DOB) values ("060/bct/40","jeken","patan","9876543210","2004-04-04");
-- duplicate entry for primary key is not allowed.
insert into student1 (crn,name,address,phone_number,DOB) values ("060/bct/42","david","patan","9841360969","2009-04-06");
-- 5.alter the relation student to add the attributes parent name and email.
alter table student1 add (parent_name varchar(50),email varchar(50));
select * from student1;
/*Create relation department on department schema with the underlined attribute as primary key.
Add the constraint to the relation department such that dnumber is only between 10 and 50 and
also dname should be in captial letter.*/
create table department1(
deptid int primary key,
dnumber int ,constraint chk check(dnumber between 10 and 50),
dname varchar(50),constraint chkname check(binary dname=upper(dname))
);
select * from department1;
-- 7. Insert a tuple into relation department with dnumber as 10 and dname as COMPUTER.
insert into department1(deptid,dnumber,dname) values (01,10,"COMPUTER");
-- 8. Insert a tuple into relation department with dnumber as 20 and dname as civil.Comment on result.
insert into department1(deptid,dnumber,dname) values (02,20,"civil");
-- chkname constraint is violated.
/*9. Create relation course on course schema with the underlined attribute as primary key. 
The attribute coursename is unique.*/
create table course1(
courseId int primary key,
coursename varchar(50) unique,
duration int,
fee int
);
alter table course1 add constraint minfee check(fee>=1000);
insert into course1 (courseId,coursename,duration,fee) values (01,"java",1,1000);
insert into course1 (courseId,coursename,duration,fee) values (02,"Cisco",2,2000);
insert into course1 (courseId,coursename,duration,fee) values (03,"Linux",3,3000);
insert into course1 (courseId,coursename,duration,fee) values (04,"Visual Basic",4,4000);
select *from course1;
insert into course1 (courseId,coursename,duration,fee) values (05,"oracle",1,1000);
alter table student1 add constraint unique_ph_dob unique(phone_number,DOB);
insert into student1(crn,name,address,phone_number,dob,parent_name,email) values (06,"Basi","patan",null,"2019-01-10",null,null);
alter table course1 modify fee float;
alter table department1 drop constraint chkname;
select *from department1;
alter table student1 drop constraint unique_ph_dob;
select *from student1;
desc table student1;
truncate table student1;
drop table student1;