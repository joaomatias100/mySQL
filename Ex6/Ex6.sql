CREATE DATABASE Ex6;

USE Ex6;

CREATE TABLE Student(
	student_id int auto_increment,
    university_id int not null,
    PRIMARY KEY(student_id)
);

CREATE TABLE University(
	university_id int auto_increment,
    university_name varchar(30) not null,
	PRIMARY KEY(university_id)
);

CREATE VIEW student_view AS(
	SELECT s.student_id, u.university_name FROM Student s
    INNER JOIN University u ON s.university_id = u.university_id
);
