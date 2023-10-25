SET datestyle = 'ISO, MDY';

CREATE TABLE Departments
(
	dept_no 	varchar(5) 	primary key not null,
	dept_name 	varchar(50) 	not null
);

CREATE TABLE Dept_Emp
(
	emp_no 		varchar(8) 	primary key not null,
	dept_no 	varchar(5) 	primary key not null
);

CREATE TABLE Dept_Manager
(
	dept_no		varchar(5) 	not null,
	emp_no		varchar(8) 	primary key not null
);

CREATE TABLE Employees
(
	emp_no		varchar(8) 	primary key not null,
	emp_title	varchar(8) 	not null,
	birth_date	date 		not null,
	first_name	varchar(50) 	not null,
	last_name	varchar(75)	not null,
	sex			char(1)	not null,
	hire_date	date 		not null
);

CREATE TABLE Salaries
(
	emp_no		varchar(8) 	primary key not null,
	salary		numeric 	not null
);

CREATE TABLE Titles
(
	title_id	varchar(8) 	primary key not null,
	title		varchar(30)	not null
);

