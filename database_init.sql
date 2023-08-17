
DROP DATABASE IF EXISTS RVH;
CREATE DATABASE RVH;


DROP TABLE IF EXISTS Patients CASCADE;
CREATE TABLE Patients (
pid INTEGER,
name CHAR(40),
address CHAR (40),
telephone INTEGER,
care_centre_id INTEGER
);

INSERT INTO Patients (pid, name, address, telephone, care_centre_id) VALUES
(0, 'Alice', '2 zero st.', 110, 1),
(1, 'Janice', '12 one st.', 111, 2),
(2, 'Judas', '14 two st.', 112, 0),
(3, 'Barbara', '32 three st.', 113, 3),
(4, 'Nathan', '4 five st.', 114, 2),
(5, 'Norbert', '8 six st.', 115, 4)
;

SELECT * FROM Patients;

DROP INDEX IF EXISTS Patients_PK_Index;
DROP INDEX IF EXISTS are_centre_Patient_FK_Index;
CREATE UNIQUE INDEX Patients_PK_Index ON Patients(pid);
CREATE INDEX care_centre_Patient_FK_Index ON Patients(care_centre_id);

DROP TABLE IF EXISTS Care_centres CASCADE;
CREATE TABLE Care_centres (
cid INTEGER,
name CHAR (40),
location CHAR(40),
nurse_charge_id INTEGER
);

INSERT INTO Care_centres (cid, name, location, nurse_charge_id) VALUES
(0, 'Cardiology', 'Building 4', 1),
(1, 'Dermatology', 'Building 5', 4),
(2, 'Oncology', 'Building 1', 8),
(3, 'Intensive Care', 'Building 3', 9),
(4, 'Maternity', 'Building 2', 7)
;

SELECT * FROM Care_centres;

DROP INDEX IF EXISTS Care_centres_PK_Index;
DROP INDEX IF EXISTS nurse_charge_care_centres_FK_Index;
CREATE UNIQUE INDEX Care_centres_PK_INDEX ON Care_centres(cid);
CREATE INDEX nurse_charge_care_centres_FK_Index ON Care_centres(nurse_charge_id);

DROP TABLE IF EXISTS Treatments CASCADE;
CREATE TABLE Treatments (
tid INTEGER,
patient_id INTEGER,
physician_id INTEGER,
treatment_name CHAR(40),
t_date DATE
);

INSERT INTO Treatments (tid, patient_id, physician_id, treatment_name, t_date) VALUES
(0, 4, 3, 'Surgical Procedures', '2022-07-12'),
(1, 2, 1, 'Pain Management', ' 2022-07-13'),
(2, 1, 4, 'Antibiotic Therapy', ' 2022-07-27'),
(3, 4, 1, 'Surgical Procedures', ' 2022-08-03'),
(4, 0, 4, 'Antibiotic Therapy', ' 2022-08-10'),
(5, 5, 3, 'Intravenous Fluids', ' 2022-08-18'),
(6, 0, 1, 'Surgical Procedures', ' 2022-08-30'),
(7, 5, 3, 'Pain Management', ' 2022-10-17'),
(8, 4, 2, 'Intravenous Fluids', ' 2022-12-19'),
(9, 3, 4, 'Chemotherapy', ' 2022-12-20'),
(10, 4, 0, 'Surgical Procedures', '2022-06-08')
;

SELECT * FROM Treatments;

DROP INDEX IF EXISTS Treatments_PK_Index;
DROP INDEX IF EXISTS patient_treatments_FK_Index;
DROP INDEX IF EXISTS physician_treatments_FK_Index;
CREATE UNIQUE INDEX Treatments_PK_Index ON Treatments(tid);
CREATE INDEX patient_treatments_FK_Index ON Treatments(patient_id);
CREATE INDEX physician_treatments_FK_Index ON Treatments(physician_id);

DROP TABLE IF EXISTS Nurses CASCADE;
CREATE TABLE Nurses (
nid INTEGER,
name CHAR(40),
care_centre_id INTEGER,
certificate_type CHAR (3),
telephone INTEGER,
salary FLOAT
);

INSERT INTO Nurses (nid, name, care_centre_id, certificate_type, telephone, salary) VALUES
(0, 'Natalie', 0, 'LPN', '850', 53819),
(1, 'Brent', 0, 'RN', '039', 88370),
(2, 'Maggie', 3, 'LPN', '676', 84131),
(3, 'Alborz', 4, 'LPN', '274', 80822),
(4, 'Filip', 1, 'RN', '811', 61092),
(5, 'August', 0, 'LPN', '084', 65341),
(6, 'Lena', 3, 'LPN', '830', 67188),
(7, 'Lance', 4, 'RN', '921', 77552),
(8, 'Stacie', 2, 'RN', '143', 52939),
(9, 'Natasha', 3, 'RN', '907', 68044),
(10, 'Emma', 0, 'LPN', '124', 65341),
(11, 'John', 3, 'LPN', '120', 67188),
(12, 'Mary', 4, 'RN', '121', 77552),
(13, 'Jane', 2, 'RN', '123', 52939),
(14, 'June', 3, 'RN', '127', 68044)
;

SELECT * FROM Nurses;

DROP INDEX IF EXISTS Nurses_PK_Index;
DROP INDEX IF EXISTS care_centre_nurses_FK_Index;
CREATE UNIQUE INDEX Nurses_PK_Index ON Nurses(nid);
CREATE INDEX care_centre_nurses_FK_Index ON Nurses(care_centre_id);

DROP TABLE IF EXISTS Physicians CASCADE;
CREATE TABLE Physicians (
phid INTEGER,
name CHAR(40),
pager_number INTEGER,
specialization CHAR(40),
salary FLOAT
);

INSERT INTO Physicians (phid, name, pager_number, specialization, Salary) VALUES
(1, 'Linnie', '099', 'Oncology', 76245),
(2, 'Agace', '643', 'Anesthesiology', 58543),
(3, 'Skell', '691', 'Dermatology', 41198),
(4, 'Dulcinea', '150', 'Cardiology', 63916),
(5, 'Idette', '436', 'Dermatology', 79556),
(6, 'Barbabas', '731', 'Internal medicine', 74290),
(7, 'Lothaire', '336', 'Oncology', 55290),
(8, 'Stephen', '199', 'Internal medicine', 61198),
(9, 'Joanne', '862', 'Anesthesiology', 75458),
(10, 'Silvester', '567', 'Anesthesiology', 79527)
;

SELECT * FROM Physicians;

DROP INDEX IF EXISTS Physicians_PK_Index;
CREATE UNIQUE INDEX Physicians_PK_Index ON Physicians(phid);
