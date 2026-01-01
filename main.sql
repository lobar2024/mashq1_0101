-- Courses jadvali
CREATE TABLE Courses (
    id INTEGER PRIMARY KEY,
    course_name TEXT NOT NULL,
    price REAL
);

-- Students jadvali
CREATE TABLE Students (
    id INTEGER PRIMARY KEY,
    fullname TEXT NOT NULL,
    course_id INTEGER,
    FOREIGN KEY (course_id) REFERENCES Courses(id)
);

-- Kurslar qo‘shish
INSERT INTO Courses (course_name, price) VALUES
('Python', 500000),
('English', 300000),
('Math', 200000);

-- Talabalar qo‘shish
INSERT INTO Students (fullname, course_id) VALUES
('Ali Valiyev', 1),
('Vali Aliyev', 1),
('Hasan Aliyev', 2),
('Husan Aliyev', 3),
('Olim Karimov', 2);

-- Har bir kursga yozilgan talabalar
SELECT c.course_name, s.fullname
FROM Courses c
JOIN Students s ON c.id = s.course_id;
