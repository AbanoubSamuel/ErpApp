-- Insert dummy data into Positions table
INSERT INTO Positions (position_name) VALUES
    ('Software Engineer'),
    ('Project Manager'),
    ('Database Administrator');

-- Insert dummy data into Employees table
INSERT INTO Employees (employee_name, position_id, age, salary) VALUES
    ('John Doe', 1, 30, 70000.00),
    ('Jane Smith', 2, 35, 90000.00),
    ('Bob Johnson', 1, 40, 80000.00),
    ('Alice Brown', 3, 45, 95000.00),
    ('Charlie White', 1, 28, 75000.00);

-- Insert dummy data into Projects table
INSERT INTO Projects (project_name, budget) VALUES
    ('Project A', 120000.00),
    ('Project B', 80000.00),
    ('Project C', 150000.00);

-- Insert dummy data into Employee_Projects table
INSERT INTO Employee_Projects (employee_id, project_id) VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 3),
    (5, 2),
    (5, 3);

-- Insert dummy data into SalaryGrades table
INSERT INTO SalaryGrades (grade_name, min_salary, max_salary) VALUES
    ('Grade 1', 70000.00, 90000.00),
    ('Grade 2', 80000.00, 100000.00),
    ('Grade 3', 90000.00, 110000.00);


