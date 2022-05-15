create database LearnerAcademy;
use LearnerAcademy;
create table classes(id int(11),student int(11), teacher int(11),subject int(11),time varchar(11));
desc classes;
insert into classes(id,student,teacher,subject,time) values (1, 1, 1, 1, '9:00'),(2, 3, 2, 2, '11:30');
select * from classes;

create table students(id int(11),fname varchar(55),lname varchar(55),age int(11),class int(11));
desc students;
insert into  students(id,fname,lname,age,class) values(1,'chaitanya','manikdurge','29',1),(2,'Aadvi','dawale',4,2),(3,'vijay','dawale',32,1),(4,'durga','panhale',30,2);
select * from students;

create table teachers(id int(11),fname varchar(55),lanme varchar(55),age int(11));
desc teachers;
insert into teachers(id,fname,lanme,age) values(1,'snehal','patre',31),(2,'santosh','manikdurge',35),(3,'Aaradhya','panhale',25);
select * from teachers;

create table subjects(id int(11),name varchar(55),shortcut varchar(55));
desc subjects;
insert into subjects(id,name,shortcut) values (1,'english','eng'),(2,'mathematics','math'),(3,'Hindi','hindi');
select * from subjects;

ALTER TABLE classes ADD PRIMARY KEY (`id`),
ADD KEY subject_id (subject),
  ADD KEY teacher_id (teacher);
  
  ALTER TABLE students
  ADD PRIMARY KEY (id),
  ADD KEY class_id (class);
  
  ALTER TABLE subjects ADD PRIMARY KEY (id);
  ALTER TABLE teachers ADD PRIMARY KEY (id);
  
   
  ALTER TABLE classes
  ADD CONSTRAINT subject_id FOREIGN KEY (subject) REFERENCES subjects (id),
  ADD CONSTRAINT teacher_id FOREIGN KEY (teacher) REFERENCES teachers (id);
  
  ALTER TABLE students
  ADD CONSTRAINT class_id FOREIGN KEY (class) REFERENCES classes (id);