use employees;

select * from employees
-- List of employees by departments
-- Question 1. Write query to list all a employees along with their respective department name,
-- include employee number, first name,
-- last name, department number and and department name.
select e.emp_no, e.first_name, e.last_name, d.dept_no, d.dept_name from employees as e
join
dept_emp as de
on e.emp_no = de.emp_no
join departments as d
on de.dept_no = d.dept_no
-- Current and past salary of an employees
-- Question: Write a query to retrieve all the salary record of given employee include employee number and salary, first date, and to date.
 select * from salaries where 
 emp_no = '10001' order by salary desc limit 1
 
 
 -- 3. employees with specific titles
 -- Question: Write a query to find all employees who have held a specific titles (eg. engineer) include employee number, first name, last name and titles.
 
  select e.emp_no, first_name, last_name, t.title from employees as e
  join titles as t
  on e.emp_no = t.emp_no
  where title = 'engineer'
  -- 4.Department with their managers
  -- Question: Write a query to list all the department along with their current manager include department number,
  -- department name, managers employee number, first name and last name.
  
  select d.dept_no, d.dept_name, e.emp_no, e.first_name, e.last_name from departments as d
  join dept_manager as dm
  on d.dept_no = dm.dept_no
  join employees as e
  on e.emp_no = dm.emp_no
  
  -- 5.Employees count by department.
  -- Write a query to list all the department count the number of employees in each department, 
  -- department number, department name and employees count.
  
  select d.dept_no,dept_name, count(de.emp_no) as emp_count from departments as d
  join dept_emp as de
  on d.dept_no = de.dept_no
  group by dept_name,dept_name

-- 7.Employees birth date in a given year
--Question: Write a query to find all employees to born in a specific year (e.g.1958)
--  include employee number, first name, last name and birth date.

select emp_no, first_name, last_name, birth_date from employees
where year(birth_date) = 1953

-- 7.Employees birth date in a given month
-- Write a query to find all employees to born in a specific month (e.g. 09)
-- include employee number, first name, last name and birth date.

select emp_no, first_name, last_name, birth_date from employees
where month(birth_date) = 09


select emp_no, first_name, last_name, birth_date from employees
where month(birth_date) = 9
