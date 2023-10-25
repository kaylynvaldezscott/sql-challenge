SET datestyle = 'ISO, MDY';

COPY Departments
FROM 'C:\temp\Kaylyn\SQL\departments.csv'
DELIMITER ','
CSV HEADER;

COPY Dept_Emp
FROM 'C:\temp\Kaylyn\SQL\dept_emp.csv'
DELIMITER ','
CSV HEADER;

COPY Dept_Manager
FROM 'C:\temp\Kaylyn\SQL\dept_manager.csv'
DELIMITER ','
CSV HEADER;

COPY Employees
FROM 'C:\temp\Kaylyn\SQL\employees.csv'
DELIMITER ','
CSV HEADER;

COPY Salaries
FROM 'C:\temp\Kaylyn\SQL\salaries.csv'
DELIMITER ','
CSV HEADER;

COPY Titles
FROM 'C:\temp\Kaylyn\SQL\titles.csv'
DELIMITER ','
CSV HEADER;

