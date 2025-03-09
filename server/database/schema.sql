CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

CREATE TABLE courses (
    course_code VARCHAR(10) PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE semesters (
    semester_id SERIAL PRIMARY KEY,
    year INT NOT NULL,
    semester_number INT NOT NULL
    CONSTRAINT check_semester_number CHECK (semester_number IN (1, 2)),
    CONSTRAINT unique_semester UNIQUE (year, semester_number)
);

CREATE TABLE grade_scale (
    grade CHAR(2) PRIMARY KEY,
    gpa DECIMAL(3,2) NOT NULL
);

CREATE TABLE grades (
    student_id INT NOT NULL,
    semester_id INT NOT NULL,
    course_code VARCHAR(10) NOT NULL,
    grade CHAR(2) NOT NULL,
    PRIMARY KEY (student_id, semester_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE,
    FOREIGN KEY (course_code) REFERENCES courses(course_code) ON DELETE CASCADE,
    FOREIGN KEY (semester_id) REFERENCES semesters(semester_id) ON DELETE CASCADE,
    FOREIGN KEY (grade) REFERENCES grade_scale(grade) ON DELETE CASCADE
);
