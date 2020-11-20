-- Salary by employee
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.gender,
        sal.salary
FROM employees as emp
LEFT JOIN salaries as sal
ON (emp.emp_no=sal.emp_no)
ORDER BY emp.emp_no

-- Employees who were hired in 1986
SELECT  emp_no,
        last_name,
        first_name
FROM employees
WHERE hire_date
BETWEEN '1986-01-01' AND '1986-12-31'

-- Managers of each department
SELECT  depm.dept_no,
        dep.dept_name,
        depm.emp_no,
        emp.last_name,
        emp.first_name,
        depm.from_date,
        depm.to_date
FROM dept_manager as depm
INNER JOIN departments as dep
ON (depm.dept_no=dep.dept_no)
INNER JOIN employees as emp
ON (depm.emp_no=emp.emp_no);
		
-- Department of each employee
SELECT	dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;
		
-- Employeees with first name 'Hercules' and last name begin with 'B'
SELECT	first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- Employees in Sales Department
SELECT	dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';

-- Employees in Sales and Development Department
SELECT	dept_emp.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' 
OR departments.dept_name = 'Development';

-- How many employees share each last name
SELECT	last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
