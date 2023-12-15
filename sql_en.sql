CREATE TABLE Students (
  student_id number(2) PRIMARY KEY,
  name VARCHAR2(80) NOT NULL,
  phone VARCHAR2(20),
  age number(2) constraint age_ch check(age >= 16 and age <= 18)
);

CREATE TABLE Subjects (
  subject_id number(2) PRIMARY KEY,
  subject_name VARCHAR2(50) NOT NULL
);

CREATE TABLE Student_Subjects (
  student_id number(2),
  subject_id number(2),
  PRIMARY KEY (student_id, subject_id),
  FOREIGN KEY (student_id) REFERENCES Students(student_id),
  FOREIGN KEY (subject_id) REFERENCES Subjects(subject_id)
);

INSERT INTO Students (student_id, name, phone, age)
VALUES (1, 'ABDELRAHMAN', '01099123139', 18),
       (2, 'AHMED', '01023145687', 17),
       (3, 'MAHMOUD', '01023549124', 17);

INSERT INTO Subjects (subject_id, subject_name)
VALUES (101, 'Math'),
       (102, 'Science'),
       (103, 'English');

INSERT INTO Student_Subjects (student_id, subject_id)
VALUES (1, 101),
       (1, 102),
       (2, 102),
       (2, 103),
       (3, 101),
       (3, 103);
