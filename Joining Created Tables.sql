SELECT e.ID, e.Name
FROM employee AS e
JOIN employee_info AS ei
ON e.ID = ei.ID;

SELECT *
FROM employee_info;

SELECT employee.NAME, SUM(employee_info.ID) AS 'Total Employees'
FROM employee AS e
JOIN employee_info AS ei
ON e.NAME = ei.NAME
GROUP BY employee.NAME;
