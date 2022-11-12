﻿CREATE DATABASE SHKOLO_DB

USE SHKOLO_DB

CREATE TABLE [ADDRESS]
(
	ADDRESS_ID INT IDENTITY (1,1) PRIMARY KEY,
	STREET_NUMBER INT NOT NULL,
	STREET_NAME VARCHAR(50) NOT NULL,
	CITY VARCHAR(50) NOT NULL
)

CREATE TABLE SCHOOL_TYPE
(
	SCHOOL_TYPE_ID INT IDENTITY (1,1) PRIMARY KEY,
	SCHOOL_TYPE_NAME VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE [SUBJECT]
(
	SUBJECT_ID INT IDENTITY (1,1) PRIMARY KEY,
	SUBJECT_NAME VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE GRADE_TYPE
(
	GRADE_TYPE_ID INT IDENTITY (1,1) PRIMARY KEY,
	GRADE_TYPE_NAME VARCHAR(50) NOT NULL UNIQUE
)

CREATE TABLE PRINCIPAL
(
	PRINCIPAL_ID INT IDENTITY (1,1) PRIMARY KEY,
	USERNAME VARCHAR(50) NOT NULL UNIQUE,
	[PASSWORD] VARCHAR(50) NOT NULL,
	FIRST_NAME VARCHAR(50) NOT NULL,
	MIDDLE_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	GENDER CHAR(1) NOT NULL CHECK (GENDER IN ('F', 'M')),
	PHONE VARCHAR(10),
	EMAIL VARCHAR(50)
)

CREATE TABLE SCHOOL
(
	SCHOOL_ID INT IDENTITY (1,1) PRIMARY KEY,
	SCHOOL_NAME VARCHAR(50) NOT NULL,
	ADDRESS_ID INT NOT NULL UNIQUE FOREIGN KEY REFERENCES ADDRESS,
	SCHOOL_TYPE_ID INT NOT NULL FOREIGN KEY REFERENCES SCHOOL_TYPE,
	PRINCIPAL_ID INT NOT NULL UNIQUE FOREIGN KEY REFERENCES PRINCIPAL
)

CREATE TABLE TEACHER
(
	TEACHER_ID INT IDENTITY (1,1) PRIMARY KEY,
	USERNAME VARCHAR(50) NOT NULL UNIQUE,
	[PASSWORD] VARCHAR(50) NOT NULL,
	FIRST_NAME VARCHAR(50) NOT NULL,
	MIDDLE_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	GENDER CHAR(1) NOT NULL CHECK (GENDER IN ('F', 'M')),
	PHONE VARCHAR(10),
	EMAIL VARCHAR(50),
	SUBJECT_ID INT NOT NULL REFERENCES SUBJECT,
	SCHOOL_ID INT NOT NULL REFERENCES SCHOOL
)

CREATE TABLE LESSON
(
	LESSON_ID INT IDENTITY (1,1) PRIMARY KEY,
	[DATE] DATE NOT NULL,
	START_TIME TIME NOT NULL,
	END_TIME TIME NOT NULL,
	TEACHER_ID INT NOT NULL FOREIGN KEY REFERENCES TEACHER,
	UNIQUE([DATE], START_TIME, END_TIME, TEACHER_ID)
)

CREATE TABLE CLASS
(
	CLASS_ID INT IDENTITY (1,1) PRIMARY KEY,
	CLASS_NUMBER INT NOT NULL,
	CLASS_LETTER CHAR(1) NOT NULL,
	SCHOOL_ID INT NOT NULL FOREIGN KEY REFERENCES SCHOOL,
	TEACHER_ID INT NOT NULL UNIQUE FOREIGN KEY REFERENCES TEACHER,
	UNIQUE(CLASS_NUMBER, CLASS_LETTER, SCHOOL_ID)
)

CREATE TABLE STUDENT
(
	STUDENT_ID INT IDENTITY (1,1) PRIMARY KEY,
	USERNAME VARCHAR(50) NOT NULL UNIQUE,
	[PASSWORD] VARCHAR(50) NOT NULL,
	FIRST_NAME VARCHAR(50) NOT NULL,
	MIDDLE_NAME VARCHAR(50) NOT NULL,
	LAST_NAME VARCHAR(50) NOT NULL,
	GENDER CHAR(1) NOT NULL CHECK (GENDER IN ('F', 'M')),
	BIRTH_DATE DATE,
	BIRTH_PLACE VARCHAR(50),
	PHONE VARCHAR(10),
	EMAIL VARCHAR(50),
	CLASS_ID INT NOT NULL REFERENCES CLASS
)

CREATE TABLE ABSENCE
(
	LESSON_ID INT NOT NULL FOREIGN KEY REFERENCES LESSON,
	STUDENT_ID INT NOT NULL FOREIGN KEY REFERENCES STUDENT, 
	ABSENCE_AMOUNT NUMERIC(3,2) NOT NULL, 
	IS_EXCUSED BIT NOT NULL, 
	PRIMARY KEY(LESSON_ID, STUDENT_ID)
)

CREATE TABLE GRADE
(
	GRADE_ID INT IDENTITY (1,1) PRIMARY KEY,
	GRADE_VALUE NUMERIC(3,2) NOT NULL,
	GRADE_TYPE_ID INT NOT NULL FOREIGN KEY REFERENCES GRADE_TYPE,
	SUBJECT_ID INT NOT NULL FOREIGN KEY REFERENCES SUBJECT,
	STUDENT_ID INT NOT NULL FOREIGN KEY REFERENCES STUDENT
)