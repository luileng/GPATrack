const express = require('express');
const studentController = require('../controllers/studentController');

const router = express.Router();

router.get('/', studentController.getAllStudents);
router.put('/:student_id/reassign-teacher', studentController.reassignTeacher);

module.exports = router;