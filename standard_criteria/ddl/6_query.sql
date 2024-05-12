INSERT INTO students (nmstudent, courseid)
VALUES ('George', 5);

SELECT * FROM students
JOIN courses
ON courses.idCourse=students.courseID;
