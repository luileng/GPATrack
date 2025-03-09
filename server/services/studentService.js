const studentModel = require('../models/studentModel');

const getAllStudents = async () => {
    const students = await studentModel.getAllStudentsWithDetails();
    return students.map(student => ({
        student_name: student.student_name,
        teacher_name: student.teacher_name,
        cumulative_gpa: parseFloat(student.cumulative_gpa).toFixed(2),
    }));
};

const reassignTeacher = async (student_id, new_teacher_id) => {
    const result = await studentModel.reassignTeacher(student_id, new_teacher_id);
    return result;
};

module.exports = {
    getAllStudents,
    reassignTeacher,
};