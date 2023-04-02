CREATE DATABASE Ex3;

USE Ex3;

CREATE TABLE CUSTOMER (
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(30),
    customer_age int,
    PRIMARY KEY(customer_id)
);

CREATE TABLE Purchase(
	purchase_id int AUTO_INCREMENT,
    customer INT,
    
    PRIMARY KEY(purchase_id),
    CONSTRAINT purchase_const FOREIGN KEY (customer) 
    REFERENCES CUSTOMER(customer_id)
    ON UPDATE SET NULL
    ON DELETE SET NULL
);
