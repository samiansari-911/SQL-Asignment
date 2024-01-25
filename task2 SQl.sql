CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, Salary)
VALUES
    (1, 'Sami', 'Ansari', 1, 750000.00),
    (2, 'Rehman',  'Ali', 2, 25000.00),
    (3, 'Mehak', 'Khan', 1, 55000.00),
    (4, 'Shan', 'Ahmed', 3, 80000.00),
    (5, 'Saif', 'Pathan', 2, 37000.00),
    (6, 'Kaife', 'Khalil', 1, 62000.00),
    (7, 'Shahruk', 'Khan', 3, 90000.00),
    (8, 'Mustafa', 'Ali', 2, 20000.00),
    (9, 'Aman', 'Alam', 1, 58000.00),
    (10, 'Ali', 'Shah', 3, 12000.00);

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(255)
);

INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES
    (1, 'HR'),
    (2, 'Marketing'),
    (3, 'Finance'),
    (4, 'IT '),
    (5, 'Operating');

	select * from Departments
    select * from Employees

	drop table Employees
	 
	alter table Employees add HireDate Datetime;
update Employees set HireDate = '2023-01-25' where EmployeeID IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10);

UPDATE Employees set Salary = Salary * 1.1 where DepartmentID = 1;

delete from Employees where Salary < 30000;

select count(EmployeeID) from Employees as e inner join departments as d on e.departmentID=d.departmentID;

Select FirstName, LastName , DepartmentName, Salary from Employees e join 
Departments d on e.DepartmentID = d.DepartmentID;

Select  FirstName, LastName , HireDate, DepartmentName from Employees e left join 
Departments d on e.DepartmentID = d.DepartmentID;


Select   FirstName, LastName, HireDate, DepartmentName from 
Employees e join Departments D ON e.DepartmentID = d.DepartmentID where  HireDate > '2023-01-01';


Select FirstName, LastName, HireDate from Employees where HireDate > '2023-01-01';









