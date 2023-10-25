--Data Analysis Section Kaylyn Valdez-Scott
--Q1
select	 a.emp_no
		,a.last_name
		,a.first_name
		,a.sex
		,b.salary
from 	employees as a
inner join	salaries as b
on		a.emp_no=b.emp_no
order by
		 a.last_name
		,a.first_name;
		
--Q2
select	 first_name
		,last_name
		,hire_date
from 	employees
where	extract(year from hire_date)='1986'
order by
		hire_date,
		last_name,
		first_name;
		
--Q3
select	 a.dept_no
		,c.dept_name
		,a.emp_no
		,b.last_name
		,b.first_name
from	dept_manager as a
join
		employees as b
on		a.emp_no=b.emp_no
join
		departments as c
on		a.dept_no=c.dept_no
order by
		 a.dept_no
		,b.last_name
		,b.first_name;
		
--Q4
select	 b.dept_no
		,a.emp_no
		,a.last_name
		,a.first_name
		,c.dept_name
from	employees as a 
join	dept_emp as b
on		a.emp_no=b.emp_no
join	departments as c
on		b.dept_no=c.dept_no
order by
		 a.last_name
		,a.first_name;

--Q5
select	 first_name
		,last_name
		,sex
from	employees
where	first_name = 'Hercules'
and		left(last_name,1) = 'B'
order by
		 last_name
		,first_name;
		
--Q6
select	 c.dept_name
		,a.emp_no
		,a.last_name
		,a.first_name
from	employees as a
join	dept_emp as b
on		a.emp_no=b.emp_no
join	departments as c
on		b.dept_no=c.dept_no
where	c.dept_name = 'Sales'
order by
		 a.last_name
		,a.first_name;
		
--Q7
select	 c.dept_name
		,a.emp_no
		,a.last_name
		,a.first_name
from	employees as a
join	dept_emp as b
on		a.emp_no=b.emp_no
join	departments as c
on		b.dept_no=c.dept_no
where	c.dept_name in ('Development','Sales')
order by
		 c.dept_name
		,a.last_name
		,a.first_name;

--Q8
select	 last_name
		,count(last_name) as Frequency
from	employees
group by last_name
order by count(last_name) desc;