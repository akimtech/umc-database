/*
CREATE DATABASE umc_db;
\c umc_db;
*/

-- ==============================
-- TABLE: doctor_tbl
-- ==============================
CREATE TABLE doctor_tbl (
    doctor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialty VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100)
);

-- ==============================
-- TABLE: patient_tbl
-- ==============================
CREATE TABLE patient_tbl (
    patient_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    date_of_birth DATE,
    phone_number VARCHAR(20),
    email VARCHAR(100)
);

-- ==============================
-- TABLE: schedule_tbl
-- ==============================
CREATE TABLE schedule_tbl (
    schedule_id SERIAL PRIMARY KEY,
    doctor_id INT NOT NULL REFERENCES doctor_tbl(doctor_id),
    patient_id INT NOT NULL REFERENCES patient_tbl(patient_id),
    appointment_date TIMESTAMP NOT NULL,
    reason VARCHAR(255)
);

