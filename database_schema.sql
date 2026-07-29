CREATE DATABASE HelpDeskAnalytics;

USE HelpDeskAnalytics;


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50)
);


CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    company VARCHAR(100)
);


CREATE TABLE Tickets (
    ticket_id INT PRIMARY KEY,
    customer_id INT,
    assigned_employee INT,
    issue_type VARCHAR(50),
    priority VARCHAR(20),
    status VARCHAR(20),
    date_created DATE,
    date_resolved DATE,
    
    FOREIGN KEY(customer_id)
    REFERENCES Customers(customer_id),

    FOREIGN KEY(assigned_employee)
    REFERENCES Employees(employee_id)
);
