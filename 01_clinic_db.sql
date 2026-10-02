-- Active: 1790939084355@@127.0.0.1@3306
-- Active: 1790939084355@@127.0.0.1@3306939084355@@127.0.0.1@3306939084355@@127.0.0.1@3306939084355@@127.0.0.1@3306939084355@@127.0.0.1@3306
-- 1. 创建数据库并使用它
CREATE DATABASE IF NOT EXISTS clinic_db;
USE clinic_db;

-- 2. 创建医生表
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    doctor_name VARCHAR(100) NOT NULL,
    specialty VARCHAR(50)
);

-- 3. 创建预约表（含外键关联）
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(100) NOT NULL,
    appointment_date DATE NOT NULL,
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- 4. 插入测试数据
INSERT INTO Doctors (doctor_name, specialty) VALUES 
('Dr. Lee', 'Cardiology'),
('Dr. Tan', 'Pediatrics'),
('Dr. Wong', 'General');

INSERT INTO Appointments (patient_name, appointment_date, doctor_id) VALUES 
('Ali', '2026-10-05', 1),
('Bala', '2026-10-06', 1),
('Charlie', '2026-10-05', 2);