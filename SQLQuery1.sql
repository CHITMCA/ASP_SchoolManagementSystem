create database SchoolManagementSystem
create table Student(id int primary key, Sname varchar(50),Batch varchar(50),Gender varchar(50),Course varchar(50), Photo nvarchar(max))
select *from Student
alter table Student add  mobile varchar(25), Email varchar(50)
sp_rename 'Student.Cource','Course'
delete from Student  where id=2
truncate table student
drop table Student
