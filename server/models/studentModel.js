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

module.exports = {
    getAllStudentsWithDetails,
};