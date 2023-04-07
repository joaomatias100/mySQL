CREATE DATABASE Ex6;

USE Ex6;

CREATE TABLE Student (
    student_id INT AUTO_INCREMENT,
    university_id INT NOT NULL,
    PRIMARY KEY (student_id)
);

CREATE TABLE University (
    university_id INT AUTO_INCREMENT,
    university_name VARCHAR(30) NOT NULL,
    PRIMARY KEY (university_id)
);

CREATE VIEW student_view AS
    (SELECT 
        s.student_id, u.university_name
    FROM
        Student s
            INNER JOIN
        University u ON s.university_id = u.university_id);
