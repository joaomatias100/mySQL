CREATE DATABASE Ex1;

USE Ex1;

CREATE TABLE Employee(
	employee_id int,
    employee_name varchar(30) not null,
    employee_country char(3) not null,
    employee_type enum('CEO','employer','manager') not null
);

ALTER TABLE Employee MODIFY employee_id int PRIMARY KEY AUTO_INCREMENT;

ALTER TABLE Employee ADD COLUMN employee_gender enum('male','female');

INSERT INTO Employee(employee_name, employee_country, employee_type, employee_gender) 
VALUES('Joao', 'USA', 'CEO', 'male'),
('Ana', 'PRT', 'employer', 'female'),
('Sara', 'FRA', 'manager', 'female'),
('Jorge', 'USA', 'manager', 'male'),
('Carlos', 'ITA', 'employer', 'male');

DELETE FROM Employee WHERE employee_country = 'USA';