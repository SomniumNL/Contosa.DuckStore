-- Create the database
CREATE DATABASE DuckStore;
GO

-- Use the database
USE DuckStore;
GO

-- Create the Ducks table
CREATE TABLE Duck (
    DuckID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Description NVARCHAR(MAX), -- Use NVARCHAR(MAX) for large text
    Category VARCHAR(100),
    ImageURL VARCHAR(255)
);
GO

-- Create the Customers table
CREATE TABLE Customer (
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    Address NVARCHAR(MAX), -- Use NVARCHAR(MAX) for large text
    City VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);
GO

-- Create the Orders table
CREATE TABLE [Order] (
    OrderID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE(), -- Use GETDATE() for current timestamp
    TotalAmount DECIMAL(10, 2) NOT NULL,
    Status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID) ON DELETE CASCADE
);
GO

-- Create the OrderItems table
CREATE TABLE OrderItem (
    OrderItemID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID INT NOT NULL,
    DuckID INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES [Order](OrderID) ON DELETE CASCADE,
    FOREIGN KEY (DuckID) REFERENCES Duck(DuckID) ON DELETE CASCADE
);
GO