SELECT * FROM "Departments"
SELECT * FROM "Dept_Emp"
SELECT * FROM "Dept_Manager"
SELECT * FROM "Employees"
SELECT * FROM "Salaries"
SELECT * FROM "Titles"

-- List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM "Salaries" AS s
INNER JOIN "Employees" AS e ON
e.emp_no = s.emp_no;

-- List employees who were hired in 1986.

SELECT * FROM "Employees" 
WHERE hire_date >= '1986-01-01' 
AND hire_date < '1987-01-01'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM "Departments" AS d
INNER JOIN "Dept_Manager" AS m 
ON m.dept_no = d.dept_no
JOIN "Employees" AS e 
ON e.emp_no = m.emp_no;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT  e.emp_no,e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_Emp" AS de
ON e.emp_no = de.emp_no
INNER JOIN "Departments" AS d
On de.dept_no = d.dept_no;

-- List all employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM "Employees"
WHERE first_name LIKE 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT  e.emp_no,e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_Emp" AS de
ON e.emp_no = de.emp_no
INNER JOIN "Departments" AS d
On de.dept_no = d.dept_no
WHERE dept_name like 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT  e.emp_no,e.last_name, e.first_name, d.dept_name
FROM "Employees" AS e
INNER JOIN "Dept_Emp" AS de
ON e.emp_no = de.emp_no
INNER JOIN "Departments" AS d
On de.dept_no = d.dept_no
WHERE dept_name like 'Sales'
OR dept_name like 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(*) AS frequency
FROM "Employees"
GROUP BY last_name
ORDER BY frequency DESC;

-- Epilogue
-- On your way out of the office, you hear the words, "Search your ID number." 
-- You look down at your badge to see that your employee ID number is 499942.
SELECT * FROM "Employees" 
WHERE emp_no = '499942'
