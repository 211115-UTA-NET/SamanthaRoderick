CREATE TABLE Department
(
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR (100),
    Department_Location VARCHAR (250)
)

CREATE TABLE Employee
(
    Employee_ID VARCHAR (50) PRIMARY KEY,
    First_Name VARCHAR (20),
    Last_Name VARCHAR (50),
    SSN VARCHAR (11),
    Department_ID INT FOREIGN KEY REFERENCES Department
)


CREATE TABLE Emp_Details
(
    Employee_ID VARCHAR (50) PRIMARY KEY,
    Salary MONEY,
    Address_1 VARCHAR (50),
    Address_2 VARCHAR (50),
    City VARCHAR (50),
    State_ VARCHAR (50),
    Country VARCHAR (50)
)

INSERT INTO Department
    (Department_ID, Department_Name, Department_Location)
VALUES
    (1111, 'Marketing', 'New_York_Manhattan_West'),
    (1112, 'Legal', 'New_York_Manhattan_West'),
    (1113, 'Systems', 'New_York_Manhattan_West');

INSERT INTO Employee
    (Employee_ID, First_Name, Last_Name, SSN, Department_ID)
VALUES 
    ('08942-888', 'Rebecca', 'Daniels', '123-45-6789', 1111),
    ('12345-414', 'Thomas', 'Tran', '987-65-4321', 1112),
    ('33366-991', 'Hien', 'Dang', '877-33-4444', 1113),
    ('88888-333', 'Tina', 'Smith', '333-22-4444', 1111);

INSERT INTO Emp_Details
    (Employee_ID, Salary, Address_1, Address_2, City, State_, Country)
VALUES
    ('08942-888', 79000.00, '635 19th Avenue', 'Apt 1D', 'New York', 'New York', 'USA'),
    ('12355-414', 110600.00, '1101 Columbia Street', null, 'New York', 'New York', 'USA'),
    ('33366-991', 85500.00, '16 Dairy Drive', null, 'New York', 'New York', 'USA'),
    ('88888-333', 87300.00, '324 Cherry Street', 'Apt 101', 'New York', 'New York', 'USA');
