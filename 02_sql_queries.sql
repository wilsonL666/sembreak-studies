USE clinic_db;

--1. 查出 Doctors 表中所有属于 'Cardiology' 的医生。
SELECT doctor_name, specialty
FROM Doctors
WHERE specialty = 'Cardiology'; 

--2. 查出所有预约信息，包括患者姓名、医生姓名和预约日期。
SELECT
    Appointments.patient_name,
    Doctors.doctor_name,
    Appointments.appointment_date
FROM appointments
INNER JOIN Doctors ON Appointments.doctor_id = Doctors.doctor_id;

--统计每个医生各自有多少个预约。
SELECT
    doctor_id,
    COUNT(*) AS appointment_count
FROM appointments
GROUP BY doctor_id