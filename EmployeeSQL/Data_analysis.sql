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










