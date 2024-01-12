-- Display employees involved in at least two projects and show the project names alongside employee data.
SELECT e.employee_id, e.employee_name, p.project_name
FROM Employees e
JOIN Employee_Projects ep ON e.employee_id = ep.employee_id
JOIN Projects p ON ep.project_id = p.project_id
WHERE e.employee_id IN (
    SELECT employee_id
    FROM Employee_Projects
    GROUP BY employee_id
    HAVING COUNT(project_id) >= 2
);


-- Calculate the average salary rate per posi?on and display it in ascending order.
SELECT pos.position_name, AVG(salary) AS average_salary
FROM Employees e
JOIN Positions pos ON e.position_id = pos.position_id
GROUP BY pos.position_name
ORDER BY average_salary ASC;


-- Update the salary of all employees by 10% if they are involved in a project with a budget exceeding 100,000 euros.

-- Start a transaction
BEGIN;
UPDATE Employees
SET salary = salary * 1.1
WHERE employee_id IN (
    SELECT e.employee_id
    FROM Employees e
    JOIN Employee_Projects ep ON e.employee_id = ep.employee_id
    JOIN Projects p ON ep.project_id = p.project_id
    WHERE p.budget > 100000
);
-- Commit the transaction
COMMIT;

-- Delete all employees older than 40 years who are not involved in any projects.
-- Start a transaction
BEGIN;
DELETE FROM Employees
WHERE age > 40
AND employee_id NOT IN (
    SELECT e.employee_id
    FROM Employees e
    JOIN Employee_Projects ep ON e.employee_id = ep.employee_id
);
-- Commit the transaction
COMMIT;


