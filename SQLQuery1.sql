-- Create a table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50)
);

-- Insert data into the table
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department)
VALUES 
    (1, 'John', 'Doe', 'IT'),
    (2, 'Jane', 'Smith', 'HR'),
    (3, 'Michael', 'Johnson', 'Finance');

-- Create a stored procedure
CREATE PROCEDURE GetEmployeesByDepartment
    @DeptName VARCHAR(50)
AS
BEGIN
    SELECT EmployeeID, FirstName, LastName
    FROM Employees
    WHERE Department = @DeptName;
END;

EXEC GetEmployeesByDepartment @DeptName = 'IT';

-- Update data in the Employees table
UPDATE Employees
<<<<<<< HEAD
SET Department = 'HR'
WHERE LastName = 'adavce';
=======
SET Department = 'IT'
WHERE LastName = 'Smith';
>>>>>>> 2c44d554731b8f4bc4eb20d793f0a923d98cfb6f
