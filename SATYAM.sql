CREATE TABLE Employees2 (
    EmployeeID INT PRIMARY KEY,        
    FirstName NVARCHAR(50), 
    LastName NVARCHAR(50),
    HireDate DATE,                 
    Salary DECIMAL(10,2)             
);

INSERT INTO Employees2 
VALUES 
(11, 'Nehaa', 'Guptaa', '2023-07-20', 59000.00);


select * from Employees2;
select distinct E.EmployeeID ,E.Firstname
from 