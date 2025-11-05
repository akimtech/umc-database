/*
\c umc_db;
*/
-- 1️⃣ View all doctors
SELECT * FROM doctor_tbl;

-- 2️⃣ View all patients
SELECT * FROM patient_tbl;

-- 3️⃣ View all scheduled appointments
SELECT * FROM schedule_tbl;

-- 4️⃣ Show only doctor names and specialties
SELECT first_name, last_name, specialty FROM doctor_tbl;

-- 5️⃣ Show only female patients
SELECT first_name, last_name, gender FROM patient_tbl WHERE gender = 'Female';

-- 6️⃣ Find a doctor by specialty (example: Dermatology)
SELECT * FROM doctor_tbl WHERE specialty = 'Dermatology';

-- 7️⃣ Find patients born after 1990
SELECT first_name, last_name, date_of_birth 
FROM patient_tbl 
WHERE date_of_birth > '1990-01-01';

-- 8️⃣ Count how many doctors are in the hospital
SELECT COUNT(*) AS total_doctors FROM doctor_tbl;

-- 9️⃣ Count how many patients are registered
SELECT COUNT(*) AS total_patients FROM patient_tbl;

-- 🔟 Count total appointments in the system
SELECT COUNT(*) AS total_appointments FROM schedule_tbl;

-- 11️⃣ Show upcoming appointments (after Oct 13, 2025)
SELECT * FROM schedule_tbl WHERE appointment_date > '2025-10-13';

-- 12️⃣ Show appointments ordered by date
SELECT * FROM schedule_tbl ORDER BY appointment_date ASC;

-- 13️⃣ Show patients with their assigned doctor names
SELECT 
    p.first_name AS patient_first,
    p.last_name AS patient_last,
    d.first_name AS doctor_first,
    d.last_name AS doctor_last,
    s.appointment_date
FROM schedule_tbl s
JOIN patient_tbl p ON s.patient_id = p.patient_id
JOIN doctor_tbl d ON s.doctor_id = d.doctor_id
ORDER BY s.appointment_date;

-- 14️⃣ Show total appointments per doctor
SELECT 
    d.first_name || ' ' || d.last_name AS doctor_name,
    COUNT(s.schedule_id) AS total_appointments
FROM doctor_tbl d
LEFT JOIN schedule_tbl s ON d.doctor_id = s.doctor_id
GROUP BY doctor_name
ORDER BY total_appointments DESC;

-- 15️⃣ Show patients who have an appointment with Dr. Fatima Zahid
SELECT 
    p.first_name AS patient_first,
    p.last_name AS patient_last,
    s.appointment_date,
    s.reason
FROM schedule_tbl s
JOIN patient_tbl p ON s.patient_id = p.patient_id
JOIN doctor_tbl d ON s.doctor_id = d.doctor_id
WHERE d.first_name = 'Fatima' AND d.last_name = 'Zahid';

