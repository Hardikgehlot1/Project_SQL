--List the employee number, last name, first name, sex, and salary of each employee.	
select
e.emp_no,
e.first_name||' '|| e.last_name as "Full name",
e.first_name,
e.last_name, 
 
e.sex,
s.salary
from
employees as e

inner join
salaries as s
on
e.emp_no = s.emp_no

order by
e.emp_no
	
--List the first name, last name, and hire date for the employees who were hired in 1986.	
	
Select
e.first_name||' '|| e.last_name as "Full name",
e.first_name,
e.last_name,
e.hire_date

from
employees as e

where 
extract(year from hire_date) = 1986

order by
e.hire_date


--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select
e.emp_no,
e.first_name||' '|| e.last_name as "Full name",
e.first_name,
e.last_name,
dm.dept_no,
d.dept_name


from
employees as e

inner join
dept_manager as dm
on
e.emp_no = dm.emp_no

inner join
departments as d
on
dm.dept_no = d.dept_no

order by
e.emp_no


--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.



select
e.emp_no,
de.dept_no,
d.dept_name,
e.first_name||' '|| e.last_name as "Full name",
e.first_name,
e.last_name

from
employees as e

inner join
dept_emp as de
on
e.emp_no = de.emp_no

inner join
departments as d
on
d.dept_no = de.dept_no

order by
e.emp_no

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

Select
e.first_name,
e.last_name,
e.sex

from
employees as e

where 
e.first_name = 'Hercules' AND e.last_name like 'B%'

order by
e.emp_no

--List each employee in the Sales department, including their employee number, last name, and first name.

select
e.emp_no,
d.dept_name,
d.dept_no,
e.first_name,
e.last_name


from
employees as e

inner join
dept_emp as de
on
e.emp_no = de.emp_no

inner join
departments as d
on
d.dept_no = de.dept_no

where
d.dept_no = 'd007'

order by
e.emp_no


--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select
e.emp_no,
d.dept_name,
d.dept_no,
e.first_name,
e.last_name


from
employees as e

inner join
dept_emp as de
on
e.emp_no = de.emp_no




inner join
departments as d
on
d.dept_no = de.dept_no

where
d.dept_no in ('d007','d005')

order by
e.emp_no


--List the frequency counts, in descending order, of all the employee last names

