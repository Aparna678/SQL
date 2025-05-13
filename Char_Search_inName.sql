--Fetch all employees whose names contain the letter "a" exactly twice.
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
(5, 'Eva', 85000),
(6, 'Archana', 65000);


SELECT EmpName
FROM Employee
WHERE LENGTH(EmpName) - LENGTH(REPLACE(EmpName, 'a', '')) = 2;
