-- Connect to database
\c umc_db;

-- Insert Doctors
INSERT INTO doctor_tbl (first_name, last_name, specialty, phone_number, email) VALUES
('Omar', 'Hassan', 'Cardiology', '555-1010', 'omar.hassan@umc.edu'),
('Aisha', 'Ali', 'Dermatology', '555-2020', 'aisha.ali@umc.edu'),
('Yusuf', 'Rahman', 'Neurology', '555-3030', 'yusuf.rahman@umc.edu'),
('Fatima', 'Zahid', 'Pediatrics', '555-4040', 'fatima.zahid@umc.edu'),
('Ibrahim', 'Saleh', 'Orthopedics', '555-5050', 'ibrahim.saleh@umc.edu');

-- Insert Patients
INSERT INTO patient_tbl (first_name, last_name, gender, date_of_birth, phone_number, email) VALUES
('Adam', 'Smith', 'Male', '1995-02-10', '555-1111', 'adam.smith@gmail.com'),
('Layla', 'Johnson', 'Female', '2000-05-22', '555-2222', 'layla.johnson@gmail.com'),
('Bilal', 'Khan', 'Male', '1988-08-18', '555-3333', 'bilal.khan@gmail.com'),
('Zara', 'Ali', 'Female', '1993-11-09', '555-4444', 'zara.ali@gmail.com'),
('Maryam', 'Hussein', 'Female', '1998-07-14', '555-5555', 'maryam.hussein@gmail.com');

-- Insert Schedules
INSERT INTO schedule_tbl (doctor_id, patient_id, appointment_date, reason) VALUES
(1, 1, '2025-10-12 09:00:00', 'Routine Check-up'),
(2, 2, '2025-10-13 11:00:00', 'Skin Allergy Consultation'),
(3, 3, '2025-10-13 14:00:00', 'Headache Consultation'),
(4, 4, '2025-10-14 10:30:00', 'Child Vaccination'),
(5, 5, '2025-10-15 15:00:00', 'Back Pain Follow-up');
