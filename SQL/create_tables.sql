-- Create the relational DB tables first

-- Positions table
CREATE TABLE Positions (
    position_id SERIAL PRIMARY KEY,
    position_name VARCHAR(255)
);

-- Employees table
CREATE TABLE Employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(255),
    position_id INT REFERENCES Positions(position_id),
    age INT,
    salary DECIMAL(10, 2)
);

-- Projects table
CREATE TABLE Projects (
    project_id SERIAL PRIMARY KEY,
    project_name VARCHAR(255),
    budget DECIMAL(15, 2)
);

-- Employee_Projects table (junction table for many-to-many relationship between Employees and Projects)
CREATE TABLE Employee_Projects (
    employee_id INT REFERENCES Employees(employee_id),
    project_id INT REFERENCES Projects(project_id),
    PRIMARY KEY (employee_id, project_id)
);

-- SalaryGrades table (assuming this is used for salary grades)
CREATE TABLE SalaryGrades (
    grade_id SERIAL PRIMARY KEY,
    grade_name VARCHAR(255),
    min_salary DECIMAL(10, 2),
    max_salary DECIMAL(10, 2)
);

