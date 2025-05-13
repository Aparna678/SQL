-- write a query to find the second highest salary in an employee table. 
CREATE TABLE Employee (
  EmpID INT PRIMARY KEY,
  EmpName VARCHAR(50),
  Salary INT
);
INSERT INTO Employee( EmpID, EmpName, Salary)
VALUES
(1, 'Alice', 60000),
(2, 'Aparna', 70000),
(3, 'Charlie', 50000),
(4, 'David', 70000),
(5, 'Eva', 85000);

SELECT DISTINCT Salary
FROM Employee
ORDER BY Salary DESC
LIMIT 1 OFFSET 1;

SELECT EmpName, Salary
FROM Employee
WHERE Salary = (
    SELECT DISTINCT Salary
    FROM Employee
    ORDER BY Salary DESC
    LIMIT 1 OFFSET 1
);
