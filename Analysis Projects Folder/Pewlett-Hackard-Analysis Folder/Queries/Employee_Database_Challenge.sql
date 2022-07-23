DROP TABLE employees2 CASCADE;
DROP TABLE titles2 CASCADE;

CREATE TABLE employees2 (
	emp_no INT NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	gender VARCHAR(2) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);
CREATE TABLE titles2 (
	emp_no INT NOT NULL,
	title VARCHAR(50) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees2 (emp_no)
);
SELECT e.emp_no, e.first_name, e.last_name,
	t.title, t.from_date, t.to_date
INTO Retirement_Titles
FROM employees2 as e
LEFT JOIN titles2 as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no ASC;

Select * From Retirement_Titles

-- Use Distinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
--INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles;

SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;

SELECT * FROM retiring_titles;

CREATE TABLE dept_emp2 (
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees2 (emp_no),
	PRIMARY KEY (emp_no, dept_no)
);

-- Mentorship Eligibility Table
SELECT DISTINCT ON (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
INTO mentorship_eligibility
FROM employees2 as e
LEFT JOIN dept_emp2 as de
ON (e.emp_no = de.emp_no)
LEFT JOIN titles2 as t
ON (e.emp_no = t.emp_no)
WHERE (de.to_date = '9999-01-01') AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;

select * from mentorship_eligibility;