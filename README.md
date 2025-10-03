# Creating-Views
In this task, I practiced creating and using views in SQL. A view is essentially a virtual table based on a query. It simplifies data access, improves reusability, and can enhance security by exposing only selected data to users.

key points learnt :
CREATE VIEW → define a reusable query as a virtual table
SELECT from a View → use it like a normal table
DROP VIEW → remove a view when no longer needed
Views help in abstraction, security, and simplifying complex queries

Example Query:
-- 1. Create a view showing students with their enrolled courses
CREATE VIEW StudentCourses AS
SELECT s.student_id, s.first_name, c.course_name
FROM Students s
INNER JOIN Enrollments e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- 2. Query the view
SELECT * FROM StudentCourses;

-- 3. Create a view for instructor workload (number of courses taught)
CREATE VIEW InstructorWorkload AS
SELECT i.instructor_id, i.name, COUNT(c.course_id) AS total_courses
FROM Instructors i
LEFT JOIN Courses c ON i.instructor_id = c.instructor_id
GROUP BY i.instructor_id, i.name;

-- 4. Query the view
SELECT * FROM InstructorWorkload;

-- 5. Drop a view
DROP VIEW InstructorWorkload;

Outcome:
Learned how to create, query, and drop views
Understood how views can simplify reporting and restrict sensitive data
Gained confidence in using views for reusable SQL logic
