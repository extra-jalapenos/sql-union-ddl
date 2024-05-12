SELECT *
FROM students
LEFT JOIN courses
ON students.courseID=courses.idCourse;

SELECT *
FROM students
RIGHT JOIN courses
ON students.courseID=courses.idCourse;

SELECT *
FROM students
INNER JOIN courses
ON students.courseID=courses.idCourse;

SELECT *
FROM students
FULL OUTER JOIN courses
ON students.courseID=courses.idCourse;
