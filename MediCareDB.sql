CREATE database MediCareDB;
USE MediCareDB;
CREATE table Doctors(DoctorID Int PRIMARY KEY, DoctorName VARCHAR(100) NOT NULL, Specialization VARCHAR(50), ConsultationFee DECIMAL(7,2) CHECK (ConsultationFee > 0), ExperienceYears Int CHECK (ExperienceYears >= 0));
DESC Doctors;
Create Table Patients(PatientID Integer PRIMARY KEY, FirstName VARCHAR(50) NOT NULL, LastName VARCHAR(50), Email VARCHAR(100) UNIQUE ,RegistrationDate DATE DEFAULT(curdate()) );
ALTER TABLE Doctors MODIFY AvailabilityStatus VARCHAR(20) DEFAULT 'AVailable';
DESC Doctors;
ALTER TABLE Patients MODIFY  Email VARCHAR(255);
ALTER TABLE Doctors DROP  Specialization ;
DESC Doctors;
DESC Patients;
ALTER TABLE Patients MODIFY RegistrationDate DATE DEFAULT(curdate());
DESC Patients;
INSERT INTO Doctors VALUES(301,'Dr. Arjun Rao', 800.00, 12,'Available');
INSERT INTO Doctors VALUES(302, 'Dr. Meena Iyer', 600.00, 8, 'Available'),(303, 'Dr. Karthik Kumar', 750.00, 10, 'Unavailable');
SELECT * FROM Doctors;
INSERT INTO Patients VALUES(1,'Ravi','Shankar','ravi.shankar@medicare.com',curdate());
DESC Patients;
SELECT * FROM Patients;







