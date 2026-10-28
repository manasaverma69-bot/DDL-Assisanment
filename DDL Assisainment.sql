create  Database employee;
use employee;
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
CREATE TABLE Location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location_name VARCHAR(100)
);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    gender CHAR(1),
    age INT,
    designation VARCHAR(50),
    hire_date DATE,
    department_id INT,
    location_id INT
);
ALTER TABLE Employees
ADD email VARCHAR(150);
ALTER TABLE Employees
MODIFY designation VARCHAR(150);
ALTER TABLE Employees
DROP COLUMN age;
ALTER TABLE Employees
RENAME COLUMN hire_date TO date_of_joining;
RENAME TABLE Departments TO Departments_Info;
RENAME TABLE Location TO Locations;
select * from employees;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
DROP DATABASE employee;
CREATE DATABASE employee;
use employee;
create table department(department_id INT primary key,department_name varchar(100) not null unique);
create table location (location_id int primary key auto_increment,location_name varchar(100) not null unique);
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,

    gender CHAR(1)
        CHECK (gender IN ('M', 'F')),

    age INT
        CHECK (age >= 18),

    designation VARCHAR(150),

    hire_date DATE DEFAULT (CURRENT_DATE),

    email VARCHAR(150),

    department_id INT,
    location_id INT,

    CONSTRAINT fk_employee_department
        FOREIGN KEY (department_id)
        REFERENCES Department(department_id),

    CONSTRAINT fk_employee_location
        FOREIGN KEY (location_id)
        REFERENCES Location(location_id)
);
USE employee;

SHOW TABLES;
INSERT INTO department
(department_id, department_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');
insert into location(location_name) values('Bangalore'),('Hyderabad'),('Chennai');
INSERT INTO Employees
(employee_id, employee_name, gender, age,
 designation, email, department_id, location_id)
VALUES
(101, 'Ravi Kumar', 'M', 25,
 'Data Analyst', 'ravi@example.com', 2, 1),

(102, 'Priya Sharma', 'F', 28,
 'HR Executive', 'priya@example.com', 1, 2);
 INSERT INTO Employees
(employee_id, employee_name, gender, age,
 designation, email, department_id, location_id)
VALUES
(101, 'Ravi Kumar', 'M', 25,
 'Data Analyst', 'ravi@example.com', 2, 1),

(102, 'Priya Sharma', 'F', 28,
 'HR Executive', 'priya@example.com', 1, 2);
 INSERT INTO Employees
(employee_id, employee_name, gender, age,
 designation, email, department_id, location_id)
VALUES
(101, 'Ravi Kumar', 'M', 25,
 'Data Analyst', 'ravi@example.com', 2, 1),

(102, 'Priya Sharma', 'F', 28,
 'HR Executive', 'priya@example.com', 1, 2);
 SELECT * FROM Department;

SELECT * FROM Location;

SELECT * FROM Employees;
