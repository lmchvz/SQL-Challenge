## SQL Analysis - Employee Database
The objective of this research project is to analyze the corporation’s employees from the 1980s and 1990s. The employee data is saved in [6 separate CSV files]( EmployeeSQL/data)

After reviewing the data, first I used the _Data Modeling_ Tool QuickDBD to create a [diagram](EmployeeSQL/01_ERD.png) to plan my SQL Tables. 


#### 1. Data Modeling: 
Inspect the CSVs and sketch out an ERD of the tables using the tool QuickDBD [http://www.quickdatabasediagrams.com]
#### 2. Data Engineering: 
Use the data to create a table schema for each of the six CSV files; Import each CSV file into the corresponding SQL table.
#### 3. Data Analysis: 
1. List the following details of each employee: employee number, last name, first name, gender, and salary.
2. List employees who were hired in 1986.
3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
4. List the department of each employee with the following information: employee number, last name, first name, and department name.
5. List all employees whose first name is "Hercules" and last names begin with "B."
6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
#### 4. Bonus: 
After examining the data, there is suspicion that the dataset is fake. In the Bonus.ipynb file the following steps were taken to generate a visualization of the data to confirm hunch:
- Import the SQL database into Pandas. 
- from sqlalchemy import create_engine
- Create a histogram to visualize the most common salary ranges for employees.
- Create a bar chart of average salary by title.
