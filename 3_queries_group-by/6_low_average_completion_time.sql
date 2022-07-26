SELECT students.name as student, AVG(assignment_submissions.duration) as average_assignment_duration, avg(assignments.duration) as avereage_estimated_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
JOIN assignments ON assignment.id = assignment_id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_assignment_duration DESC;

