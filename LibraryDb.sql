DROP DATABASE IF EXISTS Library;
CREATE DATABASE Library;
USE Library;

CREATE TABLE Books (
    ISBN int IDENTITY NOT NULL PRIMARY KEY,
    Title nvarchar(max) NOT NULL,
    Author nvarchar(max) NOT NULL,
    CopiesAvailable int NOT NULL,
)
CREATE TABLE Users (
    UserId int NOT NULL PRIMARY KEY,
    Name nvarchar(max) NULL,
)
CREATE TABLE Copies (
    UniqueCopyId int IDENTITY NOT NULL PRIMARY KEY,
	Copy_ISBN int NOT NULL,
    FOREIGN KEY (Copy_ISBN) REFERENCES Books(ISBN),
    DueDate date NULL,
    Borrowed_By int FOREIGN KEY REFERENCES Users(UserId),
)
