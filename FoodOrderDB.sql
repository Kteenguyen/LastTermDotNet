create database FoodOrderDB
use FoodOrderDB
CREATE TABLE [Users](
[UserId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] [varchar](50) NULL,
[Username] [varchar](50) NULL UNIQUE,

[Mobile] [varchar](50) NULL,
[Email] [varchar](50) NULL UNIQUE,
[Address] [varchar] (max) NULL,
[PostCode] [varchar](50) NULL,
[Password] [varchar](50) NULL,
[ImageUrl] [varchar] (max) NULL,
[CreatedDate] [datetime] NULL
)

CREATE TABLE [Contact](
[ContactId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] [varchar](50) NULL,
[Email] [varchar](50) NULL,
[Subject] [varchar] (200) NULL,
[Message] [varchar] (max) NULL,
[CreatedDate] [datetime] NULL
)
CREATE TABLE [Categories](
[CategoryId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] [varchar](50) NULL,
[ImageUrl] [varchar] (max) NULL,
[IsActive] [bit] NULL,
[CreatedDate] [datetime] NULL
)
CREATE TABLE [Products](
[ProductId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] [varchar](50) NULL,
[Description] [varchar] (max) NULL,
[Price] [decimal] (18, 2) NULL,
[Quantity] [int] NULL,
[ImageUrl] [varchar] (max) NULL,
[CategoryId] [int] NULL, --FK
[IsActive] [bit] NULL,
[CreatedDate] [datetime] NULL
)
CREATE TABLE [Carts](
[CartId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[ProductId] [int] NULL, --FK
[Quantity] [int] NULL,
[UserId] [int] NULL --FK
)

CREATE TABLE [Orders](
[OrderDetailsId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[OrderNo] [varchar](100) NULL UNIQUE,
[ProductId] [int] NULL, --FK
[Quantity] [int] NULL,
[UserId] [int] NULL, --FK
[Status] [varchar](50) NULL,
[PaymentId] [int] NULL, --FK
[OrderDate] [datetime] NULL
)

CREATE TABLE [Payment](
[PaymentId] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[Name] [varchar](50) NULL,
[CardNo] [varchar](50) NULL,
[Expiry Date] [varchar](50) NULL,
[CvvNo] [int] NULL,
[Address] [varchar] (max) NULL,
[PaymentMode] [varchar](50) NULL
)

ALTER TABLE Contact
ALTER COLUMN Name nvarchar(100);

ALTER TABLE Categories
ALTER COLUMN Name nvarchar(100);

ALTER TABLE Products
ALTER COLUMN Name nvarchar(100);


ALTER TABLE Products
ALTER COLUMN Description nvarchar(100);

ALTER TABLE Payment
ALTER COLUMN Name nvarchar(100);

ALTER TABLE Payment
ALTER COLUMN PaymentMode nvarchar(100);

ALTER TABLE Users
ADD Role nvarchar(100);

ALTER TABLE Users
ADD CONSTRAINT DF_Users_Role DEFAULT 'Customer' FOR Role;