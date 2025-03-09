const studentService = require('../services/studentService');

const getAllStudents = async (req, res) => {
    try {
        const students = await studentService.getAllStudents();
        res.status(200).json(students);
    } catch (error) {
        res.status(500).json({ message: 'Error retrieving students', error: error.message });
    }
};

module.exports = {
    getAllStudents,
};