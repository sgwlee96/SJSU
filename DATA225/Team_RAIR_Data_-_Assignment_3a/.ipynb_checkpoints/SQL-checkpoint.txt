CREATE TABLE Patient
(
  Name VARCHAR(50) NOT NULL,
  Sex VARCHAR(1) NOT NULL,
  Date_of_birth DATE NOT NULL,
  Address VARCHAR(50),
  ID INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Building
(
  ID INT NOT NULL,
  street VARCHAR(50) NOT NULL,
  building_number INT NOT NULL,
  PRIMARY KEY (ID)
);

CREATE TABLE Department
(
  ID INT NOT NULL,
  Type VARCHAR(50) NOT NULL,
  Building_ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (Building_ID) REFERENCES Building(ID)
);

CREATE TABLE Patient_Contact
(
  Contact VARCHAR(10) NOT NULL,
  Patient_ID INT NOT NULL,
  PRIMARY KEY (Contact, Patient_ID),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(ID)
);

CREATE TABLE Doctor
(
  Name VARCHAR(50) NOT NULL,
  Sex VARCHAR(1) NOT NULL,
  Date_of_birth DATE NOT NULL,
  Specialization VARCHAR(50) NOT NULL,
  ID INT NOT NULL,
  Department_ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (Department_ID) REFERENCES Department(ID)
);

CREATE TABLE Ward
(
  ID INT NOT NULL,
  number_of_beds INT NOT NULL,
  Building_ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (Building_ID) REFERENCES Building(ID)
);

CREATE TABLE Hospital_stay
(
  ID INT NOT NULL,
  Admit_date DATE NOT NULL,
  Discharge_date DATE NOT NULL,
  Ward_ID INT NOT NULL,
  PRIMARY KEY (ID),
  FOREIGN KEY (Ward_ID) REFERENCES Ward(ID)
);

CREATE TABLE Cared_by
(
  Patient_ID INT NOT NULL,
  Doctor_ID INT NOT NULL,
  PRIMARY KEY (Patient_ID, Doctor_ID),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(ID),
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(ID)
);

CREATE TABLE Stays
(
  Patient_ID INT NOT NULL,
  Ward_ID INT NOT NULL,
  PRIMARY KEY (Patient_ID, Ward_ID),
  FOREIGN KEY (Patient_ID) REFERENCES Patient(ID),
  FOREIGN KEY (Ward_ID) REFERENCES Ward(ID)
);

CREATE TABLE Doctor_Contact
(
  Contact VARCHAR(10) NOT NULL,
  Doctor_ID INT NOT NULL,
  PRIMARY KEY (Contact, Doctor_ID),
  FOREIGN KEY (Doctor_ID) REFERENCES Doctor(ID)
);
