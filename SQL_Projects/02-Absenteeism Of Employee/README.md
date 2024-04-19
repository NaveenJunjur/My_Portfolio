# Absenteeism at Work

## Overview

This project focuses on analyzing the `Absenteeism_at_work` dataset to understand various factors contributing to employee absenteeism. The dataset contains details like employee ID, reasons for absence, body mass index (BMI), lifestyle habits, and absenteeism time in hours. The primary goal of this project is to optimize the dataset, derive meaningful insights, and prepare the data for visualization in Tableau.

## Dataset

The `Absenteeism_at_work` dataset consists of the following columns:

- `ID`: Employee ID.
- `Reason_for_absence`: Reason code for absence.
- `Month_of_absence`: Month of absence.
- `Day_of_the_week`: Day of the week.
- `Transportation_expense`: Transportation expense.
- `Education`: Education level.
- `Son`: Number of children.
- `Social_drinker`: Social drinking habit (0 = No, 1 = Yes).
- `Social_smoker`: Social smoking habit (0 = No, 1 = Yes).
- `Pet`: Number of pets.
- `Disciplinary_failure`: Disciplinary failures.
- `Age`: Age of the employee.
- `Work_load_Average_day`: Average workload per day.
- `Absenteeism_time_in_hours`: Absenteeism time in hours.

### [Download Dataset](https://github.com/NaveenJunjur/My_Portfoilio/tree/main/SQL_Projects/02-Absenteeism%20Of%20Employee/Datasets)

## SQL Queries and Optimization

### 1. Joining Tables

- Created a join table by combining `Absenteeism_at_work` with `compensation` and `Reasons` tables to enrich the dataset with additional information.

### 2. Healthiest Employees Analysis

- Identified the healthiest employees based on lifestyle habits and BMI to recommend them for a bonus.

### 3. Compensation Analysis

- Calculated the number of non-smokers to determine the budget for increasing the compensation rate.

### 4. Data Transformation and Categorization

- Optimized the query to include calculated fields like `BMI_Category` and `Season_Names` to categorize employees based on BMI and month of absence respectively.

### 5. Optimized Query for Visualization

- Developed an optimized SQL query to fetch relevant columns for analysis and visualization.

## Tableau Visualization

The optimized dataset prepared in this project serves as a foundation for creating insightful visualizations in Tableau. The visualization can help in understanding patterns, trends, and insights related to employee absenteeism, reasons for absence, and their impact on productivity.

### [Tableau Dashboard](#)

## Conclusion

This Absenteeism at Work data analysis project offers a comprehensive view of factors affecting employee absenteeism. By optimizing the dataset and deriving meaningful insights, the project sets the stage for creating impactful visualizations in Tableau. The visualizations will further aid in understanding the trends, patterns, and areas of improvement related to employee absenteeism, enabling organizations to make informed decisions and implement effective strategies.
