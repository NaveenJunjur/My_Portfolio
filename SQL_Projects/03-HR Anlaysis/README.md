# HR Analysis

## Overview

This project encompasses a detailed analysis and transformation of the `hr` dataset, focusing on data cleaning, transformation, and insightful analysis to derive meaningful HR metrics and insights. The dataset contains employee information such as ID, birthdate, hire date, termination date, gender, race, location, department, job title, and more.

## Dataset

The `hr` dataset consists of the following columns:

- `emp_id`: Employee ID.
- `birthdate`: Date of birth.
- `hire_date`: Date of hire.
- `termdate`: Date of termination.
- `gender`: Gender of the employee.
- `race`: Race/Ethnicity of the employee.
- `location`: Location of the employee.
- `department`: Department of the employee.
- `jobtitle`: Job title of the employee.

### [Download Dataset](https://github.com/NaveenJunjur/My_Portfoilio/tree/main/SQL_Projects/03-HR%20Anlaysis/Datasets)

## SQL Queries and Transformations

### Data Cleaning and Transformation

- Renamed the column `Ã¯Â»Â¿id` to `emp_id`.
- Cleaned date formats in `birthdate`, `hire_date`, and `termdate`.
- Added an `age` column to calculate the age of employees based on their `birthdate`.

### Data Analysis and Insights

1. **Gender Breakdown**: Analyzed the gender breakdown of employees.
2. **Race/Ethnicity Breakdown**: Analyzed the race/ethnicity breakdown of employees.
3. **Age Distribution**: Analyzed the age distribution of employees.
4. **Location Analysis**: Analyzed the distribution of employees between HQ and remote locations.
5. **Tenure Analysis**: Calculated the average length of employment for terminated employees.
6. **Gender Distribution by Departments and Job Titles**: Analyzed gender distribution across departments and job titles.
7. **Job Title Distribution**: Analyzed the distribution of job titles.
8. **Department Turnover Rate**: Identified the department with the highest turnover rate.
9. **Location Distribution**: Analyzed the distribution of employees across locations by city and state.
10. **Employee Count Over Time**: Analyzed the company's employee count changes over time based on hire and term dates.
11. **Tenure Distribution by Department**: Analyzed the tenure distribution for each department.

## Data Quality and Integrity

- Ensured data quality by handling null values, inconsistencies, and security parameters.
- Implemented security measures by turning off `sql_safe_updates` for data transformation.

## Visualization

For a comprehensive visualization of the insights derived from the SQL queries, you can view the interactive Tableau dashboard

![HR Analysis Dashboard]()

### [Tableau Dashboard](#)

## Conclusion

This comprehensive HR data analysis and transformation project provides a deep understanding of the employee landscape within the company. By cleaning and transforming the dataset and performing detailed analyses, various HR metrics and insights were derived. These insights can be invaluable for HR strategies, planning, and decision-making processes, ensuring an optimized and efficient workforce management.

