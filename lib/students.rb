def highest_student_gpa
  "SELECT MAX(gpa) as highest_gpa FROM students;"
end

def lowest_student_gpa
  "SELECT MIN(gpa) as lowest_gpa FROM students;"
end

def average_student_gpa
  "SELECT AVG(gpa) FROM students;"
end

def total_tardies_for_all_students
  "SELECT SUM(tardies) AS total_tardies FROM students;"
end

def counts_all_students_groups_by_grade
  "SELECT grade, COUNT(*) FROM students GROUP BY grade;"
end
