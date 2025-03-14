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
-- Dữ liệu mẫu cho bảng Sinh viên
INSERT INTO Students (FullName, Gender, DateOfBirth, Address, Phone, Email) VALUES
('Nguyễn Văn A', 'Nam', '2002-01-15', 'Hà Nội', '0123456789', 'vana@example.com'),
('Trần Thị B', 'Nữ', '2001-05-20', 'TP. HCM', '0987654321', 'thib@example.com'),
('Lê Văn C', 'Nam', '2003-03-10', 'Đà Nẵng', '0345678912', 'vanc@example.com');

-- Dữ liệu mẫu cho bảng Khóa học
INSERT INTO Courses (CourseName, Credits, Semester) VALUES
('Lập trình Python', 3, 'Kỳ 1'),
('Phân tích và Thiết kế Hệ thống', 4, 'Kỳ 2'),
('Cơ sở Dữ liệu', 3, 'Kỳ 1');

-- Dữ liệu mẫu cho bảng Ghi danh
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2025-01-01'),
(1, 2, '2025-01-05'),
(2, 3, '2025-01-10'),
(3, 1, '2025-01-15');

-- Dữ liệu mẫu cho bảng Điểm
INSERT INTO Grades (EnrollmentID, Grade, GradeDate) VALUES
(1, 8.5, '2025-03-01'),
(2, 9.0, '2025-03-05'),
(3, 7.5, '2025-03-10'),
(4, 8.0, '2025-03-15');
