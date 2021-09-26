SELECT e.emp_no,
     e.first_name,
     e.last_name,
     ti.title,
	 ti.from_date,
	 ti.to_date
INTO emp_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
where (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp_no asc;





SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO Unique_Titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;




SELECT COUNT(title), title

INTO retiring_titles
FROM unique_titles
group by title
order by count DESC;

SELECT Distinct On(e.emp_no)e.emp_no,
     e.first_name,
     e.last_name,
	 e.birth_date,
     de.from_date,
	 de.to_date,
	 ti.title
INTO mentorship_eligibility
FROM employees AS e
    INNER JOIN dept_emp AS de
        ON (de.emp_no = e.emp_no)
    INNER JOIN titles AS ti
        ON (e.emp_no = ti.emp_no)
Where (de.to_date between '9999-1-1' and '9999-1-1')
	And (e.birth_date between '1/1/1965' and '12/31/1965')
Order by e.emp_no asc;
