const db = require('../config/db');

const getAllStudentsWithDetails = async () => {
    const query = `
        SELECT  
            s.student_id, 
            s.name as student_name, 
            t.name as teacher_name,
            COALESCE(AVG(gs.gpa), 0) as cumulative_gpa
        FROM students s
        JOIN teachers t ON s.teacher_id = t.teacher_id
        JOIN grades g ON s.student_id = g.student_id
        JOIN grade_scale gs ON g.grade = gs.grade
        GROUP BY s.student_id, s.name, t.name
    `;
    const result = await db.query(query);
    return result.rows;
};

const getStudentById = async (student_id) => {
    const query = 'SELECT * FROM students WHERE student_id = $1';
    const result = await db.query(query, [student_id]);
    return result.rows[0];
};

const getTeacherById = async (teacher_id) => {
    const query = 'SELECT * FROM teachers WHERE teacher_id = $1';
    const result = await db.query(query, [teacher_id]);
    return result.rows[0];
};

const reassignTeacher = async (student_id, new_teacher_id) => {
    const query = `
        UPDATE students 
        SET teacher_id = $1
        WHERE student_id = $2
        RETURNING student_id, name, teacher_id;
    `;
    const result = await db.query(query, [new_teacher_id, student_id]);
    return result.rows[0];
};

module.exports = {
    getAllStudentsWithDetails,
    getStudentById,
    getTeacherById,
    reassignTeacher
};