INSERT INTO teachers (name) VALUES
('Dr. James Lim'),
('Dr. Lily Chang');

INSERT INTO students (name, teacher_id) VALUES
('Alice Ling', 1),
('John Jackson', 1),
('Michael Davis', 1),
('Emily Brown', 1),
('Sarah Lee', 1),
('Harper Lee', 2),
('Wendy Lim', 2),
('Jeremy Tan', 2),
('Benjamin Scott', 2),
('Chloe Tan', 2);

INSERT INTO courses (course_code, name) VALUES
('CS1101S', 'Introduction to Programming Methodology'),
('CS1231S', 'Discrete Structures'),
('IS1108', 'Digital Ethics'),
('MA1522', 'Linear Algebra'),
('MA1521', 'Calculus'),
('CS2103T', 'Software Engineering'),
('CS2102', 'Database Systems'),
('CS2107', 'CyberSecurity'),
('CS2105', 'Networks'),
('HSA1000', 'Asian Interconnections'),
('CS3223', 'Database Implementation'),
('CS5234', 'Software Testing');

INSERT INTO semesters (year, semester_number) VALUES
(2019, 1),
(2019, 2),
(2020, 1),
(2020, 2),
(2021, 1),
(2021, 2),
(2022, 1),
(2022, 2),
(2023, 1),
(2023, 2),
(2024, 1),
(2024, 2);

INSERT INTO grade_scale (grade, gpa) VALUES
('A+', 5.0),
('A', 5.0),
('A-', 4.5),
('B+', 4.0),
('B', 3.5),
('B-', 3.0),
('C+', 2.5),
('C', 2.0);

INSERT INTO grades (student_id, semester_id, course_code, grade) VALUES
(1, 1, 'HSA1000', 'A'),
(1, 2, 'CS1231S', 'A-'),
(1, 3, 'IS1108', 'B+'),
(1, 4, 'MA1522', 'A'),
(1, 5, 'MA1521', 'B'),
(1, 6, 'CS2103T', 'B+'),
(1, 7, 'CS2102', 'A'),
(1, 8, 'CS2107', 'A-'),

(2, 2, 'CS1101S', 'A-'),
(2, 3, 'CS1231S', 'B+'),
(2, 4, 'IS1108', 'B'),
(2, 5, 'MA1522', 'B+'),
(2, 6, 'MA1521', 'A-'),
(2, 7, 'CS2103T', 'A'),
(2, 8, 'CS2102', 'A-'),
(2, 9, 'CS2107', 'B+'),

(3, 4, 'CS1101S', 'A'),
(3, 5, 'CS1231S', 'A'),
(3, 6, 'IS1108', 'A-'),
(3, 7, 'MA1522', 'A-'),
(3, 8, 'MA1521', 'A'),
(3, 9, 'CS2103T', 'B'),
(3, 10, 'CS2102', 'B+'),
(3, 11, 'CS2107', 'C+'),

(4, 1, 'CS1101S', 'B'),
(4, 2, 'CS1231S', 'A-'),
(4, 3, 'IS1108', 'A'),
(4, 4, 'MA1522', 'B+'),
(4, 5, 'MA1521', 'B'),
(4, 6, 'CS2103T', 'A'),
(4, 7, 'CS2102', 'B'),
(4, 8, 'CS2107', 'A'),

(5, 3, 'CS1101S', 'B+'),
(5, 4, 'CS1231S', 'A'),
(5, 5, 'IS1108', 'A-'),
(5, 6, 'MA1522', 'A-'),
(5, 7, 'MA1521', 'B'),
(5, 8, 'CS2103T', 'A-'),
(5, 9, 'CS2102', 'B'),
(5, 10, 'CS2107', 'A'),

(6, 1, 'CS1101S', 'C+'),
(6, 2, 'CS1231S', 'B+'),
(6, 3, 'IS1108', 'A'),
(6, 4, 'MA1522', 'B'),
(6, 5, 'MA1521', 'A-'),
(6, 6, 'CS2103T', 'B+'),
(6, 7, 'CS2102', 'A'),
(6, 8, 'CS2107', 'B'),

(7, 2, 'CS1101S', 'A'),
(7, 3, 'CS1231S', 'B'),
(7, 4, 'IS1108', 'B+'),
(7, 5, 'MA1522', 'A'),
(7, 6, 'MA1521', 'A-'),
(7, 7, 'CS2103T', 'B+'),
(7, 8, 'CS2102', 'A'),
(7, 9, 'CS2107', 'A-'),

(8, 5, 'CS1101S', 'B-'),
(8, 6, 'CS1231S', 'C'),
(8, 7, 'IS1108', 'B+'),
(8, 8, 'MA1522', 'A-'),
(8, 9, 'MA1521', 'A'),
(8, 10, 'CS2103T', 'C'),
(8, 11, 'CS2102', 'B'),
(8, 12, 'CS2107', 'A'),

(9, 1, 'CS1101S', 'A'),
(9, 2, 'CS1231S', 'B+'),
(9, 3, 'IS1108', 'A-'),
(9, 4, 'MA1522', 'A'),
(9, 5, 'MA1521', 'B'),
(9, 6, 'CS2103T', 'A-'),
(9, 7, 'CS2102', 'A'),
(9, 8, 'CS2107', 'B+'),

(10, 3, 'CS1101S', 'A'),
(10, 4, 'CS1231S', 'A-'),
(10, 5, 'IS1108', 'A-'),
(10, 6, 'MA1522', 'B+'),
(10, 7, 'MA1521', 'A'),
(10, 8, 'CS2103T', 'B'),
(10, 9, 'CS2102', 'A'),
(10, 10, 'CS2107', 'B+');