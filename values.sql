USE employeeTrackerDB;

INSERT INTO department (name)
VALUES ("Admissions"), ("Student Support"), ("Finance"), ("HR");

INSERT INTO role (title, salary, department_id)
VALUES ("Admissions Coordinator", 40000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Admissions Manager", 73000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Team Lead", 40000, 1);

INSERT INTO role (title, salary, department_id)
VALUES ("Student Success Manager", 65000, 2);

INSERT INTO role (title, salary, department_id)
VALUES ("University Financing", 75000, 3);

INSERT INTO role (title, salary, department_id)
VALUES ("HR Staff Member", 50000, 4);

INSERT INTO role (title, salary, department_id)
VALUES ("", 150000, 4);

SELECT * FROM employees; 