const studentModel = require('../models/studentModel');

const getAllStudents = async () => {
    const students = await studentModel.getAllStudentsWithDetails();
    return students.map(student => ({
        student_name: student.student_name,
        teacher_name: student.teacher_name,
        cumulative_gpa: parseFloat(student.cumulative_gpa).toFixed(2),
    }));
};

const checkIfStudentExists = async (student_id) => {
    const student = await studentModel.getStudentById(student_id);
    if (!student) {
        throw new Error(`Student with ID ${student_id} not found`);
    }
    return student;
};

const checkIfTeacherExists = async (teacher_id) => {
    const teacher = await studentModel.getTeacherById(teacher_id);
    if (!teacher) {
        throw new Error(`Teacher with ID ${teacher_id} not found`);
    }
    return teacher;
};

const reassignTeacher = async (student_id, new_teacher_id) => {

    await checkIfStudentExists(student_id);
    await checkIfTeacherExists(new_teacher_id);

    const result = await studentModel.reassignTeacher(student_id, new_teacher_id);
    return result;
};

module.exports = {
    getAllStudents,
    reassignTeacher,
};