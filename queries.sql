--1)list employee number last first name salary
select employees.emp_no,employees.last_name,employees.first_name,employees.sex ,salaries.salary
from employees
join salaries
On employees.emp_no = salaries.salary 

-- 2)last first last name hire date  from 1986
select first_name,last_name,hire_date
from employees
where hire_date between '01/01/1986'AND '01/29/1987';

-- 3)list manager of each dept with info:dept number, dept name .manager employee number,last name,first name
select departments.dept_emp, departments.dept_name,dept_manager.emp_no,employees.last_name,employees.first_name
from departments
join dept_manager
On departments.dept_emp = dept_manager.dept_no 
join employees 
On dept_manager.emp_no = employees.emp_no



--4)list th dept of each employee with info: employee number,lastname,firstname ,dept name
select employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_emp;

--5)list all employeees whose first name is Hercules and last name beginswith B
select first_name,last_name
from employees
where first_name ='Hercules'
And last_name LIKE 'B%';

-- 6)list all employees in the sales department, including their employee number,last name,first name ,department number
select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no =employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_emp
where departments.dept_name ='Sales';

--7)list all employees inhe sales and development departments, including their employee number,lastname.firstname,and department name
select dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
from dept_emp
join employees
on dept_emp.emp_no = employees.emp_no
join departments
on dept_emp.dept_no = departments.dept_emp
where departments.dept_name = 'Sales'
OR departments.dept_name = 'Developement';

--8)In descending orderlist the frequency count of employee last names, i.e , how many employees share each last name
select last_name,
COUNT(last_name)AS"frequency"
from employees
Group by last_name
ORDER by 
COUNT(last_name)desc;