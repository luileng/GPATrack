const studentService = require('../services/studentService');

const getAllStudents = async (req, res) => {
    try {
        const students = await studentService.getAllStudents();
        res.status(200).json({
            success: true,
            data: students
        });
    } catch (error) {
        res.status(500).json({
            success: false,
            message: 'Error retrieving students',
            error: error.message
        });
    }
};

const reassignTeacher = async (req, res) => {
    const { student_id } = req.params;
    const { new_teacher_id } = req.body;

    try {
        const updatedStudent = await studentService.reassignTeacher(student_id, new_teacher_id);
        res.status(200).json({
            success: true,
            data: updatedStudent
        });
    } catch (error) {
        res.status(500).json({
            success: false,
            message: 'Error reassigning teacher',
            error: error.message
        });
    }
};

module.exports = {
    getAllStudents,
    reassignTeacher
};