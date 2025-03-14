-- Tạo cơ sở dữ liệu
CREATE DATABASE QuanLySinhVien;
USE QuanLySinhVien;

-- Bảng Sinh viên
CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(50) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Address VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(50)
);

-- Bảng Khóa học
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(50) NOT NULL,
    Credits INT,
    Semester VARCHAR(20)
);

-- Bảng Ghi danh
CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);

-- Bảng Điểm
CREATE TABLE Grades (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    EnrollmentID INT,
    Grade FLOAT,
    GradeDate DATE,
    FOREIGN KEY (EnrollmentID) REFERENCES Enrollments(EnrollmentID)
);
