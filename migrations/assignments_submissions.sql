CREATE TABLE assignments (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT, --The written content body of the assignment 
  day INTEGER, --The day that the assignment appears on
  chapter INTEGER, --The order that the assignment will appear in the day.
  duration INTEGER --The average time it takes a student to finish
);

CREATE TABLE assignment_submissions (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE, --The id of the assignment, matching ID from assignments
  student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
  duration INTEGER, --The time it took the student to complete the assignment
  submission_date DATE
);