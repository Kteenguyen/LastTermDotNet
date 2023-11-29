drop database FoodOrderDB
CREATE DATABASE FoodOrderDB;
USE FoodOrderDB;
-- Tạo bảng "Categories"
CREATE TABLE Categories (
    CategoryId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(100) NULL,
    ImageUrl NVARCHAR(MAX) NULL,
    IsActive BIT NULL,
    CreatedDate DATETIME NULL
)
GO

-- Tạo bảng "Roles"
CREATE TABLE Roles (
    RoleId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(100) NULL,
    Description NVARCHAR(MAX) NULL
)
GO

-- Tạo bảng "Users"
CREATE TABLE Users (
    UserId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(100) NULL,
    Username NVARCHAR(50) NULL UNIQUE,
    Mobile NVARCHAR(50) NULL,
    Email NVARCHAR(50) NULL UNIQUE,
    Address NVARCHAR(MAX) NULL,
    PostCode NVARCHAR(50) NULL,
    Password NVARCHAR(50) NULL,
    ImageUrl NVARCHAR(MAX) NULL,
    CreatedDate DATETIME NULL,
    RoleId INT NULL,
    FOREIGN KEY (RoleId) REFERENCES Roles(RoleId)
)
GO

-- Tạo bảng "Products"
CREATE TABLE Products (
    ProductId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(100) NULL,
    Description NVARCHAR(MAX) NULL,
    Price DECIMAL(18, 2) NULL,
    Quantity INT NULL,
    ImageUrl NVARCHAR(MAX) NULL,
    CategoryId INT NULL,
    IsActive BIT NULL,
    CreatedDate DATETIME NULL,
    FOREIGN KEY (CategoryId) REFERENCES Categories(CategoryId)
)
GO

-- Tạo bảng "Carts"
CREATE TABLE Carts (
    CartId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    ProductId INT NULL,
    Quantity INT NULL,
    UserId INT NULL,
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
    FOREIGN KEY (UserId) REFERENCES Users(UserId)
)
GO

-- Tạo bảng "Payments"
CREATE TABLE Payments (
    PaymentId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(100) NULL,
    CardNo NVARCHAR(50) NULL,
    ExpiryDate NVARCHAR(50) NULL,
    CvvNo INT NULL,
    Address NVARCHAR(MAX) NULL,
    PaymentMode NVARCHAR(50) NULL
)
GO

-- Tạo bảng "Orders"
CREATE TABLE Orders (
    OrderId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    OrderNo NVARCHAR(100) NULL UNIQUE,
    ProductId INT NULL,
    Quantity INT NULL,
    UserId INT NULL,
    Status NVARCHAR(50) NULL,
    PaymentId INT NULL,
    OrderDate DATETIME NULL,
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
    FOREIGN KEY (UserId) REFERENCES Users(UserId),
    FOREIGN KEY (PaymentId) REFERENCES Payments(PaymentId)
)
GO



-- Tạo bảng "OrderDetails"
CREATE TABLE OrderDetails (
    OrderDetailsId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    OrderId INT NULL,
    ProductId INT NULL,
    Quantity INT NULL,
    Price DECIMAL(18, 2) NULL,
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
)
GO

-- Tạo bảng "Contact"
CREATE TABLE Contact (
    ContactId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(100) NULL,
    Email NVARCHAR(50) NULL,
    Subject NVARCHAR(200) NULL,
    Message NVARCHAR(MAX) NULL,
    CreatedDate DATETIME NULL
)
GO

-- Tạo bảng "Customers"
CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
    Name NVARCHAR(100) NULL,
    Email NVARCHAR(50) NULL,
    Subject NVARCHAR(200) NULL,
    Message NVARCHAR(MAX) NULL,
    CreatedDate DATETIME NULL
)
GO

