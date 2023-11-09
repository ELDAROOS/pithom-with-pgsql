CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    address VARCHAR(100),
    phone VARCHAR(15),
    gender CHAR(1)
);

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    specialization VARCHAR(50),
    contact_info VARCHAR(100)
);

CREATE TABLE DoctorSpecialties (
    specialty_id INT PRIMARY KEY,
    specialty_name VARCHAR(50)
);

CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    doctor_id INT REFERENCES Doctors(doctor_id),
    appointment_datetime TIMESTAMP,
    diagnosis VARCHAR(100),
    prescriptions TEXT
);

CREATE TABLE MedicalHistory (
    record_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    record_date DATE,
    symptom_description TEXT,
    test_results TEXT,
    doctor_notes TEXT
);

CREATE TABLE MedicalTests (
    test_id INT PRIMARY KEY,
    test_name VARCHAR(50),
    test_date DATE,
    results TEXT,
    medical_history_id INT REFERENCES MedicalHistory(record_id)
);

CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY,
    doctor_id INT REFERENCES Doctors(doctor_id),
    patient_id INT REFERENCES Patients(patient_id),
    medication_name VARCHAR(50),
    dosage VARCHAR(20),
    instructions TEXT
);

CREATE TABLE Medications (
    medication_id INT PRIMARY KEY,
    medication_name VARCHAR(50),
    description TEXT,
    manufacturer VARCHAR(50),
    dosage VARCHAR(20)
);

CREATE TABLE Allergies (
    allergy_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    allergen_name VARCHAR(50),
    description TEXT
);

CREATE TABLE Surgeries (
    surgery_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    surgery_date DATE,
    surgery_name VARCHAR(100),
    surgeon VARCHAR(100),
    description TEXT
);

CREATE TABLE Vaccinations (
    vaccination_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    vaccine_name VARCHAR(50),
    vaccination_date DATE,
    dosage VARCHAR(20)
);

CREATE TABLE Insurance (
    insurance_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    insurance_company_name VARCHAR(50),
    policy_number VARCHAR(20),
    expiration_date DATE
);

CREATE TABLE VitalSigns (
    vital_sign_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    measurement_datetime TIMESTAMP,
    temperature NUMERIC(5, 2),
    blood_pressure VARCHAR(20),
    pulse INT,
    weight NUMERIC(5, 2),
    height NUMERIC(5, 2)
);

CREATE TABLE Visits (
    visit_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    visit_date DATE,
    visit_description TEXT,
    results TEXT
);

CREATE TABLE ElectronicMedicalRecord (
    emr_id INT PRIMARY KEY,
    patient_id INT REFERENCES Patients(patient_id),
    record_creation_date TIMESTAMP,
    text_description TEXT
);















INSERT INTO Patients (first_name, last_name, date_of_birth, address, phone, gender)
VALUES
    ('Иван', 'Иванов', '1980-05-15', 'Улица Пушкина, 123', '123-456-7890', 'М'),
    ('Мария', 'Петрова', '1995-02-20', 'Улица Ленина, 456', '987-654-3210', 'Ж'),
    ('Алексей', 'Сидоров', '1972-11-10', 'Улица Гагарина, 789', '555-123-4567', 'М'),
    ('Елена', 'Козлова', '1988-08-25', 'Улица Кирова, 101', '777-888-9999', 'Ж'),
    ('Павел', 'Морозов', '2000-03-02', 'Улица Молодежи, 111', '111-222-3333', 'М'),
    ('Наталья', 'Семенова', '1965-09-14', 'Улица Жукова, 222', '444-555-6666', 'Ж'),
    ('Андрей', 'Волков', '1990-04-30', 'Улица Рабочая, 333', '999-888-7777', 'М'),
    ('Екатерина', 'Иванова', '1978-07-07', 'Улица Садовая, 444', '222-333-4444', 'Ж'),
    ('Дмитрий', 'Петров', '1992-12-05', 'Улица Лесная, 555', '333-222-1111', 'М'),
    ('Светлана', 'Смирнова', '1987-06-12', 'Улица Полярная, 666', '555-555-5555', 'Ж'),
    ('Сергей', 'Антонов', '1970-01-18', 'Улица Мира, 777', '777-777-7777', 'М'),
    ('Ольга', 'Ковалева', '1984-03-26', 'Улица Пролетарская, 888', '888-888-8888', 'Ж'),
    ('Артем', 'Соловьев', '1994-10-08', 'Улица Октября, 999', '999-999-9999', 'М'),
    ('Анастасия', 'Медведева', '1986-08-01', 'Улица Солнечная, 1234', '1234-5678-9012', 'Ж'),
    ('Максим', 'Козлов', '1976-09-19', 'Улица Звездная, 5678', '5678-1234-9012', 'М'),
    ('Татьяна', 'Николаева', '2002-05-03', 'Улица Центральная, 9999', '9999-8888-7777', 'Ж'),
    ('Анна', 'Соколова', '1993-11-21', 'Улица Парковая, 1111', '1111-2222-3333', 'Ж'),
    ('Александр', 'Иванов', '1983-04-17', 'Улица Весенняя, 12345', '12345-67890-12345', 'М'),
    ('Евгения', 'Петрова', '1974-07-31', 'Улица Лесопарковая, 9876', '9876-5432-1098', 'Ж'),
    ('Игорь', 'Сидоров', '1991-02-12', 'Улица Горная, 7777', '7777-1234-5678', 'М'),
    ('Валентина', 'Морозова', '1979-03-08', 'Улица Водопадная, 12333', '12333-44444-55555', 'Ж'),
    ('Алексей', 'Козлов', '1989-06-29', 'Улица Солнцева, 123456', '123456-789012-34567', 'М');
--22

-- Добавление данных в таблицу "Doctors"
INSERT INTO Doctors (first_name, last_name, specialization, contact_info)
VALUES
    ('Андрей', 'Иванов', 'Терапевт', 'andrey.ivanov@example.com'),
    ('Елена', 'Петрова', 'Хирург', 'elena.petrova@example.com'),
    ('Максим', 'Сидоров', 'Гинеколог', 'maxim.sidorov@example.com'),
    ('Ирина', 'Козлова', 'Окулист', 'irina.kozlova@example.com'),
    ('Дмитрий', 'Морозов', 'Стоматолог', 'dmitry.morozov@example.com'),
    ('Ольга', 'Семенова', 'Педиатр', 'olga.semenova@example.com'),
    ('Сергей', 'Волков', 'Невролог', 'sergey.volkov@example.com'),
    ('Наталья', 'Иванова', 'Кардиолог', 'natalya.ivanova@example.com'),
    ('Алексей', 'Петров', 'Эндокринолог', 'alexey.petrov@example.com'),
    ('Екатерина', 'Смирнова', 'Психиатр', 'ekaterina.smirnova@example.com'),
    ('Анна', 'Антонова', 'Дерматолог', 'anna.antonova@example.com'),
    ('Владимир', 'Ковалев', 'Уролог', 'vladimir.kovalev@example.com'),
    ('Татьяна', 'Соловьева', 'Акушер-гинеколог', 'tatyana.solovyeva@example.com'),
    ('Артем', 'Медведев', 'Реаниматолог', 'artem.medvedev@example.com'),
    ('Мария', 'Козлова', 'Онколог', 'maria.kozlova@example.com'),
    ('Павел', 'Николаев', 'Психотерапевт', 'pavel.nikolaev@example.com'),
    ('Светлана', 'Соколова', 'Лор', 'svetlana.sokolova@example.com'),
    ('Игорь', 'Иванов', 'Ортопед', 'igor.ivanov@example.com'),
    ('Оксана', 'Петрова', 'Эндоскопист', 'oksana.petrova@example.com'),
    ('Александр', 'Сидоров', 'Кардиохирург', 'alexander.sidorov@example.com'),
    ('Евгений', 'Морозов', 'Пульмонолог', 'evgeny.morozov@example.com'),
    ('Юлия', 'Иванова', 'Офтальмолог', 'yulia.ivanova@example.com');
