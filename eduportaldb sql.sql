CREATE database EduPortalDB;
use EduPortalDB;
CREATE table Courses(CourseId int primary key,CourseName char(100) not null,Categery char(50),Fee float(7,2) check(Fee>0),DurationWeeks int check(DurationWeeks>0));
desc Courses;

alter table Students add column (FirstName char(50) not null,LastName VARCHAR(50),Email VARCHAR(100) unique,EnrollmentDate date);
alter table Courses add column Level char(20) ; 
alter table Students modify column email char(255);
alter table Courses drop column Categery;
alter table Products drop column Category;
desc Products;

