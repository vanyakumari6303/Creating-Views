use collegeDB;

-- 1. Create a view of students with their enrolled courses
CREATE VIEW StudentCourses AS
SELECT s.student_id, s.first_name, c.course_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- 2. Use the view
SELECT * FROM StudentCourses;

-- 3. Create a view for instructor workload (number of courses taught)
CREATE VIEW InstructorWorkload AS
SELECT i.instructor_id, i.first_name, COUNT(c.course_id) AS total_courses
FROM Instructors i
LEFT JOIN Courses c ON i.instructor_id = c.instructor_id
GROUP BY i.instructor_id, i.first_name;

-- 4. Use the view
SELECT * FROM InstructorWorkload;

-- 5. Drop a view (if no longer needed)
DROP VIEW InstructorWorkload;
