USE [master]
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'StudentDB')
	DROP DATABASE StudentDB
GO

CREATE DATABASE StudentDB
GO

use StudentDB
GO
Create Table Student (RollNo varchar(10),Name varchar(30),mark float, PRIMARY KEY (RollNo))
GO
INSERT INTO Student (RollNo,Name,Mark) VALUES ('A1','Le Man', 5)
INSERT INTO Student (RollNo,Name,Mark) VALUES ('A2','Tran Dao', 9)
INSERT INTO Student (RollNo,Name,Mark) VALUES ('B1','Dang Xuan', 8)
INSERT INTO Student (RollNo,Name,Mark) VALUES ('B2','Phan Ha', 7)
INSERT INTO Student (RollNo,Name,Mark) VALUES ('B3','Hoang Thu', 8)
INSERT INTO Student (RollNo,Name,Mark) VALUES ('B4','Nguyen Dong', 7)
INSERT INTO Student (RollNo,Name,Mark) VALUES ('C2','Pham Thu', 7)
GO
select * from Student
GO
CREATE TABLE Users (
  id INT AUTO_INCREMENT,
  Username VARCHAR(255) NOT NULL,
  Password VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);
GO
select * from Users
GO
INSERT INTO Users (Username,Password,Id) VALUES ('a','a', 1)
INSERT INTO Users (Username,Password,Id) VALUES ('b','b', 2)
INSERT INTO Users (Username,Password,Id) VALUES ('c','c', 3)