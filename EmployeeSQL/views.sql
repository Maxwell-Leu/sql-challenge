CREATE VIEW employee_salary AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salary s
ON (e.emp_no = s.emp_no)

CREATE VIEW employee_1986_hired AS
SELECT first_name, last_name, hire_date
FROM employees
WHERE RIGHT(hire_date,4) = '1986'

CREATE VIEW manager AS
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
FROM dept_manager m
JOIN employees e
ON (m.emp_no = e.emp_no)
JOIN departments d
ON (d.dept_no = m.dept_no)

CREATE VIEW employee_department AS
SELECT emp.dept_no, e.emp_no, e.last_name, e.first_name, dep.dept_name
FROM employees e 
JOIN dept_emp emp
on (emp.emp_no = e.emp_no)
join departments dep
on (emp.dept_no = dep.dept_no)

CREATE VIEW hercules AS
SELECT first_name, last_name, sex
FROM employees
WHERE (first_name = 'Hercules' AND LEFT(last_name, 1) = 'B')

CREATE VIEW sales AS
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp emp
ON (emp.emp_no = e.emp_no)
JOIN departments d
ON (d.dept_no = emp.dept_no)
WHERE (d.dept_name = 'Sales')

DROP VIEW last_name_frequency
CREATE VIEW last_name_frequency AS
SELECT last_name, COUNT(last_name) AS NUM
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC