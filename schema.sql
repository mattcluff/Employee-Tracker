DROP DATABASE IF EXISTS employeeTrackerDB;
CREATE database employeeTrackerDB;
USE employeeTrackerDB;

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(45) UNIQUE NOT NULL, 
	PRIMARY KEY (id)
);

CREATE TABLE role (
	id INT NOT NULL AUTO_INCREMENT,
	title VARCHAR(45) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT NOT NULL, 
	PRIMARY KEY (id),
    FOREIGN KEY (department_id) REFERENCES department (id)
);

CREATE TABLE employees (
	id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    manager VARCHAR(45) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
	PRIMARY KEY (id),
	FOREIGN KEY (role_id) REFERENCES role (id),
    FOREIGN KEY (manager_id) REFERENCES employees (id)
);

SELECT role.title, first_name, last_name FROM employees INNER JOIN role ON employees.role_id = role.id ORDER BY role.title;

UPDATE employees INNER JOIN role ON role.id = employees.role_id SET role_id = 1;

SELECT * FROM employees;