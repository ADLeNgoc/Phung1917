﻿create database QLSVOFF
go 
use QLSVOFF
go
CREATE TABLE  Student(
	Student_ID INT IDENTITY(1, 1) PRIMARY KEY,
	NAME NVARCHAR(50),
	AGE INT NOT NULL
)
INSERT INTO Student VALUES('1512','Nguyen Thi Phung', '12')
INSERT INTO Student VALUES('1513','Nguyen Van B', '13')
INSERT INTO Student VALUES('1514','Lê Văn H', '14')

CREATE TABLE DAYOFF(
	IDDay CHAR(4) PRIMARY KEY,
	Student_ID INT FOREIGN KEY REFERENCES Student(Student_ID),
	Day_Off date NOT NULL
)

INSERT INTO DAYOFF VALUES('1234', '1512', '1/10/2019')
INSERT INTO DAYOFF VALUES('2314', '1513', '3/10/2019')

create table Class(
	IDClass int PRIMARY KEY NOT NULL,
	Class_Name varchar(50) NOT NULL,
);
INSERT INTO Class VALUES('1917', 'Lập Trình JaVa 2')
INSERT INTO Class VALUES('1918', 'Thiết Kế Mạng')
INSERT INTO Class VALUES('1919', 'Quản Trị Mạng')
