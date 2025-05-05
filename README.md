# Employee Related Queries
## Employee SQL Analysis (SSMS)
This project contains SQL queries written in Microsoft SQL Server Management Studio (SSMS) to analyze employee data. The queries cover various business questions related to departments, jobs, salaries, and employee joining trends.


## 📘 Project Overview
This project focuses on analyzing the employee dataset to extract insights about:
- Employee distribution by managers and departments
- Salary trends by job and department
- Hiring trends based on dates and years
---

## Table Structure Assumption
Assuming a basic structure similar to:
- Employees(emp_id, emp_name, manager_id, department_id, job_id, salary, hire_date)
- Departments(department_id, department_name)
- Jobs(job_id, job_title, min_salary, max_salary)
---

## SQL Queries
The queries are saved in `employee_queries.sql`. Each query is labeled and commented for clarity.
The project is useful for HR, Business Intelligence Analysts, and Managers to make data-driven decisions.

## 💡 Recommendations / Insights
- **Managerial Load**: If certain managers have significantly more employees, it may indicate a need for delegation or re-structuring.
- **Department Gaps**: Departments with fewer than 4 employees may indicate underutilization or downsizing.
- **Salary Ranges**: Large salary differences in the same job role might require internal review.
- **High-Performing Roles**: Jobs with average salaries above $10K could be used to identify high-value roles.
- **Hiring Spikes**: Years with high employee intake might correlate with company growth or expansion strategies.
---

## 🛠️ Tools Used

- Microsoft SQL Server Management Studio (SSMS)

---
