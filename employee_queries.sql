Select * from employees;
Shows 107 Nos. Rows or a dataset containing 107 data points related to Employees' information.
  
--1) Display manager ID and number of employees managed by the manager.
Select manager_id,COUNT(*) As Employee_num
	from employees 
	group by manager_id 
  --Shows 18 Nos. Rows 

--2) How many employees who are working in each department in the organization	
Select job_id,COUNT(*) As Employee_num
	from employees 
	group by job_id 
  --Shows 19 Nos.employees

--3) Display number of employees joined after 15th of the month.
Select COUNT(employee_id) As Employee_num
	from employees 
	where DAY(hire_date)>15 
 --Shows 57 Nos.Employee

Select COUNT(employee_id) As Employee_num
	from employees 
	where Year(hire_date)>1991 
  
--Shows 57 Nos.Employee

--4) List all the department ids having at least four employees.
Select job_id, COUNT(employee_id) As Employee_num
	from employees 
	group by job_id
	having COUNT(employee_id)<=4
  --Shows 11 Nos.Rows
  
-- 5) Display average salary of employees in each department 	
Select job_id, AVG(salary) As AVG_Salary
	from employees 
	group by job_id 
	
---6) Display job ID, number of employees, sum of salary, and difference between highest salary and lowest salary of the employees of the job.	

select job_id
,count(employee_id) as Num_Empl
,sum(salary) as sum_salary
,min(salary) as min_Salary
,max(salary) as max_Salary
,max(salary) -min(salary) as Diff_Salary
from employees
group by job_id

---7) Display job ID for jobs with average salary more than 12000 and 10000.
select job_id, AVG(salary) as AVG_Salary
from employees
group by job_id 
having  AVG(salary) >12000

select job_id, max(salary) as max_Salary
from employees
group by job_id 
having  max(salary) >10000

---8) Display years in which more than 10 employees joined.

SELECT 
    YEAR(hire_date) AS year,
    COUNT(employee_id) AS num_employees
FROM employees
GROUP BY YEAR(hire_date)
HAVING COUNT(employee_id) > 10
ORDER BY year;
