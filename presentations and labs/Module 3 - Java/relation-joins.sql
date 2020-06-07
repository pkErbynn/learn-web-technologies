---
--- drop tables
---

DROP TABLE IF EXISTS students
DROP TABLE IF EXISTS courses;


---
--- create tables
---

create table courses(
  course_id int primary key,
  course_name varchar(50) not null,
  course_description varchar(100) not null
);

create table students(
  student_id int primary key,
  student_name varchar(30) not null,
  student_address varchar(40) not null,
  course_id integer references courses(course_id)
);


---
--- seed tables
--- 

insert into courses values(1, 'Java', 'Learn Java without tears');
insert into courses values(2, 'Databases', 'Learn core database concepts with PostgreSQl');

insert into students values(1, 'John Erbynn', 'Accra, Taifa, Ghana', 2);
insert into students values(2, 'Osran Amanfo', 'Elmina, Ghana', 1);


---
--- select queries
--- 

select * from students inner join courses on students.course_id = courses.course_id;
select student_name, course_name from students inner join courses on students.course_id = courses.course_id;
